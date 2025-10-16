`timescale 1ns/1ns

module tb_adc733;
reg clk;
reg rst_l;
reg sync;
reg SCLK;

adc733_wrap dut (
    .clk(clk),
    .rst_l(rst_l),

    // serial port //
    .SCLK(SCLK),
    .SDOFS(SDOFS),
    .SDO(SDO),
    .SDIFS(SDIFS),
    .SDI(SDI),
    .SE(SE),
    .sync(sync)
); 

initial begin
    clk = 0;
    forever #41.667 clk = ~clk;  // 12 MHz
end

always begin
    if (SE) begin
        SCLK = 0;
        forever #61.035 SCLK = ~SCLK;  // 8.192 MHz
    end else begin
        SCLK = 0;
        wait(SE); 
    end
end

initial begin
    fork
        begin
            rst_l = 1;
            sync = 0;
            repeat(3)@(posedge clk);
            rst_l = 0;
            repeat(3)@(posedge clk);
            rst_l = 1;
            repeat(3)@(posedge clk);
            sync = 1;
            @(posedge clk);
            sync = 0;  

        end

        begin
            sync = 0;
            forever begin  
            #150000;
            @(posedge clk);
            sync = 1;
            @(posedge clk);
            sync = 0;     
        end
        end
    join
end

endmodule