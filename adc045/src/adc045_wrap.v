module adc045_wrap (

    input  wire        clk,
    input  wire        rst_l,

    // interface to adc//
    input  wire        DRDY,           
    input  wire        DOUT,    
    output wire        CS,       
    output wire        DIN,           
    output wire        SCLK,
    output wire        nRST,
    output wire        START,

    // others //
    input wire         sync, 
    output wire [23:0] DATA_OUT,
    output wire        RD_EN
);

wire [1:0] channel_choice = 2'b11; // 1&2 ch
//wire channel_choice = 2'b01; // 1 ch
//wire channel_choice = 2'b10; // 2 ch
//wire channel_choice = 2'b11; // 1&2 ch


wire ADC_BUSY;

wire POL = 0; // non inverted input channels
//reg POL = 1; // inverted input channels

wire [2:0] GAIN = 3'b000; // no gain
//wire [2:0] GAIN = 3'b100; // x2 gain
//wire [2:0] GAIN = 3'b101; // x4 gain
//wire [2:0] GAIN = 3'b110; // x8 gain
//wire [2:0] GAIN = 3'b111; // x16 gain

wire REF = 0; //internal reference voltage;
//wire REF = 1; //external reference voltage;

assign MODE = ^channel_choice ? 1'b0 : 1'b1;

wire [1:0] DR = 2'b00; // 1 kHz dig filter sampling
//wire [1:0] DR = 2'b01; // 250 Hz dig filter sampling
//wire [1:0] DR = 2'b10; // 62,5 Hz dig filter sampling
//wire [1:0] DR = 2'b11; // 15,6 Hz dig filter sampling

wire [1:0] Tech1 = 0; // technical bits

wire SCALE = 0; //full scale ADC
//wire SCALE = 1; // 80% scale ADC

wire BUF_DIS = 0; // reference voltage buffer on
//wire BUF_DIS = 1; // reference voltage buffer off

wire [1:0] Tech2 = 2'b00; // technical bits

wire [13:0] wreg_command;
assign wreg_command =  {POL, GAIN, REF, MODE, DR, Tech1, SCALE, BUF_DIS, Tech2};

adc045 adc_inst(
    .clk(clk),
    .rst_l(rst_l),

    // interface to adc//
    .DRDY(DRDY),           
    .DOUT(DOUT),    
    .CS(CS),       
    .DIN(DIN),           
    .SCLK(SCLK),
    .nRST(nRST),
    .START(START),
    
    .sync(sync),
    .wreg_command(wreg_command),
    .channel_choice(channel_choice),
    .busy(ADC_BUSY),
    .data_o(DATA_OUT),
    .channel(),
    .rd_en(RD_EN)
);

endmodule