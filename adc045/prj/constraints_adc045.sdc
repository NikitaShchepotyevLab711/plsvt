create_clock -name clk -period 72 -waveform {0 36} [get_ports clk]
create_generated_clock -name SCLK -source [get_ports clk] -divide_by 3 [get_pins _465_/y]
set_clock_groups -asynchronous -group clk -group SCLK