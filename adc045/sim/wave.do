onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /adc_reader_tb/uut/clk
add wave -noupdate /adc_reader_tb/adc_clk
add wave -noupdate /adc_reader_tb/uut/clkdiv_inst/clk_o
add wave -noupdate /adc_reader_tb/uut/rst_l
add wave -noupdate /adc_reader_tb/uut/DRDY
add wave -noupdate /adc_reader_tb/uut/DOUT
add wave -noupdate /adc_reader_tb/uut/CS
add wave -noupdate /adc_reader_tb/uut/DIN
add wave -noupdate /adc_reader_tb/uut/sync
add wave -noupdate /adc_reader_tb/uut/state
add wave -noupdate /adc_reader_tb/uut/ready_ch1
add wave -noupdate /adc_reader_tb/uut/ready_ch2
add wave -noupdate -format Analog-Step -height 150 -max 16250500.000000002 -radix hexadecimal /adc_reader_tb/ch1_sample
add wave -noupdate -format Analog-Step -height 74 -max 8388440.0 -min -4671410.0 /adc_reader_tb/sin_signal
add wave -noupdate -format Analog-Step -height 74 -max 8388610.0 -min -8388440.0 /adc_reader_tb/cos_signal
add wave -noupdate -format Analog-Step -height 150 -max 8372049.9999999991 -min -8125060.0 /adc_reader_tb/uut/adc045_data_ch1
add wave -noupdate -format Analog-Step -height 74 -max 8388610.0 -min -7978040.0 /adc_reader_tb/uut/adc045_data_ch2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {664188181 ps} 0}
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
WaveRestoreZoom {555121898 ps} {2076046216 ps}
