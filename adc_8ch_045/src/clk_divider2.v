module clk_divider2 (
    input  wire clk_i,
    input  wire rst_l,
    output wire clk_o
);
    
reg neg_cnt;

always @(negedge clk_i or negedge rst_l) begin
    if (!rst_l) begin
        neg_cnt <= 1'd0;
    end else 
        neg_cnt <= ~neg_cnt;
end    

assign clk_o = neg_cnt;

endmodule