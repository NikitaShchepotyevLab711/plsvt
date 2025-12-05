module top #(
    parameter UART_BIT_RATE     = 9600, // bit per second
    parameter UART_CLK_HZ       = 12_000_000, // Hz
    parameter UART_PAYLOAD_BITS = 8,
    parameter UART_STOP_BITS    = 1
)  (
    input wire bb_clk_in,
    input wire rst_l,

    // adc045 //
    input  wire        adc045_drdy,           
    input  wire        adc045_dout,    
    output wire        adc045_cs,       
    output wire        adc045_din,           
    output wire        adc045_sclk,
    output wire        adc045_nrst,
    output wire        adc045_start,

    // adc733 serial port //
    input  wire        adc733_sclk,
    input  wire        adc733_sdofs,
    input  wire        adc733_sdo,
    output wire        adc733_sdifs,
    output wire        adc733_sdi,
    output wire        adc733_se,

    // adc_8ch_045 serial interface //
    input  wire        adc8ch_dout,
    output wire        adc8ch_sclk,
    output wire        adc8ch_cs_adc,
    output wire        adc8ch_cd_mux,
    output wire        adc8ch_din,

    // dac045a spi //
    output wire        dac045a_sdo,
    input  wire        dac045a_sdi,
    output wire        dac045a_sck,
    output wire        dac045a_clrn,
    output wire        dac045a_ldac,
    output wire        dac045a_csn,

    // vsi interface //
    output wire        vsi_data1,
    output wire        vsi_data2,
    input  wire        vsi_com1,
    input  wire        vsi_com2,

    // lvds dss //
    input  wire        lvds_ro,
    output wire        lvds_re,
    output wire        lvds_di,
    output wire        lvds_de
);

adc045_wrap adc_045_inst (
    .clk     (bb_clk_in),
    .rst_l   (rst_l),

    // interface to adc//
    .DRDY    (adc045_drdy),           
    .DOUT    (adc045_dout),    
    .CS      (adc045_cs),       
    .DIN     (adc045_din),           
    .SCLK    (adc045_sclk),
    .nRST    (adc045_nrst),
    .START   (adc045_start),

    // others //
    .sync    (), 
    .DATA_OUT(),
    .RD_EN   ()
);

adc733_wrap adc_733_inst (
    .clk    (bb_clk_in),
    .rst_l  (rst_l),

    // serial port //
    .SCLK   (adc733_sclk),
    .SDOFS  (adc733_sdofs),
    .SDO    (adc733_sdo),
    .SDIFS  (adc733_sdifs),
    .SDI    (adc733_sdi),
    .SE     (adc733_se),  

    .SYNC   (),    //импульс - команда для захвата данных с 6 каналов
    .DATA_O (),  //полученное значение из АЦП
    .RD_EN  (),   //импульс, сообщающий о новом полученном значении
    .OP_MODE(), //высокий уровень - режим захвата данных, низкий - режим программирования 
    .CHANNEL()  //номер канала, из которого выводится значение на данный момент
);

adc_8ch_045 adc_8ch_045_inst (
    .clk    (bb_clk_in),
    .rst_l  (rst_l),

    // serial interface //
    .DOUT   (adc8ch_dout),
    .SCLK   (adc8ch_sclk),
    .CS_ADC (adc8ch_cs_adc),
    .CD_MUX (adc8ch_cd_mux),
    .DIN    (adc8ch_din),
    
    .SYNC   (),
    .RD_EN  (),
    .CHANNEL(),
    .BUSY   (),
    .DATA_O ()
);

dac045a dac_045_inst (
    .clk        (bb_clk_in),
    .rst_l      (rst_l),

    .sync_300Hz (),  // строб с частотой 300 Гц - частота обновления ЦАП
    .mode       (),        // 0 - установка фикс. значения, 1 - плавное изменение до порога. Поднять на уровень выше
    .fixed_value(), // порог, равный по умолчанию 0хffff
    .cs         (),
    // добавить сигнал busy
    // spi //
    .SDO        (dac045a_sdo),
    .SDI        (dac045a_sdi),
    .SCK        (dac045a_sck),
    .CLRn       (dac045a_clrn),
    .LDAc       (dac045a_ldac),
    .CSn        (dac045a_csn)
);

vsi vsi_inst (
    .bb_clk_in    (bb_clk_in),
    .rst_l        (rst_l),

    // линия передачи 1
    .DATA1        (vsi_data1),
    // линия передачи 2
    .DATA2        (vsi_data2),
    // линия приема 1
    .COM1         (vsi_com1),
    // линия приема 2
    .COM2         (vsi_com2)
);

lvds_wrapper  #(
    .BIT_RATE    (UART_BIT_RATE), // bit per second
    .CLK_HZ      (UART_CLK_HZ), // Hz
    .PAYLOAD_BITS(UART_PAYLOAD_BITS),
    .STOP_BITS   (UART_STOP_BITS)
) lvds_wrapper_inst (
    .clk        (bb_clk_in),
    .rst_l      (rst_l),
    .sync       (),

    .RO         (lvds_ro),
    .RE         (lvds_re),
    .DI         (lvds_di),
    .DE         (lvds_de),

    .data12b   (),
    .word_num  (),
    .data_rdy  ()
);

endmodule