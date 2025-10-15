module adc733 (
    input wire clk,
    input wire rst_l,

    // serial port //
    input  wire        SCLK,
    input  wire        SDOFS,
    input  wire        SDO,
    output reg         SDIFS,
    output wire        SDI,
    output wire        SE,

    input  wire        sync,
    input  wire [15:0] control_word,
    output wire        channel,
    output wire        busy,
    output wire        rd_en
);

reg [2:0]  state;
reg [15:0] shift_reg;
reg        set_delay;
reg        prog_mode;
reg        set_data_mode;
reg        start_capture;
reg        load;
reg [3:0]  bit_cnt;
reg [2:0]  adc_regs_cnt;

wire       delay_done;

localparam IDLE           = 3'd0;
localparam WREG_LOAD      = 3'd2;
localparam WREG           = 3'd3;
localparam WORK_MODE_LOAD = 3'd4;
localparam WORK_MODE      = 3'd5;

always @(posedge sync) SE <= 1'b1;

always @(posedge SCLK or negedge rst_l) begin
    if (!rst_l) begin
        state         <= 3'b0;
        prog_mode     <= 1'b0; 
        set_data_mode <= 1'b0;
        start_capture <= 1'b0;
        bit_cnt       <= 4'b0;
    end
    else begin
        case (state)
            IDLE: begin
                state         <= WREG_LOAD;
                prog_mode     <= 1'b0; 
                set_data_mode <= 1'b0;
                start_capture <= 1'b0; 
                load          <= 1'b0;
                bit_cnt       <= 4'b0;
            end 

            WREG_LOAD: begin
                state         <= WREG;
                prog_mode     <= 1'b1; 
                set_data_mode <= 1'b0;
                start_capture <= 1'b0;        
                load          <= 1'b1;   
                bit_cnt       <= 4'b0;      
            end

            WREG: begin
                if (adc_regs_cnt == 3'h7) // 8 раз повторяется это состояние вместе с предыдущим, записывая конфигурацию во все 8 регистров АЦП
                    state <= WORK_MODE_LOAD;
                else begin
                    if (bit_cnt == 4'hf) begin
                        state        <= WREG_LOAD;
                        bit_cnt      <= 4'b0;
                        adc_regs_cnt <= adc_regs_cnt + 1'b1;
                    end 
                    else begin
                        state        <= WREG;
                        bit_cnt      <= bit_cnt + 1'b1;
                        adc_regs_cnt <= adc_regs_cnt;
                    end
                end
                prog_mode     <= 1'b1; 
                set_data_mode <= 1'b0;
                start_capture <= 1'b0;        
                load          <= 1'b0; 
            end

            default: 
        endcase
    end
end

always @(posedge SCLK or negedge rst_l) begin
    if (!rst_l) begin
        shift_reg     <= 1'b0;
        captured_data <= 1'b0;
        SDIFS         <= 1'b0;
        SDI           <= 1'b0;
    end else begin

        if (prog_mode) begin // приходит команда работы режима программирования АЦП
            if (load) begin
                shift_reg <= control_word; // загрузка программного слова в сдвиговый регистр последовательного интерфейса
                SDIFS     <= 1'b1;
                SDI       <= 1'b0;
            end
            else begin
                shift_reg <= {shift_reg[14:0], 1'b0}; // отправка программного слова в АЦП
                SDI       <= shift_reg[15]; 
                SDIFS     <= 1'b0;
            end
        end
        else if (set_data_mode) begin 
            if (load)
                shift_reg <= 16'b0;
            else begin
                shift_reg <= {shift_reg[14:0], 1'b0};
                DIN <= shift_reg[15];
            end
        end
        else if (start_capture) begin
            DIN <= 0;
            if (word_received) begin
                shift_reg <= 16'b0;
                captured_data <= shift_reg;
            end
            else
                shift_reg <= {shift_reg[14:0], DOUT};   
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