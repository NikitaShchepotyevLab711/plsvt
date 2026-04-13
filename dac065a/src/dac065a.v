module dac065a ( // доработать состояние SDI между передачами
    input  wire        clk,
    input  wire        rst_l,

    input  wire        sync_300Hz,  // строб с частотой 300 Гц - частота обновления ЦАП

    input  wire        mode,

    input  wire        period,

    input  wire [13:0] fixed_value,
    input  wire [13:0] limit,
    input  wire        cs,

    input  wire [13:0] step_coefficent,

    output wire [13:0] dac_value,
    output wire        dac_rdy,
    output wire        dac_value_valid,

    // добавить сигнал busy
    // spi //
    input  wire SDO,
    output reg  SDI,
    output reg  SCK,
    output reg  CLRn,
    output reg  LDAc,
    output reg  CSn
);
    
wire [23:0] data_to_dac;
wire [13:0] data_increment;

wire sdo;
wire sdi;
wire sck;
wire clrn;
wire ldac;
wire csn;
wire sync_i;
wire [3:0] A = 4'b0000;
wire [3:0] C = 4'b1010;
  
assign dac_value = data_to_dac;

assign data_to_dac = mode ? {C, A, data_increment, 2'd1} : {C, A, fixed_value, 2'd1}; 

always @(*) begin
    SDI  = sdi;
    SCK  = sck;
    CLRn = clrn;
    LDAc = ldac;
    CSn  = csn;
end

assign sync_i = sync_300Hz; // для первого ацп идет синхросигнал сверху, следующие запускаются сигналом busy_delayed_pulse от предыдущего ацп

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

    .valid(dac_value_valid),
    .rdy(dac_rdy)
);

dac_codegen dac_codegen_inst1 (
	.clk(clk),
	.rst_l(rst_l),
	.data(data_increment),
	.start(sync_300Hz),
    .enable(mode),
    .period(period),
    .step_coefficent(step_coefficent[2:0]),
    .limit(limit)
);

endmodule