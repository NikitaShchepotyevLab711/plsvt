module adc045_wrap (

    input  wire        clk,
    input  wire        rst_l,

    // interface to 1 adc//
    input  wire        DRDY_1,           
    input  wire        DOUT_1,    
    output reg         CS_1,       
    output reg         DIN_1,           
    output reg         SCLK_1,
    output reg         nRST_1,
    output reg         START_1,

    // interface to 2 adc//
    input  wire        DRDY_2,           
    input  wire        DOUT_2,    
    output reg         CS_2,       
    output reg         DIN_2,           
    output reg         SCLK_2,
    output reg         nRST_2,
    output reg         START_2,

    // interface to 1 adc//
    input  wire        DRDY_3,           
    input  wire        DOUT_3,    
    output reg         CS_3,       
    output reg         DIN_3,           
    output reg         SCLK_3,
    output reg         nRST_3,
    output reg         START_3,

    // interface to 1 adc//
    input  wire        DRDY_4,           
    input  wire        DOUT_4,    
    output reg         CS_4,       
    output reg         DIN_4,           
    output reg         SCLK_4,
    output reg         nRST_4,
    output reg         START_4,

    // interface to 1 adc//
    input  wire        DRDY_5,           
    input  wire        DOUT_5,    
    output reg         CS_5,       
    output reg         DIN_5,           
    output reg         SCLK_5,
    output reg         nRST_5,
    output reg         START_5,

    // interface to 1 adc//
    input  wire        DRDY_6,           
    input  wire        DOUT_6,    
    output reg         CS_6,       
    output reg         DIN_6,           
    output reg         SCLK_6,
    output reg         nRST_6,
    output reg         START_6,

    // others //
    input wire         sync, 
    output wire [23:0] DATA_OUT,
    output wire        RD_EN,
    output reg         all_channels_done
);

wire [1:0] channel_choice = 2'b00; // 1&2 ch
//wire channel_choice = 2'b01; // 1 ch
//wire channel_choice = 2'b10; // 2 ch
//wire channel_choice = 2'b11; // 1&2 ch

wire busy_delayed_pulse;
wire ADC_BUSY;
wire sync_i;
wire MODE;

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

wire [13:0] wreg_command;
assign wreg_command =  {POL, GAIN, REF, MODE, DR, Tech1, SCALE, BUF_DIS, Tech2};

reg  drdy;
reg  dout;
wire cs;
wire din;
wire sclk;
wire nrst;
wire start;
wire busy_pulse;
reg [2:0] adc_counter;

wire work_frame;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        adc_counter <= 3'd0;
        all_channels_done    <= 1'b0;
    end
    else begin
        if (adc_counter == 3'd5) begin
            adc_counter <= 3'd0;
            all_channels_done    <= 1'b1;
        end
        else begin
            all_channels_done    <= 1'b0;
            if (busy_pulse) 
                adc_counter <= adc_counter + 1'd1;
        end
    end
end

always @(*) begin
    case (adc_counter)
        3'd0: begin
            drdy    = DRDY_1;  
            dout    = DOUT_1;
            CS_1    = cs;    
            DIN_1   = din;         
            SCLK_1  = sclk;
            nRST_1  = nrst;
            START_1 = start;           
        end

        3'd1: begin
            drdy    = DRDY_2;  
            dout    = DOUT_2;
            CS_2    = cs;    
            DIN_2   = din;         
            SCLK_2  = sclk;
            nRST_2  = nrst;
            START_2 = start;           
        end

        3'd2: begin
            drdy    = DRDY_3;  
            dout    = DOUT_3;
            CS_3    = cs;    
            DIN_3   = din;         
            SCLK_3  = sclk;
            nRST_3  = nrst;
            START_3 = start;           
        end

        3'd3: begin
            drdy    = DRDY_4;  
            dout    = DOUT_4;
            CS_4    = cs;    
            DIN_4   = din;         
            SCLK_4  = sclk;
            nRST_4  = nrst;
            START_4 = start;           
        end

        3'd4: begin
            drdy    = DRDY_5;  
            dout    = DOUT_5;
            CS_5    = cs;    
            DIN_5   = din;         
            SCLK_5  = sclk;
            nRST_5  = nrst;
            START_5 = start;           
        end

        3'd5: begin
            drdy    = DRDY_6;  
            dout    = DOUT_6;
            CS_6    = cs;    
            DIN_6   = din;         
            SCLK_6  = sclk;
            nRST_6  = nrst;
            START_6 = start;           
        end
        default: begin
            drdy    = 1'b0;          
            dout    = 1'b0;

            CS_1    = 1'b0;    
            DIN_1   = 1'b0;         
            SCLK_1  = 1'b0;
            nRST_1  = 1'b1;
            START_1 = 1'b0;

            CS_2    = 1'b0;    
            DIN_2   = 1'b0;         
            SCLK_2  = 1'b0;
            nRST_2  = 1'b1;
            START_2 = 1'b0;

            CS_3    = 1'b0;    
            DIN_3   = 1'b0;         
            SCLK_3  = 1'b0;
            nRST_3  = 1'b1;
            START_3 = 1'b0;

            CS_4    = 1'b0;    
            DIN_4   = 1'b0;         
            SCLK_4  = 1'b0;
            nRST_4  = 1'b1;
            START_4 = 1'b0;

            CS_5    = 1'b0;    
            DIN_5   = 1'b0;         
            SCLK_5  = 1'b0;
            nRST_5  = 1'b1;
            START_5 = 1'b0; 

            CS_6    = 1'b0;    
            DIN_6   = 1'b0;         
            SCLK_6  = 1'b0;
            nRST_6  = 1'b1;
            START_6 = 1'b0; 
        end
    endcase
end

assign sync_i = (adc_counter == 3'b0) ? sync : busy_delayed_pulse ;

sync2_toggle_to_pulse toggle_to_pulse_inst (
    .clk(clk),
    .rst(rst_l),
    .toggle(ADC_BUSY),
    .pulse(busy_pulse)
);

pulse_to_toggle pulse_to_toggle_inst (
    .clk(clk),
    .rst(rst_l),
    .pulse(sync),
    .reset_toggle(all_channels_done),
    .toggle(work_frame)
);

sync2 i_sync2_busy   (clk, rst_l, busy_pulse, busy_delayed_pulse); 

adc045 adc_inst(
    .clk(clk),
    .rst_l(rst_l),

    // interface to adc//
    .DRDY(drdy),           
    .DOUT(dout),    
    .CS(cs),       
    .DIN(din),           
    .SCLK(sclk),
    .nRST(nrst),
    .START(start),
    
    .enable(work_frame),
    .sync(sync_i),
    .wreg_command(wreg_command),
    .channel_choice(channel_choice),
    .busy(ADC_BUSY),
    .data_o(DATA_OUT),
    .ch_num(),
    .rd_en(RD_EN)
);

endmodule