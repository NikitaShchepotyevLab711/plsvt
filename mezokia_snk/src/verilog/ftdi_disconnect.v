module ftdi_disconnect #(
	parameter integer CLK_FREQ_HZ = 8_000_000
)
(
	input		clk
	,input	rst_n
	
	,input	vbus_n
	,input	pwren_n
	,input	rxf_n
	,input	txe_n
	
	,output	disc_rst_n
);

localparam integer TIME_2S = 2 * CLK_FREQ_HZ;

reg				timer_on;
reg	[31:0]	timer_cnt;
reg				timer_pas_reg;
reg				disc_rst_reg_n;
reg				rxf_r_n;
reg				rxf_rr_n;
reg				rxf_rrr_n;
reg				txe_r_n;
reg				txe_rr_n;
reg				txe_rrr_n;
reg				vbus_r_n;
reg				vbus_rr_n;
reg				vbus_rrr_n;
reg				pwren_r_n;
reg				pwren_rr_n;
reg				pwren_rrr_n;


wire				timer_pas;

//TIMER ON
always @(posedge clk or negedge rst_n)
	if (!rst_n)					timer_on <= 1'b0;
	else if (rxf_rrr_n & txe_rrr_n)	timer_on <= 1'b1;
	else 							timer_on <= 1'b0;

//TIMER COUNTER
always @(posedge clk or negedge rst_n)
	if (!rst_n)					timer_cnt <= TIME_2S;
	else if (!timer_on)		timer_cnt <= TIME_2S;
	else if (!timer_pas)		timer_cnt <= timer_cnt - 1'b1;

assign timer_pas = timer_cnt == 0;

//RESET SIGNAL(ACTIVE LOW)
always @(posedge clk or negedge rst_n)
	if (!rst_n)													disc_rst_reg_n <= 1'b1;
	else if (timer_pas | vbus_rrr_n | pwren_rrr_n)	disc_rst_reg_n <= 1'b0;
	else															disc_rst_reg_n <= 1'b1;
	
//RXF
always @(posedge clk or negedge rst_n)
	if (!rst_n)					rxf_r_n <= 1'b0;
	else 							rxf_r_n <= rxf_n;
	
always @(posedge clk or negedge rst_n)
	if (!rst_n)					rxf_rr_n <= 1'b0;
	else 							rxf_rr_n <= rxf_r_n;
	
always @(posedge clk or negedge rst_n)
	if (!rst_n)					rxf_rrr_n <= 1'b0;
	else 							rxf_rrr_n <= rxf_rr_n;
	
//TXE
always @(posedge clk or negedge rst_n)
	if (!rst_n)					txe_r_n <= 1'b0;
	else 							txe_r_n <= txe_n;
	
always @(posedge clk or negedge rst_n)
	if (!rst_n)					txe_rr_n <= 1'b0;
	else 							txe_rr_n <= txe_r_n;
	
always @(posedge clk or negedge rst_n)
	if (!rst_n)					txe_rrr_n <= 1'b0;
	else 							txe_rrr_n <= txe_rr_n;
	
//VBUS
always @(posedge clk or negedge rst_n)
	if (!rst_n)					vbus_r_n <= 1'b0;
	else 							vbus_r_n <= vbus_n;
	
always @(posedge clk or negedge rst_n)
	if (!rst_n)					vbus_rr_n <= 1'b0;
	else 							vbus_rr_n <= vbus_r_n;
	
always @(posedge clk or negedge rst_n)
	if (!rst_n)					vbus_rrr_n <= 1'b0;
	else 							vbus_rrr_n <= vbus_rr_n;
	
//PWREN
always @(posedge clk or negedge rst_n)
	if (!rst_n)					pwren_r_n <= 1'b0;
	else 							pwren_r_n <= pwren_n;
	
always @(posedge clk or negedge rst_n)
	if (!rst_n)					pwren_rr_n <= 1'b0;
	else 							pwren_rr_n <= pwren_r_n;
	
always @(posedge clk or negedge rst_n)
	if (!rst_n)					pwren_rrr_n <= 1'b0;
	else 							pwren_rrr_n <= pwren_rr_n;
	
	
//RESET WHEN USB DISCONNECT
assign disc_rst_n = disc_rst_reg_n;


endmodule
