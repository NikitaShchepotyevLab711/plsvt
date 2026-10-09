/*
 * Independent slow register passes and fast ADC reports share one encoder.
 * FIRST_ADDR/LAST_ADDR delimit only the slow pass; 0x20 is fast-only.
 * Arbitration happens between complete packets. One pending request of each
 * kind is retained during backpressure (coalesced, not an ADC sample FIFO).
 */
module rd_addr_controller #(
    parameter [7:0] FIRST_ADDR = 8'h00,
    parameter [7:0] LAST_ADDR  = 8'h13
) (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        begin_pulse,
    input  wire        begin_pulse_adc,
    input  wire        packet_done,
    input  wire        data_read,
    output reg         start_packet,
    output reg  [7:0]  addr,
    output reg  [15:0] data_size,
    output reg  [15:0] byte_number,
    output wire        data_lock
);

localparam [1:0] IDLE        = 2'd0;
localparam [1:0] START       = 2'd1;
localparam [1:0] WAIT_PACKET = 2'd2;

reg [1:0] state;
reg pending_pass;
reg pending_adc;
reg slow_active;
reg [7:0] slow_addr;
reg last_was_adc;
wire adc_requested = begin_pulse_adc || pending_adc;
wire slow_requested = slow_active || begin_pulse || pending_pass;
// Freeze the time snapshot for both standalone time and ADC+time packets.
assign data_lock = (state != IDLE) && ((addr == 8'h00) || (addr == 8'h20));

always @(*) begin
    case (addr)
        8'h00: data_size = 16'd8;
        8'h01: data_size = 16'd3;
        8'h10: data_size = 16'd1;
        8'h11: data_size = 16'd2;
        8'h12: data_size = 16'd1;
        8'h13: data_size = 16'd1;
        8'h20: data_size = 16'd10;
        default: data_size = 16'd1;
    endcase
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state        <= IDLE;
        start_packet <= 1'b0;
        addr         <= FIRST_ADDR;
        byte_number  <= 16'd0;
        pending_pass <= 1'b0;
        pending_adc  <= 1'b0;
        slow_active  <= 1'b0;
        slow_addr    <= FIRST_ADDR;
        last_was_adc <= 1'b0;
    end else begin
        start_packet <= 1'b0;
        if (begin_pulse)
            pending_pass <= 1'b1;
        if (begin_pulse_adc)
            pending_adc <= 1'b1;

        case (state)
            IDLE: begin
                byte_number <= 16'd0;
                // ADC wins a simultaneous request, but not twice in a row
                // when slow work is waiting: neither stream can starve.
                if (adc_requested && (!last_was_adc || !slow_requested)) begin
                    addr <= 8'h20;
                    state <= START;
                    pending_adc <= 1'b0;
                    last_was_adc <= 1'b1;
                end else if (slow_active) begin
                    addr <= slow_addr;
                    state <= START;
                    last_was_adc <= 1'b0;
                end else if (begin_pulse || pending_pass) begin
                    addr  <= FIRST_ADDR;
                    state <= START;
                    pending_pass <= 1'b0;
                    slow_active <= 1'b1;
                    slow_addr <= FIRST_ADDR;
                    last_was_adc <= 1'b0;
                end
            end

            START: begin
                start_packet <= 1'b1;
                state        <= WAIT_PACKET;
            end

            WAIT_PACKET: begin
                if (data_read)
                    byte_number <= byte_number + 1'b1;

                if (packet_done) begin
                    byte_number <= 16'd0;
                    state <= IDLE;
                    if (addr != 8'h20) begin
                        if (addr == LAST_ADDR) begin
                            slow_active <= 1'b0;
                            slow_addr <= FIRST_ADDR;
                        end else if (addr == 8'h01) begin
                            slow_addr <= 8'h10;
                        end else begin
                            slow_addr <= addr + 1'b1;
                        end
                    end
                end
            end

            default: state <= IDLE;
        endcase
    end
end

endmodule
