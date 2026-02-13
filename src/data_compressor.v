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
	output wire [31:0] data_o,
	output reg  	   error_flag
	
);	

reg [1:0] addr_change_counter;
reg [31:0] captured_data;
reg [31:0] prev_captured_data;
reg [31:0] pre_prev_captured_data;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        addr_change_counter <= 0;
        captured_data <= 0;
        prev_captured_data <= 0;
        pre_prev_captured_data <= 0;
        error_flag <= 0;
    end else begin		
    
		if ((pre_prev_captured_data + 1 != prev_captured_data) && (pre_prev_captured_data > 0))
		error_flag <= 1;
		
		if (next_word) begin
                captured_data <= {captured_data[23:0], data_i};
                addr_change_counter <= addr_change_counter + 1;
                
				if (addr_change_counter == 1) begin
					prev_captured_data [31:24]   <= captured_data[31:24];
					prev_captured_data [23:16]  <= captured_data[23:16];
					prev_captured_data [15:8] <= captured_data[15:8];
					prev_captured_data [7:0] <= captured_data[7:0];
					pre_prev_captured_data <= prev_captured_data;
				end
        end
    end
end
		
assign data_o = prev_captured_data;

endmodule
