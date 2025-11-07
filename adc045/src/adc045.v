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
    
    input  wire        sync,           // сигнал синхронизации чтения данных
    input  wire [13:0] wreg_command,   // конфигурация АЦП (кроме битов отвечающих за номер канала)
    input  wire [1:0]  channel_choice, // номер канала. 0 и 3 - оба, 1 - первый, 2 - второй
    output reg         busy,           // сигнал активности модуля
    output reg  [23:0] data_o,         // данные
    output reg         channel,        // сигнал об активном канале
    output reg         rd_en           // сигнал готовности
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
reg  [5:0]  cnt;
reg  [3:0]  state;
reg [23:0] captured_data;
reg  set_delay;
wire delay_done;
reg delay_done_reg;

reg hard_wreg;
reg start_capture, start_command;
wire strb;
reg load;
reg word_received;
wire delay_start_done;
reg set_delay_start;
reg delay_start_done_reg;

assign CS = 1'b0;
assign full_wreg = {A_MUX, wreg_command};

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        data_o <= 1'b0;
        rd_en  <= 1'b0;        
    end
    else begin
        if ((strb)&&(word_received)) begin
            data_o <= captured_data;
            rd_en <= 1'b1;
        end 
        else begin
            rd_en <= 1'b0;
        end
    end    
end

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        cnt <= 6'h0;
        hard_wreg <= 1'b0;
        A_MUX <= 2'b0;
        state <= IDLE;
        start_command <= 1'b0;
        start_capture <= 1'b0;  
        load <= 1'b1;  
        busy <= 1'b0;
        data_o <= 24'b0;
        channel <= 1'b0;
        word_received <= 1'b0;
        set_delay <= 1'b0;
        delay_done_reg <= 1'b0;
        set_delay_start <= 1'b0;
    end
    else begin
        if (strb) begin
        case (state)
            IDLE: begin // по синхросигналу sync начинается работа
                    cnt <= 6'h0;
                    hard_wreg <= 1'b0;
                    A_MUX <= 2'b0;
                    load <= 1'b0;
                    start_command <= 1'b0;
                    start_capture <= 1'b0; 
                    channel <= 1'b0;
                    busy <= 1'b0;
                    word_received <= 1'b0;
                    set_delay_start <= 1'b0;
                    START <= 1'b0;
                    if (sync) begin
                        if (channel_choice == 2'b10)
                            state <= LOAD_WREG2;
                        else
                            state <= LOAD_WREG1;
                    end
            end

            LOAD_WREG1: begin // загрузка конфигурационных данных АЦП (чтение из 1ого канала) в сдвиговый регистр
                cnt <= 6'd0;
                state <= WREG;
                A_MUX <= 2'b0;
                load <= 1'b1;
                hard_wreg <= 1'b1;
                start_command <= 1'b0;
                start_capture <= 1'b0;  
                channel <= 1'b0;
                busy <= 1'b1;
                word_received <= 1'b0;
                set_delay_start <= 1'b0;
                START <= 1'b0;
            end

            WREG: begin
                if (cnt == 6'd23) begin
                    state <= LOAD_DATA;
                    cnt <= 6'd0;
                end
                else  begin
                    state <= WREG;
                    cnt <= cnt + 1'b1;                    
                end  
                hard_wreg <= 1'b1;
                start_command <= 1'b0;
                start_capture <= 1'b0;    
                load <= 1'b0;
                busy <= 1'b1; 
                word_received <= 1'b0;
                set_delay_start <= 1'b0;
                START <= 1'b0;                
            end

            LOAD_DATA: begin // загрузка команды START в сдвиговый регистр
                cnt <= 6'd0;
                state <= CH_START;
                hard_wreg <= 1'b0;
                start_command <= 1'b1;
                start_capture <= 1'b0;   
                load <= 1'b1;
                busy <= 1'b1;
                word_received <= 1'b0;
                set_delay_start <= 1'b0;
                START <= 1'b0;
            end

            CH_START: begin // отправка команды START по DIN
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
                    busy <= 1'b1;
                    word_received <= 1'b0;
                    A_MUX <= 2'b0;
                end       
                */

                if (delay_start_done) begin
                    if (delay_done_reg) begin
                            if (DRDY)
                                state <= CH_TX;
                        end
                    else begin
                        state <= DELAY;
                        cnt <= 1'b0;
                    end 
                    START <= 1'b0;
                end
                else begin
                    START <= 1'b1;
                    state <= CH_START;
                    cnt <= 1'b0;
                    hard_wreg <= 1'b0;
                    start_command <= 1'b0;
                    start_capture <= 1'b0;   
                    load <= 1'b0; 
                    busy <= 1'b1;
                    word_received <= 1'b0;
                end

                set_delay_start <= 1'b1;
            end

            DELAY: begin
                START <= 1'b0;
                set_delay <= 1'b1;
                set_delay_start <= 1'b0;
                delay_start_done_reg <= 1'b0;
                if (!(^channel_choice)) begin
                    if (delay_done) begin
                        delay_done_reg <= 1'b1;
                        if (DRDY)
                            state <= CH_TX;
                    end
                end
                else begin
                    if (DRDY)
                        cnt <= cnt + 1'd1;
                    if (cnt == 6'd5) begin
                            state <= CH_TX;
                        cnt <= 6'd1;
                        delay_done_reg <= 1'b1;
                    end
                end
            end

            CH_TX: begin // получение значения из первого канала
                if (cnt == 6'd24) begin
                    state <= channel ? CH2_RESULT : CH1_RESULT;
                    cnt <= 6'd0;
                    word_received <= 1'b1;
                end
                else begin
                    cnt <= cnt + 1'b1;
                    hard_wreg <= 1'b0;
                    start_command <= 1'b0;
                    start_capture <= 1'b1;    
                    load <= 1'b0; 
                    busy <= 1'b1;
                    word_received <= 1'b0; 
                    START <= 1'b0;
                    set_delay_start <= 1'b0;
                end
            end

            CH1_RESULT: begin
                case (channel_choice)
                    2'd0, 2'd2, 2'd3: state <= LOAD_WREG2;
                    2'd1: state <= WAIT_FOR_SYNC;
                    default: state <= CH1_RESULT;
                endcase
                word_received <= 1'b0; 
                set_delay_start <= 1'b0;
            end

            WAIT_FOR_SYNC: begin
                start_capture <= 1'b0;
                if (sync) 
                    state <= WAIT_FOR_DRDY;
                else
                    state <= WAIT_FOR_SYNC;
            end

            WAIT_FOR_DRDY: begin
                if (DRDY) begin
                    state <= CH_TX;
                end
                else
                    state <= WAIT_FOR_DRDY;

                cnt <= 0;
                hard_wreg <= 1'b0;
                start_command <= 1'b0;
                start_capture <= 1'b0;    
                load <= 1'b0; 
                busy <= 1'b1;
                word_received <= 1'b0; 
                set_delay_start <= 1'b0;
            end

            LOAD_WREG2: begin // загрузка конфигурационных данных АЦП (чтение из 2ого канала) в сдвиговый регистр
                cnt <= 6'd0;
                state <= WREG;
                hard_wreg <= 1'b1;
                start_command <= 1'b0;
                start_capture <= 1'b0;   
                A_MUX <= 2'b1;
                load <= 1'b1;
                channel <= 1'b1;
                busy <= 1'b1;
                word_received <= 1'b0;
                set_delay_start <= 1'b0;
            end

            CH2_RESULT: begin
                case (channel_choice)
                    2'd0, 2'd1, 2'd3: state <= IDLE;
                    2'd2: state <= WAIT_FOR_SYNC;
                    default: state <= CH2_RESULT;
                endcase
                word_received <= 1'b0;
                set_delay_start <= 1'b0;
                START <= 1'b0;
            end

            default: begin
                start_command <= 1'b0;
                start_capture <= 1'b0;
                hard_wreg <= 1'b0;
                A_MUX <= 2'b0;
                state <= IDLE;   
                load <= 1'b0;
                channel <= 1'b0;
                data_o <= 1'b0;
                busy <= 1'b0;
                word_received <= 1'b0;
                set_delay_start <= 1'b0;
            end
        endcase
        end
    end
end

always @(posedge clk or negedge rst_l) begin
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

always @(posedge SCLK or negedge rst_l) begin
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
            if (word_received) begin
                shift_reg <= 24'b0;
                captured_data <= shift_reg;
            end
            else
                shift_reg <= {shift_reg[22:0], DOUT};   
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

delay #(
    .FREQ_MHZ(12),
    .DELAY_MS(1)
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