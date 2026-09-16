/*
 * Compact MEZOKIA -> 5510TS028 DAC configuration transmitter.
 * Frame: {STEP_COEFF[2:0], DAC_LIMIT[15:0], WAVE_TRIANGLE,
 *         FALL_RATE[2:0]}, MSB first.
 * Data and frame change on falling edges; the receiver samples rising edges.
 */
module dac_config_tx #(
    parameter integer CLK_FREQ_HZ     = 8_000_000,
    parameter integer REFRESH_FREQ_HZ = 1000
) (
    input  wire        clk,
    input  wire        rst_n,
    input  wire [2:0]  step_coeff,
    input  wire [15:0] dac_limit,
    input  wire        wave_triangle,
    input  wire [2:0]  fall_rate,
    output reg         cfg_data,
    output reg         cfg_frame
);

localparam integer FRAME_BITS = 23;
localparam integer REFRESH_PERIOD_RAW = CLK_FREQ_HZ / REFRESH_FREQ_HZ;
localparam integer REFRESH_PERIOD = (REFRESH_PERIOD_RAW < 1) ? 1 : REFRESH_PERIOD_RAW;

wire [FRAME_BITS-1:0] current_value =
    {step_coeff, dac_limit, wave_triangle, fall_rate};
reg  [FRAME_BITS-1:0] payload;
reg  [FRAME_BITS-1:0] last_sent;
reg  [4:0]            bit_index;
reg  [31:0]           refresh_counter;
reg                   sending;

always @(negedge clk or negedge rst_n) begin
    if (!rst_n) begin
        cfg_data        <= 1'b0;
        cfg_frame       <= 1'b0;
        payload         <= {FRAME_BITS{1'b0}};
        last_sent       <= {FRAME_BITS{1'b0}};
        bit_index       <= 5'd0;
        refresh_counter <= REFRESH_PERIOD - 1;
        sending         <= 1'b0;
    end else if (sending) begin
        if (bit_index == 0) begin
            cfg_data  <= 1'b0;
            cfg_frame <= 1'b0;
            last_sent <= payload;
            sending   <= 1'b0;
        end else begin
            bit_index <= bit_index - 1'b1;
            cfg_data  <= payload[bit_index - 1'b1];
        end
    end else if ((current_value != last_sent) ||
                 (refresh_counter == REFRESH_PERIOD - 1)) begin
        payload         <= current_value;
        bit_index       <= FRAME_BITS - 1;
        cfg_data        <= current_value[FRAME_BITS-1];
        cfg_frame       <= 1'b1;
        refresh_counter <= 32'd0;
        sending         <= 1'b1;
    end else begin
        cfg_data        <= 1'b0;
        cfg_frame       <= 1'b0;
        refresh_counter <= refresh_counter + 1'b1;
    end
end

endmodule
