vlib work
vmap work work

vlog "../src/dac065a.v"        \
     "../src/spi_controller.v" \
     "../src/dac_codegen.v"    \
     "../src/sync2.v"          \
     "../src/clk_divider3.v"   \
     "../src/multiplier_14x3.v"\
     "../tb/dac_tb.v"

vsim -debugDB -fsmdebug -gui work.dac_tb

do {wave.do}

run 30ms