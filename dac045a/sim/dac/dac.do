vlib work
vmap work work

vlog "../../src/dac045a.v"\
     "../../src/spi_controller.v"\
     "../../src/codegen.v"\
     "../../src/clk_divider3.v"\
     "../../tb/dac_tb.v"

vsim -debugDB work.dac_tb

do {wave.do}

run 30ms