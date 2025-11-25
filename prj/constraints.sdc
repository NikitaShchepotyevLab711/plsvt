create_clock -name clk -period 84 -waveform {0 42} [get_ports clk]
create_clock -name adc733_sclk -period 122 -waveform {0 61} [get_ports adc733_sclk]
create_generated_clock -name adc045_sclk -source [get_ports clk] -divide_by 3 [get_pins _3046_/y]
create_generated_clock -name adc8ch_sclk -source [get_ports clk] -divide_by 3 [get_pins _1776_/y]
