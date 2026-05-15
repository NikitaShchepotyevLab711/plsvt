module adc045 (

    input  wire        clk,
    input  wire        rst_l,

    // interface to adc//
    input  wire        DRDY,           
    input  wire        DOUT,    
    output wire        CS,       
    output reg         DIN,           
    output wire        SCLK,
    output reg         nRST,
    output reg         START,
    
    input  wire        enable,
    input  wire        sync,           // сигнал, инициирующий одну операцию захвата данных АЦП
    input  wire [13:0] wreg_command,   // конфигурация АЦП (кроме битов отвечающих за номер канала)
    input  wire [1:0]  channel_choice, // номер канала. 0 и 3 - оба, 1 - первый, 2 - второй
    output wire        busy,           // сигнал активности модуля
    output reg  [23:0] data_o,         // данные
    output wire        ch_num,         // сигнал об активном канале
    output wire        rd_en,          // сигнал готовности
    output wire        dly             // сигнал о том, что на данный активна задержка согласно документации
);

localparam IDLE          = 4'd0;
localparam LOAD_WREG1    = 4'd1;
localparam WREG          = 4'd2;
localparam LOAD_DATA     = 4'd3;
localparam CH_START      = 4'd4;
localparam DELAY         = 4'd5;
localparam CH_TX         = 4'd6;
localparam CH1_RESULT    = 4'd7;
localparam WAIT_FOR_SYNC = 4'd8;
localparam WAIT_FOR_DRDY = 4'd9;
localparam LOAD_WREG2    = 4'd10;
localparam CH2_RESULT    = 4'd11;

reg [23:0] shift_reg;
reg [23:0] ch1_acc;
reg [3:0] rst_cnt;

reg  [1:0]  A_MUX;
wire [15:0] full_wreg;
wire [5:0]  cnt;
reg  [3:0]  state;
reg [23:0] captured_data;
reg  set_delay;
wire delay_done;
reg delay_done_reg;
reg channel;
reg busy_reg;

reg hard_wreg;
wire start_command = (state == LOAD_DATA);
wire start_capture = (state == CH_TX);
wire strb;
reg load;
wire delay_start_done;
reg set_delay_start;
reg delay_start_done_reg;
reg cnt_en;
reg cnt_rst;
reg ready;
wire rd_load_data_o;

assign CS = 1'b0;
assign full_wreg = {A_MUX, wreg_command};

wire wreg_done  = state == WREG ? (cnt == 6'd23) : 1'b0;
wire dat_rcv_done = state == CH_TX ? (cnt == 6'd23) : 1'b0;
wire delay_active   = (cnt == 6'd5);

always @(posedge clk or negedge rst_l) begin
    if (!rst_l)
        data_o <= 24'b0;
    else if (rd_load_data_o)
        data_o <= captured_data;   
end

front_detector adc_733_front_detector_rden   (clk, rst_l, ready, rd_load_data_o); // 3 триггера и детектор перепада уровня
sync2 i_sync2_channel (clk, rst_l, channel, ch_num); // 2 триггера
sync2 i_sync2_ready   (clk, rst_l, rd_load_data_o, rd_en); // 2 триггера
sync2 i_sync2_busy    (clk, rst_l, busy_reg, busy); // 2 триггера

always @(posedge SCLK or negedge rst_l) begin
    if (!rst_l) begin
        hard_wreg <= 1'b0;
        A_MUX <= 2'b0;
        state <= IDLE;
        load <= 1'b1;  
        busy_reg <= 1'b0;
        channel <= 1'b0;
        set_delay <= 1'b0;
        delay_done_reg <= 1'b0;
        set_delay_start <= 1'b0;
        ready <= 1'b0;
    end
    else begin
        case (state)
            IDLE: begin // по синхронизирующему сигналу sync начинается работа
                    hard_wreg <= 1'b0;
                    A_MUX <= 2'b0;
                    load <= 1'b0;
                    channel <= 1'b0;
                    busy_reg <= 1'b0;
                    set_delay_start <= 1'b0;
                    START <= 1'b0;
                    ready <= 1'b0;
                    if (dly)
                        state <= LOAD_WREG1;
                    else begin
                        if (sync) begin
                            if (channel_choice == 2'b10)
                                state <= LOAD_WREG2;
                            else
                                state <= LOAD_WREG1;
                        end
                    end
            end

            LOAD_WREG1: begin // загрузка конфигурационных данных АЦП (чтение из 1ого канала) в сдвиговый регистр
                ready <= 1'b0;
                state <= WREG;
                A_MUX <= 2'b0;
                load <= 1'b1;
                hard_wreg <= 1'b1;
                channel <= 1'b0;
                busy_reg <= 1'b1;
                set_delay_start <= 1'b0;
                START <= 1'b0;
            end

            WREG: begin
                if (wreg_done) begin
                    state <= LOAD_DATA;
                    cnt_rst <= 1'b1;
                    cnt_en <= 1'b0;
                end
                else begin
                    state <= WREG;
                    cnt_en <= 1'b1;
                    cnt_rst <= 1'b0;                    
                end  
                ready <= 1'b0;
                hard_wreg <= 1'b1;
                load <= 1'b0;
                busy_reg <= 1'b1; 
                set_delay_start <= 1'b0;
                START <= 1'b0;                
            end

            LOAD_DATA: begin // загрузка команды START в сдвиговый регистр
                ready <= 1'b0;
                state <= CH_START;
                hard_wreg <= 1'b0;
                load <= 1'b1;
                busy_reg <= 1'b1;
                set_delay_start <= 1'b0;
                START <= 1'b0;
            end

            CH_START: begin // отправка команды START по DIN (два способа, при отладке решу, какой лучше)
/*                if (cnt == 6'd23) begin
                    if (delay_done_reg) begin
                        if (DRDY) begin
                            state <= CH1_TX;
                            cnt <= 6'd0;
                        end
                    end
                    else begin
                        state <= DELAY;
                        cnt <= 1'b0;
                    end 
                end
                else begin
                    START <= 1'b1;      
                    state <= CH1_START;
                    cnt <= cnt + 1'b1;
                    hard_wreg <= 1'b0;
                    start_command <= 1'b1;
                    start_capture <= 1'b0;   
                    load <= 1'b0; 
                    channel <= 1'b0;
                    busy_reg <= 1'b1;
                    word_received <= 1'b0;
                    A_MUX <= 2'b0;
                end       
                */
                ready <= 1'b0;
                if (delay_start_done) begin
                    if (delay_done_reg) begin
                            if (DRDY)
                                state <= CH_TX;
                        end
                    else begin
                        state <= DELAY;
                    end 
                    START <= 1'b0;
                end
                else begin
                    START <= 1'b1;
                    hard_wreg <= 1'b0; 
                    load <= 1'b0; 
                    busy_reg <= 1'b1;
                end

                set_delay_start <= 1'b1;
            end

            DELAY: begin
                ready <= 1'b0;
                START <= 1'b0;
                set_delay <= 1'b1;
                set_delay_start <= 1'b0;
                delay_start_done_reg <= 1'b0;
                cnt_rst = 1'b1;
                    if (delay_done) begin        // согласно с.20 документации, ждем 1 мкс после отправки команды старт
                        delay_done_reg <= 1'b1;
                        state <= WAIT_FOR_DRDY;    
                    end          
            end

            CH_TX: begin // получение значения из первого канала
                set_delay <= 1'b0;
                ready <= 1'b0;
                if (dat_rcv_done) begin
                    state <= channel ? CH2_RESULT : CH1_RESULT;
                    cnt_rst <= 1'b1;
                    cnt_en <= 1'b0;
                end
                else begin
                    cnt_en = 1'b1;
                    cnt_rst = 1'b0;
                    hard_wreg <= 1'b0;
                    load <= 1'b0; 
                    busy_reg <= 1'b1;
                    START <= 1'b0;
                    set_delay_start <= 1'b0;
                end
            end

            CH1_RESULT: begin // сохранения целого слова
                case (channel_choice)
                    2'd0, 2'd2, 2'd3: state <= LOAD_WREG2;
                    2'd1: state <= IDLE;
                    default: state <= CH1_RESULT;
                endcase
                ready <= 1'b1;
                set_delay_start <= 1'b0;
                cnt_rst = 1'b1;
            end

            WAIT_FOR_SYNC: begin // ожидание следующего импульса Sync из верхнего модуля
                if (sync) 
                    state <= WAIT_FOR_DRDY;
                else
                    state <= WAIT_FOR_SYNC;
            end

            WAIT_FOR_DRDY: begin  // ожидание сигнала DRDY от АЦП
                if (DRDY) begin
                    state <= CH_TX;
                end
                else
                    state <= WAIT_FOR_DRDY;

                hard_wreg <= 1'b0;
                load <= 1'b0; 
                busy_reg <= 1'b1;
                set_delay_start <= 1'b0;
                ready <= 1'b0;
                set_delay <= 1'b0;
            end

            LOAD_WREG2: begin // загрузка конфигурационных данных АЦП (чтение из 2ого канала) в сдвиговый регистр
                state <= WREG;
                hard_wreg <= 1'b1;
                A_MUX <= 2'b1;
                load <= 1'b1;
                channel <= 1'b1;
                busy_reg <= 1'b1;
                set_delay_start <= 1'b0;
                ready <= 1'b0;
            end

            CH2_RESULT: begin
                case (channel_choice)
                    2'd0, 2'd1, 2'd3: state <= IDLE;
                    2'd2: state <= WAIT_FOR_SYNC;
                    default: state <= CH2_RESULT;
                endcase
                set_delay_start <= 1'b0;
                ready <= 1'b1;
                START <= 1'b0;
            end

            default: begin
                hard_wreg <= 1'b0;
                A_MUX <= 2'b0;
                state <= IDLE;   
                load <= 1'b0;
                channel <= 1'b0;
                busy_reg <= 1'b0;
                set_delay_start <= 1'b0;
                ready <= 1'b0;
            end
        endcase
    end
end

always @(posedge clk or negedge rst_l) begin // автоматический сброс при включении ПЛИС
    if (!rst_l) begin
        nRST <= 1'b1;
        rst_cnt <= 4'h0;
    end
    else begin
        case (rst_cnt)
            0, 1, 2, 3: begin 
                    rst_cnt <= rst_cnt + 1'h1;
                    nRST <= 1;
            end
            4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14: begin 
                    rst_cnt <= rst_cnt + 1'h1;
                    nRST <= 0;
            end
            15: begin 
                    rst_cnt <= rst_cnt;
                    nRST <= 1;
            end
            default: begin 
                rst_cnt <= 4'h0;
                nRST <= 0;
            end
        endcase

    end
end

always @(posedge SCLK or negedge rst_l) begin // работа сдвигового регистра последовательного интерфейса
    if (!rst_l) begin
        shift_reg <= 0;
        captured_data <= 0;
    end else begin

        if (hard_wreg) begin
            if (load) 
                shift_reg <= {8'b00010100, wreg_command};
            else begin
                shift_reg <= {shift_reg[22:0], 1'b0};
                DIN <= shift_reg[23]; 
            end
        end
        else if (start_command) begin
            if (load)
                shift_reg <= {8'b00001000, 16'b0};
            else begin
                shift_reg <= {shift_reg[22:0], 1'b0};
                DIN <= shift_reg[23];
            end
        end
        else if (start_capture) begin
            DIN <= 0;
            if (dat_rcv_done) begin
                shift_reg <= 24'b0;
                captured_data <= shift_reg;
            end
            else
                shift_reg <= {shift_reg[22:0], DOUT};   
        end
        else
            shift_reg <= 24'b0;
    end
end

counter cnt_inst (
    .clk(SCLK),
    .rst_l(rst_l),
    .cnt_en(cnt_en),
    .cnt_rst(cnt_rst),
    .strb(strb),
    .cnt(cnt)
);

assign dly = !delay_done;

// формирование частоты (<5MHz) со скважностью 50% и строба длительностью в такт clk
clk_divider3 #(.DIV(3)) clkdiv_adc045_inst (clk, rst_l, enable, strb, SCLK);

// данные модули обеспечивают необходимую по документации паузу 
// после включения АЦП (первый) и для команды старт (второй) //
delay #(
    .FREQ_MHZ(12),
    .DELAY_MS(2)
) delay_inst (
    .clk(clk),
    .rst_l(rst_l),
    .delay_done(delay_done),
    .enable(set_delay)
);

delay_start #(
    .FREQ_MHZ(12),
    .DELAY_US(1)
) dl_start (
    .clk(clk),
    .rst_l(rst_l),
    .delay_done(delay_start_done),
    .enable(set_delay_start)
);

endmodule