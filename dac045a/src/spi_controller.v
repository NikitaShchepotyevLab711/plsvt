module spi_controller (
    input  wire        clk,
    input  wire        rst_l,
    input  wire [15:0] data_i,
    input  wire        dac_en,
    input  wire        renew,
    output reg         rdy,
    output reg         valid,

    // Serial interface of 5400TR045A-022.
    input  wire        SDO,
    output reg         SDI,
    output reg         SCK,
    output wire        CLRn,
    output reg         LDAc,
    output reg         CSn
);

localparam IDLE         = 3'd0;
localparam CS_SETUP     = 3'd1;
localparam SCK_RISE     = 3'd2;
localparam SCK_FALL     = 3'd3;
localparam CS_STOP      = 3'd4;
localparam LDAC_ENABLE  = 3'd5;
localparam LDAC_WAIT    = 3'd6;
localparam LDAC_DISABLE = 3'd7;

reg [2:0]  state;
reg [4:0]  bit_count;
reg [15:0] shiftreg;

// CLRn is asserted together with the asynchronous reset of the FPGA logic.
assign CLRn = rst_l;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        state     <= IDLE;
        bit_count <= 5'd0;
        shiftreg  <= 16'd0;
        SDI       <= 1'b0;
        SCK       <= 1'b0;
        LDAc      <= 1'b1;
        CSn       <= 1'b1;
        rdy       <= 1'b0;
        valid     <= 1'b0;
    end else begin
        rdy   <= 1'b0;
        valid <= 1'b0;

        case (state)
            IDLE: begin
                SDI  <= 1'b0;
                SCK  <= 1'b0;
                LDAc <= 1'b1;
                CSn  <= 1'b1;

                if (dac_en && renew) begin
                    shiftreg  <= data_i;
                    bit_count <= 5'd0;
                    CSn       <= 1'b0;
                    valid     <= 1'b1;
                    state     <= CS_SETUP;
                end
            end

            // CSn is already low. One full clk period is reserved before the
            // first rising edge of SCK.
            CS_SETUP: begin
                SDI   <= shiftreg[15];
                SCK   <= 1'b1;
                state <= SCK_FALL;
            end

            // CPOL=0, CPHA=1: data changes on a rising edge of SCK.
            SCK_RISE: begin
                SDI   <= shiftreg[15];
                SCK   <= 1'b1;
                state <= SCK_FALL;
            end

            // The DAC samples SDI on the falling edge of SCK.
            SCK_FALL: begin
                SCK <= 1'b0;

                if (bit_count == 5'd15) begin
                    state <= CS_STOP;
                end else begin
                    bit_count <= bit_count + 1'b1;
                    shiftreg  <= {shiftreg[14:0], 1'b0};
                    state     <= SCK_RISE;
                end
            end

            // Keep CSn low for one clk period after the last falling edge.
            CS_STOP: begin
                CSn   <= 1'b1;
                state <= LDAC_ENABLE;
            end

            // CSn has been high for one clk period before LDACn is asserted.
            LDAC_ENABLE: begin
                LDAc  <= 1'b0;
                state <= LDAC_WAIT;
            end

            // Two clk periods give an LDACn low pulse of about 168 ns.
            LDAC_WAIT: begin
                LDAc  <= 1'b0;
                state <= LDAC_DISABLE;
            end

            LDAC_DISABLE: begin
                LDAc  <= 1'b1;
                rdy   <= 1'b1;
                state <= IDLE;
            end

            default: begin
                state <= IDLE;
                SDI   <= 1'b0;
                SCK   <= 1'b0;
                LDAc  <= 1'b1;
                CSn   <= 1'b1;
            end
        endcase
    end
end

endmodule
