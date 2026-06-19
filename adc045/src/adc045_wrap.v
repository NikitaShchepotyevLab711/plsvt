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

wire [13:0] wreg_command; // прошивка для АЦП
assign wreg_command =  {POL, GAIN, REF, MODE, DR, Tech1, SCALE, BUF_DIS, Tech2};

// сигналы к модулю захвата данных //
reg  drdy;
reg  dout;
wire cs;
wire din;
wire sclk;
wire nrst;
wire start;


reg [2:0] adc_counter; // счетчик для смены каждого из ацп

wire work_frame; // сигнал активен, пока идет захват данных с шести ацп (от начала приема с первого до конца приема с шестого)

wire sync_i;        // синхроимпульс, подаваемый на модуль захвата данных
wire sync_extended; // синхроимпульс удвоенной длительности, чтобы тактируемый частотой 4 мгц модуль захвата данных реагировал
wire adc_enable; // сигнал, включающий модуль приема даннных с АЦП. 

wire delay_status; // сигнал, сигнализирующий об активности стартовой задержки
wire end_delay_pulse; // строб, сигнализирующий об окончании стартовой задержки
wire end_delay_toggle; // единица соответствует активному режиму работы (не задержка)

wire ADC_BUSY;   // положение "1" сигнализирует о том, что идет прием данных с одного из ацп
wire busy_pulse; // строб, сигнализирующий об окончании цикла работы с отдельным ацп
wire busy_delayed_pulse; // задержанный на такт (чтобы прихоидлся на след. значение счетчика) строб окончания цикла работы с отдельным ацп

always @(posedge clk or negedge rst_l) begin // счетчик АЦП. Выставляет сигнал all_channels_done по окончании счета
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

always @(*) begin
    if (!end_delay_toggle) begin // пока не прошла задержка (она запускается на всех АЦП разом), идет работа со всеми АЦП одновременно
        CS <= {6{cs}};
        DIN <= {6{din}};
        SCLK <= {6{sclk}};
        nRST <= {6{nrst}};
        START <= {6{start}};    
    end
    else begin // после задержки АЦП обрабатываются по очереди, в соответствии с счетчиком
        CS[adc_counter]   <= cs;
        DIN[adc_counter]  <= din;
        SCLK[adc_counter] <= sclk;
        nRST[adc_counter] <= nrst;
        START[adc_counter] <= start;
    end
end

assign sync_i = (adc_counter == 3'b0) ? sync_extended : busy_delayed_pulse ; // для первого ацп идет синхросигнал сверху, следующие запускаются сигналом busy_delayed_pulse от предыдущего ацп
/*
always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        sync_i <= 1'b0;
    end
    else
        sync_i <= (adc_counter == 3'b0) ? sync_extended : busy_delayed_pulse ;
end
*/
sync2_toggle_to_pulse busy_toggle_to_pulse_inst (
    .clk(clk),
    .rst(rst_l),
    .toggle(ADC_BUSY),
    .pulse(busy_pulse)
);

sync2_toggle_to_pulse delay_toggle_to_pulse_inst (
    .clk(clk),
    .rst(rst_l),
    .toggle(delay_status),
    .pulse(end_delay_pulse)
);

pulse_to_toggle delay_pulse_to_toggle_inst (
    .clk(clk),
    .rst(rst_l),
    .pulse(end_delay_pulse),
    .reset_toggle(1'b0),
    .toggle(end_delay_toggle)
);

pulse_to_toggle pulse_to_toggle_inst (
    .clk(clk),
    .rst(rst_l),
    .pulse(sync),
    .reset_toggle(all_channels_done),
    .toggle(work_frame)
);

assign adc_enable = delay_status ? delay_status : work_frame;

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