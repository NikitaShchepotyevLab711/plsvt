############################################################
###                                                         
###   Generated     X-Place v2.48.61                             
###   Pin assignments audited 24.09.2026; no automatic output placement.
###                                                         
############################################################
###                                                         
###   File type     Inout file                                      
###   Circuit       adc733_wrap                                      
###                                                         
############################################################

# All outputs must be assigned: automatic placement drives other ICs.
# Status/data ports below use F_MEZO lines (MVEC-PVSK_E3, sheet 14).
# DATA_O and diagnostic ports occupy F_MEZO lines in this stand-alone
# pinout; do not connect MEZOKIA while using this stand-alone bitstream.
# An external active-low reset can be applied on F_MEZO_14 / IO[126].
set xc(inout) {
	{ bb_clk_in bb_clk_in }
	{ rst_l IO[126] }
	{ CHANNEL[2] IO[92] }
	{ SDOFS IO[181] }
	{ SDIFS IO_GCLK[159] }
	{ SDI IO_GCLK[151] }
	{ SE IO[143] }
	{ SCLK IO[142] }
	{ RESETn IO[141] }
	{ MCLK IO[136] }
	{ SDO IO[135] }
	{ CHANNEL[0] IO_GCLK[148] }
	{ CHANNEL[1] IO_GCLK[166] }
    { DATA_O[0] IO[115] }
    { DATA_O[1] IO[133] }
    { DATA_O[2] IO[131] }
    { DATA_O[3] IO[127] }
    { DATA_O[4] IO[121] }
    { DATA_O[5] IO_GCLK[162] }
    { DATA_O[6] IO[109] }
    { DATA_O[7] IO[105] }
    { DATA_O[8] IO[168] }
    { DATA_O[9] IO[99] }
    { DATA_O[10] IO_GCLK[152] }
    { DATA_O[11] IO_GCLK[22] }
    { DATA_O[12] IO[14] }
    { DATA_O[13] IO[10] }
    { DATA_O[14] IO[6] }
    { DATA_O[15] IO[2] }
    { RD_EN IO[184] }
    { OP_MODE IO[190] }
}
set xc(inout_type) {
	{ bb_clk_in cpu_clk_in a }
	{ rst_l xci2_ib a }
	{ CHANNEL[2] xci2_ob x }
	{ SDOFS xci2_ib a }
	{ SDIFS xci2_ob x }
	{ SDI xci2_ob x }
	{ SE xci2_ob x }
	{ SCLK xci2_ib a }
	{ RESETn xci2_ob x }
	{ MCLK xci2_ob x }
	{ SDO xci2_ib a }
	{ CHANNEL[0] xci2_ob x }
	{ CHANNEL[1] xci2_ob x }
    { DATA_O[0] xci2_ob x }
    { DATA_O[1] xci2_ob x }
    { DATA_O[2] xci2_ob x }
    { DATA_O[3] xci2_ob x }
    { DATA_O[4] xci2_ob x }
    { DATA_O[5] xci2_ob x }
    { DATA_O[6] xci2_ob x }
    { DATA_O[7] xci2_ob x }
    { DATA_O[8] xci2_ob x }
    { DATA_O[9] xci2_ob x }
    { DATA_O[10] xci2_ob x }
    { DATA_O[11] xci2_ob x }
    { DATA_O[12] xci2_ob x }
    { DATA_O[13] xci2_ob x }
    { DATA_O[14] xci2_ob x }
    { DATA_O[15] xci2_ob x }
    { RD_EN xci2_ob x }
    { OP_MODE xci2_ob x }
}
###END
