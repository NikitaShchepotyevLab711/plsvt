module vsi_packs_ram (
    input  wire       clk,
    input  wire       rst_l,

	input  wire       data_valid,
    input  wire [7:0] data_i,
    output wire [7:0] data_o,
	output wire  	  full    // = 1 когда записаны 2 пакета
);

assign full = 0;

reg state;

localparam IDLE = 0;

always @(posedge clk or negedge rst_l) begin
	if (!rst_l) begin
		
	end	
	else begin
		case (state)
			IDLE: begin
				
			end
			default: begin
				
			end
		endcase
	end
end

`ifdef DEBUG_MODE
	psevdo_ram_block vsi_ram0 (
		.rst_l(rst_l),
		.DIn({1'b0,data_to_ram}),
		.RADDR(raddr),
		.WADDR(waddr),
		.RDB(RDB),
		.WRB(WRB),
		.RCLKS(clk),
		.WCLKS(clk),
		.DC_in0(dc_in0),
		.DC_in1(dc_in1),
		.DC_in2(1'b10),
		.DO1(DOut1),
		.DO2()
	);

	psevdo_ram_block vsi_ram1 (
		.rst_l(rst_l),
		.DIn({1'b0,data_to_ram}),
		.RADDR(raddr),
		.WADDR(waddr),
		.RDB(RDB),
		.WRB(WRB),
		.RCLKS(clk),
		.WCLKS(clk),
		.DC_in0(dc_in0),
		.DC_in1(dc_in1),
		.DC_in2(1'b10),
		.DO1(DOut1),
		.DO2()
	);
`else
	ramblock_4x_swrite_sread ramblock_4x_swrite_sread_instance (
		.DIn({1'b0,data_inf_buf}),
		.RADDR(raddr_buf),
		.WADDR(data_inf_buf),
		.RDB(RDB_buf),
		.WRB(WRB_buf),
		.RCLKS(fifo_read_clk),
		.WCLKS(fifo_write_clk),
		.DC_in0(DC_in0),
		.DC_in1(DC_in1),
		.DC_in2(DC_in2),
		.DO1(DOut1),
		.DO2()
	);

	ramblock_4x_swrite_sread ramblock_4x_swrite_sread_instance (
		.DIn({1'b0,data_inf_buf}),
		.RADDR(raddr_buf),
		.WADDR(data_inf_buf),
		.RDB(RDB_buf),
		.WRB(WRB_buf),
		.RCLKS(fifo_read_clk),
		.WCLKS(fifo_write_clk),
		.DC_in0(DC_in0),
		.DC_in1(DC_in1),
		.DC_in2(DC_in2),
		.DO1(DOut1),
		.DO2()
	);
`endif
    
endmodule