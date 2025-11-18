create_clock -name clk -period 100 -waveform {0 50} clk
create_generated_clock -name divided_clk -source [get_ports clk] -divide_by 2 [get_pins _357_/q]
set_clock_groups -asynchronous -group clk -group divided_clk