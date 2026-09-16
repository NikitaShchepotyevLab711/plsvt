// System-on-chip top for the 5510TC028. Future peripheral controllers can be
// instantiated here without changing the tested single-DAC submodule.
module soc_top #(
    parameter integer CLK_FREQ_HZ  = 8_000_000,
    parameter integer SYNC_FREQ_HZ = 300,
    parameter integer RESET_PRE_MS = 10,
    parameter integer RESET_HOLD_MS = 100
) (
    // The processor supplies the common 8 MHz clock through the dedicated
    // CPU/FPGA boundary. The FPGA returns it to the boundary block and also
    // forwards it to MEZOKIA on inter-board contact 52.
    input  wire bb_clk_in,
    output wire bb_clk_out,
    output wire bb_apb_sync_clk,
    output wire clk_to_mezokia,
    output wire reset_n_to_mezokia,

    // MEZOKIA -> 5510TC028 configuration link.
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

localparam integer RESET_PRE_CYCLES_RAW =
    (CLK_FREQ_HZ / 1000) * RESET_PRE_MS;
localparam integer RESET_PRE_CYCLES =
    (RESET_PRE_CYCLES_RAW < 1) ? 1 : RESET_PRE_CYCLES_RAW;
localparam integer RESET_HOLD_CYCLES_RAW =
    (CLK_FREQ_HZ / 1000) * RESET_HOLD_MS;
localparam integer RESET_HOLD_CYCLES =
    (RESET_HOLD_CYCLES_RAW < 1) ? 1 : RESET_HOLD_CYCLES_RAW;

reg [31:0] reset_counter = 32'd0;
reg [1:0]  reset_state   = 2'd0;
reg        rst_l         = 1'b0;

assign bb_clk_out      = bb_clk_in;
assign bb_apb_sync_clk = bb_clk_in;

// An explicit internal buffer is used because this clock drives both the
// local FPGA logic and a user IO. This is the same pattern as adc733_wrap.
xci2_buf clk_to_mezokia_buf (
    .a(bb_clk_in),
    .y(clk_to_mezokia)
);

// rst_l is used locally and is also sent to MEZOKIA. The explicit buffer is
// required for this split on 5510TC028, as with the diagnostic watch outputs.
xci2_buf reset_to_mezokia_buf (
    .a(rst_l),
    .y(reset_n_to_mezokia)
);

// Local high-low-high POR sequence. It starts when the processor clock first
// reaches the FPGA: 10 ms released, 100 ms asserted, then released forever.
always @(posedge bb_clk_in) begin
    case (reset_state)
        2'd0: begin
            rst_l <= 1'b1;
            if (reset_counter == RESET_PRE_CYCLES - 1) begin
                reset_counter <= 32'd0;
                reset_state   <= 2'd1;
                rst_l         <= 1'b0;
            end else begin
                reset_counter <= reset_counter + 1'b1;
            end
        end

        2'd1: begin
            rst_l <= 1'b0;
            if (reset_counter == RESET_HOLD_CYCLES - 1) begin
                reset_counter <= 32'd0;
                reset_state   <= 2'd2;
                rst_l         <= 1'b1;
            end else begin
                reset_counter <= reset_counter + 1'b1;
            end
        end

        default: begin
            reset_counter <= 32'd0;
            rst_l         <= 1'b1;
        end
    endcase
end

sync_strobe #(
    .CLK_FREQ_HZ   (CLK_FREQ_HZ),
    .STROBE_FREQ_HZ(SYNC_FREQ_HZ)
) sync_strobe_inst (
    .clk   (bb_clk_in),
    .rst_l (rst_l),
    .strobe(sync_pulse)
);

dac045a dac045a_inst (
    .clk      (bb_clk_in),
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
