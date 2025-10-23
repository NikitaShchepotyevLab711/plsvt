module sync2
(
    input      clk,
    input      rst,
    input      in,
    output reg out
);

    reg r;

    always @ (posedge clk or negedge rst)
        if (!rst)
            { out, r } <= 0;
        else
            { out, r } <= { r, in };

endmodule
