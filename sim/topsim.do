vlib work
vmap work work

vlog "../tb/top_tb.v"                            \
     "../src/apb_coder.v"                        \
     "../src/top.v"                              \
     "../src/sync_strobe.v"                      \
     "../src/package_complectation.v"            \
     "../src/data_compressor.v"                  \
     "../src/front_detector.v"                   \
     "../src/front_detector_by_negedge.v"        \
     "../src/pulse_to_toggle.v"                  \
     "../src/vsi_pack_counter.v"                 \
     "../src/sram_controller.v"                  \
     "../src/sram_controller_wrap.v"             \
     "../src/IS61WV204816.v"                     \
     "../src/vsi_controller.v"                   \
     "../src/data_splitter_16_to_8.v"            \
     "../src/vsi_packs_ram.v"                    \
     "../src/vsi_ramblock_wrap.v"                \
     "../adc_8ch_045/src/adc_8ch_wrap.v"         \
     "../adc_8ch_045/src/adc_8ch_045.v"          \
     "../adc_8ch_045/src/clk_divider2.v"         \
     "../adc_8ch_045/src/front_detector.v"       \
     "../adc_8ch_045/src/sync2.v"                \
     "../adc045/src/clk_divider3.v"              \
     "../adc045/src/delay.v"                     \
     "../adc045/src/delay_start.v"               \
     "../adc045/src/adc045.v"                    \
     "../adc045/src/sync2_toggle_to_pulse.v"     \
     "../adc045/src/counter.v"                   \
     "../adc045/src/pulse_to_toggle.v"           \
     "../adc045/src/pulse_extender.v"            \
     "../adc045/src/adc045_wrap.v"               \
     "../adc733/src/adc733_wrap.v"               \
     "../adc733/src/adc733.v"                    \
     "../adc733/src/sync2_toggle_to_pulse_bothedge.v"\
     "../dac045a/src/dac045a.v"                  \
     "../dac045a/src/spi_controller.v"           \
     "../dac045a/src/dac_codegen.v"              \
     "../dac045a/src/multiplier_16x3.v"          \
     "../lvds_dss/src/lvds_wrapper.v"            \
     "../lvds_dss/src/lvds_dss.v"                \
     "../lvds_dss/src/uart_rx.v"                 \
     "../lvds_dss/src/uart_tx.v"                 \
     "../vsi/src/vsi.v"                          \
     "../vsi/src/strobe_gen.v"                   \
     "../vsi/src/slave_device.v"                 \
     "../vsi/src/vsi_codegen.v"                  \
     "../vsi/src/crc16.v"                        \
     "../vsi/src/mod_hi_speed_protocol_coder.v"  \
     "../vsi/src/mod_hi_speed_protocol_decoder.v"\
     "../vsi/src/mod_hi_speed_protocol_rx.v"     \
     "../vsi/src/psevdo_ram_block.v"             \
     "../vsi/src/xci2_buf.v"                     \
     "../vsi/src/rs_coder.v"                     \
     "../vsi/src/reset_sync.v"                   \
     "../vsi/src/rs_decoder_4.v"

    
vsim -debugDB -fsmdebug -gui work.top_tb

do {wave.do}

run 170000us