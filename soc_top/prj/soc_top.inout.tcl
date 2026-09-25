############################################################
###                                                         
###   Generated     X-Place v2.48.61                             
###   Date/Time     24.09.2026 / 18:35:29                                 
###                                                         
############################################################
###                                                         
###   File type     Inout file                                      
###   Circuit       soc_top                                      
###                                                         
############################################################

set xc(inout) {
	{ bb_apb_sync_clk bb_apb_sync_clk }
	{ bb_clk_out bb_clk_out }
	{ bb_clk_in bb_clk_in }
	{ ADC_SDOFS IO[181] }
	{ adc_serial_frame IO[178] }
	{ adc_serial_data IO_GCLK[166] }
	{ LDAc IO_GCLK[165] }
	{ SDO IO_GCLK[163] }
	{ CSn IO_GCLK[161] }
	{ ADC_SDIFS IO_GCLK[159] }
	{ SDI IO_GCLK[157] }
	{ CLRn IO_GCLK[155] }
	{ clk_to_mezokia IO_GCLK[152] }
	{ ADC_SDI IO_GCLK[151] }
	{ SCK IO_GCLK[145] }
	{ ADC_SE IO[143] }
	{ ADC_SCLK IO[142] }
	{ ADC_RESETn IO[141] }
	{ ADC_MCLK IO[136] }
	{ cfg_frame IO[131] }
	{ cfg_data IO[133] }
	{ ADC_SDO IO[135] }
	{ reset_n_from_mezokia IO[127] }
}
set xc(inout_type) {
	{ bb_apb_sync_clk cpu_fpga_out x }
	{ bb_clk_out cpu_clk_out x }
	{ bb_clk_in cpu_clk_in a }
	{ ADC_SDOFS xci2_ib a }
	{ adc_serial_frame xci2_ob x }
	{ adc_serial_data xci2_ob x }
	{ LDAc xci2_ob x }
	{ SDO xci2_ib a }
	{ CSn xci2_ob x }
	{ ADC_SDIFS xci2_ob x }
	{ SDI xci2_ob x }
	{ CLRn xci2_ob x }
	{ clk_to_mezokia xci2_ob x }
	{ ADC_SDI xci2_ob x }
	{ SCK xci2_ob x }
	{ ADC_SE xci2_ob x }
	{ ADC_SCLK xci2_ib a }
	{ ADC_RESETn xci2_ob x }
	{ ADC_MCLK xci2_ob x }
	{ cfg_frame xci2_ib a }
	{ cfg_data xci2_ib a }
	{ ADC_SDO xci2_ib a }
	{ reset_n_from_mezokia xci2_ib a }
}
###END
