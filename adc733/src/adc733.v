module adc733 (
    input  wire        clk,
    input  wire        rst_l,

    // Serial port of 1273PV19T / AD73360.
    input  wire        SCLK,
    input  wire        SDOFS,
    input  wire        SDO,
    output reg         SDIFS,
    output reg         SDI,
    output wire        SE,

    input  wire        sync,
    input  wire [15:0] control_word,
    output wire [2:0]  channel,
    output wire        busy,
    output reg         rd_en,
    output reg         word_sent,
    output reg         operation_mode,
    output reg  [15:0] captured_data
);

localparam [1:0] TX_WAIT_FRAME = 2'd0;
localparam [1:0] TX_FRAME_SYNC = 2'd1;
localparam [1:0] TX_SHIFT      = 2'd2;

reg [1:0]  tx_state;
reg [15:0] tx_shift;
reg [15:0] tx_word;
reg [4:0]  tx_bit_count;
reg        sdofs_sampled;

reg [15:0] rx_shift;
reg [4:0]  rx_bit_count;
reg        rx_active;
reg        capture_pending;
reg        capture_active;

assign SE      = 1'b1;
assign channel = 3'd0; 
assign busy    = (tx_state != TX_WAIT_FRAME) | capture_active;

always @(posedge SCLK or negedge rst_l) begin
    if (!rst_l) begin
        tx_state       <= TX_WAIT_FRAME;
        tx_shift       <= 16'd0;
        tx_word        <= 16'd0;
        tx_bit_count   <= 5'd0;
        SDIFS          <= 1'b0;
        SDI            <= 1'b0;
        word_sent      <= 1'b0;
        operation_mode <= 1'b0;
    end else begin
        word_sent <= 1'b0;
        SDIFS     <= SDOFS;
        case (tx_state)
            TX_WAIT_FRAME: begin
//                SDIFS <= 1'b0;
                SDI   <= 1'b0;

                if (!operation_mode && sdofs_sampled) begin
//                    SDIFS    <= 1'b1;
                    tx_state <= TX_FRAME_SYNC;
                end
            end

            TX_FRAME_SYNC: begin
//                SDIFS        <= 1'b0;
                tx_shift     <= control_word;
                tx_word      <= control_word;
                tx_bit_count <= 5'd0;
                SDI          <= control_word[15];
                tx_state     <= TX_SHIFT;
            end

            TX_SHIFT: begin
//                SDIFS <= 1'b0;

                if (tx_bit_count == 5'd15) begin
                    tx_state  <= TX_WAIT_FRAME;
                    SDI       <= 1'b0;
                    word_sent <= 1'b1;

                    if (tx_word == 16'h8001)
                        operation_mode <= 1'b1;
                end else begin
                    tx_shift     <= {tx_shift[14:0], 1'b0};
                    tx_bit_count <= tx_bit_count + 1'b1;
                    SDI          <= tx_shift[14];
                end
            end

            default: begin
                tx_state <= TX_WAIT_FRAME;
//                SDIFS    <= 1'b0;
                SDI      <= 1'b0;
            end
        endcase
    end
end

always @(negedge SCLK or negedge rst_l) begin
    if (!rst_l) begin
        sdofs_sampled      <= 1'b0;
        rx_shift           <= 16'd0;
        rx_bit_count       <= 5'd0;
        rx_active          <= 1'b0;
        captured_data      <= 16'd0;
        capture_pending    <= 1'b0;
        capture_active     <= 1'b0;
        rd_en              <= 1'b0;
    end else begin
        sdofs_sampled <= SDOFS;
        rd_en         <= 1'b0;

        if (!operation_mode) begin
            rx_shift           <= 16'd0;
            rx_bit_count       <= 5'd0;
            rx_active          <= 1'b0;
            capture_pending    <= 1'b0;
            capture_active     <= 1'b0;
        end else begin
            if (sync)
                capture_pending <= 1'b1;

            if (SDOFS) begin
                rx_shift     <= 16'd0;
                rx_bit_count <= 5'd0;
                rx_active    <= 1'b1;
                if (capture_pending || sync) begin
                    capture_pending    <= 1'b0;
                    capture_active     <= 1'b1;
                end else begin
                    capture_active <= 1'b0;
                end
            end else if (rx_active) begin
                rx_shift <= {rx_shift[14:0], SDO};

                if (rx_bit_count == 5'd15) begin
                    rx_active <= 1'b0;

                    if (capture_active) begin
                        captured_data    <= {rx_shift[14:0], SDO};
                        rd_en            <= 1'b1;
                        capture_active   <= 1'b0;
                    end
                end else begin
                    rx_bit_count <= rx_bit_count + 1'b1;
                end
            end
        end
    end
end

wire unused_clk = clk;

endmodule
