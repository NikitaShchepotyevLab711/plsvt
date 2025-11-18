vlib work
vmap work work

vlog "../tb/tb_adc733.v"   \
     "../src/adc733_wrap.v"\
     "../src/sync2.v"\
     "../src/pulse_to_toggle.v"\
     "../src/sync2_toggle_to_pulse.v"\
     "../src/front_detector.v"\
     "../src/adc733.v"     

vsim -debugDB -fsmdebug -gui tb_adc733

do {wave.do}

run 1000us