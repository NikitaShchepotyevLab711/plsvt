module dac045a (
    input  wire        clk,
    input  wire        rst_l,

    input  wire        sync_300Hz,  // строб с частотой 300 Гц - частота обновления ЦАП
    input  wire        mode,        // 0 - установка фикс. значения, 1 - плавное изменение до порога. Поднять на уровень выше
    input  wire [15:0] fixed_value, // порог, равный по умолчанию 0хffff
    input  wire        cs,
    // добавить сигнал busy
    // spi //
    input  wire [5:0]  SDO,
    output reg  [5:0]  SDI,
    output reg  [5:0]  SCK,
    output reg  [5:0]  CLRn,
    output reg  [5:0]  LDAc,
    output reg  [5:0]  CSn
);
    
wire [15:0] data_to_dac;
wire [15:0] data_increment;
assign data_to_dac = mode ? data_increment : fixed_value; 

reg [2:0] dac_counter;
reg all_dacs_done;
wire dac_rdy;

wire sdo;
wire sdi;
wire sck;
wire clrn;
wire ldac;
wire csn;
wire sync_i;
wire sync_delayed;
wire dac_rdy_delayed;

always @(posedge clk or negedge rst_l) begin // счетчик АЦП. Выставляет сигнал all_channels_done по окончании счета
    if (!rst_l) begin
        dac_counter <= 3'd0;
        all_dacs_done    <= 1'b0;
    end
    else begin
        if (dac_counter == 3'd6) begin
            dac_counter <= 3'd0;
            all_dacs_done    <= 1'b1;
        end
        else begin
            all_dacs_done    <= 1'b0;
            if (dac_rdy) 
                dac_counter <= dac_counter + 1'd1;
        end
    end
end

always @(*) begin
    SDI[dac_counter]   = sdi;
    SCK[dac_counter]   = sck;
    CLRn[dac_counter]  = clrn;
    LDAc[dac_counter]  = ldac;
    CSn[dac_counter]   = csn;
end

assign sync_i = (dac_counter == 3'b0) ? sync_300Hz : dac_rdy_delayed ; // для первого ацп идет синхросигнал сверху, следующие запускаются сигналом busy_delayed_pulse от предыдущего ацп

sync2 i_sync2_busy   (clk, rst_l, dac_rdy, dac_rdy_delayed); 

spi_controller spi_inst (
    .clk(clk),
    .rst_l(rst_l),
    .data_i(data_to_dac),
    .dac_en(cs),
    .renew(sync_i),
    // spi //
    .SDO(SDO),
    .SDI(sdi),
    .SCK(sck),
    .CLRn(clrn),
    .LDAc(ldac),
    .CSn(csn),

    .rdy(dac_rdy)
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