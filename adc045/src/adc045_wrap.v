module adc045_wrap (

    input  wire        clk,
    input  wire        rst_l,

    // interface to adc//
    input  wire        DRDY,           
    input  wire        DOUT,    
    output wire        CS,       
    output wire        DIN,           
    output wire        SCLK,
    output wire        nRST,
    output wire        START,
    
    // signals from above //
    input  wire        sync,

    // signals up //
    output reg         ready_ch1, 
    output reg         ready_ch2,
    output reg  [23:0] adc045_data_ch1,   
    output reg  [23:0] adc045_data_ch2
);

localparam IDLE       = 4'd0;
localparam LOAD_WREG1 = 4'd1;
localparam WREG1      = 4'd2;
localparam LOAD_DATA1 = 4'd3;
localparam CH1_START  = 4'd4;
localparam CH1_TX     = 4'd5;
localparam CH1_RESULT = 4'd6;
localparam LOAD_WREG2 = 4'd7;
localparam WREG2      = 4'd8;
localparam LOAD_DATA2 = 4'd9;
localparam CH2_START  = 4'd10;
localparam CH2_TX     = 4'd11;
localparam CH2_RESULT = 4'd12;

reg [1:0] A_MUX;
reg [5:0] mode_switch_counter;
reg [3:0] state;

wire [23:0] captured_data;

reg hard_wreg;
reg start_capture, start_command;
wire strb;
reg load;

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

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        mode_switch_counter <= 6'h0;
        hard_wreg <= 1'b0;
        A_MUX <= 2'b0;
        state <= IDLE;
        start_command <= 1'b0;
        start_capture <= 1'b0;  
        load <= 1'b1;  
        adc045_data_ch1 <= 24'h0;
        adc045_data_ch2 <= 24'h0;
        ready_ch1 <= 1'b0;
        ready_ch2 <= 1'b0;
    end
    else begin
        if (strb) begin
        case (state)
            IDLE: begin // по синхросигналу sync начинается работа
                    mode_switch_counter <= 6'h0;
                    hard_wreg <= 1'b0;
                    A_MUX <= 2'b0;
                    load <= 1'b0;
                    start_command <= 1'b0;
                    start_capture <= 1'b0; 
                    ready_ch1 <= 1'b0;
                    ready_ch2 <= 1'b0; 
            if (sync) begin
                    state <= LOAD_WREG1;
                end
            end

            LOAD_WREG1: begin // загрузка конфигурационных данных АЦП (чтение из 1ого канала) в сдвиговый регистр
                mode_switch_counter <= 6'd0;
                state <= WREG1;
                A_MUX <= 2'b0;
                load <= 1'b1;
                hard_wreg <= 1'b1;
                start_command <= 1'b0;
                start_capture <= 1'b0;  
                ready_ch1 <= 1'b0;
                ready_ch2 <= 1'b0;   
            end

            WREG1: begin // отправка по DIN конфигурационных данных 
                if (mode_switch_counter == 6'd23) begin
                    state <= LOAD_DATA1;
                    mode_switch_counter <= 6'd0;
                end
                else  begin
                    state <= WREG1;
                    mode_switch_counter <= mode_switch_counter + 1'b1;                    
                end  

                hard_wreg <= 1'b1;
                start_command <= 1'b0;
                start_capture <= 1'b0;    
                A_MUX <= 2'b0;
                load <= 1'b0;
                ready_ch1 <= 1'b0;
                ready_ch2 <= 1'b0;  
            end

            LOAD_DATA1: begin // загрузка команды START в сдвиговый регистр
                mode_switch_counter <= 6'd0;
                state <= CH1_START;
                hard_wreg <= 1'b0;
                start_command <= 1'b1;
                start_capture <= 1'b0;    
                load <= 1'b1;
                ready_ch1 <= 1'b0;
                ready_ch2 <= 1'b0;  
            end

            CH1_START: begin // отправка команды START по DIN
                if (mode_switch_counter == 6'd23) begin
                    if (DRDY) begin
                        state <= CH1_TX;
                        mode_switch_counter <= 6'd0;
                    end
                end
                else begin
                    state <= CH1_START;
                    mode_switch_counter <= mode_switch_counter + 1'b1;
                    hard_wreg <= 1'b0;
                    start_command <= 1'b1;
                    start_capture <= 1'b0;   
                    load <= 1'b0; 
                    ready_ch1 <= 1'b0;
                    ready_ch2 <= 1'b0;  
                end
            end

            CH1_TX: begin // получение значения из первого канала
                if (DRDY) begin
                    state <= CH1_RESULT;
                    mode_switch_counter <= 6'd0;
                end
                else begin
                    state <= CH1_TX;
                    mode_switch_counter <= mode_switch_counter + 1'b1;
                    hard_wreg <= 1'b0;
                    start_command <= 1'b0;
                    start_capture <= 1'b1;    
                    load <= 1'b0; 
                    ready_ch1 <= 1'b0;
                    ready_ch2 <= 1'b0;  
                end
            end

            CH1_RESULT: begin // сохранение полученного значения первого канала
                adc045_data_ch1 <= captured_data;
                state <= LOAD_WREG2;
                hard_wreg <= 1'b0;
                start_command <= 1'b0;
                start_capture <= 1'b0;   
                ready_ch1 <= 1'b1;
                ready_ch2 <= 1'b0;
            end

            LOAD_WREG2: begin // загрузка конфигурационных данных АЦП (чтение из 2ого канала) в сдвиговый регистр
                mode_switch_counter <= 6'd0;
                state <= WREG2;
                hard_wreg <= 1'b1;
                start_command <= 1'b0;
                start_capture <= 1'b0;   
                A_MUX <= 2'b0;
                load <= 1'b1;
                ready_ch1 <= 1'b0;
                ready_ch2 <= 1'b0;
            end
            
            WREG2: begin // отправка по DIN конфигурационных данных 
                if (mode_switch_counter == 6'd23) begin
                    state <= LOAD_DATA2;
                    mode_switch_counter <= 6'd0;
                end
                else  begin
                    state <= WREG2;
                    mode_switch_counter <= mode_switch_counter + 1'b1;                    
                end  

                hard_wreg <= 1'b1;
                start_command <= 1'b0;
                start_capture <= 1'b0;                
                A_MUX <= 2'b1;
                load <= 1'b0;
                ready_ch1 <= 1'b0;
                ready_ch2 <= 1'b0;
            end

            LOAD_DATA2: begin // загрузка команды START в сдвиговый регистр
                mode_switch_counter <= 6'd0;
                state <= CH2_START;
                hard_wreg <= 1'b0;
                start_command <= 1'b1;
                start_capture <= 1'b0;   
                load <= 1'b1;
                ready_ch1 <= 1'b0;
                ready_ch2 <= 1'b0;
            end

            CH2_START: begin  // отправка команды START по DIN
                if (mode_switch_counter == 6'd23) begin
                    if (DRDY) begin
                        state <= CH2_TX;
                        mode_switch_counter <= 6'd0;
                    end
                end
                else begin
                    state <= CH2_START;
                    mode_switch_counter <= mode_switch_counter + 1'b1;
                    hard_wreg <= 1'b0;
                    start_command <= 1'b1;
                    start_capture <= 1'b0;  
                    load <= 1'b0;   
                end
                ready_ch1 <= 1'b0;
                ready_ch2 <= 1'b0;
            end

            CH2_TX: begin // получение значения из второго канала
                if (DRDY) begin
                    state <= CH2_RESULT;
                    mode_switch_counter <= 6'd0;
                end
                else begin
                    state <= CH2_TX;
                    mode_switch_counter <= mode_switch_counter + 1'b1;
                    hard_wreg <= 1'b0;
                    start_command <= 1'b0;
                    start_capture <= 1'b1;    
                    load <= 1'b0; 
                end
                ready_ch1 <= 1'b0;
                ready_ch2 <= 1'b0;
            end

            CH2_RESULT: begin // сохранение значения на втором канале
                adc045_data_ch2 <= captured_data;
                state <= IDLE;
                hard_wreg <= 1'b0;
                start_command <= 1'b0;
                start_capture <= 1'b0;
                ready_ch1 <= 1'b0;
                ready_ch2 <= 1'b1;   
            end

            default: begin
                start_command <= 1'b0;
                start_capture <= 1'b0;
                hard_wreg <= 1'b0;
                A_MUX <= 2'b0;
                state <= IDLE;   
                load <= 1'b0;
                ready_ch1 <= 1'b0;
                ready_ch2 <= 1'b0; 
                adc045_data_ch2 <= 24'b0;
            end
        endcase
        end
    end
end

// формирование частоты (<5MHz) со скважностью 50% и строба длительностью в такт clk
clk_divider3 clkdiv_inst ( 
    .clk_i(clk),
    .clk_o(SCLK),
    .rst_l(rst_l),
    .strb(strb),
    .enable(1)    
);

adc_reader adc_rd (
    .clk(clk),
    .rst_l(rst_l),
    // spi //
    .drdy(DRDY),           
    .dout(DOUT),           
    .din(DIN),    
    .cs(CS),       
    .sclk(SCLK),
    .nrst(nRST),

    .load(load),
    .data_o(captured_data),
    .start_capture(start_capture),
    .start_command(start_command),
    .hard_wreg(hard_wreg),
    .wreg_command(wreg_command)
);
    
endmodule