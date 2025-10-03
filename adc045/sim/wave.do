onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /adc_reader_tb/uut/clk
add wave -noupdate /adc_reader_tb/uut/rst_l
add wave -noupdate /adc_reader_tb/uut/DRDY
add wave -noupdate /adc_reader_tb/uut/DOUT
add wave -noupdate /adc_reader_tb/uut/CS
add wave -noupdate /adc_reader_tb/uut/DIN
add wave -noupdate /adc_reader_tb/uut/clkdiv_inst/clk_o
add wave -noupdate /adc_reader_tb/uut/strb
add wave -noupdate /adc_reader_tb/uut/nRST
add wave -noupdate /adc_reader_tb/uut/START
add wave -noupdate /adc_reader_tb/uut/sync
add wave -noupdate /adc_reader_tb/uut/ready_sample
add wave -noupdate /adc_reader_tb/uut/adc045_data
add wave -noupdate -radix unsigned /adc_reader_tb/uut/mode_switch_counter
add wave -noupdate /adc_reader_tb/uut/state
add wave -noupdate /adc_reader_tb/uut/hard_wreg
add wave -noupdate /adc_reader_tb/uut/start_capture
add wave -noupdate /adc_reader_tb/uut/start_command
add wave -noupdate /adc_reader_tb/uut/wreg_command
add wave -noupdate /adc_reader_tb/uut/adc_rd/shift_reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {8820791 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 255
configure wave -valuecolwidth 327
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
WaveRestoreZoom {179494474 ps} {201079239 ps}
