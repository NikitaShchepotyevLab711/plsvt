create_clock -name clk -period 84 -waveform {0 42} clk
create_clock -name SCLK -period 122 -waveform {0 61} SCLK
set_clock_groups -asynchronous -group clk -group SCLK