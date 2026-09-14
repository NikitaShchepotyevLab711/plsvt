/*
 * Minimal MEZOKIA firmware for USB control of the 5400TR045A-022 DAC.
 *
 * FTDI packet format is implemented by the existing encoder/decoder:
 *   5E 4D ADDR NUMH NUML CRC8H DATA... CRC8D
 *
 * Register map:
 *   0x10, 1 byte: STEP_COEFF[2:0]
 *   0x11, 2 bytes: DAC_LIMIT[15:8], DAC_LIMIT[7:0]
 *   0x12, 1 byte: SYNC_CONTROL; bit 0 = enable,
 *                                      bit 1 = 0: 30 Hz, 1: 300 Hz
 */
module mezokia #(
    parameter integer CLK_FREQ_HZ      = 8_000_000,
    parameter integer READBACK_FREQ_HZ = 10,
    parameter integer RESET_HOLD_MS    = 100
) (
    // The external 8 MHz clock is connected to test point TP3.
    input  wire        TP_3,

    // FTDI FT2232H synchronous FIFO interface.
    output wire        FUSB_nRES,
    inout  wire [7:0]  FU_D,
    input  wire        FRXF,
    input  wire        FTXE,
    output wire        FRD,
    output wire        FWR,
    output wire        FSIWU,
    input  wire        FPWREN,
    inout  wire        FODD,
    input  wire        FCLK_OUT,
    output wire        FOE,
    input  wire        FVBUS,

    // Compact serial connection to the 5510TS028 FPGA.
    output wire        CLK_TO_5510,
    output wire        CFG_DATA,
    output wire        CFG_FRAME,
    output wire        DAC_SYNC,
    output wire        RESET_N_TO_5510,

    // Debug test points. TP3 is occupied by the input clock.
    output wire        TP_1,
    output wire        TP_2,
    output wire        TP_4
);

localparam [7:0] ADDR_STEP_COEFF   = 8'h10;
localparam [7:0] ADDR_DAC_LIMIT    = 8'h11;
localparam [7:0] ADDR_SYNC_CONTROL = 8'h12;

wire clk = TP_3;

// Cyclone III supports deterministic register power-up. Keeping these shift
// registers initialised to zero creates POR in both clock domains.
reg [3:0] core_reset_pipe = 4'b0000;
reg [3:0] ftdi_reset_pipe = 4'b0000;

always @(posedge clk)
    core_reset_pipe <= {core_reset_pipe[2:0], 1'b1};

always @(posedge FCLK_OUT)
    ftdi_reset_pipe <= {ftdi_reset_pipe[2:0], FUSB_nRES};

wire rst_n      = core_reset_pipe[3];
wire ftdi_rst_n = ftdi_reset_pipe[3];
assign FUSB_nRES = rst_n;

// Keep the 5510TS028 in reset long enough for both FPGAs to complete their
// power-up configuration. No USB command is required to release this reset.
localparam integer RESET_HOLD_CYCLES_RAW =
    (CLK_FREQ_HZ / 1000) * RESET_HOLD_MS;
localparam integer RESET_HOLD_CYCLES =
    (RESET_HOLD_CYCLES_RAW < 1) ? 1 : RESET_HOLD_CYCLES_RAW;

reg [31:0] reset_hold_counter = 32'd0;
reg        reset_n_to_5510    = 1'b0;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        reset_hold_counter <= 32'd0;
        reset_n_to_5510    <= 1'b0;
    end else if (!reset_n_to_5510) begin
        if (reset_hold_counter == RESET_HOLD_CYCLES - 1) begin
            reset_n_to_5510 <= 1'b1;
        end else begin
            reset_hold_counter <= reset_hold_counter + 1'b1;
        end
    end
end

assign RESET_N_TO_5510 = reset_n_to_5510;

// Restore the values used during the stand-alone DAC test after power-up.
reg [2:0]  step_coeff  = 3'd1;
reg [15:0] dac_limit   = 16'hFFFF;
reg [7:0]  dac_limit_high_staging = 8'hFF;
reg        sync_enable = 1'b1;
reg        sync_300hz  = 1'b1;

// Forward the same 8 MHz clock that drives the transmitter. Serial data and
// frame change on its falling edge and are sampled on its rising edge.
assign CLK_TO_5510 = clk;

// -------------------------------------------------------------------------
// USB disconnect monitor
// -------------------------------------------------------------------------
wire ftdi_disconnect_rst_n;
wire usb_rst_n = rst_n & ftdi_disconnect_rst_n;

ftdi_disconnect #(
    .CLK_FREQ_HZ(CLK_FREQ_HZ)
) ftdi_disconnect_inst (
    .clk       (clk),
    .rst_n     (rst_n),
    .vbus_n    (FVBUS),
    .pwren_n   (FPWREN),
    .rxf_n     (FRXF),
    .txe_n     (FTXE),
    .disc_rst_n(ftdi_disconnect_rst_n)
);

// -------------------------------------------------------------------------
// FTDI controller and packet decoder
// -------------------------------------------------------------------------
wire [15:0] encoder_to_ftdi_data;
wire        encoder_to_ftdi_valid;
wire [1:0]  encoder_to_ftdi_be;
wire        ftdi_encoder_ready;
wire [7:0]  ftdi_to_decoder_data;
wire        ftdi_to_decoder_valid;
wire        decoder_ready;

ftdi_controller_sdram ftdi_controller_inst (
    .rst_n          (usb_rst_n),
    .clk            (clk),
    .ftdi_clk       (FCLK_OUT),
    .ftdi_rst_n     (ftdi_rst_n),
    .ADBUS          (FU_D),
    .RXF            (FRXF),
    .TXE            (FTXE),
    .RD             (FRD),
    .WR             (FWR),
    .SIWU           (FSIWU),
    .PWREN          (FPWREN),
    .ODD            (FODD),
    .OE             (FOE),
    .ftdi_dat_i     (encoder_to_ftdi_data),
    .ftdi_dat_val_i (encoder_to_ftdi_valid),
    .ftdi_be_i      (encoder_to_ftdi_be),
    .ftdi_rdy_o     (ftdi_encoder_ready),
    .ftdi_dat_o     (ftdi_to_decoder_data),
    .ftdi_dat_val_o (ftdi_to_decoder_valid),
    .ftdi_rdy_i     (decoder_ready),
    .test_checker_w (),
    .common_err     ()
);

wire [7:0]  write_addr;
wire [7:0]  write_data;
wire        write_data_valid;
wire [15:0] write_size;
wire [15:0] write_byte_number;
ftdi_decoder ftdi_decoder_inst (
    .clk                (clk),
    .rst_n              (usb_rst_n),
    .dat_i              (ftdi_to_decoder_data),
    .dat_val_i          (ftdi_to_decoder_valid),
    .dat_rdy_o          (decoder_ready),
    .addr               (write_addr),
    .dat_o              (write_data),
    .dat_val_o          (write_data_valid),
    .dat_val_o_pckt_end (),
    .dat_size           (write_size),
    .byte_number        (write_byte_number),
    .val_pckt_strb      (),
    .head_crc_err       (),
    .dat_crc_err        ()
);

// The decoder releases data only for packets with a valid data CRC. Reject
// unexpected packet lengths so that a malformed command cannot partly alter
// a multi-byte register.
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        step_coeff  <= 3'd1;
        dac_limit   <= 16'hFFFF;
        dac_limit_high_staging <= 8'hFF;
        sync_enable <= 1'b1;
        sync_300hz  <= 1'b1;
    end else if (write_data_valid) begin
        case (write_addr)
            ADDR_STEP_COEFF: begin
                if ((write_size == 16'd1) && (write_byte_number == 16'd0))
                    step_coeff <= write_data[2:0];
            end

            ADDR_DAC_LIMIT: begin
                if (write_size == 16'd2) begin
                    if (write_byte_number == 16'd0)
                        dac_limit_high_staging <= write_data;
                    else if (write_byte_number == 16'd1)
                        dac_limit <= {dac_limit_high_staging, write_data};
                end
            end

            ADDR_SYNC_CONTROL: begin
                if ((write_size == 16'd1) && (write_byte_number == 16'd0)) begin
                    sync_enable <= write_data[0];
                    sync_300hz  <= write_data[1];
                end
            end

            default: begin
                step_coeff  <= step_coeff;
                dac_limit   <= dac_limit;
                sync_enable <= sync_enable;
                sync_300hz  <= sync_300hz;
            end
        endcase
    end
end

// -------------------------------------------------------------------------
// Programmable 30/300 Hz SYNC generator
// -------------------------------------------------------------------------
wire sync_internal;

programmable_sync #(
    .CLK_FREQ_HZ(CLK_FREQ_HZ)
) programmable_sync_inst (
    .clk       (clk),
    .rst_n     (reset_n_to_5510),
    .enable    (sync_enable),
    .select_300(sync_300hz),
    .sync_out  (sync_internal)
);

// STEP_COEFF and DAC_LIMIT are sent together as one atomic 19-bit frame.
dac_config_tx #(
    .CLK_FREQ_HZ     (CLK_FREQ_HZ),
    .REFRESH_FREQ_HZ(1000)
) dac_config_tx_inst (
    .clk       (clk),
    .rst_n     (rst_n),
    .step_coeff(step_coeff),
    .dac_limit (dac_limit),
    .cfg_data  (CFG_DATA),
    .cfg_frame (CFG_FRAME)
);

reg dac_sync_out = 1'b0;
assign DAC_SYNC = reset_n_to_5510 ? dac_sync_out : 1'b0;

always @(negedge clk or negedge reset_n_to_5510) begin
    if (!reset_n_to_5510)
        dac_sync_out       <= 1'b0;
    else
        dac_sync_out       <= sync_internal;
end

// -------------------------------------------------------------------------
// Periodic cyclic register readback: 0x10 -> 0x11 -> 0x12
// -------------------------------------------------------------------------
localparam integer READBACK_PERIOD = CLK_FREQ_HZ / READBACK_FREQ_HZ;
localparam integer READBACK_COUNTER_WIDTH = 32;

reg [READBACK_COUNTER_WIDTH-1:0] readback_counter;
reg                              readback_trigger;

always @(posedge clk or negedge usb_rst_n) begin
    if (!usb_rst_n) begin
        readback_counter <= {READBACK_COUNTER_WIDTH{1'b0}};
        readback_trigger <= 1'b0;
    end else if (readback_counter == READBACK_PERIOD - 1) begin
        readback_counter <= {READBACK_COUNTER_WIDTH{1'b0}};
        readback_trigger <= 1'b1;
    end else begin
        readback_counter <= readback_counter + 1'b1;
        readback_trigger <= 1'b0;
    end
end

wire        encoder_start;
wire        encoder_stop;
wire        encoder_data_read;
wire [7:0]  read_addr;
wire [15:0] read_size;
wire [15:0] read_byte_number;

rd_addr_controller #(
    .FIRST_ADDR(ADDR_STEP_COEFF),
    .LAST_ADDR (ADDR_SYNC_CONTROL)
) rd_addr_controller_inst (
    .clk         (clk),
    .rst_n       (usb_rst_n),
    .begin_pulse (readback_trigger),
    .packet_done (encoder_stop),
    .data_read   (encoder_data_read),
    .start_packet(encoder_start),
    .addr        (read_addr),
    .data_size   (read_size),
    .byte_number (read_byte_number)
);

reg [7:0] read_data_byte;
always @(*) begin
    case (read_addr)
        ADDR_STEP_COEFF:
            read_data_byte = {5'b00000, step_coeff};

        ADDR_DAC_LIMIT:
            read_data_byte = (read_byte_number == 16'd0) ?
                             dac_limit[15:8] : dac_limit[7:0];

        ADDR_SYNC_CONTROL:
            read_data_byte = {6'b000000, sync_300hz, sync_enable};

        default:
            read_data_byte = 8'h00;
    endcase
end

ftdi_encoder_sdram ftdi_encoder_inst (
    .clk          (clk),
    .rst_n        (usb_rst_n),
    .start        (encoder_start),
    .stop         (encoder_stop),
    .addr         (read_addr),
    .packet_length(read_size),
    .dat_i        ({8'h00, read_data_byte}),
    .be_i         (2'b01),
    .rd_o         (encoder_data_read),
    .dat_o        (encoder_to_ftdi_data),
    .dat_val      (encoder_to_ftdi_valid),
    .be_o         (encoder_to_ftdi_be),
    .rcv_rdy      (ftdi_encoder_ready)
);

// Useful slow/status signals for an oscilloscope or logic analyser.
assign TP_1 = sync_enable;
assign TP_2 = sync_300hz;
assign TP_4 = DAC_SYNC;

endmodule
