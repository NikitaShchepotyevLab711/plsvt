create_clock -name clk -period 125 -waveform {0 62.5} [get_ports clk]

set_max_delay 62.5 -from [all_inputs] -to [all_outputs]
set_max_delay 62.5 -from [all_inputs] -to [all_registers]
set_max_delay 62.5 -from [all_registers] -to [all_outputs]