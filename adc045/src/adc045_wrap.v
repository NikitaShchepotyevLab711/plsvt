module adc045_wrap (

    input  wire        clk,
    input  wire        rst_l,

    // interface to adc//
    input  wire        drdy,           
    input  wire        dout,    
    input  wire        cs,       
    output wire        din,           
    output wire        sclk,
    output wire        nRST,
    output wire        start,
    
    // signals from above //
    input  wire        hard_start,
    input  wire        hard_wreg,
    input  wire        rst_l_adc,

    // signals up //
    output wire        ready_sample,
    output wire [23:0] adc045_data
    
);

assign start = hard_start;
assign nRST = rst_l_adc;

wire [1:0] A_MUX = 2'b00; // 1st mux input channel 
//reg [1:0] A_MUX = 2'b01; // 2nd mux input channel 
//reg [1:0] A_MUX = 2'b1x; // 1 mux input channel 

wire POL = 0; // non inverted input channels
//reg POL = 1; // inverted input channels

wire [2:0] GAIN = 3'b000; // no gain
//wire [2:0] GAIN = 3'b100; // x2 gain
//wire [2:0] GAIN = 3'b101; // x4 gain
//wire [2:0] GAIN = 3'b110; // x8 gain
//wire [2:0] GAIN = 3'b111; // x16 gain

wire REF = 0; //internal reference voltage;
//wire REF = 1; //external reference voltage;

wire MODE = 0; //continuous conversion
//wire MODE = 1; //single conversion

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

wire [15:0] wreg_command;
assign wreg_command =  {A_MUX, POL, GAIN, REF, MODE, DR, Tech1, SCALE, BUF_DIS, Tech2};

adc_reader adc_rd (
    .clk(clk),
    .rst_l(rst_l),
    .drdy(drdy),           
    .dout(dout),           
    .din(din),    
    .cs(cs),       
    .sclk(sclk),
    .ch1_data(adc045_data),
    .hard_start(hard_start),
    .rst_l_adc(rst_l_adc),
    .hard_wreg(hard_wreg),
    .wreg_command(wreg_command),
    .ready(ready_sample)
);
    
endmodule