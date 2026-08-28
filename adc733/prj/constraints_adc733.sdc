create_clock -name clk -period 125 -waveform {0 62.5} [get_ports clk]
create_clock -name SCLK -period 250 -waveform {0 125} [get_ports SCLK]
set_clock_groups -asynchronous -group clk -group SCLK
