module adc045_wrap (

    input  wire        clk,
    input  wire        rst_l,

    // interface to adc (6 channels) //
    input  wire [5:0]  DRDY,           
    input  wire [5:0]  DOUT,    
    output reg  [5:0]  CS,       
    output reg  [5:0]  DIN,           
    output reg  [5:0]  SCLK,
    output reg  [5:0]  nRST,
    output reg  [5:0]  START,

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
wire delay_status;
wire sync_i;
wire sync_extended;
wire adc_enable;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        adc_counter <= 3'd0;
        all_channels_done    <= 1'b0;
    end
    else begin
        if (adc_counter == 3'd6) begin
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
    drdy = DRDY[adc_counter];
    dout = DOUT[adc_counter];
end

// Тактированный процесс для выходов - убирает комбинаторные пути
always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        CS   <= 6'b000000;
        DIN  <= 6'b000000;
        SCLK <= 6'b000000;
        nRST <= 6'b111111; 
        START <= 6'b000000;
    end
    else begin
        if (delay_status) begin
            CS <= {6{cs}};
            DIN <= {6{din}};
            SCLK <= {6{sclk}};
            nRST <= {6{nrst}};
            START <= {6{start}};    
        end
        else begin
            CS[adc_counter]   <= cs;
            DIN[adc_counter]  <= din;
            SCLK[adc_counter] <= sclk;
            nRST[adc_counter] <= nrst;
            START[adc_counter] <= start;
        end
    end
end


assign sync_i = (adc_counter == 3'b0) ? sync_extended : busy_delayed_pulse ;

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

assign adc_enable = delay_status ? adc_enable : work_frame;

sync2 i_sync2_busy   (clk, rst_l, busy_pulse, busy_delayed_pulse); 

pulse_extender pulse_ext_inst (clk, rst_l, sync, sync_extended);

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
    
    .enable(adc_enable),
    .sync(sync_i),
    .wreg_command(wreg_command),
    .channel_choice(channel_choice),
    .busy(ADC_BUSY),
    .data_o(DATA_OUT),
    .ch_num(),
    .rd_en(RD_EN),
    .dly(delay_status)
);

endmodule