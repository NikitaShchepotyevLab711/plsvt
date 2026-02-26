module vsi_pack_counter (
    input  wire        rst_l,
    input  wire        clk,

    input  wire [31:0] data_i,
    input  wire        pack_valid, // строб об окончании одного пакета 
    input  wire        word_valid, // строб сопровождающий каждое слово

    output reg  [15:0] data_o,     // 2байтовые слова для записи в ОЗУ 
    output reg  [7:0]  pack_num,   // номер пакета 
    output wire        rdy,         // строб о готовности 2байтового слова для записи в ОЗУ
    output reg         vsi_data_ready // сигнал о том что 6 пакетов по 310 байт принято
);

reg [3:0] counter; // счетчик разделения 4байтовых слов на 2байтовые
reg       counter_en; // сигнал активации счетчика разделения
reg       sec_half_rdy; // готово второе 2байтовое слово
reg       first_half_rdy; // готово первое 2байтовое слово

reg [2:0] pack_counter; // счетчик до 6 для укомплектовывания пакета ВСИ

assign rdy = first_half_rdy || sec_half_rdy;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        counter        <= 4'b0;
        data_o         <= 16'b0;
        counter_en     <= 1'b0;
        sec_half_rdy   <= 1'b0;
        first_half_rdy <= 1'b0;
        pack_counter   <= 3'b0;
        vsi_data_ready <= 1'b1;
    end
    else begin
        
        if (counter == 4'hf) begin
            counter        <= 4'b0;
            counter_en     <= 1'b0;
            data_o         <= data_i[31:16];
            sec_half_rdy   <= 1'b1;
            first_half_rdy <= 1'b0;
        end
        else if (counter_en) begin
            counter        <= counter + 1'b1;
            sec_half_rdy   <= 1'b0; 
            first_half_rdy <= 1'b0;
        end
        else if (word_valid) begin
            counter_en     <= 1'b1;
            data_o         <= data_i[15:0];  
            sec_half_rdy   <= 1'b0;   
            first_half_rdy <= 1'b1;           
        end
        else begin
            sec_half_rdy   <= 1'b0; 
            first_half_rdy <= 1'b0;
        end

        if (pack_counter == 3'd5) begin
            pack_counter   <= 3'd0;
            vsi_data_ready <= 1'b1;
        end
        else if (pack_valid) begin
            pack_counter <= pack_counter + 1'b1;
        end

    end
end
    
endmodule