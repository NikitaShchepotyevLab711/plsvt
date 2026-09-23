module pulse_to_toggle
(
    input      clk,
    input      rst,
    input      pulse,
    input      reset_toggle,
    output reg toggle
);

    always @ (posedge clk or negedge rst) begin
        if (!rst)
            toggle <= 0;
        else begin
            if (!reset_toggle)
                toggle <=  toggle ^ pulse;
            else
                toggle <= 1'b0;
        end
    end

endmodule
