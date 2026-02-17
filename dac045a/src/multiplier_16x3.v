module multiplier_16x3 (
    input wire [15:0] a,
    input wire [2:0] b,
    output wire [18:0] product 
);

wire [15:0] pp0, pp1, pp2;
    
assign pp0 = b[0] ? a : 16'd0;
assign pp1 = b[1] ? a : 16'd0;
assign pp2 = b[2] ? a : 16'd0;
    
assign product = pp0 + (pp1 << 1) + (pp2 << 2);
    
endmodule