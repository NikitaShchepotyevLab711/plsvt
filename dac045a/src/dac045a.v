module dac045a (
    input  wire        clk,
    input  wire        rst_l,

    input  wire        sync_300Hz,  // строб с частотой 300 Гц - частота обновления ЦАП
    input  wire        mode,        // 0 - установка фикс. значения, 1 - плавное изменение до порога. Поднять на уровень выше
    input  wire [15:0] fixed_value, // порог, равный по умолчанию 0хffff
    input  wire        cs,
    // добавить сигнал busy
    // spi //
    input  wire        SDO,
    output wire        SDI,
    output wire        SCK,
    output wire        CLRn,
    output wire        LDAc,
    output wire        CSn
);
    
wire [15:0] data_to_dac;
wire [15:0] data_increment;
assign data_to_dac = mode ? data_increment : fixed_value; 

spi_controller spi_inst (
    .clk(clk),
    .rst_l(rst_l),
    .data_i(data_to_dac),
    .dac_en(cs),
    .renew(sync_300Hz),
    // spi //
    .SDO(SDO),
    .SDI(SDI),
    .SCK(SCK),
    .CLRn(CLRn),
    .LDAc(LDAc),
    .CSn(CSn)
);

dac_codegen #(.DATA_WIDTH(16)) dac_codegen_inst (
	.clk(clk),
	.rst_l(rst_l),
	.data(data_increment),
	.start(sync_300Hz),
    .enable(mode),
    .limit(fixed_value)
);

endmodule