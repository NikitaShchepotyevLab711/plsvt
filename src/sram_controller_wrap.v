module sram_controller_wrap (
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
    output wire [15:0] data_o,
    input  wire        wr_en,                  // сигнал активности модуля
    input  wire        first_pack_incoming, // сигнал сообщает о том, что сейчас в обработке первый из шести пакетов
    input  wire        wr_req,              // запрос на запись 2байтового слова
    input  wire        rd_req,              // запрос на чтение 2байтового слова
    output wire        irq_current,         // показывает текущий процесс (1 = чтение, 0 = запись)
    input  wire        vsi_data_ready,      // 1 = пришло 6 пакетов от ОБ и можно формировать пакет ВСИ
    output reg         tail_of_pack,        // идет заполнение нулями остатка пакета ВСИ (для притормаживания wr_en)
    output reg         rd_flag,             // есть пакеты для передачи по ВСИ
    output reg         word_out_rdy         // строб о готовности нового прочитанного слова   
);

parameter MARKER = 32'hb6;

reg [15:0] data_to_sram;
reg        wr_req_reg;   
reg        rd_req_reg;

reg [15:0] wr_vsi_pack_cnt; 
reg [15:0] wr_word_counter;
reg [15:0] rd_word_counter;

reg [15:0] pack_fifo_count;

wire       write_to_ram_pulse;
wire       read_from_ram_pulse;

wire pack_written = (wr_en && (wr_word_counter == 21'd1015) && write_to_ram_pulse);
wire pack_read    = (rd_word_counter == 16'd1015);

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        data_to_sram         <= 16'd0;
        wr_word_counter      <= 16'b0;
        wr_vsi_pack_cnt      <= 16'b0;
        wr_req_reg           <= 1'b0;
        tail_of_pack         <= 1'b0;
        rd_word_counter      <= 16'b0;
        
        pack_fifo_count      <= 16'd0;
        rd_flag              <= 1'b0; 
        word_out_rdy         <= 1'b0;
    end
    else begin
        if (wr_en) begin
            if (wr_word_counter == 21'd1015) begin
                wr_req_reg      <= 1'b0;
                if (write_to_ram_pulse) begin
                    wr_vsi_pack_cnt <= wr_vsi_pack_cnt + 1'b1;    
                    tail_of_pack    <= 1'b0;
                    wr_word_counter <= 21'b0;
                end
            end
            else if (wr_word_counter >= 21'd938) begin
                wr_req_reg   <= 1'b1;
                if (write_to_ram_pulse) begin
                    data_to_sram <= 16'd0;
                    tail_of_pack <= 1'b1;
                    wr_word_counter <= wr_word_counter + 1'b1;
                end
            end
            else if (first_pack_incoming) begin   
                if (wr_word_counter == 21'h0) begin
                    data_to_sram <= MARKER;
                    wr_req_reg   <= 1'b1;
                    if (write_to_ram_pulse)
                        wr_word_counter <= wr_word_counter + 1'b1;
                end
                else if (wr_word_counter == 21'h1) begin
                    data_to_sram <= wr_vsi_pack_cnt;
                    wr_req_reg   <= 1'b0;
                    if (write_to_ram_pulse)
                        wr_word_counter <= wr_word_counter + 1'b1;
                end
                else begin
                    data_to_sram <= data_i;
                    wr_req_reg   <= wr_req;
                    if (wr_req) 
                         wr_word_counter <= wr_word_counter + 1'b1;
                end
            end 
            else begin
                data_to_sram <= data_i;
                wr_req_reg   <= wr_req;
                if (wr_req) 
                    wr_word_counter <= wr_word_counter + 1'b1;
            end
        end
        else begin
            wr_req_reg      <= 1'b0;
        end

        word_out_rdy <= read_from_ram_pulse;

        if (rd_word_counter == 16'd1015) begin
            rd_word_counter <= 16'h0;
        end
        else if (read_from_ram_pulse) begin
            rd_word_counter <= rd_word_counter + 1'b1;
        end

        case ({pack_written, pack_read})
            2'b10: pack_fifo_count <= pack_fifo_count + 1'b1;
            2'b01: pack_fifo_count <= pack_fifo_count - 1'b1;
            default: pack_fifo_count <= pack_fifo_count;
        endcase

        if (pack_written && !pack_read)
            rd_flag <= 1'b1;
        else if (!pack_written && pack_read)
            rd_flag <= ((pack_fifo_count - 1'b1) != 16'd0);
        else
            rd_flag <= (pack_fifo_count != 16'd0);
    end
end

always @(*) begin
    rd_req_reg = rd_flag ? rd_req : 1'b0;    
end

sram_controller sram_controller_inst (
    .rst_l           (rst_l),
    .clk             (clk),

    .A               (A),
    .IO              (IO),
    .CS              (CS),
    .OE              (OE),
    .WE              (WE),
    .LB              (LB),
    .UB              (UB),
    
    .data_i          (data_to_sram),
    .data_o          (data_o),
    .wr_req          (wr_req_reg),         // 1 = запись
    .rd_req          (rd_req_reg),         // 1 = чтение
    .irq_current     (),
    .ram_wr_rdy      (write_to_ram_pulse), // строб о том, что слово записано
    .ram_rd_rdy      (read_from_ram_pulse) // строб о том, что слово прочитано
);
 
endmodule