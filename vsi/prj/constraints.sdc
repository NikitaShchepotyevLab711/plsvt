create_clock -name bb_clk_in -period 84 -waveform {0 42} bb_clk_in
create_generated_clock -name CLK_EN_RS_DECODER -source [get_ports bb_clk_in] -divide_by 2 [get_pins _2057_/q]
create_generated_clock -name CLK_EN_RS_CODER -source [get_ports bb_clk_in] -edges {1 2 4} [get_pins _2060_/q]
