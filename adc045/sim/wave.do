onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /adc_reader_tb/uut/adc_inst/dl_start/COUNTER_MAX
add wave -noupdate /adc_reader_tb/uut/clk
add wave -noupdate /adc_reader_tb/adc_clk
add wave -noupdate /adc_reader_tb/uut/rst_l
add wave -noupdate /adc_reader_tb/uut/DRDY
add wave -noupdate /adc_reader_tb/sclk
add wave -noupdate /adc_reader_tb/uut/adc_inst/strb
add wave -noupdate /adc_reader_tb/uut/DOUT
add wave -noupdate /adc_reader_tb/uut/CS
add wave -noupdate /adc_reader_tb/uut/DIN
add wave -noupdate /adc_reader_tb/uut/START
add wave -noupdate /adc_reader_tb/uut/sync
add wave -noupdate -format Analog-Step -height 150 -max 16408400.0 -radix hexadecimal /adc_reader_tb/ch1_sample
add wave -noupdate /adc_reader_tb/uut/adc_inst/busy
add wave -noupdate /adc_reader_tb/uut/adc_inst/rd_en
add wave -noupdate /adc_reader_tb/uut/adc_inst/channel
add wave -noupdate /adc_reader_tb/uut/adc_inst/data_o
add wave -noupdate /adc_reader_tb/uut/wreg_command
add wave -noupdate /adc_reader_tb/uut/channel_choice
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1995191590 ps} 0} {{Cursor 2} {42361204 ps} 0}
quietly wave cursor active 2
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
WaveRestoreZoom {0 ps} {1699491154 ps}
