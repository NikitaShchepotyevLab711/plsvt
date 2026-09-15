// Area-oriented ramp: floor(sample * amplitude / 898), sample = 0..897.
// Division remainder is carried between SYNC pulses; no multiplier is used.
module dac_codegen (
    input wire clk,
    input wire rst_l,
    input wire [15:0] limit,
    input wire enable,
    input wire start,
    input wire [2:0] step_coefficent,
    output reg [15:0] data
);
localparam IDLE = 3'd0, SUM = 3'd1, SUM_END = 3'd2,
           DIVIDE = 3'd3, ACCUMULATE = 3'd4, PUBLISH = 3'd5;
reg [2:0] state;
reg [9:0] sample_count;
reg [2:0] interval_count;
reg publish_pending;
reg [15:0] amplitude;
reg [15:0] ramp;
reg [16:0] work_reg;
reg [9:0] remainder_reg;
reg [4:0] bit_count;
reg carry;

// The same one-bit adder serves the numerator and ramp accumulation.
wire add_a = (state == SUM) ? work_reg[0] : ramp[0];
wire add_b = (state == SUM) ? amplitude[0] : work_reg[0];
wire [1:0] bit_sum = {1'b0, add_a} + {1'b0, add_b} + carry;
// Restoring division: remainder is always < 898 before shifting.
wire [10:0] trial = {remainder_reg, work_reg[16]} - 11'd898;
wire [2:0] interval = (step_coefficent == 0) ? 3'd1 : step_coefficent;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        state <= IDLE;
        sample_count <= 0;
        interval_count <= 0;
        publish_pending <= 0;
        amplitude <= 0;
        ramp <= 0;
        work_reg <= 0;
        remainder_reg <= 0;
        bit_count <= 0;
        carry <= 0;
        data <= 0;
    end else if (!enable) begin
        state <= IDLE;
        sample_count <= 0;
        interval_count <= 0;
        publish_pending <= 0;
        amplitude <= 0;
        ramp <= 0;
        work_reg <= 0;
        remainder_reg <= 0;
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
                    interval_count <= 0;
                    ramp <= 0;
                    remainder_reg <= 0;
                    data <= 0;
                end else begin
                    if (sample_count == 0)
                        amplitude <= limit;
                    sample_count <= sample_count + 1'b1;
                    publish_pending <= (interval_count >= interval - 1'b1);
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
                // Rotate amplitude through the serial adder; after 16 clocks
                // it is restored, so no second amplitude register is needed.
                amplitude <= {amplitude[0], amplitude[15:1]};
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
                state <= DIVIDE;
            end
            DIVIDE: begin
                if (trial[10])
                    remainder_reg <= {remainder_reg[8:0], work_reg[16]};
                else
                    remainder_reg <= trial[9:0];
                work_reg <= {work_reg[15:0], !trial[10]};
                bit_count <= bit_count + 1'b1;
                if (bit_count == 16) begin
                    bit_count <= 0;
                    state <= ACCUMULATE;
                end
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
// One calculation needs 51 clocks after start (< 6.5 us at 8 MHz).
// start must be a one-clock pulse, with >= 52 clocks between pulses.
// SPI consumes the previous completed code on SYNC, as in the original top.
endmodule
