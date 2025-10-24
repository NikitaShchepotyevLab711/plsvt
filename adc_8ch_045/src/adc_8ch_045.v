module adc_8ch_045 (
    input wire clk,
    input wire rst_l,

    // serial interface //
    input  wire       DOUT,
    output reg        SCLK,
    output reg        CS_ADC,
    output reg        CD_MUX,
    output reg        DIN,
    
    input  wire       sync,
    output reg        rd_en,
    output wire [2:0] channel,
    output wire       busy,
    output reg [11:0] data_o

);

reg [2:0]  channel_num;
reg [15:0] shift_reg;
reg [2:0]  chan_cnt;
reg [3:0]  bit_cnt;
reg        recv;
reg        prog_mode;
wire       strb;
wire       divided_clk;
reg        load;
reg        start_capture;


reg [2:0] state;
localparam IDLE = 3'd0;
localparam PAUSE_1 = 3'd1;
localparam CHANNEL_EXCHANGE = 3'd2;
localparam PAUSE_2 = 3'd3;
localparam DATA_RECEIVE = 3'd4;

assign channel = chan_cnt;

// конечный автомат, задающий порядок действий прошивки АЦП и перехода в рабочий режим //
always @(negedge clk or negedge rst_l) begin
    if (!rst_l) begin
        state       <= IDLE;
        bit_cnt     <= 4'd0;
        recv        <= 1'b0;
    end else begin
        case (state)
            IDLE: begin
                bit_cnt     <= 4'd0;
                chan_cnt    <= 3'd0;
                state       <= sync  ? CHANNEL_EXCHANGE : IDLE;
                prog_mode   <= 1'b0;
                recv        <= 1'b0;
                CS_ADC      <= 1'b0;
                CD_MUX      <= 1'b0;
                SCLK        <= 1'b0;
            end

            PAUSE_1: begin
                CS_ADC      <= 1'b1;
                CD_MUX      <= 1'b1;         
                SCLK        <= 1'b0;
                state       <= CHANNEL_EXCHANGE;
            end
            
            CHANNEL_EXCHANGE: begin
                if (strb) begin
                    SCLK <= divided_clk;
                    prog_mode <= 1'b1;
                    if (bit_cnt == 3'd7) begin
                        state    <= DATA_RECEIVE;
                        chan_cnt <= chan_cnt + 1'b1;
                        bit_cnt  <= 4'b0;
                    end else begin 
                        bit_cnt  <= bit_cnt + 1'b1;
                        if (bit_cnt > 3'd3) begin
                            recv <= 1'b1;
                            load <= 1'b0;
                        end  
                        else begin
                            recv <= 1'b0;
                            load <= 1'b1;
                        end
                    end
                end
            end

            PAUSE_2: begin
                CS_ADC      <= 1'b0;
                CD_MUX      <= 1'b0;
                SCLK        <= 1'b0;
                state       <= DATA_RECEIVE;
            end
            
            DATA_RECEIVE: begin
                if (strb) begin
                    SCLK <= divided_clk;
                    if (bit_cnt == 4'd15) begin
                        bit_cnt <= 4'd0;
                        start_capture <= 1'b0;
                        state <= (chan_cnt == 4'd7) ? IDLE : CHANNEL_EXCHANGE;
                    end 
                    else begin 
                        bit_cnt <= bit_cnt + 4'd1;
                        if (bit_cnt > 4'd3)    
                            start_capture <= 1'b1;
                        else
                            start_capture <= 1'b0;
                    end
                end
            end
            
            default: begin
                SCLK        <= 1'b0;
                state       <= IDLE;
                prog_mode   <= 1'b0;
                recv        <= 1'b0;
                bit_cnt     <= 4'd0;
                chan_cnt    <= 3'd0;
            end
        endcase
    end
end


always @(negedge SCLK or negedge rst_l) begin
    if (!rst_l) begin
        shift_reg     <= 1'b0;
        data_o <= 1'b0;
        DIN           <= 1'b0;
    end else begin

        if (prog_mode) begin 
            if (load) begin
                shift_reg <= {3'b0, channel_num, 7'b0}; 
                DIN       <= 1'b0;
            end
            else if (recv) begin
                shift_reg <= {shift_reg[14:0], 1'b0}; 
                DIN       <= shift_reg[15]; 
            end
        end
        else if (start_capture) begin 
            DIN <= 0;                 
            if (rd_en) begin  
                shift_reg <= 16'b0;
                data_o <= shift_reg;
            end
            else
                shift_reg <= {shift_reg[14:0], DOUT};   
        end
    end
end
    
clk_divider3 clkdiv_inst (clk, rst_l, 1, strb, divided_clk); 

endmodule