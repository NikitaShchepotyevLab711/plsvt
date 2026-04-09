`define DEBUG_MODE

module vsi (
    input  wire        bb_clk_in,
    input  wire        rst_l,

    input  wire [7:0]  data_i,
    input  wire        word_valid,   // строб для передачи каждого байта
    input  wire        pack_valid,   // доступны данные для передачи

    output reg  [7:0]  data_o,
    output reg  [31:0] timecode,
    output reg  [7:0]  uks_marker,
    output reg  [7:0]  uks_addr,
    output reg  [15:0] uks_data,
    output reg  [31:0] whole_uks,

    output reg         rx_rdy,
    output wire        request,      //  запрос на передачу данных
    output wire        ram_rd_rq,    //  передан байт
    output reg         hz,

    // линия передачи 1
    output wire       DATA1,
    // линия передачи 2
    output wire       DATA2,
    // линия приема 1
    input  wire       COM1,
    // линия приема 2
    input  wire       COM2
);

// прием //
// статус принятого сообщения
wire [7:0]  RX_FLAG;
// кол-во байт данных в принятом сообщении
wire [15:0] RX_BYTE_NUMBER;
// сигнал, выставляется сразу после получения флаг/статуса и "кол-ва байт данных"
wire 	   RX_FLAG_BYTE_NUMBER_RD_EN;

// запрос на запись в память
wire 		RX_RAM_REQ_WR;
// завершение действия по запросу на запись в память
wire 		RX_RAM_RDY_WR;

// выходная шина адреса
wire  [15:0]	RX_RAM_ADDR_OUT;
// выходная шина данных
wire  [7:0]	RX_RAM_DATA_OUT;

// Сигнал приема сообщения
wire 		RX_END_MESSAGE;
// Сигнал приема правильного сообщения (0 - не правильное сообщение, 1 - правильное сообщение)
wire 		RX_MESSAGE_RIGHT;
// По какой линии принято сообщение (0 - по COM1, 1 - по COM2)
wire 		RX_END_MESSAGE_LINE;

    // Сигнал передачи сообщения
wire CODING;
    // Сигнал ожидания приема сообщения и приема сообщения
wire DECODING;

wire        clk = bb_clk_in;
wire        strobe_1mhz;
wire        strobe_4mhz;

wire        rst_s;

wire [15:0] rd_addr;   
wire        ready;

wire [7:0]  rx_data;
reg  [31:0] timecode_reg;
reg  [2:0]  rx_counter;
reg  [15:0] uks_data_reg;

/*
reset_sync res_sync_inst (
    .rst_n(rst_s), 
    .clk(clk), 
    .asyncrst_n(!rst_h)
);*/

always @(posedge bb_clk_in or negedge rst_l) begin
    if (!rst_l) begin
        timecode_reg <= 32'h0;
        timecode     <= 32'h0;
        hz           <= 1'h0;
        rx_counter   <= 3'h0;
        uks_marker   <= 7'h0;
        uks_addr     <= 7'h0;
        uks_data     <= 15'h0;
        uks_data_reg <= 15'h0;
        whole_uks    <= 31'h0; 
    end
    else begin 
        case (RX_FLAG)
            1: begin 
                if (rx_counter == 6) begin
                    timecode     <= timecode_reg;
                    rx_counter   <= 3'h0;
                end
                else begin
                    if (rx_counter == 5) 
                        rx_counter   <= rx_counter + 1'h1;
                    else if (RX_RAM_REQ_WR)
                        rx_counter <= rx_counter + 1'h1;
                end

                if (RX_RAM_REQ_WR) begin
                    case (rx_counter)
                        1: timecode_reg[31:24] <= rx_data;
                        2: timecode_reg[23:16] <= rx_data;
                        3: timecode_reg[15:8]  <= rx_data;
                        4: timecode_reg[7:0]   <= rx_data;
                        default: begin
                            
                        end
                    endcase
                     
                end
            end

            2: begin
                if (rx_counter == 5) begin
                    timecode     <= timecode_reg;
                    rx_counter   <= 3'h0;
                    rx_rdy       <= 1'b1;
                    whole_uks    <= {uks_marker, uks_addr, uks_data_reg};
                end
                else begin
                    rx_rdy       <= 1'b0;
                    if (rx_counter == 4) begin
                        uks_data     <= uks_data_reg;
                        rx_counter   <= rx_counter + 1'h1;
                    end
                    else if (RX_RAM_REQ_WR)
                        rx_counter <= rx_counter + 1'h1;
                end

                if (RX_RAM_REQ_WR) begin
                    case (rx_counter)
                        0: uks_marker          <= rx_data;
                        1: uks_addr            <= rx_data;
                        2: uks_data_reg[15:8]  <= rx_data;
                        3: uks_data_reg[7:0]   <= rx_data;

                        default: begin
                            
                        end
                    endcase
                     
                end
            end

            5: begin
                if (RX_END_MESSAGE)
                    hz <= 1'b1;
                else
                    hz <= 1'b0;
            end

            default: begin
                hz     <= 1'h0;
                rx_rdy <= 1'b0;
            end
        endcase
    end
end

strobe_generator #(.STROBE_PERIOD(12)) strobegen_1mhz (
    .clk(clk),
    .rst_l(rst_l),
    .strobe(strobe_1mhz)
);

strobe_generator #(.STROBE_PERIOD(3)) strobegen_4mhz (
    .clk(clk),
    .rst_l(rst_l),
    .strobe(strobe_4mhz)
);

mod_hi_speed_protocol_rx #(
    .QUARTZ(24),
    .MARKER_BYTE_CODER(8'hb6),
    .MARKER_BYTE_DECODER(8'ha5)
) hi_speed_protocol_rx_inst (
    //////////////////////////// ОБЩИЕ
    .CLK(clk),
    .RESET(rst_l),
    
    .CODING(CODING),
    .DECODING(DECODING),
    
    //////////////////////////// БИТЫ УПРАВЛЕНИЯ
    .BIT_SR(pack_valid),
    .BIT_BUSY(1'b0),
    
    //////////////////////////// ПРИЕМ СООБЩЕНИЙ
    .CLK_EN_RS_DECODER(strobe_4mhz),
    
    .RX_FLAG(RX_FLAG),
    .RX_BYTE_NUMBER(RX_BYTE_NUMBER),
    .RX_FLAG_BYTE_NUMBER_RD_EN(RX_FLAG_BYTE_NUMBER_RD_EN),
    
    .RX_RAM_REQ_WR(RX_RAM_REQ_WR),
    .RX_RAM_RDY_WR(1'h1),
    .RX_RAM_ADDR_OUT(RX_RAM_ADDR_OUT),
    .RX_RAM_DATA_OUT(rx_data),
    
    .RX_END_MESSAGE(RX_END_MESSAGE),
    .RX_MESSAGE_RIGHT(RX_MESSAGE_RIGHT),
    .RX_END_MESSAGE_LINE(RX_END_MESSAGE_LINE),
    
    //////////////////////////// ПЕРЕДАЧА СООБЩЕНИЙ
    .CLK_EN_RS_CODER(strobe_1mhz),
    
    .TX_RAM_REQ_RD(ram_rd_rq),
    .TX_RAM_RDY_RD(word_valid),
    .TX_RAM_ADDR_OUT(rd_addr),
    .TX_RAM_DATA_IN(data_i),
    
    .FLAG_DATA_OUT(request),
    
    //////////////////////////// ВХОДНЫЕ И ВЫХОДНЫЕ ЛИНИИ
    .COM1(COM1),
    .COM2(COM2),
    .DATA1(DATA1),
    .DATA2(DATA2)
);
    
endmodule