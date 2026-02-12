module adc_8ch_wrap (
    input wire clk,
    input wire rst_l, 

    // serial interface //
    input  wire [2:0]  DOUT,
    output reg [2:0]   SCLK,
    output reg  [2:0]  CS_ADC,
    output reg  [2:0]  CD_MUX,
    output reg  [2:0]  DIN,
    
    input  wire        SYNC,
    output wire        RD_EN,
    output wire [2:0]  CHANNEL,
    output reg         BUSY,
    output wire [11:0] DATA_O   
);

reg all_devices_done;
reg [1:0] adc_counter;
wire all_channels_ready;
wire ready_delayed;

reg dout;
wire sclk;
wire cs_adc;
wire cs_mux;
wire din;
wire sync_i;

always @(posedge clk or negedge rst_l) begin // счетчик АЦП. Выставляет сигнал all_channels_done по окончании счета
    if (!rst_l) begin
        adc_counter <= 3'd0;
        all_devices_done    <= 1'b0;
    end
    else begin
        if (adc_counter == 3'd3) begin
            adc_counter <= 3'd0;
            all_devices_done    <= 1'b1;
        end
        else begin
            all_devices_done    <= 1'b0;
            if (all_channels_ready) 
                adc_counter <= adc_counter + 1'd1;
        end
    end
end

always @(*) begin
    dout = DOUT[adc_counter];
    CS_ADC[adc_counter] = cs_adc;
    CD_MUX[adc_counter] = cs_mux;
    SCLK  [adc_counter] = sclk;
    DIN   [adc_counter] = din;
end

assign sync_i = (adc_counter == 3'b0) ? SYNC : ready_delayed ; // для первого ацп идет синхросигнал сверху, следующие запускаются сигналом busy_delayed_pulse от предыдущего ацп

sync2 i_sync2_ready (clk, rst_l, all_channels_ready, ready_delayed); 

adc_8ch_045 adc_8ch_045_inst(
    .clk(clk),
    .rst_l(rst_l),

    // serial interface //
    .DOUT(dout),
    .SCLK(sclk),
    .CS_ADC(cs_adc),
    .CD_MUX(cs_mux),
    .DIN(din),
    
    .SYNC(sync_i),
    .RD_EN(RD_EN),
    .TOTAL_RD_EN(all_channels_ready),
    .CHANNEL(CHANNEL),
    .BUSY(),
    .DATA_O(DATA_O)
);
    
endmodule