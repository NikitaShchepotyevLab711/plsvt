onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /dac_tb/dut/spi_inst/clk
add wave -noupdate /dac_tb/sync_300Hz
add wave -noupdate /dac_tb/dut/sync_i
add wave -noupdate /dac_tb/dut/spi_inst/rst_l
add wave -noupdate /dac_tb/dut/spi_inst/rdy
add wave -noupdate /dac_tb/dut/SDO
add wave -noupdate /dac_tb/dut/SDI
add wave -noupdate /dac_tb/dut/SCK
add wave -noupdate /dac_tb/dut/CLRn
add wave -noupdate /dac_tb/dut/LDAc
add wave -noupdate /dac_tb/dut/CSn
add wave -noupdate /dac_tb/dut/spi_inst/strb
add wave -noupdate /dac_tb/dut/data_to_dac
add wave -noupdate /dac_tb/dut/data_increment
add wave -noupdate /dac_tb/dut/spi_inst/shiftreg
add wave -noupdate /dac_tb/dut/spi_inst/cnt
add wave -noupdate /dac_tb/dut/dac_rdy
add wave -noupdate /dac_tb/dut/sdo
add wave -noupdate /dac_tb/dut/sdi
add wave -noupdate /dac_tb/dut/sck
add wave -noupdate /dac_tb/dut/clrn
add wave -noupdate /dac_tb/dut/ldac
add wave -noupdate /dac_tb/dut/csn
add wave -noupdate /dac_tb/dut/spi_inst/state
add wave -noupdate /dac_tb/dut/dac_codegen_inst1/increment
add wave -noupdate /dac_tb/dut/dac_codegen_inst1/sum_stage1
add wave -noupdate /dac_tb/dut/dac_codegen_inst1/sum_stage2
add wave -noupdate /dac_tb/dut/dac_codegen_inst1/reached_limit
add wave -noupdate /dac_tb/dut/dac_codegen_inst1/reached_limit_reg
add wave -noupdate /dac_tb/dut/dac_codegen_inst1/start_stage1
add wave -noupdate /dac_tb/dut/dac_codegen_inst1/start_stage2
add wave -noupdate /dac_tb/dut/dac_codegen_inst1/min_step
add wave -noupdate /dac_tb/dut/dac_codegen_inst1/step_coefficent
add wave -noupdate /dac_tb/dut/dac_codegen_inst1/step
add wave -noupdate /dac_tb/dut/dac_codegen_inst1/multiplier_inst/product
add wave -noupdate /dac_tb/dut/dac_codegen_inst1/multiplier_inst/pp0
add wave -noupdate /dac_tb/dut/dac_codegen_inst1/multiplier_inst/pp1
add wave -noupdate /dac_tb/dut/dac_codegen_inst1/multiplier_inst/pp2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {29996589 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 323
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
WaveRestoreZoom {29996151 ns} {30000203 ns}
