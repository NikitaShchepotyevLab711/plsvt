create_clock -name bb_clk_in -period 84 -waveform {0 42} bb_clk_in
set_multicycle_path 1 -from [get_ports rst_h] -to [all_registers]
set_max_delay -from [get_ports rst_h] -to [all_registers] 55.0