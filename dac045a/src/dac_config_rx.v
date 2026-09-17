/*
 * Receiver for the compact MEZOKIA -> 5510TS028 DAC configuration link.
 * The 23-bit frame is {STEP_COEFF[2:0], DAC_LIMIT[15:0],
 * WAVE_TRIANGLE, FALL_RATE[2:0]}, MSB first.
 * STEP_COEFF value 0 selects one update/SYNC; value 1 selects ten.
 * A malformed (short or long) frame is ignored, and both values are updated
 * together only after a complete valid frame.
 */
module dac_config_rx (
    input  wire        clk,
    input  wire        rst_l,
    input  wire        cfg_data,
    input  wire        cfg_frame,
    output reg         step_coeff,
    output reg  [15:0] dac_limit,
    output reg         wave_triangle,
    output reg  [2:0]  fall_rate
);

localparam integer FRAME_BITS = 23;

reg [FRAME_BITS-1:0] shift_reg;
reg [4:0]            bit_count;
reg                  frame_d;
reg                  frame_error;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        step_coeff <= 1'b0;
        dac_limit  <= 16'hFFFF;
        wave_triangle <= 1'b0;
        fall_rate <= 3'd0;
        shift_reg  <= {FRAME_BITS{1'b0}};
        bit_count  <= 5'd0;
        frame_d    <= 1'b0;
        frame_error <= 1'b0;
    end else begin
        frame_d <= cfg_frame;

        if (cfg_frame) begin
            if (!frame_d) begin
                shift_reg   <= {{(FRAME_BITS-1){1'b0}}, cfg_data};
                bit_count   <= 5'd1;
                frame_error <= 1'b0;
            end else if (bit_count < FRAME_BITS) begin
                shift_reg <= {shift_reg[FRAME_BITS-2:0], cfg_data};
                bit_count <= bit_count + 1'b1;
            end else begin
                frame_error <= 1'b1;
            end
        end else if (frame_d) begin
            if ((bit_count == FRAME_BITS) && !frame_error) begin
                // MEZOKIA sends STEP_COEFF as 3'b000 or 3'b001.
                step_coeff <= shift_reg[20];
                dac_limit  <= shift_reg[19:4];
                wave_triangle <= shift_reg[3];
                fall_rate <= shift_reg[2:0];
            end
            bit_count   <= 5'd0;
            frame_error <= 1'b0;
        end
    end
end

endmodule
