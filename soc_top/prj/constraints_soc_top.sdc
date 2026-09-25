create_clock -name bb_clk_in -period 125 -waveform {0 62.5} [get_ports bb_clk_in]
create_clock -name ADC_SCLK -period 250 -waveform {0 125} [get_ports ADC_SCLK]
