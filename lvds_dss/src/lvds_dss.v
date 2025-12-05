module lvds_dss #(
    parameter BIT_RATE     = 9600, 
    parameter CLK_HZ       = 12_000_000,
    parameter PAYLOAD_BITS = 8,
    parameter STOP_BITS    = 1
)  (
    input  wire        clk,
    input  wire        rst_l,
    input  wire        sync,

    input  wire        RO,
    output wire        RE,
    output wire        DI,
    output wire        DE,

    output wire [7:0] data_o,
    output reg  [2:0] val_num,
    output wire       byte_received,
    output wire       byte_sent
);
    
assign RE = !DE;

always @(posedge clk or negedge rst_l) begin : uart_value_num_counting
    if (!rst_l) begin
        val_num <= 3'b0;
    end
    else begin
        if (val_num < 3'h5) begin
            if (byte_received)
                val_num <= val_num + 1'b1;
        end
    end
end

uart_rx #(
	.BIT_RATE     (BIT_RATE),
	.CLK_HZ       (CLK_HZ),
	.PAYLOAD_BITS (PAYLOAD_BITS),
	.STOP_BITS    (STOP_BITS)
	) uart_rx_inst (
	.clk          (clk),
	.resetn       (rst_l),
	.uart_rxd     (RO),
	.uart_rx_ready(byte_received),
    .uart_rx_data (data_o) 
);

uart_tx #(
	.BIT_RATE     (BIT_RATE),
	.CLK_HZ       (CLK_HZ),
	.PAYLOAD_BITS (PAYLOAD_BITS),
	.STOP_BITS    (STOP_BITS)
	) uart_tx_inst (
    .clk         (clk),
    .resetn      (rst_l),
    .uart_txd    (DI),
    .uart_tx_busy(DE),
    .byte_sent   (byte_sent),
    .uart_tx_en  (sync),
    .uart_tx_data(8'b1)
);

endmodule