module delay_start #(
    parameter FREQ_MHZ = 50,      
    parameter DELAY_US = 1        
) (
    input  wire clk,              
    input  wire rst_l,    
    input  wire enable,        
    output wire  delay_done       
);

localparam COUNTER_MAX = FREQ_MHZ * DELAY_US - 1;
localparam COUNTER_WIDTH = $clog2(COUNTER_MAX + 1);

reg [COUNTER_WIDTH-1:0] counter;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        counter <= 0;
    end else if (enable)begin
        if (counter == COUNTER_MAX) begin
        end else begin
            counter <= counter + 1;
        end
    end 
    else
        counter <= 1'b0;
end

assign delay_done = (counter == COUNTER_MAX);

endmodule