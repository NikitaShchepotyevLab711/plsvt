onerror {resume}
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { ( ~(bool)(rst_l ) )} dbgTemp1_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { (&{28'b0000000000000000000000000000,state[3:0] })} dbgTemp4_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { (&{28'b0000000000000000000000000000,state[3:0] })} dbgTemp5_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { (&{28'b0000000000000000000000000000,state[3:0] })} dbgTemp7_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { (&{28'b0000000000000000000000000000,state[3:0] })} dbgTemp9_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { (&{28'b0000000000000000000000000000,state[3:0] })} dbgTemp11_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { (&{28'b0000000000000000000000000000,state[3:0] })} dbgTemp13_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { (&{28'b0000000000000000000000000000,state[3:0] })} dbgTemp15_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { (&{28'b0000000000000000000000000000,state[3:0] })} dbgTemp17_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { (&{28'b0000000000000000000000000000,state[3:0] })} dbgTemp18_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { (&{28'b0000000000000000000000000000,state[3:0] })} dbgTemp20_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { (&{28'b0000000000000000000000000000,state[3:0] })} dbgTemp21_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { (&{28'b0000000000000000000000000000,state[3:0] })} dbgTemp22_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { (&{28'b0000000000000000000000000000,state[3:0] })} dbgTemp23_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { (&{28'b0000000000000000000000000000,state[3:0] })} dbgTemp24_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { (&{28'b0000000000000000000000000000,state[3:0] })} dbgTemp25_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { (&{28'b0000000000000000000000000000,state[3:0] })} dbgTemp26_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { (&{28'b0000000000000000000000000000,state[3:0] })} dbgTemp27_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { (&{28'b0000000000000000000000000000,state[3:0] })} dbgTemp28_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { (&{28'b0000000000000000000000000000,state[3:0] })} dbgTemp29_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { (&{28'b0000000000000000000000000000,state[3:0] })} dbgTemp30_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { ((dbgTemp4_8  == 32'b00000000000000000000000000000000) ? 2'b00 : ((dbgTemp5_8  == 32'b00000000000000000000000000000001) ? 2'b00 : ((dbgTemp7_8  == 32'b00000000000000000000000000000010) ? 2'b00 : ((dbgTemp9_8  == 32'b00000000000000000000000000000011) ? 2'b00 : ((dbgTemp11_8  == 32'b00000000000000000000000000000100) ? 2'b01 : ((dbgTemp13_8  == 32'b00000000000000000000000000000101) ? 2'b01 : ((dbgTemp15_8  == 32'b00000000000000000000000000000110) ? 2'b10 : ((dbgTemp17_8  == 32'b00000000000000000000000000000111) ? 2'b10 : ((dbgTemp18_8  == 32'b00000000000000000000000000001000) ? 2'b11 : ((dbgTemp20_8  == 32'b00000000000000000000000000001001) ? 2'b11 : 2'b00))))))))))} dbgTemp2_memblock_sel_8
quietly virtual function -install /top_tb/dut/package_complectation_inst -env /top_tb/dut/package_complectation_inst { ( ~(bool)(rst_l ) )} dbgTemp3_8
quietly WaveActivateNextPane {} 0
add wave -noupdate /top_tb/dut/bb_clk_in
add wave -noupdate /top_tb/dut/rst_l
add wave -noupdate /top_tb/dut/adc_045_inst/sync
add wave -noupdate /top_tb/dut/bb_psel
add wave -noupdate /top_tb/dut/bb_penable
add wave -noupdate /top_tb/dut/bb_pready
add wave -noupdate /top_tb/dut/adc045_ready
add wave -noupdate /top_tb/dut/adc733_ready
add wave -noupdate /top_tb/dut/adc_8ch_ready
add wave -noupdate /top_tb/dut/dss_ready
add wave -noupdate /top_tb/dut/dac_value
add wave -noupdate /top_tb/dut/dac_value_valid
add wave -noupdate /top_tb/dut/package_complectation_inst/log_outputs_data
add wave -noupdate /top_tb/dut/dac_045_inst/dac_rdy
add wave -noupdate /top_tb/dut/adc733_data
add wave -noupdate /top_tb/dut/adc045_data
add wave -noupdate /top_tb/dut/adc_8ch_data
add wave -noupdate /top_tb/dut/dss_data
add wave -noupdate /top_tb/dut/data_to_apb
add wave -noupdate /top_tb/dut/package_complete
add wave -noupdate /top_tb/dut/data_to_cpu
add wave -noupdate /top_tb/dut/package_complectation_inst/start_reading
add wave -noupdate /top_tb/dut/package_complectation_inst/RDB
add wave -noupdate /top_tb/dut/package_complectation_inst/state
add wave -noupdate /top_tb/dut/package_complectation_inst/waddr3
add wave -noupdate /top_tb/dut/package_complectation_inst/half_byte_writen
add wave -noupdate /top_tb/dut/package_complectation_inst/half_word_writen
add wave -noupdate /top_tb/dut/package_complectation_inst/data_to_ram
add wave -noupdate /top_tb/dut/package_complectation_inst/data8ch_to_ram
add wave -noupdate /top_tb/dut/package_complectation_inst/ram0/memory_block2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {59980713 ns} 0} {Trace {33610494 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 299
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
WaveRestoreZoom {59945007 ns} {60002895 ns}
