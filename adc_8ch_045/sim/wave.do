onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_adc_8ch_045/adc_clk
add wave -noupdate /tb_adc_8ch_045/dut/clk
add wave -noupdate /tb_adc_8ch_045/dut/rst_l
add wave -noupdate /tb_adc_8ch_045/dut/DOUT
add wave -noupdate /tb_adc_8ch_045/dut/SCLK
add wave -noupdate /tb_adc_8ch_045/dut/CS_ADC
add wave -noupdate /tb_adc_8ch_045/dut/CD_MUX
add wave -noupdate /tb_adc_8ch_045/dut/DIN
add wave -noupdate /tb_adc_8ch_045/dut/SYNC
add wave -noupdate /tb_adc_8ch_045/dut/RD_EN
add wave -noupdate /tb_adc_8ch_045/dut/CHANNEL
add wave -noupdate /tb_adc_8ch_045/dut/DATA_O
add wave -noupdate /tb_adc_8ch_045/dut/BUSY
add wave -noupdate /tb_adc_8ch_045/dut/load
add wave -noupdate /tb_adc_8ch_045/dut/tx_en
add wave -noupdate /tb_adc_8ch_045/dut/prog_mode
add wave -noupdate /tb_adc_8ch_045/dut/shift_reg
add wave -noupdate /tb_adc_8ch_045/dut/state
add wave -noupdate /tb_adc_8ch_045/dut/data_o
add wave -noupdate /tb_adc_8ch_045/sin_signal1
add wave -noupdate /tb_adc_8ch_045/cos_signal1
add wave -noupdate /tb_adc_8ch_045/sin_signal2
add wave -noupdate /tb_adc_8ch_045/cos_signal2
add wave -noupdate /tb_adc_8ch_045/sin_signal3
add wave -noupdate /tb_adc_8ch_045/cos_signal3
add wave -noupdate /tb_adc_8ch_045/sin_signal4
add wave -noupdate /tb_adc_8ch_045/cos_signal4
add wave -noupdate -radix binary /tb_adc_8ch_045/ch1_sample
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {255444 ns} 0}
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
WaveRestoreZoom {492613 ns} {500389 ns}
