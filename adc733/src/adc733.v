module adc733 (
    input wire clk,
    input wire rst_l,

    // serial port //
    input  wire        SCLK,
    input  wire        SDOFS,
    input  wire        SDO,
    output wire        SDIFS,
    output reg         SDI,
    output reg         SE,

    input  wire        sync,
    input  wire [15:0] control_word,
    output wire        channel,
    output wire        busy,
    output wire        rd_en,
    output reg         word_sent
);

reg [1:0]  state;
reg [15:0] shift_reg;
reg        set_delay;
reg        prog_mode;
reg        set_data_mode;
reg        start_capture;
reg        load;
reg [3:0]  bit_cnt;
reg [3:0]  adc_regs_cnt;
reg        word_received;
reg        captured_data;
reg        second_cycle;

wire       delay_done;

localparam IDLE           = 3'd0;
localparam WREG_LOAD      = 3'd1;
localparam WREG           = 3'd2;
localparam WORK_MODE      = 3'd3;

assign SDIFS = load;

always @(posedge sync or negedge rst_l) begin
    if (!rst_l) 
        SE <= 1'b0;
    else
        SE <= 1'b1;
end

always @(posedge SCLK or negedge rst_l) begin
    if (!rst_l) begin
        state         <= 3'b0;
        prog_mode     <= 1'b0; 
        start_capture <= 1'b0;
        bit_cnt       <= 4'b0;
        adc_regs_cnt  <= 4'h0;
        word_received <= 1'b0;
        load          <= 1'b0;
        word_sent     <= 1'b0;
        second_cycle  <= 1'b0;
    end
    else begin
        case (state)
            IDLE: begin
                state         <= WREG_LOAD;
                prog_mode     <= 1'b0; 
                start_capture <= 1'b0; 
                load          <= 1'b0;
                bit_cnt       <= 4'b0;
                adc_regs_cnt  <= 4'h0;
                word_received <= 1'b0;
                word_sent     <= 1'b0;
                second_cycle  <= 1'b0;
            end 

            WREG_LOAD: begin
                if (!second_cycle) begin
                    second_cycle <= 1'b1;
                    state <= WREG_LOAD;
                    load          <= 1'b0;
                end else begin
                    second_cycle <= 1'b0;
                    state        <= WREG;
                    load         <= 1'b1; 
                end
                
                prog_mode     <= 1'b1; 
                start_capture <= 1'b0;   
                bit_cnt       <= 4'b0;  
                word_received <= 1'b0;    
                word_sent     <= 1'b0;
            end

            WREG: begin
                prog_mode     <= 1'b1; 
                start_capture <= 1'b0;        
                load          <= 1'b0;
                word_received <= 1'b0; 
                if (adc_regs_cnt == 4'h8) begin // 9 раз повторяется это состояние вместе с предыдущим, записывая конфигурацию во все 8 регистров АЦП, а после переводя АЦП в Data mode
                    state <= SDOFS ? WORK_MODE : WREG;
                    bit_cnt <= 1'b0;
                end
                else begin
                    if (bit_cnt == 4'hf) begin
                        state        <= WREG_LOAD;
                        adc_regs_cnt <= adc_regs_cnt + 1'b1;
                        word_sent     <= 1'b1;
                    end 
                    else begin
                        state        <= WREG;
                        bit_cnt      <= bit_cnt + 1'b1;
                        adc_regs_cnt <= adc_regs_cnt;
                        word_sent     <= 1'b0;
                    end
                end
            end

            WORK_MODE: begin
                if (bit_cnt == 4'hf)
                    word_received <= 1'b1;
                else
                    word_received <= 1'b0;

                state         <= WORK_MODE;
                prog_mode     <= 1'b0; 
                start_capture <= 1'b1;        
                load          <= 1'b0;   
                bit_cnt       <= 4'b0;
                word_sent     <= 1'b0;
            end

            default: begin
                state         <= IDLE;
                prog_mode     <= 1'b0; 
                start_capture <= 1'b0; 
                load          <= 1'b0;
                bit_cnt       <= 4'b0;
                adc_regs_cnt  <= 4'h0;
                word_received <= 1'b0;
                word_sent     <= 1'b0;
            end
        endcase
    end
end

always @(posedge SCLK or negedge rst_l) begin
    if (!rst_l) begin
        shift_reg     <= 1'b0;
        captured_data <= 1'b0;
//        SDIFS         <= 1'b0;
        SDI           <= 1'b0;
    end else begin

        if (prog_mode) begin // приходит команда работы режима программирования АЦП
            if (load) begin
                shift_reg <= control_word; // загрузка программного слова в сдвиговый регистр последовательного интерфейса
//                SDIFS     <= 1'b1;
                SDI       <= 1'b0;
            end
            else begin
                shift_reg <= {shift_reg[14:0], 1'b0}; // отправка программного слова в АЦП
                SDI       <= shift_reg[15]; 
//                SDIFS     <= 1'b0;
            end
        end
        else if (start_capture) begin
            SDI <= 0;
            if (word_received) begin
                shift_reg <= 16'b0;
                captured_data <= shift_reg;
            end
            else
                shift_reg <= {shift_reg[14:0], SDO};   
        end
    end
end

/*
delay #(
    .FREQ_MHZ(12),
    .DELAY_US(127)
) delay_inst (
    .clk(clk),
    .rst_l(rst_l),
    .delay_done(delay_done),
    .enable(set_delay)
);
*/
endmodule