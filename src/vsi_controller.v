module vsi_controller (
    input  wire clk,
    input  wire rst_l,

    input  wire [15:0] data_i,
    input  wire        rd_request, // запрос на пакет данных

    output wire [7:0]  data_o,
    output wire        wr_flag     // флаг поднимается, если пакетов меньше чем 2 и можно записать
);

data_splitter_16_to_8 data_splitter_inst(
    .clk        (clk),
    .rst_l      (rst_l),

    .data_i     (),
    .data_o     ()
);

vsi_packs_ram vsi_packs_ram_inst(
    .clk    (clk),
    .rst_l  (rst_l),

    .data_i (),
    .data_o ()
);

endmodule