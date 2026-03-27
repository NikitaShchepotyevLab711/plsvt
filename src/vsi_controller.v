module vsi_controller (
    input  wire clk,
    input  wire rst_l,

    input  wire [15:0] data_i,
    input  wire        rd_request,      // запрос на пакет данных от модуля ВСИ
    input  wire        rd_flag,         // наличие пакетов у ОЗУ
    input  wire        new_word_valid,  // строб о готовности для записи нового слова из ОЗУ
    input  wire        rd_rdy,

    output wire [7:0]  data_o,
    output wire        wr_flag,         // флаг поднимается, если пакетов меньше чем 2 и можно записать
    output wire        ready_pack,
    output wire        data_o_rdy
);

wire       full;
wire [7:0] data_to_ramblocks;
wire       word_to_ramblock_rdy;

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
    .rd_request (rd_request),
    .rd_flag    (rd_flag),
    .data_i     (data_to_ramblocks),
    .rd_rdy     (rd_rdy),
    .data_o     (data_o),
    .wr_flag    (wr_flag),
    .ready_pack (ready_pack),
    .data_o_rdy (data_o_rdy)
);

endmodule