module fifo_w16_r16_beio #(parameter SIZE) 
(
	input 							rst_n,
	input 							clk,
	input 							rd_en,	
	output 	[15:0]				rd_data,
	output	[ 1:0]				be_o,
	input 							wr_en,	
	input		[15:0]				wr_data,
	input		[ 1:0]				be_i,
	
	output 							full,
	output 							empty	
);  

reg	wr_ptr;
reg	rd_ptr;
wire	full_high;
wire	full_low;
wire	empty_high;
wire	empty_low;
wire	[7:0] rd_data_high;
wire	[7:0] rd_data_low;
wire	[7:0] wr_dat_high;
wire	[7:0] wr_dat_low;
wire          rd_en_high;
wire          rd_en_low;
wire          wr_en_high;
wire          wr_en_low;

umio_fifo #(SIZE) fifo_high
(
		.rst_n			(	rst_n			),
		.clk				(	clk			),
		.rd_en			(	rd_en_high	),		
		.rd_data			(	rd_data_high),
		.wr_en			(	wr_en_high	),		
		.wr_data			(	wr_dat_high	),
		.full				(	full_high	),
		.empty			(	empty_high	)
);

umio_fifo #(SIZE) fifo_low
(
		.rst_n			(	rst_n			),
		.clk				(	clk			),
		.rd_en			(	rd_en_low	),		
		.rd_data			(	rd_data_low	),
		.wr_en			(	wr_en_low	),		
		.wr_data			(	wr_dat_low	),
		.full				(	full_low		),
		.empty			(	empty_low	)
);

always @(posedge clk or negedge rst_n)
	if (!rst_n) wr_ptr <= 1'b0;
	else if ((be_i[0] ^ be_i[1]) & wr_en)	wr_ptr <= ~wr_ptr;
	
assign wr_dat_high = !wr_ptr & be_i[1] ? wr_data[15:8] : wr_data[7:0];
assign wr_dat_low  =  wr_ptr & be_i[1] ? wr_data[15:8] : wr_data[7:0];

assign wr_en_high = wr_en & (!wr_ptr | be_i[1] & be_i[0]);
assign wr_en_low  = wr_en & (wr_ptr  | be_i[1] & be_i[0]);

wire be_high	= !rd_ptr & !empty_high;
wire be_low		= !empty_low;

always @(posedge clk or negedge rst_n)
	if (!rst_n) rd_ptr <= 1'b0;
	else if ((be_high ^ be_low) & rd_en)	rd_ptr <= ~rd_ptr;

assign rd_en_high = rd_en & be_high;
assign rd_en_low  = rd_en & be_low;

assign be_o = {be_high, be_low};
assign rd_data = {rd_data_high, rd_data_low};

assign empty	= empty_high & empty_low;
assign full		= full_high | full_low;
			

endmodule
