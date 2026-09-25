/*
 * MEZOKIA: DAC configuration and ADC readback via FTDI.
 *
 * FTDI packet format is implemented by the existing encoder/decoder:
 *   5E 4D ADDR NUMH NUML CRC8H DATA... CRC8D
 *
 * Register map:
 *   0x00, 8 bytes: day[15:0], milliseconds[31:0], microseconds[15:0]
 *   0x01, 2 bytes write / 3 bytes read: software counter and board address
 *   0x10, 1 byte: STEP_COEFF[0] (0=1, 1=10 updates/SYNC)
 *   0x11, 2 bytes: DAC_LIMIT[15:8], DAC_LIMIT[7:0]
 *   0x12, 1 byte: WAVE_TRIANGLE[0] (0=sawtooth, 1=triangle)
 *   0x13, 1 byte: FALL_RATE[2:0] (fall/rise slope = 1..8)
 */
module mezokia #(
    parameter integer CLK_FREQ_HZ = 8_000_000,
    parameter [7:0]   BOARD_ADDRESS = 8'h01
) (
    // Independent 8 MHz POR clock on TP3; system clock is from 5510TC028.
    input  wire        POR_CLK_8MHZ,
    input  wire        CLK_FROM_5510,
    // User-logic reset to 5510 FPGA IO126, not processor resetn.
    output wire        RESET_N_TO_5510,

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
    output wire        CFG_DATA,
    output wire        CFG_FRAME,
    input  wire        ADC_SERIAL_DATA,
    input  wire        ADC_SERIAL_FRAME
);

localparam [7:0] TIMER_ADDR         = 8'h00;
localparam [7:0] TIMER_SIZE         = 8'h08;
localparam [7:0] SOFTWARE_COUNTER_ADDR = 8'h01;
localparam [7:0] SOFTWARE_COUNTER_SIZE = 8'h03;
localparam [7:0] ADDR_STEP_COEFF   = 8'h10;
localparam [7:0] ADDR_DAC_LIMIT    = 8'h11;
localparam [7:0] ADDR_WAVE_MODE    = 8'h12;
localparam [7:0] ADDR_FALL_RATE    = 8'h13;
localparam [7:0] ADDR_ADC_VALUE    = 8'h20;

wire clk = CLK_FROM_5510;

// Hold reset long enough for the independently configured 5510 FPGA to
// become ready. The requested eight-stage zero-initialized release pipe then
// gives eight extra 8 MHz edges of active-low reset (1 us).
localparam integer POR_HOLD_CYCLES = CLK_FREQ_HZ / 2; // 500 ms at 8 MHz
localparam integer POR_COUNT_WIDTH = $clog2(POR_HOLD_CYCLES + 1);
reg [POR_COUNT_WIDTH-1:0] por_counter = {POR_COUNT_WIDTH{1'b0}};
reg por_hold_done = 1'b0;
reg [7:0] release_pipe = 8'b0;
always @(posedge POR_CLK_8MHZ) begin
    if (!por_hold_done) begin
        if (por_counter == POR_HOLD_CYCLES - 1)
            por_hold_done <= 1'b1;
        else
            por_counter <= por_counter + 1'b1;
    end else begin
        release_pipe <= {release_pipe[6:0], 1'b1};
    end
end
assign RESET_N_TO_5510 = release_pipe[7];

reg [3:0] core_reset_pipe = 4'b0000;
reg [3:0] ftdi_reset_pipe = 4'b0000;

// Reset local core after POR; use the processor clock for normal operation.
always @(posedge clk or negedge RESET_N_TO_5510) begin
    if (!RESET_N_TO_5510)
        core_reset_pipe <= 4'b0000;
    else
        core_reset_pipe <= {core_reset_pipe[2:0], 1'b1};
end

always @(posedge FCLK_OUT)
    ftdi_reset_pipe <= {ftdi_reset_pipe[2:0], FUSB_nRES};

wire rst_n      = core_reset_pipe[3];
wire ftdi_rst_n = ftdi_reset_pipe[3];
assign FUSB_nRES = rst_n;

wire [15:0] adc_latest_value;
wire [2:0] adc_latest_channel;
wire adc_latest_valid;
adc_result_rx adc_result_rx_inst (
    .clk(clk), .rst_n(rst_n),
    .serial_data(ADC_SERIAL_DATA), .serial_frame(ADC_SERIAL_FRAME),
    .sample_data(adc_latest_value),
    .sample_channel(adc_latest_channel),
    .sample_valid(adc_latest_valid)
);

// Restore the values used during the stand-alone DAC test after power-up.
reg        step_coeff  = 1'b0;
reg [15:0] dac_limit   = 16'hFFFF;
reg        wave_triangle = 1'b0;
reg [2:0]  fall_rate = 3'd0;
reg [7:0]  dac_limit_high_staging = 8'hFF;

// CFG_DATA and CFG_FRAME change on this clock's falling edge and are sampled
// by the 5510TC028 on its rising edge. Both devices now share one source.

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

wire [7:0] time_data;
wire [63:0] board_time;
wire time_100ms_on;
wire time_snapshot_lock;
wire [15:0] read_byte_number;

umio_timer #(.CLK_FREQ_HZ(CLK_FREQ_HZ)) umio_timer_inst (
    .clk             (clk),
    .rst_n           (rst_n),
    .time_addr       (write_addr),
    .time_wr         (write_data_valid),
    .time_dat        (write_data),
    .time_size       (write_size),
    .byte_number     (write_byte_number),
    .time_byte_num   (read_byte_number),
    .time_lock       (time_snapshot_lock),
    .time_data       (time_data),
    .time_100ms_on   (time_100ms_on),
    .full_time       (board_time)
);

reg [15:0] software_counter;
reg [7:0] software_counter_high_staging;
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        software_counter <= 16'd0;
        software_counter_high_staging <= 8'd0;
    end else if ((write_addr == SOFTWARE_COUNTER_ADDR) && write_data_valid) begin
        if (write_size == 16'd2) begin
            case (write_byte_number)
                16'd0: software_counter_high_staging <= write_data;
                16'd1: software_counter <= {software_counter_high_staging, write_data};
                default: ;
            endcase
        end else if (write_size >= 16'd3) begin
            // Legacy packets carry BOARD_ADDRESS before the two counter bytes.
            case (write_byte_number)
                16'd1: software_counter_high_staging <= write_data;
                16'd2: software_counter <= {software_counter_high_staging, write_data};
                default: ;
            endcase
        end
    end
end

// The decoder releases data only for packets with a valid data CRC. Reject
// unexpected packet lengths so that a malformed command cannot partly alter
// a multi-byte register.
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        step_coeff  <= 1'b0;
        dac_limit   <= 16'hFFFF;
        wave_triangle <= 1'b0;
        fall_rate <= 3'd0;
        dac_limit_high_staging <= 8'hFF;
    end else if (write_data_valid) begin
        case (write_addr)
            ADDR_STEP_COEFF: begin
                if ((write_size == 16'd1) && (write_byte_number == 16'd0))
                    step_coeff <= write_data[0];
            end

            ADDR_DAC_LIMIT: begin
                if (write_size == 16'd2) begin
                    if (write_byte_number == 16'd0)
                        dac_limit_high_staging <= write_data;
                    else if (write_byte_number == 16'd1)
                        dac_limit <= {dac_limit_high_staging, write_data};
                end
            end

            ADDR_WAVE_MODE: begin
                if ((write_size == 16'd1) && (write_byte_number == 16'd0))
                    wave_triangle <= write_data[0];
            end

            ADDR_FALL_RATE: begin
                if ((write_size == 16'd1) && (write_byte_number == 16'd0))
                    fall_rate <= write_data[2:0];
            end

            default: ;
        endcase
    end
end

// All four controls are sent together as one atomic 23-bit frame.
dac_config_tx #(
    .CLK_FREQ_HZ     (CLK_FREQ_HZ),
    .REFRESH_FREQ_HZ(1000)
) dac_config_tx_inst (
    .clk       (clk),
    .rst_n     (rst_n),
    .step_coeff({2'b00, step_coeff}),
    .dac_limit (dac_limit),
    .wave_triangle(wave_triangle),
    .fall_rate (fall_rate),
    .cfg_data  (CFG_DATA),
    .cfg_frame (CFG_FRAME)
);

// -------------------------------------------------------------------------
// Periodic readback: 0x00 -> 0x01 -> 0x10 -> 0x11 -> 0x12 -> 0x13 -> 0x20.
// -------------------------------------------------------------------------
wire        encoder_start;
wire        encoder_stop;
wire        encoder_data_read;
wire [7:0]  read_addr;
wire [15:0] read_size;
rd_addr_controller #(
    .FIRST_ADDR(TIMER_ADDR),
    .LAST_ADDR (ADDR_ADC_VALUE)
) rd_addr_controller_inst (
    .clk         (clk),
    .rst_n       (usb_rst_n),
    .begin_pulse (time_100ms_on),
    .packet_done (encoder_stop),
    .data_read   (encoder_data_read),
    .start_packet(encoder_start),
    .addr        (read_addr),
    .data_size   (read_size),
    .byte_number (read_byte_number),
    .data_lock   (time_snapshot_lock)
);

// Keep a software-counter packet coherent if the host writes it mid-read.
reg [15:0] software_counter_snapshot;
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        software_counter_snapshot <= 16'd0;
    else if (encoder_start && (read_addr == SOFTWARE_COUNTER_ADDR))
        software_counter_snapshot <= software_counter;
end

wire [23:0] software_counter_frame =
    {BOARD_ADDRESS, software_counter_snapshot[15:8], software_counter_snapshot[7:0]};

// Keep both bytes of the 0x20 packet from the same ADC conversion.
reg [15:0] adc_read_snapshot;
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        adc_read_snapshot <= 16'd0;
    else if (encoder_start && (read_addr == ADDR_ADC_VALUE))
        adc_read_snapshot <= adc_latest_value;
end

reg [7:0] read_data_byte;
always @(*) begin
    case (read_addr)
        TIMER_ADDR:
            read_data_byte = (read_byte_number < TIMER_SIZE) ? time_data : 8'h00;

        SOFTWARE_COUNTER_ADDR:
            read_data_byte = (read_byte_number < SOFTWARE_COUNTER_SIZE) ?
                software_counter_frame[8*(SOFTWARE_COUNTER_SIZE-read_byte_number)-1 -: 8] : 8'h00;

        ADDR_STEP_COEFF:
            read_data_byte = {7'b0000000, step_coeff};

        ADDR_DAC_LIMIT:
            read_data_byte = (read_byte_number == 16'd0) ?
                             dac_limit[15:8] : dac_limit[7:0];

        ADDR_WAVE_MODE:
            read_data_byte = {7'b0000000, wave_triangle};

        ADDR_FALL_RATE:
            read_data_byte = {5'b00000, fall_rate};

        ADDR_ADC_VALUE:
            read_data_byte = (read_byte_number == 16'd0) ?
                             adc_read_snapshot[15:8] : adc_read_snapshot[7:0];

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

endmodule
