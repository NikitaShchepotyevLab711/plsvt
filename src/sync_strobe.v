module sync_strobe (
    input wire clk,
    input wire rst_l,
    output reg strobe
);

localparam CLK_FREQ = 12_000_000;  
localparam STROBE_FREQ = 30;      

localparam COUNTER_MAX = CLK_FREQ / STROBE_FREQ - 1;
localparam COUNTER_WIDTH = $clog2(COUNTER_MAX + 1);

reg [COUNTER_WIDTH-1:0] counter;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        counter <= 0;
        strobe <= 1'b0;
    end else begin
        strobe <= 1'b0;
        
        if (counter == COUNTER_MAX) begin
            counter <= 0;
            strobe <= 1'b1;
        end else begin
            counter <= counter + 1;
        end
    end
end

endmodule