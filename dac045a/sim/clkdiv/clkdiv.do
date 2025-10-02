vlib work
vmap work work

vlog "../../src/clk_divider3.v"\
     "../../tb/clkdiv_tb.v"

vsim -debugDB -gui work.clkdiv_tb

do {wave.do}

run 2 us