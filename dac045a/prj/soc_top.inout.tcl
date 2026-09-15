############################################################
### IO assignment for soc_top on 5510TC028.
### The former sync_i pin IO_GCLK[162] is intentionally unassigned:
### MEZOKIA may still drive it, but SYNC is now generated on this FPGA.
############################################################

set xc(inout) {
    { LDAc IO_GCLK[165] }
    { SDO IO_GCLK[163] }
    { CSn IO_GCLK[161] }
    { SDI IO_GCLK[157] }
    { CLRn IO_GCLK[155] }
    { clk IO_GCLK[152] }
    { SCK IO_GCLK[145] }
    { cfg_frame IO[131] }
    { cfg_data IO[133] }
    { rst_l IO[127] }
}
set xc(inout_type) {
    { LDAc xci2_ob x }
    { SDO xci2_ib a }
    { CSn xci2_ob x }
    { SDI xci2_ob x }
    { CLRn xci2_ob x }
    { clk xci2_ib a }
    { SCK xci2_ob x }
    { cfg_frame xci2_ib a }
    { cfg_data xci2_ib a }
    { rst_l xci2_ib a }
}
