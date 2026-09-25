// 5510TC028 -> MEZOKIA: {RD_EN=1, CHANNEL[2:0], DATA_O[15:0]}, MSB first.
// FRAME covers exactly 20 bits. Change outputs on the falling 8 MHz edge;
// MEZOKIA samples on the rising edge of the shared clock.
module adc_result_tx (
    input wire clk,
    input wire rst_l,
    input wire [15:0] sample_data,
    input wire [2:0] sample_channel,
    input wire sample_valid,
    output reg serial_data,
    output reg serial_frame
);
reg [19:0] payload;
reg [4:0] bits_left;
reg sending;

always @(negedge clk or negedge rst_l) begin
    if (!rst_l) begin
        payload <= 20'd0;
        bits_left <= 5'd0;
        sending <= 1'b0;
        serial_data <= 1'b0;
        serial_frame <= 1'b0;
    end else if (sending) begin
        if (bits_left == 0) begin
            sending <= 1'b0;
            serial_data <= 1'b0;
            serial_frame <= 1'b0;
        end else begin
            bits_left <= bits_left - 1'b1;
            serial_data <= payload[bits_left - 1'b1];
        end
    end else if (sample_valid) begin
        payload <= {1'b1, sample_channel, sample_data};
        bits_left <= 5'd19;
        sending <= 1'b1;
        serial_data <= 1'b1;
        serial_frame <= 1'b1;
    end
end
endmodule
