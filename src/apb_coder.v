module apb_coder (
    input  wire        rst_l,
    input  wire        clk,

    // AMBA APB3 //
    input  wire [31:0] prdata,
    input  wire        psel,
    input  wire        penable,
    input  wire [15:0] paddr,
    output wire        pready,
    output wire        read_transaction,

    input  wire [31:0] data_i
);
    
assign read_transaction =  psel && !penable;
assign pready = 1'b1;
/*
always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        
    end
    else begin
        case (paddr)
            16'b0: begin
                prdata <= 32'b1;
            end
            default: 
        endcase
    end
end
*/

endmodule