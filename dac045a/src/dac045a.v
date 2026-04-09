module dac045a (
    input  wire        clk,
    input  wire        rst_l,

    input  wire        sync_300Hz,  // строб с частотой 300 Гц - частота обновления ЦАП

    input  wire        mode1,        // 0 - установка фикс. значения, 1 - плавное изменение до порога. Поднять на уровень выше
    input  wire        mode2,
    input  wire        mode3,
    input  wire        mode4,
    input  wire        mode5,
    input  wire        mode6,

    input  wire        period1,
    input  wire        period2, 
    input  wire        period3, 
    input  wire        period4,  
    input  wire        period5, 
    input  wire        period6, 

    input  wire [15:0] fixed_value1, // порог, равный по умолчанию 0хffff
    input  wire [15:0] fixed_value2,
    input  wire [15:0] fixed_value3,
    input  wire [15:0] fixed_value4,
    input  wire [15:0] fixed_value5,
    input  wire [15:0] fixed_value6,
    input  wire [15:0] limit,
    input  wire        cs,

    input  wire [15:0]  step_coefficent,

    output wire [15:0] dac_value,
    output wire        dac_rdy,
    output wire        dac_value_valid,

    // добавить сигнал busy
    // spi //
    input  wire [5:0]  SDO,
    output reg  [5:0]  SDI,
    output reg  [5:0]  SCK,
    output reg  [5:0]  CLRn,
    output reg  [5:0]  LDAc,
    output reg  [5:0]  CSn
);
    
reg  [15:0] data_to_dac;
wire [15:0] data_increment1;
wire [15:0] data_increment2;
wire [15:0] data_increment3;
wire [15:0] data_increment4;
wire [15:0] data_increment5;
wire [15:0] data_increment6;

reg [2:0] dac_counter;
reg all_dacs_done;

wire sdo;
wire sdi;
wire sck;
wire clrn;
wire ldac;
wire csn;
wire sync_i;
wire sync_delayed;
wire dac_rdy_delayed;

assign dac_value = data_to_dac;

always @(*) begin
    case (dac_counter)
        3'd0: data_to_dac = mode1 ? data_increment1 : fixed_value1; 
        3'd1: data_to_dac = mode2 ? data_increment2 : fixed_value2; 
        3'd2: data_to_dac = mode3 ? data_increment3 : fixed_value3; 
        3'd3: data_to_dac = mode4 ? data_increment4 : fixed_value4; 
        3'd4: data_to_dac = mode5 ? data_increment5 : fixed_value5; 
        3'd5: data_to_dac = mode6 ? data_increment6 : fixed_value6; 
        default: data_to_dac = fixed_value1;
    endcase
end

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
    .SDO(SDO[0]),
    .SDI(sdi),
    .SCK(sck),
    .CLRn(clrn),
    .LDAc(ldac),
    .CSn(csn),

    .valid(dac_value_valid),
    .rdy(dac_rdy)
);

dac_codegen dac_codegen_inst1 (
	.clk(clk),
	.rst_l(rst_l),
	.data(data_increment1),
	.start(sync_300Hz),
    .enable(mode1),
    .period(period1),
    .step_coefficent(step_coefficent[2:0]),
    .limit(limit)
);

dac_codegen dac_codegen_inst2 (
	.clk(clk),
	.rst_l(rst_l),
	.data(data_increment2),
	.start(sync_300Hz),
    .enable(mode2),
    .period(period2),
    .step_coefficent(step_coefficent[2:0]),
    .limit(limit)
);

dac_codegen dac_codegen_inst3 (
	.clk(clk),
	.rst_l(rst_l),
	.data(data_increment3),
	.start(sync_300Hz),
    .enable(mode3),
    .period(period3),
    .step_coefficent(step_coefficent[2:0]),
    .limit(limit)
);

dac_codegen dac_codegen_inst4 (
	.clk(clk),
	.rst_l(rst_l),
	.data(data_increment4),
	.start(sync_300Hz),
    .enable(mode4),
    .period(period4),
    .step_coefficent(step_coefficent[2:0]),
    .limit(limit)
);

dac_codegen dac_codegen_inst5 (
	.clk(clk),
	.rst_l(rst_l),
	.data(data_increment5),
	.start(sync_300Hz),
    .enable(mode5),
    .period(period5),
    .step_coefficent(step_coefficent[2:0]),
    .limit(limit)
);

dac_codegen dac_codegen_inst6 (
	.clk(clk),
	.rst_l(rst_l),
	.data(data_increment6),
	.start(sync_300Hz),
    .enable(mode6),
    .period(period6),
    .step_coefficent(step_coefficent[2:0]),
    .limit(limit)
);

endmodule