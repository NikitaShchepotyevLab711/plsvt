// Area-oriented sawtooth/triangle generator. One 898-SYNC period contains
// 897 calculated samples and one wrap sample. A serial adder and restoring
// divider are reused for both rising and falling slopes; no multiplier is used.
module dac_codegen (
    input wire clk,
    input wire rst_l,
    input wire [15:0] limit,
    input wire enable,
    input wire start,
    input wire [2:0] step_coefficent,
    input wire wave_triangle,
    input wire [2:0] fall_rate,
    output reg [15:0] data
);
localparam IDLE = 3'd0, SUM = 3'd1, SUM_END = 3'd2,
           DIVIDE_TEST = 3'd3, DIVIDE_UPDATE = 3'd4,
           ACCUMULATE = 3'd5, PUBLISH = 3'd6;
reg [2:0] state;
reg [9:0] sample_count;
reg new_period;
reg [2:0] interval_count;
reg publish_pending;
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
// Approximate the requested fall/rise ratio with whole SYNC intervals.
// rise_length + fall_length = 897; the 898th SYNC wraps the waveform.
reg [9:0] rise_length;
reg [9:0] fall_length;
always @(*) begin
    case (active_fall_rate)
        3'd0: begin rise_length = 10'd449; fall_length = 10'd448; end
        3'd1: begin rise_length = 10'd598; fall_length = 10'd299; end
        3'd2: begin rise_length = 10'd673; fall_length = 10'd224; end
        3'd3: begin rise_length = 10'd718; fall_length = 10'd179; end
        3'd4: begin rise_length = 10'd747; fall_length = 10'd150; end
        3'd5: begin rise_length = 10'd769; fall_length = 10'd128; end
        3'd6: begin rise_length = 10'd785; fall_length = 10'd112; end
        3'd7: begin rise_length = 10'd797; fall_length = 10'd100; end
    endcase
end
reg [9:0] next_rise_length;
always @(*) begin
    case (fall_rate)
        3'd0: next_rise_length = 10'd449;
        3'd1: next_rise_length = 10'd598;
        3'd2: next_rise_length = 10'd673;
        3'd3: next_rise_length = 10'd718;
        3'd4: next_rise_length = 10'd747;
        3'd5: next_rise_length = 10'd769;
        3'd6: next_rise_length = 10'd785;
        3'd7: next_rise_length = 10'd797;
    endcase
end
// Load the rise divisor only at the period boundary and the fall divisor
// only at the turning point. It stays registered throughout each segment,
// instead of carrying a phase compare into every division iteration.
// Restoring division: remainder is always below the selected divisor.
wire [10:0] trial = {remainder_reg, work_reg[16]} - {1'b0, divisor_reg};
wire [2:0] interval = (step_coefficent == 0) ? 3'd1 : step_coefficent;

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
        interval_count <= 0;
        publish_pending <= 0;
        ramp <= 0;
        active_triangle <= 0;
        active_fall_rate <= 0;
        divisor_reg <= 10'd898;
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
        interval_count <= 0;
        publish_pending <= 0;
        ramp <= 0;
        active_triangle <= 0;
        active_fall_rate <= 0;
        divisor_reg <= 10'd898;
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
                if (sample_count == 10'd897) begin
                    // Always wrap after 898 SYNCs, including a partial last
                    // staircase interval when K does not divide 898.
                    sample_count <= 0;
                    new_period <= 1;
                    interval_count <= 0;
                    ramp <= 0;
                    remainder_reg <= 0;
                    data <= 0;
                end else begin
                    if (new_period) begin
                        new_period <= 0;
                        active_triangle <= wave_triangle;
                        active_fall_rate <= fall_rate;
                        divisor_reg <= wave_triangle ? next_rise_length : 10'd898;
                        falling_reg <= 0;
                    end else if (active_triangle &&
                                 (sample_count == rise_length)) begin
                        divisor_reg <= fall_length;
                        falling_reg <= 1;
                    end
                    sample_count <= sample_count + 1'b1;
                    // In triangle mode always publish the peak and the last
                    // falling sample, even when the staircase interval does
                    // not divide the segment length.
                    publish_pending <= (interval_count >= interval - 1'b1) ||
                        (active_triangle &&
                         ((sample_count == rise_length - 1'b1) ||
                          (sample_count == 10'd896)));
                    if (interval_count >= interval - 1'b1)
                        interval_count <= 0;
                    else
                        interval_count <= interval_count + 1'b1;
                    work_reg <= {7'd0, remainder_reg};
                    bit_count <= 0;
                    carry <= 0;
                    state <= SUM;
                end
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
                if (publish_pending) data <= ramp;
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
