//---------------------------------------------------------------------------------------------------------------------------//
//																																									  //
//																		FTDI DECODER																			  //
//																																									  //
//---------------------------------------------------------------------------------------------------------------------------//
//Encoder data format:
//PACKET HEADER	|	ADDRESS	|	PACKET LENGTH	|	HEADER CRC	|	PACKET DATA	|	DATA CRC	|
//	5E		|	4D		|	ADDR		|	NUMH	|	NUML	|	CRC8H			|	DATA 			|	CRC8D		|
//-----------------------------------------------------------------------------------------

module ftdi_decoder (
		
	input					clk,
	input					rst_n,
		
	//Connection with FTDI Controller
	input		[7:0]		dat_i,
	input					dat_val_i,
	output				dat_rdy_o,
	
	//Connection with Devices
	output	[7:0]		addr,
	output	[7:0]		dat_o,
	output				dat_val_o,
	output				dat_val_o_pckt_end,	
	output	[15:0]	dat_size,
	output	[15:0]	byte_number,
	
	output				val_pckt_strb,
	output				head_crc_err,
	output				dat_crc_err
	
);

localparam DATA_FIFO_SIZE  = 4096;
localparam ATTR_FIFO_SIZE  = 256;
localparam ATTR_FIFO_WIDTH = 8 * 4;

reg	[ 7:0]		dev_addr;
reg	[15:0]		packet_length;
reg	[ 7:0]		header_crc;
reg	[ 7:0]		data_crc;
reg	[15:0]		shift_reg;
reg					shift_trigger;
reg					header_start;
reg					data_start;
reg					crcd_start;
reg					crch_start;
reg	[ 2:0]		header_chkr;
reg	[15:0]		data_chkr;
reg	[15:0]		data_chkr_rd;
reg	[ 7:0]		dat_reg;
reg					buf_wr;
reg	[ 7:0]		crc_hreg;
reg	[ 7:0]		crc_dreg;
reg					attr_dat_rd;

wire					buf_rd;
wire					dat_rd;
wire					attr_dat_wr;
wire	[ 7:0]		crc_hout;
wire	[ 7:0]		crc_dout;
wire	[31:0]		attr_dat_i;
wire	[31:0]		attr_dat_o;
wire					attr_empty;
wire					attr_full;
wire					buf_full;
wire					buf_empty;

assign dat_rdy_o = !attr_full & !buf_full;

//HEADER
//---------------------------------------------------------------------------------------------------

//READ DATA FROM FTDI
assign dat_rd = dat_val_i & dat_rdy_o;

//DATA SHIFT REG
always @(posedge clk or negedge rst_n)
		if (!rst_n) shift_reg <= {16{1'b0}};
		else if (dat_rd) shift_reg <= {shift_reg[7:0], dat_i};
		
always @(posedge clk or negedge rst_n)
		if (!rst_n) shift_trigger <= 1'b0;
		else if (header_start | data_start | crch_start | crcd_start)		shift_trigger <= 1'b0;
		else if ((dat_i == 8'h5E) & dat_rd)											shift_trigger <= 1'b1;
		else if (shift_trigger & dat_rd)												shift_trigger <= 1'b0;
		
//HEADER START
always @(posedge clk or negedge rst_n)
		if (!rst_n) header_start <= 1'b0;
		else if ((header_chkr == 3'h2) & dat_rd)					 											header_start <= 1'b0;
		else if (({shift_reg[7:0], dat_i} == 16'h5E4D) & dat_rd & !data_start & !crcd_start)	header_start <= 1'b1;

//HEADER CHECKER
always @(posedge clk or negedge rst_n)
		if (!rst_n) header_chkr <= 3'b0;
		else if ((header_chkr == 3'h2) & dat_rd) header_chkr <= 3'b0;	
		else if (header_start & dat_rd) header_chkr <= header_chkr + 1'b1;
		
//DEVICE ADDRESS
always @(posedge clk or negedge rst_n)
		if (!rst_n) dev_addr <= 8'h0;
		else if (header_start & (header_chkr == 3'h0) & dat_rd) dev_addr <= dat_i;
	
//PACKET LENGTH
always @(posedge clk or negedge rst_n)
		if (!rst_n) packet_length <= 16'h0;
		else if (header_start & (header_chkr == 3'h2) & dat_rd) packet_length <= {shift_reg[7:0], dat_i};
		
// CRC8 HEADER
crc8_ftdi crc8_header
(
	.data_i		(	dat_i		),
	.crc_i		(	crc_hreg	),
	.crc_o		(	crc_hout	)
);	

//CRC HEADER START
always @(posedge clk or negedge rst_n)
		if (!rst_n) 										crch_start <= 1'b0;
		else if (crch_start & dat_rd)					crch_start <= 1'b0;
		else if ((header_chkr == 3'h2) & dat_rd)	crch_start <= 1'b1;

always @(posedge clk or negedge rst_n)
	if (!rst_n) crc_hreg <= 8'h3E;	//5E4D CRC
	else if (crch_start & dat_rd) 	crc_hreg <= 8'h3E;	//5E4D CRC
	else if (header_start & dat_rd)	crc_hreg <= crc_hout;

//HEADER CRC CHECK
wire crc_head_true = (crc_hreg == dat_i);	
wire header_true = (|packet_length) & (crc_head_true);

//DATA
//---------------------------------------------------------------------------------------------------
		
//DATA START
always @(posedge clk or negedge rst_n)
		if (!rst_n) data_start <= 1'b0;
		else if ((data_chkr == packet_length - 1'b1) & dat_rd & data_start)	data_start <= 1'b0;
		else if (header_true & crch_start & dat_rd)									data_start <= 1'b1;		

		
//DATA CHECKER
always @(posedge clk or negedge rst_n)
		if (!rst_n) data_chkr <= 16'b0;		
		else if ((data_chkr == packet_length - 1'b1) & dat_rd)	data_chkr <= 16'b0;
		else if (data_start & dat_rd)										data_chkr <= data_chkr + 1'b1;
		
//WRITE DATA TO BUF	
always @(posedge clk or negedge rst_n)
		if (!rst_n)							buf_wr <= 1'b0;
		else if (data_start & dat_rd) buf_wr <= 1'b1;
		else									buf_wr <= 1'b0;	

//WRITE DATA
always @(posedge clk or negedge rst_n)
		if (!rst_n) dat_reg <= 8'h0;
		else if (data_start & dat_rd) dat_reg <= dat_i;

//READ DATA FROM BUF
assign buf_rd = !attr_empty & !attr_dat_rd & !buf_empty;
	
//DATA FIFO
umio_fifo #(DATA_FIFO_SIZE) dat_buf
(
	.rst_n	(	rst_n		),
	.clk		(	clk		),
	.rd_en	(	buf_rd	),
	.rd_data	(	dat_o		),
	.wr_en	(	buf_wr	),
	.wr_data	(	dat_reg	),
	.full		(	buf_full	),
	.empty	(	buf_empty)
);

//DATA ATTRIBUTE
//PACKET VALID[7:0](bit 0 - CRC CHECK), ADDR[7:0], PACKET LENGTH[15:0]
assign attr_dat_i = {7'b0, crc_dtrue, dev_addr, packet_length};

//ATTRIBUTE WRITE
assign attr_dat_wr = crcd_start & dat_rd;
		
//ATTRIBUTE READ
always @(posedge clk or negedge rst_n)
		if (!rst_n) attr_dat_rd <= 1'b0;
		else if (attr_dat_rd) attr_dat_rd <= 1'b0;
		else if ((data_chkr_rd == (attr_dat_o[15:0] - 1)) & buf_rd) attr_dat_rd <= 1'b1;

//ATTRIBUTE FIFO
umio_fifo #(ATTR_FIFO_SIZE, ATTR_FIFO_WIDTH) attr_fifo
(
	.rst_n	(	rst_n				),
	.clk		(	clk				),
	.rd_en	(	attr_dat_rd		),
	.rd_data	(	attr_dat_o		),
	.wr_en	(	attr_dat_wr		),
	.wr_data	(	attr_dat_i		),
	.full		(	attr_full		),
	.empty	(	attr_empty		)
);
		
//READ DATA CHECKER 
always @(posedge clk or negedge rst_n)
	if (!rst_n) data_chkr_rd <= 16'b0;
	else if (buf_rd & (data_chkr_rd == (attr_dat_o[15:0] - 1))) data_chkr_rd <= 16'b0;
	else if (buf_rd) data_chkr_rd <= data_chkr_rd + 1'b1;	
	
always @(posedge clk or negedge rst_n)
	if (!rst_n)	crcd_start <= 1'b0;
	else if (crcd_start & dat_rd)	crcd_start <= 1'b0;
	else if ((data_chkr == packet_length - 1'b1) & dat_rd & !header_start & data_start) crcd_start <= 1'b1;
	
//OUTPUT SIGNALS
assign addr				= attr_dat_o[23:16];
assign dat_val_o		= buf_rd & attr_dat_o[24];
assign dat_size		= attr_dat_o[15:0];
assign byte_number	= data_chkr_rd;
assign val_pckt_strb = attr_dat_wr & crc_dtrue;
assign head_crc_err	= !data_start & !crcd_start &	((crch_start & dat_rd & !header_true) | 
																	(!header_start & !crch_start & dat_rd & !shift_trigger) & (dat_i != 8'h5E)	 |
																	(!header_start & !crch_start & dat_rd &  shift_trigger) & (dat_i != 8'h4D)
																	);
assign dat_val_o_pckt_end	= attr_dat_rd & attr_dat_o[24];					
assign dat_crc_err			= attr_dat_wr & !crc_dtrue;


// CRC8 DATA
crc8_ftdi crc8_data
(
	.data_i		(	dat_i		),
	.crc_i		(	crc_dreg	),
	.crc_o		(	crc_dout	)
);	

//CRC DATA TRUE FLAG
wire crc_dtrue = (crc_dreg == dat_i);

//CRC REG
always @(posedge clk or negedge rst_n)
	if (!rst_n) crc_dreg <= 8'h00;
	else if (crcd_start & dat_rd) crc_dreg <= 8'h00;
	else if (data_start & dat_rd) crc_dreg <= crc_dout;
		
endmodule

		
		
		
		
