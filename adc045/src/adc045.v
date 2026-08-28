module adc045 #(
    parameter integer CLK_FREQ_HZ      = 8_000_000,
    parameter integer RESET_WAIT_MS    = 20
) (
    input  wire        clk,
    input  wire        rst_l,

    // Interface to one 5400TR045A-025 ADC (TYPE must be tied low).
    input  wire        DRDY,
    input  wire        DOUT,
    output reg         CS,
    output reg         DIN,
    output reg         SCLK,
    output reg         nRST,
    output reg         START,

    input  wire        enable,
    input  wire        sync,
    input  wire [13:0] wreg_command,
    input  wire [1:0]  channel_choice,
    output wire        busy,
    output reg  [23:0] data_o,
    output reg         ch_num,
    output reg         rd_en,
    output wire        dly
);

localparam [3:0] RESET_LOW     = 4'd0;
localparam [3:0] RESET_WAIT    = 4'd1;
localparam [3:0] IDLE          = 4'd2;
localparam [3:0] WREG_SETUP    = 4'd3;
localparam [3:0] WREG_RISE     = 4'd4;
localparam [3:0] WREG_FALL     = 4'd5;
localparam [3:0] WREG_HOLD     = 4'd6;
localparam [3:0] START_HIGH    = 4'd7;
localparam [3:0] WAIT_FOR_DRDY = 4'd8;
localparam [3:0] READ_SETUP    = 4'd9;
localparam [3:0] READ_RISE     = 4'd10;
localparam [3:0] READ_FALL     = 4'd11;
localparam [3:0] READ_HOLD     = 4'd12;

// nRST and START are specified as at least 1 us. One extra system-clock
// period gives margin against output and routing delays.
localparam integer RESET_LOW_CYCLES = CLK_FREQ_HZ / 1_000_000 + 1;
localparam integer START_HIGH_CYCLES = CLK_FREQ_HZ / 1_000_000 + 1;
localparam integer RESET_WAIT_CYCLES = (CLK_FREQ_HZ / 1000) * RESET_WAIT_MS;
localparam integer RESET_COUNTER_WIDTH = $clog2(RESET_WAIT_CYCLES + 1);
localparam integer START_COUNTER_WIDTH = $clog2(START_HIGH_CYCLES + 1);

reg [3:0] state;
reg [4:0] bit_count;
reg [23:0] tx_shift;
reg [23:0] rx_shift;
reg channel;
reg busy_reg;

reg [RESET_COUNTER_WIDTH-1:0] reset_counter;
reg [START_COUNTER_WIDTH-1:0] start_counter;

reg drdy_meta;
reg drdy_sync;

assign busy = busy_reg;
assign dly = (state == RESET_LOW) || (state == RESET_WAIT);

// DRDY is asynchronous to the FPGA clock. DOUT is not synchronized here:
// it is sampled half an SCLK period after the ADC changes it.
always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        drdy_meta <= 1'b0;
        drdy_sync <= 1'b0;
    end else begin
        drdy_meta <= DRDY;
        drdy_sync <= drdy_meta;
    end
end

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        state         <= RESET_LOW;
        bit_count     <= 5'd0;
        tx_shift      <= 24'd0;
        rx_shift      <= 24'd0;
        channel       <= 1'b0;
        busy_reg      <= 1'b1;
        data_o        <= 24'd0;
        ch_num        <= 1'b0;
        rd_en         <= 1'b0;
        reset_counter <= {RESET_COUNTER_WIDTH{1'b0}};
        start_counter <= {START_COUNTER_WIDTH{1'b0}};
        CS            <= 1'b1;
        DIN           <= 1'b0;
        SCLK          <= 1'b0;
        nRST          <= 1'b0;
        START         <= 1'b0;
    end else begin
        rd_en <= 1'b0;

        case (state)
            RESET_LOW: begin
                CS       <= 1'b1;
                DIN      <= 1'b0;
                SCLK     <= 1'b0;
                nRST     <= 1'b0;
                START    <= 1'b0;
                busy_reg <= 1'b1;

                if (reset_counter == RESET_LOW_CYCLES - 1) begin
                    reset_counter <= {RESET_COUNTER_WIDTH{1'b0}};
                    nRST <= 1'b1;
                    state <= RESET_WAIT;
                end else begin
                    reset_counter <= reset_counter + 1'b1;
                end
            end

            // The specification recommends at least 50 us + 16386 ADC clock
            // periods after reset. Twenty milliseconds is safe for the
            // nominal 1.024 MHz ADC clock and for a 1 MHz test clock.
            RESET_WAIT: begin
                CS       <= 1'b1;
                DIN      <= 1'b0;
                SCLK     <= 1'b0;
                nRST     <= 1'b1;
                START    <= 1'b0;
                busy_reg <= 1'b1;

                if (reset_counter == RESET_WAIT_CYCLES - 1) begin
                    reset_counter <= {RESET_COUNTER_WIDTH{1'b0}};
                    busy_reg <= 1'b0;
                    state <= IDLE;
                end else begin
                    reset_counter <= reset_counter + 1'b1;
                end
            end

            IDLE: begin
                CS       <= 1'b1;
                DIN      <= 1'b0;
                SCLK     <= 1'b0;
                nRST     <= 1'b1;
                START    <= 1'b0;
                busy_reg <= 1'b0;

                if (enable && sync) begin
                    busy_reg <= 1'b1;
                    bit_count <= 5'd0;

                    if (channel_choice == 2'b10) begin
                        channel <= 1'b1;
                        tx_shift <= {8'h14, 2'b01, wreg_command};
                    end else begin
                        channel <= 1'b0;
                        tx_shift <= {8'h14, 2'b00, wreg_command};
                    end

                    state <= WREG_SETUP;
                end
            end

            // CPOL=0, CPHA=1. CS is asserted one full clk period before the
            // first SCLK rising edge; at 8 MHz this is 125 ns (> 50 ns).
            WREG_SETUP: begin
                CS        <= 1'b0;
                SCLK      <= 1'b0;
                DIN       <= tx_shift[23];
                bit_count <= 5'd0;
                state     <= WREG_RISE;
            end

            WREG_RISE: begin
                SCLK  <= 1'b1;
                DIN   <= tx_shift[23];
                state <= WREG_FALL;
            end

            // The ADC samples DIN on the falling edge of SCLK. The shift here
            // prepares the next bit, which is driven on the following rise.
            WREG_FALL: begin
                SCLK <= 1'b0;

                if (bit_count == 5'd23) begin
                    state <= WREG_HOLD;
                end else begin
                    bit_count <= bit_count + 1'b1;
                    tx_shift <= {tx_shift[22:0], 1'b0};
                    state <= WREG_RISE;
                end
            end

            WREG_HOLD: begin
                CS            <= 1'b1;
                DIN           <= 1'b0;
                SCLK          <= 1'b0;
                START         <= 1'b1;
                start_counter <= {{(START_COUNTER_WIDTH-1){1'b0}}, 1'b1};
                state         <= START_HIGH;
            end

            START_HIGH: begin
                START <= 1'b1;

                if (start_counter >= START_HIGH_CYCLES) begin
                    START <= 1'b0;
                    start_counter <= {START_COUNTER_WIDTH{1'b0}};
                    state <= WAIT_FOR_DRDY;
                end else begin
                    start_counter <= start_counter + 1'b1;
                end
            end

            WAIT_FOR_DRDY: begin
                CS    <= 1'b1;
                DIN   <= 1'b0;
                SCLK  <= 1'b0;
                START <= 1'b0;

                if (drdy_sync)
                    state <= READ_SETUP;
            end

            READ_SETUP: begin
                CS        <= 1'b0;
                DIN       <= 1'b0;
                SCLK      <= 1'b0;
                bit_count <= 5'd0;
                rx_shift  <= 24'd0;
                state     <= READ_RISE;
            end

            // The ADC changes DOUT on the rising edge of SCLK.
            READ_RISE: begin
                SCLK  <= 1'b1;
                state <= READ_FALL;
            end

            // Sample DOUT half a clock later, on the falling edge.
            READ_FALL: begin
                SCLK <= 1'b0;
                rx_shift <= {rx_shift[22:0], DOUT};

                if (bit_count == 5'd23) begin
                    data_o <= {rx_shift[22:0], DOUT};
                    ch_num <= channel;
                    rd_en <= 1'b1;
                    state <= READ_HOLD;
                end else begin
                    bit_count <= bit_count + 1'b1;
                    state <= READ_RISE;
                end
            end

            READ_HOLD: begin
                CS   <= 1'b1;
                DIN  <= 1'b0;
                SCLK <= 1'b0;

                if (!channel &&
                    ((channel_choice == 2'b00) ||
                     (channel_choice == 2'b11))) begin
                    channel <= 1'b1;
                    bit_count <= 5'd0;
                    tx_shift <= {8'h14, 2'b01, wreg_command};
                    state <= WREG_SETUP;
                end else begin
                    busy_reg <= 1'b0;
                    state <= IDLE;
                end
            end

            default: begin
                state         <= RESET_LOW;
                reset_counter <= {RESET_COUNTER_WIDTH{1'b0}};
                CS            <= 1'b1;
                DIN           <= 1'b0;
                SCLK          <= 1'b0;
                nRST          <= 1'b0;
                START         <= 1'b0;
                busy_reg      <= 1'b1;
            end
        endcase
    end
end

endmodule
