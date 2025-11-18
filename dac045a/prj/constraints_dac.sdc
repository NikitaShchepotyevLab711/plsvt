create_clock -name clk -period 100 -waveform {0 50} -add  clk
#create_generated_clock -name divided_clk -source [get_ports clk] -divide_by 3 [get_pins spi_inst/clkdiv_dac_inst/clk_o]