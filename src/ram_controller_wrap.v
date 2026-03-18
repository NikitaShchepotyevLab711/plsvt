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
    input  wire        en,                  // сигнал активности модуля
    input  wire        first_pack_incoming, // сигнал сообщает о том, что сейчас в обработке первый из шести пакетов
    input  wire        wr_req,              // запрос на запись 2байтового слова
    input  wire        rd_req,              // запрос на чтение 2байтового слова
    output wire        irq_current,         // показывает текущий процесс (1 = чтение, 0 = запись)
    input  wire        vsi_data_ready,      // 1 = пришло 6 пакетов от ОБ и можно формировать пакет ВСИ
    output reg         tail_of_pack         // идет заполнение нулями остатка пакета ВСИ (для притормаживания en)
);

parameter MARKER = 32'hb6;

assign LB = 1'b0;
assign UB = 1'b0;
assign CS = 1'b0;
assign OE = 1'b0;

reg [15:0] data_to_sram;

reg        wr_req_reg;                  
reg [3:0]  zero_counter;
reg [15:0] vsi_pack_cnt;
reg [15:0] word_cnt;
wire       write_to_ram_strobe;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        data_to_sram    <= 16'd0;
        zero_counter    <= 4'h0;
        word_cnt        <= 16'b0;
        vsi_pack_cnt    <= 16'b0;
        wr_req_reg      <= 1'b0;
        tail_of_pack    <= 1'b0;
    end
    else begin
        if (en) begin
            if (word_cnt == 21'd1015) begin
                wr_req_reg      <= 1'b0;
                if (write_to_ram_strobe) begin
                    vsi_pack_cnt    <= vsi_pack_cnt + 1'b1;    
                    tail_of_pack    <= 1'b0;
                    word_cnt        <= 21'b0;
                end
            end
            else if (word_cnt >= 21'd938) begin
                    wr_req_reg   <= 1'b1;
                    if (write_to_ram_strobe) begin
                        data_to_sram <= 16'd0;
                        tail_of_pack    <= 1'b1;
                        word_cnt <= word_cnt + 1'b1;
                    end
            end
            else if (first_pack_incoming) begin   
                if (word_cnt == 21'h0) begin
                    data_to_sram <= MARKER;
                    wr_req_reg   <= 1'b1;
                    if (write_to_ram_strobe)
                        word_cnt <= word_cnt + 1'b1;
                end
                else if (word_cnt == 21'h1) begin
                    data_to_sram <= vsi_pack_cnt;
                    wr_req_reg   <= 1'b0;
                    if (write_to_ram_strobe)
                        word_cnt <= word_cnt + 1'b1;
                end
                else begin
                    data_to_sram <= data_i;
                    wr_req_reg   <= wr_req;
                    if (wr_req) 
                         word_cnt <= word_cnt + 1'b1;
                end
            end 
            else begin
                data_to_sram <= data_i;
                wr_req_reg   <= wr_req;
                if (wr_req) 
                    word_cnt <= word_cnt + 1'b1;
            end
        end
        else begin
            wr_req_reg      <= 1'b0;
        end
    end
end

ram_controller ram_controller_inst (
    .rst_l           (rst_l),
    .clk             (clk),

    .A               (A),
    .IO              (IO),
    .CS              (CS),
    .OE              (OE),
    .LB              (LB),
    .UB              (UB),
    
    .data_i          (data_to_sram),
    .data_o          (),
    .wr_req          (wr_req_reg),      // 1 = запись
    .rd_req          (rd_req),      // 1 = чтение
    .irq_current     (),
    .ram_wr_rdy      (write_to_ram_strobe)
);
 
endmodule