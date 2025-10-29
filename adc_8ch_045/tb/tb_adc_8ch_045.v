`timescale 1ns/1ns

module tb_adc_8ch_045;
reg clk;
reg rst_l;
reg sync;
wire SCLK;
reg SDOFS;
reg SDO;
wire [2:0] channel;

localparam ADC_SAMPLE_RATE = 10000;
localparam SIGNAL_FREQ1 = 1000; // 5kHz
localparam SIGNAL_FREQ2 = 500; // 5kHz
localparam SIGNAL_FREQ3 = 1500; // 5kHz
localparam SIGNAL_FREQ4 = 2000;
localparam ADC_PERIOD = 1000000000/ADC_SAMPLE_RATE; 

adc_8ch_045 dut (
    .clk(clk),
    .rst_l(rst_l),

    // serial interface //
    .DOUT(SDO),
    .SCLK(SCLK),
    .CS_ADC(),
    .CD_MUX(),
    .DIN(),
    .CHANNEL(channel),
    
    .SYNC(sync)
); 

reg adc_clk;
reg bit_counter;

real time_counter = 0;
real dt = 1.0 / ADC_SAMPLE_RATE;
real sin_value1;
real cos_value1;
reg [11:0] ch1_sample;
reg [11:0] prev_ch1_sample = '0;
reg [11:0] sin_signal1;
reg [11:0] cos_signal1;

real sin_value2;
real cos_value2;
reg [11:0] sin_signal2;
reg [11:0] cos_signal2;

real sin_value3;
real cos_value3;
reg [11:0] sin_signal3;
reg [11:0] cos_signal3;

real sin_value4;
real cos_value4;
reg [11:0] sin_signal4;
reg [11:0] cos_signal4;

reg [2:0] channel_counter = 0;

initial begin
    adc_clk = 0;
    forever #(ADC_PERIOD/2) adc_clk = ~adc_clk;
end

always @(posedge adc_clk or negedge rst_l) begin 
    if (!rst_l) begin
        time_counter <= 0;
        sin_value1 <= 0;
        cos_value1 <= 0;
        sin_value2 <= 0;
        cos_value2 <= 0;
        sin_value3 <= 0;
        cos_value3 <= 0;
        sin_value4 <= 0;
        cos_value4 <= 0;
    end
    else begin
        begin
            time_counter <= time_counter + dt;
            sin_value1 <= $sin(2 * 3.141592653589793 * SIGNAL_FREQ1 * time_counter);
            cos_value1 <= $cos(2 * 3.141592653589793 * SIGNAL_FREQ1 * time_counter);
            sin_signal1 <= sin_value1 * (2**11 - 1);
            cos_signal1 <= cos_value1 * (2**11 - 1);           

            sin_value2 <= $sin(2 * 3.141592653589793 * SIGNAL_FREQ2 * time_counter);
            cos_value2 <= $cos(2 * 3.141592653589793 * SIGNAL_FREQ2 * time_counter);
            sin_signal2 <= sin_value2 * (2**11 - 1);
            cos_signal2 <= cos_value2 * (2**11 - 1);

            sin_value3 <= $sin(2 * 3.141592653589793 * SIGNAL_FREQ3 * time_counter);
            cos_value3 <= $cos(2 * 3.141592653589793 * SIGNAL_FREQ3 * time_counter);
            sin_signal3 <= sin_value3 * (2**11 - 1);
            cos_signal3 <= cos_value3 * (2**11 - 1);   

            sin_value4 <= $sin(2 * 3.141592653589793 * SIGNAL_FREQ4 * time_counter);
            cos_value4 <= $cos(2 * 3.141592653589793 * SIGNAL_FREQ4 * time_counter);
            sin_signal4 <= sin_value4 * (2**11 - 1);
            cos_signal4 <= cos_value4 * (2**11 - 1);   
        end
    end
end

always @(*) begin
    case (channel)
        0 : ch1_sample = sin_signal1;
        1 : ch1_sample = cos_signal1;
        2 : ch1_sample = sin_signal2;
        3 : ch1_sample = cos_signal2;
        4 : ch1_sample = sin_signal3;
        5 : ch1_sample = cos_signal3;
        6 : ch1_sample = sin_signal4;
        7 : ch1_sample = cos_signal4;
        default: ch1_sample = sin_signal1;
    endcase
end

initial begin
    clk = 0;
    forever #41.667 clk = ~clk;  // 12 MHz
end

task send_adc_data;
    input [15:0] ch1;
    integer i;
    begin
        for (i = 15; i >= 0; i = i - 1) begin
            if (i >= 13)
                SDO = 0;
            else
                SDO = ch1[i-1];

            if (i == 0)
                SDO = 1'hz;
            
            @(negedge SCLK);
        end
    end
endtask

initial begin
    forever begin
        @(posedge dut.data_mode);
        send_adc_data(ch1_sample);
    end
end

initial begin
    fork
        begin
            rst_l = 1;
            sync = 0;
            repeat(3)@(posedge clk);
            rst_l = 0;
            repeat(3)@(posedge clk);
            rst_l = 1;
            repeat(3)@(posedge clk);
            sync = 1;
            @(posedge clk);
            sync = 0;  

        end

        begin
            sync = 0;
            forever begin  
            #(333333/4); //  sync будет с частотой максимум 300 Гц, но тут для наглядности 3 или 6 КГц
            @(posedge clk);
            sync = 1;
            @(posedge clk);
            sync = 0;     
        end
        end
    join
end

endmodule