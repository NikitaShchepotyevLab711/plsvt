############################################################
### IO assignment for soc_top on 5510TC028.
### The CPU supplies bb_clk_in. The same 8 MHz clock is forwarded from
### IO_GCLK[152] / F_MEZO_13 / contact 52 to MEZOKIA.
############################################################

set xc(inout) {
    { bb_clk_in bb_clk_in }
    { bb_clk_out bb_clk_out }
    { bb_apb_sync_clk bb_apb_sync_clk }
    { clk_to_mezokia IO_GCLK[152] }
    { reset_n_to_mezokia IO[127] }
    { LDAc IO_GCLK[165] }
    { SDO IO_GCLK[163] }
    { CSn IO_GCLK[161] }
    { SDI IO_GCLK[157] }
    { CLRn IO_GCLK[155] }
    { SCK IO_GCLK[145] }
    { cfg_frame IO[131] }
    { cfg_data IO[133] }
}
set xc(inout_type) {
    { bb_clk_in cpu_clk_in a }
    { bb_clk_out cpu_clk_out x }
    { bb_apb_sync_clk cpu_fpga_out x }
    { clk_to_mezokia xci2_ob x }
    { reset_n_to_mezokia xci2_ob x }
    { LDAc xci2_ob x }
    { SDO xci2_ib a }
    { CSn xci2_ob x }
    { SDI xci2_ob x }
    { CLRn xci2_ob x }
    { SCK xci2_ob x }
    { cfg_frame xci2_ib a }
    { cfg_data xci2_ib a }
}
