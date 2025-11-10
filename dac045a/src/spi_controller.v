module spi_controller #(
    parameter CLK_FREQ = 12
) (

    input  wire        clk,
    input  wire        rst_l,
    input  wire [15:0] data_i,
    input  wire        dac_en,
    input  wire        renew,

    // spi //
    input  wire       SDO,
    output reg        SDI,
    output wire       SCK,
    output wire       CLRn,
    output reg        LDAc,
    output reg        CSn
);

reg [15:0] shiftreg;
reg [3:0] cnt;
reg SCK_en;
wire strb;

reg [2:0] state;
localparam IDLE         = 3'h0;
localparam CS_START     = 3'h1;
localparam SCK_START    = 3'h2;
localparam SCK_STOP     = 3'h3;
localparam CS_STOP      = 3'h4;
localparam LDAC_ENABLE  = 3'h5;
localparam LDAC_WAIT    = 3'h6;
localparam LDAC_DISABLE = 3'h7;

assign CLRn = rst_l;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        SCK_en <= 1'b0;
        LDAc <= 1'b1;
        CSn <= 1'b1;
        shiftreg <= 16'h0;
        SDI <= 1'b0;
        cnt <= 4'h0;
        state <= IDLE;
    end
    else begin
        case (state)
            IDLE: begin
                if (dac_en && renew) 
                    state <= CS_START;
                else 
                    state <= IDLE;

                SCK_en <= 1'b0;
                LDAc <= 1'b1;
                SDI  <= 1'b0;
                CSn <= 1'b1;
                shiftreg <= 16'b0;
            end

            CS_START: begin
                SCK_en <= 1'b0;
                LDAc <= 1'b1;
                CSn <= 1'b0;
                state <= SCK_START;
            end

            SCK_START: begin
                SCK_en <= 1'b1;
                LDAc <= 1'b1;
                CSn <= 1'b0;
                if (strb) begin
                    if (cnt == 16'hf) begin
                        state <= SCK_STOP;
                        cnt <= 1'h0;
                    end
                    else begin
                        if (cnt == 16'h0) begin
                            shiftreg <= data_i;
                            SDI <= data_i[0];  
                        end 
                        else begin
                            shiftreg <= {1'b0, shiftreg[15:1]};
                            SDI <= shiftreg[0];
                        end 
                        cnt <= cnt + 1'b1;
                        state <= SCK_START;
                    end
                end
            end

            SCK_STOP: begin
                SCK_en <= 1'b0;
                LDAc <= 1'b1;
                CSn <= 1'b0;
                state <= CS_STOP;
            end

            CS_STOP: begin
                SCK_en <= 1'b0;
                LDAc <= 1'b1;
                CSn <= 1'b1;
                state <= LDAC_ENABLE;
            end

            LDAC_ENABLE: begin
                SCK_en <= 1'b0;
                LDAc <= 1'b0;
                CSn <= 1'b1;
                state <= LDAC_WAIT;
            end

            LDAC_WAIT: begin
                SCK_en <= 1'b0;
                LDAc <= 1'b0;
                CSn <= 1'b1;
                state <= LDAC_DISABLE;
            end

            LDAC_DISABLE: begin
                SCK_en <= 1'b0;
                LDAc <= 1'b1;
                CSn <= 1'b1;
                state <= IDLE;
            end

            default: begin
                SCK_en <= 1'b0;
                LDAc <= 1'b1;
                CSn <= 1'b1;
                state <= IDLE;
            end
        endcase

    end
end

clk_divider3 #(.DIV(3)) clkdiv_8ch_inst (clk, rst_l, SCK_en, strb, SCK); 

endmodule