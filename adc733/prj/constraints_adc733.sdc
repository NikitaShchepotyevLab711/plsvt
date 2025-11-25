create_clock -name clk -period 72 -waveform {0 36} [get_ports clk]
create_clock -name SCLK -period 122 -waveform {0 61} [get_ports SCLK]
set_clock_groups -asynchronous -group clk -group SCLK
