module sync_strobe #(
    parameter integer CLK_FREQ_HZ    = 12_000_000,
    parameter integer STROBE_FREQ_HZ = 300
) (
    input  wire clk,
    input  wire rst_l,
    output reg  strobe
);

localparam integer COUNTER_MAX = CLK_FREQ_HZ / STROBE_FREQ_HZ - 1;
localparam integer COUNTER_WIDTH = $clog2(COUNTER_MAX + 1);

reg [COUNTER_WIDTH-1:0] counter;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        counter <= {COUNTER_WIDTH{1'b0}};
        strobe  <= 1'b0;
    end else if (counter == COUNTER_MAX) begin
        counter <= {COUNTER_WIDTH{1'b0}};
        strobe  <= 1'b1;
    end else begin
        counter <= counter + 1'b1;
        strobe  <= 1'b0;
    end
end

endmodule
