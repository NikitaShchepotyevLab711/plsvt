vlib work
vmap work work

vlog "../tb/tb_adc733.v"   \
     "../src/adc733_wrap.v"\
     "../src/adc733.v"     

vsim -debugDB -fsmdebug -gui work.tb_adc733

do {wave.do}

run 1000us