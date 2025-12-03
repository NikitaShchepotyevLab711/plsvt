module lvds_dss (
    input  wire        clk,
    input  wire        rst_l,
    input  wire        sync,

    input  wire        RO,
    output reg         RE,
    output reg         DI,
    output reg         DE,

    output wire [11:0] data_o,
    output reg  [2:0]  val_num,
    output wire        uart_ready
);
    
reg        sync_reg;
reg        sync_reg2;

// передача импулсьа sync в ДСС //
always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        sync_reg  <= 1'b0;
        sync_reg2 <= 1'b0;
        DE        <= 1'b0;
        DI        <= 1'b0;
        RE        <= 1'b0;
    end
    else begin
        sync_reg <= sync;
        sync_reg2 <= sync_reg;
        DE <= sync | sync_reg | sync_reg2; // DE втрое длиннее DI для надежности 
        DI <= sync_reg;
        RE <= !DE;
    end
end

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        val_num <= 3'b0;
    end
    else begin
        if (uart_ready)
            val_num <= val_num + 1'b1;
    end
end

uart_rx #(
	.BIT_RATE     (9600),
	.CLK_HZ       (12_000_000),
	.PAYLOAD_BITS (12),
	.STOP_BITS    (1)
	) uart_rx_inst (
	.clk          (clk),
	.resetn       (rst_l),
	.uart_rxd     (RO),
	.uart_rx_ready(uart_ready),
    .uart_rx_data (data_o) 
);

endmodule