create_clock -name bb_clk_in -period 84 -waveform {0 42} [get_ports bb_clk_in]
set_false_path -from [get_ports rst_l] -to [all_outputs]
set_false_path -from [get_ports rst_l] -to [all_registers]