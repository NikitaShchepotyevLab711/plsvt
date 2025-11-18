create_clock -name clk -period 32 -waveform {0 16} clk
create_clock -name SCLK -period 122 -waveform {0 61} SCLK 
set_clock_groups -asynchronous -group clk -group SCLK
