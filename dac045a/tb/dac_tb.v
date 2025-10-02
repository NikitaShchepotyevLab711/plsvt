module dac_tb;
reg clk;
reg rst_l;

reg sync_300Hz;
reg mode;
reg [15:0] fixed_value;
reg cs;
reg [15:0] count_number;

// Добавляем переменные для отслеживания изменений
reg [15:0] last_data_to_dac;
real start_time;
real last_print_time;

dac045a dut (
    .clk(clk),
    .sync_300Hz(sync_300Hz),
    .rst_l(rst_l),
    .mode(mode),
    .fixed_value(fixed_value),
    .cs(cs),

    // spi //
    .SDO(),
    .SDI(),
    .SCK(),
    .CLRn(),
    .LDAc(),
    .CSn()
);

initial begin
    clk = 0;
    forever #42 clk = ~clk;
end

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
        if (dut.data_to_dac !== last_data_to_dac) begin
            last_data_to_dac = dut.data_to_dac;
            last_print_time = ($time - start_time) / 1000000.0; 
            $display("%0t ms\t\t%h\t\t%d", last_print_time, dut.data_to_dac, count_number);
        end
    end
end
    
initial begin
    clk = 0;
    count_number = 0;
    sync_300Hz = 0;
    fixed_value = 0;
    cs = 0;
    rst_l = 1;
    #100;
    rst_l = 0;
    #100;
    rst_l = 1;
    #100;
    sync_300Hz = 1;
    cs = 1;
    #100;
    sync_300Hz = 0;
    mode = 0;
    fixed_value = 16'd32000;
    
    fork
        begin
            forever begin  
                #3333290;
                @(posedge clk);
                sync_300Hz = 1;
                count_number = count_number + 1; 
                @(posedge clk);
                sync_300Hz = 0;     
            end
        end
        
        begin
            #6000;
            mode = 1;
            fixed_value = 16'hffff;
        end
    join

end
endmodule