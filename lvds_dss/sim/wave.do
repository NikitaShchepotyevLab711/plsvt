onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/dut/clk
add wave -noupdate /tb/dut/rst_l
add wave -noupdate /tb/dut/sync
add wave -noupdate /tb/dut/RO
add wave -noupdate /tb/dut/RE
add wave -noupdate /tb/dut/DI
add wave -noupdate /tb/dut/DE
add wave -noupdate /tb/dut/data_o
add wave -noupdate /tb/dut/val_num
add wave -noupdate /tb/dut/uart_ready
add wave -noupdate /tb/dut/sync_reg
add wave -noupdate /tb/dut/sync_reg2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2999999035 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ns} {4333 ns}
