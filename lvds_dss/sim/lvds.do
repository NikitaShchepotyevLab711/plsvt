vlib work
vmap work work

vlog "../src/lvds_dss.v"\
     "../src/uart_rx.v"\
     "../tb/tb.sv"

vsim -debugDB -fsmdebug -gui work.tb

do {wave.do}

run 10ms