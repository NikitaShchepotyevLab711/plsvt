//---------------------------------------------------------------------------------------------------------------------------//
//																																									  //
//																		FTDI ENCODER																			  //
//																																									  //
//---------------------------------------------------------------------------------------------------------------------------//
//Encoder data format:
//PACKET HEADER	|	ADDRESS	|	PACKET LENGTH	|	HEADER CRC	|	PACKET DATA	|	DATA CRC	|
//	5E		|	4D		|	ADDR		|	NUMH	|	NUML	|	CRC8H			|	DATA 			|	CRC8D		|
//-----------------------------------------------------------------------------------------
//NEED CONNECT INPUT DATA & BE SIGNALS RIGHT
//`define INPUT_2BYTE_DATA
`define OUTPUT_2BYTE_DATA_SDRAM

module ftdi_encoder_sdram
(
	input						clk,
	input						rst_n,
	
	//Connection with device_arbiter
	input						start,
	output					stop,	
	input		[ 7:0]		addr,
	input		[15:0]		packet_length,	
	
	//Connection with DEVICES
	input		[15:0]		dat_i,
	input		[ 1:0]		be_i,
	output 					rd_o,
	
	//Connection with SDRAM
	output	[15:0]		dat_o,
	output 					dat_val,	
	output	[ 1:0]		be_o,
	input						rcv_rdy
	
);
`ifdef INPUT_2BYTE_DATA
	localparam	IN_DATA_WIDTH	= 2;
`else 
	localparam	IN_DATA_WIDTH	= 1;
`endif

`ifdef OUTPUT_2BYTE_DATA_SDRAM
	localparam	OUT_DATA_WIDTH	= 2;
`else 
	localparam	OUT_DATA_WIDTH	= 1;
`endif

reg			[ 7:0]		addr_r;
reg			[15:0]		packet_length_r;
reg			[11:0]		fifo_load;

reg			[2 :0]		header_chkr;
reg			[7 :0]		crc_hreg;
reg			[7 :0]		crc_dreg;
reg			[15:0]		data_chkr_in;
reg							header_send;
reg							data_send;
reg							crc_send;
reg							wr_cmplt;
//reg							dat_wr_done;
//reg							crc_wr_done;
reg							run_dat_val;

wire			[7 :0]		crc_head_high;
wire			[7 :0]		crc_head_low;
wire			[7 :0]		crc_dat_high;
wire			[7 :0]		crc_dat_low;
wire			[15:0]		head_dat;
wire			[15:0]		rd_data;
wire			[15:0]		fifo_dat_i;
wire			[ 1:0]		fifo_be_i;
wire			[ 1:0]		head_be;
wire			[15:0]		crc_in;
wire							full;
wire							empty;

//ADDRESS
always @(posedge clk or negedge rst_n) 
	if (!rst_n)			addr_r <= 8'h0; 
	else if (start)	addr_r <= addr;

//PACKET LENGTH
always @(posedge clk or negedge rst_n)
	if (!rst_n)			packet_length_r <= 16'h0; 
	else if (start)	packet_length_r <= packet_length;
	
//HEADER SEND
always @(posedge clk or negedge rst_n)
	if (!rst_n)																			header_send <= 1'b0;
	else if ((IN_DATA_WIDTH == 1) & (header_chkr == 3'h5) & head_wr)	header_send <= 1'b0;
	else if ((IN_DATA_WIDTH == 2) & (header_chkr == 3'h2) & head_wr)	header_send <= 1'b0;
	else if (start)																	header_send <= 1'b1;

//DATA SEND	
always @(posedge clk or negedge rst_n)
	if (!rst_n)																		data_send <= 1'b0;
	else if ((data_chkr_in == (packet_length_r - 1'b1)) & dat_wr)	data_send <= 1'b0;
	else if ((IN_DATA_WIDTH == 1) & (header_chkr == 3'h5))			data_send <= 1'b1;
	else if ((IN_DATA_WIDTH == 2) & (header_chkr == 3'h2))			data_send <= 1'b1;

//CRC START
always @(posedge clk or negedge rst_n)
	if (!rst_n)																		crc_send <= 1'b0;
	else if (stop)																	crc_send <= 1'b0;
	else if ((data_chkr_in == (packet_length_r - 1'b1)) & dat_wr)	crc_send <= 1'b1;
	
//---------------------------------------------------------------------------------------------------

//HEAD CHECKER
always @(posedge clk or negedge rst_n)
	if			(!rst_n)														header_chkr <= 3'h0;
	else if	((IN_DATA_WIDTH == 1) & (header_chkr == 3'h5))	header_chkr	<= 3'h0;	
	else if	((IN_DATA_WIDTH == 2) & (header_chkr == 3'h2))	header_chkr	<= 3'h0;	
	else if	(header_send)												header_chkr	<= header_chkr + 1'b1;

//HEADER DATA
assign	head_dat	=	((IN_DATA_WIDTH == 1) & (header_chkr == 3'h0)) ? 8'h5E	:
							((IN_DATA_WIDTH == 1) & (header_chkr == 3'h1)) ? 8'h4D	:
							((IN_DATA_WIDTH == 1) & (header_chkr == 3'h2)) ? addr_r	:
							((IN_DATA_WIDTH == 1) & (header_chkr == 3'h3)) ? packet_length_r[15:8]	:
							((IN_DATA_WIDTH == 1) & (header_chkr == 3'h4)) ? packet_length_r[7:0]	:
							((IN_DATA_WIDTH == 1) & (header_chkr == 3'h5)) ? crc_head_mux_high		:
							((IN_DATA_WIDTH == 2) & (header_chkr == 3'h0)) ? 16'h5E4D												:
							((IN_DATA_WIDTH == 2) & (header_chkr == 3'h1)) ? {addr_r, packet_length_r[15:8]}					:
							((IN_DATA_WIDTH == 2) & (header_chkr == 3'h2)) ? {packet_length_r[7:0], crc_head_mux_high}	: 8'h0;
							
//HEADER CRC
//----------------------							
//CRC8 header high byte					
crc8_ftdi crc8_head_high
(
	.data_i		(	head_dat[15:8]	),
	.crc_i		(	crc_hreg			),
	.crc_o		(	crc_head_high	)
);

//HEAD BE
assign head_be = (IN_DATA_WIDTH == 1) ? 2'b01 : (IN_DATA_WIDTH == 2) ? 2'b11 : 2'b00;

wire [7:0]	crc_head_mux_high	= (head_be[1]) ? crc_head_high : crc_hreg;		

//CRC8 header low byte
crc8_ftdi crc8_head_low
(
	.data_i		(	head_dat[7:0]		),
	.crc_i		(	crc_head_mux_high	),
	.crc_o		(	crc_head_low		)	
);		

wire [7:0]	crc_head_mux_low	= (head_be[0]) ? crc_head_low : crc_head_mux_high;

//CRC8 HEAD REG
always @(posedge clk or negedge rst_n)
	if 		(!rst_n)						crc_hreg <= 8'h0;
	else if	(stop)						crc_hreg <= 8'h0;
	else if	(header_send)				crc_hreg <= crc_head_mux_low;

//---------------------------------------------------------------------------------------------------

//DATA CHECKER IN	
always @(posedge clk or negedge rst_n)
	if (!rst_n) 																data_chkr_in <= 16'h0;
	else if (!data_send)														data_chkr_in <= 16'h0;
	else if ((IN_DATA_WIDTH == 2) & dat_wr & be_i[1] & be_i[0])	data_chkr_in <= data_chkr_in + 2'h2;
	else if (dat_wr)															data_chkr_in <= data_chkr_in + 2'h1;

//DATA CRC
//----------------------				
//CRC8 data high byte
crc8_ftdi crc8_dat_high
(
	.data_i		(	dat_i[15:8]		),
	.crc_i		(	crc_dreg			),
	.crc_o		(	crc_dat_high	)
);

wire [7:0]	crc_dat_mux_high	= (be_i[1]) ? crc_dat_high : crc_dreg;

//CRC8 data low byte
crc8_ftdi crc8_dat_low
(
	.data_i		(	dat_i[7:0]			),
	.crc_i		(	crc_dat_mux_high	),
	.crc_o		(	crc_dat_low			)
);

wire [7:0]	crc_dat_mux_low	= (be_i[0]) ? crc_dat_low : crc_dat_mux_high;

always @(posedge clk or negedge rst_n)
	if (!rst_n)			crc_dreg <= 8'h0;
	else if (stop)		crc_dreg <= 8'h0;
	else if (dat_wr)	crc_dreg <= crc_dat_mux_low;
	
assign crc_in = {8'b0, crc_dreg};
	
//---------------------------------------------------------------------------------------------------

//FIFO WR signals
wire dat_wr	= data_send & !full;
wire head_wr = header_send & !full;
wire crc_wr = crc_send & !wr_cmplt & !full;
wire fifo_wr_en =	dat_wr | head_wr | crc_wr;

assign fifo_dat_i		=	head_wr		? head_dat	: 
								dat_wr		? dat_i 		:
								crc_wr		? crc_in		: 16'h00;

assign fifo_be_i		=	head_wr		? head_be	: 
								dat_wr		? be_i		:
								crc_wr		? 2'b01		: 2'b00;
								
//FIFO RD signals				
wire fifo_rd_en = rcv_rdy & dat_val;

//FIFO with 8/16 bit input(be_i[1:0] control) and 16 bit output
`ifdef INPUT_2BYTE_DATA
fifo_w16_r16_beio #(256) fifo_w16_r16_beio
(
	.rst_n	(		rst_n				),
	.clk		(		clk				),
	.rd_en	(		fifo_rd_en		),
	.rd_data	(		rd_data			),
	.be_o		(		be_o				),
	.wr_en	(		fifo_wr_en		),
	.wr_data	(		fifo_dat_i		),
	.be_i		(		fifo_be_i		),
	.full		(		full				),
	.empty	(		empty				)
);
`elsif OUTPUT_2BYTE_DATA_SDRAM
fifo_w16_r16_beio #(256) fifo_w16_r16_beio
(
	.rst_n	(		rst_n				),
	.clk		(		clk				),
	.rd_en	(		fifo_rd_en		),
	.rd_data	(		rd_data			),
	.be_o		(		be_o				),
	.wr_en	(		fifo_wr_en		),
	.wr_data	(		fifo_dat_i		),
	.be_i		(		fifo_be_i		),
	.full		(		full				),
	.empty	(		empty				)
);
`else							
umio_fifo #(1024, 8) attr_fifo
(
	.rst_n	(	rst_n				),
	.clk		(	clk				),
	.rd_en	(	fifo_rd_en		),
	.rd_data	(	rd_data			),
	.wr_en	(	fifo_wr_en		),
	.wr_data	(	fifo_dat_i		),
	.full		(	full				),
	.empty	(	empty				)
);
`endif

wire [1:0] load_inc = (IN_DATA_WIDTH == 2)  ? ((&fifo_be_i)	? 2'h2 : (fifo_be_i[1] | fifo_be_i[0]) ? 2'h1 : 2'h0) : 2'h1;
wire [1:0] load_dec = (OUT_DATA_WIDTH == 2) ? ((&be_o)		? 2'h2 : (be_o[1] | be_o[0])				? 2'h1 : 2'h0) : 2'h1;

always @(posedge clk or negedge rst_n)
	if (!rst_n)					fifo_load <= 12'h0;
	else if (fifo_wr_en)		fifo_load <= fifo_load + load_inc - ((fifo_rd_en) ? load_dec : 2'h0);
	else if (fifo_rd_en)		fifo_load <= fifo_load - load_dec + ((fifo_wr_en) ? load_inc : 2'h0);
	
always @(posedge clk or negedge rst_n)
	if (!rst_n)								run_dat_val <= 1'b0;
	else if (fifo_load <= 12'd4 )		run_dat_val <= 1'b0; 
	else if (fifo_load >= 12'd450)	run_dat_val <= 1'b1; 
	
//WRITE PACKET COMPLETE
//EXECUTION RUN
always @(posedge clk or negedge rst_n)
	if (!rst_n)							wr_cmplt <= 1'b0;
	else if (stop)						wr_cmplt <= 1'b0;
	else if (crc_wr)					wr_cmplt <= 1'b1;
	
//OUTPUT SIGNALS
assign rd_o		= dat_wr;
assign dat_val	= !empty & (run_dat_val | wr_cmplt);
assign dat_o 	= rd_data;	
assign stop		= wr_cmplt & empty;


	
endmodule
