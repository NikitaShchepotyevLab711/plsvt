onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /adc_tb/dut/clk
add wave -noupdate /adc_tb/dut/rst_l
add wave -noupdate /adc_tb/ch1_sample
add wave -noupdate -format Analog-Step -height 74 -max 8388441.0 -min -8388607.0 /adc_tb/sin_signal
add wave -noupdate /adc_tb/cos_signal
add wave -noupdate /adc_tb/ch_change
add wave -noupdate /adc_tb/adc_clk
add wave -noupdate /adc_tb/dut/DRDY
add wave -noupdate /adc_tb/dut/DOUT
add wave -noupdate /adc_tb/dut/CS
add wave -noupdate /adc_tb/dut/DIN
add wave -noupdate /adc_tb/dut/SCLK
add wave -noupdate /adc_tb/dut/nRST
add wave -noupdate /adc_tb/dut/START
add wave -noupdate /adc_tb/dut/enable
add wave -noupdate /adc_tb/sync
add wave -noupdate /adc_tb/dut/wreg_command
add wave -noupdate /adc_tb/dut/channel_choice
add wave -noupdate /adc_tb/dut/busy
add wave -noupdate /adc_tb/dut/data_o
add wave -noupdate /adc_tb/dut/ch_num
add wave -noupdate /adc_tb/dut/rd_en
add wave -noupdate /adc_tb/dut/dly
add wave -noupdate /adc_tb/dut/state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1657918 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 185
configure wave -valuecolwidth 116
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
WaveRestoreZoom {0 ns} {6825 us}
