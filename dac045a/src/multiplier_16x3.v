module multiplier_16x3 (
    input wire [15:0] a,
    input wire [2:0] b,
    output wire [18:0] product 
);

wire [18:0] a_ext;
wire [18:0] pp0, pp1, pp2;

assign a_ext = {3'b000, a};
assign pp0 = b[0] ? a_ext : 19'd0;
assign pp1 = b[1] ? a_ext : 19'd0;
assign pp2 = b[2] ? a_ext : 19'd0;
    
assign product = pp0 + (pp1 << 1) + (pp2 << 2);
    
endmodule
