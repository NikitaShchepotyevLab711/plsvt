###############################################
#	File Name: adc045_wrap.nodes.tcl
#	Data:      25/04/09 13:22:05
#	Program:   xcore
###############################################
set xc_input {
 cs
 dout
 drdy
 hard_start
 hard_wreg
 rst_l
 rst_l_adc
 clk
}
set xc_output {
 adc045_data[0]
 adc045_data[1]
 adc045_data[2]
 adc045_data[3]
 adc045_data[4]
 adc045_data[5]
 adc045_data[6]
 adc045_data[7]
 adc045_data[8]
 adc045_data[9]
 adc045_data[10]
 adc045_data[11]
 adc045_data[12]
 adc045_data[13]
 adc045_data[14]
 adc045_data[15]
 adc045_data[16]
 adc045_data[17]
 adc045_data[18]
 adc045_data[19]
 adc045_data[20]
 adc045_data[21]
 adc045_data[22]
 adc045_data[23]
 din
 nRST
 ready_sample
 sclk
 start
}
set asim_input_nodes {
IO<0>
IO<1>
IO<2>
IO<3>
IO<4>
IO<5>
IO<6>
IO<16>
}
set asim_output_nodes {
IO<185>
IO<174>
IO<169>
IO<168>
IO<167>
IO<166>
IO<165>
IO<164>
IO<163>
IO<162>
IO<184>
IO<183>
IO<182>
IO<181>
IO<180>
IO<179>
IO<178>
IO<177>
IO<176>
IO<175>
IO<173>
IO<172>
IO<171>
IO<170>
IO<190>
IO<189>
IO<188>
IO<187>
IO<186>
}
set asim_ckt_nodes {
IO<0>
IO<1>
IO<2>
IO<3>
IO<4>
IO<5>
IO<6>
IO<185>
IO<174>
IO<169>
IO<168>
IO<167>
IO<166>
IO<165>
IO<164>
IO<163>
IO<162>
IO<184>
IO<183>
IO<182>
IO<181>
IO<180>
IO<179>
IO<178>
IO<177>
IO<176>
IO<175>
IO<173>
IO<172>
IO<171>
IO<170>
IO<190>
IO<189>
IO<188>
IO<187>
IO<186>
IO<16>
}
set asim_watch_nodes(IO<0>) cs
set asim_watch_nodes(IO<1>) dout
set asim_watch_nodes(IO<2>) drdy
set asim_watch_nodes(IO<3>) hard_start
set asim_watch_nodes(IO<4>) hard_wreg
set asim_watch_nodes(IO<5>) rst_l
set asim_watch_nodes(IO<6>) rst_l_adc
set asim_watch_nodes(IO<185>) adc045_data[0]
set asim_watch_nodes(IO<174>) adc045_data[1]
set asim_watch_nodes(IO<169>) adc045_data[2]
set asim_watch_nodes(IO<168>) adc045_data[3]
set asim_watch_nodes(IO<167>) adc045_data[4]
set asim_watch_nodes(IO<166>) adc045_data[5]
set asim_watch_nodes(IO<165>) adc045_data[6]
set asim_watch_nodes(IO<164>) adc045_data[7]
set asim_watch_nodes(IO<163>) adc045_data[8]
set asim_watch_nodes(IO<162>) adc045_data[9]
set asim_watch_nodes(IO<184>) adc045_data[10]
set asim_watch_nodes(IO<183>) adc045_data[11]
set asim_watch_nodes(IO<182>) adc045_data[12]
set asim_watch_nodes(IO<181>) adc045_data[13]
set asim_watch_nodes(IO<180>) adc045_data[14]
set asim_watch_nodes(IO<179>) adc045_data[15]
set asim_watch_nodes(IO<178>) adc045_data[16]
set asim_watch_nodes(IO<177>) adc045_data[17]
set asim_watch_nodes(IO<176>) adc045_data[18]
set asim_watch_nodes(IO<175>) adc045_data[19]
set asim_watch_nodes(IO<173>) adc045_data[20]
set asim_watch_nodes(IO<172>) adc045_data[21]
set asim_watch_nodes(IO<171>) adc045_data[22]
set asim_watch_nodes(IO<170>) adc045_data[23]
set asim_watch_nodes(IO<190>) din
set asim_watch_nodes(IO<189>) nRST
set asim_watch_nodes(IO<188>) ready_sample
set asim_watch_nodes(IO<187>) sclk
set asim_watch_nodes(IO<186>) start
set asim_watch_nodes(IO<16>) clk
