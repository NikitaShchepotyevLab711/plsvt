// Shared-clock serial ADC return link from 5510TC028.
// Frame: {RD_EN, CHANNEL[2:0], DATA_O[15:0]}, MSB first.
module adc_result_rx (
    input wire clk,
    input wire rst_n,
    input wire serial_data,
    input wire serial_frame,
    output reg [15:0] sample_data,
    output reg [2:0] sample_channel,
    output reg sample_valid
);
reg frame_d;
reg [4:0] bit_count;
reg [19:0] shift_data;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        frame_d <= 1'b0;
        bit_count <= 5'd0;
        shift_data <= 20'd0;
        sample_data <= 16'd0;
        sample_channel <= 3'd0;
        sample_valid <= 1'b0;
    end else begin
        frame_d <= serial_frame;
        sample_valid <= 1'b0;
        if (serial_frame) begin
            if (!frame_d) begin
                bit_count <= 5'd1;
                shift_data <= {19'd0, serial_data};
            end else if (bit_count < 5'd20) begin
                bit_count <= bit_count + 1'b1;
                shift_data <= {shift_data[18:0], serial_data};
            end
        end else if (frame_d) begin
            if ((bit_count == 5'd20) && shift_data[19]) begin
                sample_data <= shift_data[15:0];
                sample_channel <= shift_data[18:16];
                sample_valid <= 1'b1;
            end
            bit_count <= 5'd0;
        end
    end
end
endmodule
