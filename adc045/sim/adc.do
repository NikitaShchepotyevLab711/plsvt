vlib work
vmap work work

vlog "../tb/adc_reader_tb.v" \
     "../src/adc_reader.v" \
     "../src/clk_divider3.v"\
     "../src/adc045_wrap.v"

vsim -debugDB -gui work.adc_reader_tb

do {wave.do}

run 2000us