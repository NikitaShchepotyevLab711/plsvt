module dac045a (
    input  wire        clk,
    input  wire        rst_l,

    output wire [15:0] dac_value,
    output wire        dac_rdy,
    output wire        dac_value_valid,
    output reg         clk_out,

    // Serial interface of 5400TR045A-022.
    input  wire        SDO,
    output wire        SDI,
    output wire        SCK,
    output wire        CLRn,
    output wire        LDAc,
    output wire        CSn
);

wire        sync_300Hz;
wire [15:0] generated_code;
wire [15:0] dac_limit;
wire [2:0]  step_coeff;

assign dac_value = generated_code;
assign dac_limit = 16'hFFFF;
assign step_coeff = 3'd1;

// Observable clock divided by two. Reset is asynchronous and active low.
always @(posedge clk or negedge rst_l) begin
    if (!rst_l)
        clk_out <= 1'b0;
    else
        clk_out <= ~clk_out;
end

// Free-running update strobe for a sawtooth period of about three seconds.
sync_strobe #(
    .CLK_FREQ_HZ   (8_000_000),
    .STROBE_FREQ_HZ(300)
) sync_strobe_inst (
    .clk   (clk),
    .rst_l (rst_l),
    .strobe(sync_300Hz)
);

dac_codegen dac_codegen_inst (
    .clk             (clk),
    .rst_l           (rst_l),
    // XPlace requires named signals of the exact port width here.
    .limit           (dac_limit),
    .enable          (1'b1),
    .start           (sync_300Hz),
    .step_coefficent (step_coeff),
    .data            (generated_code)
);

spi_controller spi_inst (
    .clk     (clk),
    .rst_l   (rst_l),
    .data_i  (generated_code),
    .dac_en  (1'b1),
    .renew   (sync_300Hz),
    .rdy     (dac_rdy),
    .valid   (dac_value_valid),

    .SDO     (SDO),
    .SDI     (SDI),
    .SCK     (SCK),
    .CLRn    (CLRn),
    .LDAc    (LDAc),
    .CSn     (CSn)
);

endmodule
