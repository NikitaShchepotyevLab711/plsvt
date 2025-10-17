`timescale 1ns/1ns

module tb_adc733;
reg clk;
reg rst_l;
reg sync;
reg SCLK;
reg SDOFS;
reg SDO;

localparam ADC_SAMPLE_RATE = 100000;
localparam SIGNAL_FREQ1 = 1000; // 5kHz
localparam SIGNAL_FREQ2 = 500; // 5kHz
localparam SIGNAL_FREQ3 = 1500; // 5kHz
localparam ADC_PERIOD = 1000000000/ADC_SAMPLE_RATE;  // Период DRDY 256 kHz (3906.25 нс)

adc733_wrap dut (
    .clk(clk),
    .rst_l(rst_l),

    // serial port //
    .SCLK(SCLK),
    .SDOFS(SDOFS),
    .SDO(SDO),
    .SDIFS(SDIFS),
    .SDI(SDI),
    .SE(SE),
    .sync(sync)
); 

reg adc_clk;
reg bit_counter;

real time_counter = 0;
real dt = 1.0 / ADC_SAMPLE_RATE;
real sin_value1;
real cos_value1;
reg [15:0] ch1_sample;
reg [15:0] prev_ch1_sample = '0;
reg [15:0] sin_signal1;
reg [15:0] cos_signal1;

real sin_value2;
real cos_value2;
reg [15:0] sin_signal2;
reg [15:0] cos_signal2;

real sin_value3;
real cos_value3;
reg [15:0] sin_signal3;
reg [15:0] cos_signal3;

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
    end
    else begin
        begin
            time_counter <= time_counter + dt;
            sin_value1 <= $sin(2 * 3.141592653589793 * SIGNAL_FREQ1 * time_counter);
            cos_value1 <= $cos(2 * 3.141592653589793 * SIGNAL_FREQ1 * time_counter);
            sin_signal1 <= sin_value1 * (2**15 - 1);
            cos_signal1 <= cos_value1 * (2**15 - 1);           

            sin_value2 <= $sin(2 * 3.141592653589793 * SIGNAL_FREQ2 * time_counter);
            cos_value2 <= $cos(2 * 3.141592653589793 * SIGNAL_FREQ2 * time_counter);
            sin_signal2 <= sin_value2 * (2**15 - 1);
            cos_signal2 <= cos_value2 * (2**15 - 1);

            sin_value3 <= $sin(2 * 3.141592653589793 * SIGNAL_FREQ3 * time_counter);
            cos_value3 <= $cos(2 * 3.141592653589793 * SIGNAL_FREQ3 * time_counter);
            sin_signal3 <= sin_value3 * (2**15 - 1);
            cos_signal3 <= cos_value3 * (2**15 - 1);   
        end
    end
end

always @(*) begin
    case (channel_counter)
        0 : ch1_sample = sin_signal1;
        1 : ch1_sample = cos_signal1;
        2 : ch1_sample = sin_signal2;
        3 : ch1_sample = cos_signal2;
        4 : ch1_sample = sin_signal3;
        5 : ch1_sample = cos_signal3;
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
        for (i = 16; i >= 0; i = i - 1) begin
            SDO = ch1[i];
            bit_counter = i; 
            @(posedge SCLK);
            
            if (i == 16) begin
                SDOFS <= 1'b1;
                if (channel_counter == 5)
                    channel_counter = 0;
                else 
                    channel_counter = channel_counter + 1'b1;
                SDO = ch1[i];
                @(posedge SCLK); SDOFS <= 1'b0;
            end
        end
    end
endtask

initial begin
    SDO = 1'b0;
    SDOFS = 1'b0;
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

always begin
    if (SE) begin
        SCLK = 0;
        forever #61.035 SCLK = ~SCLK;  // 8.192 MHz
    end else begin
        SCLK = 0;
        wait(SE); 
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
            #150000;
            @(posedge clk);
            sync = 1;
            @(posedge clk);
            sync = 0;     
        end
        end
    join
end

endmodule