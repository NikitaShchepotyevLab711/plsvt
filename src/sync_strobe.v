module sync_strobe (
    input wire clk,
    input wire rst_l,
    input wire sec_mark,
    output reg strobe
);

localparam CLK_FREQ = 12_000_000;  
localparam STROBE_FREQ = 120;      

localparam COUNTER_MAX = CLK_FREQ / STROBE_FREQ - 1;
localparam COUNTER_WIDTH = $clog2(COUNTER_MAX + 1);

reg [COUNTER_WIDTH-1:0] counter;

reg state;
localparam IDLE = 0;
localparam WORK = 1;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        counter <= {COUNTER_WIDTH{1'b0}};
        strobe  <= 1'b0;
        state   <= 1'b0;
    end else begin

        case (state)
            IDLE: begin
                state <= sec_mark ? WORK : IDLE;
                strobe <= sec_mark;
            end 

            WORK:   begin
                if (sec_mark) begin
                    strobe  <= 1'b1;
                    counter <= {COUNTER_WIDTH{1'b0}};
                end 
                else begin
                    if (counter == COUNTER_MAX) begin
                        counter <= {COUNTER_WIDTH{1'b0}};
                        strobe  <= 1'b1;
                    end else begin
                        counter <= counter + 1;
                        strobe  <= 1'b0;
                    end
                end
            end

            default: ;
        endcase

    end
end

endmodule
