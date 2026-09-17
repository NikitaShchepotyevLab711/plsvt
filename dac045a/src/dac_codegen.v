// Area-oriented sawtooth/triangle generator. The rising edge always occupies
// 96 SYNC intervals. STEP_COEFFICENT selects 1 or 10 DAC updates per SYNC;
// the number of samples and the divisor grow together, so waveform timing and
// amplitude do not change. A serial adder and restoring divider are reused for
// both slopes; no multiplier is used.
module dac_codegen (
    input wire clk,
    input wire rst_l,
    input wire [15:0] limit,
    input wire enable,
    input wire start,
    input wire step_coefficent,
    input wire wave_triangle,
    input wire [2:0] fall_rate,
    output reg [15:0] data,
    output reg update_mode
);
localparam IDLE = 3'd0, SUM = 3'd1, SUM_END = 3'd2,
           DIVIDE_TEST = 3'd3, DIVIDE_UPDATE = 3'd4,
           ACCUMULATE = 3'd5, PUBLISH = 3'd6;
reg [2:0] state;
reg [10:0] sample_count;
reg new_period;
reg cycle_end_pending;
reg [15:0] amplitude;
reg [15:0] ramp;
reg active_triangle;
reg [2:0] active_fall_rate;
reg [9:0] divisor_reg;
reg falling_reg;
reg [16:0] work_reg;
reg [9:0] remainder_reg;
reg [10:0] trial_reg;
reg [4:0] bit_count;
reg carry;

// The same one-bit adder serves the numerator and ramp accumulation.
wire add_a = (state == SUM) ? work_reg[0] : ramp[0];
// With subtraction selected, complement the quotient bits and start the
// accumulation carry at one (two's complement).
wire add_b = (state == SUM) ? amplitude[0] :
             (falling_reg ? ~work_reg[0] : work_reg[0]);
wire [1:0] bit_sum = {1'b0, add_a} + {1'b0, add_b} + carry;
localparam [9:0] RISE_LENGTH_1X  = 10'd96;
localparam [9:0] RISE_LENGTH_10X = 10'd960;

// Register values: 0 = one update/SYNC, 1 = ten updates/SYNC.
wire requested_update_mode = step_coefficent;
wire [9:0] rise_length =
    update_mode ? RISE_LENGTH_10X : RISE_LENGTH_1X;

// Falling-time gradation in whole 1/32-second intervals.
reg [6:0] fall_base_length;
always @(*) begin
    case (active_fall_rate)
        3'd0: fall_base_length = 7'd96;
        3'd1: fall_base_length = 7'd85;
        3'd2: fall_base_length = 7'd60;
        3'd3: fall_base_length = 7'd45;
        3'd4: fall_base_length = 7'd30;
        3'd5: fall_base_length = 7'd20;
        3'd6: fall_base_length = 7'd10;
        3'd7: fall_base_length = 7'd5;
    endcase
end
wire [9:0] fall_base_ext = {3'b000, fall_base_length};
wire [9:0] fall_length = update_mode ?
    ((fall_base_ext << 3) + (fall_base_ext << 1)) : fall_base_ext;
wire [10:0] period_length = active_triangle ?
    ({1'b0, rise_length} + {1'b0, fall_length}) :
    {1'b0, rise_length};
wire cycle_last = (sample_count == period_length - 1'b1);
// Load the rise divisor only at the period boundary and the fall divisor
// only at the turning point. It stays registered throughout each segment,
// instead of carrying a phase compare into every division iteration.
// Restoring division: remainder is always below the selected divisor.
wire [10:0] trial = {remainder_reg, work_reg[16]} - {1'b0, divisor_reg};
// Keep the rotating amplitude register out of the ten-bit sample-counter
// decode. new_period is asserted at reset/wrap and consumed on the next
// calculated SYNC sample.
always @(posedge clk or negedge rst_l) begin
    if (!rst_l)
        amplitude <= 0;
    else if (!enable)
        amplitude <= 0;
    else if (state == SUM)
        amplitude <= {amplitude[0], amplitude[15:1]};
    else if ((state == IDLE) && start && new_period)
        amplitude <= limit;
end

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        state <= IDLE;
        sample_count <= 0;
        new_period <= 1;
        cycle_end_pending <= 0;
        ramp <= 0;
        active_triangle <= 0;
        active_fall_rate <= 0;
        divisor_reg <= RISE_LENGTH_1X;
        update_mode <= 1'b0;
        falling_reg <= 0;
        work_reg <= 0;
        remainder_reg <= 0;
        trial_reg <= 0;
        bit_count <= 0;
        carry <= 0;
        data <= 0;
    end else if (!enable) begin
        state <= IDLE;
        sample_count <= 0;
        new_period <= 1;
        cycle_end_pending <= 0;
        ramp <= 0;
        active_triangle <= 0;
        active_fall_rate <= 0;
        divisor_reg <= RISE_LENGTH_1X;
        update_mode <= 1'b0;
        falling_reg <= 0;
        work_reg <= 0;
        remainder_reg <= 0;
        trial_reg <= 0;
        bit_count <= 0;
        carry <= 0;
        data <= 0;
    end else begin
        case (state)
            IDLE: if (start) begin
                if (new_period) begin
                    new_period <= 0;
                    active_triangle <= wave_triangle;
                    active_fall_rate <= fall_rate;
                    update_mode <= requested_update_mode;
                    divisor_reg <= requested_update_mode ?
                        RISE_LENGTH_10X : RISE_LENGTH_1X;
                    falling_reg <= 0;
                end else if (active_triangle &&
                             (sample_count == rise_length)) begin
                    divisor_reg <= fall_length;
                    falling_reg <= 1;
                end

                cycle_end_pending <= cycle_last;
                if (cycle_last) begin
                    sample_count <= 0;
                    new_period <= 1;
                end else begin
                    sample_count <= sample_count + 1'b1;
                end
                work_reg <= {7'd0, remainder_reg};
                bit_count <= 0;
                carry <= 0;
                state <= SUM;
            end
            SUM: begin
                // The same separate amplitude register rotates and restores
                // itself after 16 clocks (no second register is needed).
                work_reg <= {1'b0, bit_sum[0], work_reg[15:1]};
                carry <= bit_sum[1];
                bit_count <= bit_count + 1'b1;
                if (bit_count == 15) state <= SUM_END;
            end
            SUM_END: begin
                work_reg[16] <= carry;
                remainder_reg <= 0;
                bit_count <= 0;
                carry <= 0;
                state <= DIVIDE_TEST;
            end
            DIVIDE_TEST: begin
                trial_reg <= trial;
                state <= DIVIDE_UPDATE;
            end
            DIVIDE_UPDATE: begin
                if (trial_reg[10])
                    remainder_reg <= {remainder_reg[8:0], work_reg[16]};
                else
                    remainder_reg <= trial_reg[9:0];
                work_reg <= {work_reg[15:0], !trial_reg[10]};
                bit_count <= bit_count + 1'b1;
                if (bit_count == 16) begin
                    bit_count <= 0;
                    carry <= falling_reg;
                    state <= ACCUMULATE;
                end else state <= DIVIDE_TEST;
            end
            ACCUMULATE: begin
                ramp <= {bit_sum[0], ramp[15:1]};
                work_reg <= {1'b0, work_reg[16:1]};
                carry <= bit_sum[1];
                bit_count <= bit_count + 1'b1;
                if (bit_count == 15) state <= PUBLISH;
            end
            PUBLISH: begin
                data <= ramp;
                if (cycle_end_pending) begin
                    ramp <= 0;
                    remainder_reg <= 0;
                end
                state <= IDLE;
            end
            default: state <= IDLE;
        endcase
    end
end
// One calculation needs about 68 clocks after start (< 9 us at 8 MHz).
// start must be a one-clock pulse, with >= 69 clocks between pulses.
// SPI consumes the previous completed code on SYNC, as in the original top.
endmodule
