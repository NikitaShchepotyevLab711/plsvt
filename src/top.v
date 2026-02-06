module top #(
    parameter UART_BIT_RATE     = 9600, // bit per second
    parameter UART_CLK_HZ       = 12_000_000, // Hz
    parameter UART_PAYLOAD_BITS = 8,
    parameter UART_STOP_BITS    = 1
)  (
    input wire bb_clk_in,
    input wire rst_l,

    //  1 adc045 //
    input  wire        adc045_drdy_1,           
    input  wire        adc045_dout_1,    
    output wire        adc045_cs_1,       
    output wire        adc045_din_1,           
    output wire        adc045_sclk_1,
    output wire        adc045_nrst_1,
    output wire        adc045_start_1,

    //  2 adc045 //
    input  wire        adc045_drdy_2,           
    input  wire        adc045_dout_2,    
    output wire        adc045_cs_2,       
    output wire        adc045_din_2,           
    output wire        adc045_sclk_2,
    output wire        adc045_nrst_2,
    output wire        adc045_start_2,

    //  3 adc045 //
    input  wire        adc045_drdy_3,           
    input  wire        adc045_dout_3,    
    output wire        adc045_cs_3,       
    output wire        adc045_din_3,           
    output wire        adc045_sclk_3,
    output wire        adc045_nrst_3,
    output wire        adc045_start_3,

    //  4 adc045 //
    input  wire        adc045_drdy_4,           
    input  wire        adc045_dout_4,    
    output wire        adc045_cs_4,       
    output wire        adc045_din_4,           
    output wire        adc045_sclk_4,
    output wire        adc045_nrst_4,
    output wire        adc045_start_4,

    //  5 adc045 //
    input  wire        adc045_drdy_5,           
    input  wire        adc045_dout_5,    
    output wire        adc045_cs_5,       
    output wire        adc045_din_5,           
    output wire        adc045_sclk_5,
    output wire        adc045_nrst_5,
    output wire        adc045_start_5,

    //  6 adc045 //
    input  wire        adc045_drdy_6,           
    input  wire        adc045_dout_6,    
    output wire        adc045_cs_6,       
    output wire        adc045_din_6,           
    output wire        adc045_sclk_6,
    output wire        adc045_nrst_6,
    output wire        adc045_start_6,

    // 1 dac045a spi //
    output wire        dac045a_sdo_1,
    input  wire        dac045a_sdi_1,
    output wire        dac045a_sck_1,
    output wire        dac045a_clrn_1,
    output wire        dac045a_ldac_1,
    output wire        dac045a_csn_1,

    // 2 dac045a spi //
    output wire        dac045a_sdo_2,
    input  wire        dac045a_sdi_2,
    output wire        dac045a_sck_2,
    output wire        dac045a_clrn_2,
    output wire        dac045a_ldac_2,
    output wire        dac045a_csn_2,

    // 3 dac045a spi //
    output wire        dac045a_sdo_3,
    input  wire        dac045a_sdi_3,
    output wire        dac045a_sck_3,
    output wire        dac045a_clrn_3,
    output wire        dac045a_ldac_3,
    output wire        dac045a_csn_3,

    // 4 dac045a spi //
    output wire        dac045a_sdo_4,
    input  wire        dac045a_sdi_4,
    output wire        dac045a_sck_4,
    output wire        dac045a_clrn_4,
    output wire        dac045a_ldac_4,
    output wire        dac045a_csn_4,

    // 5 dac045a spi //
    output wire        dac045a_sdo_5,
    input  wire        dac045a_sdi_5,
    output wire        dac045a_sck_5,
    output wire        dac045a_clrn_5,
    output wire        dac045a_ldac_5,
    output wire        dac045a_csn_5,

    // 6 dac045a spi //
    output wire        dac045a_sdo_6,
    input  wire        dac045a_sdi_6,
    output wire        dac045a_sck_6,
    output wire        dac045a_clrn_6,
    output wire        dac045a_ldac_6,
    output wire        dac045a_csn_6,

    // adc733 serial port //
    input  wire        adc733_sclk,
    input  wire        adc733_sdofs,
    input  wire        adc733_sdo,
    output wire        adc733_sdifs,
    output wire        adc733_sdi,
    output wire        adc733_se,

    // 1 adc_8ch_045 serial interface //
    input  wire        adc8ch_dout_1,
    output wire        adc8ch_sclk_1,
    output wire        adc8ch_cs_adc_1,
    output wire        adc8ch_cd_mux_1,
    output wire        adc8ch_din_1,

    // 2 adc_8ch_045 serial interface //
    input  wire        adc8ch_dout_2,
    output wire        adc8ch_sclk_2,
    output wire        adc8ch_cs_adc_2,
    output wire        adc8ch_cd_mux_2,
    output wire        adc8ch_din_2,

    // 3 adc_8ch_045 serial interface //
    input  wire        adc8ch_dout_3,
    output wire        adc8ch_sclk_3,
    output wire        adc8ch_cs_adc_3,
    output wire        adc8ch_cd_mux_3,
    output wire        adc8ch_din_3,

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

    // interface to  1 adc//
    .DRDY    ({adc045_drdy_6, adc045_drdy_5, adc045_drdy_4, adc045_drdy_3, adc045_drdy_2, adc045_drdy_1}),           
    .DOUT    ({adc045_dout_6, adc045_dout_5, adc045_dout_4, adc045_dout_3, adc045_dout_2, adc045_dout_1}),    
    .CS      ({adc045_cs_6, adc045_cs_5, adc045_cs_4, adc045_cs_3, adc045_cs_2, adc045_cs_1}),      
    .DIN     ({adc045_din_6, adc045_din_5, adc045_din_4, adc045_din_3, adc045_din_2, adc045_din_1}),           
    .SCLK    ({adc045_sclk_6, adc045_sclk_5, adc045_sclk_4, adc045_sclk_3, adc045_sclk_2, adc045_sclk_1}),
    .nRST    ({adc045_nrst_6, adc045_nrst_5, adc045_nrst_4, adc045_nrst_3, adc045_nrst_2, adc045_nrst_1}),
    .START   ({adc045_start_6, adc045_start_5, adc045_start_4, adc045_start_3, adc045_start_2, adc045_start_1}),

    // others //
    .sync    (), 
    .DATA_OUT(),
    .RD_EN   ()
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
    .SDO        ({dac045a_sdo_6, dac045a_sdo_5, dac045a_sdo_4, dac045a_sdo_3, dac045a_sdo_2, dac045a_sdo_1}),
    .SDI        ({dac045a_sdo_6, dac045a_sdo_5, dac045a_sdo_4, dac045a_sdo_3, dac045a_sdo_2,  dac045a_sdi_1}),
    .SCK        ({dac045a_sck_6, dac045a_sck_5, dac045a_sck_4, dac045a_sck_3, dac045a_sck_2, dac045a_sck_1}),
    .CLRn       ({dac045a_clrn_6, dac045a_clrn_5, dac045a_clrn_4, dac045a_clrn_3, dac045a_clrn_2, dac045a_clrn_1}),
    .LDAc       ({dac045a_ldac_6, dac045a_ldac_5, dac045a_ldac_4, dac045a_ldac_3, dac045a_ldac_2, dac045a_ldac_1}),
    .CSn        ({dac045a_csn_6, dac045a_csn_5, dac045a_csn_4, dac045a_csn_3, dac045a_csn_2, dac045a_csn_1})
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

adc_8ch_wrap adc_8ch_wrap_inst (
    .clk    (bb_clk_in),
    .rst_l  (rst_l),

    // serial interface //
    .DOUT   ({adc8ch_dout_3, adc8ch_dout_2, adc8ch_dout_1}),
    .SCLK   ({adc8ch_sclk_3, adc8ch_sclk_2, adc8ch_sclk_1}),
    .CS_ADC ({adc8ch_cs_adc_3, adc8ch_cs_adc_2, adc8ch_cs_adc_1}),
    .CD_MUX ({adc8ch_cd_mux_3, adc8ch_cd_mux_2, adc8ch_cd_mux_1}),
    .DIN    ({adc8ch_din_3, adc8ch_din_2, adc8ch_din_1}),
    
    .SYNC   (),
    .RD_EN  (),
    .CHANNEL(),
    .BUSY   (),
    .DATA_O ()
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