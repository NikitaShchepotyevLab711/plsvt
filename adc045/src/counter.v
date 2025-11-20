module counter (
    input  wire      clk,
    input  wire      rst_l,
    input  wire      cnt_en,
    input  wire      cnt_rst,
    input  wire      strb,
    output reg [5:0] cnt
);
    
always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        cnt <= 6'h0;
    end else if (strb) begin
        if (cnt_rst) begin
            cnt <= 6'h0;
        end else if (cnt_en) begin
            cnt <= cnt + 1'b1;
        end
    end
end

endmodule