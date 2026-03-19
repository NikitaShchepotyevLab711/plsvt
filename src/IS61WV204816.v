module IS61WV204816 (
    input  wire [20:0] A,      
    inout  wire [15:0] IO,     
    input  wire CS_n,
    input  wire OE_n,
    input  wire WE_n,
    input  wire LB_n,
    input  wire UB_n
);

    reg [15:0] mem [0:2097151];
    reg [15:0] data_out;
    assign IO = (!CS_n && !OE_n && WE_n && (!LB_n || !UB_n)) ? data_out : 16'hzzzz;

    integer i;
    always @(*) begin
        if (!CS_n && !WE_n) begin
            if (!LB_n) begin
                mem[A][7:0] = IO[7:0];
            end
            if (!UB_n) begin
                mem[A][15:8] = IO[15:8];
            end
        end
    end

    always @(*) begin
        if (!CS_n && WE_n) begin
            data_out = mem[A];
        end else begin
            data_out = 16'hzzzz;
        end
    end

    integer k;
    initial begin
        for (k = 0; k < 2097151; k = k + 1) begin
            mem[k] = 16'h0000;
        end
    end

endmodule