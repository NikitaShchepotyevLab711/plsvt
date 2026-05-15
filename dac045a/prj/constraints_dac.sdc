create_clock -name clk -period 84 -waveform {0 42} [get_ports clk]
set_max_delay 42 -from [all_inputs] -to [all_outputs]
set_max_delay 42 -from [all_inputs] -to [all_registers]
set_max_delay 42 -from [all_registers] -to [all_outputs]