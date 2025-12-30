module pulse_extender (
    input wire clk,
    input wire rst_l,
    input wire pulse,
    output wire extended_pulse
);

reg [1:0] pulse_shift;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l)
        pulse_shift <= 3'b0;
    else 
        pulse_shift <= {pulse_shift[0], pulse};
end

assign extended_pulse = |pulse_shift;
    
endmodule