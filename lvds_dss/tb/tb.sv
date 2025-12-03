`timescale 1ns/1ns

module tb;
reg clk;
reg rst_l;
reg uart_rxd;
reg sync;

lvds_dss dut (
    .clk       (clk),
    .rst_l     (rst_l),
    .sync      (sync),
    .RO        (uart_rxd),
    .RE        (),
    .DI        (),
    .DE        (),
    .data_o    (),
    .val_num   (),
    .uart_ready()
);

localparam CLOCK_FREQ = 12_000_000; 
localparam BAUD_RATE = 9600;  
localparam BIT_PERIOD = CLOCK_FREQ / BAUD_RATE; 


initial begin
    clk  = 0;
    forever #42 clk = ~clk;
end

initial begin
    rst_l = 1;
    sync = 0;

    #100;
    rst_l = 0;
    #100;
    rst_l = 1; 

    begin
        forever begin  
            #1000000;
            @(posedge clk);
            sync = 1;
            @(posedge clk);
            sync = 0;     
        end
    end
end

initial begin
    for (integer data = 0; data < 256; data = data + 1) begin
        send_uart_byte(data);
        #10000;
    end
end

reg startbit, stopbit;

task send_uart_byte;
    input [7:0] byte_data;
    integer bit_time;
    begin
		stopbit = 0;
        bit_time = 1_000_000_000 / BAUD_RATE; 
		startbit = 1;
        uart_rxd = 0;
        #bit_time;
		startbit = 0;
        for (integer i = 0; i < 8; i = i + 1) begin
            uart_rxd = byte_data[i];
            #bit_time;
            stopbit = 0;
            startbit = 0;
        end

        uart_rxd = 1;
        stopbit = 1;
        #bit_time;
    end
endtask
    
endmodule