/*
 * Starts one cyclic readback pass and presents one register at a time to the
 * FTDI encoder. Address sizes are defined here because they are part of the
 * device protocol.
 */
module rd_addr_controller #(
    parameter [7:0] FIRST_ADDR = 8'h00,
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
    output reg  [15:0] byte_number,
    output wire        data_lock
);

localparam [1:0] IDLE        = 2'd0;
localparam [1:0] START       = 2'd1;
localparam [1:0] WAIT_PACKET = 2'd2;

reg [1:0] state;
reg pending_pass;
assign data_lock = (state != IDLE);

always @(*) begin
    case (addr)
        8'h00: data_size = 16'd8;
        8'h01: data_size = 16'd3;
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
        pending_pass <= 1'b0;
    end else begin
        start_packet <= 1'b0;
        if (begin_pulse)
            pending_pass <= 1'b1;

        case (state)
            IDLE: begin
                byte_number <= 16'd0;
                if (begin_pulse || pending_pass) begin
                    addr  <= FIRST_ADDR;
                    state <= START;
                    pending_pass <= 1'b0;
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
                        // Go through IDLE even with a queued pass: the time
                        // snapshot needs one unlocked clock to refresh.
                        state <= IDLE;
                    end else begin
                        // Skip unused addresses between service and DAC/ADC
                        // registers; the service packets always go first.
                        if (addr == 8'h01)
                            addr <= 8'h10;
                        else if (addr == 8'h13)
                            addr <= 8'h20;
                        else
                            addr <= addr + 1'b1;
                        state <= START;
                    end
                end
            end

            default: state <= IDLE;
        endcase
    end
end

endmodule
