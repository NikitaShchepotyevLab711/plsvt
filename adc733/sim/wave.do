onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_adc733/dut/adc_inst/clk
add wave -noupdate /tb_adc733/dut/adc_inst/rst_l
add wave -noupdate /tb_adc733/dut/adc_inst/SCLK
add wave -noupdate /tb_adc733/dut/adc_inst/SDOFS
add wave -noupdate /tb_adc733/dut/adc_inst/SDO
add wave -noupdate /tb_adc733/dut/adc_inst/SDIFS
add wave -noupdate /tb_adc733/dut/adc_inst/SDI
add wave -noupdate /tb_adc733/dut/adc_inst/SE
add wave -noupdate /tb_adc733/dut/SYNC
add wave -noupdate /tb_adc733/dut/adc_inst/sync
add wave -noupdate -radix hexadecimal /tb_adc733/dut/adc_inst/control_word
add wave -noupdate /tb_adc733/dut/adc_inst/word_sent
add wave -noupdate -radix binary /tb_adc733/send_adc_data/ch1
add wave -noupdate /tb_adc733/dut/adc_inst/shift_reg
add wave -noupdate /tb_adc733/dut/adc_inst/start_capture
add wave -noupdate /tb_adc733/dut/adc_inst/rcvd_words
add wave -noupdate /tb_adc733/dut/adc_inst/state
add wave -noupdate /tb_adc733/dut/adc_inst/sdofs_counter
add wave -noupdate /tb_adc733/dut/adc_inst/captured_data
add wave -noupdate /tb_adc733/dut/adc_inst/rd_en
add wave -noupdate /tb_adc733/dut/adc_inst/operation_mode
add wave -noupdate /tb_adc733/dut/adc_inst/channel
add wave -noupdate /tb_adc733/dut/DATA_O
add wave -noupdate /tb_adc733/dut/RD_EN
add wave -noupdate /tb_adc733/dut/OP_MODE
add wave -noupdate /tb_adc733/dut/CHANNEL
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {994046 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 267
configure wave -valuecolwidth 123
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {992412 ns} {1000400 ns}
