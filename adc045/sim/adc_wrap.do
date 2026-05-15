vlib work
vmap work work

vlog "../tb/adc_reader_tb.v"         \
     "../src/clk_divider3.v"         \
     "../src/delay.v"                \
     "../src/delay_start.v"          \
     "../src/adc045.v"               \
     "../src/front_detector.v"       \
     "../src/sync2_toggle_to_pulse.v"\
     "../src/sync2.v"                \
     "../src/counter.v"              \
     "../src/pulse_to_toggle.v"      \
     "../src/pulse_extender.v"       \
     "../src/adc045_wrap.v"

vsim -debugDB -fsmdebug -gui work.adc_wrapper_tb

do {wave_wrap.do}

run 6500us