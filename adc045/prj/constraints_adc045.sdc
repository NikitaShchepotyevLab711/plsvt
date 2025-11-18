create_clock -name clk -period 100 -waveform {0 50} [get_ports clk]
create_generated_clock -name SCLK -source [get_ports clk] -divide_by 3 [get_pins _452_/y]
set_clock_groups -asynchronous -group clk -group SCLK
set_input_delay 3.0 -max -clock clk [all_inputs] 
set_input_delay 0.0 -min -clock clk [all_inputs]
set_output_delay 3.0 -max -clock clk [all_outputs] 
set_output_delay 0.0 -min -clock clk [all_outputs] 