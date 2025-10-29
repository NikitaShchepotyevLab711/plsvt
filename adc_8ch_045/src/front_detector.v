module front_detector (
    input  wire clk,
    input  wire rst_l,
    input  wire pulse_slow,
    output wire pulse_fast
);
    
reg [2:0] sync_pulse;
always @(posedge clk or negedge rst_l) begin
    if (!rst_l) 
        sync_pulse <= 1'b0;
    else
        sync_pulse <= {sync_pulse[1:0], pulse_slow};
end

assign pulse_fast = sync_pulse[1] & ~sync_pulse[2];

endmodule