// System-on-chip top for the 5510TC028. Future peripheral controllers can be
// instantiated here without changing the tested single-DAC submodule.
module soc_top #(
    parameter integer CLK_FREQ_HZ  = 8_000_000,
    parameter integer SYNC_FREQ_HZ = 300
) (
    // MEZOKIA -> 5510TC028 link. The active-low reset is needed by both
    // the DAC controller and the on-chip SYNC generator.
    input  wire clk,
    input  wire rst_l,
    input  wire cfg_data,
    input  wire cfg_frame,

    // Serial interface of the 5400TR045A-022 DAC.
    input  wire SDO,
    output wire SDI,
    output wire SCK,
    output wire CLRn,
    output wire LDAc,
    output wire CSn
);

wire sync_pulse;

sync_strobe #(
    .CLK_FREQ_HZ   (CLK_FREQ_HZ),
    .STROBE_FREQ_HZ(SYNC_FREQ_HZ)
) sync_strobe_inst (
    .clk   (clk),
    .rst_l (rst_l),
    .strobe(sync_pulse)
);

dac045a dac045a_inst (
    .clk      (clk),
    .rst_l    (rst_l),
    .cfg_data (cfg_data),
    .cfg_frame(cfg_frame),
    .sync_i   (sync_pulse),
    .SDO      (SDO),
    .SDI      (SDI),
    .SCK      (SCK),
    .CLRn     (CLRn),
    .LDAc     (LDAc),
    .CSn      (CSn)
);

endmodule
