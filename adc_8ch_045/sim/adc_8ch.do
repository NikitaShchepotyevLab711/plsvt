vlib work
vmap work work

vlog "../tb/tb_adc_8ch_045.v"   \
     "../src/adc_8ch_045.v"\
     "../src/clk_divider3.v"\


vsim -debugDB -fsmdebug -gui work.tb_adc_8ch_045

do {wave.do}

run 1000us