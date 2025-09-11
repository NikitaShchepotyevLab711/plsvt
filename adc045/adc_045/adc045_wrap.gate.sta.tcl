read_liberty D:/xcad/src/libraries/XCI2/PtcV1.80T25/LVDS_receiver_5V_v3_PtcV1.80T25.lib
read_liberty D:/xcad/src/libraries/XCI2/PtcV1.80T25/pll_design_v5_PtcV1.80T25.lib
read_liberty D:/xcad/src/libraries/XCI2/PtcV1.80T25/ramblock_4x_v2_UCCLAB_PtcV1.80T25.lib
read_liberty D:/xcad/src/libraries/XCI2/PtcV1.80T25/XCI2_IO_PtcV1.80T25.lib
read_liberty D:/xcad/src/libraries/XCI2/PtcV1.80T25/XCI2_LE_PtcV1.80T25.lib
read_liberty D:/xcad/src/libraries/XCI2/PtcV1.80T25/XCI2_RE_PtcV1.80T25.lib
read_verilog adc045_wrap.gate.v
link_design adc045_wrap
set_max_delay -to [all_outputs] 25
set_input_transition -rise 2.8 [all_inputs]
set_input_transition -fall 2.8 [all_inputs]
set ext_port_name_list {}
foreach port [all_outputs] {
    lappend ext_port_name_list [get_property $port full_name]
}
foreach port [all_inputs] {
    lappend ext_port_name_list [get_property $port full_name]
}
set all_net_name_list {}
foreach net [get_nets *] {
    lappend all_net_name_list [get_property $net full_name]
}
set internal_net_name_list {}
foreach net $all_net_name_list {
    if { [lsearch -exact $ext_port_name_list $net] == -1 } {
        lappend internal_net_name_list $net
    }
}
set int_net_list [get_nets $internal_net_name_list]
set_load -subtract_pin_load 0.0582 $int_net_list
set_load 5 [all_inputs]
set_load 5 [all_outputs]
set_false_path -from VDD
set_false_path -from GND
set sta_input_port_default_clock 1
report_checks -format full_clock_expanded -path_delay max -digits 6 -fields "cap slew" -endpoint_count 10 -sort_by_slack > C:/Users/Admin-PC/Desktop/sny/adc1_plasvet/adc_045/adc045_wrap.STA.reports/adc045_wrap.gate.timing_report.txt
write_sdf -include_typ C:/Users/Admin-PC/Desktop/sny/adc1_plasvet/adc_045/adc045_wrap.STA.reports/adc045_wrap.gate.sdf
exit
