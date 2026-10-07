create_clock -name bb_clk_in -period 250 -waveform {0 125} [get_ports bb_clk_in]
create_clock -name ADC_SCLK -period 500 -waveform {0 250} [get_ports ADC_SCLK]
