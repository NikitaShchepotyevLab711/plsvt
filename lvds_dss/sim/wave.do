onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/dut/clk
add wave -noupdate /tb/dut/rst_l
add wave -noupdate /tb/dut/sync
add wave -noupdate /tb/dut/RO
add wave -noupdate /tb/dut/lvds_dss_inst/uart_rx_inst/bit_counter
add wave -noupdate /tb/dut/lvds_dss_inst/uart_rx_inst/fsm_state
add wave -noupdate /tb/dut/lvds_dss_inst/uart_rx_inst/next_bit
add wave -noupdate /tb/dut/RE
add wave -noupdate /tb/dut/DI
add wave -noupdate /tb/dut/DE
add wave -noupdate /tb/dut/val_num
add wave -noupdate /tb/dut/lvds_dss_inst/data_o
add wave -noupdate /tb/dut/uart_ready
add wave -noupdate /tb/dut/data12b
add wave -noupdate /tb/dut/word_num
add wave -noupdate -radix hexadecimal /tb/send_uart_byte/byte_data
add wave -noupdate /tb/dut/state
add wave -noupdate /tb/dut/lvds_dss_inst/uart_tx_inst/stop_done
add wave -noupdate -radix binary /tb/first_dataword
add wave -noupdate -radix binary /tb/second_dataword
add wave -noupdate -radix binary /tb/third_dataword
add wave -noupdate /tb/dut/uart_data
add wave -noupdate /tb/dut/byte0_reg
add wave -noupdate /tb/dut/byte1_reg
add wave -noupdate /tb/dut/byte2_reg
add wave -noupdate /tb/dut/byte3_reg
add wave -noupdate /tb/dut/byte4_reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {160594 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 189
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
WaveRestoreZoom {2470513 ns} {10396289 ns}
