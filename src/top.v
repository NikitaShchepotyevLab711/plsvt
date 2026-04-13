//`define DEBUG_MODE

module top #(
    parameter UART_BIT_RATE     = 57600, // bit per second
    parameter UART_CLK_HZ       = 12_000_000, // Hz
    parameter UART_PAYLOAD_BITS = 8,
    parameter UART_STOP_BITS    = 1
)  (
    input wire bb_clk_in,
    input wire rst_l,

	output wire        bb_clk_out        ,
	// GPIO
	input  wire [ 7:0] bb_gpio_in        ,
	output wire [ 7:0] bb_gpio_out       ,
	// APB Slave
	output wire        bb_apb_sync_clk   ,

    input  wire        bb_psel           ,
	input  wire        bb_penable        ,
	input  wire [15:0] bb_paddr          ,
	input  wire        bb_pwrite         ,
	input  wire [31:0] bb_pwdata         ,
	input  wire [ 3:0] bb_pstrb          ,
	input  wire [ 2:0] bb_pprot          ,
	output wire [31:0] bb_prdata         ,
	output wire        bb_pready         ,
	output wire        bb_pslverr        ,

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

    // logic outputs //
    output wire [21:0] log_control,

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
    output wire        lvds_de,

    output wire [20:0] A,
    inout  wire [15:0] IO,
    output wire        WE,
    output wire        CS,
    output wire        OE,
    output wire        LB,
    output wire        UB
);

assign bb_pslverr = 0;
assign bb_apb_sync_clk=bb_clk_in;
assign bb_clk_out=bb_clk_in;
assign bb_gpio_out=8'hAF; 

reg read_request;

wire sync;
wire adc045_ready;
wire adc733_ready;
wire adc_8ch_ready;
wire dss_ready;

wire [23:0] adc045_data;
wire [15:0] adc733_data;
wire [11:0] adc_8ch_data;
wire [11:0] dss_data;

wire [7:0] data_to_apb;
wire       package_complete;
wire       apb_read;

wire [31:0] data_to_cpu;
wire [31:0] data_from_cpu;
wire        package_start;
wire        package_rd_en;

wire        dac_rdy;
wire [15:0] dac_value;
wire        dac_value_valid;

reg [21:0] log_control_reg;
wire       word_to_cpu_rdy;

wire [7:0] vsi_pack_num;
wire       vsi_word_rcvd;
wire       vsi_package_rcvd;

wire [15:0] data_to_sram;
wire [15:0] data_from_sram;
wire        vsi_data_ready;

wire        rdy_data_to_ram;
wire        vsi_pack_writen;

wire        wr_to_ram_active;

wire        read_vsi_pack_flag;
wire        vsi_sram_rd_flag;

wire        first_pack_incoming;
wire        vsi_sram_new_word;
wire        vsi_request;
wire        vsi_tx_rdy;

wire [7:0]  data_to_vsi;
wire        data_to_vsi_rdy;

wire        vsi_pack_rcvd;

wire        ready_pack_in_ramblock;
wire [7:0]  data_from_vsi;
wire        vsi_rx_rdy;

wire [31:0] timecode;
wire        hz;

wire [15:0] uks_data;
wire [7:0]  uks_addr;
wire [7:0]  uks_marker;

wire        vsi_gen_en;
wire        MB1_req;
wire        MB2_req;
wire        MB3_req;
wire        MB4_req;
wire        DSS_req;

wire [5:0]  DAC_mode;

wire [15:0] DAC1_value;
wire [15:0] DAC2_value;
wire [15:0] DAC3_value;
wire [15:0] DAC4_value;
wire [15:0] DAC5_value;
wire [15:0] DAC6_value;

wire [15:0] DAC_limit;
wire [15:0] DAC_step_mux;

wire [31:0] whole_uks;
wire [31:0] MB1_UKS;
wire [31:0] MB2_UKS;
wire [31:0] MB3_UKS;
wire [31:0] MB4_UKS;

wire        MB_UKS_READY1;
wire        MB_UKS_READY2;
wire        MB_UKS_READY3;
wire        MB_UKS_READY4;

wire [31:0] internal_time;
wire        tail_of_pack;

assign log_control = 22'habcde;

always @(posedge bb_clk_in or negedge rst_l) begin // фиксация значений логических выходов
    if (!rst_l) begin
        log_control_reg <= 22'b0;
    end
    else begin
        if (sync)
            log_control_reg <= log_control;
    end
end

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
    .sync    (sync), 
    .DATA_OUT(adc045_data),
    .RD_EN   (adc045_ready)
);

dac045a dac_045_inst (
    .clk         (bb_clk_in),
    .rst_l       (rst_l),

    .sync_300Hz  (sync),             // строб с частотой 300 Гц - частота обновления ЦАП
    .mode1       (DAC_mode[0]),      // 0 - установка фикс. значения, 1 - плавное изменение до порога. Поднять на уровень выше
    .mode2       (DAC_mode[1]),
    .mode3       (DAC_mode[2]),
    .mode4       (DAC_mode[3]),
    .mode5       (DAC_mode[4]),
    .mode6       (DAC_mode[5]),

    .period1     (),
    .period2     (),
    .period3     (),
    .period4     (),
    .period5     (),
    .period6     (),

    .fixed_value1(DAC1_value),         // порог, равный по умолчанию 0хffff
    .fixed_value2(DAC2_value),
    .fixed_value3(DAC3_value),
    .fixed_value4(DAC4_value),
    .fixed_value5(DAC5_value),
    .fixed_value6(DAC6_value),
    .limit       (DAC_limit),
    .cs          (1'b1),

    .dac_value   (dac_value),
    .dac_rdy     (dac_rdy),
    .dac_value_valid(dac_value_valid),

    .step_coefficent(DAC_step_mux),

    // добавить сигнал busy
    // spi //
    .SDO         ({dac045a_sdo_6, dac045a_sdo_5, dac045a_sdo_4, dac045a_sdo_3, dac045a_sdo_2, dac045a_sdo_1}),
    .SDI         ({dac045a_sdo_6, dac045a_sdo_5, dac045a_sdo_4, dac045a_sdo_3, dac045a_sdo_2,  dac045a_sdi_1}),
    .SCK         ({dac045a_sck_6, dac045a_sck_5, dac045a_sck_4, dac045a_sck_3, dac045a_sck_2, dac045a_sck_1}),
    .CLRn        ({dac045a_clrn_6, dac045a_clrn_5, dac045a_clrn_4, dac045a_clrn_3, dac045a_clrn_2, dac045a_clrn_1}),
    .LDAc        ({dac045a_ldac_6, dac045a_ldac_5, dac045a_ldac_4, dac045a_ldac_3, dac045a_ldac_2, dac045a_ldac_1}),
    .CSn         ({dac045a_csn_6, dac045a_csn_5, dac045a_csn_4, dac045a_csn_3, dac045a_csn_2, dac045a_csn_1})
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

    .SYNC   (sync),    //импульс - команда для захвата данных с 6 каналов
    .DATA_O (adc733_data),  //полученное значение из АЦП
    .RD_EN  (adc733_ready),   //импульс, сообщающий о новом полученном значении
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
    
    .SYNC   (sync),
    .RD_EN  (adc_8ch_ready),
    .CHANNEL(),
    .BUSY   (),
    .DATA_O (adc_8ch_data)
);

uks_controller uks_controller_inst(
    .clk         (bb_clk_in),
    .rst_l       (rst_l),
    .marker      (uks_marker),
    .addr        (uks_addr),
    .data        (uks_data),
    .whole_uks   (whole_uks),
    .valid       (vsi_rx_rdy),
    .rd_ready    (bb_penable),
    .cpu_addr    (bb_paddr),

    .vsi_gen_en  (vsi_gen_en),
    .MB1_req     (MB1_req),
    .MB2_req     (MB2_req),
    .MB3_req     (MB3_req),
    .MB4_req     (MB4_req),
    .DSS_req     (DSS_req),

    .DAC_mode    (DAC_mode),

    .DAC1_value  (DAC1_value),
    .DAC2_value  (DAC2_value),
    .DAC3_value  (DAC3_value),
    .DAC4_value  (DAC4_value),
    .DAC5_value  (DAC5_value),
    .DAC6_value  (DAC6_value),

    .MB1_UKS     (MB1_UKS),
    .MB2_UKS     (MB2_UKS),
    .MB3_UKS     (MB3_UKS),
    .MB4_UKS     (MB4_UKS),

    .MB_READY1   (MB_UKS_READY1),
    .MB_READY2   (MB_UKS_READY2),
    .MB_READY3   (MB_UKS_READY3),
    .MB_READY4   (MB_UKS_READY4),

    .DAC_limit   (DAC_limit),
    .DAC_step_mux(DAC_step_mux)
);

vsi vsi_inst (
    .bb_clk_in    (bb_clk_in),
    .rst_l        (rst_l),

    .data_i       (data_to_vsi),
    .request      (vsi_request),
    .pack_valid   (ready_pack_in_ramblock),
    .timecode     (timecode),
    .data_o       (data_from_vsi),
    .uks_marker   (uks_marker),             // разделенные УКС (для ОБ)
    .uks_addr     (uks_addr),
    .uks_data     (uks_data),
    .whole_uks    (whole_uks),              // целый УКС (для МБ)
    .word_valid   (data_to_vsi_rdy),
    .ram_rd_rq    (vsi_tx_rdy),
    .rx_rdy       (vsi_rx_rdy),
    .hz           (hz),

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
    .sync       (sync),

    .RO         (lvds_ro),
    .RE         (lvds_re),
    .DI         (lvds_di),
    .DE         (lvds_de),

    .data12b    (dss_data),
    .word_num   (),
    .data_rdy   (dss_ready)
);

sync_strobe sync_strobe_sync(
    .clk        (bb_clk_in),
    .rst_l      (rst_l),
    .strobe     (sync)
);

// модуль для формирования пакета от ОБ //
package_complectation package_complectation_inst(
    .clk             (bb_clk_in),
    .rst_l           (rst_l),
    
    // данные от АЦП, ЦАП и ДСС //
    .adc045_data     (adc045_data),
    .dac_value       (dac_value),
    .adc733_data     (adc733_data),
    .adc_8ch_data    (adc_8ch_data),
    .dss_data        (dss_data),
    .log_outputs_data(log_control_reg),

    // сигналы о готовности от АЦП и ДСС //
    .log_outputs_load(sync),
    .adc045_ready    (adc045_ready),
    .dac_value_valid (dac_value_valid),
    .adc733_ready    (adc733_ready),
    .adc_8ch_ready   (adc_8ch_ready),
    .dss_ready       (dss_ready),

    .read_request    (read_request),

    .data_o          (data_to_apb),      // пакет данных 
    .package_complete(package_complete), // сигнал о готовности пакета
    .start_reading   (package_start   ), // сигнал активности операции чтения включая паузы
    .rd_en           (package_rd_en),    // активность операции чтения
    .apb_read        (apb_read)
);

// байтовый поток преобр. в 4-байтовый для шины ПЛИС-процессор
data_compressor compressor_inst (
	.clk	   (bb_clk_in	  	  ),
	.rst_l     (rst_l	  		  ),
	.data_i	   (data_to_apb       ),
	.next_word (package_rd_en     ),
	.data_o	   (data_to_cpu		  ),
    .ready     (word_to_cpu_rdy   )
);

apb_controller apb_controller_inst (
    .rst_l           (rst_l),
    .clk             (bb_clk_in),

    // apb //
    .prdata          (bb_prdata),
    .pwdata          (bb_pwdata),
    .psel            (bb_psel),
    .penable         (bb_penable),
    .pready          (bb_pready),
    .paddr           (bb_paddr),

    // REGS //
    .DATA_READY      (package_complete),
    .MB_UKS_READY1   (MB_UKS_READY1),
    .MB_UKS_READY2   (MB_UKS_READY2),
    .MB_UKS_READY3   (MB_UKS_READY3),
    .MB_UKS_READY4   (MB_UKS_READY4),
    .TIME            (internal_time),
    .MB1_UKS         (MB1_UKS),
    .MB2_UKS         (MB2_UKS),
    .MB3_UKS         (MB3_UKS),
    .MB4_UKS         (MB4_UKS),

    .read_transaction(apb_read),      // сигнал для передачи данных в процессор
    .package_start   (package_start), // сигнал активности операции чтения включая паузы

    .data_i          (data_to_cpu),
    .data_o          (data_from_cpu),
    .valid           (word_to_cpu_rdy), // каждое 32 битное слово из пакета ОБ сопровождается этим стробом

    .vsi_package_rcvd(vsi_pack_rcvd),
    .vsi_word_rcvd   (vsi_word_rcvd),
    .wr_to_ram_active(wr_to_ram_active), // запись в ОЗУ активна на данный момент
    .tail_of_pack    (tail_of_pack)
);

vsi_pack_counter vsi_pack_counter_inst (
    .rst_l              (rst_l),
    .clk                (bb_clk_in),

    .data_i             (data_from_cpu),
    .word_valid         (vsi_word_rcvd),       // строб сопровождающий каждое слово
    .pack_valid         (vsi_pack_rcvd),       // строб об окончании одного пакета 
    .pack_num           (vsi_pack_num),        // номер пакета 

    .data_o             (data_to_sram),         // 2байтовые слова для записи в ОЗУ 
    .rdy                (rdy_data_to_ram),     // строб о готовности 2байтового слова для записи в ОЗУ
    .vsi_data_ready     (vsi_data_ready),      // сигнал о том что 6 пакетов по 310 байт принято
    .first_pack_incoming(first_pack_incoming), // сигнал сообщает о том, что сейчас в обработке первый из шести пакетов
    .tail_of_pack       (tail_of_pack)
);

sram_controller_wrap sram_controller_wrap_inst (
    .rst_l               (rst_l),
    .clk                 (bb_clk_in),

    .A                   (A),
    .IO                  (IO),
    .CS                  (CS),
    .OE                  (OE),
    .WE                  (WE),
    .LB                  (LB),
    .UB                  (UB),
    
    .data_i              (data_to_sram),
    .data_o              (data_from_sram),
    .wr_en               (wr_to_ram_active),    // сигнал активации модуля
    .first_pack_incoming (first_pack_incoming), // сигнал сообщает о том, что сейчас в обработке первый из шести пакетов
    .wr_req              (rdy_data_to_ram),     // 1 = запись
    .rd_req              (read_vsi_pack_flag),  // 1 = чтение
    .vsi_data_ready      (vsi_data_ready),      // 1 = пришло 6 пакетов от ОБ и можно формировать пакет ВСИ
    .irq_current         (),
    .tail_of_pack        (tail_of_pack),        // идет заполнение нулями остатка пакета ВСИ (для притормаживания wr_en)
    .rd_flag             (vsi_sram_rd_flag),    // есть пакеты для передачи по ВСИ
    .word_out_rdy        (vsi_sram_new_word)    // новое слово прочитано из ОЗУ
);

vsi_controller vsi_controller_inst (
    .clk            (bb_clk_in),
    .rst_l          (rst_l),

    .data_i         (data_from_sram),
    .rd_request     (vsi_request),            // запрос на пакет данных от модуля ВСИ
    .rd_flag        (vsi_sram_rd_flag),       // сигнал от контроллера ОЗУ о наличии пакетов
    .new_word_valid (vsi_sram_new_word),
    .rd_rdy         (vsi_tx_rdy),

    .data_o         (data_to_vsi),
    .wr_flag        (read_vsi_pack_flag),     // флаг поднимается, если пакетов меньше чем 2 и можно записать
    .ready_pack     (ready_pack_in_ramblock), // сигнал о наличии в памяти ПЛИС пакетов для выдачи по ВСИ
    .data_o_rdy     (data_to_vsi_rdy)         // валидность данных из памяти ПЛИС для выдачи (чтобы избежать передачи, пока данные не прочтаны из памяти)
);

mod_hertz_shift mod_hertz_shift_inst (
    .CLK(bb_clk_in), 
    // Общий ресет контроллера. GND - активный. (то есть при GND  всё в ресете.)
    .RESET(rst_l),

    // входные секунды
    .HZ_IN(hz),
    // время входное
    .KBV_IN(timecode),

    // значение сдвижки в мкс.
    .SHIFT_IN(23'd10000),

    // выходная секунда
    .HZ_OUT(),
    // время выходное
    .KBV_OUT(internal_time),

    // (1 - секундная метка приходит снаружи, 0 - автоматически генерится)
    .STATUS_HZ_IN_NOT_AUTO(),

    // строб - произошла коррекция времени.
    .BIT_KBV_CORRECTION()
);

/*
IS61WV204816 IS61WV204816_inst(
    .A      (A),      
    .IO     (IO),      
    .CS_n   (CS), 
    .OE_n   (OE), 
    .WE_n   (WE),
    .LB_n   (LB),
    .UB_n   (UB)
);
*/

endmodule