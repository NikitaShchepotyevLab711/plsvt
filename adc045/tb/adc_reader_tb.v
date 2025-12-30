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
reg  drdy;           
reg  dout;    
reg  [5:0] cs;       
wire [5:0] din;           
reg  [5:0] sclk;
wire [5:0] nRST;

wire [5:0] SCLK;

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

reg [5:0] DOUT;
reg [5:0] DRDY;

adc045_wrap uut (
    .clk(clk),
    .rst_l(reset),

    // interface to adc//
    .DRDY({6{drdy}}),           
    .DOUT(DOUT),    
    .CS(),       
    .DIN(),           
    .SCLK(SCLK),
    .nRST(nRST),
    .START(),
    
    .sync(sync), 
    .DATA_OUT(),
    .RD_EN()
);

//assign DRDY = {6{drdy}};

always @(*) begin
    case (uut.adc_counter)
        3'd0: begin
            DOUT[0] = dout;
            sclk = SCLK[0];
        end

        3'd1: begin
            DOUT[1] = dout;
            sclk = SCLK[1];       
        end

        3'd2: begin
            DOUT[2] = dout;
            sclk = SCLK[2];     
        end

        3'd3: begin
            DOUT[3] = dout;
            sclk = SCLK[3];   
        end

        3'd4: begin
            DOUT[4] = dout;
            sclk = SCLK[4];       
        end

        3'd5: begin
            DOUT[5] = dout;
            sclk = SCLK[5];          
        end
        default: begin
             
        end
    endcase
end

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
            sync = 0;
        end

        begin
        sync = 0;
        forever begin  
            #1000000;
            @(posedge clk);
            sync = 1;
            @(posedge clk);
            sync = 0;     
        end            
        end
    join
end

endmodule