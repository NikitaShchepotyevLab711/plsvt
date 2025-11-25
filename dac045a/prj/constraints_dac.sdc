create_clock -name clk -period 72 -waveform {0 36} -add  clk
create_generated_clock -name SCK -source [get_ports clk] -divide_by 3 [get_pins _397_/y]
set_false_path -from [get_ports rst_l] -to [get_ports CLRn]