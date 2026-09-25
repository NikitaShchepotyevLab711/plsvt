// Board time in days, milliseconds of the day, and microseconds of the
// millisecond.  The eight-byte USB value is a snapshot; the live clock never
// stops while a packet is being transmitted.
module umio_timer #(
    parameter integer CLK_FREQ_HZ = 8_000_000
) (
    input  wire        clk,
    input  wire        rst_n,
    input  wire [7:0]  time_addr,
    input  wire        time_wr,
    input  wire [7:0]  time_dat,
    input  wire [15:0] time_size,
    input  wire [15:0] byte_number,
    input  wire [15:0] time_byte_num,
    input  wire        time_lock,
    output wire [7:0]  time_data,
    output reg         time_100ms_on,
    output wire [63:0] full_time
);

localparam integer TIME_TICK_US = CLK_FREQ_HZ / 1_000_000;
localparam integer TICK_WIDTH = (TIME_TICK_US > 1) ? $clog2(TIME_TICK_US) : 1;
localparam [31:0] LAST_MS_OF_DAY = 32'd86_399_999;

reg [TICK_WIDTH-1:0] us_divider;
reg [16:0] interval_100ms;
reg [15:0] day_cnt;
reg [31:0] ms_cnt;
reg [15:0] us_cnt;
reg [63:0] write_staging;
reg [63:0] full_time_r;

wire time_wr_val = (time_addr == 8'h00) && time_wr &&
                   (time_size == 16'd8);
wire time_write_commit = time_wr_val && (byte_number == 16'd7);
wire us_tick = (us_divider == TIME_TICK_US - 1);

assign full_time = {day_cnt, ms_cnt, us_cnt};
assign time_data = (time_byte_num < 16'd8)
    ? full_time_r[8*(8-time_byte_num)-1 -: 8] : 8'h00;

// The CRC-checked decoder delivers bytes in order.  Commit all eight bytes
// together so a partial write cannot expose a half-old time to the counter.
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        write_staging <= 64'd0;
    end else if (time_wr_val) begin
        case (byte_number)
            16'd0: write_staging[63:56] <= time_dat;
            16'd1: write_staging[55:48] <= time_dat;
            16'd2: write_staging[47:40] <= time_dat;
            16'd3: write_staging[39:32] <= time_dat;
            16'd4: write_staging[31:24] <= time_dat;
            16'd5: write_staging[23:16] <= time_dat;
            16'd6: write_staging[15:8]  <= time_dat;
            default: ;
        endcase
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        us_divider <= {TICK_WIDTH{1'b0}};
        day_cnt    <= 16'd0;
        ms_cnt     <= 32'd0;
        us_cnt     <= 16'd0;
    end else begin
        if (time_write_commit || us_tick)
            us_divider <= {TICK_WIDTH{1'b0}};
        else
            us_divider <= us_divider + 1'b1;

        if (time_write_commit) begin
            day_cnt <= write_staging[63:48];
            ms_cnt  <= write_staging[47:16];
            us_cnt  <= {write_staging[15:8], time_dat};
        end else if (us_tick) begin
            if (us_cnt >= 16'd999) begin
                us_cnt <= 16'd0;
                if (ms_cnt >= LAST_MS_OF_DAY) begin
                    ms_cnt  <= 32'd0;
                    day_cnt <= day_cnt + 1'b1;
                end else begin
                    ms_cnt <= ms_cnt + 1'b1;
                end
            end else begin
                us_cnt <= us_cnt + 1'b1;
            end
        end
    end
end

// This free-running service interval is independent of software setting the
// time.  At 8 MHz it issues one clock-wide pulse every 100 ms.
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        interval_100ms <= 17'd0;
        time_100ms_on <= 1'b0;
    end else begin
        time_100ms_on <= 1'b0;
        if (us_tick) begin
            if (interval_100ms == 17'd99_999) begin
                interval_100ms <= 17'd0;
                time_100ms_on <= 1'b1;
            end else begin
                interval_100ms <= interval_100ms + 1'b1;
            end
        end
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        full_time_r <= 64'd0;
    else if (!time_lock)
        full_time_r <= full_time;
end

endmodule
