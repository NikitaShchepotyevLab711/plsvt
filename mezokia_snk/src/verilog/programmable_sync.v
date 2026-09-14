/* One-clock-wide SYNC pulse at 30 Hz or 300 Hz. */
module programmable_sync #(
    parameter integer CLK_FREQ_HZ = 8_000_000
) (
    input  wire clk,
    input  wire rst_n,
    input  wire enable,
    input  wire select_300,
    output reg  sync_out
);

localparam integer DIV_30  = CLK_FREQ_HZ / 30;
localparam integer DIV_300 = CLK_FREQ_HZ / 300;

reg [31:0] counter;
reg        select_300_d;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        counter      <= 32'd0;
        sync_out     <= 1'b0;
        select_300_d <= 1'b1;
    end else begin
        sync_out <= 1'b0;

        if (!enable) begin
            counter <= 32'd0;
        end else if (select_300 != select_300_d) begin
            // Begin a complete new period after changing the frequency.
            counter <= 32'd0;
        end else if (select_300 && (counter == DIV_300 - 1)) begin
            counter  <= 32'd0;
            sync_out <= 1'b1;
        end else if (!select_300 && (counter == DIV_30 - 1)) begin
            counter  <= 32'd0;
            sync_out <= 1'b1;
        end else begin
            counter <= counter + 1'b1;
        end

        select_300_d <= select_300;
    end
end

endmodule
