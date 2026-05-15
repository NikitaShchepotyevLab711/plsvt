`timescale 1ns / 1ns

module adc_tb();

localparam CLK_PERIOD = 84; 
localparam ADC_SAMPLE_RATE = 100000;
localparam SIGNAL_FREQ = 300; // 5kHz
localparam ADC_PERIOD = 1000000000/ADC_SAMPLE_RATE;  // Период DRDY 256 kHz (3906.25 нс)

// Сигналы
reg         clk;
reg         reset;

// interface to adc//
reg  drdy;           
reg  dout;    
reg  cs;       
wire din;           
wire sclk;
wire nRST;

wire SCLK;

// signals from above //
reg         sync;

real        time_counter = 0;
real        dt = 1.0 / ADC_SAMPLE_RATE;
real        sin_value;
real        cos_value;
wire [23:0] ch1_sample;
reg  [23:0] prev_ch1_sample = '0;
reg  [23:0] sin_signal;
reg  [23:0] cos_signal;
wire        ch_num;

reg adc_clk;
integer bit_counter;

reg DOUT;
reg DRDY;
reg ch_change;

wire [13:0] wreg_command; // прошивка для АЦП

wire [1:0] channel_choice = 2'b11; // 1&2 ch
//wire channel_choice = 2'b01; // 1 ch
//wire channel_choice = 2'b10; // 2 ch
//wire channel_choice = 2'b11; // 1&2 ch

wire MODE; // режим (0 - каждый ацп принимает только в 1 канал, 1 - каждый ацп работает по обоим каналам)

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

wire BUF_DIS = 1; // reference voltage buffer on
//wire BUF_DIS = 1; // reference voltage buffer off

wire [1:0] Tech2 = 2'b01; // technical bits
assign wreg_command =  {POL, GAIN, REF, MODE, DR, Tech1, SCALE, BUF_DIS, Tech2};

adc045 dut(
    .clk(clk),
    .rst_l(reset),

    // interface to adc//
    .DRDY(drdy),           
    .DOUT(dout),    
    .CS(),       
    .DIN(din),           
    .SCLK(sclk),
    .nRST(nrst),
    .START(),
    
    .enable(1'b1),
    .sync(sync),
    .wreg_command(wreg_command),
    .channel_choice(channel_choice),
    .busy(),
    .data_o(),
    .ch_num(ch_num),
    .rd_en(),
    .dly()
);

initial begin
    clk = 0;
    forever #(CLK_PERIOD/2) clk = ~clk;
end

initial begin
    adc_clk = 0;
    forever #(ADC_PERIOD/2) adc_clk = ~adc_clk;
end

always @(posedge adc_clk or negedge reset) begin 
    if (!reset) begin
        time_counter <= 0;
        sin_value    <= 0;
        cos_value    <= 0;
        ch_change    <= 0;
    end
    else begin
        begin
            time_counter <= time_counter + dt;
            ch_change <= ~ch_change;
            sin_value <= $sin(2 * 3.141592653589793 * SIGNAL_FREQ * time_counter);
            cos_value <= $cos(2 * 3.141592653589793 * SIGNAL_FREQ * time_counter);
            sin_signal <= sin_value * (2**23 - 1);
            cos_signal <= cos_value * (2**23 - 1);           
        end
    end
end

assign ch1_sample = (!(^ch_num)) ? (ch_change ? sin_signal : cos_signal) : sin_signal;

task send_adc_data;
    input [23:0] ch1;
    integer i;
    begin
        for (i = 24; i >= 0; i = i - 1) begin
            dout = ch1[i];
            bit_counter = i; 
            @(posedge sclk);
            
            if (i == 24) begin
                drdy <= 1'b1;
                dout = 1'bz;
                @(posedge sclk); 
                drdy <= 1'b0;
                dout = 1'bz;
            end

            if (i == 0) begin
                dout = 1'bz;
                @(posedge adc_clk);
            end

        end
    end
endtask

initial begin
    dout = 1'b0;
    drdy = 1'b0;
    bit_counter = 0;
    prev_ch1_sample = ch1_sample;
    
    forever begin
        @(posedge adc_clk);
        send_adc_data(ch1_sample);
    end
end

initial begin
    fork
        begin
            sync = 0;
            reset = 1'b1;
            drdy = 1'b0;
            dout = 1'b0;
            
            #100;
            reset = 1'b0;
            #200;
            reset = 1'b1;
            #1000;
            sync = 1;
            @(posedge clk);
            sync = 0;
        end

        begin
        forever begin  
            #1500000;
            @(posedge clk);
            sync = 1;
            @(posedge clk);
            @(posedge clk);
            @(posedge clk);
            sync = 0;     
        end            
        end
    join
end

endmodule