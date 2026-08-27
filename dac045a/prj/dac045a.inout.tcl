############################################################
###
###   File type     Inout file
###   Circuit       dac045a
###
###   MVEC-PVSK_E3, sheets 14 and 20
###   clk/rst/debug: F_MEZO connectors
###   DAC interface: dedicated SF_DAC1 signals
###
############################################################

set xc(inout) {
	{ clk IO_GCLK[152] }
	{ clk_out IO[170] }
	{ SDO IO_GCLK[163] }
	{ dac_value[15] IO[109] }
	{ dac_value[14] IO[121] }
	{ dac_value[13] IO[115] }
	{ dac_value[12] IO[184] }
	{ dac_value[11] IO[182] }
	{ dac_value[10] IO[168] }
	{ dac_value[9] IO[176] }
	{ dac_value[8] IO_GCLK[174] }
	{ dac_value[7] IO_GCLK[148] }
	{ dac_value[6] IO_GCLK[162] }
	{ dac_value[5] IO[190] }
	{ dac_value[4] IO[131] }
	{ dac_value[3] IO[178] }
	{ dac_value[2] IO[133] }
	{ dac_value[1] IO_GCLK[166] }
	{ dac_value[0] IO[127] }
	{ dac_rdy IO[105] }
	{ dac_value_valid IO[92] }
	{ SDI IO_GCLK[157] }
	{ SCK IO_GCLK[145] }
	{ CLRn IO_GCLK[155] }
	{ LDAc IO_GCLK[165] }
	{ CSn IO_GCLK[161] }
}

set xc(inout_type) {
	{ clk xci2_ib a }
	{ clk_out xci2_ob x }
	{ SDO xci2_ib a }
	{ dac_value[15] xci2_ob x }
	{ dac_value[14] xci2_ob x }
	{ dac_value[13] xci2_ob x }
	{ dac_value[12] xci2_ob x }
	{ dac_value[11] xci2_ob x }
	{ dac_value[10] xci2_ob x }
	{ dac_value[9] xci2_ob x }
	{ dac_value[8] xci2_ob x }
	{ dac_value[7] xci2_ob x }
	{ dac_value[6] xci2_ob x }
	{ dac_value[5] xci2_ob x }
	{ dac_value[4] xci2_ob x }
	{ dac_value[3] xci2_ob x }
	{ dac_value[2] xci2_ob x }
	{ dac_value[1] xci2_ob x }
	{ dac_value[0] xci2_ob x }
	{ dac_rdy xci2_ob x }
	{ dac_value_valid xci2_ob x }
	{ SDI xci2_ob x }
	{ SCK xci2_ob x }
	{ CLRn xci2_ob x }
	{ LDAc xci2_ob x }
	{ CSn xci2_ob x }
}

###END
