`timescale 1ns/1ns

module tb;
reg clk;
reg rst_l;
reg uart_rxd;
reg sync;

lvds_wrapper dut (
    .clk       (clk),
    .rst_l     (rst_l),
    .sync      (sync),
    .RO        (uart_rxd),
    .RE        (),
    .DI        (),
    .DE        (),
    .data12b   (),
    .word_num  (),
    .data_rdy  ()
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
    uart_rxd = 1;
    sync = 0;

    #100;
    rst_l = 0;
    #100;
    rst_l = 1;

    fork 
        begin
            #100000; 
            @(posedge clk);
            sync = 1;
            @(posedge clk);
            sync = 0;      
        end

        begin
            @(posedge dut.byte_sent);
            send_5_values();
        end
    join
end

reg [11:0] first_dataword = 12'hffd;
reg [11:0] second_dataword = 12'hffe;
reg [11:0] third_dataword = 12'hfff;

task automatic send_5_values();
    byte data_bytes[5];
    data_bytes [0] = first_dataword[7:0];
    data_bytes [1] = {second_dataword[3:0], first_dataword[11:8]};
    data_bytes [2] = {second_dataword[11:4]};
    data_bytes [3] = third_dataword[7:0];
    data_bytes [4] = {4'b0, third_dataword[11:8]};

    for (int j = 0; j < 5; j = j + 1) begin
        send_uart_byte(data_bytes[j]);
    end
endtask 

task send_uart_byte;
    input [7:0] byte_data;
    integer bit_time;
    begin
        bit_time = 1_000_000_000 / BAUD_RATE; 
        uart_rxd = 0;
        #bit_time;
        for (integer i = 0; i < 8; i = i + 1) begin
            uart_rxd = byte_data[i];
            #bit_time;
        end
        uart_rxd = 1;
        #bit_time;
    end
endtask

endmodule