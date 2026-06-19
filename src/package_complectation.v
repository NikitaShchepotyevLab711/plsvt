module package_complectation ( // добавить возвратные регистры
    input wire clk,
    input wire rst_l,
    input wire sync,

    input wire [23:0] adc045_data,
    input wire [15:0] dac_value,
    input wire [15:0] adc733_data,
    input wire [11:0] adc_8ch_data,
    input wire [11:0] dss_data,
    input wire [21:0] log_outputs_data,

    input wire        log_outputs_load,
    input wire        adc045_ready,
    input wire        dac_value_valid,
    input wire        adc733_ready,
    input wire        adc_8ch_ready,
    input wire        dss_ready,

    input wire        apb_read,
    input wire        read_request,

    output wire [7:0] data_o,
    output reg        all_data_sent,
    output reg        start_reading,
    output reg        package_complete,
    output reg        rd_en
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

reg [5:0] wr_word_counter;
reg [2:0] rd_word_counter;
reg       start_read_break;

reg [1:0]  memblock_sel;
wire       dc_in0 = memblock_sel[0];
wire       dc_in1 = memblock_sel[1];

reg WRB;
reg RDB;

reg half_byte_writen;
reg half_word_writen;
reg [7:0] data8ch_to_ram;

wire [8:0] DOut1;

reg [4:0] state;
localparam IDLE              = 5'h0;
localparam ADC045_1BYTE      = 5'h1;
localparam ADC045_2BYTE      = 5'h2;
localparam ADC045_3BYTE      = 5'h3;
localparam DAC_1BYTE         = 5'h4;
localparam DAC_2BYTE         = 5'h5;
localparam LOG_OUTPUTS_1BYTE = 5'h6;
localparam LOG_OUTPUTS_2BYTE = 5'h7;
localparam LOG_OUTPUTS_3BYTE = 5'h8;
localparam ADC733_1BYTE      = 5'h9;
localparam ADC733_2BYTE      = 5'ha;
localparam ADC8CH_1BYTE      = 5'hb;
localparam ADC8CH_2BYTE      = 5'hc;
localparam DSS_1BYTE         = 5'hd;
localparam DSS_2BYTE         = 5'he;
localparam WAIT_FOR_APB_TX   = 5'hf;
localparam ADC_045_READING   = 5'h10;
localparam ADC_733_READING   = 5'h11;
localparam ADC_8CH_READING   = 5'h12;
localparam DAC_DSS_READING   = 5'h13;

reg adc045_ready_reg;
reg adc733_ready_reg;
reg adc_8ch_ready_reg;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        data_to_ram       <= 8'b0;
        waddr             <= 8'b0;
        waddr1            <= 8'b0;
        waddr2            <= 8'b0;
        waddr3            <= 8'b0;
        waddr4            <= 8'b0;
        raddr             <= 8'b0;
        raddr1            <= 8'b0;
        raddr2            <= 8'b0;
        raddr3            <= 8'b0;
        raddr4            <= 8'b0;
        memblock_sel      <= 2'd0;
        state             <= IDLE;
        WRB               <= 1'b1;
        RDB               <= 1'b1;
        wr_word_counter   <= 6'd0;
        rd_word_counter   <= 6'd0;
        all_data_sent     <= 1'b0;
        start_read_break  <= 1'b0;
        package_complete  <= 1'b0;
        rd_en             <= 1'b0;
        half_byte_writen  <= 1'b0;
        half_word_writen  <= 1'b0;
        data8ch_to_ram    <= 8'b0;
        adc045_ready_reg  <= 1'b0;
        adc733_ready_reg  <= 1'b0;
        adc_8ch_ready_reg <= 1'b0;
    end
    else begin

        if (sync)
            wr_word_counter <= 6'd0; // по синхроимпульсу всегда сбрасываем, чтобы счет точно начинался с нуля каждый раз
        else begin
            if (!RDB) begin
                wr_word_counter <= 6'd0;
            end
            else begin 
                if (adc045_ready && adc_8ch_ready) begin
                    wr_word_counter <= wr_word_counter + 2'd2;
                end
                else if (adc045_ready && adc733_ready) begin
                    wr_word_counter <= wr_word_counter + 2'd2;
                end
                else if (adc_8ch_ready && adc733_ready) begin
                    wr_word_counter <= wr_word_counter + 2'd2;
                end
                else if (adc_8ch_ready && dac_value_valid) begin
                    wr_word_counter <= wr_word_counter + 2'd2;
                end
                else if (adc045_ready && dac_value_valid) begin
                    wr_word_counter <= wr_word_counter + 2'd2;
                end
                else if (adc045_ready && adc_8ch_ready && adc733_ready) begin
                    wr_word_counter <= wr_word_counter + 2'd3;
                end
                else if (dac_value_valid || adc045_ready || adc733_ready || adc_8ch_ready || dss_ready) begin
                    wr_word_counter <= wr_word_counter + 2'd1;
                end
            end
        end

        case (state)
                IDLE: begin
                    if (log_outputs_load)   
                        state <= LOG_OUTPUTS_1BYTE;   
                    else if (adc045_ready_reg || adc045_ready) // adc045_ready_reg нужен, если происходит наложение приходящих данных
                        state <= ADC045_1BYTE;
                        else if (adc733_ready_reg || adc733_ready)
                            state <= ADC733_1BYTE;
                            else if (adc_8ch_ready_reg || adc_8ch_ready)
                                state <= ADC8CH_1BYTE;
                                else if (dac_value_valid)
                                    state <= DAC_1BYTE;
                                    else if (dss_ready)
                                        state <= DSS_1BYTE;
                                            if (wr_word_counter == 6'd51)
                                                state <= WAIT_FOR_APB_TX;

                    data_to_ram      <= 8'b0;
                    memblock_sel     <= 2'd0;
                    WRB              <= 1'b1;
                    RDB              <= 1'b1; 
                    all_data_sent    <= 1'b0;
                    start_reading    <= 1'b0;
                    start_read_break <= 1'b0;
                    package_complete <= 1'b0;
                    rd_word_counter  <= 1'b0;
                    rd_en            <= 1'b0;
                    waddr1           <= sync ? 8'h0 : waddr1; 
                    raddr1           <= sync ? 8'h0 : raddr1; 
                    waddr2           <= sync ? 8'h0 : waddr2; 
                    raddr2           <= sync ? 8'h0 : raddr2; 
                    waddr3           <= sync ? 8'h0 : waddr3; 
                    raddr3           <= sync ? 8'h0 : raddr3; 
                    waddr4           <= sync ? 8'h0 : waddr4; 
                    raddr4           <= sync ? 8'h0 : raddr4; 
                end

                ADC045_1BYTE: begin   // данные с ацп 045 идут в первый подблок
                    start_reading    <= 1'b0;
                    data_to_ram      <= adc045_data[23:16];
                    waddr            <= waddr1;
                    waddr1           <= waddr1 + 1'b1;
                    memblock_sel     <= 2'd0;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1; 
                    state            <= ADC045_2BYTE;  
                    all_data_sent    <= 1'b0;    
                    start_read_break <= 1'b0;
                    package_complete <= 1'b0;
                    rd_en            <= 1'b0;
                    adc045_ready_reg <= 1'b0;
                    adc733_ready_reg <= adc733_ready ? 1'b1 : adc733_ready_reg;
                    adc_8ch_ready_reg <= adc_8ch_ready ? 1'b1 : adc_8ch_ready_reg;
                end

                ADC045_2BYTE: begin   
                    start_reading    <= 1'b0;
                    data_to_ram      <= adc045_data[15:8];
                    waddr            <= waddr1;
                    waddr1           <= waddr1 + 1'b1;
                    memblock_sel     <= 2'd0;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1; 
                    state            <= ADC045_3BYTE; 
                    all_data_sent    <= 1'b0;
                    start_read_break <= 1'b0;
                    package_complete <= 1'b0;
                    rd_en            <= 1'b0;
                    adc733_ready_reg <= adc733_ready ? 1'b1 : adc733_ready_reg;
                    adc_8ch_ready_reg <= adc_8ch_ready ? 1'b1 : adc_8ch_ready_reg;
                end

                ADC045_3BYTE: begin   
                    start_reading    <= 1'b0;
                    data_to_ram      <= adc045_data[7:0];
                    waddr            <= waddr1;
                    waddr1           <= waddr1 + 1'b1;
                    memblock_sel     <= 2'd0;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1;
                    state            <= IDLE;  
                    all_data_sent    <= 1'b0;
                    start_read_break <= 1'b0;
                    package_complete <= 1'b0;
                    rd_en            <= 1'b0;
                    adc733_ready_reg <= adc733_ready ? 1'b1 : adc733_ready_reg;
                    adc_8ch_ready_reg <= adc_8ch_ready ? 1'b1 : adc_8ch_ready_reg;
                end

                DAC_1BYTE: begin     // 6 значений ЦАП будуи храниться вместе с лог. выходами и 3 ззначениями ДСС
                    start_reading    <= 1'b0;
                    data_to_ram      <= dac_value[15:8];
                    waddr            <= waddr4;
                    waddr4           <= waddr4 + 1'b1;
                    memblock_sel     <= 2'd3;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1;
                    state            <= DAC_2BYTE;  
                    all_data_sent    <= 1'b0;
                    start_read_break <= 1'b0;
                    package_complete <= 1'b0;
                    rd_en            <= 1'b0;
                    adc045_ready_reg <= adc045_ready ? 1'b1 : adc045_ready_reg;
                    adc_8ch_ready_reg <= adc_8ch_ready ? 1'b1 : adc_8ch_ready_reg;
                    adc733_ready_reg  <= adc733_ready ? 1'b1 : adc733_ready_reg;
                end

                DAC_2BYTE: begin
                    start_reading    <= 1'b0;
                    data_to_ram      <= dac_value[7:0];
                    waddr            <= waddr4;
                    waddr4           <= waddr4 + 1'b1;
                    memblock_sel     <= 2'd3;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1;
                    state            <= IDLE;  
                    all_data_sent    <= 1'b0;
                    start_read_break <= 1'b0;
                    package_complete <= 1'b0;
                    rd_en            <= 1'b0;
                    adc045_ready_reg <= adc045_ready ? 1'b1 : adc045_ready_reg;
                    adc_8ch_ready_reg <= adc_8ch_ready ? 1'b1 : adc_8ch_ready_reg;
                    adc733_ready_reg  <= adc733_ready ? 1'b1 : adc733_ready_reg;
                end

                LOG_OUTPUTS_1BYTE: begin
                    start_reading    <= 1'b0;
                    data_to_ram      <= {2'b0, log_outputs_data[21:16]};
                    waddr            <= waddr4;
                    waddr4           <= waddr4 + 1'b1;
                    memblock_sel     <= 2'd3;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1;
                    state            <= LOG_OUTPUTS_2BYTE;  
                    all_data_sent    <= 1'b0;
                    start_read_break <= 1'b0;
                    package_complete <= 1'b0;
                    rd_en            <= 1'b0;
                    adc045_ready_reg <= adc045_ready ? 1'b1 : adc045_ready_reg;
                    adc733_ready_reg <= adc733_ready ? 1'b1 : adc733_ready_reg;
                    adc_8ch_ready_reg <= adc_8ch_ready ? 1'b1 : adc_8ch_ready_reg;
                end

                LOG_OUTPUTS_2BYTE: begin
                    start_reading    <= 1'b0;
                    data_to_ram      <= log_outputs_data[15:8];
                    waddr            <= waddr4;
                    waddr4           <= waddr4 + 1'b1;
                    memblock_sel     <= 2'd3;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1;
                    state            <= LOG_OUTPUTS_3BYTE;  
                    all_data_sent    <= 1'b0;
                    start_read_break <= 1'b0;
                    package_complete <= 1'b0;
                    rd_en            <= 1'b0;
                    adc045_ready_reg <= adc045_ready ? 1'b1 : adc045_ready_reg;
                    adc733_ready_reg <= adc733_ready ? 1'b1 : adc733_ready_reg;
                    adc_8ch_ready_reg <= adc_8ch_ready ? 1'b1 : adc_8ch_ready_reg;
                end

                LOG_OUTPUTS_3BYTE: begin
                    start_reading    <= 1'b0;
                    data_to_ram      <= log_outputs_data[7:0]; 
                    waddr            <= waddr4;
                    waddr4           <= waddr4 + 1'b1;
                    memblock_sel     <= 2'd3;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1;
                    state            <= IDLE;  
                    all_data_sent    <= 1'b0;
                    start_read_break <= 1'b0;
                    package_complete <= 1'b0;
                    rd_en            <= 1'b0;
                    adc045_ready_reg <= adc045_ready ? 1'b1 : adc045_ready_reg;
                    adc733_ready_reg <= adc733_ready ? 1'b1 : adc733_ready_reg;
                    adc_8ch_ready_reg <= adc_8ch_ready ? 1'b1 : adc_8ch_ready_reg;
                end

                ADC733_1BYTE: begin   // данные с ацп 733 идут во второй подблок
                    start_reading    <= 1'b0;
                    data_to_ram      <= adc733_data[15:8];
                    waddr            <= waddr2;
                    waddr2           <= waddr2 + 1'b1;
                    memblock_sel     <= 2'd1;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1;  
                    state            <= ADC733_2BYTE;
                    all_data_sent    <= 1'b0;
                    start_read_break <= 1'b0;
                    package_complete <= 1'b0;
                    rd_en            <= 1'b0;
                    adc045_ready_reg <= adc045_ready ? 1'b1 : adc045_ready_reg;
                    adc_8ch_ready_reg <= adc_8ch_ready ? 1'b1 : adc_8ch_ready_reg;
                    adc733_ready_reg <= 1'b0;
                end

                ADC733_2BYTE: begin   
                    start_reading    <= 1'b0;
                    data_to_ram      <= adc733_data[7:0];
                    waddr            <= waddr2;
                    waddr2           <= waddr2 + 1'b1;
                    memblock_sel     <= 2'd1;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1; 
                    state            <= IDLE; 
                    all_data_sent    <= 1'b0;
                    start_read_break <= 1'b0;
                    package_complete <= 1'b0;
                    rd_en            <= 1'b0;
                    adc045_ready_reg <= adc045_ready ? 1'b1 : adc045_ready_reg;
                    adc_8ch_ready_reg <= adc_8ch_ready ? 1'b1 : adc_8ch_ready_reg;
                end

                ADC8CH_1BYTE: begin   // данные с 8 канального ацп идут в третий подблок
                    start_reading    <= 1'b0;
                    if (half_byte_writen) begin
                        data_to_ram       <= {data8ch_to_ram[7:4], adc_8ch_data[11:8]};
                        half_byte_writen  <= 1'b0;
                        half_word_writen  <= 1'b1;
                    end
                    else begin
                        data_to_ram      <= adc_8ch_data[11:4];   
                        
                    end
                    waddr3            <= waddr3 + 1'b1;
                    waddr             <= waddr3;
                    memblock_sel      <= 2'd2;
                    WRB               <= 1'b0;
                    RDB               <= 1'b1;  
                    state             <= ADC8CH_2BYTE;
                    all_data_sent     <= 1'b0;
                    start_read_break  <= 1'b0;
                    package_complete  <= 1'b0;
                    rd_en             <= 1'b0;
                    adc045_ready_reg  <= adc045_ready ? 1'b1 : adc045_ready_reg;
                    adc733_ready_reg  <= adc733_ready ? 1'b1 : adc733_ready_reg;
                    adc_8ch_ready_reg <= 1'b0;
                end

                ADC8CH_2BYTE: begin 
                    start_reading    <= 1'b0;
                    if (half_byte_writen) begin
                        data_to_ram [3:0] <= 4'ha; 
                        half_byte_writen  <= 1'b0;
                    end
                    else begin  
                        if (half_word_writen) begin
                            data_to_ram <= adc_8ch_data[7:0];
                            waddr3      <= waddr3 + 1'b1; 
                            half_word_writen  <= 1'b0;
                        end
                        else begin
                            data8ch_to_ram    <= {adc_8ch_data[3:0], 4'b0};                        
                            half_byte_writen  <= 1'b1;
                        end
                    end
                    waddr            <= waddr3;
                    memblock_sel     <= 2'd2;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1;  
                    state            <= IDLE;
                    all_data_sent    <= 1'b0;
                    start_read_break <= 1'b0;
                    package_complete <= 1'b0;
                    rd_en            <= 1'b0;
                    adc045_ready_reg <= adc045_ready ? 1'b1 : adc045_ready_reg;
                    adc733_ready_reg <= adc733_ready ? 1'b1 : adc733_ready_reg;
                end

                DSS_1BYTE: begin   // данные с дсс идут в четвертый подблок
                    start_reading    <= 1'b0;
                    data_to_ram      <= dss_data[11:8];
                    memblock_sel     <= 2'd3;
                    waddr            <= waddr4;
                    waddr4           <= waddr4 + 1'b1;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1;  
                    state            <= DSS_2BYTE;
                    all_data_sent    <= 1'b0;
                    start_read_break <= 1'b0;
                    package_complete <= 1'b0;
                    rd_en            <= 1'b0;
                    adc045_ready_reg <= adc045_ready ? 1'b1 : adc045_ready_reg;
                    adc733_ready_reg <= adc733_ready ? 1'b1 : adc733_ready_reg;
                    adc_8ch_ready_reg <= adc_8ch_ready ? 1'b1 : adc_8ch_ready_reg;
                end

                DSS_2BYTE: begin
                    start_reading    <= 1'b0;
                    data_to_ram      <= dss_data[7:0];
                    waddr            <= waddr4;
                    waddr4           <= waddr4 + 1'b1;
                    memblock_sel     <= 2'd3;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1;  
                    state            <= IDLE;
                    all_data_sent    <= 1'b0;
                    start_read_break <= 1'b0;
                    package_complete <= 1'b0;
                    rd_en            <= 1'b0;
                    adc045_ready_reg <= adc045_ready ? 1'b1 : adc045_ready_reg;
                    adc733_ready_reg <= adc733_ready ? 1'b1 : adc733_ready_reg;
                    adc_8ch_ready_reg <= adc_8ch_ready ? 1'b1 : adc_8ch_ready_reg;
                    
                end

                WAIT_FOR_APB_TX: begin
                    rd_en            <= 1'b0;
                    if (!start_read_break) begin
                        if (start_reading == 1'b1) begin
                            package_complete <= 1'b0;
                            start_read_break <= 1'b1;
                        end
                        else
                            package_complete    <= 1'b1;
                    end
                    state <= apb_read ? ADC_045_READING : WAIT_FOR_APB_TX;
                end

                ADC_045_READING: begin // после записи 45 слов начинается чтение и формирование единого пакета
                    if (!apb_read) 
                        rd_word_counter <= 3'd0;
                    else begin
                        RDB <= (raddr1 == waddr1) ? 1'b1 : 1'b0; 
                        if (rd_word_counter < 3'd5) begin
                            rd_word_counter  <= rd_word_counter + 1'b1;
                            
                            memblock_sel     <= 2'd0;
                            start_reading    <= 1'b1;
                            raddr1           <= (rd_word_counter < 3'd4) ? raddr1 + 1'b1 : raddr1;
                            raddr            <= raddr1;
                            if (rd_word_counter > 3'd0) begin
                                WRB              <= 1'b1;           
                                all_data_sent    <= 1'b0;
                                package_complete <= 1'b0;
                                rd_en            <= 1'b1;
                            end
                        end
                        else begin
                            rd_en            <= 1'b0;
                            state            <= (raddr1 == waddr1) ? ADC_733_READING : ADC_045_READING;
                        end
                    end
                end

                ADC_733_READING: begin
                    if (!apb_read) 
                        rd_word_counter <= 3'd0;
                    else begin
                        RDB <= (raddr2 == waddr2) ? 1'b1 : 1'b0; 
                        if (rd_word_counter < 3'd5) begin
                            rd_word_counter  <= rd_word_counter + 1'b1;
                            start_reading    <= 1'b1;
                            memblock_sel     <= 2'd1;
                            raddr2           <= (rd_word_counter < 3'd4) ? raddr2 + 1'b1 : raddr2;
                            raddr            <= raddr2;
                            state            <= (raddr2 == waddr2) ? ADC_8CH_READING : ADC_733_READING;
                            package_complete <= 1'b0;
                            rd_word_counter  <= rd_word_counter + 1'b1;

                            if (rd_word_counter > 3'd0) begin
                                WRB              <= 1'b1;           
                                all_data_sent    <= 1'b0;
                                package_complete <= 1'b0;
                                rd_en            <= 1'b1;
                            end

                        end
                        else begin
                            rd_en            <= 1'b0;
                        end
                    end
                end

                ADC_8CH_READING: begin
                    if (!apb_read) 
                        rd_word_counter <= 3'd0;
                    else begin 
                        RDB <= (raddr3 == waddr3) ? 1'b1 : 1'b0; 
                        if (rd_word_counter < 3'd5) begin
                            rd_word_counter  <= rd_word_counter + 1'b1;
                            start_reading    <= 1'b1;
                            WRB              <= 1'b1;
                            memblock_sel     <= 2'd2;
                            raddr3           <= (rd_word_counter < 3'd4) ? raddr3 + 1'b1 : raddr3;
                            raddr            <= raddr3;
                            state            <= (raddr3 == waddr3) ? DAC_DSS_READING : ADC_8CH_READING;
                            all_data_sent    <= 1'b0;
                            package_complete <= 1'b0;
                            rd_word_counter  <= rd_word_counter + 1'b1;
                            rd_en            <= RDB ? 1'b0 : 1'b1;
                        end
                        else begin
                            rd_en            <= 1'b0;
                        end
                    end
                end
                
                DAC_DSS_READING: begin
                    if (!apb_read) 
                        rd_word_counter <= 3'd0;
                    else begin 
                        RDB <= (raddr4 == waddr4) ? 1'b1 : 1'b0; 
                        if (rd_word_counter < 3'd5) begin
                            rd_word_counter  <= rd_word_counter + 1'b1;
                            start_reading    <= 1'b1;
                            WRB              <= 1'b1;
                            memblock_sel     <= 2'd3;
                            raddr4           <= (rd_word_counter < 3'd4) ? raddr4 + 1'b1 : raddr4;
                            raddr            <= raddr4;
                            state            <= (raddr4 == waddr4) ? IDLE : DAC_DSS_READING;
                            all_data_sent    <= (raddr4 == waddr4);
                            package_complete <= 1'b0;
                            rd_word_counter  <= rd_word_counter + 1'b1;
                            rd_en            <= RDB ? 1'b0 : 1'b1;
                        end
                        else begin
                            rd_en            <= 1'b0;
                        end
                    end
                end

                default: begin
                    start_reading    <= 1'b0;
                    data_to_ram      <= 8'b0;
                    waddr            <= 8'b0;
                    waddr1           <= 8'b0;
                    waddr2           <= 8'b0;
                    waddr3           <= 8'b0;
                    waddr4           <= 8'b0;
                    memblock_sel     <= 2'd0;
                    WRB              <= 1'b0;
                    RDB              <= 1'b1;  
                    start_read_break <= 1'b0;
                    package_complete <= 1'b0;
                    half_byte_writen <= 1'b0;
                    half_word_writen <= 1'b0;
                    data8ch_to_ram   <= 8'b0;
                    state            <= IDLE;        
                end

            endcase
    end
end

wire clk_b;
xci2_buf clk_buf2 (
	.a(clk),
	.y(clk_b)
);

assign data_o = DOut1[7:0];

wire [7:0] waddr_buf = waddr;
wire [7:0] raddr_buf = raddr;
/*
genvar i;
generate
    for (i = 0; i < 8; i = i + 1) begin : addr_buf_gen_pck_cmplct
            xci2_buf buf_waddr_pck_cmplct (
                .a(waddr[i]),       
                .y(waddr_buf[i])     
            );

            xci2_buf buf_raddr_pck_cmplct (
                .a(raddr[i]),       
                .y(raddr_buf[i])     
            );
    end
endgenerate*/
/*
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
`else*/
    ramblock_4x_swrite_sread ramblock_4x_swrite_sread_instance (
        .DIn({1'b0,data_to_ram}),
        .RADDR(raddr_buf),
        .WADDR(waddr_buf),
        .RDB(RDB),
        .WRB(WRB),
        .RCLKS(clk_b),
        .WCLKS(clk_b),
        .DC_in0(dc_in0),
        .DC_in1(dc_in1),
        .DC_in2(1'b0),
        .DO1(DOut1),
        .DO2()
    );
//`endif

endmodule