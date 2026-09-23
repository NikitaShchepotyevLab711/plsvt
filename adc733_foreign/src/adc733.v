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
reg [2:0]  next_channel;
reg [2:0]  rx_channel;
reg [2:0]  captured_channel;
reg        capture_pending;
reg        capture_active;
reg        store_current_word;

assign SE      = 1'b1;
assign channel = captured_channel;
assign busy    = (tx_state != TX_WAIT_FRAME) | capture_active;

// SDIFS is a one-SCLK-wide preamble: it is sampled one falling edge before
// the falling edge that samples the first data bit (MSB). SDI is changed on
// rising edges so that it is stable before every falling sampling edge.
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

        case (tx_state)
            TX_WAIT_FRAME: begin
                SDIFS <= 1'b0;
                SDI   <= 1'b0;

                // SDOFS is sampled on the falling edge below, away from
                // the edge on which the ADC changes this output.
                if (!operation_mode && sdofs_sampled) begin
                    // Do not put D15 on SDI yet. The ADC uses this complete
                    // SCLK period only to recognize the frame sync.
                    SDIFS    <= 1'b1;
                    tx_state <= TX_FRAME_SYNC;
                end
            end

            TX_FRAME_SYNC: begin
                // Latch the word only after the frame-sync period. This also
                // gives the wrapper time to advance config_index after the
                // preceding word and prevents the first word being repeated.
                SDIFS        <= 1'b0;
                tx_shift     <= control_word;
                tx_word      <= control_word;
                tx_bit_count <= 5'd0;
                SDI          <= control_word[15];
                tx_state     <= TX_SHIFT;
            end

            TX_SHIFT: begin
                SDIFS <= 1'b0;

                if (tx_bit_count == 5'd15) begin
                    tx_state  <= TX_WAIT_FRAME;
                    SDI       <= 1'b0;
                    word_sent <= 1'b1;

                    // Check the latched word, not the live control_word bus:
                    // config_index may already point at the following word.
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
                SDIFS    <= 1'b0;
                SDI      <= 1'b0;
            end
        endcase
    end
end

// The ADC changes SDO and SDOFS after the rising edge of SCLK. SDOFS is a
// one-SCLK preamble, therefore its falling sampling edge only arms the
// receiver. D15 is sampled on the following falling edge.
always @(negedge SCLK or negedge rst_l) begin
    if (!rst_l) begin
        sdofs_sampled      <= 1'b0;
        rx_shift           <= 16'd0;
        rx_bit_count       <= 5'd0;
        rx_active          <= 1'b0;
        next_channel       <= 3'd0;
        rx_channel         <= 3'd0;
        captured_channel   <= 3'd0;
        captured_data      <= 16'd0;
        capture_pending    <= 1'b0;
        capture_active     <= 1'b0;
        store_current_word <= 1'b0;
        rd_en              <= 1'b0;
    end else begin
        sdofs_sampled <= SDOFS;
        rd_en         <= 1'b0;

        if (!operation_mode) begin
            rx_shift           <= 16'd0;
            rx_bit_count       <= 5'd0;
            rx_active          <= 1'b0;
            next_channel       <= 3'd0;
            capture_pending    <= 1'b0;
            capture_active     <= 1'b0;
            store_current_word <= 1'b0;
        end else begin
            if (sync)
                capture_pending <= 1'b1;

            if (SDOFS) begin
                rx_shift     <= 16'd0;
                rx_bit_count <= 5'd0;
                rx_active    <= 1'b1;
                rx_channel   <= next_channel;

                if (next_channel == 3'd5)
                    next_channel <= 3'd0;
                else
                    next_channel <= next_channel + 1'b1;

                // Start a six-channel acquisition only at channel 1.
                if ((next_channel == 3'd0) &&
                    (capture_pending || sync)) begin
                    capture_pending    <= 1'b0;
                    capture_active     <= 1'b1;
                    store_current_word <= 1'b1;
                end else begin
                    store_current_word <= capture_active;
                end
            end else if (rx_active) begin
                rx_shift <= {rx_shift[14:0], SDO};

                if (rx_bit_count == 5'd15) begin
                    rx_active <= 1'b0;

                    if (store_current_word) begin
                        captured_data    <= {rx_shift[14:0], SDO};
                        captured_channel <= rx_channel;
                        rd_en            <= 1'b1;

                        if (rx_channel == 3'd5)
                            capture_active <= 1'b0;
                    end
                end else begin
                    rx_bit_count <= rx_bit_count + 1'b1;
                end
            end
        end
    end
end

// clk is retained in the interface because this module is also instantiated
// by the complete project; serial transfers themselves are clocked by SCLK.
wire unused_clk = clk;

endmodule
