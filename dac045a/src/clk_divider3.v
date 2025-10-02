module clk_divider3 (
    input  wire clk_i,
    input  wire rst_l,
    input  wire enable,
    output wire strb,
    output wire clk_o
);

reg [1:0] pos_cnt;
reg [1:0] neg_cnt;

always @(posedge clk_i or negedge rst_l)
    if (!rst_l) begin
        pos_cnt <= 2'd0;
    end else begin
        if (enable)
            pos_cnt <= (pos_cnt == 2'd2) ? 2'd0 : pos_cnt + 2'd1;
        else
            pos_cnt <= 2'd0;
end

always @(negedge clk_i or negedge rst_l)
    if (!rst_l) begin
        neg_cnt <= 2'd0;
    end else begin
        if (enable)
            neg_cnt <= (neg_cnt == 2'd2) ? 2'd0 : neg_cnt + 2'd1;
        else
            neg_cnt <= 2'd0;
end

assign strb = enable ? (pos_cnt == 2'b0) : 1'b0; 
assign clk_o = enable ? ((pos_cnt != 2'd2) && (neg_cnt != 2'd2)) : 1'b0;

endmodule