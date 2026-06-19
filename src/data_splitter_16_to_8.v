module data_splitter_16_to_8 (
    input  wire        clk,
    input  wire        rst_l,

    input  wire        enable,
    input  wire        data_valid,
    input  wire [15:0] data_i,
    output wire [7:0]  data_o,
    output reg         rdy
);

reg        state; 
reg [7:0]  high_byte_reg;
reg [7:0]  data_o_reg;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        state         <= 1'b0;
        high_byte_reg <= 8'b0;
        data_o_reg    <= 8'b0;
        rdy           <= 1'b0;
    end
    else begin
        if (!enable) begin
            state <= 1'b0;
            rdy   <= 1'b0;
        end
        else begin
            case (state)
                1'b0: begin
                    if (data_valid) begin
                        data_o_reg    <= data_i[7:0];   // Сразу выдаем младший байт
                        high_byte_reg <= data_i[15:8];  // Буферизируем старший байт
                        rdy           <= 1'b1;
                        state         <= 1'b1;          // На следующем такте идем отдавать старший
                    end
                    else begin
                        rdy           <= 1'b0;
                    end
                end

                1'b1: begin
                    data_o_reg <= high_byte_reg;        // Выдаем сохраненный старший байт
                    rdy        <= 1'b1;
                    state      <= 1'b0;                 // Возвращаемся в ожидание
                end
            endcase
        end
    end
end

assign data_o = data_o_reg;
    
endmodule