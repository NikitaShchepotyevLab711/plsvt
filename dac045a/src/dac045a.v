module dac045a (
    input  wire        clk,
    input  wire        rst_l,
    input  wire        cfg_data,
    input  wire        cfg_frame,
    input  wire        sync_i,

//    output wire [15:0] dac_value,
//    output wire        dac_rdy,
//    output wire        dac_value_valid,
//    output reg         clk_out,

    // Serial interface of 5400TR045A-022.
    input  wire        SDO,
    output wire        SDI,
    output wire        SCK,
    output wire        CLRn,
    output wire        LDAc,
    output wire        CSn
);

wire [15:0] generated_code;
wire [2:0]  step_coeff;
wire [15:0] dac_limit;
wire        dac_rdy;
wire        dac_value_valid;

// Receive the atomic 19-bit configuration frame from MEZOKIA. Until the
// first valid frame arrives, the stand-alone test defaults remain active.
dac_config_rx dac_config_rx_inst (
    .clk       (clk),
    .rst_l     (rst_l),
    .cfg_data  (cfg_data),
    .cfg_frame (cfg_frame),
    .step_coeff(step_coeff),
    .dac_limit (dac_limit)
);

dac_codegen dac_codegen_inst (
    .clk             (clk),
    .rst_l           (rst_l),
    // XPlace requires named signals of the exact port width here.
    .limit           (dac_limit),
    .enable          (1'b1),
    .start           (sync_i),
    .step_coefficent (step_coeff),
    .data            (generated_code)
);

spi_controller spi_inst (
    .clk     (clk),
    .rst_l   (rst_l),
    .data_i  (generated_code),
    .dac_en  (1'b1),
    .renew   (sync_i),
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
