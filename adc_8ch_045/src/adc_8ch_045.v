module adc_8ch_045 (
    input wire clk,
    input wire rst_l,

    // serial interface //
    input  wire       DOUT,
    output wire       SCLK,
    output reg        CS_ADC,
    output reg        CD_MUX,
    output reg        DIN,
    
    input  wire       SYNC,
    output reg        RD_EN,
    output reg  [2:0] CHANNEL,
    output reg        BUSY,
    output reg [11:0] DATA_O

);

// несинхронизированные входные и выходные сигналы //
wire       sync;
reg        rd_en;
reg        busy;
reg [11:0] data_o;

reg        chan_exch_rd;         // сигнал готовности о смене канала (negedge)
wire       chan_exch_rd_posedge; // сигнал готовности о смене канала
wire       fsm_busy;

// сигналы конечного автомата //
reg [15:0] shift_reg;     // сдвиговый регистр последовательного интерфейса
reg [2:0]  chan_cnt;      // счетчик 8 каналов
reg [3:0]  bit_cnt;       // счетчик битов в последовательном интерфейсе
reg        rec_en;        // сигнал разрешения приема из fsm
reg        tx_en;         // сигнал разрешения отправки из fsm
reg        prog_mode;     // сигнал перевода в режим программирования из fsm
wire       divided_clk;   // непрерывная частота последовательного интерфейса
reg        load;          // сигнал загрузки номера канала в сдвиговый регистр
reg        data_mode;     // сигнал перевода в режим данных из fsm
reg        sclk_en;       // сигнал разрешения выдачи тактового сигнала по последовательному интерфейсу
reg        second_cycle;  // сигнал для продления на такт состояния fsm

reg [2:0] state;

localparam IDLE             = 3'd0;
localparam PAUSE_1          = 3'd1;
localparam CHANNEL_EXCHANGE = 3'd2;
localparam PAUSE_2          = 3'd3;
localparam DATA_RECEIVE     = 3'd4;
localparam DATA_CAPTURE     = 3'd5;

assign SCLK = sclk_en ? divided_clk : 1'b0;

// конечный автомат, задающий порядок действий прошивки АЦП и перехода в рабочий режим //
always @(negedge clk or negedge rst_l) begin
    if (!rst_l) begin
        state        <= IDLE;
        bit_cnt      <= 4'd0;
        rec_en       <= 1'b0;
        tx_en        <= 1'b0;
        second_cycle <= 1'b0;
        chan_exch_rd <= 1'b0;
        busy         <= 1'b0;
        data_mode    <= 1'b0;
    end else begin
        case (state)
            IDLE: begin
                bit_cnt      <= 4'd0;
                chan_cnt     <= 3'd0;
                state        <= sync ? PAUSE_1 : IDLE;
                prog_mode    <= 1'b0;
                rec_en       <= 1'b0;
                tx_en        <= 1'b0;
                CS_ADC       <= 1'b0;
                CD_MUX       <= 1'b0;
                sclk_en      <= 1'b0;
                second_cycle <= 1'b0;
                rd_en        <= 1'b0;
                chan_exch_rd <= 1'b0;
                busy         <= 1'b0;
                data_mode    <= 1'b0;
            end

            PAUSE_1: begin
                if (divided_clk) begin
                    CS_ADC        <= 1'b1;
                    CD_MUX        <= 1'b1;     
                    state         <= CHANNEL_EXCHANGE;
                    sclk_en       <= 1'b0;
                    rd_en         <= 1'b0;
                    second_cycle  <= 1'b0;
                    rec_en        <= 1'b0;
                    tx_en         <= 1'b0;
                    data_mode     <= 1'b0;
                    chan_exch_rd  <= 1'b0;
                    busy          <= 1'b1;
                end
            end
            
            CHANNEL_EXCHANGE: begin
                rd_en         <= 1'b0;
                sclk_en       <= 1'b1;
                second_cycle  <= 1'b0;
                data_mode     <= 1'b0;
                rec_en        <= 1'b0;
                chan_exch_rd  <= 1'b0;
                busy          <= 1'b1;
                if (SCLK) begin
                    prog_mode <= 1'b1;
                    if (bit_cnt == 3'd7) begin
                        state    <= PAUSE_2;
                        bit_cnt  <= 4'b0;
                    end else begin 
                        bit_cnt  <= bit_cnt + 1'b1;
                        if (bit_cnt > 3'd2) begin
                            tx_en <= 1'b1;
                            load  <= 1'b0;
                        end  
                        else begin
                            tx_en <= 1'b0;
                            load  <= 1'b1;
                        end
                    end
                end
            end

            PAUSE_2: begin
                sclk_en      <= 1'b0;
                rd_en        <= 1'b0;
                CS_ADC       <= 1'b0;
                CD_MUX       <= 1'b0;
                prog_mode    <= 1'b0;
                second_cycle <= 1'b0;
                rec_en       <= 1'b0;
                tx_en        <= 1'b0;
                busy         <= 1'b1;
                if (divided_clk) state <= DATA_RECEIVE;
            end
            
            DATA_RECEIVE: begin
                sclk_en   <= 1'b1;
                busy      <= 1'b1;
                if (SCLK) begin
                    if (!second_cycle) begin 
                        second_cycle <= 1'b1;
                        bit_cnt      <= 4'd0;
                        data_mode    <= 1'b1;
                    end
                    else begin
                        if (bit_cnt == 4'd14) begin
                            rd_en     <= 1'b0;
                            bit_cnt   <= 4'd0;
                            data_mode <= 1'b1;
                            state     <= DATA_CAPTURE;
                        end 
                        else begin
                            if (bit_cnt > 4'd2)
                                rec_en <= 1'b1;
                            else 
                                rec_en <= 1'b0;
                            rd_en     <= 1'b0;
                            bit_cnt   <= bit_cnt + 4'd1;
                            data_mode <= 1'b1;
                        end
                    end
                end
            end

            DATA_CAPTURE: begin
                sclk_en       <= 1'b0; 
                if (divided_clk) begin
   
                    second_cycle  <= 1'b0;
                    rec_en        <= 1'b1;
                    tx_en         <= 1'b0;
                    if (second_cycle) begin
                        rd_en         <= 1'b1;
                        second_cycle  <= 1'b0;
                        data_mode     <= 1'b1;
                        chan_exch_rd  <= 1'b0;
                        busy          <= (chan_cnt == 4'd7) ? 1'b0 : 1'b1;
                        CS_ADC        <= 1'b0;
                        CD_MUX        <= 1'b0;
                    end
                    else begin
                        chan_cnt      <= chan_cnt + 1'b1;
                        rd_en         <= 1'b0;
                        data_mode     <= 1'b0;
                        chan_exch_rd  <= 1'b1;
                        if (chan_cnt == 3'd7) begin
                            state         <= IDLE;
                            CS_ADC        <= 1'b0;
                            CD_MUX        <= 1'b0;  
                        end
                        else begin
                            state         <= CHANNEL_EXCHANGE;
                            CS_ADC        <= 1'b1;
                            CD_MUX        <= 1'b1; 
                        end
                    end
                end
            end
            
            default: begin
                rd_en        <= 1'b0;
                sclk_en      <= 1'b0;
                state        <= IDLE;
                prog_mode    <= 1'b0;
                rec_en       <= 1'b0;
                tx_en        <= 1'b0;
                bit_cnt      <= 4'd0;
                chan_cnt     <= 3'd0;
                chan_exch_rd <= 1'b0;
                busy         <= 1'b1;
            end
        endcase
    end
end

// выдача и прием данных сдвиговым регистром //
always @(negedge divided_clk or negedge rst_l) begin
    if (!rst_l) begin
        shift_reg     <= 16'b0;
        data_o        <= 12'b0;
        DIN           <= 1'b0;
    end else begin

        if (prog_mode) begin 
            if (load) begin
                shift_reg <= {1'b1, chan_cnt, 12'b0}; 
                DIN       <= 1'b0;
            end
            else if (tx_en) begin
                shift_reg <= {shift_reg[14:0], 1'b0}; 
                DIN       <= shift_reg[15]; 
            end
        end
        else if (data_mode) begin 
            DIN <= 0;    
            if (rec_en) begin            
                if (rd_en) begin  
                    shift_reg <= 16'b0;
                    data_o <= shift_reg[11:0];
                end
                else
                    shift_reg <= {shift_reg[14:0], DOUT}; 
            end 
        end
    end
end

// генерация сигнала активности модуля //
reg state_for_busy;
localparam BUSY_STATE = 1'b1;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        state_for_busy <= IDLE;
        BUSY           <= 1'b0;
    end
    else begin
        case (state_for_busy)
            IDLE: begin
                state_for_busy <= SYNC ? BUSY_STATE : IDLE;
                BUSY  <= 1'b0;
            end 

            BUSY_STATE: begin
                state_for_busy <= (CHANNEL == 3'd7 && !fsm_busy) ? IDLE : BUSY_STATE;
                BUSY <= 1'b1;
            end
            default: begin
                state_for_busy <= IDLE;
                BUSY           <= 1'b0;
            end 
        endcase
    end
end
    
   
// делитель частоты для последовательного интерфейса //
clk_divider3 #(.DIV(2)) clkdiv_8ch_inst (clk, rst_l, 1, strb, divided_clk); 

// синхронизация (устранение расфазировки 180 градусов с глобальным clk) //

wire       data_o_load;          // сигнал для пересинхронизации шины данных

front_detector front_detector_rden      (clk, rst_l, rd_en, data_o_load); // 3 триггера и детектор перепада уровня
front_detector front_detector_chan_rd   (clk, rst_l, chan_exch_rd, chan_exch_rd_posedge); 
sync2          i_sync2_busy             (clk, rst_l, busy, fsm_busy); // 2 триггера
sync2          i_sync2_sync             (!clk, rst_l, SYNC, sync); // 2 триггера

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        DATA_O  <= 11'b0;
        CHANNEL <= 3'b0;
    end
    else begin
        RD_EN <= data_o_load;
        if (data_o_load) 
            DATA_O  <= data_o;
        if (chan_exch_rd_posedge)
            CHANNEL <= chan_cnt;
    end
end

endmodule