`timescale 1ns/1ns

module top_tb;

// adc 045a //
localparam CLK_PERIOD = 84; 
localparam ADC_SAMPLE_RATE = 100000;
localparam SIGNAL_FREQ = 300; // 5kHz
localparam ADC045_PERIOD = 1000000000/ADC_SAMPLE_RATE;  // Период DRDY 256 kHz (3906.25 нс)

reg clk;
reg  drdy;           
reg  dout;    
reg  [5:0] cs;       
wire [5:0] din;           
reg  [5:0] sclk;
wire [5:0] nRST;
reg        rst_l;

reg SDO_8ch;

// dac //
reg mode;
reg [15:0] fixed_value;
reg [15:0] count_number;
reg [15:0] last_data_to_dac;
real start_time;
real last_print_time;

// vsi //
wire DATA1;
wire DATA2;
reg COM1;
reg COM2;

// adc733 //
reg SCLK_733;
reg SDOFS;
reg SDO_733;
wire SE;
reg bit_counter;
reg adc733_clk;
localparam SIGNAL_FREQ1 = 1000; 
localparam SIGNAL_FREQ2 = 500; 
localparam SIGNAL_FREQ3 = 1500; 
localparam SIGNAL_FREQ4 = 2000; 
localparam ADC_PERIOD = 1000000000/ADC_SAMPLE_RATE;  // Период DRDY 256 kHz (3906.25 нс)

real time_counter = 0;
real dt = 1.0 / ADC_SAMPLE_RATE;
real sin_value1_733;
real cos_value1_733;
reg [15:0] sample;
reg [15:0] prev_sample = '0;
reg [15:0] sin_signal1;
reg [15:0] cos_signal1;

real sin_value2_733;
real cos_value2_733;
reg [15:0] sin_signal2;
reg [15:0] cos_signal2;

real sin_value3_733;
real cos_value3_733;
reg [15:0] sin_signal3;
reg [15:0] cos_signal3;

reg [2:0] channel_counter = 0;

wire adc045_sclk_1, adc045_sclk_2, adc045_sclk_3, adc045_sclk_4, adc045_sclk_5, adc045_sclk_6;
reg adc045_dout_1, adc045_dout_2, adc045_dout_3, adc045_dout_4, adc045_dout_5, adc045_dout_6;

reg adc8ch_dout_1;
reg adc8ch_dout_2;
reg adc8ch_dout_3;
reg SCLK_8ch;

localparam CLOCK_FREQ = 12_000_000; 
localparam BAUD_RATE = 57600;  
localparam BIT_PERIOD = CLOCK_FREQ / BAUD_RATE; 
reg uart_rxd;

reg bb_psel, bb_penable;
reg [31:0] bb_pwdata;
reg [15:0] bb_paddr;
wire bb_pready;

top dut (

    .bb_clk_in(clk),
    .rst_l(rst_l),

    .bb_psel(bb_psel),
	.bb_penable(bb_penable),
	.bb_paddr(bb_paddr),
	.bb_pwrite(),
	.bb_pwdata(bb_pwdata),
	.bb_prdata(),
	.bb_pready(bb_pready),

    //  1 adc045 //
    .adc045_drdy_1(drdy),           
    .adc045_dout_1(adc045_dout_1),    
    .adc045_cs_1(),       
    .adc045_din_1(),           
    .adc045_sclk_1(adc045_sclk_1),
    .adc045_nrst_1(),
    .adc045_start_1(),

    //  2 adc045 //
    .adc045_drdy_2(drdy),           
    .adc045_dout_2(adc045_dout_2),    
    .adc045_cs_2(),       
    .adc045_din_2(),           
    .adc045_sclk_2(adc045_sclk_2),
    .adc045_nrst_2(),
    .adc045_start_2(),

    //  3 adc045 //
    .adc045_drdy_3(drdy),           
    .adc045_dout_3(adc045_dout_3),    
    .adc045_cs_3(),       
    .adc045_din_3(),           
    .adc045_sclk_3(adc045_sclk_3),
    .adc045_nrst_3(),
    .adc045_start_3(),

    //  4 adc045 //
    .adc045_drdy_4(drdy),           
    .adc045_dout_4(adc045_dout_4),    
    .adc045_cs_4(),       
    .adc045_din_4(),           
    .adc045_sclk_4(adc045_sclk_4),
    .adc045_nrst_4(),
    .adc045_start_4(),

    //  5 adc045 //
    .adc045_drdy_5(drdy),           
    .adc045_dout_5(adc045_dout_5),    
    .adc045_cs_5(),       
    .adc045_din_5(),           
    .adc045_sclk_5(adc045_sclk_5),
    .adc045_nrst_5(),
    .adc045_start_5(),

    //  6 adc045 //
    .adc045_drdy_6(drdy),           
    .adc045_dout_6(adc045_dout_6),    
    .adc045_cs_6(),       
    .adc045_din_6(),           
    .adc045_sclk_6(adc045_sclk_6),
    .adc045_nrst_6(),
    .adc045_start_6(),

    // 1 dac045a spi //
    .dac045a_sdo_1(),
    .dac045a_sdi_1(),
    .dac045a_sck_1(),
    .dac045a_clrn_1(),
    .dac045a_ldac_1(),
    .dac045a_csn_1(),

    // 2 dac045a spi //
    .dac045a_sdo_2(),
    .dac045a_sdi_2(),
    .dac045a_sck_2(),
    .dac045a_clrn_2(),
    .dac045a_ldac_2(),
    .dac045a_csn_2(),

    // 3 dac045a spi //
    .dac045a_sdo_3(),
    .dac045a_sdi_3(),
    .dac045a_sck_3(),
    .dac045a_clrn_3(),
    .dac045a_ldac_3(),
    .dac045a_csn_3(),

    // 4 dac045a spi //
    .dac045a_sdo_4(),
    .dac045a_sdi_4(),
    .dac045a_sck_4(),
    .dac045a_clrn_4(),
    .dac045a_ldac_4(),
    .dac045a_csn_4(),

    // 5 dac045a spi //
    .dac045a_sdo_5(),
    .dac045a_sdi_5(),
    .dac045a_sck_5(),
    .dac045a_clrn_5(),
    .dac045a_ldac_5(),
    .dac045a_csn_5(),

    // 6 dac045a spi //
    .dac045a_sdo_6(),
    .dac045a_sdi_6(),
    .dac045a_sck_6(),
    .dac045a_clrn_6(),
    .dac045a_ldac_6(),
    .dac045a_csn_6(),

    // adc733 serial port //
    .adc733_sclk(SCLK_733),
    .adc733_sdofs(SDOFS),
    .adc733_sdo(SDO_733),
    .adc733_sdifs(),
    .adc733_sdi(),
    .adc733_se(SE),

    // 1 adc_8ch_045 serial interface //
    .adc8ch_dout_1(adc8ch_dout_1),
    .adc8ch_sclk_1(adc8ch_sclk_1),
    .adc8ch_cs_adc_1(),
    .adc8ch_cd_mux_1(),
    .adc8ch_din_1(),

    // 2 adc_8ch_045 serial interface //
    .adc8ch_dout_2(adc8ch_dout_2),
    .adc8ch_sclk_2(adc8ch_sclk_2),
    .adc8ch_cs_adc_2(),
    .adc8ch_cd_mux_2(),
    .adc8ch_din_2(),

    // 3 adc_8ch_045 serial interface //
    .adc8ch_dout_3(adc8ch_dout_3),
    .adc8ch_sclk_3(adc8ch_sclk_3),
    .adc8ch_cs_adc_3(),
    .adc8ch_cd_mux_3(),
    .adc8ch_din_3(),

    // vsi interface //
    .vsi_data1(DATA1),
    .vsi_data2(DATA2),
    .vsi_com1(COM1),
    .vsi_com2(COM2),

    // lvds dss //
    .lvds_ro(uart_rxd),
    .lvds_re(),
    .lvds_di(),
    .lvds_de()
);

//adc045a//

real time_counter_045;
real sin_value;
real cos_value;
wire [23:0] ch1_sample;
reg [23:0] sin_signal;
reg [23:0] cos_signal;

reg adc045_clk;
integer bit_counter045;

always @(*) begin
    case (dut.adc_045_inst.adc_counter)
        3'd0: begin
            adc045_dout_1 = dout;
            sclk = adc045_sclk_1;
        end

        3'd1: begin
            adc045_dout_2 = dout;
            sclk = adc045_sclk_2;       
        end

        3'd2: begin
            adc045_dout_3 = dout;
            sclk = adc045_sclk_3;     
        end

        3'd3: begin
            adc045_dout_4 = dout;
            sclk = adc045_sclk_4;   
        end

        3'd4: begin
            adc045_dout_5 = dout;
            sclk = adc045_sclk_5;       
        end

        3'd5: begin
            adc045_dout_6 = dout;
            sclk = adc045_sclk_6;          
        end
        default: begin
             
        end
    endcase
end

initial begin
    clk = 0;
    forever #(CLK_PERIOD/2) clk = ~clk;
end

initial begin
    adc045_clk = 0;
    forever #(ADC045_PERIOD/2) adc045_clk = ~adc045_clk;
end

always @(posedge adc045_clk or negedge nRST) begin 
    if (!nRST) begin
        time_counter_045 <= 0;
        sin_value <= 0;
        cos_value <= 0;
    end
    else begin
        begin
            time_counter_045 <= time_counter_045 + dt;
            sin_value <= $sin(2 * 3.141592653589793 * SIGNAL_FREQ * time_counter_045);
            cos_value <= $cos(2 * 3.141592653589793 * SIGNAL_FREQ * time_counter_045);
            sin_signal <= sin_value * (2**23 - 1);
            cos_signal <= cos_value * (2**23 - 1);           
        end
    end
end

assign ch1_sample = (dut.adc_045_inst.adc_inst.A_MUX == 0) ? sin_signal : cos_signal;


task send_adc_data;
    input [23:0] ch1;
    integer i;

    begin
        for (i = 24; i >= 0; i = i - 1) begin
            dout = ch1[i];
            bit_counter045 = i; 
            @(posedge sclk);
            
            if (i == 24) begin
                drdy <= 1'b1;
                dout = 1'b0;
                @(posedge sclk); drdy <= 1'b0;
            end
        end
    end
endtask

initial begin
    dout = 1'b0;
    drdy = 1'b0;
    bit_counter045 = 0;
    prev_sample = ch1_sample;
    
    forever begin
        @(posedge adc733_clk);
        send_adc_data(ch1_sample);
    end
end

initial begin
    uart_rxd = 1;
    dut.read_request = 0;
    rst_l = 1;
    #100;
    rst_l = 0;
    #100;
    rst_l = 1;
    forever begin
        @(posedge dut.lvds_wrapper_inst.byte_sent);
        send_5_values();
    end
end

// получение от плис пакета данных ОБ //
initial begin
    bb_psel = 0;
    bb_penable = 0;
    bb_paddr = 15'h0;
    forever begin
        if (dut.apb_coder_inst.DATA_READY)
        bb_paddr = 15'h100;
        bb_psel <= 1;
        @(posedge clk);
        bb_penable <= 1;
        wait (bb_pready);
        @(posedge clk);
        if (dut.apb_coder_inst.data_tx_frame)
            bb_paddr <= bb_paddr + 3'd4;
        bb_psel <= 0;
        bb_penable <= 0;  
        #3000;
        @(posedge clk);
    end
end

integer tx_cnt;

// отправка в плис итогового пакета 310 Байт // 
initial begin
    bb_pwdata = 31'hf0000000;
    
    forever begin
        
        @(posedge dut.apb_coder_inst.data_tx_end_pulse);
        bb_paddr = 16'h200;
        @(posedge clk);  
        
        for (tx_cnt = 0; tx_cnt < 78; tx_cnt = tx_cnt + 1) begin
            @(posedge clk);  
            wait (bb_psel);
            @(posedge bb_psel);  
            bb_paddr  = bb_paddr + 1;
            bb_pwdata = bb_pwdata + 1;
        end

        bb_paddr <= 16'h0;
        

    end

end

// dac //
initial begin
    last_data_to_dac = 16'h0000;
    start_time = 0;
    last_print_time = 0;
    
    wait(mode == 1);
    start_time = $time;
    $display("=== Monitoring data_to_dac changes (mode = 1) ===");
    $display("Time(ms)\tdata_to_dac\tsample_number");
    
    forever begin
        @(posedge clk); 
        if (dut.dac_045_inst.data_to_dac !== last_data_to_dac) begin
            last_data_to_dac = dut.dac_045_inst.data_to_dac;
            last_print_time = ($time - start_time) / 1000000.0; 
            $display("%0t ms\t\t%h\t\t%d", last_print_time, dut.dac_045_inst.data_to_dac, count_number);
        end
    end
end

always @(posedge clk) count_number <= dut.sync ? (count_number + 1) : 0; 
    
// adc733 //

initial begin
    adc733_clk = 0;
    forever #(ADC_PERIOD/2) adc733_clk = ~adc733_clk;
end

always @(posedge adc733_clk or negedge rst_l) begin 
    if (!rst_l) begin
        time_counter <= 0;
        sin_value1_733 <= 0;
        cos_value1_733 <= 0;
        sin_value2_733 <= 0;
        cos_value2_733 <= 0;
        sin_value3_733 <= 0;
        cos_value3_733 <= 0;
    end
    else begin
        begin
            time_counter <= time_counter + dt;
            sin_value1_733 <= $sin(2 * 3.141592653589793 * SIGNAL_FREQ1 * time_counter);
            cos_value1_733 <= $cos(2 * 3.141592653589793 * SIGNAL_FREQ1 * time_counter);
            sin_signal1 <= sin_value1_733 * (2**15 - 1);
            cos_signal1 <= cos_value1_733 * (2**15 - 1);           

            sin_value2_733 <= $sin(2 * 3.141592653589793 * SIGNAL_FREQ2 * time_counter);
            cos_value2_733 <= $cos(2 * 3.141592653589793 * SIGNAL_FREQ2 * time_counter);
            sin_signal2 <= sin_value2_733 * (2**15 - 1);
            cos_signal2 <= cos_value2_733 * (2**15 - 1);

            sin_value3_733 <= $sin(2 * 3.141592653589793 * SIGNAL_FREQ3 * time_counter);
            cos_value3_733 <= $cos(2 * 3.141592653589793 * SIGNAL_FREQ3 * time_counter);
            sin_signal3 <= sin_value3_733 * (2**15 - 1);
            cos_signal3 <= cos_value3_733 * (2**15 - 1);   
        end
    end
end

always @(*) begin
    case (channel_counter)
        0 : sample = sin_signal1;
        1 : sample = cos_signal1;
        2 : sample = sin_signal2;
        3 : sample = cos_signal2;
        4 : sample = sin_signal3;
        5 : sample = cos_signal3;
        default: sample = sin_signal1;
    endcase
end

task send_adc733_data;
    input [15:0] ch1;
    integer i;
    begin
        for (i = 16; i >= 0; i = i - 1) begin
            SDO_733 = ch1[i];
            bit_counter = i; 
            @(posedge SCLK_733);
            
            if (i == 16) begin
                SDOFS <= 1'b1;
                if (channel_counter == 5)
                    channel_counter = 0;
                else 
                    channel_counter = channel_counter + 1'b1;
                SDO_733 = ch1[i];
                @(posedge SCLK_733); SDOFS <= 1'b0;
            end
        end
    end
endtask

initial begin
    SDO_733 = 1'b0;
    SDOFS = 1'b0;
    bit_counter = 0;
    prev_sample = sample;
    
    forever begin
        @(posedge adc733_clk);
        if (sample !== prev_sample) begin
            prev_sample = sample;
            send_adc733_data(sample);
        end
    end
end

always begin
    if (SE) begin
        SCLK_733 = 0;
        forever #(61.035) SCLK_733 = ~SCLK_733;  // 8.192 MHz
    end else begin
        SCLK_733 = 0;
        wait(SE); 
    end
end

// adc 8ch //
always @(*) begin
    case (dut.adc_8ch_wrap_inst.adc_counter)
        3'd0: begin
            adc8ch_dout_1 = SDO_8ch;
            SCLK_8ch = adc8ch_sclk_1;
        end

        3'd1: begin
            adc8ch_dout_2 = SDO_8ch;      
            SCLK_8ch = adc8ch_sclk_2;
        end

        3'd2: begin
            adc8ch_dout_3 = SDO_8ch;  
            SCLK_8ch = adc8ch_sclk_3;  
        end

        default: begin
             
        end
    endcase
end

reg adc8ch_clk;
real time_counter_8ch = 0;
real sin_value1_8ch;
real cos_value1_8ch;
reg [11:0] sample_8ch;
reg [11:0] sin_signal1_8ch;
reg [11:0] cos_signal1_8ch;

real sin_value2_8ch;
real cos_value2_8ch;
reg [11:0] sin_signal2_8ch;
reg [11:0] cos_signal2_8ch;

real sin_value3_8ch;
real cos_value3_8ch;
reg [11:0] sin_signal3_8ch;
reg [11:0] cos_signal3_8ch;

real sin_value4_8ch;
real cos_value4_8ch;
reg [11:0] sin_signal4_8ch;
reg [11:0] cos_signal4_8ch;

initial begin
    adc8ch_clk = 0;
    forever #(ADC_PERIOD/2) adc8ch_clk = ~adc8ch_clk;
end

always @(posedge adc8ch_clk or negedge rst_l) begin 
    if (!rst_l) begin
        time_counter_8ch <= 0;
        sin_value1_8ch <= 0;
        cos_value1_8ch <= 0;
        sin_value2_8ch <= 0;
        cos_value2_8ch <= 0;
        sin_value3_8ch <= 0;
        cos_value3_8ch <= 0;
        sin_value4_8ch <= 0;
        cos_value4_8ch <= 0;
    end
    else begin
        begin
            time_counter_8ch <= time_counter_8ch + dt;
            sin_value1_8ch <= $sin(2 * 3.141592653589793 * SIGNAL_FREQ1 * time_counter_8ch);
            cos_value1_8ch <= $cos(2 * 3.141592653589793 * SIGNAL_FREQ1 * time_counter_8ch);
            sin_signal1_8ch <= sin_value1_8ch * (2**11 - 1);
            cos_signal1_8ch <= cos_value1_8ch * (2**11 - 1);           

            sin_value2_8ch <= $sin(2 * 3.141592653589793 * SIGNAL_FREQ2 * time_counter_8ch);
            cos_value2_8ch <= $cos(2 * 3.141592653589793 * SIGNAL_FREQ2 * time_counter_8ch);
            sin_signal2_8ch <= sin_value2_8ch * (2**11 - 1);
            cos_signal2_8ch <= cos_value2_8ch * (2**11 - 1);

            sin_value3_8ch <= $sin(2 * 3.141592653589793 * SIGNAL_FREQ3 * time_counter_8ch);
            cos_value3_8ch <= $cos(2 * 3.141592653589793 * SIGNAL_FREQ3 * time_counter_8ch);
            sin_signal3_8ch <= sin_value3_8ch * (2**11 - 1);
            cos_signal3_8ch <= cos_value3_8ch * (2**11 - 1);   

            sin_value4_8ch <= $sin(2 * 3.141592653589793 * SIGNAL_FREQ4 * time_counter_8ch);
            cos_value4_8ch <= $cos(2 * 3.141592653589793 * SIGNAL_FREQ4 * time_counter_8ch);
            sin_signal4_8ch <= sin_value4_8ch * (2**11 - 1);
            cos_signal4_8ch <= cos_value4_8ch * (2**11 - 1);   
        end
    end
end

always @(*) begin
    case (dut.adc_8ch_wrap_inst.CHANNEL)
        0 : sample_8ch = sin_signal1_8ch;
        1 : sample_8ch = cos_signal1_8ch;
        2 : sample_8ch = sin_signal2_8ch;
        3 : sample_8ch = cos_signal2_8ch;
        4 : sample_8ch = sin_signal3_8ch;
        5 : sample_8ch = cos_signal3_8ch;
        6 : sample_8ch = sin_signal4_8ch;
        7 : sample_8ch = cos_signal4_8ch;
        default: sample_8ch = sin_signal1_8ch;
    endcase
end

task send_adc8ch_data;
    input [15:0] ch1;
    integer i;
    begin
        for (i = 16; i >= 0; i = i - 1) begin
            if (i >= 13)
                SDO_8ch = 0;
            else
                SDO_8ch = ch1[i-1];

            if (i == 0)
                SDO_8ch = 1'hz;
            
            @(negedge SCLK_8ch);
        end
    end
endtask

initial begin
    forever begin
        @(posedge dut.adc_8ch_wrap_inst.adc_8ch_045_inst.data_mode);
        send_adc8ch_data(sample_8ch);
    end
end

// dss //

reg [11:0] first_dataword = 12'hffd;
reg [11:0] second_dataword = 12'hffe;
reg [11:0] third_dataword = 12'hfff;

task send_5_values;
    reg [7:0] data_bytes[4:0];
    integer j;
    begin
        data_bytes [0] = first_dataword[7:0];
        data_bytes [1] = {second_dataword[3:0], first_dataword[11:8]};
        data_bytes [2] = {second_dataword[11:4]};
        data_bytes [3] = third_dataword[7:0];
        data_bytes [4] = {4'b0, third_dataword[11:8]};

        for (j = 0; j < 5; j = j + 1) begin
            send_uart_byte(data_bytes[j]);
        end
    end
endtask 

task send_uart_byte;
    input [7:0] byte_data;
    integer bit_time;
    integer i;
    begin
        bit_time = 1_000_000_000 / BAUD_RATE; 
        uart_rxd = 0;
        #bit_time;
        for (i = 0; i < 8; i = i + 1) begin
            uart_rxd = byte_data[i];
            #bit_time;
        end
        uart_rxd = 1;
        #bit_time;
    end
endtask

// vsi //

// Функция расчета CRC-16 (соответствует модулю crc16)
function [15:0] calculate_crc;
    input [7:0] data;
    input [15:0] crc;
    
    reg [15:0] temr;
    reg [15:0] xor_out;
    begin
        // Расчет промежуточных значений temr
        temr[0] = data[4] ^ data[0];
        temr[1] = data[5] ^ data[1];
        temr[2] = data[6] ^ data[2];
        temr[3] = data[7] ^ data[3];
        temr[4] = crc[12] ^ crc[8];
        temr[5] = crc[13] ^ crc[9];
        temr[6] = crc[14] ^ crc[10];
        temr[7] = crc[15] ^ crc[11];
        temr[8] = data[4] ^ crc[12];
        temr[9] = data[5] ^ crc[13];
        temr[10] = data[6] ^ crc[14];
        temr[11] = data[7] ^ crc[15];
        temr[12] = temr[0] ^ temr[4];
        temr[13] = temr[1] ^ temr[5];
        temr[14] = temr[2] ^ temr[6];
        temr[15] = temr[3] ^ temr[7];
        
        // Расчет выходного значения XOR
        xor_out[0] = temr[12];
        xor_out[1] = temr[13];
        xor_out[2] = temr[14];
        xor_out[3] = temr[15];
        xor_out[4] = temr[8];
        xor_out[5] = temr[9] ^ temr[12];
        xor_out[6] = temr[10] ^ temr[13];
        xor_out[7] = temr[11] ^ temr[14];
        xor_out[8] = temr[15] ^ crc[0];
        xor_out[9] = temr[8] ^ crc[1];
        xor_out[10] = temr[9] ^ crc[2];
        xor_out[11] = temr[10] ^ crc[3];
        xor_out[12] = temr[11] ^ temr[12] ^ crc[4];
        xor_out[13] = temr[13] ^ crc[5];
        xor_out[14] = temr[14] ^ crc[6];
        xor_out[15] = temr[15] ^ crc[7];
        
        calculate_crc = xor_out;
    end
endfunction

integer p, r;
reg [7:0] test_data [0:2047];
reg [15:0] crc_table [0:255];
wire clk_tx = dut.vsi_inst.strobe_1mhz;
wire clk_rx = dut.vsi_inst.strobe_4mhz;
reg suspi_clk;
always #500 suspi_clk = ~suspi_clk;

initial begin
    // Инициализация таблицы CRC-16
    for (p = 0; p < 256; p = p + 1) begin
        crc_table[p] = p;
        for (r = 0; r < 8; r = r + 1) begin
            crc_table[p] = crc_table[p][0] ? 
                (crc_table[p] >> 1) ^ 16'hA001 : 
                (crc_table[p] >> 1);
        end
    end
    
    // Заполнение тестовых данных
    for (p = 0; p < 2032; p = p + 1) begin
        test_data[p] = p;
    end
    
    suspi_clk = 0;
    COM1 = 1; 
    COM2 = 1;
    
end

// Генератор строба для передачи (каждые 3 такта)
reg [2:0] tx_counter = 0;
wire tx_strobe = (tx_counter == 2);

always @(posedge clk) begin
    tx_counter <= tx_counter + 1;
end

// Генератор строба для приема (каждые 12 тактов)
reg [3:0] rx_counter = 0;
wire rx_strobe = (rx_counter == 11);

always @(posedge clk) begin
    rx_counter <= rx_counter + 1;
end

reg [7:0] tx_byte;
reg [3:0] tx_bit_counter;
reg [7:0] rx_byte;
reg [3:0] rx_bit_counter;
reg [15:0] data_length;
reg [15:0] expected_crc;
reg [15:0] calculated_crc;

reg [7:0] status_byte1;
reg [7:0] status_byte2; 
reg [7:0] status_byte3;
reg [7:0] status_byte4;
reg [7:0] status_crc_low;
reg [7:0] status_crc_high;

// Регистры для сохранения данных пакета
reg [7:0] packet_marker;
reg [7:0] packet_flag;
reg [7:0] packet_length_high;
reg [7:0] packet_length_low;
reg [7:0] packet_data [0:2047];
reg [7:0] packet_crc_low;
reg [7:0] packet_crc_high;
integer packet_data_index;

initial begin
    tx_byte = 0;
    tx_bit_counter = 0;
    rx_byte = 0;
    rx_bit_counter = 0;
    data_length = 0;
    expected_crc = 0;
    calculated_crc = 16'hFFFF;
    status_byte2 = 0;

//    wait(dut.sync);
    #110000000;
    
    while (status_byte2 != 2) begin
        // статус
        #10000000;
        send_command(8'hA5, 8'h03, 16'h0000);
        receive_status();
    end
    
    // Отправка команды "Запрос пакета"
    send_command(8'hA5, 8'h04, 16'h0000);
    
    // Прием пакета данных
    receive_data_packet();

    #1000000;

        // Отправка команды "Запрос пакета"
    send_command(8'hA5, 8'h04, 16'h0000);
    
    // Прием пакета данных
    receive_data_packet();

end

// Функция расчета бита четности (нечет)
function calculate_parity;
    input [7:0] data;
    begin
        calculate_parity = ~(^data); 
    end
endfunction

// Задача отправки команды с 11-битной последовательной передачей
task send_command;
    input [7:0] marker;
    input [7:0] flag;
    input [15:0] length;
    
    reg [15:0] crc;
    begin
        crc = 16'hFFFF;
        
        // Отправка маркера
        send_11bit_byte(marker);
        crc = calculate_crc(marker, crc);
        
        // Отправка флага
        send_11bit_byte(flag);
        crc = calculate_crc(flag, crc);
        
        // Отправка длины (старший байт)
        send_11bit_byte(length[15:8]);
        crc = calculate_crc(length[15:8], crc);
        
        // Отправка длины (младший байт)
        send_11bit_byte(length[7:0]);
        crc = calculate_crc(length[7:0], crc);
        
        // Отправка CRC (младший байт)
        send_11bit_byte(crc[15:8]);
        
        // Отправка CRC (старший байт)
        send_11bit_byte(crc[7:0]);
    end
endtask

task send_11bit_byte;
    input [7:0] data_byte;
    reg parity_bit;
    integer i;
    begin
        parity_bit = calculate_parity(data_byte);
        
        // Стартовый бит (0)
        @(posedge suspi_clk);
        COM1 <= 1'b0;
        
        // 8 бит данных (младшим битом вперед)
        for (i = 0; i < 8; i = i + 1) begin
            @(posedge suspi_clk);
            COM1 <= data_byte[i];
        end
        
        // Бит четности
        @(posedge suspi_clk);
        COM1 <= parity_bit;
        
        // Стоповый бит (1)
        @(posedge suspi_clk);
        COM1 <= 1'b1;
        
    end
endtask

// Задача приема статуса
task receive_status;
    begin
        // Ожидание начала приема
        wait(dut.vsi_inst.DECODING);
        
        // Прием 6 байт статуса в 11-битном формате
        receive_11bit_byte(); // B6
        status_byte1 = rx_byte;
        
        receive_11bit_byte(); // 02
        status_byte2 = rx_byte;
        
        receive_11bit_byte(); // 00
        status_byte3 = rx_byte;
        
        receive_11bit_byte(); // 00
        status_byte4 = rx_byte;
        
        receive_11bit_byte(); // CRC младший
        status_crc_low = rx_byte;
        
        receive_11bit_byte(); // CRC старший
        status_crc_high = rx_byte;
    end
endtask

// Задача приема байта в 11-битном формате
task receive_11bit_byte;
    reg parity_bit, received_parity;
    integer i;
    begin
        // Ожидание стартового бита
        wait(DATA1 == 1'b0);
        @(posedge clk_tx);
        
        // Прием 8 бит данных (младшим битом вперед)
        for (i = 0; i < 8; i = i + 1) begin
            @(posedge clk_tx);
            rx_byte[i] <= DATA1;
        end
        
        // Прием бита четности
        @(posedge clk_tx);
        received_parity <= DATA1;
        
        // Прием стопового бита
        @(posedge clk_tx);
        
        // Проверка четности (можно добавить при необходимости)
        parity_bit = calculate_parity(rx_byte);
        // if (parity_bit != received_parity) $display("Parity error");
    end
endtask

// Задача приема пакета данных
task receive_data_packet;
    integer i;
    begin

        packet_crc_low = 0;
        packet_crc_high = 0;

        // Ожидание начала приема
        wait(dut.vsi_inst.DECODING);
        
        // Прием заголовка
        receive_11bit_byte(); // Маркер
        packet_marker = rx_byte;
        
        receive_11bit_byte(); // Флаг
        packet_flag = rx_byte;
        
        receive_11bit_byte(); // Длина старший
        packet_length_high = rx_byte;
        
        receive_11bit_byte(); // Длина младший
        packet_length_low = rx_byte;
        
        data_length = {packet_length_high, packet_length_low};
        
        // Прием данных
        packet_data_index = 0;
        for (i = 0; i < data_length; i = i + 1) begin
            receive_11bit_byte();
            packet_data[packet_data_index] = rx_byte;
            packet_data_index = packet_data_index + 1;
        end
        
        // Прием CRC
        receive_11bit_byte(); // CRC младший
        packet_crc_low = rx_byte;
        
        receive_11bit_byte(); // CRC старший
        packet_crc_high = rx_byte;
    end
endtask

endmodule