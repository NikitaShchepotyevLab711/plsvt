onerror {resume}
quietly virtual function -install /adc_reader_tb/uut/adc_inst -env /adc_reader_tb/uut/adc_inst { ( ~(bool)(rst_l ) )} dbgTemp18_144
quietly virtual function -install /adc_reader_tb/uut/adc_inst -env /adc_reader_tb/uut/adc_inst { &{(load  ? 10'b0000010100 : shift_reg[22:13]) , (load  ? wreg_command[13:1] : shift_reg[12:0]) , (load  ? wreg_command[0] : 1'b0)}} dbgTemp8_shift_reg_3
quietly virtual function -install /adc_reader_tb/uut/adc_inst -env /adc_reader_tb/uut/adc_inst { &{(load  ? 10'b0000100000 : shift_reg[22:13]) , (load  ? 13'b0000000000000 : shift_reg[12:0]) , (load  ? 1'b0 : 1'b0)}} dbgTemp8_shift_reg_4
quietly virtual function -install /adc_reader_tb/uut/adc_inst -env /adc_reader_tb/uut/adc_inst { ( ~(bool)(rst_l ) )} dbgTemp19_144
quietly WaveActivateNextPane {} 0
add wave -noupdate /adc_reader_tb/uut/adc_inst/dl_start/COUNTER_MAX
add wave -noupdate /adc_reader_tb/uut/clk
add wave -noupdate /adc_reader_tb/adc_clk
add wave -noupdate /adc_reader_tb/uut/rst_l
add wave -noupdate /adc_reader_tb/uut/DRDY
add wave -noupdate /adc_reader_tb/sclk
add wave -noupdate /adc_reader_tb/uut/adc_inst/strb
add wave -noupdate /adc_reader_tb/send_adc_data/i
add wave -noupdate /adc_reader_tb/uut/DOUT
add wave -noupdate /adc_reader_tb/uut/CS
add wave -noupdate /adc_reader_tb/uut/DIN
add wave -noupdate /adc_reader_tb/uut/START
add wave -noupdate /adc_reader_tb/uut/sync
add wave -noupdate -format Analog-Step -height 150 -max 16408400.0 -radix hexadecimal /adc_reader_tb/ch1_sample
add wave -noupdate /adc_reader_tb/uut/adc_inst/busy
add wave -noupdate /adc_reader_tb/uut/adc_inst/rd_en
add wave -noupdate /adc_reader_tb/uut/adc_inst/channel
add wave -noupdate /adc_reader_tb/uut/adc_inst/captured_data
add wave -noupdate /adc_reader_tb/uut/adc_inst/data_o
add wave -noupdate /adc_reader_tb/uut/wreg_command
add wave -noupdate /adc_reader_tb/uut/channel_choice
add wave -noupdate /adc_reader_tb/uut/adc_inst/state
add wave -noupdate /adc_reader_tb/uut/adc_inst/wreg_done_reg
add wave -noupdate /adc_reader_tb/uut/adc_inst/dat_rcv_done_reg
add wave -noupdate /adc_reader_tb/uut/adc_inst/delay_active_reg
add wave -noupdate /adc_reader_tb/uut/adc_inst/wreg_done
add wave -noupdate /adc_reader_tb/uut/adc_inst/dat_rcv_done
add wave -noupdate /adc_reader_tb/uut/adc_inst/delay_active
add wave -noupdate /adc_reader_tb/uut/adc_inst/cnt
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6314350000 ps} 0} {{Cursor 2} {10668921 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 305
configure wave -valuecolwidth 112
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
WaveRestoreZoom {6493676295 ps} {6500332827 ps}
