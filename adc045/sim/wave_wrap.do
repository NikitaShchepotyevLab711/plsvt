onerror {resume}
quietly virtual function -install /adc_reader_tb/uut/adc_inst -env /adc_reader_tb/uut/adc_inst { ( ~(bool)(rst_l ) )} dbgTemp18_144
quietly virtual function -install /adc_reader_tb/uut/adc_inst -env /adc_reader_tb/uut/adc_inst { &{(load  ? 10'b0000010100 : shift_reg[22:13]) , (load  ? wreg_command[13:1] : shift_reg[12:0]) , (load  ? wreg_command[0] : 1'b0)}} dbgTemp8_shift_reg_3
quietly virtual function -install /adc_reader_tb/uut/adc_inst -env /adc_reader_tb/uut/adc_inst { &{(load  ? 10'b0000100000 : shift_reg[22:13]) , (load  ? 13'b0000000000000 : shift_reg[12:0]) , (load  ? 1'b0 : 1'b0)}} dbgTemp8_shift_reg_4
quietly virtual function -install /adc_reader_tb/uut/adc_inst -env /adc_reader_tb/uut/adc_inst { ( ~(bool)(rst_l ) )} dbgTemp19_144
quietly WaveActivateNextPane {} 0
add wave -noupdate /adc_reader_tb/uut/clk
add wave -noupdate /adc_reader_tb/adc_clk
add wave -noupdate /adc_reader_tb/send_adc_data/i
add wave -noupdate /adc_reader_tb/uut/adc_inst/DRDY
add wave -noupdate /adc_reader_tb/uut/adc_inst/DOUT
add wave -noupdate /adc_reader_tb/uut/adc_inst/CS
add wave -noupdate /adc_reader_tb/uut/adc_inst/DIN
add wave -noupdate /adc_reader_tb/uut/adc_inst/SCLK
add wave -noupdate /adc_reader_tb/uut/adc_inst/nRST
add wave -noupdate /adc_reader_tb/uut/adc_inst/START
add wave -noupdate /adc_reader_tb/uut/adc_inst/enable
add wave -noupdate /adc_reader_tb/uut/adc_inst/sync
add wave -noupdate /adc_reader_tb/uut/adc_inst/wreg_command
add wave -noupdate /adc_reader_tb/uut/adc_inst/channel_choice
add wave -noupdate /adc_reader_tb/uut/adc_inst/busy
add wave -noupdate /adc_reader_tb/uut/adc_inst/data_o
add wave -noupdate /adc_reader_tb/uut/adc_inst/ch_num
add wave -noupdate /adc_reader_tb/uut/adc_inst/rd_en
add wave -noupdate /adc_reader_tb/uut/adc_inst/dly
add wave -noupdate /adc_reader_tb/ch1_sample
add wave -noupdate /adc_reader_tb/sin_signal
add wave -noupdate /adc_reader_tb/cos_signal
add wave -noupdate /adc_reader_tb/uut/adc_inst/A_MUX
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 2} {6457809 ns} 0} {{Cursor 3} {3034232 ns} 0} {{Cursor 3} {1063708 ns} 0}
quietly wave cursor active 2
configure wave -namecolwidth 269
configure wave -valuecolwidth 73
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
configure wave -timelineunits ps
update
WaveRestoreZoom {6456375 ns} {6502297 ns}
