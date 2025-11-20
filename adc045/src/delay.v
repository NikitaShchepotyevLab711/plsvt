module delay #(
    parameter FREQ_MHZ = 12,      
    parameter DELAY_MS = 5        
) (
    input  wire clk,        
    input  wire rst_l,  
    input  wire enable,       
    output reg  delay_done
);

localparam PRESCALER = 64;
localparam SCALED_FREQ = FREQ_MHZ * 1000 / PRESCALER;
localparam COUNTER_MAX = SCALED_FREQ * DELAY_MS - 1;
localparam COUNTER_WIDTH = $clog2(COUNTER_MAX + 1); 
localparam PRESCALER_WIDTH = $clog2(PRESCALER); 

reg [PRESCALER_WIDTH-1:0] prescaler;
reg [COUNTER_WIDTH-1:0] counter;
wire prescaler_tick;

assign prescaler_tick = (prescaler == PRESCALER - 1);

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        prescaler <= 0;
    end else if (enable) begin
        if (prescaler_tick) begin
            prescaler <= 0;
        end else begin
            prescaler <= prescaler + 1;
        end
    end else begin
        prescaler <= 0;
    end
end

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        counter <= 0;
        delay_done <= 1'b0;
    end else if (enable && prescaler_tick) begin
        if (counter == COUNTER_MAX) begin
            counter <= 0;
            delay_done <= 1'b1;
        end else 
            counter <= counter + 1;
    end
end

endmodule