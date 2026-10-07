module adc733_wrap (
    input  wire        bb_clk_in,
    input  wire        rst_l,
    input  wire        sync_i,

    // Dedicated connections to DD26 (1273PV19T).
    input  wire        SCLK,
    input  wire        SDOFS,
    input  wire        SDO,
    output wire        SDIFS,
    output wire        SDI,
    output wire        SE,
    output wire        MCLK,
    output wire        RESETn,

    // Debug outputs.
    output reg  [15:0] DATA_O,
    output reg         RD_EN,
    output wire        OP_MODE,
    output reg  [2:0]  CHANNEL
);

wire clk = bb_clk_in;

wire        adc_logic_rst_l;
wire        sync_toggle;
wire        sync_pulse;
wire        sync_toggle_sclk;
reg  [3:0]  config_index;
reg  [15:0] control_word;
wire        word_sent;
wire [15:0] captured_data;
wire        adc_rd_en;
wire        adc_operation_mode;
wire        adc_busy;
wire [2:0]  adc_channel;
wire        adc_rd_en_pulse;
reg         adc_rd_en_r;

// External reset from MEZOKIA is shared by the ADC and every local register.
// MCLK stays active while reset is asserted.
assign MCLK            = clk;
assign adc_logic_rst_l = rst_l;

// The reset net drives both the local FPGA logic and an external ADC pin.
xci2_buf adc_reset_buf (
    .a(adc_logic_rst_l), .y(RESETn)
);

// soc_top selects shared SYNC or the remotely generated 3 kHz request.
// Capture the next ADC1 output frame after each request; retain the existing CDC.
pulse_to_toggle pulse_to_toggle_inst (
    .clk         (clk),
    .rst         (adc_logic_rst_l),
    .pulse       (sync_i),
    .reset_toggle(1'b0),
    .toggle      (sync_toggle)
);

sync2_toggle_to_pulse_bothedge toggle_to_pulse_inst (
    .clk       (SCLK),
    .rst       (adc_logic_rst_l),
    .toggle    (sync_toggle),
    .pulse     (sync_pulse),
    .out_toggle(sync_toggle_sclk)
);

// Control-word format: D/C=1, W/R=0, device address=000,
// register address, register data. DD26 is powered from 3.3 V.
always @(*) begin
    case (config_index)
        4'd0: control_word = 16'h8000; // CRA: program mode, one device
        4'd1: control_word = 16'h8108; // CRB: SCLK=MCLK/2, fs=MCLK/2048
        4'd2: control_word = 16'h8260; // CRC: global power off, reference and REFOUT on
        4'd3: control_word = 16'h8308; // CRD: ADC1 on at 0 dB, ADC2 off
        4'd4: control_word = 16'h8400; // CRE: ADC3/4 off
        4'd5: control_word = 16'h8500; // CRF: ADC5/6 off
        4'd6: control_word = 16'h8600; // CRG: differential inputs
        4'd7: control_word = 16'h8700; // CRH: normal polarity
        default: control_word = 16'h8001; // CRA: enter data mode
    endcase
end

always @(posedge SCLK or negedge adc_logic_rst_l) begin
    if (!adc_logic_rst_l)
        config_index <= 4'd0;
    else if (word_sent && (config_index != 4'd8))
        config_index <= config_index + 1'b1;
end

// Delay the event by one SCLK period, then synchronize it into clk. The
// captured word and channel remain stable throughout this interval.
always @(posedge SCLK or negedge adc_logic_rst_l) begin
    if (!adc_logic_rst_l)
        adc_rd_en_r <= 1'b0;
    else
        adc_rd_en_r <= adc_rd_en;
end

front_detector adc733_front_detector_rden (
    .clk       (clk),
    .rst_l     (adc_logic_rst_l),
    .pulse_slow(adc_rd_en_r),
    .pulse_fast(adc_rd_en_pulse)
);

sync2 adc733_sync2_opmode (
    .clk(clk),
    .rst(adc_logic_rst_l),
    .in (adc_operation_mode),
    .out(OP_MODE)
);

always @(posedge clk or negedge adc_logic_rst_l) begin
    if (!adc_logic_rst_l) begin
        DATA_O  <= 16'd0;
        CHANNEL <= 3'd0;
        RD_EN   <= 1'b0;
    end else begin
        RD_EN <= adc_rd_en_pulse;
        if (adc_rd_en_pulse) begin
            DATA_O  <= captured_data;
            CHANNEL <= adc_channel;
        end
    end
end

adc733 adc_inst (
    .clk           (clk),
    .rst_l         (adc_logic_rst_l),
    .SCLK          (SCLK),
    .SDOFS         (SDOFS),
    .SDO           (SDO),
    .SDIFS         (SDIFS),
    .SDI           (SDI),
    .SE            (SE),
    .sync          (sync_pulse),
    .control_word  (control_word),
    .word_sent     (word_sent),
    .captured_data (captured_data),
    .channel       (adc_channel),
    .busy          (adc_busy),
    .rd_en         (adc_rd_en),
    .operation_mode(adc_operation_mode)
);

endmodule
