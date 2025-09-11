quietly WaveActivateNextPane {} 0
add wave -noupdate /adc_reader_tb/uut/clk
add wave -noupdate /adc_reader_tb/uut/rst_l
add wave -noupdate /adc_reader_tb/uut/sclk
add wave -noupdate -color {Medium Violet Red} -format Analog-Step -height 150 -max 8388610.0 -min -8388610.0 -radix decimal /adc_reader_tb/send_adc_data/ch1
add wave -noupdate -radix binary /adc_reader_tb/ch1_sample
add wave -noupdate /adc_reader_tb/uut/drdy
add wave -noupdate /adc_reader_tb/uut/dout
add wave -noupdate /adc_reader_tb/uut/cs
add wave -noupdate /adc_reader_tb/uut/din
add wave -noupdate /adc_reader_tb/uut/nRST
add wave -noupdate /adc_reader_tb/uut/start
add wave -noupdate /adc_reader_tb/uut/hard_wreg
add wave -noupdate /adc_reader_tb/uut/rst_l_adc
add wave -noupdate /adc_reader_tb/uut/ready_sample
add wave -noupdate -color Thistle -format Analog-Step -height 150 -max 8388610.0 -min -8388610.0 -radix decimal /adc_reader_tb/uut/adc045_data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {348251765 ps} 0}
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
WaveRestoreZoom {165623206 ps} {638832376 ps}
