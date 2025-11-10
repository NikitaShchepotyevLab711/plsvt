module clk_divider3 #(
    parameter DIV = 3
) (
    input  wire clk_i,
    input  wire rst_l,
    input  wire enable,
    output wire strb,
    output wire clk_o
);
    
localparam CNT_WIDTH = (DIV <= 2) ? 1 : 2;
reg [CNT_WIDTH-1:0] pos_cnt;
reg [CNT_WIDTH-1:0] neg_cnt;

always @(negedge clk_i or negedge rst_l)
    if (!rst_l) begin
        neg_cnt <= 2'd0;
    end else begin
        if (enable)
            neg_cnt <= (neg_cnt == 2'd2) ? 2'd0 : neg_cnt + 2'd1;
        else
            neg_cnt <= 2'd0;
    end    

generate
    if (DIV == 3) begin
        always @(posedge clk_i or negedge rst_l)
            if (!rst_l) begin
                pos_cnt <= {CNT_WIDTH{1'b0}};
            end else begin
            if (enable)
                pos_cnt <= (pos_cnt == DIV-1) ? {CNT_WIDTH{1'b0}} : pos_cnt + 1'b1;
            else
                pos_cnt <= {CNT_WIDTH{1'b0}};
        end
    end
endgenerate

generate
    if (DIV == 2) begin
        assign clk_o = neg_cnt[0];
        assign strb = clk_o;
    end else if (DIV == 3) begin
        assign clk_o = enable ? ((pos_cnt != 2'd2) && (neg_cnt != 2'd2)) : 1'b0;
        assign strb = enable ? (neg_cnt == {CNT_WIDTH{1'b0}}) : 1'b0;
    end
endgenerate

endmodule