`timescale 1ns / 1ps

module adc_reader_tb();

localparam CLK_PERIOD = 100; 
localparam ADC_SAMPLE_RATE = 256_000;
localparam SIGNAL_FREQ = 5000; // 5kHz
localparam ADC_PERIOD = 1000000000/ADC_SAMPLE_RATE;  // Период DRDY 256 kHz (3906.25 нс)

// Сигналы
reg         clk;
reg         reset;

// interface to adc//
reg         drdy;           
reg         dout;    
reg         cs;       
wire        din;           
wire        sclk;
wire        nRST;
wire        start;

// signals from above //
reg        hard_start;
reg        hard_wreg;
reg        rst_l_adc;

// signals up //
wire        ready_sample;
wire [23:0] adc045_data;

real time_counter = 0;
real dt = 1.0 / ADC_SAMPLE_RATE;
real sin_value;
reg [23:0] ch1_sample = '0;
reg [23:0] prev_ch1_sample = '0;

reg adc_clk;
integer bit_counter;

adc045_wrap uut (
    .clk(clk),
    .rst_l(reset),

    // interface to adc//
    .drdy(drdy),           
    .dout(dout),    
    .cs(cs),       
    .din(din),           
    .sclk(sclk),
    .nRST(nRST),
    .start(start),
    
    // signals from above //
    .hard_start(hard_start),
    .hard_wreg(hard_wreg),
    .rst_l_adc(rst_l_adc),

    // signals up //
    .ready_sample(ready_sample),
    .adc045_data(adc045_data)
);

initial begin
    clk = 0;
    forever #(CLK_PERIOD/2) clk = ~clk;
end

initial begin
    adc_clk = 0;
    forever #(ADC_PERIOD/2) adc_clk = ~adc_clk;
end

always @(posedge adc_clk or negedge nRST) begin 
    if (!nRST) begin
        time_counter = 0;
        sin_value = 0;
        ch1_sample = 0;
    end
    else begin
        if (uut.adc_rd.work_mode) begin
            time_counter = time_counter + dt;
            sin_value = $sin(2 * 3.141592653589793 * SIGNAL_FREQ * time_counter);
            ch1_sample = sin_value * (2**23 - 1);
        end
    end
end

task send_adc_data;
    input [23:0] ch1;
    integer i;
    begin
        for (i = 23; i >= 0; i = i - 1) begin
            dout = ch1[i];
            bit_counter = i; 
            @(posedge sclk);
            
            if (i == 0) begin
                drdy <= 1'b1;
                @(posedge sclk); drdy <= 1'b0;
                dout <= 0;
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
        if (ch1_sample !== prev_ch1_sample) begin
            prev_ch1_sample = ch1_sample;
            send_adc_data(ch1_sample);
        end
    end
end

initial begin
    reset = 1'b1;
    rst_l_adc = 1;
    cs = 1;
    drdy = 1'b0;
    dout = 1'b0;
    hard_wreg = 0;
    hard_start = 0;
    
    #100;
    reset = 1'b0;
    #100;
    reset = 1'b1;
    cs = 0;

    #400000;
    rst_l_adc = 0;

    #100;
    rst_l_adc = 1;

    #100000;
    hard_wreg = 1;

    #100;
    hard_wreg = 0;

    #50000;
    hard_start = 1;

    #100;
    hard_start = 0;
end

endmodule