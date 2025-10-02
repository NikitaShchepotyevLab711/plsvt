//###########################################################
//##                                                         
//##   Created       X-CAD v2.76.0                               
//##   Date/Time     22.01.2025 / 13:13:17                                 
//##   Language      Verilog                                      
//##                                                         
//###########################################################

module codegen #(
	parameter DATA_WIDTH = 8
) (
	input  wire 				 clk,
	input  wire 				 rst_l,
	input  wire [DATA_WIDTH-1:0] limit,
	input  wire 				 enable,
	input  wire 				 start,
	output wire [DATA_WIDTH-1:0] data
);
	
reg [DATA_WIDTH-1:0] increment;

always @(posedge clk or negedge rst_l) begin
	if (!rst_l)
		increment <= 16'h0;
	else begin
		if (enable) begin 
			if (start) begin
				if (increment != limit) 
					increment <= increment + 16'd73;
				else 
					increment <= 16'h0;
			end
		end
		else 
			increment <= 16'h0;
	end
end

assign data = increment;

endmodule