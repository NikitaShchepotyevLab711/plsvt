//###########################################################
//##                                                         
//##   Created       X-CAD v2.76.0                               
//##   Date/Time     01.07.2025 / 12:00:08                                 
//##   Language      Verilog                                      
//##                                                         
//###########################################################

module data_compressor (
	input  wire 	   clk,
	input  wire 	   rst_l,
	input  wire [7:0]  data_i,
	input  wire 	   next_word,
	output reg  [31:0] data_o,
	output reg  	   ready
	
);	

reg [2:0]  counter;
reg [31:0] captured_data;
reg [31:0] prev_captured_data;
reg [31:0] pre_prev_captured_data;
reg  	   capture_frame;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        counter    			   <= 1'b0;
        captured_data          <= 1'b0;
        prev_captured_data 	   <= 1'b0;
        pre_prev_captured_data <= 1'b0;
		ready 				   <= 1'b0;
		capture_frame 		   <= 1'b0;
		data_o 				   <= 32'b0;
    end else begin		
		capture_frame 		   <= next_word;
		if (next_word) begin
            captured_data <= {captured_data[23:0], data_i};
			counter  	  <= counter + 1'b1;
        end
		
		if ((capture_frame)&&(!next_word)) begin
			data_o <= captured_data;
			ready  <= 1'b1;
		end
		else 
			ready  <= 1'b0;

    end
end

endmodule
