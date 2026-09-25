// Separate 5510TC028 system project: domestic DD26 ADC and DAC.
module soc_top #(
    parameter integer CLK_FREQ_HZ  = 8_000_000,
    parameter integer SYNC_FREQ_HZ = 32
) (
    input  wire bb_clk_in,
    output wire bb_clk_out,
    output wire bb_apb_sync_clk,
    output wire clk_to_mezokia,
    input  wire reset_n_from_mezokia,
    input  wire cfg_data,
    input  wire cfg_frame,
    input  wire SDO,
    output wire SDI,
    output wire SCK,
    output wire CLRn,
    output wire LDAc,
    output wire CSn,
    input  wire ADC_SCLK,
    input  wire ADC_SDOFS,
    input  wire ADC_SDO,
    output wire ADC_SDIFS,
    output wire ADC_SDI,
    output wire ADC_SE,
    output wire ADC_MCLK,
    output wire ADC_RESETn,
    output wire adc_serial_data,
    output wire adc_serial_frame
);

wire sync_pulse;
wire [15:0] adc_sample;
wire [2:0] adc_channel;
wire adc_rd_en;

assign bb_clk_out = bb_clk_in;
assign bb_apb_sync_clk = bb_clk_in;

xci2_buf clk_to_mezokia_buf (
    .a(bb_clk_in), .y(clk_to_mezokia)
);

sync_strobe #(
    .CLK_FREQ_HZ(CLK_FREQ_HZ), .STROBE_FREQ_HZ(SYNC_FREQ_HZ)
) sync_strobe_inst (
    .clk(bb_clk_in), .rst_l(reset_n_from_mezokia), .strobe(sync_pulse)
);

dac045a #(
    .CLK_FREQ_HZ(CLK_FREQ_HZ), .SYNC_FREQ_HZ(SYNC_FREQ_HZ)
) dac045a_inst (
    .clk(bb_clk_in), .rst_l(reset_n_from_mezokia),
    .cfg_data(cfg_data), .cfg_frame(cfg_frame), .sync_i(sync_pulse),
    .SDO(SDO), .SDI(SDI), .SCK(SCK), .CLRn(CLRn), .LDAc(LDAc), .CSn(CSn)
);

// DD26 = 1273PV19T. This is adc733, not adc733_foreign (DD25).
adc733_wrap #(
    .CLK_FREQ_HZ(CLK_FREQ_HZ)
) adc733_inst (
    .bb_clk_in(bb_clk_in), .rst_l(reset_n_from_mezokia),
    .SCLK(ADC_SCLK), .SDOFS(ADC_SDOFS), .SDO(ADC_SDO),
    .SDIFS(ADC_SDIFS), .SDI(ADC_SDI), .SE(ADC_SE),
    .MCLK(ADC_MCLK), .RESETn(ADC_RESETn),
    .DATA_O(adc_sample), .RD_EN(adc_rd_en),
    .CHANNEL(adc_channel), .OP_MODE()
);

adc_result_tx adc_result_tx_inst (
    .clk(bb_clk_in), .rst_l(reset_n_from_mezokia),
    .sample_data(adc_sample), .sample_channel(adc_channel),
    .sample_valid(adc_rd_en),
    .serial_data(adc_serial_data), .serial_frame(adc_serial_frame)
);

endmodule
