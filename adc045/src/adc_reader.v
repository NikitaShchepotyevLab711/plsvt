module adc_reader (
    input  wire clk,
    input  wire rst_l,

    // interface to adc//
    input  wire        drdy,           
    input  wire        dout,    
    input  wire        cs,       
    output reg         din,           
    output wire        sclk,

    //external signals//
    input  wire        rst_l_adc,
    input  wire        hard_start,
    input  wire        hard_wreg,
    input  wire [15:0] wreg_command,
    output wire [23:0] ch1_data,
    output reg         ready
);

reg sclk_reg;
assign sclk = sclk_reg;

reg [23:0] shift_reg;
reg [23:0] ch1_acc;
reg [23:0] ch1_prev;

reg [2:0] state;
parameter IDLE          = 3'b000;
parameter HARD_IDLE     = 3'b001;
parameter HARD_REG_LOAD = 3'b010;
parameter REG_LOAD      = 3'b011;
parameter WORK_HEADER   = 3'b100;
parameter WORK          = 3'b101;

reg [5:0] bit_cnt;
reg work_mode;
reg start_mode;
reg wreg_mode;

always @(posedge sclk or negedge rst_l) begin
    if (!rst_l) begin
        ch1_prev <= 0;
        ready <= 0;
    end
    else begin
        ch1_prev <= ch1_acc;
        if (ch1_acc != ch1_prev)
            ready <= 1;
        else
            ready <= 0;
    end
end

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        sclk_reg <= 0;
    end else
        sclk_reg <= ~sclk_reg; 
end

always @(posedge sclk or negedge rst_l) begin
    if (!rst_l) begin
        state <= 0;
        wreg_mode <= 0;
        work_mode <= 0;
        start_mode <= 0;
        bit_cnt <= 0;
    end
    else begin
        case (state)

            IDLE: begin
                if (!cs)
                    state <= REG_LOAD;
                else
                    state <= IDLE;
            end

            HARD_IDLE: begin // вызывается сбросом АЦП
                if (!cs) begin
                    if (hard_wreg)
                        state <= HARD_REG_LOAD;
                    else begin 
                        if (hard_start)
                            state <= WORK;
                        else
                            state <= HARD_IDLE;
                    end
                end
                else
                    state <= IDLE;
            end

            HARD_REG_LOAD: begin   // состояние для неавтоматической загрузки регистра АЦП 
                if (!cs) begin
                    if (bit_cnt == 23) begin
                        bit_cnt <= 0;
                        state <= HARD_IDLE;
                        wreg_mode <= 0;
                    end
                    else begin
                        bit_cnt <= bit_cnt + 1;
                        wreg_mode <= 1;
                    end
                end
                else
                    state <= IDLE;
            end

            REG_LOAD: begin   // автоматическая загрузка регситра АЦП при включении
                if (!cs) begin
                    if (bit_cnt == 25) begin
                        bit_cnt <= 0;
                        state <= WORK_HEADER;
                        wreg_mode <= 0;
                    end
                    else begin
                        bit_cnt <= bit_cnt + 1;
                        wreg_mode <= 1;
                        state <= REG_LOAD;
                    end
                end
                else
                    state <= IDLE;
            end

            WORK_HEADER: begin // автоматическое начало работы АЦП после включения
                if (!cs) begin
                    if (bit_cnt == 26) begin
                        bit_cnt <= 0;
                        state <= WORK;
                        start_mode <= 0;             
                    end else begin
                        start_mode <= 1'b1;
                        bit_cnt <= bit_cnt + 1;
                        state <= WORK_HEADER;
                    end
                end
                else
                    state <= IDLE;
            end

            WORK: begin // состояние непрерывной работы АЦП
                if (!cs) begin
                    if (!rst_l_adc) begin    
                        state <= HARD_IDLE;
                        work_mode <= 0;
                    end
                    else
                        work_mode <= 1;
                        
                end
                else
                    state <= IDLE;
            end

            default: state <= IDLE;
        endcase
    end
end

always @(posedge sclk or negedge rst_l) begin
    if (!rst_l) begin
        shift_reg <= 0;
        ch1_acc <= 0;
    end else begin

        if (wreg_mode) begin
            if (bit_cnt == 1)
                shift_reg <= {8'b00010100, wreg_command};
            else begin
                shift_reg <= {shift_reg[22:0], 1'b0};
                din <= shift_reg[23]; 
            end
        end

        if (start_mode) begin
            if (bit_cnt == 1)
                shift_reg <= {8'b10001000, 16'b1};
            else begin
                shift_reg <= {shift_reg[22:0], 1'b0};
                din <= shift_reg[23];
            end
        end

        if (work_mode) begin
            if (drdy) begin
                shift_reg <= 24'b0;
                ch1_acc <= shift_reg;
            end
            else
                shift_reg <= {shift_reg[22:0], dout};
        end
    end
end

assign ch1_data = ch1_acc;

endmodule