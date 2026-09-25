/*
 * Starts one cyclic readback pass and presents one register at a time to the
 * FTDI encoder. Address sizes are defined here because they are part of the
 * device protocol.
 */
module rd_addr_controller #(
    parameter [7:0] FIRST_ADDR = 8'h10,
    parameter [7:0] LAST_ADDR  = 8'h20
) (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        begin_pulse,
    input  wire        packet_done,
    input  wire        data_read,
    output reg         start_packet,
    output reg  [7:0]  addr,
    output reg  [15:0] data_size,
    output reg  [15:0] byte_number
);

localparam [1:0] IDLE        = 2'd0;
localparam [1:0] START       = 2'd1;
localparam [1:0] WAIT_PACKET = 2'd2;

reg [1:0] state;

always @(*) begin
    case (addr)
        8'h10: data_size = 16'd1;
        8'h11: data_size = 16'd2;
        8'h12: data_size = 16'd1;
        8'h13: data_size = 16'd1;
        8'h20: data_size = 16'd2;
        default: data_size = 16'd1;
    endcase
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state        <= IDLE;
        start_packet <= 1'b0;
        addr         <= FIRST_ADDR;
        byte_number  <= 16'd0;
    end else begin
        start_packet <= 1'b0;

        case (state)
            IDLE: begin
                byte_number <= 16'd0;
                if (begin_pulse) begin
                    addr  <= FIRST_ADDR;
                    state <= START;
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
                    if (addr == LAST_ADDR) begin
                        addr  <= FIRST_ADDR;
                        state <= IDLE;
                    end else begin
                        // 0x14..0x1f are unallocated, not readback registers.
                        addr  <= (addr == 8'h13) ? 8'h20 : addr + 1'b1;
                        state <= START;
                    end
                end
            end

            default: state <= IDLE;
        endcase
    end
end

endmodule
