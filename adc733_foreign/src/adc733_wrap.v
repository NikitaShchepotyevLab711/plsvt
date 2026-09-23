// Stand-alone AD73360ARZ test top. Integrated use instantiates adc733_core
// directly, sharing the POR and processor clock generated in soc_top.
module adc733_wrap #(
    parameter integer CLK_FREQ_HZ   = 8_000_000,
    parameter integer SYNC_FREQ_HZ  = 300,
    parameter integer RESET_HOLD_MS = 500
) (
    input  wire        bb_clk_in,
    output wire        bb_clk_out,
    output wire        bb_apb_sync_clk,
    input  wire        SCLK,
    input  wire        SDOFS,
    input  wire        SDO,
    output wire        SDIFS,
    output wire        SDI,
    output wire        SE,
    output wire        MCLK,
    output wire        RESETn,
    output wire [15:0] DATA_O,
    output wire        RD_EN,
    output wire        OP_MODE,
    output wire [2:0]  CHANNEL
);

localparam integer RESET_HOLD_CYCLES_RAW =
    (CLK_FREQ_HZ / 1000) * RESET_HOLD_MS;
localparam integer RESET_HOLD_CYCLES =
    (RESET_HOLD_CYCLES_RAW < 1) ? 1 : RESET_HOLD_CYCLES_RAW;
localparam integer RESET_COUNTER_WIDTH = $clog2(RESET_HOLD_CYCLES + 1);
localparam [RESET_COUNTER_WIDTH-1:0] RESET_LAST_COUNT =
    RESET_HOLD_CYCLES - 1;

reg [RESET_COUNTER_WIDTH-1:0] reset_counter =
    {RESET_COUNTER_WIDTH{1'b0}};
reg rst_l = 1'b0;

assign bb_clk_out      = bb_clk_in;
assign bb_apb_sync_clk = bb_clk_in;
assign MCLK            = bb_clk_in;

xci2_buf adc_reset_buf (
    .a(rst_l), .y(RESETn)
);

// Same fail-safe POR as soc_top. The stand-alone hold time remains 500 ms.
always @(posedge bb_clk_in) begin
    if (!rst_l) begin
        if (reset_counter == RESET_LAST_COUNT) begin
            reset_counter <= {RESET_COUNTER_WIDTH{1'b0}};
            rst_l <= 1'b1;
        end else begin
            reset_counter <= reset_counter + 1'b1;
        end
    end
end

adc733_core #(
    .CLK_FREQ_HZ(CLK_FREQ_HZ), .SYNC_FREQ_HZ(SYNC_FREQ_HZ)
) adc_core_inst (
    .clk(bb_clk_in), .rst_l(rst_l),
    .SCLK(SCLK), .SDOFS(SDOFS), .SDO(SDO),
    .SDIFS(SDIFS), .SDI(SDI), .SE(SE),
    .DATA_O(DATA_O), .RD_EN(RD_EN),
    .OP_MODE(OP_MODE), .CHANNEL(CHANNEL)
);

endmodule
