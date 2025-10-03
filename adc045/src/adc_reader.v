module adc_reader (
    input  wire clk,
    input  wire rst_l,

    // interface to adc//
    input  wire        drdy,           
    input  wire        dout,    
    output wire        cs,       
    output reg         din,           
    output wire        sclk,
    output reg         nrst,

    //external signals//
    input  wire        start_capture,
    input  wire        start_command,
    input  wire        hard_wreg,
    input  wire [15:0] wreg_command,
    output wire [23:0] ch1_data,
    output reg         ready
);

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
reg [3:0] rst_cnt;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        nrst <= 1'b1;
        rst_cnt <= 4'h0;
    end
    else begin
        case (rst_cnt)
            0, 1, 2, 3: begin 
                    rst_cnt <= rst_cnt + 1'h1;
                    nrst <= 1;
            end
            4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14: begin 
                    rst_cnt <= rst_cnt + 1'h1;
                    nrst <= 0;
            end
            15: begin 
                    rst_cnt <= rst_cnt;
                    nrst <= 1;
            end
            default: begin 
                rst_cnt <= 4'h0;
                nrst <= 0;
            end
        endcase

    end
end

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

always @(posedge sclk or negedge rst_l) begin
    if (!rst_l) begin
        shift_reg <= 0;
        ch1_acc <= 0;
    end else begin

        if (hard_wreg) begin
            if (bit_cnt == 1) // сделать приходящий сверху первый счет счетчика для прогрузки шифтрега
                shift_reg <= {8'b00010100, wreg_command};
            else begin
                shift_reg <= {shift_reg[22:0], 1'b0};
                din <= shift_reg[23]; 
            end
        end

        if (start_command) begin
            if (bit_cnt == 1)
                shift_reg <= {8'b10001000, 16'b1};
            else begin
                shift_reg <= {shift_reg[22:0], 1'b0};
                din <= shift_reg[23];
            end
        end

        if (start_capture) begin
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