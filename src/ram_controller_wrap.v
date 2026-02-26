module ram_controller_wrap (
    input  wire        rst_l,
    input  wire        clk,

    // RAM IS61/64WV204816BLL ports //
    output wire [20:0] A,  // адреса
    inout  wire [15:0] IO, // порты данных (направление меняется в зависимости от WE)
    output wire        CS, // 0 = активный режим
    output wire        OE, // 0 = позволяет читать данные из памяти, 1 = чтение невозможно
    output wire        WE, // 0 = запись, 1 = чтение
    output wire        LB, // 0 = можно читать/писать из битов 0-7, 1 = нельзя
    output wire        UB, // 0 = можно читать/писать из битов 8-15, 1 = нельзя
    
    input  wire [15:0] data_i,
    output reg  [15:0] data_o,
    input  wire        wr_req,        // запрос на запись 2байтового слова
    input  wire        rd_req,        // запрос на чтение 2байтового слова
    output wire        irq_current,   // показывает текущий процесс (1 = чтение, 0 = запись)
    input  wire        vsi_data_ready // 1 = пришло 6 пакетов от ОБ и можно формировать пакет ВСИ

);

assign LB = 1'b0;
assign UB = 1'b0;
assign CS = 1'b0;
assign OE = 1'b0;

reg [15:0] data_to_sram;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        data_to_sram <= 16'd0;
    end
    else begin
        if (wr_req) begin
            if (vsi_data_ready)          // если пришло 6 пакетов ОБ, дозаполняем нулями до пакета ВСИ
                data_to_sram <= 16'd0;
            else
                data_to_sram <= data_i;
        end
    end
end

ram_controller ram_controller_inst (
    .rst_l           (rst_l),
    .clk             (bb_clk_in),

    .A               (A),
    .IO              (IO),
    .CS              (CS),
    .OE              (OE),
    .LB              (LB),
    .UB              (UB),
    
    .data_i          (data_to_ram),
    .data_o          (),
    .wr_req          (rdy_data_to_ram), // 1 = запись
    .rd_req          (),                // 1 = чтение
    .vsi_data_ready  (vsi_data_ready),  // 1 = пришло 6 пакетов от ОБ и можно формировать пакет ВСИ
    .irq_current     ()

);
 
endmodule