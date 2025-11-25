vlib work
vmap work work

vlog "../../src/dac045a.v"\
     "../../src/spi_controller.v"\
     "../../src/dac_codegen.v"\
     "../../src/clk_divider3.v"\
     "../../tb/dac_tb.v"

vsim -debugDB -fsmdebug -gui work.dac_tb

do {wave.do}

run 3000ms