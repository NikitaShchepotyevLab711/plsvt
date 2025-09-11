############################################################
###                                                         
###    Generated     X-Map v0.51.20                                 
###    Date/Time     04.09.2025 / 13:21:42                    
###                                                         
############################################################
###                                                         
###    Type          Tcl library                            
###    Mode          Full library (not only used elements)                                     
###                                                         
############################################################
###                                                         
###   Total         82                                      
###      IO         29                                      
###      REG-Only   20                                      
###      Macro      33                                      
###                                                         
############################################################
###                                                         
###    Description:                                         
###        Tcl library for X-Core.                          
###                                                         
############################################################

set XcPinInfo(BS_cell_IN_UCCLAB) { a:I x:O }
set XcPinInfo(BS_cell_OUT_UCCLAB) { a:I x:O }
set XcPinInfo(IO_cell_JTAG_v3_UCCLAB) { a:I oe:I coreo:I x:O corei:O pad:B }
set XcPinInfo(LE_4p0) { a:I b:I c:I s:I d:I clk:I en:I clr:I y:O q:O }
set XcPinInfo(LVDS_receiver_5V_v3) {IN:I IP:I OUTp:O}
set XcPinInfo(io_clk_in_dummy) { a:I x:O }
set XcPinInfo(io_clk_out) { a:I x:O }
set XcPinInfo(pll_design_v5) {Clock:I res:I EXTFB:I GLB:O}
set XcPinInfo(ramblock_4x_v2_UCCLAB) {
    WADDR[7:0]:I RADDR[7:0]:I WBLKB:I WRB:I WCLKS:I RBLKB:I RDB:I RCLKS:I
    DC_in0:I DC_in1:I DC_in2:I PAROOD:I DIn[8:0]:I
    fifo:I wsinc:I rsinc:I pipln:I pargen:I RSTB0:I RSTB1:I RSTB2:I RSTB3:I
    DO1[8:0]:O DO2[8:0]:O FULL1:O EMPTY1:O EQTH1:O GEQTH1:O WPE1:O RPE1:O
    FULL2:O EMPTY2:O EQTH2:O GEQTH2:O WPE2:O RPE2:O
}
set XcPortInfo(BS_cell_IN_UCCLAB) {Din:I}
set XcPortInfo(BS_cell_OUT_UCCLAB) {Dout:O}
set XcPortInfo(IO_cell_JTAG_v3_UCCLAB) {IO:B}
set XcPortInfo(LVDS_receiver_5V_v3) {IN:I IP:I}
set XcPortInfo(io_clk_in_dummy) {a:I}
set XcPortInfo(io_clk_out) {x:O}
#
#LVDS_receiver
xc_lib_cell LVDS_receiver LVDS_receiver_5V_v3 {
	IN=IN
	IP=IP
	OUTp=OUTp
} {
} {

}
#
#cpu_clk_in
xc_lib_cell cpu_clk_in io_clk_in_dummy {
	a=a
	x=x
} {
} {
	+f "x = a"

}
#
#cpu_clk_out
xc_lib_cell cpu_clk_out io_clk_out {
	a=a
	x=x
} {
} {
	+f "x = a"

}
#
#cpu_fpga_in
xc_lib_cell cpu_fpga_in BS_cell_IN_UCCLAB {
	a=Din
	x=Dout
} {
} {
	+f "x = a"

}
#
#cpu_fpga_out
xc_lib_cell cpu_fpga_out BS_cell_OUT_UCCLAB {
	a=Din
	x=Dout
} {
} {
	+f "x = a"

}
#
#cpu_fpga_out_clk
xc_lib_cell cpu_fpga_out_clk BS_cell_OUT_UCCLAB {
	a=Din
	x=Dout
} {
} {
	+f "x = a"

}
#
#fifo_4x_swrite_sread
xc_lib_cell fifo_4x_swrite_sread ramblock_4x_v2_UCCLAB {
	DC_in0=DC_in0
	DC_in1=DC_in1
	DC_in2=DC_in2
	DIn[8:0]=DIn<8:0>
	DO1[8:0]=Q2<14:6>
	DO2[8:0]=Q1<14:6>
	EMPTY1=Q2<4>
	EMPTY2=Q1<4>
	EQTH1=Q2<3>
	EQTH2=Q1<3>
	FULL1=Q2<5>
	FULL2=Q1<5>
	GEQTH1=Q2<2>
	GEQTH2=Q1<2>
	RADDR[7:0]=RADDR<7:0>
	RCLKS=RCLKS
	RDB=RDB
	WADDR[7:0]=WADDR<7:0>
	WCLKS=WCLKS
	WRB=WRB
} {
	PAROOD=0
	RBLKB=0
	RSTB0=1
	RSTB1=1
	RSTB2=1
	RSTB3=1
	WBLKB=0
	fifo=1
	pargen=0
	pipln=0
	rsinc=1
	wsinc=1
} {

}
#
#pll_extfb
xc_lib_cell pll_extfb pll_design_v5 {
	Clock=Clock
	EXTFB=EXTFB
	GLB=GLB
	res=res
} {
	c_FBDIV<5:0>=0
	c_FBSEL<1:0>=3
	c_FDLY<3:0>=0
	c_FIVDIV<4:0>=0
	c_OBDIV<1:0>=0
	c_OBMUX<2:0>=0
} {

}
#
#pll_firstfb
xc_lib_cell pll_firstfb pll_design_v5 {
	Clock=Clock
	GLB=GLB
	res=res
} {
	c_FBDIV<5:0>=0
	c_FBSEL<1:0>=0
	c_FDLY<3:0>=0
	c_FIVDIV<4:0>=0
	c_OBDIV<1:0>=0
	c_OBMUX<2:0>=0
} {

}
#
#pll_firstfb_div2
xc_lib_cell pll_firstfb_div2 pll_design_v5 {
	Clock=Clock
	GLB=GLB
	res=res
} {
	c_FBDIV<5:0>=0
	c_FBSEL<1:0>=0
	c_FDLY<3:0>=0
	c_FIVDIV<4:0>=0
	c_OBDIV<1:0>=1
	c_OBMUX<2:0>=1
} {

}
#
#pll_firstfb_div4
xc_lib_cell pll_firstfb_div4 pll_design_v5 {
	Clock=Clock
	GLB=GLB
	res=res
} {
	c_FBDIV<5:0>=0
	c_FBSEL<1:0>=0
	c_FDLY<3:0>=0
	c_FIVDIV<4:0>=0
	c_OBDIV<1:0>=2
	c_OBMUX<2:0>=1
} {

}
#
#pll_firstfb_mul2
xc_lib_cell pll_firstfb_mul2 pll_design_v5 {
	Clock=Clock
	GLB=GLB
	res=res
} {
	c_FBDIV<5:0>=1
	c_FBSEL<1:0>=1
	c_FDLY<3:0>=0
	c_FIVDIV<4:0>=0
	c_OBDIV<1:0>=0
	c_OBMUX<2:0>=4
} {

}
#
#pll_intfb_pa0
xc_lib_cell pll_intfb_pa0 pll_design_v5 {
	Clock=Clock
	GLB=GLB
	res=res
} {
	c_FBDIV<5:0>=0
	c_FBSEL<1:0>=1
	c_FDLY<3:0>=0
	c_FIVDIV<4:0>=0
	c_OBDIV<1:0>=0
	c_OBMUX<2:0>=4
} {

}
#
#pll_intfb_pa0_div1
xc_lib_cell pll_intfb_pa0_div1 pll_design_v5 {
	Clock=Clock
	GLB=GLB
	res=res
} {
	c_FBDIV<5:0>=0
	c_FBSEL<1:0>=1
	c_FDLY<3:0>=0
	c_FIVDIV<4:0>=0
	c_OBDIV<1:0>=0
	c_OBMUX<2:0>=4
} {

}
#
#pll_intfb_pa0_div16
xc_lib_cell pll_intfb_pa0_div16 pll_design_v5 {
	Clock=Clock
	GLB=GLB
	res=res
} {
	c_FBDIV<5:0>=0
	c_FBSEL<1:0>=1
	c_FDLY<3:0>=0
	c_FIVDIV<4:0>=8
	c_OBDIV<1:0>=0
	c_OBMUX<2:0>=4
} {

}
#
#pll_intfb_pa0_div2
xc_lib_cell pll_intfb_pa0_div2 pll_design_v5 {
	Clock=Clock
	GLB=GLB
	res=res
} {
	c_FBDIV<5:0>=0
	c_FBSEL<1:0>=1
	c_FDLY<3:0>=0
	c_FIVDIV<4:0>=1
	c_OBDIV<1:0>=0
	c_OBMUX<2:0>=4
} {

}
#
#pll_intfb_pa0_div32
xc_lib_cell pll_intfb_pa0_div32 pll_design_v5 {
	Clock=Clock
	GLB=GLB
	res=res
} {
	c_FBDIV<5:0>=0
	c_FBSEL<1:0>=1
	c_FDLY<3:0>=0
	c_FIVDIV<4:0>=10
	c_OBDIV<1:0>=0
	c_OBMUX<2:0>=4
} {

}
#
#pll_intfb_pa0_div4
xc_lib_cell pll_intfb_pa0_div4 pll_design_v5 {
	Clock=Clock
	GLB=GLB
	res=res
} {
	c_FBDIV<5:0>=0
	c_FBSEL<1:0>=1
	c_FDLY<3:0>=0
	c_FIVDIV<4:0>=2
	c_OBDIV<1:0>=0
	c_OBMUX<2:0>=4
} {

}
#
#pll_intfb_pa0_div8
xc_lib_cell pll_intfb_pa0_div8 pll_design_v5 {
	Clock=Clock
	GLB=GLB
	res=res
} {
	c_FBDIV<5:0>=0
	c_FBSEL<1:0>=1
	c_FDLY<3:0>=0
	c_FIVDIV<4:0>=4
	c_OBDIV<1:0>=0
	c_OBMUX<2:0>=4
} {

}
#
#pll_intfb_pa0_outdiv2
xc_lib_cell pll_intfb_pa0_outdiv2 pll_design_v5 {
	Clock=Clock
	GLB=GLB
	res=res
} {
	c_FBDIV<5:0>=0
	c_FBSEL<1:0>=1
	c_FDLY<3:0>=0
	c_FIVDIV<4:0>=0
	c_OBDIV<1:0>=1
	c_OBMUX<2:0>=4
} {

}
#
#pll_intfb_pa0_outdiv4
xc_lib_cell pll_intfb_pa0_outdiv4 pll_design_v5 {
	Clock=Clock
	GLB=GLB
	res=res
} {
	c_FBDIV<5:0>=0
	c_FBSEL<1:0>=1
	c_FDLY<3:0>=0
	c_FIVDIV<4:0>=0
	c_OBDIV<1:0>=2
	c_OBMUX<2:0>=4
} {

}
#
#ram_test
xc_lib_cell ram_test ramblock_4x_v2_UCCLAB {
} {
	fifo=0
	wsinc=0
} {

}
#
#ramblock4x_asw_asr_conv_cntrld_2
xc_lib_cell ramblock4x_asw_asr_conv_cntrld_2 ramblock_4x_v2_UCCLAB {
	DIn[8:0]=DIn<8:0>
	DO2[8:0]=Q1<14:6>
	PAROOD=PAROOD
	RADDR[7:0]=RADDR<7:0>
	RBLKB=RBLKB
	RDB=RDB
	RPE2=Q1<0>
	WADDR[7:0]=WADDR<7:0>
	WBLKB=WBLKB
	WPE2=Q1<1>
	WRB=WRB
} {
	DC_in0=0
	DC_in1=1
	DC_in2=0
	RSTB0=1
	RSTB1=1
	RSTB2=1
	RSTB3=1
	fifo=0
	pargen=0
	pipln=1
	rsinc=0
	wsinc=0
} {

}
#
#ramblock4x_asw_asr_nc_2
xc_lib_cell ramblock4x_asw_asr_nc_2 ramblock_4x_v2_UCCLAB {
	DIn[8:0]=DIn<8:0>
	DO2[8:0]=Q1<14:6>
	PAROOD=PAROOD
	RADDR[7:0]=RADDR<7:0>
	RBLKB=RBLKB
	RDB=RDB
	RPE2=Q1<0>
	WADDR[7:0]=WADDR<7:0>
	WBLKB=WBLKB
	WPE2=Q1<1>
	WRB=WRB
} {
	DC_in0=0
	DC_in1=1
	DC_in2=0
	RSTB0=1
	RSTB1=1
	RSTB2=1
	RSTB3=1
	fifo=0
	pargen=0
	pipln=0
	rsinc=0
	wsinc=0
} {

}
#
#ramblock4x_ram_2
xc_lib_cell ramblock4x_ram_2 ramblock_4x_v2_UCCLAB {
	DIn[8:0]=DIn<8:0>
	DO2[8:0]=Q1<14:6>
	PAROOD=PAROOD
	RADDR[7:0]=RADDR<7:0>
	RBLKB=RBLKB
	RCLKS=RCLKS
	RDB=RDB
	RPE2=Q1<0>
	WADDR[7:0]=WADDR<7:0>
	WBLKB=WBLKB
	WCLKS=WCLKS
	WPE2=Q1<1>
	WRB=WRB
} {
	DC_in0=0
	DC_in1=1
	DC_in2=0
	RSTB0=1
	RSTB1=1
	RSTB2=1
	RSTB3=1
	fifo=0
	pargen=0
	pipln=0
	rsinc=1
	wsinc=1
} {

}
#
#ramblock4x_ram_pb_2
xc_lib_cell ramblock4x_ram_pb_2 ramblock_4x_v2_UCCLAB {
	DIn[8:0]=DIn<8:0>
	DO2[8:0]=Q1<14:6>
	PAROOD=PAROOD
	RADDR[7:0]=RADDR<7:0>
	RBLKB=RBLKB
	RCLKS=RCLKS
	RDB=RDB
	RPE2=Q1<0>
	WADDR[7:0]=WADDR<7:0>
	WBLKB=WBLKB
	WCLKS=WCLKS
	WPE2=Q1<1>
	WRB=WRB
} {
	DC_in0=0
	DC_in1=1
	DC_in2=0
	RSTB0=1
	RSTB1=1
	RSTB2=1
	RSTB3=1
	fifo=0
	pargen=1
	pipln=0
	rsinc=1
	wsinc=1
} {

}
#
#ramblock4x_sw_sr_conv_cntrld_2
xc_lib_cell ramblock4x_sw_sr_conv_cntrld_2 ramblock_4x_v2_UCCLAB {
	DIn[8:0]=DIn<8:0>
	DO2[8:0]=Q1<14:6>
	PAROOD=PAROOD
	RADDR[7:0]=RADDR<7:0>
	RBLKB=RBLKB
	RCLKS=RCLKS
	RDB=RDB
	RPE2=Q1<0>
	WADDR[7:0]=WADDR<7:0>
	WBLKB=WBLKB
	WCLKS=WCLKS
	WPE2=Q1<1>
	WRB=WRB
} {
	DC_in0=0
	DC_in1=1
	DC_in2=0
	RSTB0=1
	RSTB1=1
	RSTB2=1
	RSTB3=1
	fifo=0
	pargen=0
	pipln=1
	rsinc=1
	wsinc=1
} {

}
#
#ramblock_4x_01
xc_lib_cell ramblock_4x_01 ramblock_4x_v2_UCCLAB {
	DC_in0=DC_in0
	DC_in1=DC_in1
	DC_in2=DC_in2
	DIn[8:0]=DIn<8:0>
	DO1[8:0]=Q2<14:6>
	EMPTY1=Q2<4>
	EQTH1=Q2<3>
	FULL1=Q2<5>
	GEQTH1=Q2<2>
	PAROOD=PAROOD
	RADDR[7:0]=RADDR<7:0>
	RBLKB=RBLKB
	RCLKS=RCLKS
	RDB=RDB
	RPE1=Q2<0>
	RSTB0=RSTB0
	RSTB1=RSTB1
	RSTB2=RSTB2
	RSTB3=RSTB3
	WADDR[7:0]=WADDR<7:0>
	WBLKB=WBLKB
	WCLKS=WCLKS
	WPE1=Q2<1>
	WRB=WRB
	fifo=fifo
	pargen=pargen
	pipln=pipln
	rsinc=rsinc
	wsinc=wsinc
} {
} {

}
#
#ramblock_4x_23
xc_lib_cell ramblock_4x_23 ramblock_4x_v2_UCCLAB {
	DC_in0=DC_in0
	DC_in1=DC_in1
	DC_in2=DC_in2
	DIn[8:0]=DIn<8:0>
	DO2[8:0]=Q1<14:6>
	EMPTY2=Q1<4>
	EQTH2=Q1<3>
	FULL2=Q1<5>
	GEQTH2=Q1<2>
	PAROOD=PAROOD
	RADDR[7:0]=RADDR<7:0>
	RBLKB=RBLKB
	RCLKS=RCLKS
	RDB=RDB
	RPE2=Q1<0>
	RSTB0=RSTB0
	RSTB1=RSTB1
	RSTB2=RSTB2
	RSTB3=RSTB3
	WADDR[7:0]=WADDR<7:0>
	WBLKB=WBLKB
	WCLKS=WCLKS
	WPE2=Q1<1>
	WRB=WRB
	fifo=fifo
	pargen=pargen
	pipln=pipln
	rsinc=rsinc
	wsinc=wsinc
} {
} {

}
#
#ramblock_4x_aswrite_asread
xc_lib_cell ramblock_4x_aswrite_asread ramblock_4x_v2_UCCLAB {
	DC_in0=DC_in0
	DC_in1=DC_in1
	DC_in2=DC_in2
	DIn[8:0]=DIn<8:0>
	DO1[8:0]=Q2<14:6>
	DO2[8:0]=Q1<14:6>
	EMPTY1=Q2<4>
	EMPTY2=Q1<4>
	EQTH1=Q2<3>
	EQTH2=Q1<3>
	FULL1=Q2<5>
	FULL2=Q1<5>
	GEQTH1=Q2<2>
	GEQTH2=Q1<2>
	PAROOD=PAROOD
	RADDR[7:0]=RADDR<7:0>
	RBLKB=RBLKB
	RCLKS=RCLKS
	RDB=RDB
	RPE1=Q2<0>
	RPE2=Q1<0>
	RSTB0=RSTB0
	RSTB1=RSTB1
	RSTB2=RSTB2
	RSTB3=RSTB3
	WADDR[7:0]=WADDR<7:0>
	WBLKB=WBLKB
	WCLKS=WCLKS
	WPE1=Q2<1>
	WPE2=Q1<1>
	WRB=WRB
	fifo=fifo
	pargen=pargen
	pipln=pipln
	rsinc=rsinc
	wsinc=wsinc
} {
} {

}
#
#ramblock_4x_aswrite_sread
xc_lib_cell ramblock_4x_aswrite_sread ramblock_4x_v2_UCCLAB {
	DC_in0=DC_in0
	DC_in1=DC_in1
	DC_in2=DC_in2
	DIn[8:0]=DIn<8:0>
	DO1[8:0]=Q2<14:6>
	DO2[8:0]=Q1<14:6>
	EMPTY1=Q2<4>
	EMPTY2=Q1<4>
	EQTH1=Q2<3>
	EQTH2=Q1<3>
	FULL1=Q2<5>
	FULL2=Q1<5>
	GEQTH1=Q2<2>
	GEQTH2=Q1<2>
	PAROOD=PAROOD
	RADDR[7:0]=RADDR<7:0>
	RBLKB=RBLKB
	RCLKS=RCLKS
	RDB=RDB
	RPE1=Q2<0>
	RPE2=Q1<0>
	RSTB0=RSTB0
	RSTB1=RSTB1
	RSTB2=RSTB2
	RSTB3=RSTB3
	WADDR[7:0]=WADDR<7:0>
	WBLKB=WBLKB
	WCLKS=WCLKS
	WPE1=Q2<1>
	WPE2=Q1<1>
	WRB=WRB
	fifo=fifo
	pargen=pargen
	pipln=pipln
	rsinc=rsinc
	wsinc=wsinc
} {
} {

}
#
#ramblock_4x_asyncwr_asyncrd
xc_lib_cell ramblock_4x_asyncwr_asyncrd ramblock_4x_v2_UCCLAB {
	DC_in0=DC_in0
	DC_in1=DC_in1
	DC_in2=DC_in2
	DIn[8:0]=DIn<8:0>
	DO1[8:0]=Q2<14:6>
	DO2[8:0]=Q1<14:6>
	EMPTY1=Q2<4>
	EMPTY2=Q1<4>
	EQTH1=Q2<3>
	EQTH2=Q1<3>
	FULL1=Q2<5>
	FULL2=Q1<5>
	GEQTH1=Q2<2>
	GEQTH2=Q1<2>
	PAROOD=PAROOD
	RADDR[7:0]=RADDR<7:0>
	RBLKB=RBLKB
	RDB=RDB
	RPE1=Q2<0>
	RPE2=Q1<0>
	RSTB0=RSTB0
	RSTB1=RSTB1
	RSTB2=RSTB2
	RSTB3=RSTB3
	WADDR[7:0]=WADDR<7:0>
	WBLKB=WBLKB
	WPE1=Q2<1>
	WPE2=Q1<1>
	WRB=WRB
	fifo=fifo
	pargen=pargen
	pipln=pipln
} {
	rsinc=0
	wsinc=0
} {

}
#
#ramblock_4x_asyncwr_syncrd
xc_lib_cell ramblock_4x_asyncwr_syncrd ramblock_4x_v2_UCCLAB {
	DC_in0=DC_in0
	DC_in1=DC_in1
	DC_in2=DC_in2
	DIn[8:0]=DIn<8:0>
	DO1[8:0]=Q2<14:6>
	DO2[8:0]=Q1<14:6>
	EMPTY1=Q2<4>
	EMPTY2=Q1<4>
	EQTH1=Q2<3>
	EQTH2=Q1<3>
	FULL1=Q2<5>
	FULL2=Q1<5>
	GEQTH1=Q2<2>
	GEQTH2=Q1<2>
	PAROOD=PAROOD
	RADDR[7:0]=RADDR<7:0>
	RBLKB=RBLKB
	RCLKS=RCLKS
	RDB=RDB
	RPE1=Q2<0>
	RPE2=Q1<0>
	RSTB0=RSTB0
	RSTB1=RSTB1
	RSTB2=RSTB2
	RSTB3=RSTB3
	WADDR[7:0]=WADDR<7:0>
	WBLKB=WBLKB
	WPE1=Q2<1>
	WPE2=Q1<1>
	WRB=WRB
	fifo=fifo
	pargen=pargen
	pipln=pipln
} {
	rsinc=1
	wsinc=0
} {

}
#
#ramblock_4x_custom
xc_lib_cell ramblock_4x_custom ramblock_4x_v2_UCCLAB {
	DC_in0=DC_in0
	DC_in1=DC_in1
	DC_in2=DC_in2
	DIn[8:0]=DIn<8:0>
	DO1[8:0]=Q2<14:6>
	DO2[8:0]=Q1<14:6>
	EMPTY1=Q2<4>
	EMPTY2=Q1<4>
	EQTH1=Q2<3>
	EQTH2=Q1<3>
	FULL1=Q2<5>
	FULL2=Q1<5>
	GEQTH1=Q2<2>
	GEQTH2=Q1<2>
	PAROOD=PAROOD
	RADDR[7:0]=RADDR<7:0>
	RCLKS=RCLKS
	RDB=RDB
	RPE1=Q2<0>
	RPE2=Q1<0>
	WADDR[7:0]=WADDR<7:0>
	WCLKS=WCLKS
	WPE1=Q2<1>
	WPE2=Q1<1>
	WRB=WRB
	fifo=fifo
	pargen=pargen
	pipln=pipln
	rsinc=rsinc
	wsinc=wsinc
} {
	RBLKB=0
	RSTB0=1
	RSTB1=1
	RSTB2=1
	RSTB3=1
	WBLKB=0
} {

}
#
#ramblock_4x_gen
xc_lib_cell ramblock_4x_gen ramblock_4x_v2_UCCLAB {
	DC_in0=DC_in0
	DC_in1=DC_in1
	DC_in2=DC_in2
	DIn[8:0]=DIn<8:0>
	DO1[8:0]=Q2<14:6>
	DO2[8:0]=Q1<14:6>
	EMPTY1=Q2<4>
	EMPTY2=Q1<4>
	EQTH1=Q2<3>
	EQTH2=Q1<3>
	FULL1=Q2<5>
	FULL2=Q1<5>
	GEQTH1=Q2<2>
	GEQTH2=Q1<2>
	PAROOD=PAROOD
	RADDR[7:0]=RADDR<7:0>
	RBLKB=RBLKB
	RCLKS=RCLKS
	RDB=RDB
	RPE1=Q2<0>
	RPE2=Q1<0>
	RSTB0=RSTB0
	RSTB1=RSTB1
	RSTB2=RSTB2
	RSTB3=RSTB3
	WADDR[7:0]=WADDR<7:0>
	WBLKB=WBLKB
	WCLKS=WCLKS
	WPE1=Q2<1>
	WPE2=Q1<1>
	WRB=WRB
	fifo=fifo
	pargen=pargen
	pipln=pipln
	rsinc=rsinc
	wsinc=wsinc
} {
} {

}
#
#ramblock_4x_swrite_asread
xc_lib_cell ramblock_4x_swrite_asread ramblock_4x_v2_UCCLAB {
	DC_in0=DC_in0
	DC_in1=DC_in1
	DC_in2=DC_in2
	DIn[8:0]=DIn<8:0>
	DO1[8:0]=Q2<14:6>
	DO2[8:0]=Q1<14:6>
	EMPTY1=Q2<4>
	EMPTY2=Q1<4>
	EQTH1=Q2<3>
	EQTH2=Q1<3>
	FULL1=Q2<5>
	FULL2=Q1<5>
	GEQTH1=Q2<2>
	GEQTH2=Q1<2>
	PAROOD=PAROOD
	RADDR[7:0]=RADDR<7:0>
	RBLKB=RBLKB
	RCLKS=RCLKS
	RDB=RDB
	RPE1=Q2<0>
	RPE2=Q1<0>
	RSTB0=RSTB0
	RSTB1=RSTB1
	RSTB2=RSTB2
	RSTB3=RSTB3
	WADDR[7:0]=WADDR<7:0>
	WBLKB=WBLKB
	WCLKS=WCLKS
	WPE1=Q2<1>
	WPE2=Q1<1>
	WRB=WRB
	fifo=fifo
	pargen=pargen
	pipln=pipln
	rsinc=rsinc
	wsinc=wsinc
} {
} {

}
#
#ramblock_4x_swrite_sread
xc_lib_cell ramblock_4x_swrite_sread ramblock_4x_v2_UCCLAB {
	DC_in0=DC_in0
	DC_in1=DC_in1
	DC_in2=DC_in2
	DIn[8:0]=DIn<8:0>
	DO1[8:0]=Q2<14:6>
	DO2[8:0]=Q1<14:6>
	RADDR[7:0]=RADDR<7:0>
	RCLKS=RCLKS
	RDB=RDB
	WADDR[7:0]=WADDR<7:0>
	WCLKS=WCLKS
	WRB=WRB
} {
	PAROOD=0
	RBLKB=0
	RSTB0=1
	RSTB1=1
	RSTB2=1
	RSTB3=1
	WBLKB=0
	fifo=0
	pargen=0
	pipln=0
	rsinc=1
	wsinc=1
} {

}
#
#ramblock_4x_syncwr_asyncrd
xc_lib_cell ramblock_4x_syncwr_asyncrd ramblock_4x_v2_UCCLAB {
	DC_in0=DC_in0
	DC_in1=DC_in1
	DC_in2=DC_in2
	DIn[8:0]=DIn<8:0>
	DO1[8:0]=Q2<14:6>
	DO2[8:0]=Q1<14:6>
	EMPTY1=Q2<4>
	EMPTY2=Q1<4>
	EQTH1=Q2<3>
	EQTH2=Q1<3>
	FULL1=Q2<5>
	FULL2=Q1<5>
	GEQTH1=Q2<2>
	GEQTH2=Q1<2>
	PAROOD=PAROOD
	RADDR[7:0]=RADDR<7:0>
	RBLKB=RBLKB
	RDB=RDB
	RPE1=Q2<0>
	RPE2=Q1<0>
	RSTB0=RSTB0
	RSTB1=RSTB1
	RSTB2=RSTB2
	RSTB3=RSTB3
	WADDR[7:0]=WADDR<7:0>
	WBLKB=WBLKB
	WCLKS=WCLKS
	WPE1=Q2<1>
	WPE2=Q1<1>
	WRB=WRB
	fifo=fifo
	pargen=pargen
	pipln=pipln
} {
	rsinc=0
	wsinc=1
} {

}
#
#ramblock_4x_syncwr_syncrd
xc_lib_cell ramblock_4x_syncwr_syncrd ramblock_4x_v2_UCCLAB {
	DC_in0=DC_in0
	DC_in1=DC_in1
	DC_in2=DC_in2
	DIn[8:0]=DIn<8:0>
	DO1[8:0]=Q2<14:6>
	DO2[8:0]=Q1<14:6>
	EMPTY1=Q2<4>
	EMPTY2=Q1<4>
	EQTH1=Q2<3>
	EQTH2=Q1<3>
	FULL1=Q2<5>
	FULL2=Q1<5>
	GEQTH1=Q2<2>
	GEQTH2=Q1<2>
	PAROOD=PAROOD
	RADDR[7:0]=RADDR<7:0>
	RBLKB=RBLKB
	RCLKS=RCLKS
	RDB=RDB
	RPE1=Q2<0>
	RPE2=Q1<0>
	RSTB0=RSTB0
	RSTB1=RSTB1
	RSTB2=RSTB2
	RSTB3=RSTB3
	WADDR[7:0]=WADDR<7:0>
	WBLKB=WBLKB
	WCLKS=WCLKS
	WPE1=Q2<1>
	WPE2=Q1<1>
	WRB=WRB
	fifo=fifo
	pargen=pargen
	pipln=pipln
} {
	rsinc=1
	wsinc=1
} {

}
#
#xci2_and2
xc_lib_cell xci2_and2 LE_4p0 {
	a=A_Data
	b=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=0
	c_nRst=1
	cn_A_g=0
	cn_B_g=1
	cn_CL=1
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=0
	nc_nQ=1
} {
	+f "y = a & b"

}
#
#xci2_and2ft
xc_lib_cell xci2_and2ft LE_4p0 {
	a=A_Data
	b=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=0
	c_nB=1
	c_nC=0
	c_nQ=0
	c_nRst=1
	cn_A_g=0
	cn_B_g=1
	cn_CL=1
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=0
	nc_nQ=1
} {
	+f "y = !a & b"

}
#
#xci2_and3
xc_lib_cell xci2_and3 LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=1
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=1
	c_nB=0
	c_nC=0
	c_nQ=0
	c_nRst=1
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=1
	nc_nQ=1
} {
	+f "y = a & b & c"

}
#
#xci2_and3fft
xc_lib_cell xci2_and3fft LE_4p0 {
	a=A_Data
	b=C_Reset
	c=B_Clk
	y=ELLR=LR
} {
	c_C=0
	c_CH=1
	c_CTr=0
	c_Rst=1
	c_Tr=0
	c_nA=0
	c_nB=0
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=1
	nc_nQ=1
} {
	+f "y = !a & !b & c"

}
#
#xci2_and3ftt
xc_lib_cell xci2_and3ftt LE_4p0 {
	a=A_Data
	b=C_Reset
	c=B_Clk
	y=ELLR=LR
} {
	c_C=0
	c_CH=1
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=0
	c_nB=0
	c_nC=0
	c_nQ=0
	c_nRst=1
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=1
	nc_nQ=1
} {
	+f "y = !a & b & c"

}
#
#xci2_ao21
xc_lib_cell xci2_ao21 LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=1
	c_Tr=0
	c_nA=0
	c_nB=0
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=1
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=1
	nc_nQ=0
} {
	+f "y = (a & b) | c"

}
#
#xci2_ao21ftf
xc_lib_cell xci2_ao21ftf LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=1
	c_nB=0
	c_nC=0
	c_nQ=1
	c_nRst=1
	cn_A_g=0
	cn_B_g=0
	cn_CL=1
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=1
	nc_nQ=0
} {
	+f "y = (!a & b) | !c"

}
#
#xci2_ao21ftt
xc_lib_cell xci2_ao21ftt LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=1
	c_Tr=0
	c_nA=1
	c_nB=0
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=1
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=1
	nc_nQ=0
} {
	+f "y = (!a & b) | c"

}
#
#xci2_ao21ttf
xc_lib_cell xci2_ao21ttf LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=0
	c_nB=0
	c_nC=0
	c_nQ=1
	c_nRst=1
	cn_A_g=0
	cn_B_g=0
	cn_CL=1
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=1
	nc_nQ=0
} {
	+f "y = (a & b) | !c"

}
#
#xci2_aoi21
xc_lib_cell xci2_aoi21 LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=1
	c_Tr=0
	c_nA=0
	c_nB=0
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=1
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=1
	nc_nQ=1
} {
	+f "y = !( ( a & b ) | c)"

}
#
#xci2_aoi21ftf
xc_lib_cell xci2_aoi21ftf LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=1
	c_nB=0
	c_nC=0
	c_nQ=0
	c_nRst=1
	cn_A_g=0
	cn_B_g=0
	cn_CL=1
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=1
	nc_nQ=1
} {
	+f "y = !( ( !a & b ) | !c)"

}
#
#xci2_aoi21ftt
xc_lib_cell xci2_aoi21ftt LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=1
	c_Tr=0
	c_nA=1
	c_nB=0
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=1
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=1
	nc_nQ=1
} {
	+f "y = !( ( !a & b ) | c)"

}
#
#xci2_aoi21ttf
xc_lib_cell xci2_aoi21ttf LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=0
	c_nB=0
	c_nC=0
	c_nQ=0
	c_nRst=1
	cn_A_g=0
	cn_B_g=0
	cn_CL=1
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=1
	nc_nQ=1
} {
	+f "y = !( ( a & b ) | !c)"

}
#
#xci2_buf
xc_lib_cell xci2_buf LE_4p0 {
	a=A_Data
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=1
	cn_CL=1
	cn_C_g=1
	cn_RstX=1
	nc_Tr=1
	nc_nA=0
	nc_nB=0
	nc_nQ=1
} {
	+f "y = a"

}
#
#xci2_devoe
xc_lib_cell xci2_devoe IO_cell_JTAG_v3_UCCLAB {
} {
	c_Delay=0
	c_FastPAD_i=0
	c_InEn=1
	c_OE_sel0=0
	c_OE_sel1=0
	c_PAD_i_inv=0
	c_PAD_i_trig=0
	c_PD=0
	c_PU=0
	c_PW0=0
	c_PW1=0
	c_PrgDel=0
	c_Shmitt=0
	c_Slew=0
	c_TTL5V=0
} {

}
#
#xci2_devoe_pd
xc_lib_cell xci2_devoe_pd IO_cell_JTAG_v3_UCCLAB {
	x=Fast_CORE_i
} {
	c_Delay=0
	c_FastPAD_i=0
	c_InEn=1
	c_OE_sel0=0
	c_OE_sel1=0
	c_PAD_i_inv=0
	c_PAD_i_trig=0
	c_PD=1
	c_PU=0
	c_PW0=0
	c_PW1=0
	c_PrgDel=0
	c_Shmitt=0
	c_Slew=0
	c_TTL5V=0
} {
	+f "x = 0"

}
#
#xci2_devoe_pu
xc_lib_cell xci2_devoe_pu IO_cell_JTAG_v3_UCCLAB {
	x=Fast_CORE_i
} {
	c_Delay=0
	c_FastPAD_i=0
	c_InEn=1
	c_OE_sel0=0
	c_OE_sel1=0
	c_PAD_i_inv=0
	c_PAD_i_trig=0
	c_PD=0
	c_PU=1
	c_PW0=0
	c_PW1=0
	c_PrgDel=0
	c_Shmitt=0
	c_Slew=0
	c_TTL5V=0
} {
	+f "x = 1"

}
#
#xci2_dff
xc_lib_cell xci2_dff LE_4p0 {
	clk=B_Clk
	d=A_Data
	q=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=0
	c_Tr=1
	c_nA=0
	c_nB=0
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=1
	cn_RstX=1
	nc_Tr=0
	nc_nA=1
	nc_nB=1
	nc_nQ=0
} {
	+f "q = !/clk & q | /clk & d"

}
#
#xci2_dffc
xc_lib_cell xci2_dffc LE_4p0 {
	clk=B_Clk
	clr=C_Reset
	d=A_Data
	q=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=1
	c_Tr=1
	c_nA=1
	c_nB=0
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=0
	nc_nA=0
	nc_nB=1
	nc_nQ=1
} {
	+f "q = (!/clk & q & !clr) | (/clk & d & !clr)"

}
#
#xci2_dffc_ib
xc_lib_cell xci2_dffc_ib IO_cell_JTAG_v3_UCCLAB {
	a=IO
	clk=GCLK
	clr=log_res
	x=CORE_ir
} {
	c_Delay=0
	c_FastPAD_i=0
	c_GCLK_inv=0
	c_InEn=1
	c_OE_sel0=0
	c_OE_sel1=0
	c_PAD_i_inv=0
	c_PAD_i_trig=0
	c_PD=0
	c_PU=0
	c_PW0=0
	c_PW1=0
	c_PrgDel=0
	c_Shmitt=0
	c_Slew=0
	c_TTL5V=0
} {
	+f "x = !/clk & x & !clr | /clk & a & !clr"

}
#
#xci2_dffc_iotb
xc_lib_cell xci2_dffc_iotb IO_cell_JTAG_v3_UCCLAB {
	clk=GCLK
	clr=log_res
	corei=CORE_ir
	coreo=PAD_i
	oe=OE_BUS
	pad=IO
} {
	c_Delay=0
	c_FastPAD_i=0
	c_GCLK_inv=0
	c_InEn=1
	c_OE_sel0=1
	c_OE_sel1=0
	c_PAD_i_inv=1
	c_PAD_i_trig=1
	c_PD=0
	c_PU=0
	c_PW0=1
	c_PW1=0
	c_PrgDel=0
	c_Shmitt=0
	c_Slew=0
	c_TTL5V=0
} {
	+f "pad = !/clk & pad & !clr | /clk & coreo & oe & !clr"
	+f "corei = !/clk & corei & !clr | /clk & pad & !oe & !clr"

}
#
#xci2_dffc_ob
xc_lib_cell xci2_dffc_ob IO_cell_JTAG_v3_UCCLAB {
	a=PAD_i
	clk=GCLK
	clr=log_res
	x=IO
} {
	c_Delay=0
	c_FastPAD_i=0
	c_GCLK_inv=0
	c_InEn=0
	c_OE_sel0=1
	c_OE_sel1=1
	c_PAD_i_inv=1
	c_PAD_i_trig=1
	c_PD=0
	c_PU=0
	c_PW0=1
	c_PW1=0
	c_PrgDel=0
	c_Shmitt=0
	c_Slew=0
	c_TTL5V=0
} {
	+f "x = !/clk & x & !clr | /clk & a & !clr"

}
#
#xci2_dffci
xc_lib_cell xci2_dffci LE_4p0 {
	clk=B_Clk
	clr=C_Reset
	d=A_Data
	q=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=1
	c_Tr=1
	c_nA=1
	c_nB=0
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=0
	nc_nA=0
	nc_nB=1
	nc_nQ=0
} {
	+f "q = (!/clk & q) | (/clk & !d) | clr"

}
#
#xci2_dffcl
xc_lib_cell xci2_dffcl LE_4p0 {
	clk=B_Clk
	clr=C_Reset
	d=A_Data
	q=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=0
	c_Tr=1
	c_nA=1
	c_nB=0
	c_nC=0
	c_nQ=0
	c_nRst=1
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=0
	nc_nA=0
	nc_nB=1
	nc_nQ=1
} {
	+f "q = (!/clk & q & clr) | (/clk & d & clr)"

}
#
#xci2_dffcli
xc_lib_cell xci2_dffcli LE_4p0 {
	clk=B_Clk
	clr=C_Reset
	d=A_Data
	q=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=0
	c_Tr=1
	c_nA=1
	c_nB=0
	c_nC=0
	c_nQ=1
	c_nRst=1
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=0
	nc_nA=0
	nc_nB=1
	nc_nQ=0
} {
	+f "q = (!/clk & q & clr) | (/clk & !d & clr) | !clr"

}
#
#xci2_dffi
xc_lib_cell xci2_dffi LE_4p0 {
	clk=B_Clk
	d=A_Data
	q=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=0
	c_Tr=1
	c_nA=0
	c_nB=0
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=1
	cn_RstX=1
	nc_Tr=0
	nc_nA=1
	nc_nB=1
	nc_nQ=1
} {
	+f "q = !/clk & q | /clk & !d"

}
#
#xci2_dffl
xc_lib_cell xci2_dffl LE_4p0 {
	clk=B_Clk
	d=A_Data
	q=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=0
	c_Tr=1
	c_nA=0
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=1
	cn_RstX=1
	nc_Tr=0
	nc_nA=1
	nc_nB=0
	nc_nQ=0
} {
	+f "q = !clk & q | clk & d"

}
#
#xci2_dfflc
xc_lib_cell xci2_dfflc LE_4p0 {
	clk=B_Clk
	clr=C_Reset
	d=A_Data
	q=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=1
	c_Tr=1
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=0
	nc_nA=0
	nc_nB=0
	nc_nQ=1
} {
	+f "q = ( !clk & q & !clr) | (clk & d & !clr)"

}
#
#xci2_dfflci
xc_lib_cell xci2_dfflci LE_4p0 {
	clk=B_Clk
	clr=C_Reset
	d=A_Data
	q=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=1
	c_Tr=1
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=0
	nc_nA=0
	nc_nB=0
	nc_nQ=0
} {
	+f "q = ( !clk & q) | (clk & !d) | clr"

}
#
#xci2_dfflcl
xc_lib_cell xci2_dfflcl LE_4p0 {
	clk=B_Clk
	clr=C_Reset
	d=A_Data
	q=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=0
	c_Tr=1
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=0
	c_nRst=1
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=0
	nc_nA=0
	nc_nB=0
	nc_nQ=1
} {
	+f "q = ( !clk & q & clr) | (clk & d & clr)"

}
#
#xci2_dfflcli
xc_lib_cell xci2_dfflcli LE_4p0 {
	clk=B_Clk
	clr=C_Reset
	d=A_Data
	q=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=0
	c_Tr=1
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=1
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=0
	nc_nA=0
	nc_nB=0
	nc_nQ=0
} {
	+f "q = ( !clk & q & clr) | (clk & !d & clr) | !clr"

}
#
#xci2_dffli
xc_lib_cell xci2_dffli LE_4p0 {
	clk=B_Clk
	d=A_Data
	q=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=0
	c_Tr=1
	c_nA=0
	c_nB=1
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=1
	cn_RstX=1
	nc_Tr=0
	nc_nA=1
	nc_nB=0
	nc_nQ=1
} {
	+f "q = !clk & q | clk & !d"

}
#
#xci2_dffls
xc_lib_cell xci2_dffls LE_4p0 {
	clk=B_Clk
	d=A_Data
	q=ELLR=LR
	s=C_Reset
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=1
	c_Tr=1
	c_nA=0
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=0
	nc_nA=1
	nc_nB=0
	nc_nQ=0
} {
	+f "q = ( !clk & q) | (clk & d) | s"

}
#
#xci2_dfflsi
xc_lib_cell xci2_dfflsi LE_4p0 {
	clk=B_Clk
	d=A_Data
	q=ELLR=LR
	s=C_Reset
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=1
	c_Tr=1
	c_nA=0
	c_nB=1
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=0
	nc_nA=1
	nc_nB=0
	nc_nQ=1
} {
	+f "q = ( !clk & q & !s) | (clk & !d & !s)"

}
#
#xci2_dffs
xc_lib_cell xci2_dffs LE_4p0 {
	clk=B_Clk
	d=A_Data
	q=ELLR=LR
	s=C_Reset
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=1
	c_Tr=1
	c_nA=0
	c_nB=0
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=0
	nc_nA=1
	nc_nB=1
	nc_nQ=0
} {
	+f "q = (!/clk & q) | (/clk & d) | s"

}
#
#xci2_dffsi
xc_lib_cell xci2_dffsi LE_4p0 {
	clk=B_Clk
	d=A_Data
	q=ELLR=LR
	s=C_Reset
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=1
	c_Tr=1
	c_nA=0
	c_nB=0
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=0
	nc_nA=1
	nc_nB=1
	nc_nQ=1
} {
	+f "q = ( !/clk & q & !s) | (/clk & !d & !s)"

}
#
#xci2_gnd
xc_lib_cell xci2_gnd LE_4p0 {
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=0
	c_nRst=1
	cn_A_g=1
	cn_B_g=1
	cn_CL=0
	cn_C_g=1
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=0
	nc_nQ=1
} {
	+f "y = 0"

}
#
#xci2_ib
xc_lib_cell xci2_ib IO_cell_JTAG_v3_UCCLAB {
	a=IO
	x=CORE_ic
} {
	c_Delay=0
	c_FastPAD_i=0
	c_InEn=1
	c_OE_sel0=0
	c_OE_sel1=0
	c_PAD_i_inv=0
	c_PAD_i_trig=0
	c_PD=0
	c_PU=0
	c_PW0=0
	c_PW1=0
	c_PrgDel=0
	c_Shmitt=0
	c_Slew=0
	c_TTL5V=0
} {
	+f "x = a"

}
#
#xci2_ib_d
xc_lib_cell xci2_ib_d IO_cell_JTAG_v3_UCCLAB {
	a=IO
	x=CORE_ic
} {
	c_Delay=1
	c_FastPAD_i=0
	c_InEn=1
	c_OE_sel0=0
	c_OE_sel1=0
	c_PAD_i_inv=0
	c_PAD_i_trig=0
	c_PD=0
	c_PU=0
	c_PW0=0
	c_PW1=0
	c_PrgDel=0
	c_Shmitt=0
	c_Slew=0
	c_TTL5V=0
} {
	+f "x = a"

}
#
#xci2_ib_d_shm
xc_lib_cell xci2_ib_d_shm IO_cell_JTAG_v3_UCCLAB {
	a=IO
	x=CORE_ic
} {
	c_Delay=1
	c_FastPAD_i=0
	c_InEn=1
	c_OE_sel0=0
	c_OE_sel1=0
	c_PAD_i_inv=0
	c_PAD_i_trig=0
	c_PD=0
	c_PU=0
	c_PW0=0
	c_PW1=0
	c_PrgDel=0
	c_Shmitt=1
	c_Slew=0
	c_TTL5V=0
} {
	+f "x = a"

}
#
#xci2_ib_dpd
xc_lib_cell xci2_ib_dpd IO_cell_JTAG_v3_UCCLAB {
	a=IO
	x=CORE_ic
} {
	c_Delay=1
	c_FastPAD_i=0
	c_InEn=1
	c_OE_sel0=0
	c_OE_sel1=0
	c_PAD_i_inv=0
	c_PAD_i_trig=0
	c_PD=0
	c_PU=0
	c_PW0=0
	c_PW1=0
	c_PrgDel=1
	c_Shmitt=0
	c_Slew=0
	c_TTL5V=0
} {
	+f "x = a"

}
#
#xci2_ib_dpd_shm
xc_lib_cell xci2_ib_dpd_shm IO_cell_JTAG_v3_UCCLAB {
	a=IO
	x=CORE_ic
} {
	c_Delay=1
	c_FastPAD_i=0
	c_InEn=1
	c_OE_sel0=0
	c_OE_sel1=0
	c_PAD_i_inv=0
	c_PAD_i_trig=0
	c_PD=0
	c_PU=0
	c_PW0=0
	c_PW1=0
	c_PrgDel=1
	c_Shmitt=1
	c_Slew=0
	c_TTL5V=0
} {
	+f "x = a"

}
#
#xci2_ib_gclk
xc_lib_cell xci2_ib_gclk IO_cell_JTAG_v3_UCCLAB {
	a=IO
	x=Fast_CORE_i
} {
	c_Delay=0
	c_FastPAD_i=0
	c_InEn=1
	c_OE_sel0=0
	c_OE_sel1=0
	c_PAD_i_inv=0
	c_PAD_i_trig=0
	c_PD=0
	c_PU=0
	c_PW0=0
	c_PW1=0
	c_PrgDel=0
	c_Shmitt=0
	c_Slew=0
	c_TTL5V=0
} {
	+f "x = a"

}
#
#xci2_ib_gclk_shm
xc_lib_cell xci2_ib_gclk_shm IO_cell_JTAG_v3_UCCLAB {
	a=IO
	x=Fast_CORE_i
} {
	c_Delay=0
	c_FastPAD_i=0
	c_InEn=1
	c_OE_sel0=0
	c_OE_sel1=0
	c_PAD_i_inv=0
	c_PAD_i_trig=0
	c_PD=0
	c_PU=0
	c_PW0=0
	c_PW1=0
	c_PrgDel=0
	c_Shmitt=1
	c_Slew=0
	c_TTL5V=0
} {
	+f "x = a"

}
#
#xci2_ib_shm
xc_lib_cell xci2_ib_shm IO_cell_JTAG_v3_UCCLAB {
	a=IO
	x=CORE_ic
} {
	c_Delay=0
	c_FastPAD_i=0
	c_InEn=1
	c_OE_sel0=0
	c_OE_sel1=0
	c_PAD_i_inv=0
	c_PAD_i_trig=0
	c_PD=0
	c_PU=0
	c_PW0=0
	c_PW1=0
	c_PrgDel=0
	c_Shmitt=1
	c_Slew=0
	c_TTL5V=0
} {
	+f "x = a"

}
#
#xci2_inv
xc_lib_cell xci2_inv LE_4p0 {
	a=A_Data
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=1
	cn_CL=1
	cn_C_g=1
	cn_RstX=1
	nc_Tr=1
	nc_nA=0
	nc_nB=0
	nc_nQ=0
} {
	+f "y = !a"

}
#
#xci2_iotb
xc_lib_cell xci2_iotb IO_cell_JTAG_v3_UCCLAB {
	corei=CORE_ic
	coreo=PAD_i
	oe=OE_BUS
	pad=IO
} {
	c_Delay=0
	c_FastPAD_i=0
	c_InEn=1
	c_OE_sel0=1
	c_OE_sel1=0
	c_PAD_i_inv=1
	c_PAD_i_trig=0
	c_PD=0
	c_PU=0
	c_PW0=1
	c_PW1=0
	c_PrgDel=0
	c_Shmitt=0
	c_Slew=0
	c_TTL5V=0
} {
	+f "pad = coreo&oe"
	+f "corei = pad&!oe"

}
#
#xci2_ld
xc_lib_cell xci2_ld LE_4p0 {
	d=A_Data
	en=B_Clk
	q=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=0
	c_Tr=0
	c_nA=1
	c_nB=0
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=1
	cn_RstX=1
	nc_Tr=1
	nc_nA=0
	nc_nB=1
	nc_nQ=1
} {
	+f "q = !en & q | en & d"

}
#
#xci2_ldc
xc_lib_cell xci2_ldc LE_4p0 {
	clr=C_Reset
	d=A_Data
	en=B_Clk
	q=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=1
	c_Tr=0
	c_nA=1
	c_nB=0
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=1
	nc_nQ=1
} {
	+f "q = ( !en & q & !clr) | (en & d & !clr)"

}
#
#xci2_ldci
xc_lib_cell xci2_ldci LE_4p0 {
	clr=C_Reset
	d=A_Data
	en=B_Clk
	q=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=1
	c_Tr=0
	c_nA=1
	c_nB=0
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=1
	nc_nQ=0
} {
	+f "q = ( !en & q) | (en & !d) | clr"

}
#
#xci2_ldi
xc_lib_cell xci2_ldi LE_4p0 {
	d=A_Data
	en=B_Clk
	q=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=0
	c_Tr=0
	c_nA=1
	c_nB=0
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=1
	cn_RstX=1
	nc_Tr=1
	nc_nA=0
	nc_nB=1
	nc_nQ=0
} {
	+f "q = !en & q | en & !d"

}
#
#xci2_ldl
xc_lib_cell xci2_ldl LE_4p0 {
	d=A_Data
	en=B_Clk
	q=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=0
	c_Tr=0
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=1
	cn_RstX=1
	nc_Tr=1
	nc_nA=0
	nc_nB=0
	nc_nQ=1
} {
	+f "q = en & q | !en & d"

}
#
#xci2_ldlc
xc_lib_cell xci2_ldlc LE_4p0 {
	clr=C_Reset
	d=A_Data
	en=B_Clk
	q=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=1
	c_Tr=0
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=0
	nc_nQ=1
} {
	+f "q = ( en & q & !clr) | (!en & d & !clr)"

}
#
#xci2_ldlci
xc_lib_cell xci2_ldlci LE_4p0 {
	clr=C_Reset
	d=A_Data
	en=B_Clk
	q=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=1
	c_Tr=0
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=0
	nc_nQ=0
} {
	+f "q = ( en & q) | (!en & !d) | clr"

}
#
#xci2_ldli
xc_lib_cell xci2_ldli LE_4p0 {
	d=A_Data
	en=B_Clk
	q=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=0
	c_Tr=0
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=1
	cn_RstX=1
	nc_Tr=1
	nc_nA=0
	nc_nB=0
	nc_nQ=0
} {
	+f "q = en & q | !en & !d"

}
#
#xci2_ldls
xc_lib_cell xci2_ldls LE_4p0 {
	d=A_Data
	en=B_Clk
	q=ELLR=LR
	s=C_Reset
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=1
	c_Tr=0
	c_nA=0
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=0
	nc_nQ=0
} {
	+f "q = ( en & q ) | (!en & d) | s"

}
#
#xci2_ldlsi
xc_lib_cell xci2_ldlsi LE_4p0 {
	d=A_Data
	en=B_Clk
	q=ELLR=LR
	s=C_Reset
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=1
	c_Tr=0
	c_nA=0
	c_nB=1
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=0
	nc_nQ=1
} {
	+f "q = ( en & q & !s) | (!en & !d & !s)"

}
#
#xci2_lds
xc_lib_cell xci2_lds LE_4p0 {
	d=A_Data
	en=B_Clk
	q=ELLR=LR
	s=C_Reset
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=1
	c_Tr=0
	c_nA=0
	c_nB=0
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=1
	nc_nQ=0
} {
	+f "q = ( !en & q ) | (en & d) | s"

}
#
#xci2_ldsi
xc_lib_cell xci2_ldsi LE_4p0 {
	d=A_Data
	en=B_Clk
	q=ELLR=LR
	s=C_Reset
} {
	c_C=0
	c_CH=0
	c_CTr=1
	c_Rst=1
	c_Tr=0
	c_nA=0
	c_nB=0
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=1
	nc_nQ=1
} {
	+f "q = ( !en & q & !s) | (en & !d & !s)"

}
#
#xci2_mux2h
xc_lib_cell xci2_mux2h LE_4p0 {
	a=A_Data
	b=C_Reset
	s=B_Clk
	y=ELLR=LR
} {
	c_C=1
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=0
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=1
	nc_Tr=1
	nc_nA=1
	nc_nB=0
	nc_nQ=0
} {
	+f "y = (!s & a) | (s & b)"

}
#
#xci2_mux2l
xc_lib_cell xci2_mux2l LE_4p0 {
	a=A_Data
	b=C_Reset
	s=B_Clk
	y=ELLR=LR
} {
	c_C=1
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=0
	c_nB=0
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=1
	nc_Tr=1
	nc_nA=1
	nc_nB=1
	nc_nQ=0
} {
	+f "y = (s & a) | (!s & b)"

}
#
#xci2_nand2
xc_lib_cell xci2_nand2 LE_4p0 {
	a=A_Data
	b=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=1
	cn_A_g=0
	cn_B_g=1
	cn_CL=1
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=0
	nc_nQ=0
} {
	+f "y = !(a & b)"

}
#
#xci2_nand2ft
xc_lib_cell xci2_nand2ft LE_4p0 {
	a=A_Data
	b=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=0
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=1
	cn_A_g=0
	cn_B_g=1
	cn_CL=1
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=0
	nc_nQ=0
} {
	+f "y = !(!a & b)"

}
#
#xci2_nand3
xc_lib_cell xci2_nand3 LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=1
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=1
	c_nB=0
	c_nC=0
	c_nQ=1
	c_nRst=1
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=1
	nc_nQ=0
} {
	+f "y = !(a & b & c)"

}
#
#xci2_nand3fft
xc_lib_cell xci2_nand3fft LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=1
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=0
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=1
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=0
	nc_nQ=0
} {
	+f "y = !(!a & !b & c)"

}
#
#xci2_nand3ftt
xc_lib_cell xci2_nand3ftt LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=1
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=0
	c_nB=0
	c_nC=0
	c_nQ=1
	c_nRst=1
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=1
	nc_nQ=0
} {
	+f "y = !(!a & b & c)"

}
#
#xci2_nor2
xc_lib_cell xci2_nor2 LE_4p0 {
	a=A_Data
	b=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=1
	c_CTr=0
	c_Rst=1
	c_Tr=0
	c_nA=0
	c_nB=1
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=1
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=0
	nc_nQ=1
} {
	+f "y = !(a | b)"

}
#
#xci2_nor2ft
xc_lib_cell xci2_nor2ft LE_4p0 {
	a=A_Data
	b=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=1
	c_CTr=0
	c_Rst=1
	c_Tr=0
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=1
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=0
	nc_nQ=1
} {
	+f "y = !(!a | b)"

}
#
#xci2_nor3
xc_lib_cell xci2_nor3 LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=1
	c_CTr=0
	c_Rst=1
	c_Tr=0
	c_nA=0
	c_nB=1
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=0
	nc_nQ=1
} {
	+f "y = !(a | b | c)"

}
#
#xci2_nor3fft
xc_lib_cell xci2_nor3fft LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=1
	c_CTr=0
	c_Rst=1
	c_Tr=0
	c_nA=1
	c_nB=0
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=1
	nc_nQ=1
} {
	+f "y = !(!a | !b | c)"

}
#
#xci2_nor3ftt
xc_lib_cell xci2_nor3ftt LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=1
	c_CTr=0
	c_Rst=1
	c_Tr=0
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=0
	nc_nQ=1
} {
	+f "y = !(!a | b | c)"

}
#
#xci2_oa21
xc_lib_cell xci2_oa21 LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=0
	c_nRst=1
	cn_A_g=0
	cn_B_g=0
	cn_CL=1
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=0
	nc_nQ=1
} {
	+f "y = (a | b) & c"

}
#
#xci2_oa21ftf
xc_lib_cell xci2_oa21ftf LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=1
	c_Tr=0
	c_nA=0
	c_nB=1
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=1
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=0
	nc_nQ=1
} {
	+f "y = (!a | b) & !c"

}
#
#xci2_oa21ftt
xc_lib_cell xci2_oa21ftt LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=0
	c_nB=1
	c_nC=0
	c_nQ=0
	c_nRst=1
	cn_A_g=0
	cn_B_g=0
	cn_CL=1
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=0
	nc_nQ=1
} {
	+f "y = (!a | b) & c"

}
#
#xci2_oa21ttf
xc_lib_cell xci2_oa21ttf LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=1
	c_Tr=0
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=1
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=0
	nc_nQ=1
} {
	+f "y = (a | b) & !c"

}
#
#xci2_oai21
xc_lib_cell xci2_oai21 LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=1
	cn_A_g=0
	cn_B_g=0
	cn_CL=1
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=0
	nc_nQ=0
} {
	+f "y = !((a | b) & c)"

}
#
#xci2_oai21ftf
xc_lib_cell xci2_oai21ftf LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=1
	c_Tr=0
	c_nA=0
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=1
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=0
	nc_nQ=0
} {
	+f "y = !((!a | b) & !c)"

}
#
#xci2_oai21ftt
xc_lib_cell xci2_oai21ftt LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=0
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=1
	cn_A_g=0
	cn_B_g=0
	cn_CL=1
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=0
	nc_nQ=0
} {
	+f "y = !((!a | b) & c)"

}
#
#xci2_oai21ttf
xc_lib_cell xci2_oai21ttf LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=1
	c_Tr=0
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=1
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=0
	nc_nQ=0
} {
	+f "y = !((a | b) & !c)"

}
#
#xci2_ob
xc_lib_cell xci2_ob IO_cell_JTAG_v3_UCCLAB {
	a=PAD_i
	x=IO
} {
	c_Delay=0
	c_FastPAD_i=0
	c_InEn=0
	c_OE_sel0=1
	c_OE_sel1=1
	c_PAD_i_inv=1
	c_PAD_i_trig=0
	c_PD=0
	c_PU=0
	c_PW0=1
	c_PW1=0
	c_PrgDel=0
	c_Shmitt=0
	c_Slew=0
	c_TTL5V=0
} {
	+f "x = a"

}
#
#xci2_ob_fast
xc_lib_cell xci2_ob_fast IO_cell_JTAG_v3_UCCLAB {
	a=Fast_PAD_i
	x=IO
} {
	c_Delay=0
	c_FastPAD_i=1
	c_InEn=0
	c_OE_sel0=1
	c_OE_sel1=1
	c_PAD_i_inv=0
	c_PAD_i_trig=0
	c_PD=0
	c_PU=0
	c_PW0=1
	c_PW1=0
	c_PrgDel=0
	c_Shmitt=0
	c_Slew=0
	c_TTL5V=0
} {
	+f "x = a"

}
#
#xci2_ob_gnd
xc_lib_cell xci2_ob_gnd IO_cell_JTAG_v3_UCCLAB {
	x=IO
} {
	c_Delay=0
	c_FastPAD_i=0
	c_InEn=0
	c_OE_sel0=0
	c_OE_sel1=0
	c_PAD_i_inv=1
	c_PAD_i_trig=0
	c_PD=1
	c_PU=0
	c_PW0=0
	c_PW1=0
	c_PrgDel=0
	c_Shmitt=0
	c_Slew=0
	c_TTL5V=0
} {
	+f "x = 0"

}
#
#xci2_ob_strong0
xc_lib_cell xci2_ob_strong0 IO_cell_JTAG_v3_UCCLAB {
	a=PAD_i
	x=IO
} {
	c_Delay=0
	c_FastPAD_i=0
	c_InEn=0
	c_OE_sel0=1
	c_OE_sel1=1
	c_PAD_i_inv=1
	c_PAD_i_trig=0
	c_PD=0
	c_PU=0
	c_PW0=0
	c_PW1=0
	c_PrgDel=0
	c_Slew=0
	c_TTL5V=0
} {
	+f "x = a"

}
#
#xci2_ob_strong1
xc_lib_cell xci2_ob_strong1 IO_cell_JTAG_v3_UCCLAB {
	a=PAD_i
	x=IO
} {
	c_Delay=0
	c_FastPAD_i=0
	c_InEn=0
	c_OE_sel0=1
	c_OE_sel1=1
	c_PAD_i_inv=1
	c_PAD_i_trig=0
	c_PD=0
	c_PU=0
	c_PW0=1
	c_PW1=0
	c_PrgDel=0
	c_Shmitt=0
	c_Slew=0
	c_TTL5V=0
} {
	+f "x = a"

}
#
#xci2_ob_strong2
xc_lib_cell xci2_ob_strong2 IO_cell_JTAG_v3_UCCLAB {
	a=PAD_i
	x=IO
} {
	c_Delay=0
	c_FastPAD_i=0
	c_InEn=0
	c_OE_sel0=1
	c_OE_sel1=1
	c_PAD_i_inv=1
	c_PAD_i_trig=0
	c_PD=0
	c_PU=0
	c_PW0=0
	c_PW1=1
	c_PrgDel=0
	c_Shmitt=0
	c_Slew=0
	c_TTL5V=0
} {
	+f "x = a"

}
#
#xci2_ob_strong3
xc_lib_cell xci2_ob_strong3 IO_cell_JTAG_v3_UCCLAB {
	a=PAD_i
	x=IO
} {
	c_Delay=0
	c_FastPAD_i=0
	c_InEn=0
	c_OE_sel0=1
	c_OE_sel1=1
	c_PAD_i_inv=1
	c_PAD_i_trig=0
	c_PD=0
	c_PU=0
	c_PW0=1
	c_PW1=1
	c_PrgDel=0
	c_Shmitt=0
	c_Slew=0
	c_TTL5V=0
} {
	+f "x = a"

}
#
#xci2_ob_vdd
xc_lib_cell xci2_ob_vdd IO_cell_JTAG_v3_UCCLAB {
	x=IO
} {
	c_Delay=0
	c_FastPAD_i=0
	c_InEn=0
	c_OE_sel0=0
	c_OE_sel1=0
	c_PAD_i_inv=1
	c_PAD_i_trig=0
	c_PD=0
	c_PU=1
	c_PW0=0
	c_PW1=0
	c_PrgDel=0
	c_Shmitt=0
	c_Slew=0
	c_TTL5V=0
} {
	+f "x = 1"

}
#
#xci2_or2
xc_lib_cell xci2_or2 LE_4p0 {
	a=A_Data
	b=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=1
	c_CTr=0
	c_Rst=1
	c_Tr=0
	c_nA=0
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=1
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=0
	nc_nQ=0
} {
	+f "y = a | b"

}
#
#xci2_or2ft
xc_lib_cell xci2_or2ft LE_4p0 {
	a=A_Data
	b=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=1
	c_CTr=0
	c_Rst=1
	c_Tr=0
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=1
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=0
	nc_nQ=0
} {
	+f "y = !a | b"

}
#
#xci2_or3
xc_lib_cell xci2_or3 LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=1
	c_CTr=0
	c_Rst=1
	c_Tr=0
	c_nA=0
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=1
	nc_nB=0
	nc_nQ=0
} {
	+f "y = a | b | c"

}
#
#xci2_or3fft
xc_lib_cell xci2_or3fft LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=1
	c_CTr=0
	c_Rst=1
	c_Tr=0
	c_nA=1
	c_nB=0
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=1
	nc_nQ=0
} {
	+f "y = !a | !b | c"

}
#
#xci2_or3ftt
xc_lib_cell xci2_or3ftt LE_4p0 {
	a=A_Data
	b=B_Clk
	c=C_Reset
	y=ELLR=LR
} {
	c_C=0
	c_CH=1
	c_CTr=0
	c_Rst=1
	c_Tr=0
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=0
	nc_nQ=0
} {
	+f "y = !a | b | c"

}
#
#xci2_otb
xc_lib_cell xci2_otb IO_cell_JTAG_v3_UCCLAB {
	a=PAD_i
	oe=OE_BUS
	x=IO
} {
	c_Delay=0
	c_FastPAD_i=0
	c_InEn=0
	c_OE_sel0=1
	c_OE_sel1=0
	c_PAD_i_inv=1
	c_PAD_i_trig=0
	c_PD=0
	c_PU=0
	c_PW0=1
	c_PW1=0
	c_PrgDel=0
	c_Shmitt=0
	c_Slew=0
	c_TTL5V=0
} {
	+f "x = a&oe"

}
#
#xci2_vdd
xc_lib_cell xci2_vdd LE_4p0 {
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=1
	cn_A_g=1
	cn_B_g=1
	cn_CL=0
	cn_C_g=1
	cn_RstX=0
	nc_Tr=1
	nc_nA=0
	nc_nB=0
	nc_nQ=0
} {
	+f "y = 1"

}
#
#xci2_xnor2
xc_lib_cell xci2_xnor2 LE_4p0 {
	a=A_Data&C_Reset
	b=B_Clk
	y=ELLR=LR
} {
	c_C=1
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=1
	c_nB=0
	c_nC=0
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=1
	nc_Tr=1
	nc_nA=0
	nc_nB=1
	nc_nQ=1
} {
	+f "y = ! (a ^ b)"

}
#
#xci2_xnor2ft
xc_lib_cell xci2_xnor2ft LE_4p0 {
	a=A_Data&C_Reset
	b=B_Clk
	y=ELLR=LR
} {
	c_C=0
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=0
	c_nB=0
	c_nC=1
	c_nQ=0
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=1
	nc_Tr=1
	nc_nA=1
	nc_nB=1
	nc_nQ=1
} {
	+f "y = ! (!a ^ b)"

}
#
#xci2_xor2
xc_lib_cell xci2_xor2 LE_4p0 {
	a=A_Data&C_Reset
	b=B_Clk
	y=ELLR=LR
} {
	c_C=1
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=1
	c_nB=0
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=1
	nc_Tr=1
	nc_nA=0
	nc_nB=1
	nc_nQ=0
} {
	+f "y = a ^ b"

}
#
#xci2_xor2ft
xc_lib_cell xci2_xor2ft LE_4p0 {
	a=A_Data&C_Reset
	b=B_Clk
	y=ELLR=LR
} {
	c_C=1
	c_CH=0
	c_CTr=0
	c_Rst=0
	c_Tr=0
	c_nA=1
	c_nB=1
	c_nC=0
	c_nQ=1
	c_nRst=0
	cn_A_g=0
	cn_B_g=0
	cn_CL=0
	cn_C_g=0
	cn_RstX=1
	nc_Tr=1
	nc_nA=0
	nc_nB=0
	nc_nQ=0
} {
	+f "y = !a ^ b"

}
