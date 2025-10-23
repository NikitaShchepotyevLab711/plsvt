module adc733 (
    input wire clk,
    input wire rst_l,

    // serial port //
    input  wire        SCLK,
    input  wire        SDOFS,
    input  wire        SDO,
    output reg         SDIFS,
    output reg         SDI,
    output wire        SE,

    input  wire        sync,
    input  wire [15:0] control_word,
    output wire  [2:0] channel,
    output wire        busy,
    output reg         rd_en,
    output reg         word_sent,
    output reg         operation_mode,
    output reg [15:0]  captured_data 
);

reg [2:0]  state;
reg [15:0] shift_reg; // сдвиговый регистр последовательного интерфейса 
reg        prog_mode; // регистр, настравивающий сдвиг. регистр в режим отправки конфигурации в АЦП
reg        start_capture; // регистр, настраивающи сдвиг. регистр в режим приема данных АЦП
reg        load; // инициирует загрузку контрольного слова в сдвиговый регистр
reg [3:0]  bit_cnt; // счётчик до 16 для отсчета отправляемых и принимаемых битов
reg [3:0]  adc_regs_cnt; // счетчик до 8, считает регистры АЦП при их поочередной конфигурации
reg        second_cycle;  // сигнал, служащий для разделения загрузки сдвигового регистра и выставления SDIFS
reg [2:0]  sdofs_counter;
reg [2:0]  rcvd_words;

localparam IDLE            = 3'd0;
localparam WREG_LOAD       = 3'd1;
localparam WREG            = 3'd2;
localparam WORK_MODE       = 3'd3;
localparam WAIT_FOR_SDOFS  = 3'd4;
localparam WAIT_FOR_SYNC   = 3'd5;
localparam WAIT_FOR_1ST_CH = 3'd6;

assign busy = SE;
assign SE = 1'b1;
assign channel = sdofs_counter;

always @(posedge SCLK or negedge rst_l) begin
    if (!rst_l) begin
        state          <= 3'b0;
        prog_mode      <= 1'b0; 
        start_capture  <= 1'b0;
        bit_cnt        <= 4'b0;
        adc_regs_cnt   <= 4'h0;
        rd_en          <= 1'b0;
        load           <= 1'b0;
        word_sent      <= 1'b0;
        second_cycle   <= 1'b0;
        operation_mode <= 1'b0;
        rcvd_words <= 3'd0;
    end
    else begin
        case (state)
            IDLE: begin
                state          <= SDOFS ? WREG_LOAD : IDLE;
                prog_mode      <= 1'b0; 
                start_capture  <= 1'b0; 
                load           <= 1'b0;
                bit_cnt        <= 4'b0;
                adc_regs_cnt   <= 4'h0;
                rd_en          <= 1'b0;
                word_sent      <= 1'b0;
                second_cycle   <= 1'b0;
                SDIFS          <= 1'b0;
                operation_mode <= 1'b0;
//                channel        <= 1'b0;
            end 

            WREG_LOAD: begin
                if (!second_cycle) begin
                    second_cycle <= 1'b1;
                    state <= WREG_LOAD;
                    load          <= 1'b1;
                    SDIFS         <= 1'b0;
                end else begin
                    second_cycle <= 1'b0;
                    state        <= WREG;
                    load         <= 1'b0; 
                    SDIFS        <= 1'b1;
                end
                
                prog_mode     <= 1'b1; 
                start_capture <= 1'b0;   
                bit_cnt       <= 4'b0;  
                rd_en         <= 1'b0;    
                word_sent     <= 1'b0;
                operation_mode <= 1'b0;
            end

            WREG: begin
                SDIFS         <= 1'b0; 
                start_capture <= 1'b0;        
                load          <= 1'b0;
                rd_en         <= 1'b0; 
                prog_mode     <= 1'b1; 
                if (adc_regs_cnt == 4'h8) begin // 9 раз повторяется это состояние вместе с предыдущим, записывая конфигурацию во все 8 регистров АЦП, а после переводя АЦП в Data mode
                    if (bit_cnt == 4'hf) begin
                        state     <= WAIT_FOR_SYNC;
                        word_sent <= 1'b1;
                        operation_mode <= 1'b0;
                    end
                    else begin
                        bit_cnt       <= bit_cnt + 1'b1;
                        word_sent     <= 1'b0;
                        operation_mode <= 1'b0;
                    end
                end
                else begin
                    if (bit_cnt == 4'hf) begin
                        state         <= WAIT_FOR_SDOFS;
                        adc_regs_cnt  <= adc_regs_cnt + 1'b1;
                        word_sent     <= 1'b1;
                    end 
                    else begin
                        state        <= WREG;
                        bit_cnt      <= bit_cnt + 1'b1;
                        adc_regs_cnt <= adc_regs_cnt;
                        word_sent    <= 1'b0;
                    end
                end
            end

            WORK_MODE: begin
                if (bit_cnt == 4'hf) begin
                    rd_en <= 1'b1;
                    state         <= WAIT_FOR_SDOFS;
//                    if (channel < 5)
//                        channel <= channel + 1'b1;
//                    else
//                        channel <= 1'b0;
                end
                else begin
                    rd_en <= 1'b0;
                    bit_cnt       <= bit_cnt + 1'b1;
                    state         <= WORK_MODE;
                end

                prog_mode      <= 1'b0; 
                start_capture  <= 1'b1;        
                load           <= 1'b0; 
                word_sent      <= 1'b0;
                operation_mode <= 1'b1;
            end

            WAIT_FOR_SYNC: begin
                rd_en          <= 1'b0;
                operation_mode <= 1'b1;
                bit_cnt        <= 1'b0;
                start_capture  <= 1'b0;
                prog_mode      <= 1'b0;
                word_sent      <= 1'b0;
                state          <= sync ? WAIT_FOR_1ST_CH : WAIT_FOR_SYNC;
            end

            WAIT_FOR_1ST_CH: begin
                rd_en          <= 1'b0;
                operation_mode <= 1'b1;
                bit_cnt        <= 1'b0;
                start_capture  <= 1'b0;
                prog_mode      <= 1'b0;
                word_sent      <= 1'b0;
                state          <= (sdofs_counter == 3'd5) ? WAIT_FOR_SDOFS : WAIT_FOR_1ST_CH;
            end

            WAIT_FOR_SDOFS: begin
                bit_cnt        <= 1'b0;
                start_capture  <= 1'b0;
                if (SDOFS) begin
                    if (operation_mode == 1'b0)
                        state <= WREG_LOAD;
                    else begin
                        if (rcvd_words == 3'd6) begin
                            state <= WAIT_FOR_SYNC;
                            rcvd_words <= 3'd0;
                        end
                        else begin
                            state <= WORK_MODE;
                            rcvd_words <= rcvd_words + 1'b1;
                        end
                    end
                end
                rd_en          <= 1'b0;
                word_sent      <= 1'b0;
            end

            default: begin
                state          <= IDLE;
                prog_mode      <= 1'b0; 
                start_capture  <= 1'b0; 
                load           <= 1'b0;
                bit_cnt        <= 4'b0;
                adc_regs_cnt   <= 4'h0;
                rd_en          <= 1'b0;
                word_sent      <= 1'b0;
                operation_mode <= 1'b0;
            end
        endcase
    end
end

always @(posedge SCLK or negedge rst_l) begin
    if (!rst_l) begin
        sdofs_counter <= 3'd0;
    end
    else begin
        if (operation_mode) begin
            if (SDOFS) begin
                if (sdofs_counter == 3'd5)
                    sdofs_counter <= 3'd0;
                else 
                    sdofs_counter <= sdofs_counter + 1'd1;
            end
        end
    end
end

always @(posedge SCLK or negedge rst_l) begin
    if (!rst_l) begin
        shift_reg     <= 1'b0;
        captured_data <= 1'b0;
        SDI           <= 1'b0;
    end else begin

        if (prog_mode) begin // приходит команда работы режима программирования АЦП
            if (load) begin
                shift_reg <= control_word; // загрузка программного слова в сдвиговый регистр последовательного интерфейса
                SDI       <= 1'b0;
            end
            else begin
                shift_reg <= {shift_reg[14:0], 1'b0}; // отправка программного слова в АЦП
                SDI       <= shift_reg[15]; 
            end
        end
        else if (start_capture) begin // приходит сигнал о начале приема данных от АЦП
            SDI <= 0;                 // при этом в АЦП мы ничего не отправляем  
            if (rd_en) begin  // по истечении 16 тактов выставляется сигнал rd_en, 16битное слово от АЦП сохраняется
                shift_reg <= 16'b0;
                captured_data <= shift_reg;
            end
            else
                shift_reg <= SDOFS ? 16'b0 : {shift_reg[14:0], SDO};   
        end
    end
end

endmodule