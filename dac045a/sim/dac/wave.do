onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /dac_tb/dut/spi_inst/clk
add wave -noupdate /dac_tb/sync_300Hz
add wave -noupdate /dac_tb/dut/spi_inst/rst_l
add wave -noupdate /dac_tb/count_number
add wave -noupdate /dac_tb/dut/fixed_value
add wave -noupdate /dac_tb/dut/mode
add wave -noupdate /dac_tb/dut/spi_inst/renew
add wave -noupdate /dac_tb/dut/spi_inst/dac_en
add wave -noupdate /dac_tb/dut/spi_inst/CLRn
add wave -noupdate /dac_tb/dut/spi_inst/data_i
add wave -noupdate /dac_tb/dut/spi_inst/CSn
add wave -noupdate /dac_tb/dut/spi_inst/SCK
add wave -noupdate /dac_tb/dut/spi_inst/SDI
add wave -noupdate /dac_tb/dut/spi_inst/SDO
add wave -noupdate /dac_tb/dut/spi_inst/LDAc
add wave -noupdate /dac_tb/dut/spi_inst/strb
add wave -noupdate /dac_tb/dut/spi_inst/shiftreg
add wave -noupdate /dac_tb/dut/spi_inst/SCK_en
add wave -noupdate /dac_tb/dut/spi_inst/state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {13333715 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 238
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
WaveRestoreZoom {19995174 ns} {20000255 ns}
