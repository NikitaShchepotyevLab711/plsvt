create_clock -name clk -period 125 -waveform {0 62} [get_ports clk]
create_clock -name adc733_sclk -period 122 -waveform {0 61} [get_ports adc733_sclk]
create_generated_clock -name adc8ch_sclk -source [get_ports clk] -divide_by 2 [get_ports adc8ch_sclk]

set_clock_groups -asynchronous -group {clk} -group {adc733_sclk}

set_input_delay -clock clk -max 15 [remove_from_collection [all_inputs] [get_ports {clk adc733_sclk}]]
set_input_delay -clock adc733_sclk -max 15 [get_ports adc733_sdo]

set_output_delay -clock clk -max 15 [remove_from_collection [all_outputs] [get_ports adc8ch_sclk]]
set_output_delay -clock adc8ch_sclk -max 8 [get_ports {adc8ch_cs_adc adc8ch_cd_mux adc8ch_din}]