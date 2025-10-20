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
add wave -noupdate /tb_adc733/dut/adc_inst/sync
add wave -noupdate /tb_adc733/dut/op_mode
add wave -noupdate /tb_adc733/dut/rd_en
add wave -noupdate -radix hexadecimal /tb_adc733/dut/adc_inst/control_word
add wave -noupdate -radix hexadecimal /tb_adc733/dut/adc_inst/shift_reg
add wave -noupdate /tb_adc733/dut/adc_inst/state
add wave -noupdate /tb_adc733/dut/adc_inst/prog_mode
add wave -noupdate /tb_adc733/dut/adc_inst/start_capture
add wave -noupdate /tb_adc733/dut/adc_inst/load
add wave -noupdate /tb_adc733/dut/adc_inst/bit_cnt
add wave -noupdate /tb_adc733/dut/adc_inst/adc_regs_cnt
add wave -noupdate /tb_adc733/dut/adc_inst/captured_data
add wave -noupdate /tb_adc733/dut/state
add wave -noupdate /tb_adc733/dut/reg_counter
add wave -noupdate /tb_adc733/dut/adc_inst/word_sent
add wave -noupdate /tb_adc733/dut/register_data
add wave -noupdate /tb_adc733/send_adc_data/ch1
add wave -noupdate /tb_adc733/dut/data_o
add wave -noupdate /tb_adc733/dut/channel
add wave -noupdate /tb_adc733/dut/adc_inst/sdofs_counter
add wave -noupdate /tb_adc733/dut/adc_inst/operation_mode
add wave -noupdate /tb_adc733/dut/adc_inst/rcvd_words
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {207095 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 239
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
WaveRestoreZoom {289592 ns} {612228 ns}
