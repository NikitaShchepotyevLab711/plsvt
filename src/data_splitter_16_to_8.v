module data_splitter_16_to_8 (
    input  wire        clk,
    input  wire        rst_l,

    input  wire        enable,
    input  wire        data_valid,
    input  wire [15:0] data_i,
    output wire [7:0]  data_o,
    output reg         rdy
);

reg byte_change;
reg byte_change2;
reg [7:0] data_o_reg;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        byte_change  <= 1'b0;
        byte_change2 <= 1'b0;
        data_o_reg   <= 7'b0;
        rdy          <= 1'b0;
    end
    else begin
        if (enable) begin
            byte_change  <= byte_change2;
            if (byte_change) begin
                data_o_reg   <= data_i[15:8];
                byte_change  <= 1'b0;
                byte_change2 <= 1'b0;
                rdy          <= 1'b1;
            end
            else if (data_valid) begin
                data_o_reg   <= data_i[7:0];
                byte_change2 <= 1'b1;
                rdy          <= 1'b1;
            end
            else
                rdy          <= 1'b0;
                
        end
        else begin
            byte_change  <= 1'b0;
            byte_change2 <= 1'b0;
        end
    end
end

assign data_o = data_o_reg;
    
endmodule