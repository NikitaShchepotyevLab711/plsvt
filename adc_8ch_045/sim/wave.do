onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_adc_8ch_045/adc_clk
add wave -noupdate /tb_adc_8ch_045/dut/clk
add wave -noupdate /tb_adc_8ch_045/dut/rst_l
add wave -noupdate /tb_adc_8ch_045/send_adc_data/i
add wave -noupdate /tb_adc_8ch_045/SDO
add wave -noupdate /tb_adc_8ch_045/dut/DOUT
add wave -noupdate /tb_adc_8ch_045/dut/SCLK
add wave -noupdate /tb_adc_8ch_045/dut/CS_ADC
add wave -noupdate /tb_adc_8ch_045/dut/CD_MUX
add wave -noupdate /tb_adc_8ch_045/dut/DIN
add wave -noupdate /tb_adc_8ch_045/dut/sync
add wave -noupdate /tb_adc_8ch_045/dut/rd_en
add wave -noupdate /tb_adc_8ch_045/dut/channel
add wave -noupdate /tb_adc_8ch_045/dut/busy
add wave -noupdate /tb_adc_8ch_045/dut/data_o
add wave -noupdate /tb_adc_8ch_045/dut/channel_num
add wave -noupdate /tb_adc_8ch_045/dut/shift_reg
add wave -noupdate /tb_adc_8ch_045/dut/chan_cnt
add wave -noupdate /tb_adc_8ch_045/dut/bit_cnt
add wave -noupdate /tb_adc_8ch_045/dut/second_cycle
add wave -noupdate /tb_adc_8ch_045/dut/recv
add wave -noupdate /tb_adc_8ch_045/dut/prog_mode
add wave -noupdate /tb_adc_8ch_045/dut/sclk_en
add wave -noupdate /tb_adc_8ch_045/dut/strb
add wave -noupdate /tb_adc_8ch_045/dut/divided_clk
add wave -noupdate /tb_adc_8ch_045/dut/load
add wave -noupdate /tb_adc_8ch_045/dut/start_capture
add wave -noupdate /tb_adc_8ch_045/dut/state
add wave -noupdate /tb_adc_8ch_045/sin_signal1
add wave -noupdate /tb_adc_8ch_045/cos_signal1
add wave -noupdate /tb_adc_8ch_045/sin_signal2
add wave -noupdate /tb_adc_8ch_045/cos_signal2
add wave -noupdate /tb_adc_8ch_045/sin_signal3
add wave -noupdate /tb_adc_8ch_045/cos_signal3
add wave -noupdate /tb_adc_8ch_045/sin_signal4
add wave -noupdate /tb_adc_8ch_045/cos_signal4
add wave -noupdate -radix hexadecimal /tb_adc_8ch_045/ch1_sample
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {269920 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 217
configure wave -valuecolwidth 100
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
WaveRestoreZoom {496451 ns} {500187 ns}
