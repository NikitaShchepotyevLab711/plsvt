//---------------------------------------------------------------------------------------------------------------------------//
//																																									  //
//																	  USB FTDI MODULE																			  //
//																																									  //
//---------------------------------------------------------------------------------------------------------------------------//
//`define ROUND_CYCLE
`define INPUT_2BYTE_DATA_SDRAM
module ftdi_controller_sdram
(
	input				rst_n,
	input				clk,	
	input				ftdi_clk,
	input				ftdi_rst_n,

	//FTDI IN-OUT PINS
	inout		[7:0]	ADBUS,
	input				RXF,
	input				TXE,
	output			RD,
	output			WR,
	output			SIWU,
	input				PWREN,
	inout				ODD,
	output			OE,

	//FTDI to SDRAM
	input		[15:0]	ftdi_dat_i,
	input					ftdi_dat_val_i,	
	input		[ 1:0]	ftdi_be_i,
	output				ftdi_rdy_o,
	
	//FTDI to DECODER
	output	[7:0]		ftdi_dat_o,
	output				ftdi_dat_val_o,
	input					ftdi_rdy_i,
	
	//TEST
	output	[15:0]	test_checker_w,
	output				common_err
);

`ifdef INPUT_2BYTE_DATA_SDRAM
	localparam	IN_DATA_WIDTH	= 2;
`else 
	localparam	IN_DATA_WIDTH	= 1;
`endif

reg					rw_oe;
reg					rd_en;
reg					dat_val;
reg		[11 :0]	fifo_load;
reg					run_rdy;
reg		[ 7:0]	wdata;
reg		[ 7:0]	rdata;
reg		[ 2:0]	ftdi_state;
reg					dat_wr_val;
reg					dat_rd_val;

wire					data_wr;
wire					data_rd;
wire					wbuf_empty;
wire					wbuf_full;
wire					rbuf_empty;
wire					rbuf_full;
wire		[7 :0]	wbuf_wdat;
wire		[7 :0]	wbuf_rdat;
wire					wbuf_rd;
wire					sdram_fifo_empty;
wire					sdram_fifo_full;
wire					wbuf_wr;
wire					rbuf_rd;
wire					ftdi_fifo_wr;

localparam FTDI_IDLE		= 3'b001;
localparam FTDI_READ		= 3'b010;
localparam FTDI_WRITE	= 3'b100;

//FTDI PINS OUT
//---------------------------------------------------------
assign ODD		= 1'bZ;
assign ADBUS	= !rw_oe		? wdata : 8'hZZ;
assign WR		= data_wr	? 1'b0 : 1'b1;
assign RD		= data_rd	? 1'b0 : 1'b1;
assign OE		= rw_oe		? 1'b0 : 1'b1;
assign SIWU		= PWREN		? 1'b0 : 1'b1;

//FTDI CONTROLLER STATE MACHINE
//---------------------------------------------------------
always @(posedge ftdi_clk or negedge rst_n)
	if (!rst_n) begin
					ftdi_state	<= FTDI_IDLE;
					rw_oe			<= 1'b1;
					
					end
	else case (ftdi_state)
			FTDI_IDLE:
							begin
								if (!RXF & !rbuf_full/* & ftdi_rdy_i*/)	begin										//DATA AVAILABLE & FIFO NOT FULL & DECODER READY 
																				ftdi_state	<= FTDI_READ;	
																				rw_oe			<= 1'b1;
																				end
																				
								else if (!wbuf_empty & !TXE)			begin										//DATA AVAILABLE & FTDI FIFO NOT FULL	
																				ftdi_state	<= FTDI_WRITE;
																				rw_oe			<= 1'b0;
																				end
							end
			FTDI_READ:
							begin
								if (RXF | rbuf_full/* | !ftdi_rdy_i*/)	begin
																				ftdi_state	<= FTDI_IDLE;
																				rw_oe			<= 1'b1;	
																				end
							end
			FTDI_WRITE:
							begin
								if (TXE | wbuf_empty | (!RXF & !rbuf_full/* & ftdi_rdy_i*/))	begin
																				ftdi_state	<= FTDI_IDLE;
																				rw_oe			<= 1'b1;
																				end
							end
	endcase

	
//WRITE TO FTDI
//---------------------------------------------------------
//WRITE OE TO FTDI
assign data_wr = (ftdi_state == FTDI_WRITE) & !TXE & dat_wr_val;

//DATA VALID FOR WR TO FTDI
always @(posedge ftdi_clk or negedge ftdi_rst_n)
	if (!ftdi_rst_n)												dat_wr_val <= 1'b0;
	else if (!wbuf_empty)										dat_wr_val <= 1'b1;
	else if (dat_wr_val & wbuf_empty & !TXE & data_wr)	dat_wr_val <= 1'b0;
	else if (dat_wr_val & wbuf_empty &  TXE) 				dat_wr_val <= 1'b1;

//WRITE DATA REGISTER
always @(posedge ftdi_clk)	if(wbuf_rd)	wdata <= wbuf_rdat;

//WRITE TO WBUFFER 
assign wbuf_rd = (!dat_wr_val & !wbuf_empty) | (dat_wr_val & !wbuf_empty & data_wr);

//BUF TO FTDI WITH RESYNC
`ifdef ROUND_CYCLE
fifo_gen	fifo_gen_resync_wr 
(
	.data		(	ftdi_dat_o	),
	.rdclk	( 	ftdi_clk		),
	.rdreq	( 	wbuf_rd		),
	.wrclk	( 	clk			),
	.wrreq	(	!wbuf_full & !rbuf_empty), 
	.q			( 	wbuf_rdat	),
	.rdempty	( 	wbuf_empty	),
	.wrfull	( 	wbuf_full	)
);
`else
fifo_gen	fifo_gen_resync_wr 
(
	.data		( 	wbuf_wdat	),
	.rdclk	( 	ftdi_clk		),
	.rdreq	( 	wbuf_rd		),
	.wrclk	( 	clk			),
	.wrreq	( 	wbuf_wr		),
	.q			( 	wbuf_rdat	),
	.rdempty	( 	wbuf_empty	),
	.wrfull	( 	wbuf_full	)
);
`endif

//READ FROM FTDI
//---------------------------------------------------------
//READ OE TO FTDI
//assign data_rd = !rbuf_full & !RXF & (ftdi_state == FTDI_READ);//rd_en & rw_oe;///TODO
assign data_rd = !rbuf_full & !RXF & (ftdi_state == FTDI_READ);

//READ DATA VALID FOR WRITE TO BUF_FIFO AFTER READ FROM FTDI
always @(posedge ftdi_clk or negedge ftdi_rst_n)
	if (!ftdi_rst_n)						dat_rd_val <= 1'b0;
	else if (data_rd)						dat_rd_val <= 1'b1;
	else if (!rbuf_full & !data_rd)	dat_rd_val <= 1'b0;

always @(posedge ftdi_clk)	if(data_rd)	rdata <= ADBUS;

//BUF FROM FTDI WITH RESYNC
`ifdef ROUND_CYCLE
fifo_gen	fifo_gen_resync_rd
(
	.data		( 	rdata			),
	.rdclk	( 	clk			),
	.rdreq	(	!wbuf_full & !rbuf_empty	), 
	.wrclk	( 	ftdi_clk		),
	.wrreq	( 	dat_rd_val	),
	.q			( 	ftdi_dat_o	),
	.rdempty	( 	rbuf_empty	),
	.wrfull	( 	rbuf_full	)
);
`else
fifo_gen	fifo_gen_resync_rd
(
	.data		( 	rdata			),
	.rdclk	( 	clk			),
	.rdreq	( 	rbuf_rd		),
	.wrclk	( 	ftdi_clk		),
	.wrreq	( 	dat_rd_val	),
	.q			( 	ftdi_dat_o	),
	.rdempty	( 	rbuf_empty	),
	.wrfull	( 	rbuf_full	)
);
`endif



//BUFFER BETWEEN ARBITER AND FTDI 
//---------------------------------------------------------

//READ DATA FROM SDRAM FIFO & WRITE TO FTDI BUF
assign wbuf_wr = !sdram_fifo_empty & !wbuf_full;

//DATA FROM SDRAM
`ifdef INPUT_2BYTE_DATA_SDRAM
umio_fifo_w16_r8 #(256) ram_to_ftdi_fifo
(
	.clk			(		clk				),
	.rst_n		(		rst_n				),

	.wr_en		(		ftdi_fifo_wr	),
	.wr_data		(		ftdi_dat_i		),
	.be_i			(		ftdi_be_i		),
	.rd_en		(		wbuf_wr			),
	.rd_data		(		wbuf_wdat		),

	.full			(		sdram_fifo_full		),
	.empty		(		sdram_fifo_empty		)
);
`else 
umio_fifo #(1024, 8) umio_fifo
(
	.rst_n	(	rst_n					),
	.clk		(	clk					),
	.rd_en	(	wbuf_wr				),
	.rd_data	(	wbuf_wdat			),
	.wr_en	(	ftdi_fifo_wr		),
	.wr_data	(	ftdi_dat_i			),
	.full		(	sdram_fifo_full	),
	.empty	(	sdram_fifo_empty	)
);
`endif


wire [1:0] load_inc = (IN_DATA_WIDTH == 2) ? ((&ftdi_be_i)	? 2'h2 : (ftdi_be_i[1] | ftdi_be_i[0]) ? 2'h1 : 2'h0) : 1'b1;
wire [1:0] load_dec = 2'h1;

assign ftdi_fifo_wr = ftdi_dat_val_i & ftdi_rdy_o;

always @(posedge clk or negedge rst_n)
	if (!rst_n) run_rdy <= 1'b0;
	else if (fifo_load >= 12'd450)	run_rdy <= 1'b0; 	
	else if (sdram_fifo_empty | (fifo_load <= 12'd16 ))	run_rdy <= 1'b1; 

assign ftdi_rdy_o = run_rdy;

always @(posedge clk or negedge rst_n)
	if (!rst_n) fifo_load <= 12'h0;
	else if (ftdi_fifo_wr)	fifo_load <= fifo_load + load_inc - ((wbuf_wr) ? load_dec : 2'h0);
	else if (wbuf_wr)			fifo_load <= fifo_load - load_dec + ((ftdi_fifo_wr) ? load_inc : 2'h0);
	



//-------------------------------------------------------------------------------------------------------------------------

//TEST SIGNALS
assign test_checker_w = test_checker;
assign common_err = rbuf_full | wbuf_full | sdram_fifo_full;
reg [15:0] test_checker;
always @(posedge clk or negedge rst_n)
if (!rst_n) test_checker <= 16'h0;
else if (wbuf_wr) test_checker <= test_checker + 1'b1;

assign ftdi_dat_val_o = !rbuf_empty;
assign rbuf_rd = ftdi_dat_val_o & ftdi_rdy_i;


endmodule
