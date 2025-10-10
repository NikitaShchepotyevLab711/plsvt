vlib work
vmap work work

vlog "../tb/adc_reader_tb.v"\
     "../src/clk_divider3.v"\
     "../src/delay.v"       \
     "../src/delay_start.v" \
     "../src/adc045.v" \
     "../src/adc045_wrap.v"

vsim -debugDB -fsmdebug -gui work.adc_reader_tb

do {wave.do}

run 2000us