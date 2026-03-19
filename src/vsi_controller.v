module vsi_controller (
    input  wire clk,
    input  wire rst_l,

    input  wire [15:0] data_i,
    input  wire        rd_request,      // запрос на пакет данных от модуля ВСИ
    input  wire        rd_flag,         // наличие пакетов у ОЗУ
    input  wire        new_word_valid,  // строб о готовности для записи нового слова из ОЗУ

    output wire [7:0]  data_o,
    output wire        wr_flag          // флаг поднимается, если пакетов меньше чем 2 и можно записать
);

wire       full;
wire [7:0] data_to_ramblocks;
wire       word_to_ramblock_rdy;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        
    end
    else begin
        
    end
end

data_splitter_16_to_8 data_splitter_inst(
    .clk        (clk),
    .rst_l      (rst_l),

    .enable     (wr_flag),
    .data_valid (new_word_valid),
    .data_i     (data_i),
    .data_o     (data_to_ramblocks),
    .rdy        (word_to_ramblock_rdy)
);

vsi_packs_ram vsi_packs_ram_inst(
    .clk        (clk),
    .rst_l      (rst_l),

    .data_valid (word_to_ramblock_rdy),
    .data_i     (data_to_ramblocks),
    .data_o     (),
    .full       (full)
);

assign wr_flag = (!full)&&(rd_flag);

endmodule