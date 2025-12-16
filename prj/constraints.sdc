create_clock -name bb_clk_in -period 64 -waveform {0 32} [get_ports bb_clk_in]
create_clock -name adc733_sclk_1 -period 122 -waveform {0 61} [get_ports adc733_sclk_1]
create_generated_clock -name adc045_sclk_1 -source [get_ports bb_clk_in] -divide_by 3 [get_pins _3207_/y]
create_generated_clock -name dac045a_sck_1 -source [get_ports bb_clk_in] -divide_by 3 [get_pins _3266_/y]
create_generated_clock -name adc8ch_sclk_1 -source [get_ports bb_clk_in] -divide_by 2 [get_pins _1984_/y]
set_clock_groups -asynchronous -group bb_clk_in -group adc733_sclk_1
set_clock_groups -asynchronous -group bb_clk_in -group adc045_sclk_1
set_clock_groups -asynchronous -group bb_clk_in -group adc8ch_sclk_1
set_false_path -from [get_ports rst_l] -to [all_outputs]
set_false_path -from [get_ports rst_l] -to [all_registers]
set_max_delay 31 -from [all_inputs] -to [all_outputs]
set_max_delay 31 -from [all_inputs] -to [all_registers]
set_max_delay 31 -from [all_registers] -to [all_outputs]