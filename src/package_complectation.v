module package_complectation (
    input wire clk,
    input wire rst_l,

    input wire [23:0] adc045_data,
    input wire [15:0] adc733_data,
    input wire [11:0] adc_8ch_data,
    input wire [11:0] dss_data,

    input wire        adc045_ready,
    input wire        adc733_ready,
    input wire        adc_8ch_ready,
    input wire        dss_ready,

    output wire [7:0] data_o,
    output reg        package_complete
);

reg [7:0]  data_to_ram;
reg [7:0]  waddr;
reg [7:0]  raddr;
reg [7:0]  waddr1;
reg [7:0]  waddr2;
reg [7:0]  waddr3;
reg [7:0]  waddr4;
reg [7:0]  raddr1;
reg [7:0]  raddr2;
reg [7:0]  raddr3;
reg [7:0]  raddr4;

reg [5:0] word_counter;

reg [1:0]  memblock_sel;
wire       dc_in0 = memblock_sel[0];
wire       dc_in1 = memblock_sel[1];

reg WRB;
reg RDB;

wire [8:0] DOut1;

reg [3:0] state;
localparam IDLE            = 0;
localparam ADC045_1BYTE    = 1;
localparam ADC045_2BYTE    = 2;
localparam ADC045_3BYTE    = 3;
localparam ADC733_1BYTE    = 4;
localparam ADC733_2BYTE    = 5;
localparam ADC8CH_1BYTE    = 6;
localparam ADC8CH_2BYTE    = 7;
localparam DSS_1BYTE       = 8;
localparam DSS_2BYTE       = 9;
localparam ADC_045_READING = 10;
localparam ADC_733_READING = 11;
localparam ADC_8CH_READING = 12;
localparam DSS_READING     = 13;


always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        data_to_ram      <= 8'b0;
        waddr            <= 8'b0;
        waddr1           <= 8'b0;
        waddr2           <= 8'b0;
        waddr3           <= 8'b0;
        waddr4           <= 8'b0;
        raddr            <= 8'b0;
        raddr1           <= 8'b0;
        raddr2           <= 8'b0;
        raddr3           <= 8'b0;
        raddr4           <= 8'b0;
        memblock_sel     <= 2'd0;
        state            <= IDLE;
        WRB              <= 1'b1;
        RDB              <= 1'b1;
        word_counter     <= 6'd0;
        package_complete <= 1'b0;
    end
    else begin

        if (!RDB) begin
            word_counter <= 6'd0;
        end
        else begin
            word_counter <= (adc045_ready || adc733_ready || adc_8ch_ready || dss_ready) ? word_counter + 1'b1 : word_counter;
        end

        case (state)
                IDLE: begin
                    data_to_ram  <= 8'b0;
                    memblock_sel <= 2'd0;
                    if (adc045_ready)
                        state <= ADC045_1BYTE;
                        else if (adc733_ready)
                            state <= ADC733_1BYTE;
                            else if (adc_8ch_ready)
                                state <= ADC8CH_1BYTE;
                                else if (dss_ready)
                                    state <= DSS_1BYTE;

                    if (word_counter == 6'd45)
                        state <= ADC_045_READING;

                    WRB              <= 1'b1;
                    RDB              <= 1'b1; 
                    package_complete <= 1'b0;
                end

                ADC045_1BYTE: begin   // данные с ацп 045 идут в первый подблок
                    data_to_ram      <= adc045_data[23:16];
                    waddr            <= waddr1;
                    waddr1           <= waddr1 + 1'b1;
                    memblock_sel     <= 2'd0;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1; 
                    state            <= ADC045_2BYTE;  
                    package_complete <= 1'b0;    
                end

                ADC045_2BYTE: begin   
                    data_to_ram      <= adc045_data[15:8];
                    waddr            <= waddr1;
                    waddr1           <= waddr1 + 1'b1;
                    memblock_sel     <= 2'd0;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1; 
                    state            <= ADC045_3BYTE; 
                    package_complete <= 1'b0;
                end

                ADC045_3BYTE: begin   
                    data_to_ram      <= adc045_data[7:0];
                    waddr            <= waddr1;
                    waddr1           <= waddr1 + 1'b1;
                    memblock_sel     <= 2'd0;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1;
                    state            <= IDLE;  
                    package_complete <= 1'b0;
                end

                ADC733_1BYTE: begin   // данные с ацп 733 идут во второй подблок
                    data_to_ram      <= adc733_data[15:8];
                    waddr            <= waddr2;
                    waddr2           <= waddr2 + 1'b1;
                    memblock_sel     <= 2'd1;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1;  
                    state            <= ADC733_2BYTE;
                    package_complete <= 1'b0;
                end

                ADC733_2BYTE: begin   
                    data_to_ram      <= adc733_data[7:0];
                    waddr            <= waddr2;
                    waddr2           <= waddr2 + 1'b1;
                    memblock_sel     <= 2'd1;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1; 
                    state            <= IDLE; 
                    package_complete <= 1'b0;
                end

                ADC8CH_1BYTE: begin   // данные с 8 канального ацп идут в третий подблок
                    data_to_ram      <= adc_8ch_data[11:8];
                    waddr            <= waddr3;
                    waddr3           <= waddr3 + 1'b1;
                    memblock_sel     <= 2'd2;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1;  
                    state            <= ADC8CH_2BYTE;
                    package_complete <= 1'b0;
                end

                ADC8CH_2BYTE: begin 
                    data_to_ram      <= adc_8ch_data[7:0];
                    waddr            <= waddr3;
                    waddr3           <= waddr3 + 1'b1;
                    memblock_sel     <= 2'd2;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1;  
                    state            <= IDLE;
                    package_complete <= 1'b0;
                end

                DSS_1BYTE: begin   // данные с дсс идут в четвертый подблок
                    data_to_ram      <= dss_data[11:8];
                    memblock_sel     <= 2'd3;
                    waddr            <= waddr4;
                    waddr4           <= waddr4 + 1'b1;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1;  
                    state            <= DSS_2BYTE;
                    package_complete <= 1'b0;
                end

                DSS_2BYTE: begin
                    data_to_ram      <= dss_data[7:0];
                    waddr            <= waddr4;
                    waddr4           <= waddr4 + 1'b1;
                    memblock_sel     <= 2'd3;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1;  
                    state            <= IDLE;
                    package_complete <= 1'b0;
                    
                end

                ADC_045_READING: begin // после записи 45 слов начинается чтение и формирование единого пакета
                    WRB              <= 1'b1;
                    RDB              <= (raddr1 == waddr1) ? 1'b1 : 1'b0; 
                    memblock_sel     <= 2'd0;
                    raddr1           <= raddr1 + 1'b1;
                    raddr            <= raddr1;
                    state            <= (raddr1 == waddr1) ? ADC_733_READING : ADC_045_READING;
                    package_complete <= 1'b0;
                end

                ADC_733_READING: begin
                    WRB              <= 1'b1;
                    RDB              <= (raddr2 == waddr2) ? 1'b1 : 1'b0; 
                    memblock_sel     <= 2'd1;
                    raddr2           <= raddr2 + 1'b1;
                    raddr            <= raddr2;
                    state            <= (raddr2 == waddr2) ? ADC_8CH_READING : ADC_733_READING;
                    package_complete <= 1'b0;
                end

                ADC_8CH_READING: begin
                    WRB              <= 1'b1;
                    RDB              <= (raddr3 == waddr3) ? 1'b1 : 1'b0; 
                    memblock_sel     <= 2'd2;
                    raddr3           <= raddr3 + 1'b1;
                    raddr            <= raddr3;
                    state            <= (raddr3 == waddr3) ? DSS_READING : ADC_8CH_READING;
                    package_complete <= 1'b0;
                end
                
                DSS_READING: begin
                    WRB              <= 1'b1;
                    RDB              <= (raddr4 == waddr4) ? 1'b1 : 1'b0; 
                    memblock_sel     <= 2'd3;
                    raddr4           <= raddr4 + 1'b1;
                    raddr            <= raddr4;
                    state            <= (raddr4 == waddr4) ? IDLE : DSS_READING;
                    package_complete <= (raddr4 == waddr4);
                end

                default: begin
                    data_to_ram  <= 8'b0;
                    waddr        <= 8'b0;
                    waddr1       <= 8'b0;
                    waddr2       <= 8'b0;
                    waddr3       <= 8'b0;
                    waddr4       <= 8'b0;
                    memblock_sel <= 2'd0;
                    WRB          <= 1'b0;
                    RDB          <= 1'b1;  
                    state        <= IDLE;        
                end

            endcase
    end
end

assign data_o = DOut1[7:0];

`ifdef DEBUG_MODE
psevdo_ram_block ram0 (
    .rst_l(rst_l),
	.DIn({1'b0,data_to_ram}),
	.RADDR(raddr),
	.WADDR(waddr),
	.RDB(RDB),
	.WRB(WRB),
	.RCLKS(clk),
	.WCLKS(clk),
	.DC_in0(dc_in0),
	.DC_in1(dc_in1),
	.DC_in2(1'b10),
	.DO1(DOut1),
	.DO2()
);
`else
ramblock_4x_swrite_sread ramblock_4x_swrite_sread_instance (
	.DIn({1'b0,data_inf_buf}),
	.RADDR(raddr_buf),
	.WADDR(data_inf_buf),
	.RDB(RDB_buf),
	.WRB(WRB_buf),
	.RCLKS(fifo_read_clk),
	.WCLKS(fifo_write_clk),
	.DC_in0(DC_in0),
	.DC_in1(DC_in1),
	.DC_in2(DC_in2),
	.DO1(DOut1),
	.DO2()
);
`endif

endmodule