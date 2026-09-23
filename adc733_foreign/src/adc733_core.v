// AD73360ARZ controller without a private clock/reset generator. Both the
// stand-alone wrapper and soc_top instantiate this same acquisition logic.
module adc733_core #(
    parameter integer CLK_FREQ_HZ = 8_000_000,
    parameter integer SYNC_FREQ_HZ = 300
) (
    input  wire        clk,
    input  wire        rst_l,
    input  wire        SCLK,
    input  wire        SDOFS,
    input  wire        SDO,
    output wire        SDIFS,
    output wire        SDI,
    output wire        SE,
    output reg  [15:0] DATA_O,
    output reg         RD_EN,
    output wire        OP_MODE,
    output reg  [2:0]  CHANNEL
);

wire sync_300hz;
wire sync_toggle;
wire sync_pulse;
wire sync_toggle_sclk;
reg [3:0] config_index;
reg [15:0] control_word;
wire word_sent;
wire [15:0] captured_data;
wire adc_rd_en;
wire adc_operation_mode;
wire adc_busy;
wire [2:0] adc_channel;
wire adc_rd_en_pulse;
reg adc_rd_en_r;

sync_strobe #(
    .CLK_FREQ_HZ(CLK_FREQ_HZ),
    .STROBE_FREQ_HZ(SYNC_FREQ_HZ)
) sync_strobe_inst (
    .clk(clk), .rst_l(rst_l), .strobe(sync_300hz)
);

pulse_to_toggle pulse_to_toggle_inst (
    .clk(clk), .rst(rst_l), .pulse(sync_300hz),
    .reset_toggle(1'b0), .toggle(sync_toggle)
);

sync2_toggle_to_pulse_bothedge toggle_to_pulse_inst (
    .clk(SCLK), .rst(rst_l), .toggle(sync_toggle),
    .pulse(sync_pulse), .out_toggle(sync_toggle_sclk)
);

// D/C=1, W/R=0, device address=000, register address and data.
always @(*) begin
    case (config_index)
        4'd0: control_word = 16'h8000;
        4'd1: control_word = 16'h8108;
        4'd2: control_word = 16'h8241;
        4'd3: control_word = 16'h8300;
        4'd4: control_word = 16'h8400;
        4'd5: control_word = 16'h8500;
        4'd6: control_word = 16'h8600;
        4'd7: control_word = 16'h8700;
        default: control_word = 16'h8001;
    endcase
end

always @(posedge SCLK or negedge rst_l) begin
    if (!rst_l)
        config_index <= 4'd0;
    else if (word_sent && config_index != 4'd8)
        config_index <= config_index + 1'b1;
end

always @(posedge SCLK or negedge rst_l) begin
    if (!rst_l)
        adc_rd_en_r <= 1'b0;
    else
        adc_rd_en_r <= adc_rd_en;
end

front_detector adc733_front_detector_rden (
    .clk(clk), .rst_l(rst_l),
    .pulse_slow(adc_rd_en_r), .pulse_fast(adc_rd_en_pulse)
);

sync2 adc733_sync2_opmode (
    .clk(clk), .rst(rst_l), .in(adc_operation_mode), .out(OP_MODE)
);

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
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
    .clk(clk), .rst_l(rst_l),
    .SCLK(SCLK), .SDOFS(SDOFS), .SDO(SDO),
    .SDIFS(SDIFS), .SDI(SDI), .SE(SE),
    .sync(sync_pulse), .control_word(control_word),
    .word_sent(word_sent), .captured_data(captured_data),
    .channel(adc_channel), .busy(adc_busy), .rd_en(adc_rd_en),
    .operation_mode(adc_operation_mode)
);

endmodule
