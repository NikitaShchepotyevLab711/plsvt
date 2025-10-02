module clkdiv_tb;
    reg clk;
    wire clk_o;
    reg rst_l;

clk_divider3 dut (
    .clk_i(clk),
    .rst_l(rst_l),
    .clk_o(clk_o)
);

initial begin
    clk = 0;
    forever #42 clk = ~clk;
end

initial begin
    rst_l = 1'b1;
    #100;
    rst_l = 1'b0;
    #100;
    rst_l = 1'b1;
end
    
endmodule