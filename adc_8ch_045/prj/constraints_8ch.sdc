create_clock -name clk -period 84 -waveform {0 42} clk
create_generated_clock -name divided_clk -source [get_ports clk] -divide_by 2 [get_pins _357_/q]
