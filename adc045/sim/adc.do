vlib work
vmap work work

vlog "../tb/adc_reader_tb.v" \
     "../src/adc_reader.v" \
     "../src/adc045_wrap.v"

vsim -debugDB -gui work.adc_reader_tb

do {wave.do}

run 50ms