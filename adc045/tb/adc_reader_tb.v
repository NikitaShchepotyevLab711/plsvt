`timescale 1ns / 1ns

module adc_reader_tb();

localparam CLK_PERIOD = 84; 
localparam ADC_SAMPLE_RATE = 100000;
localparam SIGNAL_FREQ = 300; // 5kHz
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

// signals from above //
reg         hard_start;
reg         hard_wreg;
reg         rst_l_adc;
reg         sync;

// signals up //
wire        ready_sample;
wire [23:0] adc045_data;

real time_counter = 0;
real dt = 1.0 / ADC_SAMPLE_RATE;
real sin_value;
real cos_value;
wire [23:0] ch1_sample;
reg [23:0] prev_ch1_sample = '0;
reg [23:0] sin_signal;
reg [23:0] cos_signal;

reg adc_clk;
integer bit_counter;

adc045_wrap uut (
    .clk(clk),
    .rst_l(reset),

    // interface to adc//
    .DRDY_1(drdy),           
    .DOUT_1(dout),    
    .CS_1(),       
    .DIN_1(din),           
    .SCLK_1(sclk),
    .nRST_1(nRST),
    .START_1(),

    .DRDY_2(drdy),           
    .DOUT_2(dout),    
    .CS_2(),       
    .DIN_2(din),           
    .SCLK_2(sclk),
    .nRST_2(nRST),
    .START_2(),

    .DRDY_3(drdy),           
    .DOUT_3(dout),    
    .CS_3(),       
    .DIN_3(din),           
    .SCLK_3(sclk),
    .nRST_3(nRST),
    .START_3(),

    .DRDY_4(drdy),           
    .DOUT_4(dout),    
    .CS_4(),       
    .DIN_4(din),           
    .SCLK_4(sclk),
    .nRST_4(nRST),
    .START_4(),

    .DRDY_5(drdy),           
    .DOUT_5(dout),    
    .CS_5(),       
    .DIN_5(din),           
    .SCLK_5(sclk),
    .nRST_5(nRST),
    .START_5(),

    .DRDY_6(drdy),           
    .DOUT_6(dout),    
    .CS_6(),       
    .DIN_6(din),           
    .SCLK_6(sclk),
    .nRST_6(nRST),
    .START_6(),
    
    .sync(sync), 
    .DATA_OUT(),
    .RD_EN()
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
        time_counter <= 0;
        sin_value <= 0;
        cos_value <= 0;
    end
    else begin
        begin
            time_counter <= time_counter + dt;
            sin_value <= $sin(2 * 3.141592653589793 * SIGNAL_FREQ * time_counter);
            cos_value <= $cos(2 * 3.141592653589793 * SIGNAL_FREQ * time_counter);
            sin_signal <= sin_value * (2**23 - 1);
            cos_signal <= cos_value * (2**23 - 1);           
        end
    end
end

assign ch1_sample = (uut.adc_inst.A_MUX == 0) ? sin_signal : cos_signal;


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
                dout = 1'b0;
                @(posedge sclk); drdy <= 1'b0;
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
            rst_l_adc = 1;
            cs = 1;
            drdy = 1'b0;
            dout = 1'b0;
            hard_wreg = 0;
            hard_start = 0;
            
            #100;
            reset = 1'b0;
            #150;
            reset = 1'b1;
            cs = 0;
            #1000;
            sync = 1;
            @(posedge clk);
            @(posedge clk);
            @(posedge clk);
            sync = 0;
        end

        begin
        sync = 0;
        forever begin  
            #1000000;
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