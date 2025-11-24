create_clock -name clk -period 84 -waveform {0 42} [get_ports clk]
create_generated_clock -name SCLK -source [get_ports clk] -divide_by 3 [get_pins _551_/y]
