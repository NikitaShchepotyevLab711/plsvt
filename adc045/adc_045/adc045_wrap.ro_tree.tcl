#**********************************************
#	File Name: adc045_wrap.ro_tree.tcl
#	Data:      25/04/09 13:22:04
#	Program:   xcore
#**********************************************
xc_net_tree _061_ {
	 xc_pin xci2_nand2 y o [-1] pinInv=0 { ILAB0102.ILE0309.net2656 ILAB0102.ILE0309.net0541 }
	 xc_pin xci2_dffcl d i [10] pinInv=0 { ILAB0101.ILE0215.net2749 }
	 [0] xc_tree ILAB0102.ILE0309.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0309.net1832 w=1 e=switch2=ILAB0102.ILE0309.Is39{ILAB0102.ILE0309.net2656 ILAB0102.ILE0309.net1832} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net17527 w=1.4 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0309.Ihi6{ILAB0102.ILE0309.net1832 ILAB0102.net17527} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0306.net1844 w=2.4 e=switch2=ILAB0102.ILE0306.Is31{ILAB0102.net17527 ILAB0102.ILE0306.net1844} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net26797 w=2.8 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0306.Ihi7{ILAB0102.ILE0306.net1844 ILAB0102.net26797} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0302.net1844 w=3.65 e=switch2=ILAB0102.ILE0302.Is31{ILAB0102.net26797 ILAB0102.ILE0302.net1844} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree net17226<1> w=3.95 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0302.Ihi7{ILAB0102.ILE0302.net1844 net17226<1>} prev=[5] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0101.ILE0315.A w=5.25 e=switch_sd=ILAB0101.ILE0315.Is17{net17226<1> ILAB0101.ILE0315.A} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0101.net24842 w=6.85 e=switch=ILAB0101.ILE0315.Is113{ILAB0101.net24842 ILAB0101.ILE0315.A} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0101.ILE0215.A w=7.35 e=switch_sd=ILAB0101.ILE0215.Is112{ILAB0101.net24842 ILAB0101.ILE0215.A} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0101.ILE0215.net2749 w=7.45 e=switch_ds=ILAB0101.ILE0215.Is41{ILAB0101.ILE0215.A ILAB0101.ILE0215.net2749} prev=[9] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _183_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE0312.net2656 ILAB0102.ILE0312.net0541 }
	 xc_pin xci2_nand2 b i [6] pinInv=0 { ILAB0102.ILE0309.net2746 }
	 [0] xc_tree ILAB0102.ILE0312.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0312.net1838 w=0.85 e=switch2=ILAB0102.ILE0312.Is47{ILAB0102.ILE0312.net2656 ILAB0102.ILE0312.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net25898 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0312.Ihi5{ILAB0102.ILE0312.net1838 ILAB0102.net25898} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0310.net1832 w=1.7 e=switch2=ILAB0102.ILE0310.Is39{ILAB0102.net25898 ILAB0102.ILE0310.net1832} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net25852 w=1.924 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0310.Ihi6{ILAB0102.ILE0310.net1832 ILAB0102.net25852} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0309.C w=2.448 e=switch_sd=ILAB0102.ILE0309.Is20{ILAB0102.net25852 ILAB0102.ILE0309.C} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0102.ILE0309.net2746 w=2.572 e=switch_ds=ILAB0102.ILE0309.Is44{ILAB0102.ILE0309.C ILAB0102.ILE0309.net2746} prev=[5] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _182_ {
	 xc_pin xci2_and2 y o [-1] pinInv=0 { ILAB0102.ILE0311.net2656 ILAB0102.ILE0311.net0541 }
	 xc_pin xci2_and3 c i [4] pinInv=0 { ILAB0102.ILE0312.net2746 }
	 [0] xc_tree ILAB0102.ILE0311.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0311.net2650 w=0.55 e=switch2=ILAB0102.ILE0311.Is143{ILAB0102.ILE0311.net2656 ILAB0102.ILE0311.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net23379 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0311.Iho3{ILAB0102.ILE0311.net2650 ILAB0102.net23379} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0312.C w=1.25 e=switch_sd=ILAB0102.ILE0312.Is36{ILAB0102.net23379 ILAB0102.ILE0312.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0312.net2746 w=1.35 e=switch_ds=ILAB0102.ILE0312.Is44{ILAB0102.ILE0312.C ILAB0102.ILE0312.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _181_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE0614.net2656 ILAB0102.ILE0614.net0541 }
	 xc_pin xci2_and2 b i [6] pinInv=0 { ILAB0102.ILE0311.net2746 }
	 [0] xc_tree ILAB0102.ILE0614.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0614.net1859 w=0.85 e=switch2=ILAB0102.ILE0614.Is119{ILAB0102.ILE0614.net2656 ILAB0102.ILE0614.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net22144 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0614.Ivi7{ILAB0102.ILE0614.net1859 ILAB0102.net22144} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0314.C w=2.45 e=switch_sd=ILAB0102.ILE0314.Is125{ILAB0102.net22144 ILAB0102.ILE0314.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net25897 w=4.05 e=switch=ILAB0102.ILE0314.Is12{ILAB0102.net25897 ILAB0102.ILE0314.C} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0311.C w=4.55 e=switch_sd=ILAB0102.ILE0311.Is21{ILAB0102.net25897 ILAB0102.ILE0311.C} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.ILE0311.net2746 w=4.65 e=switch_ds=ILAB0102.ILE0311.Is44{ILAB0102.ILE0311.C ILAB0102.ILE0311.net2746} prev=[5] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _180_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0103.ILE0601.net2656 ILAB0103.ILE0601.net0541 }
	 xc_pin xci2_and3 c i [4] pinInv=0 { ILAB0102.ILE0614.net2746 }
	 [0] xc_tree ILAB0103.ILE0601.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0601.net1844 w=0.55 e=switch2=ILAB0103.ILE0601.Is31{ILAB0103.ILE0601.net2656 ILAB0103.ILE0601.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net10419<0> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0601.Ihi7{ILAB0103.ILE0601.net1844 net10419<0>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0614.C w=1.25 e=switch_sd=ILAB0102.ILE0614.Is21{net10419<0> ILAB0102.ILE0614.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0614.net2746 w=1.35 e=switch_ds=ILAB0102.ILE0614.Is44{ILAB0102.ILE0614.C ILAB0102.ILE0614.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[4] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0103.ILE0701.net2656 ILAB0103.ILE0701.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0103.ILE0601.net2743 }
	 [0] xc_tree ILAB0103.ILE0701.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0701.net1859 w=0.55 e=switch2=ILAB0103.ILE0701.Is119{ILAB0103.ILE0701.net2656 ILAB0103.ILE0701.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net20524 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0701.Ivi7{ILAB0103.ILE0701.net1859 ILAB0103.net20524} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0601.B w=1.6 e=switch=ILAB0103.ILE0601.Is131{ILAB0103.net20524 ILAB0103.ILE0601.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0601.net2743 w=1.7 e=switch_ds=ILAB0103.ILE0601.Is43{ILAB0103.ILE0601.B ILAB0103.ILE0601.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _179_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0102.ILE0613.net2656 ILAB0102.ILE0613.net0541 }
	 xc_pin xci2_and3 b i [4] pinInv=0 { ILAB0102.ILE0614.net2743 }
	 [0] xc_tree ILAB0102.ILE0613.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0613.net2650 w=0.55 e=switch2=ILAB0102.ILE0613.Is143{ILAB0102.ILE0613.net2656 ILAB0102.ILE0613.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net19329 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0613.Iho3{ILAB0102.ILE0613.net2650 ILAB0102.net19329} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0614.B w=1.25 e=switch_sd=ILAB0102.ILE0614.Is34{ILAB0102.net19329 ILAB0102.ILE0614.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0614.net2743 w=1.35 e=switch_ds=ILAB0102.ILE0614.Is43{ILAB0102.ILE0614.B ILAB0102.ILE0614.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[1] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0513.net2656 ILAB0102.ILE0513.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0102.ILE0613.net2743 }
	 [0] xc_tree ILAB0102.ILE0513.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0513.net2660 w=0.55 e=switch2=ILAB0102.ILE0513.Is23{ILAB0102.ILE0513.net2656 ILAB0102.ILE0513.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net25519 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0513.Ivo1{ILAB0102.ILE0513.net2660 ILAB0102.net25519} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0613.B w=1.25 e=switch_sd=ILAB0102.ILE0613.Is123{ILAB0102.net25519 ILAB0102.ILE0613.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0613.net2743 w=1.35 e=switch_ds=ILAB0102.ILE0613.Is43{ILAB0102.ILE0613.B ILAB0102.ILE0613.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _178_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE0315.net2656 ILAB0102.ILE0315.net0541 }
	 xc_pin xci2_and3 b i [4] pinInv=0 { ILAB0102.ILE0312.net2743 }
	 [0] xc_tree ILAB0102.ILE0315.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0315.net1844 w=0.55 e=switch2=ILAB0102.ILE0315.Is31{ILAB0102.ILE0315.net2656 ILAB0102.ILE0315.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net23377 w=0.846 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0315.Ihi7{ILAB0102.ILE0315.net1844 ILAB0102.net23377} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0312.B w=1.358 e=switch_sd=ILAB0102.ILE0312.Is19{ILAB0102.net23377 ILAB0102.ILE0312.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0312.net2743 w=1.47 e=switch_ds=ILAB0102.ILE0312.Is43{ILAB0102.ILE0312.B ILAB0102.ILE0312.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _177_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0103.ILE0301.net2656 ILAB0103.ILE0301.net0541 }
	 xc_pin xci2_and3 c i [4] pinInv=0 { ILAB0102.ILE0315.net2746 }
	 [0] xc_tree ILAB0103.ILE0301.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0301.net1844 w=0.55 e=switch2=ILAB0103.ILE0301.Is31{ILAB0103.ILE0301.net2656 ILAB0103.ILE0301.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net10431<0> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0301.Ihi7{ILAB0103.ILE0301.net1844 net10431<0>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0315.C w=1.25 e=switch_sd=ILAB0102.ILE0315.Is20{net10431<0> ILAB0102.ILE0315.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0315.net2746 w=1.35 e=switch_ds=ILAB0102.ILE0315.Is44{ILAB0102.ILE0315.C ILAB0102.ILE0315.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[8] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0103.ILE0201.net2656 ILAB0103.ILE0201.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0103.ILE0301.net2743 }
	 [0] xc_tree ILAB0103.ILE0201.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0201.net2670 w=0.55 e=switch2=ILAB0103.ILE0201.Is7{ILAB0103.ILE0201.net2656 ILAB0103.ILE0201.net2670} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net17865 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0201.Ivo3{ILAB0103.ILE0201.net2670 ILAB0103.net17865} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0301.B w=1.262 e=switch_sd=ILAB0103.ILE0301.Is106{ILAB0103.net17865 ILAB0103.ILE0301.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0301.net2743 w=1.374 e=switch_ds=ILAB0103.ILE0301.Is43{ILAB0103.ILE0301.B ILAB0103.ILE0301.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _176_ {
	 xc_pin xci2_and2 y o [-1] pinInv=0 { ILAB0102.ILE0215.net2656 ILAB0102.ILE0215.net0541 }
	 xc_pin xci2_and3 b i [4] pinInv=0 { ILAB0102.ILE0315.net2743 }
	 [0] xc_tree ILAB0102.ILE0215.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0215.net1862 w=0.55 e=switch2=ILAB0102.ILE0215.Is111{ILAB0102.ILE0215.net2656 ILAB0102.ILE0215.net1862} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ELLR14_28<3> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0215.Ivi6{ILAB0102.ILE0215.net1862 ELLR14_28<3>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0315.B w=1.612 e=switch=ILAB0102.ILE0315.Is130{ELLR14_28<3> ILAB0102.ILE0315.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0315.net2743 w=1.724 e=switch_ds=ILAB0102.ILE0315.Is43{ILAB0102.ILE0315.B ILAB0102.ILE0315.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _175_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0102.ILE0216.net2656 ILAB0102.ILE0216.net0541 }
	 xc_pin xci2_and2 b i [4] pinInv=0 { ILAB0102.ILE0215.net2746 }
	 [0] xc_tree ILAB0102.ILE0216.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0216.net1844 w=0.55 e=switch2=ILAB0102.ILE0216.Is31{ILAB0102.ILE0216.net2656 ILAB0102.ILE0216.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net22297 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0216.Ihi7{ILAB0102.ILE0216.net1844 ILAB0102.net22297} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0215.C w=1.6 e=switch=ILAB0102.ILE0215.Is13{ILAB0102.net22297 ILAB0102.ILE0215.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0215.net2746 w=1.7 e=switch_ds=ILAB0102.ILE0215.Is44{ILAB0102.ILE0215.C ILAB0102.ILE0215.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[21] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0316.net2656 ILAB0102.ILE0316.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0102.ILE0216.net2743 }
	 [0] xc_tree ILAB0102.ILE0316.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0316.net1859 w=0.55 e=switch2=ILAB0102.ILE0316.Is119{ILAB0102.ILE0316.net2656 ILAB0102.ILE0316.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ELLR15_28<3> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0316.Ivi7{ILAB0102.ILE0316.net1859 ELLR15_28<3>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0216.B w=1.6 e=switch=ILAB0102.ILE0216.Is131{ELLR15_28<3> ILAB0102.ILE0216.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0216.net2743 w=1.7 e=switch_ds=ILAB0102.ILE0216.Is43{ILAB0102.ILE0216.B ILAB0102.ILE0216.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _174_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE0412.net2656 ILAB0102.ILE0412.net0541 }
	 xc_pin xci2_and3 a i [4] pinInv=0 { ILAB0102.ILE0312.net2749 }
	 [0] xc_tree ILAB0102.ILE0412.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0412.net1862 w=0.55 e=switch2=ILAB0102.ILE0412.Is111{ILAB0102.ILE0412.net2656 ILAB0102.ILE0412.net1862} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net19084 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0412.Ivi6{ILAB0102.ILE0412.net1862 ILAB0102.net19084} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0312.A w=1.25 e=switch_sd=ILAB0102.ILE0312.Is120{ILAB0102.net19084 ILAB0102.ILE0312.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0312.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0312.Is41{ILAB0102.ILE0312.A ILAB0102.ILE0312.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _173_ {
	 xc_pin xci2_and2 y o [-1] pinInv=0 { ILAB0102.ILE0413.net2656 ILAB0102.ILE0413.net0541 }
	 xc_pin xci2_and3 c i [4] pinInv=0 { ILAB0102.ILE0412.net2746 }
	 [0] xc_tree ILAB0102.ILE0413.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0413.net1838 w=0.55 e=switch2=ILAB0102.ILE0413.Is47{ILAB0102.ILE0413.net2656 ILAB0102.ILE0413.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net19868 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0413.Ihi5{ILAB0102.ILE0413.net1838 ILAB0102.net19868} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0412.C w=1.262 e=switch_sd=ILAB0102.ILE0412.Is28{ILAB0102.net19868 ILAB0102.ILE0412.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0412.net2746 w=1.374 e=switch_ds=ILAB0102.ILE0412.Is44{ILAB0102.ILE0412.C ILAB0102.ILE0412.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _172_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0102.ILE0313.net2656 ILAB0102.ILE0313.net0541 }
	 xc_pin xci2_and2 b i [4] pinInv=0 { ILAB0102.ILE0413.net2746 }
	 [0] xc_tree ILAB0102.ILE0313.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0313.net2670 w=0.55 e=switch2=ILAB0102.ILE0313.Is7{ILAB0102.ILE0313.net2656 ILAB0102.ILE0313.net2670} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net26100 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0313.Ivo3{ILAB0102.ILE0313.net2670 ILAB0102.net26100} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0413.C w=1.262 e=switch_sd=ILAB0102.ILE0413.Is108{ILAB0102.net26100 ILAB0102.ILE0413.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0413.net2746 w=1.374 e=switch_ds=ILAB0102.ILE0413.Is44{ILAB0102.ILE0413.C ILAB0102.ILE0413.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[19] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0213.net2656 ILAB0102.ILE0213.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0102.ILE0313.net2743 }
	 [0] xc_tree ILAB0102.ILE0213.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0213.net2670 w=0.55 e=switch2=ILAB0102.ILE0213.Is7{ILAB0102.ILE0213.net2656 ILAB0102.ILE0213.net2670} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net23175 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0213.Ivo3{ILAB0102.ILE0213.net2670 ILAB0102.net23175} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0313.B w=1.262 e=switch_sd=ILAB0102.ILE0313.Is106{ILAB0102.net23175 ILAB0102.ILE0313.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0313.net2743 w=1.374 e=switch_ds=ILAB0102.ILE0313.Is43{ILAB0102.ILE0313.B ILAB0102.ILE0313.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _171_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE0409.net2656 ILAB0102.ILE0409.net0541 }
	 xc_pin xci2_nand2 a i [4] pinInv=0 { ILAB0102.ILE0309.net2749 }
	 [0] xc_tree ILAB0102.ILE0409.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0409.net1850 w=0.55 e=switch2=ILAB0102.ILE0409.Is103{ILAB0102.ILE0409.net2656 ILAB0102.ILE0409.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net18407 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0409.Ivi5{ILAB0102.ILE0409.net1850 ILAB0102.net18407} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0309.A w=1.262 e=switch_sd=ILAB0102.ILE0309.Is112{ILAB0102.net18407 ILAB0102.ILE0309.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0309.net2749 w=1.374 e=switch_ds=ILAB0102.ILE0309.Is41{ILAB0102.ILE0309.A ILAB0102.ILE0309.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _170_ {
	 xc_pin xci2_and2 y o [-1] pinInv=0 { ILAB0102.ILE0509.net2656 ILAB0102.ILE0509.net0541 }
	 xc_pin xci2_and3 c i [4] pinInv=0 { ILAB0102.ILE0409.net2746 }
	 [0] xc_tree ILAB0102.ILE0509.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0509.net1859 w=0.55 e=switch2=ILAB0102.ILE0509.Is119{ILAB0102.ILE0509.net2656 ILAB0102.ILE0509.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net19129 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0509.Ivi7{ILAB0102.ILE0509.net1859 ILAB0102.net19129} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0409.C w=1.6 e=switch=ILAB0102.ILE0409.Is133{ILAB0102.net19129 ILAB0102.ILE0409.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0409.net2746 w=1.7 e=switch_ds=ILAB0102.ILE0409.Is44{ILAB0102.ILE0409.C ILAB0102.ILE0409.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _169_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE0507.net2656 ILAB0102.ILE0507.net0541 }
	 xc_pin xci2_and2 b i [4] pinInv=0 { ILAB0102.ILE0509.net2746 }
	 [0] xc_tree ILAB0102.ILE0507.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0507.net2635 w=0.55 e=switch2=ILAB0102.ILE0507.Is135{ILAB0102.ILE0507.net2656 ILAB0102.ILE0507.net2635} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net16763 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0507.Iho2{ILAB0102.ILE0507.net2635 ILAB0102.net16763} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0509.C w=3.656 e=switch=ILAB0102.ILE0509.Is29{ILAB0102.net16763 ILAB0102.ILE0509.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0509.net2746 w=3.768 e=switch_ds=ILAB0102.ILE0509.Is44{ILAB0102.ILE0509.C ILAB0102.ILE0509.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _168_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0102.ILE0607.net2656 ILAB0102.ILE0607.net0541 }
	 xc_pin xci2_and3 c i [4] pinInv=0 { ILAB0102.ILE0507.net2746 }
	 [0] xc_tree ILAB0102.ILE0607.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0607.net1850 w=0.55 e=switch2=ILAB0102.ILE0607.Is103{ILAB0102.ILE0607.net2656 ILAB0102.ILE0607.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net17102 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0607.Ivi5{ILAB0102.ILE0607.net1850 ILAB0102.net17102} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0507.C w=1.262 e=switch_sd=ILAB0102.ILE0507.Is116{ILAB0102.net17102 ILAB0102.ILE0507.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0507.net2746 w=1.374 e=switch_ds=ILAB0102.ILE0507.Is44{ILAB0102.ILE0507.C ILAB0102.ILE0507.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[18] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0707.net2656 ILAB0102.ILE0707.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0102.ILE0607.net2743 }
	 [0] xc_tree ILAB0102.ILE0707.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0707.net1862 w=0.55 e=switch2=ILAB0102.ILE0707.Is111{ILAB0102.ILE0707.net2656 ILAB0102.ILE0707.net1862} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net25249 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0707.Ivi6{ILAB0102.ILE0707.net1862 ILAB0102.net25249} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0607.B w=1.262 e=switch_sd=ILAB0102.ILE0607.Is122{ILAB0102.net25249 ILAB0102.ILE0607.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0607.net2743 w=1.374 e=switch_ds=ILAB0102.ILE0607.Is43{ILAB0102.ILE0607.B ILAB0102.ILE0607.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _167_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0102.ILE0510.net2656 ILAB0102.ILE0510.net0541 }
	 xc_pin xci2_and2 a i [4] pinInv=0 { ILAB0102.ILE0509.net2749 }
	 [0] xc_tree ILAB0102.ILE0510.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0510.net1838 w=0.55 e=switch2=ILAB0102.ILE0510.Is47{ILAB0102.ILE0510.net2656 ILAB0102.ILE0510.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net19463 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0510.Ihi5{ILAB0102.ILE0510.net1838 ILAB0102.net19463} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0509.A w=1.262 e=switch_sd=ILAB0102.ILE0509.Is24{ILAB0102.net19463 ILAB0102.ILE0509.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0509.net2749 w=1.374 e=switch_ds=ILAB0102.ILE0509.Is41{ILAB0102.ILE0509.A ILAB0102.ILE0509.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[9] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0511.net2656 ILAB0102.ILE0511.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0102.ILE0510.net2743 }
	 [0] xc_tree ILAB0102.ILE0511.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0511.net1844 w=0.55 e=switch2=ILAB0102.ILE0511.Is31{ILAB0102.ILE0511.net2656 ILAB0102.ILE0511.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net16762 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0511.Ihi7{ILAB0102.ILE0511.net1844 ILAB0102.net16762} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0510.B w=1.6 e=switch=ILAB0102.ILE0510.Is11{ILAB0102.net16762 ILAB0102.ILE0510.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0510.net2743 w=1.7 e=switch_ds=ILAB0102.ILE0510.Is43{ILAB0102.ILE0510.B ILAB0102.ILE0510.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _166_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0103.ILE0505.net2656 ILAB0103.ILE0505.net0541 }
	 xc_pin xci2_and3 b i [12] pinInv=0 { ILAB0102.ILE0409.net2743 }
	 [0] xc_tree ILAB0103.ILE0505.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0505.net1844 w=1 e=switch2=ILAB0103.ILE0505.Is31{ILAB0103.ILE0505.net2656 ILAB0103.ILE0505.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net20632 w=1.4 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0505.Ihi7{ILAB0103.ILE0505.net1844 ILAB0103.net20632} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0501.net1844 w=2.4 e=switch2=ILAB0103.ILE0501.Is31{ILAB0103.net20632 ILAB0103.ILE0501.net1844} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree net10423<0> w=2.8 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0501.Ihi7{ILAB0103.ILE0501.net1844 net10423<0>} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0513.net1844 w=3.8 e=switch2=ILAB0102.ILE0513.Is31{net10423<0> ILAB0102.ILE0513.net1844} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0102.net19102 w=4.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0513.Ihi7{ILAB0102.ILE0513.net1844 ILAB0102.net19102} prev=[5] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE0509.net1844 w=5 e=switch2=ILAB0102.ILE0509.Is31{ILAB0102.net19102 ILAB0102.ILE0509.net1844} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.net25447 w=5.3 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0509.Ihi7{ILAB0102.ILE0509.net1844 ILAB0102.net25447} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0509.B w=7.65 e=switch=ILAB0102.ILE0509.Is10{ILAB0102.net25447 ILAB0102.ILE0509.B} prev=[8] elemInv=0 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0102.net19127 w=9.25 e=switch=ILAB0102.ILE0509.Is115{ILAB0102.net19127 ILAB0102.ILE0509.B} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0409.B w=9.762 e=switch_sd=ILAB0102.ILE0409.Is114{ILAB0102.net19127 ILAB0102.ILE0409.B} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0102.ILE0409.net2743 w=9.874 e=switch_ds=ILAB0102.ILE0409.Is43{ILAB0102.ILE0409.B ILAB0102.ILE0409.net2743} prev=[11] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _165_ {
	 xc_pin xci2_and2 y o [-1] pinInv=0 { ILAB0103.ILE0705.net2656 ILAB0103.ILE0705.net0541 }
	 xc_pin xci2_and3 c i [4] pinInv=0 { ILAB0103.ILE0505.net2746 }
	 [0] xc_tree ILAB0103.ILE0705.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0705.net1859 w=0.55 e=switch2=ILAB0103.ILE0705.Is119{ILAB0103.ILE0705.net2656 ILAB0103.ILE0705.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net15844 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0705.Ivi7{ILAB0103.ILE0705.net1859 ILAB0103.net15844} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0505.C w=1.25 e=switch_sd=ILAB0103.ILE0505.Is124{ILAB0103.net15844 ILAB0103.ILE0505.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0505.net2746 w=1.35 e=switch_ds=ILAB0103.ILE0505.Is44{ILAB0103.ILE0505.C ILAB0103.ILE0505.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _164_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0102.ILE0712.net2656 ILAB0102.ILE0712.net0541 }
	 xc_pin xci2_and2 b i [8] pinInv=0 { ILAB0103.ILE0705.net2746 }
	 [0] xc_tree ILAB0102.ILE0712.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0712.net1832 w=1 e=switch2=ILAB0102.ILE0712.Is39{ILAB0102.ILE0712.net2656 ILAB0102.ILE0712.net1832} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net15637 w=1.4 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0712.Ihi6{ILAB0102.ILE0712.net1832 ILAB0102.net15637} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0713.net2685 w=2.25 e=switch2=ILAB0102.ILE0713.Is127{ILAB0102.net15637 ILAB0102.ILE0713.net2685} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree net10415<0> w=2.55 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0713.Iho1{ILAB0102.ILE0713.net2685 net10415<0>} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0103.ILE0701.net2685 w=3.1 e=switch2=ILAB0103.ILE0701.Is127{net10415<0> ILAB0103.ILE0701.net2685} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0103.net20497 w=3.3 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0701.Iho1{ILAB0103.ILE0701.net2685 ILAB0103.net20497} prev=[5] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0103.ILE0705.C w=4.15 e=switch=ILAB0103.ILE0705.Is12{ILAB0103.net20497 ILAB0103.ILE0705.C} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0103.ILE0705.net2746 w=4.25 e=switch_ds=ILAB0103.ILE0705.Is44{ILAB0103.ILE0705.C ILAB0103.ILE0705.net2746} prev=[7] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[17] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0612.net2656 ILAB0102.ILE0612.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0102.ILE0712.net2743 }
	 [0] xc_tree ILAB0102.ILE0612.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0612.net2670 w=0.55 e=switch2=ILAB0102.ILE0612.Is7{ILAB0102.ILE0612.net2656 ILAB0102.ILE0612.net2670} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net19935 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0612.Ivo3{ILAB0102.ILE0612.net2670 ILAB0102.net19935} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0712.B w=1.262 e=switch_sd=ILAB0102.ILE0712.Is106{ILAB0102.net19935 ILAB0102.ILE0712.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0712.net2743 w=1.374 e=switch_ds=ILAB0102.ILE0712.Is43{ILAB0102.ILE0712.B ILAB0102.ILE0712.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _163_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0103.ILE0805.net2656 ILAB0103.ILE0805.net0541 }
	 xc_pin xci2_and2 a i [4] pinInv=0 { ILAB0103.ILE0705.net2749 }
	 [0] xc_tree ILAB0103.ILE0805.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0805.net1859 w=0.55 e=switch2=ILAB0103.ILE0805.Is119{ILAB0103.ILE0805.net2656 ILAB0103.ILE0805.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net17374 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0805.Ivi7{ILAB0103.ILE0805.net1859 ILAB0103.net17374} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0705.A w=1.6 e=switch=ILAB0103.ILE0705.Is129{ILAB0103.net17374 ILAB0103.ILE0705.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0705.net2749 w=1.7 e=switch_ds=ILAB0103.ILE0705.Is41{ILAB0103.ILE0705.A ILAB0103.ILE0705.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[3] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0103.ILE0804.net2656 ILAB0103.ILE0804.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0103.ILE0805.net2743 }
	 [0] xc_tree ILAB0103.ILE0804.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0804.net2650 w=0.55 e=switch2=ILAB0103.ILE0804.Is143{ILAB0103.ILE0804.net2656 ILAB0103.ILE0804.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net25584 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0804.Iho3{ILAB0103.ILE0804.net2650 ILAB0103.net25584} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0805.B w=1.25 e=switch_sd=ILAB0103.ILE0805.Is34{ILAB0103.net25584 ILAB0103.ILE0805.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0805.net2743 w=1.35 e=switch_ds=ILAB0103.ILE0805.Is43{ILAB0103.ILE0805.B ILAB0103.ILE0805.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _162_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0103.ILE0504.net2656 ILAB0103.ILE0504.net0541 }
	 xc_pin xci2_and3 b i [4] pinInv=0 { ILAB0103.ILE0505.net2743 }
	 [0] xc_tree ILAB0103.ILE0504.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0504.net2650 w=0.55 e=switch2=ILAB0103.ILE0504.Is143{ILAB0103.ILE0504.net2656 ILAB0103.ILE0504.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net24999 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0504.Iho3{ILAB0103.ILE0504.net2650 ILAB0103.net24999} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0505.B w=1.25 e=switch_sd=ILAB0103.ILE0505.Is34{ILAB0103.net24999 ILAB0103.ILE0505.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0505.net2743 w=1.35 e=switch_ds=ILAB0103.ILE0505.Is43{ILAB0103.ILE0505.B ILAB0103.ILE0505.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[7] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0103.ILE0404.net2656 ILAB0103.ILE0404.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0103.ILE0504.net2743 }
	 [0] xc_tree ILAB0103.ILE0404.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0404.net1862 w=0.55 e=switch2=ILAB0103.ILE0404.Is111{ILAB0103.ILE0404.net2656 ILAB0103.ILE0404.net1862} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree Fast_out_29<4> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0404.Ivi6{ILAB0103.ILE0404.net1862 Fast_out_29<4>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0504.B w=1.612 e=switch=ILAB0103.ILE0504.Is130{Fast_out_29<4> ILAB0103.ILE0504.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0504.net2743 w=1.724 e=switch_ds=ILAB0103.ILE0504.Is43{ILAB0103.ILE0504.B ILAB0103.ILE0504.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _161_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE0407.net2656 ILAB0102.ILE0407.net0541 }
	 xc_pin xci2_and3 a i [4] pinInv=0 { ILAB0102.ILE0409.net2749 }
	 [0] xc_tree ILAB0102.ILE0407.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0407.net2685 w=0.55 e=switch2=ILAB0102.ILE0407.Is127{ILAB0102.ILE0407.net2656 ILAB0102.ILE0407.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net16672 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0407.Iho1{ILAB0102.ILE0407.net2685 ILAB0102.net16672} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0409.A w=1.25 e=switch_sd=ILAB0102.ILE0409.Is16{ILAB0102.net16672 ILAB0102.ILE0409.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0409.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0409.Is41{ILAB0102.ILE0409.A ILAB0102.ILE0409.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _160_ {
	 xc_pin xci2_and2 y o [-1] pinInv=0 { ILAB0102.ILE0411.net2656 ILAB0102.ILE0411.net0541 }
	 xc_pin xci2_and3 c i [6] pinInv=0 { ILAB0102.ILE0407.net2746 }
	 [0] xc_tree ILAB0102.ILE0411.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0411.net1838 w=0.85 e=switch2=ILAB0102.ILE0411.Is47{ILAB0102.ILE0411.net2656 ILAB0102.ILE0411.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net18383 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0411.Ihi5{ILAB0102.ILE0411.net1838 ILAB0102.net18383} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0409.net1832 w=1.7 e=switch2=ILAB0102.ILE0409.Is39{ILAB0102.net18383 ILAB0102.ILE0409.net1832} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net18112 w=1.9 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0409.Ihi6{ILAB0102.ILE0409.net1832 ILAB0102.net18112} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0407.C w=2.412 e=switch_sd=ILAB0102.ILE0407.Is21{ILAB0102.net18112 ILAB0102.ILE0407.C} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0102.ILE0407.net2746 w=2.524 e=switch_ds=ILAB0102.ILE0407.Is44{ILAB0102.ILE0407.C ILAB0102.ILE0407.net2746} prev=[5] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _159_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0102.ILE0410.net2656 ILAB0102.ILE0410.net0541 }
	 xc_pin xci2_and2 b i [4] pinInv=0 { ILAB0102.ILE0411.net2746 }
	 [0] xc_tree ILAB0102.ILE0410.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0410.net2650 w=0.55 e=switch2=ILAB0102.ILE0410.Is143{ILAB0102.ILE0410.net2656 ILAB0102.ILE0410.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net23874 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0410.Iho3{ILAB0102.ILE0410.net2650 ILAB0102.net23874} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0411.C w=1.25 e=switch_sd=ILAB0102.ILE0411.Is36{ILAB0102.net23874 ILAB0102.ILE0411.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0411.net2746 w=1.35 e=switch_ds=ILAB0102.ILE0411.Is44{ILAB0102.ILE0411.C ILAB0102.ILE0411.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[16] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0310.net2656 ILAB0102.ILE0310.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0102.ILE0410.net2743 }
	 [0] xc_tree ILAB0102.ILE0310.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0310.net2670 w=0.55 e=switch2=ILAB0102.ILE0310.Is7{ILAB0102.ILE0310.net2656 ILAB0102.ILE0310.net2670} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net23895 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0310.Ivo3{ILAB0102.ILE0310.net2670 ILAB0102.net23895} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0410.B w=1.262 e=switch_sd=ILAB0102.ILE0410.Is106{ILAB0102.net23895 ILAB0102.ILE0410.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0410.net2743 w=1.374 e=switch_ds=ILAB0102.ILE0410.Is43{ILAB0102.ILE0410.B ILAB0102.ILE0410.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _158_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0102.ILE0414.net2656 ILAB0102.ILE0414.net0541 }
	 xc_pin xci2_and2 a i [4] pinInv=0 { ILAB0102.ILE0413.net2749 }
	 [0] xc_tree ILAB0102.ILE0414.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0414.net1838 w=0.55 e=switch2=ILAB0102.ILE0414.Is47{ILAB0102.ILE0414.net2656 ILAB0102.ILE0414.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net19013 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0414.Ihi5{ILAB0102.ILE0414.net1838 ILAB0102.net19013} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0413.A w=1.262 e=switch_sd=ILAB0102.ILE0413.Is24{ILAB0102.net19013 ILAB0102.ILE0413.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0413.net2749 w=1.374 e=switch_ds=ILAB0102.ILE0413.Is41{ILAB0102.ILE0413.A ILAB0102.ILE0413.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[23] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0514.net2656 ILAB0102.ILE0514.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0102.ILE0414.net2743 }
	 [0] xc_tree ILAB0102.ILE0514.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0514.net1859 w=0.55 e=switch2=ILAB0102.ILE0514.Is119{ILAB0102.ILE0514.net2656 ILAB0102.ILE0514.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net19804 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0514.Ivi7{ILAB0102.ILE0514.net1859 ILAB0102.net19804} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0414.B w=1.6 e=switch=ILAB0102.ILE0414.Is131{ILAB0102.net19804 ILAB0102.ILE0414.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0414.net2743 w=1.7 e=switch_ds=ILAB0102.ILE0414.Is43{ILAB0102.ILE0414.B ILAB0102.ILE0414.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _157_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0103.ILE0302.net2656 ILAB0103.ILE0302.net0541 }
	 xc_pin xci2_and3 a i [4] pinInv=0 { ILAB0102.ILE0315.net2749 }
	 [0] xc_tree ILAB0103.ILE0302.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0302.net1844 w=0.55 e=switch2=ILAB0103.ILE0302.Is31{ILAB0103.ILE0302.net2656 ILAB0103.ILE0302.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net10431<1> w=0.846 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0302.Ihi7{ILAB0103.ILE0302.net1844 net10431<1>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0315.A w=1.358 e=switch_sd=ILAB0102.ILE0315.Is17{net10431<1> ILAB0102.ILE0315.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0315.net2749 w=1.47 e=switch_ds=ILAB0102.ILE0315.Is41{ILAB0102.ILE0315.A ILAB0102.ILE0315.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[20] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0103.ILE0303.net2656 ILAB0103.ILE0303.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0103.ILE0302.net2743 }
	 [0] xc_tree ILAB0103.ILE0303.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0303.net1844 w=0.55 e=switch2=ILAB0103.ILE0303.Is31{ILAB0103.ILE0303.net2656 ILAB0103.ILE0303.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net10431<3> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0303.Ihi7{ILAB0103.ILE0303.net1844 net10431<3>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0302.B w=1.696 e=switch=ILAB0103.ILE0302.Is11{net10431<3> ILAB0103.ILE0302.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0302.net2743 w=1.808 e=switch_ds=ILAB0103.ILE0302.Is43{ILAB0103.ILE0302.B ILAB0103.ILE0302.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _156_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0102.ILE0304.net2656 ILAB0102.ILE0304.net0541 }
	 xc_pin xci2_and2 a i [6] pinInv=0 { ILAB0102.ILE0311.net2749 }
	 [0] xc_tree ILAB0102.ILE0304.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0304.net2685 w=0.85 e=switch2=ILAB0102.ILE0304.Is127{ILAB0102.ILE0304.net2656 ILAB0102.ILE0304.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net16132 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0304.Iho1{ILAB0102.ILE0304.net2685 ILAB0102.net16132} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0308.net2685 w=1.7 e=switch2=ILAB0102.ILE0308.Is127{ILAB0102.net16132 ILAB0102.ILE0308.net2685} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net15367 w=1.9 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0308.Iho1{ILAB0102.ILE0308.net2685 ILAB0102.net15367} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0311.A w=2.75 e=switch=ILAB0102.ILE0311.Is9{ILAB0102.net15367 ILAB0102.ILE0311.A} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0102.ILE0311.net2749 w=2.85 e=switch_ds=ILAB0102.ILE0311.Is41{ILAB0102.ILE0311.A ILAB0102.ILE0311.net2749} prev=[5] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[10] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0204.net2656 ILAB0102.ILE0204.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0102.ILE0304.net2743 }
	 [0] xc_tree ILAB0102.ILE0204.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0204.net2660 w=0.55 e=switch2=ILAB0102.ILE0204.Is23{ILAB0102.ILE0204.net2656 ILAB0102.ILE0204.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net26014 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0204.Ivo1{ILAB0102.ILE0204.net2660 ILAB0102.net26014} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0304.B w=1.25 e=switch_sd=ILAB0102.ILE0304.Is123{ILAB0102.net26014 ILAB0102.ILE0304.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0304.net2743 w=1.35 e=switch_ds=ILAB0102.ILE0304.Is43{ILAB0102.ILE0304.B ILAB0102.ILE0304.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _155_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0102.ILE0502.net2656 ILAB0102.ILE0502.net0541 }
	 xc_pin xci2_and3 b i [6] pinInv=0 { ILAB0102.ILE0507.net2743 }
	 [0] xc_tree ILAB0102.ILE0502.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0502.net2685 w=0.85 e=switch2=ILAB0102.ILE0502.Is127{ILAB0102.ILE0502.net2656 ILAB0102.ILE0502.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net26257 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0502.Iho1{ILAB0102.ILE0502.net2685 ILAB0102.net26257} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0505.net2635 w=1.7 e=switch2=ILAB0102.ILE0505.Is135{ILAB0102.net26257 ILAB0102.ILE0505.net2635} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net25448 w=1.9 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0505.Iho2{ILAB0102.ILE0505.net2635 ILAB0102.net25448} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0507.B w=2.846 e=switch=ILAB0102.ILE0507.Is27{ILAB0102.net25448 ILAB0102.ILE0507.B} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0102.ILE0507.net2743 w=2.958 e=switch_ds=ILAB0102.ILE0507.Is43{ILAB0102.ILE0507.B ILAB0102.ILE0507.net2743} prev=[5] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[11] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0501.net2656 ILAB0102.ILE0501.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0102.ILE0502.net2743 }
	 [0] xc_tree ILAB0102.ILE0501.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0501.net2650 w=0.55 e=switch2=ILAB0102.ILE0501.Is143{ILAB0102.ILE0501.net2656 ILAB0102.ILE0501.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net20634 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0501.Iho3{ILAB0102.ILE0501.net2650 ILAB0102.net20634} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0502.B w=1.25 e=switch_sd=ILAB0102.ILE0502.Is34{ILAB0102.net20634 ILAB0102.ILE0502.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0502.net2743 w=1.35 e=switch_ds=ILAB0102.ILE0502.Is43{ILAB0102.ILE0502.B ILAB0102.ILE0502.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _154_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0102.ILE0402.net2656 ILAB0102.ILE0402.net0541 }
	 xc_pin xci2_and3 b i [6] pinInv=0 { ILAB0102.ILE0407.net2743 }
	 [0] xc_tree ILAB0102.ILE0402.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0402.net1832 w=0.85 e=switch2=ILAB0102.ILE0402.Is39{ILAB0102.ILE0402.net2656 ILAB0102.ILE0402.net1832} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net17222<3> w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0402.Ihi6{ILAB0102.ILE0402.net1832 net17222<3>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0403.net2685 w=1.7 e=switch2=ILAB0102.ILE0403.Is127{net17222<3> ILAB0102.ILE0403.net2685} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net20182 w=1.9 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0403.Iho1{ILAB0102.ILE0403.net2685 ILAB0102.net20182} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0407.B w=2.75 e=switch=ILAB0102.ILE0407.Is10{ILAB0102.net20182 ILAB0102.ILE0407.B} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0102.ILE0407.net2743 w=2.85 e=switch_ds=ILAB0102.ILE0407.Is43{ILAB0102.ILE0407.B ILAB0102.ILE0407.net2743} prev=[5] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[12] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0401.net2656 ILAB0102.ILE0401.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0102.ILE0402.net2743 }
	 [0] xc_tree ILAB0102.ILE0401.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0401.net2650 w=0.55 e=switch2=ILAB0102.ILE0401.Is143{ILAB0102.ILE0401.net2656 ILAB0102.ILE0401.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net20724 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0401.Iho3{ILAB0102.ILE0401.net2650 ILAB0102.net20724} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0402.B w=1.25 e=switch_sd=ILAB0102.ILE0402.Is34{ILAB0102.net20724 ILAB0102.ILE0402.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0402.net2743 w=1.35 e=switch_ds=ILAB0102.ILE0402.Is43{ILAB0102.ILE0402.B ILAB0102.ILE0402.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _153_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0103.ILE0605.net2656 ILAB0103.ILE0605.net0541 }
	 xc_pin xci2_and3 a i [4] pinInv=0 { ILAB0103.ILE0505.net2749 }
	 [0] xc_tree ILAB0103.ILE0605.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0605.net1859 w=0.55 e=switch2=ILAB0103.ILE0605.Is119{ILAB0103.ILE0605.net2656 ILAB0103.ILE0605.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net15799 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0605.Ivi7{ILAB0103.ILE0605.net1859 ILAB0103.net15799} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0505.A w=1.6 e=switch=ILAB0103.ILE0505.Is129{ILAB0103.net15799 ILAB0103.ILE0505.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0505.net2749 w=1.7 e=switch_ds=ILAB0103.ILE0505.Is41{ILAB0103.ILE0505.A ILAB0103.ILE0505.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[6] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0103.ILE0604.net2656 ILAB0103.ILE0604.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0103.ILE0605.net2743 }
	 [0] xc_tree ILAB0103.ILE0604.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0604.net2650 w=0.55 e=switch2=ILAB0103.ILE0604.Is143{ILAB0103.ILE0604.net2656 ILAB0103.ILE0604.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net25989 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0604.Iho3{ILAB0103.ILE0604.net2650 ILAB0103.net25989} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0605.B w=1.25 e=switch_sd=ILAB0103.ILE0605.Is34{ILAB0103.net25989 ILAB0103.ILE0605.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0605.net2743 w=1.35 e=switch_ds=ILAB0103.ILE0605.Is43{ILAB0103.ILE0605.B ILAB0103.ILE0605.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _152_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0103.ILE0402.net2656 ILAB0103.ILE0402.net0541 }
	 xc_pin xci2_and2 a i [6] pinInv=0 { ILAB0102.ILE0411.net2749 }
	 [0] xc_tree ILAB0103.ILE0402.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0402.net1844 w=0.85 e=switch2=ILAB0103.ILE0402.Is31{ILAB0103.ILE0402.net2656 ILAB0103.ILE0402.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net10427<1> w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0402.Ihi7{ILAB0103.ILE0402.net1844 net10427<1>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0414.net1844 w=1.7 e=switch2=ILAB0102.ILE0414.Is31{net10427<1> ILAB0102.ILE0414.net1844} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net23872 w=1.9 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0414.Ihi7{ILAB0102.ILE0414.net1844 ILAB0102.net23872} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0411.A w=2.4 e=switch_sd=ILAB0102.ILE0411.Is17{ILAB0102.net23872 ILAB0102.ILE0411.A} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0102.ILE0411.net2749 w=2.5 e=switch_ds=ILAB0102.ILE0411.Is41{ILAB0102.ILE0411.A ILAB0102.ILE0411.net2749} prev=[5] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[5] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0103.ILE0403.net2656 ILAB0103.ILE0403.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0103.ILE0402.net2743 }
	 [0] xc_tree ILAB0103.ILE0403.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0403.net1844 w=0.55 e=switch2=ILAB0103.ILE0403.Is31{ILAB0103.ILE0403.net2656 ILAB0103.ILE0403.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net10427<3> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0403.Ihi7{ILAB0103.ILE0403.net1844 net10427<3>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0402.B w=1.6 e=switch=ILAB0103.ILE0402.Is11{net10427<3> ILAB0103.ILE0402.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0402.net2743 w=1.7 e=switch_ds=ILAB0103.ILE0402.Is43{ILAB0103.ILE0402.B ILAB0103.ILE0402.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _151_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0102.ILE0405.net2656 ILAB0102.ILE0405.net0541 }
	 xc_pin xci2_and3 a i [4] pinInv=0 { ILAB0102.ILE0407.net2749 }
	 [0] xc_tree ILAB0102.ILE0405.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0405.net2635 w=0.55 e=switch2=ILAB0102.ILE0405.Is135{ILAB0102.ILE0405.net2656 ILAB0102.ILE0405.net2635} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net17753 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0405.Iho2{ILAB0102.ILE0405.net2635 ILAB0102.net17753} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0407.A w=1.612 e=switch=ILAB0102.ILE0407.Is25{ILAB0102.net17753 ILAB0102.ILE0407.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0407.net2749 w=1.724 e=switch_ds=ILAB0102.ILE0407.Is41{ILAB0102.ILE0407.A ILAB0102.ILE0407.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[13] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0305.net2656 ILAB0102.ILE0305.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0102.ILE0405.net2743 }
	 [0] xc_tree ILAB0102.ILE0305.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0305.net2660 w=0.55 e=switch2=ILAB0102.ILE0305.Is23{ILAB0102.ILE0305.net2656 ILAB0102.ILE0305.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net15844 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0305.Ivo1{ILAB0102.ILE0305.net2660 ILAB0102.net15844} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0405.B w=1.25 e=switch_sd=ILAB0102.ILE0405.Is123{ILAB0102.net15844 ILAB0102.ILE0405.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0405.net2743 w=1.35 e=switch_ds=ILAB0102.ILE0405.Is43{ILAB0102.ILE0405.B ILAB0102.ILE0405.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _150_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0102.ILE0506.net2656 ILAB0102.ILE0506.net0541 }
	 xc_pin xci2_and3 a i [4] pinInv=0 { ILAB0102.ILE0507.net2749 }
	 [0] xc_tree ILAB0102.ILE0506.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0506.net2650 w=0.55 e=switch2=ILAB0102.ILE0506.Is143{ILAB0102.ILE0506.net2656 ILAB0102.ILE0506.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net18744 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0506.Iho3{ILAB0102.ILE0506.net2650 ILAB0102.net18744} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0507.A w=1.25 e=switch_sd=ILAB0102.ILE0507.Is32{ILAB0102.net18744 ILAB0102.ILE0507.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0507.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0507.Is41{ILAB0102.ILE0507.A ILAB0102.ILE0507.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[14] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0406.net2656 ILAB0102.ILE0406.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0102.ILE0506.net2743 }
	 [0] xc_tree ILAB0102.ILE0406.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0406.net1862 w=0.55 e=switch2=ILAB0102.ILE0406.Is111{ILAB0102.ILE0406.net2656 ILAB0102.ILE0406.net1862} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree Fast_out_28<2> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0406.Ivi6{ILAB0102.ILE0406.net1862 Fast_out_28<2>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0506.B w=1.612 e=switch=ILAB0102.ILE0506.Is130{Fast_out_28<2> ILAB0102.ILE0506.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0506.net2743 w=1.724 e=switch_ds=ILAB0102.ILE0506.Is43{ILAB0102.ILE0506.B ILAB0102.ILE0506.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _149_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0102.ILE0203.net2656 ILAB0102.ILE0203.net0541 }
	 xc_pin xci2_and2 a i [8] pinInv=0 { ILAB0102.ILE0215.net2749 }
	 [0] xc_tree ILAB0102.ILE0203.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0203.net2685 w=1 e=switch2=ILAB0102.ILE0203.Is127{ILAB0102.ILE0203.net2656 ILAB0102.ILE0203.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net23827 w=1.4 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0203.Iho1{ILAB0102.ILE0203.net2685 ILAB0102.net23827} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0207.net2685 w=2.25 e=switch2=ILAB0102.ILE0207.Is127{ILAB0102.net23827 ILAB0102.ILE0207.net2685} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net16852 w=2.55 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0207.Iho1{ILAB0102.ILE0207.net2685 ILAB0102.net16852} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0211.net2685 w=3.1 e=switch2=ILAB0102.ILE0211.Is127{ILAB0102.net16852 ILAB0102.ILE0211.net2685} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0102.net23287 w=3.3 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0211.Iho1{ILAB0102.ILE0211.net2685 ILAB0102.net23287} prev=[5] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE0215.A w=4.15 e=switch=ILAB0102.ILE0215.Is8{ILAB0102.net23287 ILAB0102.ILE0215.A} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0215.net2749 w=4.25 e=switch_ds=ILAB0102.ILE0215.Is41{ILAB0102.ILE0215.A ILAB0102.ILE0215.net2749} prev=[7] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[0] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0202.net2656 ILAB0102.ILE0202.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0102.ILE0203.net2743 }
	 [0] xc_tree ILAB0102.ILE0202.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0202.net2650 w=0.55 e=switch2=ILAB0102.ILE0202.Is143{ILAB0102.ILE0202.net2656 ILAB0102.ILE0202.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net26754 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0202.Iho3{ILAB0102.ILE0202.net2650 ILAB0102.net26754} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0203.B w=1.25 e=switch_sd=ILAB0102.ILE0203.Is34{ILAB0102.net26754 ILAB0102.ILE0203.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0203.net2743 w=1.35 e=switch_ds=ILAB0102.ILE0203.Is43{ILAB0102.ILE0203.B ILAB0102.ILE0203.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _148_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0102.ILE0416.net2656 ILAB0102.ILE0416.net0541 }
	 xc_pin xci2_and3 b i [6] pinInv=0 { ILAB0102.ILE0412.net2743 }
	 [0] xc_tree ILAB0102.ILE0416.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0416.net1838 w=0.85 e=switch2=ILAB0102.ILE0416.Is47{ILAB0102.ILE0416.net2656 ILAB0102.ILE0416.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net19238 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0416.Ihi5{ILAB0102.ILE0416.net1838 ILAB0102.net19238} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0414.net1832 w=1.7 e=switch2=ILAB0102.ILE0414.Is39{ILAB0102.net19238 ILAB0102.ILE0414.net1832} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net19867 w=1.9 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0414.Ihi6{ILAB0102.ILE0414.net1832 ILAB0102.net19867} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0412.B w=2.412 e=switch_sd=ILAB0102.ILE0412.Is19{ILAB0102.net19867 ILAB0102.ILE0412.B} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0102.ILE0412.net2743 w=2.524 e=switch_ds=ILAB0102.ILE0412.Is43{ILAB0102.ILE0412.B ILAB0102.ILE0412.net2743} prev=[5] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[2] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0516.net2656 ILAB0102.ILE0516.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0102.ILE0416.net2743 }
	 [0] xc_tree ILAB0102.ILE0516.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0516.net1859 w=0.55 e=switch2=ILAB0102.ILE0516.Is119{ILAB0102.ILE0516.net2656 ILAB0102.ILE0516.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net17014 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0516.Ivi7{ILAB0102.ILE0516.net1859 ILAB0102.net17014} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0416.B w=1.6 e=switch=ILAB0102.ILE0416.Is131{ILAB0102.net17014 ILAB0102.ILE0416.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0416.net2743 w=1.7 e=switch_ds=ILAB0102.ILE0416.Is43{ILAB0102.ILE0416.B ILAB0102.ILE0416.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _147_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0102.ILE0616.net2656 ILAB0102.ILE0616.net0541 }
	 xc_pin xci2_and3 a i [4] pinInv=0 { ILAB0102.ILE0614.net2749 }
	 [0] xc_tree ILAB0102.ILE0616.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0616.net1844 w=0.55 e=switch2=ILAB0102.ILE0616.Is31{ILAB0102.ILE0616.net2656 ILAB0102.ILE0616.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net19687 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0616.Ihi7{ILAB0102.ILE0616.net1844 ILAB0102.net19687} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0614.A w=1.25 e=switch_sd=ILAB0102.ILE0614.Is16{ILAB0102.net19687 ILAB0102.ILE0614.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0614.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0614.Is41{ILAB0102.ILE0614.A ILAB0102.ILE0614.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[22] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0716.net2656 ILAB0102.ILE0716.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0102.ILE0616.net2743 }
	 [0] xc_tree ILAB0102.ILE0716.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0716.net1859 w=0.55 e=switch2=ILAB0102.ILE0716.Is119{ILAB0102.ILE0716.net2656 ILAB0102.ILE0716.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net19309 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0716.Ivi7{ILAB0102.ILE0716.net1859 ILAB0102.net19309} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0616.B w=1.6 e=switch=ILAB0102.ILE0616.Is131{ILAB0102.net19309 ILAB0102.ILE0616.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0616.net2743 w=1.7 e=switch_ds=ILAB0102.ILE0616.Is43{ILAB0102.ILE0616.B ILAB0102.ILE0616.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _146_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0102.ILE0408.net2656 ILAB0102.ILE0408.net0541 }
	 xc_pin xci2_and3 a i [4] pinInv=0 { ILAB0102.ILE0412.net2749 }
	 [0] xc_tree ILAB0102.ILE0408.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0408.net2685 w=0.55 e=switch2=ILAB0102.ILE0408.Is127{ILAB0102.ILE0408.net2656 ILAB0102.ILE0408.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net19417 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0408.Iho1{ILAB0102.ILE0408.net2685 ILAB0102.net19417} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0412.A w=1.6 e=switch=ILAB0102.ILE0412.Is8{ILAB0102.net19417 ILAB0102.ILE0412.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0412.net2749 w=1.7 e=switch_ds=ILAB0102.ILE0412.Is41{ILAB0102.ILE0412.A ILAB0102.ILE0412.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_prev[15] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0308.net2656 ILAB0102.ILE0308.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0102.ILE0408.net2743 }
	 [0] xc_tree ILAB0102.ILE0308.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0308.net2660 w=0.55 e=switch2=ILAB0102.ILE0308.Is23{ILAB0102.ILE0308.net2656 ILAB0102.ILE0308.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net21064 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0308.Ivo1{ILAB0102.ILE0308.net2660 ILAB0102.net21064} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0408.B w=1.25 e=switch_sd=ILAB0102.ILE0408.Is123{ILAB0102.net21064 ILAB0102.ILE0408.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0408.net2743 w=1.35 e=switch_ds=ILAB0102.ILE0408.Is43{ILAB0102.ILE0408.B ILAB0102.ILE0408.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _060_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0302.ILE1601.net2656 ILAB0302.ILE1601.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0302.ILE1501.net2749 }
	 [0] xc_tree ILAB0302.ILE1601.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0302.ILE1601.net1862 w=0.55 e=switch2=ILAB0302.ILE1601.Is111{ILAB0302.ILE1601.net2656 ILAB0302.ILE1601.net1862} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net11344<0> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0302.ILE1601.Ivi6{ILAB0302.ILE1601.net1862 net11344<0>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0302.ILE1501.A w=1.262 e=switch_sd=ILAB0302.ILE1501.Is120{net11344<0> ILAB0302.ILE1501.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0302.ILE1501.net2749 w=1.374 e=switch_ds=ILAB0302.ILE1501.Is41{ILAB0302.ILE1501.A ILAB0302.ILE1501.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _059_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0102.ILE0812.net2656 ILAB0102.ILE0812.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE0813.net2749 }
	 [0] xc_tree ILAB0102.ILE0812.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0812.net2650 w=0.55 e=switch2=ILAB0102.ILE0812.Is143{ILAB0102.ILE0812.net2656 ILAB0102.ILE0812.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net18654 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0812.Iho3{ILAB0102.ILE0812.net2650 ILAB0102.net18654} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0813.A w=1.25 e=switch_sd=ILAB0102.ILE0813.Is32{ILAB0102.net18654 ILAB0102.ILE0813.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0813.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0813.Is41{ILAB0102.ILE0813.A ILAB0102.ILE0813.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _058_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0102.ILE1215.net2656 ILAB0102.ILE1215.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE1216.net2749 }
	 [0] xc_tree ILAB0102.ILE1215.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1215.net2650 w=0.55 e=switch2=ILAB0102.ILE1215.Is143{ILAB0102.ILE1215.net2656 ILAB0102.ILE1215.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net24414 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1215.Iho3{ILAB0102.ILE1215.net2650 ILAB0102.net24414} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1216.A w=1.25 e=switch_sd=ILAB0102.ILE1216.Is32{ILAB0102.net24414 ILAB0102.ILE1216.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1216.net2749 w=1.35 e=switch_ds=ILAB0102.ILE1216.Is41{ILAB0102.ILE1216.A ILAB0102.ILE1216.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _057_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0103.ILE1102.net2656 ILAB0103.ILE1102.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0103.ILE1103.net2749 }
	 [0] xc_tree ILAB0103.ILE1102.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE1102.net2650 w=0.55 e=switch2=ILAB0103.ILE1102.Is143{ILAB0103.ILE1102.net2656 ILAB0103.ILE1102.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net26664 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1102.Iho3{ILAB0103.ILE1102.net2650 ILAB0103.net26664} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE1103.A w=1.25 e=switch_sd=ILAB0103.ILE1103.Is32{ILAB0103.net26664 ILAB0103.ILE1103.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE1103.net2749 w=1.35 e=switch_ds=ILAB0103.ILE1103.Is41{ILAB0103.ILE1103.A ILAB0103.ILE1103.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _056_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0103.ILE1203.net2656 ILAB0103.ILE1203.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0103.ILE1204.net2749 }
	 [0] xc_tree ILAB0103.ILE1203.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE1203.net2650 w=0.55 e=switch2=ILAB0103.ILE1203.Is143{ILAB0103.ILE1203.net2656 ILAB0103.ILE1203.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net15594 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1203.Iho3{ILAB0103.ILE1203.net2650 ILAB0103.net15594} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE1204.A w=1.25 e=switch_sd=ILAB0103.ILE1204.Is32{ILAB0103.net15594 ILAB0103.ILE1204.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE1204.net2749 w=1.35 e=switch_ds=ILAB0103.ILE1204.Is41{ILAB0103.ILE1204.A ILAB0103.ILE1204.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _055_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0102.ILE1312.net2656 ILAB0102.ILE1312.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE1212.net2749 }
	 [0] xc_tree ILAB0102.ILE1312.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1312.net1859 w=0.55 e=switch2=ILAB0102.ILE1312.Is119{ILAB0102.ILE1312.net2656 ILAB0102.ILE1312.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net21244 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1312.Ivi7{ILAB0102.ILE1312.net1859 ILAB0102.net21244} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1212.A w=1.6 e=switch=ILAB0102.ILE1212.Is129{ILAB0102.net21244 ILAB0102.ILE1212.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1212.net2749 w=1.7 e=switch_ds=ILAB0102.ILE1212.Is41{ILAB0102.ILE1212.A ILAB0102.ILE1212.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _054_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0102.ILE1306.net2656 ILAB0102.ILE1306.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE1307.net2749 }
	 [0] xc_tree ILAB0102.ILE1306.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1306.net2650 w=0.55 e=switch2=ILAB0102.ILE1306.Is143{ILAB0102.ILE1306.net2656 ILAB0102.ILE1306.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net18699 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1306.Iho3{ILAB0102.ILE1306.net2650 ILAB0102.net18699} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1307.A w=1.25 e=switch_sd=ILAB0102.ILE1307.Is32{ILAB0102.net18699 ILAB0102.ILE1307.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1307.net2749 w=1.35 e=switch_ds=ILAB0102.ILE1307.Is41{ILAB0102.ILE1307.A ILAB0102.ILE1307.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _053_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0102.ILE1011.net2656 ILAB0102.ILE1011.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE1012.net2749 }
	 [0] xc_tree ILAB0102.ILE1011.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1011.net2650 w=0.55 e=switch2=ILAB0102.ILE1011.Is143{ILAB0102.ILE1011.net2656 ILAB0102.ILE1011.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net22659 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1011.Iho3{ILAB0102.ILE1011.net2650 ILAB0102.net22659} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1012.A w=1.25 e=switch_sd=ILAB0102.ILE1012.Is32{ILAB0102.net22659 ILAB0102.ILE1012.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1012.net2749 w=1.35 e=switch_ds=ILAB0102.ILE1012.Is41{ILAB0102.ILE1012.A ILAB0102.ILE1012.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _052_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0102.ILE0710.net2656 ILAB0102.ILE0710.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE0610.net2749 }
	 [0] xc_tree ILAB0102.ILE0710.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0710.net1859 w=0.55 e=switch2=ILAB0102.ILE0710.Is119{ILAB0102.ILE0710.net2656 ILAB0102.ILE0710.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net24169 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0710.Ivi7{ILAB0102.ILE0710.net1859 ILAB0102.net24169} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0610.A w=1.6 e=switch=ILAB0102.ILE0610.Is129{ILAB0102.net24169 ILAB0102.ILE0610.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0610.net2749 w=1.7 e=switch_ds=ILAB0102.ILE0610.Is41{ILAB0102.ILE0610.A ILAB0102.ILE0610.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _051_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0102.ILE0608.net2656 ILAB0102.ILE0608.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE0508.net2749 }
	 [0] xc_tree ILAB0102.ILE0608.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0608.net1850 w=0.55 e=switch2=ILAB0102.ILE0608.Is103{ILAB0102.ILE0608.net2656 ILAB0102.ILE0608.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net19622 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0608.Ivi5{ILAB0102.ILE0608.net1850 ILAB0102.net19622} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0508.A w=1.262 e=switch_sd=ILAB0102.ILE0508.Is112{ILAB0102.net19622 ILAB0102.ILE0508.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0508.net2749 w=1.374 e=switch_ds=ILAB0102.ILE0508.Is41{ILAB0102.ILE0508.A ILAB0102.ILE0508.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _050_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0102.ILE0706.net2656 ILAB0102.ILE0706.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE0606.net2749 }
	 [0] xc_tree ILAB0102.ILE0706.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0706.net1859 w=0.55 e=switch2=ILAB0102.ILE0706.Is119{ILAB0102.ILE0706.net2656 ILAB0102.ILE0706.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net16069 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0706.Ivi7{ILAB0102.ILE0706.net1859 ILAB0102.net16069} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0606.A w=1.6 e=switch=ILAB0102.ILE0606.Is129{ILAB0102.net16069 ILAB0102.ILE0606.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0606.net2749 w=1.7 e=switch_ds=ILAB0102.ILE0606.Is41{ILAB0102.ILE0606.A ILAB0102.ILE0606.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _049_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0102.ILE0604.net2656 ILAB0102.ILE0604.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE0605.net2749 }
	 [0] xc_tree ILAB0102.ILE0604.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0604.net2650 w=0.55 e=switch2=ILAB0102.ILE0604.Is143{ILAB0102.ILE0604.net2656 ILAB0102.ILE0604.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net25989 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0604.Iho3{ILAB0102.ILE0604.net2650 ILAB0102.net25989} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0605.A w=1.25 e=switch_sd=ILAB0102.ILE0605.Is32{ILAB0102.net25989 ILAB0102.ILE0605.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0605.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0605.Is41{ILAB0102.ILE0605.A ILAB0102.ILE0605.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _048_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0102.ILE0602.net2656 ILAB0102.ILE0602.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE0601.net2749 }
	 [0] xc_tree ILAB0102.ILE0602.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0602.net1838 w=0.55 e=switch2=ILAB0102.ILE0602.Is47{ILAB0102.ILE0602.net2656 ILAB0102.ILE0602.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net17214<5> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0602.Ihi5{ILAB0102.ILE0602.net1838 net17214<5>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0601.A w=1.346 e=switch_sd=ILAB0102.ILE0601.Is24{net17214<5> ILAB0102.ILE0601.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0601.net2749 w=1.458 e=switch_ds=ILAB0102.ILE0601.Is41{ILAB0102.ILE0601.A ILAB0102.ILE0601.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _047_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0102.ILE0802.net2656 ILAB0102.ILE0802.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE0801.net2749 }
	 [0] xc_tree ILAB0102.ILE0802.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0802.net1844 w=0.55 e=switch2=ILAB0102.ILE0802.Is31{ILAB0102.ILE0802.net2656 ILAB0102.ILE0802.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net17206<1> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0802.Ihi7{ILAB0102.ILE0802.net1844 net17206<1>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0801.A w=1.6 e=switch=ILAB0102.ILE0801.Is9{net17206<1> ILAB0102.ILE0801.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0801.net2749 w=1.7 e=switch_ds=ILAB0102.ILE0801.Is41{ILAB0102.ILE0801.A ILAB0102.ILE0801.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _046_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0102.ILE0504.net2656 ILAB0102.ILE0504.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE0404.net2749 }
	 [0] xc_tree ILAB0102.ILE0504.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0504.net1859 w=0.55 e=switch2=ILAB0102.ILE0504.Is119{ILAB0102.ILE0504.net2656 ILAB0102.ILE0504.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree Fast_out_28<4> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0504.Ivi7{ILAB0102.ILE0504.net1859 Fast_out_28<4>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0404.A w=1.6 e=switch=ILAB0102.ILE0404.Is129{Fast_out_28<4> ILAB0102.ILE0404.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0404.net2749 w=1.7 e=switch_ds=ILAB0102.ILE0404.Is41{ILAB0102.ILE0404.A ILAB0102.ILE0404.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _045_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0102.ILE0711.net2656 ILAB0102.ILE0711.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE0611.net2749 }
	 [0] xc_tree ILAB0102.ILE0711.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0711.net1859 w=0.55 e=switch2=ILAB0102.ILE0711.Is119{ILAB0102.ILE0711.net2656 ILAB0102.ILE0711.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net21514 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0711.Ivi7{ILAB0102.ILE0711.net1859 ILAB0102.net21514} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0611.A w=1.6 e=switch=ILAB0102.ILE0611.Is129{ILAB0102.net21514 ILAB0102.ILE0611.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0611.net2749 w=1.7 e=switch_ds=ILAB0102.ILE0611.Is41{ILAB0102.ILE0611.A ILAB0102.ILE0611.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _044_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0103.ILE0501.net2656 ILAB0103.ILE0501.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0103.ILE0401.net2749 }
	 [0] xc_tree ILAB0103.ILE0501.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0501.net1859 w=0.55 e=switch2=ILAB0103.ILE0501.Is119{ILAB0103.ILE0501.net2656 ILAB0103.ILE0501.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree Fast_out_29<7> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0501.Ivi7{ILAB0103.ILE0501.net1859 Fast_out_29<7>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0401.A w=1.6 e=switch=ILAB0103.ILE0401.Is129{Fast_out_29<7> ILAB0103.ILE0401.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0401.net2749 w=1.7 e=switch_ds=ILAB0103.ILE0401.Is41{ILAB0103.ILE0401.A ILAB0103.ILE0401.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _043_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0103.ILE0703.net2656 ILAB0103.ILE0703.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0103.ILE0704.net2749 }
	 [0] xc_tree ILAB0103.ILE0703.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0703.net2650 w=0.55 e=switch2=ILAB0103.ILE0703.Is143{ILAB0103.ILE0703.net2656 ILAB0103.ILE0703.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net15684 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0703.Iho3{ILAB0103.ILE0703.net2650 ILAB0103.net15684} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0704.A w=1.25 e=switch_sd=ILAB0103.ILE0704.Is32{ILAB0103.net15684 ILAB0103.ILE0704.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0704.net2749 w=1.35 e=switch_ds=ILAB0103.ILE0704.Is41{ILAB0103.ILE0704.A ILAB0103.ILE0704.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _042_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0103.ILE0903.net2656 ILAB0103.ILE0903.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0103.ILE0904.net2749 }
	 [0] xc_tree ILAB0103.ILE0903.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0903.net2650 w=0.55 e=switch2=ILAB0103.ILE0903.Is143{ILAB0103.ILE0903.net2656 ILAB0103.ILE0903.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net20274 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0903.Iho3{ILAB0103.ILE0903.net2650 ILAB0103.net20274} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0904.A w=1.25 e=switch_sd=ILAB0103.ILE0904.Is32{ILAB0103.net20274 ILAB0103.ILE0904.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0904.net2749 w=1.35 e=switch_ds=ILAB0103.ILE0904.Is41{ILAB0103.ILE0904.A ILAB0103.ILE0904.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _041_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0103.ILE0502.net2656 ILAB0103.ILE0502.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0103.ILE0503.net2749 }
	 [0] xc_tree ILAB0103.ILE0502.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0502.net2650 w=0.55 e=switch2=ILAB0103.ILE0502.Is143{ILAB0103.ILE0502.net2656 ILAB0103.ILE0502.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net26259 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0502.Iho3{ILAB0103.ILE0502.net2650 ILAB0103.net26259} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0503.A w=1.25 e=switch_sd=ILAB0103.ILE0503.Is32{ILAB0103.net26259 ILAB0103.ILE0503.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0503.net2749 w=1.35 e=switch_ds=ILAB0103.ILE0503.Is41{ILAB0103.ILE0503.A ILAB0103.ILE0503.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _040_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0103.ILE0702.net2656 ILAB0103.ILE0702.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0103.ILE0602.net2749 }
	 [0] xc_tree ILAB0103.ILE0702.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0702.net1859 w=0.55 e=switch2=ILAB0103.ILE0702.Is119{ILAB0103.ILE0702.net2656 ILAB0103.ILE0702.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net26464 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0702.Ivi7{ILAB0103.ILE0702.net1859 ILAB0103.net26464} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0602.A w=1.6 e=switch=ILAB0103.ILE0602.Is129{ILAB0103.net26464 ILAB0103.ILE0602.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0602.net2749 w=1.7 e=switch_ds=ILAB0103.ILE0602.Is41{ILAB0103.ILE0602.A ILAB0103.ILE0602.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _039_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0103.ILE1003.net2656 ILAB0103.ILE1003.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0103.ILE1004.net2749 }
	 [0] xc_tree ILAB0103.ILE1003.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE1003.net2650 w=0.55 e=switch2=ILAB0103.ILE1003.Is143{ILAB0103.ILE1003.net2656 ILAB0103.ILE1003.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net17394 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1003.Iho3{ILAB0103.ILE1003.net2650 ILAB0103.net17394} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE1004.A w=1.25 e=switch_sd=ILAB0103.ILE1004.Is32{ILAB0103.net17394 ILAB0103.ILE1004.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE1004.net2749 w=1.35 e=switch_ds=ILAB0103.ILE1004.Is41{ILAB0103.ILE1004.A ILAB0103.ILE1004.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _038_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0102.ILE0615.net2656 ILAB0102.ILE0615.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE0515.net2749 }
	 [0] xc_tree ILAB0102.ILE0615.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0615.net1859 w=0.55 e=switch2=ILAB0102.ILE0615.Is119{ILAB0102.ILE0615.net2656 ILAB0102.ILE0615.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net23989 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0615.Ivi7{ILAB0102.ILE0615.net1859 ILAB0102.net23989} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0515.A w=1.6 e=switch=ILAB0102.ILE0515.Is129{ILAB0102.net23989 ILAB0102.ILE0515.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0515.net2749 w=1.7 e=switch_ds=ILAB0102.ILE0515.Is41{ILAB0102.ILE0515.A ILAB0102.ILE0515.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _037_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0102.ILE0713.net2656 ILAB0102.ILE0713.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE0714.net2749 }
	 [0] xc_tree ILAB0102.ILE0713.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0713.net2650 w=0.55 e=switch2=ILAB0102.ILE0713.Is143{ILAB0102.ILE0713.net2656 ILAB0102.ILE0713.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net19959 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0713.Iho3{ILAB0102.ILE0713.net2650 ILAB0102.net19959} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0714.A w=1.25 e=switch_sd=ILAB0102.ILE0714.Is32{ILAB0102.net19959 ILAB0102.ILE0714.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0714.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0714.Is41{ILAB0102.ILE0714.A ILAB0102.ILE0714.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _036_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0102.ILE0503.net2656 ILAB0102.ILE0503.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE0403.net2749 }
	 [0] xc_tree ILAB0102.ILE0503.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0503.net1859 w=0.55 e=switch2=ILAB0102.ILE0503.Is119{ILAB0102.ILE0503.net2656 ILAB0102.ILE0503.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree Fast_out_28<5> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0503.Ivi7{ILAB0102.ILE0503.net1859 Fast_out_28<5>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0403.A w=1.6 e=switch=ILAB0102.ILE0403.Is129{Fast_out_28<5> ILAB0102.ILE0403.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0403.net2749 w=1.7 e=switch_ds=ILAB0102.ILE0403.Is41{ILAB0102.ILE0403.A ILAB0102.ILE0403.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _035_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0201.ILE0313.net2656 ILAB0201.ILE0313.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0201.ILE0314.net2749 }
	 [0] xc_tree ILAB0201.ILE0313.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0201.ILE0313.net2650 w=0.55 e=switch2=ILAB0201.ILE0313.Is143{ILAB0201.ILE0313.net2656 ILAB0201.ILE0313.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0201.net23154 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0201.ILE0313.Iho3{ILAB0201.ILE0313.net2650 ILAB0201.net23154} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0201.ILE0314.A w=1.25 e=switch_sd=ILAB0201.ILE0314.Is32{ILAB0201.net23154 ILAB0201.ILE0314.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0201.ILE0314.net2749 w=1.35 e=switch_ds=ILAB0201.ILE0314.Is41{ILAB0201.ILE0314.A ILAB0201.ILE0314.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _034_ {
	 xc_pin xci2_nand3 y o [-1] pinInv=0 { ILAB0401.ILE0711.net2656 ILAB0401.ILE0711.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0401.ILE0710.net2749 }
	 [0] xc_tree ILAB0401.ILE0711.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0711.net1844 w=0.55 e=switch2=ILAB0401.ILE0711.Is31{ILAB0401.ILE0711.net2656 ILAB0401.ILE0711.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net17212 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0711.Ihi7{ILAB0401.ILE0711.net1844 ILAB0401.net17212} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0710.A w=1.6 e=switch=ILAB0401.ILE0710.Is9{ILAB0401.net17212 ILAB0401.ILE0710.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0710.net2749 w=1.7 e=switch_ds=ILAB0401.ILE0710.Is41{ILAB0401.ILE0710.A ILAB0401.ILE0710.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _145_ {
	 xc_pin xci2_aoi21 y o [-1] pinInv=0 { ILAB0401.ILE0810.net2656 ILAB0401.ILE0810.net0541 }
	 xc_pin xci2_nand3 c i [6] pinInv=0 { ILAB0401.ILE0711.net2746 }
	 [0] xc_tree ILAB0401.ILE0810.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0810.net2680 w=0.85 e=switch2=ILAB0401.ILE0810.Is63{ILAB0401.ILE0810.net0541 ILAB0401.ILE0810.net2680} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net17636 w=1.15 e=inv_8_UCCLAB=ILAB0401.ILE0810.I666{ILAB0401.ILE0810.net2680 ILAB0401.net17636} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.net18471 w=2.45 e=switch_sd=ILAB0401.ILE0811.Is69{ILAB0401.net17636 ILAB0401.net18471} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0711.net0558 w=2.65 e=inv_4_UCCLAB=ILAB0401.ILE0711.I710{ILAB0401.net18471 ILAB0401.ILE0711.net0558} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0401.ILE0711.C w=3.25 e=switch1_sd=ILAB0401.ILE0711.Is78{ILAB0401.ILE0711.net0558 ILAB0401.ILE0711.C} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0401.ILE0711.net2746 w=3.35 e=switch_ds=ILAB0401.ILE0711.Is44{ILAB0401.ILE0711.C ILAB0401.ILE0711.net2746} prev=[5] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _144_ {
	 xc_pin xci2_nand3 y o [-1] pinInv=0 { ILAB0401.ILE0611.net2656 ILAB0401.ILE0611.net0541 }
	 xc_pin xci2_nand3 b i [4] pinInv=0 { ILAB0401.ILE0711.net2743 }
	 [0] xc_tree ILAB0401.ILE0611.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0611.net1862 w=0.55 e=switch2=ILAB0401.ILE0611.Is111{ILAB0401.ILE0611.net2656 ILAB0401.ILE0611.net1862} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net21514 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0611.Ivi6{ILAB0401.ILE0611.net1862 ILAB0401.net21514} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0711.B w=1.612 e=switch=ILAB0401.ILE0711.Is130{ILAB0401.net21514 ILAB0401.ILE0711.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0711.net2743 w=1.724 e=switch_ds=ILAB0401.ILE0711.Is43{ILAB0401.ILE0711.B ILAB0401.ILE0711.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _143_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0401.ILE0910.net2656 ILAB0401.ILE0910.net0541 }
	 xc_pin xci2_aoi21 c i [4] pinInv=0 { ILAB0401.ILE0810.net2746 }
	 [0] xc_tree ILAB0401.ILE0910.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0910.net1859 w=0.55 e=switch2=ILAB0401.ILE0910.Is119{ILAB0401.ILE0910.net2656 ILAB0401.ILE0910.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net23719 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0910.Ivi7{ILAB0401.ILE0910.net1859 ILAB0401.net23719} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0810.C w=1.6 e=switch=ILAB0401.ILE0810.Is133{ILAB0401.net23719 ILAB0401.ILE0810.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0810.net2746 w=1.7 e=switch_ds=ILAB0401.ILE0810.Is44{ILAB0401.ILE0810.C ILAB0401.ILE0810.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _033_ {
	 xc_pin xci2_nand3fft y o [-1] pinInv=0 { ILAB0401.ILE0914.net2656 ILAB0401.ILE0914.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0401.ILE1014.net2749 }
	 [0] xc_tree ILAB0401.ILE0914.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0914.net2660 w=0.55 e=switch2=ILAB0401.ILE0914.Is23{ILAB0401.ILE0914.net2656 ILAB0401.ILE0914.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net23269 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0914.Ivo1{ILAB0401.ILE0914.net2660 ILAB0401.net23269} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE1014.A w=1.25 e=switch_sd=ILAB0401.ILE1014.Is121{ILAB0401.net23269 ILAB0401.ILE1014.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE1014.net2749 w=1.35 e=switch_ds=ILAB0401.ILE1014.Is41{ILAB0401.ILE1014.A ILAB0401.ILE1014.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _142_ {
	 xc_pin xci2_and3ftt y o [-1] pinInv=0 { ILAB0401.ILE1011.net2656 ILAB0401.ILE1011.net0541 }
	 xc_pin xci2_nand3fft a i [7] pinInv=0 { ILAB0401.ILE0914.net2749 }
	 [0] xc_tree ILAB0401.ILE1011.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE1011.net1859 w=1 e=switch2=ILAB0401.ILE1011.Is119{ILAB0401.ILE1011.net2656 ILAB0401.ILE1011.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net22684 w=1.35 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE1011.Ivi7{ILAB0401.ILE1011.net1859 ILAB0401.net22684} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0911.net2695 w=2.05 e=switch2=ILAB0401.ILE0911.Is15{ILAB0401.net22684 ILAB0401.ILE0911.net2695} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.net23042 w=2.3 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0911.Ivo2{ILAB0401.ILE0911.net2695 ILAB0401.net23042} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0401.net18967 w=3.9 e=switch=ILAB0401.ILE0911.Is51{ILAB0401.net18967 ILAB0401.net23042} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0401.ILE0914.A w=4.75 e=switch=ILAB0401.ILE0914.Is9{ILAB0401.net18967 ILAB0401.ILE0914.A} prev=[5] elemInv=0 pathInv=0 v.w=0.1
	 [7] xc_tree ILAB0401.ILE0914.net2749 w=4.85 e=switch_ds=ILAB0401.ILE0914.Is41{ILAB0401.ILE0914.A ILAB0401.ILE0914.net2749} prev=[6] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _032_ {
	 xc_pin xci2_nand3 y o [-1] pinInv=0 { ILAB0401.ILE0813.net2656 ILAB0401.ILE0813.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0401.ILE0814.net2749 }
	 [0] xc_tree ILAB0401.ILE0813.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0813.net2650 w=0.55 e=switch2=ILAB0401.ILE0813.Is143{ILAB0401.ILE0813.net2656 ILAB0401.ILE0813.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net22524 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0813.Iho3{ILAB0401.ILE0813.net2650 ILAB0401.net22524} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0814.A w=1.346 e=switch_sd=ILAB0401.ILE0814.Is32{ILAB0401.net22524 ILAB0401.ILE0814.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0814.net2749 w=1.458 e=switch_ds=ILAB0401.ILE0814.Is41{ILAB0401.ILE0814.A ILAB0401.ILE0814.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _141_ {
	 xc_pin xci2_oa21 y o [-1] pinInv=0 { ILAB0401.ILE0714.net2656 ILAB0401.ILE0714.net0541 }
	 xc_pin xci2_nand3 c i [6] pinInv=0 { ILAB0401.ILE0813.net2746 }
	 [0] xc_tree ILAB0401.ILE0714.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0714.net2680 w=0.85 e=switch2=ILAB0401.ILE0714.Is63{ILAB0401.ILE0714.net0541 ILAB0401.ILE0714.net2680} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net19976 w=1.15 e=inv_8_UCCLAB=ILAB0401.ILE0714.I666{ILAB0401.ILE0714.net2680 ILAB0401.net19976} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.net22508 w=2.45 e=switch_sd=ILAB0401.ILE0713.Is100{ILAB0401.net19976 ILAB0401.net22508} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0813.net01339 w=2.65 e=inv_4_UCCLAB=ILAB0401.ILE0813.I715{ILAB0401.net22508 ILAB0401.ILE0813.net01339} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0401.ILE0813.C w=3.25 e=switch1_sd=ILAB0401.ILE0813.Is70{ILAB0401.ILE0813.net01339 ILAB0401.ILE0813.C} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0401.ILE0813.net2746 w=3.35 e=switch_ds=ILAB0401.ILE0813.Is44{ILAB0401.ILE0813.C ILAB0401.ILE0813.net2746} prev=[5] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _140_ {
	 xc_pin xci2_nand3fft y o [-1] pinInv=0 { ILAB0401.ILE0713.net2656 ILAB0401.ILE0713.net0541 }
	 xc_pin xci2_nand3 b i [4] pinInv=0 { ILAB0401.ILE0813.net2743 }
	 [0] xc_tree ILAB0401.ILE0713.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0713.net2660 w=0.55 e=switch2=ILAB0401.ILE0713.Is23{ILAB0401.ILE0713.net2656 ILAB0401.ILE0713.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net21559 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0713.Ivo1{ILAB0401.ILE0713.net2660 ILAB0401.net21559} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0813.B w=1.25 e=switch_sd=ILAB0401.ILE0813.Is123{ILAB0401.net21559 ILAB0401.ILE0813.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0813.net2743 w=1.35 e=switch_ds=ILAB0401.ILE0813.Is43{ILAB0401.ILE0813.B ILAB0401.ILE0813.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _139_ {
	 xc_pin xci2_and3fft y o [-1] pinInv=0 { ILAB0401.ILE0913.net2656 ILAB0401.ILE0913.net0541 }
	 xc_pin xci2_nand3 a i [4] pinInv=0 { ILAB0401.ILE0813.net2749 }
	 [0] xc_tree ILAB0401.ILE0913.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0913.net1859 w=0.55 e=switch2=ILAB0401.ILE0913.Is119{ILAB0401.ILE0913.net2656 ILAB0401.ILE0913.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net25519 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0913.Ivi7{ILAB0401.ILE0913.net1859 ILAB0401.net25519} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0813.A w=1.6 e=switch=ILAB0401.ILE0813.Is129{ILAB0401.net25519 ILAB0401.ILE0813.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0813.net2749 w=1.7 e=switch_ds=ILAB0401.ILE0813.Is41{ILAB0401.ILE0813.A ILAB0401.ILE0813.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _138_ {
	 xc_pin xci2_nand3fft y o [-1] pinInv=0 { ILAB0401.ILE0912.net2656 ILAB0401.ILE0912.net0541 }
	 xc_pin xci2_and3fft c i [7] pinInv=0 { ILAB0401.ILE0913.net2743 }
	 xc_pin xci2_nand3fft c i [8] pinInv=0 { ILAB0401.ILE0914.net2746 }
	 [0] xc_tree ILAB0401.ILE0912.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0912.net2685 w=0.55 e=switch2=ILAB0401.ILE0912.Is127{ILAB0401.ILE0912.net2656 ILAB0401.ILE0912.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.ILE0912.net2650 w=0.55 e=switch2=ILAB0401.ILE0912.Is143{ILAB0401.ILE0912.net2656 ILAB0401.ILE0912.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0401.net18924 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0912.Iho3{ILAB0401.ILE0912.net2650 ILAB0401.net18924} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.net18922 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0912.Iho1{ILAB0401.ILE0912.net2685 ILAB0401.net18922} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.ILE0913.B w=1.25 e=switch_sd=ILAB0401.ILE0913.Is34{ILAB0401.net18924 ILAB0401.ILE0913.B} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.ILE0914.C w=1.25 e=switch_sd=ILAB0401.ILE0914.Is20{ILAB0401.net18922 ILAB0401.ILE0914.C} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0401.ILE0913.net2743 w=1.35 e=switch_ds=ILAB0401.ILE0913.Is43{ILAB0401.ILE0913.B ILAB0401.ILE0913.net2743} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.ILE0914.net2746 w=1.35 e=switch_ds=ILAB0401.ILE0914.Is44{ILAB0401.ILE0914.C ILAB0401.ILE0914.net2746} prev=[6] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _137_ {
	 xc_pin xci2_and3fft y o [-1] pinInv=0 { ILAB0401.ILE1010.net2656 ILAB0401.ILE1010.net0541 }
	 xc_pin xci2_and3fft b i [9] pinInv=0 { ILAB0401.ILE0913.net2746 }
	 xc_pin xci2_aoi21 b i [5] pinInv=0 { ILAB0401.ILE0810.net2743 }
	 [0] xc_tree ILAB0401.ILE1010.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE1010.net1859 w=0.55 e=switch2=ILAB0401.ILE1010.Is119{ILAB0401.ILE1010.net2656 ILAB0401.ILE1010.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net24889 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE1010.Ivi7{ILAB0401.ILE1010.net1859 ILAB0401.net24889} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0910.net2695 w=1.45 e=switch2=ILAB0401.ILE0910.Is15{ILAB0401.net24889 ILAB0401.ILE0910.net2695} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0810.B w=1.25 e=switch_sd=ILAB0401.ILE0810.Is122{ILAB0401.net24889 ILAB0401.ILE0810.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.ILE0810.net2743 w=1.35 e=switch_ds=ILAB0401.ILE0810.Is43{ILAB0401.ILE0810.B ILAB0401.ILE0810.net2743} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.net24977 w=1.7 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0910.Ivo2{ILAB0401.ILE0910.net2695 ILAB0401.net24977} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [7] xc_tree ILAB0401.net23692 w=3.3 e=switch=ILAB0401.ILE0910.Is51{ILAB0401.net23692 ILAB0401.net24977} prev=[6] elemInv=0 pathInv=0 v.w=0.1
	 [8] xc_tree ILAB0401.ILE0913.C w=4.15 e=switch=ILAB0401.ILE0913.Is13{ILAB0401.net23692 ILAB0401.ILE0913.C} prev=[7] elemInv=0 pathInv=0 v.w=0.1
	 [9] xc_tree ILAB0401.ILE0913.net2746 w=4.25 e=switch_ds=ILAB0401.ILE0913.Is44{ILAB0401.ILE0913.C ILAB0401.ILE0913.net2746} prev=[8] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _136_ {
	 xc_pin xci2_and2 y o [-1] pinInv=0 { ILAB0401.ILE1013.net2656 ILAB0401.ILE1013.net0541 }
	 xc_pin xci2_and3fft a i [4] pinInv=0 { ILAB0401.ILE0913.net2749 }
	 xc_pin xci2_mux2h s i [24] pinInv=0 { ILAB0201.ILE0313.net2743 }
	 [0] xc_tree ILAB0401.ILE1013.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE1013.net1859 w=0.55 e=switch2=ILAB0401.ILE1013.Is119{ILAB0401.ILE1013.net2656 ILAB0401.ILE1013.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net21424 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE1013.Ivi7{ILAB0401.ILE1013.net1859 ILAB0401.net21424} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0913.A w=1.6 e=switch=ILAB0401.ILE0913.Is129{ILAB0401.net21424 ILAB0401.ILE0913.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0913.net2749 w=1.7 e=switch_ds=ILAB0401.ILE0913.Is41{ILAB0401.ILE0913.A ILAB0401.ILE0913.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.ILE0613.net1859 w=1.6 e=switch2=ILAB0401.ILE0613.Is119{ILAB0401.net21424 ILAB0401.ILE0613.net1859} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.net19354 w=4.3 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0613.Ivi7{ILAB0401.ILE0613.net1859 ILAB0401.net19354} prev=[5] elemInv=1 pathInv=0 v.w=0.1
	 [7] xc_tree ILAB0401.ILE0213.net1859 w=5.3 e=switch2=ILAB0401.ILE0213.Is119{ILAB0401.net19354 ILAB0401.ILE0213.net1859} prev=[6] elemInv=0 pathInv=0 v.w=0.1
	 [8] xc_tree net16279<1> w=5.796 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0213.Ivi7{ILAB0401.ILE0213.net1859 net16279<1>} prev=[7] elemInv=1 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0301.ILE1413.net1859 w=6.796 e=switch2=ILAB0301.ILE1413.Is119{net16279<1> ILAB0301.ILE1413.net1859} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0301.net18364 w=7.196 e=sw_b_v2_inv_UCCLAB=ILAB0301.ILE1413.Ivi7{ILAB0301.ILE1413.net1859 ILAB0301.net18364} prev=[9] elemInv=1 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0301.ILE1013.net1859 w=8.196 e=switch2=ILAB0301.ILE1013.Is119{ILAB0301.net18364 ILAB0301.ILE1013.net1859} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0301.net21424 w=8.596 e=sw_b_v2_inv_UCCLAB=ILAB0301.ILE1013.Ivi7{ILAB0301.ILE1013.net1859 ILAB0301.net21424} prev=[11] elemInv=1 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0301.ILE0613.net1859 w=9.596 e=switch2=ILAB0301.ILE0613.Is119{ILAB0301.net21424 ILAB0301.ILE0613.net1859} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0301.net19354 w=9.996 e=sw_b_v2_inv_UCCLAB=ILAB0301.ILE0613.Ivi7{ILAB0301.ILE0613.net1859 ILAB0301.net19354} prev=[13] elemInv=1 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0301.ILE0213.net1859 w=10.996 e=switch2=ILAB0301.ILE0213.Is119{ILAB0301.net19354 ILAB0301.ILE0213.net1859} prev=[14] elemInv=0 pathInv=0 v.w=0.1
	 [16] xc_tree net16430<1> w=11.396 e=sw_b_v2_inv_UCCLAB=ILAB0301.ILE0213.Ivi7{ILAB0301.ILE0213.net1859 net16430<1>} prev=[15] elemInv=1 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0201.ILE1413.net1859 w=12.396 e=switch2=ILAB0201.ILE1413.Is119{net16430<1> ILAB0201.ILE1413.net1859} prev=[16] elemInv=0 pathInv=1 v.w=0.1
	 [18] xc_tree ILAB0201.net18364 w=12.796 e=sw_b_v2_inv_UCCLAB=ILAB0201.ILE1413.Ivi7{ILAB0201.ILE1413.net1859 ILAB0201.net18364} prev=[17] elemInv=1 pathInv=0 v.w=0.1
	 [19] xc_tree ILAB0201.ILE1013.net1859 w=13.646 e=switch2=ILAB0201.ILE1013.Is119{ILAB0201.net18364 ILAB0201.ILE1013.net1859} prev=[18] elemInv=0 pathInv=0 v.w=0.1
	 [20] xc_tree ILAB0201.net21424 w=13.946 e=sw_b_v2_inv_UCCLAB=ILAB0201.ILE1013.Ivi7{ILAB0201.ILE1013.net1859 ILAB0201.net21424} prev=[19] elemInv=1 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0201.ILE0613.net1859 w=14.496 e=switch2=ILAB0201.ILE0613.Is119{ILAB0201.net21424 ILAB0201.ILE0613.net1859} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0201.net19354 w=14.696 e=sw_b_v2_inv_UCCLAB=ILAB0201.ILE0613.Ivi7{ILAB0201.ILE0613.net1859 ILAB0201.net19354} prev=[21] elemInv=1 pathInv=0 v.w=0.1
	 [23] xc_tree ILAB0201.ILE0313.B w=15.196 e=switch_sd=ILAB0201.ILE0313.Is123{ILAB0201.net19354 ILAB0201.ILE0313.B} prev=[22] elemInv=0 pathInv=0 v.w=0.1
	 [24] xc_tree ILAB0201.ILE0313.net2743 w=15.308 e=switch_ds=ILAB0201.ILE0313.Is43{ILAB0201.ILE0313.B ILAB0201.ILE0313.net2743} prev=[23] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _135_ {
	 xc_pin xci2_and3fft y o [-1] pinInv=0 { ILAB0401.ILE0911.net2656 ILAB0401.ILE0911.net0541 }
	 xc_pin xci2_and2 b i [22] pinInv=0 { ILAB0401.ILE1013.net2746 }
	 xc_pin xci2_and3fft c i [11] pinInv=0 { ILAB0401.ILE1010.net2743 }
	 xc_pin xci2_and3ftt c i [20] pinInv=0 { ILAB0401.ILE1011.net2743 }
	 xc_pin xci2_and3 c i [8] pinInv=0 { ILAB0401.ILE0910.net2746 }
	 [0] xc_tree ILAB0401.ILE0911.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0911.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.ILE0911.net1838 w=0.55 e=switch2=ILAB0401.ILE0911.Is47{ILAB0401.ILE0911.net2656 ILAB0401.ILE0911.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0911.net2680 w=0.55 e=switch2=ILAB0401.ILE0911.Is63{ILAB0401.ILE0911.net0541 ILAB0401.ILE0911.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0401.net25313 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0911.Ihi5{ILAB0401.ILE0911.net1838 ILAB0401.net25313} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.net23711 w=0.75 e=inv_8_UCCLAB=ILAB0401.ILE0911.I666{ILAB0401.ILE0911.net2680 ILAB0401.net23711} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.ILE0910.C w=1.25 e=switch_sd=ILAB0401.ILE0910.Is28{ILAB0401.net25313 ILAB0401.ILE0910.C} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0401.net24850 w=2.05 e=switch_sd=ILAB0401.ILE0910.Is98{ILAB0401.net23711 ILAB0401.net24850} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.ILE0910.net2746 w=1.35 e=switch_ds=ILAB0401.ILE0910.Is44{ILAB0401.ILE0910.C ILAB0401.ILE0910.net2746} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0401.ILE1010.net01342 w=2.25 e=inv_4_UCCLAB=ILAB0401.ILE1010.I713{ILAB0401.net24850 ILAB0401.ILE1010.net01342} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0401.ILE1010.B w=2.85 e=switch1_sd=ILAB0401.ILE1010.Is62{ILAB0401.ILE1010.net01342 ILAB0401.ILE1010.B} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0401.ILE1010.net2743 w=2.95 e=switch_ds=ILAB0401.ILE1010.Is43{ILAB0401.ILE1010.B ILAB0401.ILE1010.net2743} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0401.ILE0911.net2670 w=0.55 e=switch2=ILAB0401.ILE0911.Is7{ILAB0401.ILE0911.net2656 ILAB0401.ILE0911.net2670} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0401.ILE0911.net2635 w=0.7 e=switch2=ILAB0401.ILE0911.Is135{ILAB0401.ILE0911.net2656 ILAB0401.ILE0911.net2635} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0401.net22680 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0911.Ivo3{ILAB0401.ILE0911.net2670 ILAB0401.net22680} prev=[12] elemInv=1 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0401.net18968 w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0911.Iho2{ILAB0401.ILE0911.net2635 ILAB0401.net18968} prev=[13] elemInv=1 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0401.ILE1011.B w=3.306 e=switch_sd=ILAB0401.ILE1011.Is106{ILAB0401.net22680 ILAB0401.ILE1011.B} prev=[14] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0401.ILE0913.net2650 w=1.65 e=switch2=ILAB0401.ILE0913.Is143{ILAB0401.net18968 ILAB0401.ILE0913.net2650} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [18] xc_tree ILAB0401.net25494 w=1.9 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0913.Iho3{ILAB0401.ILE0913.net2650 ILAB0401.net25494} prev=[17] elemInv=1 pathInv=0 v.w=0.1
	 [19] xc_tree ILAB0401.net21557 w=3.5 e=switch=ILAB0401.ILE0913.Is53{ILAB0401.net25494 ILAB0401.net21557} prev=[18] elemInv=0 pathInv=0 v.w=0.1
	 [20] xc_tree ILAB0401.ILE1011.net2743 w=3.418 e=switch_ds=ILAB0401.ILE1011.Is43{ILAB0401.ILE1011.B ILAB0401.ILE1011.net2743} prev=[16] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0401.ILE1013.C w=4.012 e=switch_sd=ILAB0401.ILE1013.Is116{ILAB0401.net21557 ILAB0401.ILE1013.C} prev=[19] elemInv=0 pathInv=0 v.w=0.1
	 [22] xc_tree ILAB0401.ILE1013.net2746 w=4.124 e=switch_ds=ILAB0401.ILE1013.Is44{ILAB0401.ILE1013.C ILAB0401.ILE1013.net2746} prev=[21] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _031_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0102.ILE0901.net2656 ILAB0102.ILE0901.net0541 }
	 xc_pin xci2_dff d i [4] pinInv=0 { ILAB0101.ILE0916.net2749 }
	 [0] xc_tree ILAB0102.ILE0901.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0901.net1844 w=0.55 e=switch2=ILAB0102.ILE0901.Is31{ILAB0102.ILE0901.net2656 ILAB0102.ILE0901.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net17202<0> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0901.Ihi7{ILAB0102.ILE0901.net1844 net17202<0>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0101.ILE0916.A w=1.6 e=switch=ILAB0101.ILE0916.Is9{net17202<0> ILAB0101.ILE0916.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0101.ILE0916.net2749 w=1.7 e=switch_ds=ILAB0101.ILE0916.Is41{ILAB0101.ILE0916.A ILAB0101.ILE0916.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _134_ {
	 xc_pin xci2_nand3ftt y o [-1] pinInv=0 { ILAB0102.ILE1302.net2656 ILAB0102.ILE1302.net0541 }
	 xc_pin xci2_mux2h s i [8] pinInv=0 { ILAB0102.ILE0901.net2743 }
	 [0] xc_tree ILAB0102.ILE1302.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1302.net1850 w=1 e=switch2=ILAB0102.ILE1302.Is103{ILAB0102.ILE1302.net2656 ILAB0102.ILE1302.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net26552 w=1.4 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1302.Ivi5{ILAB0102.ILE1302.net1850 ILAB0102.net26552} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1102.net1862 w=2.25 e=switch2=ILAB0102.ILE1102.Is111{ILAB0102.net26552 ILAB0102.ILE1102.net1862} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net26599 w=2.55 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1102.Ivi6{ILAB0102.ILE1102.net1862 ILAB0102.net26599} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0902.B w=3.85 e=switch_sd=ILAB0102.ILE0902.Is123{ILAB0102.net26599 ILAB0102.ILE0902.B} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree net17202<5> w=5.474 e=switch=ILAB0102.ILE0902.Is27{net17202<5> ILAB0102.ILE0902.B} prev=[5] elemInv=0 pathInv=0 v.w=0.1
	 [7] xc_tree ILAB0102.ILE0901.B w=7.238 e=switch_sd=ILAB0102.ILE0901.Is26{net17202<5> ILAB0102.ILE0901.B} prev=[6] elemInv=0 pathInv=0 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0901.net2743 w=7.362 e=switch_ds=ILAB0102.ILE0901.Is43{ILAB0102.ILE0901.B ILAB0102.ILE0901.net2743} prev=[7] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _030_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0402.ILE0101.net2656 ILAB0402.ILE0101.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0402.ILE0102.net2749 }
	 [0] xc_tree ILAB0402.ILE0101.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0402.ILE0101.net2650 w=0.55 e=switch2=ILAB0402.ILE0101.Is143{ILAB0402.ILE0101.net2656 ILAB0402.ILE0101.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0402.net16719 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0402.ILE0101.Iho3{ILAB0402.ILE0101.net2650 ILAB0402.net16719} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0402.ILE0102.A w=1.25 e=switch_sd=ILAB0402.ILE0102.Is32{ILAB0402.net16719 ILAB0402.ILE0102.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0402.ILE0102.net2749 w=1.35 e=switch_ds=ILAB0402.ILE0102.Is41{ILAB0402.ILE0102.A ILAB0402.ILE0102.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _029_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0402.ILE0201.net2656 ILAB0402.ILE0201.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0402.ILE0202.net2749 }
	 [0] xc_tree ILAB0402.ILE0201.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0402.ILE0201.net2650 w=0.55 e=switch2=ILAB0402.ILE0201.Is143{ILAB0402.ILE0201.net2656 ILAB0402.ILE0201.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0402.net16944 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0402.ILE0201.Iho3{ILAB0402.ILE0201.net2650 ILAB0402.net16944} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0402.ILE0202.A w=1.25 e=switch_sd=ILAB0402.ILE0202.Is32{ILAB0402.net16944 ILAB0402.ILE0202.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0402.ILE0202.net2749 w=1.35 e=switch_ds=ILAB0402.ILE0202.Is41{ILAB0402.ILE0202.A ILAB0402.ILE0202.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _133_ {
	 xc_pin xci2_nand3ftt y o [-1] pinInv=0 { ILAB0401.ILE0216.net2656 ILAB0401.ILE0216.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0402.ILE0201.net2743 }
	 [0] xc_tree ILAB0401.ILE0216.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0216.net2650 w=0.55 e=switch2=ILAB0401.ILE0216.Is143{ILAB0401.ILE0216.net2656 ILAB0401.ILE0216.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net16324<4> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0216.Iho3{ILAB0401.ILE0216.net2650 net16324<4>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0402.ILE0201.B w=1.25 e=switch_sd=ILAB0402.ILE0201.Is34{net16324<4> ILAB0402.ILE0201.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0402.ILE0201.net2743 w=1.35 e=switch_ds=ILAB0402.ILE0201.Is43{ILAB0402.ILE0201.B ILAB0402.ILE0201.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _028_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0402.ILE0601.net2656 ILAB0402.ILE0601.net0541 }
	 xc_pin xci2_dffcl d i [6] pinInv=0 { ILAB0402.ILE0502.net2749 }
	 [0] xc_tree ILAB0402.ILE0601.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0402.ILE0601.net2680 w=0.85 e=switch2=ILAB0402.ILE0601.Is63{ILAB0402.ILE0601.net0541 ILAB0402.ILE0601.net2680} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net16245<0> w=1.15 e=inv_8_UCCLAB=ILAB0402.ILE0601.I666{ILAB0402.ILE0601.net2680 net16245<0>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0402.net26387 w=2.45 e=switch_sd=ILAB0402.ILE0602.Is65{net16245<0> ILAB0402.net26387} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0402.ILE0502.net0562 w=2.65 e=inv_4_UCCLAB=ILAB0402.ILE0502.I712{ILAB0402.net26387 ILAB0402.ILE0502.net0562} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0402.ILE0502.A w=3.25 e=switch1_sd=ILAB0402.ILE0502.Is94{ILAB0402.ILE0502.net0562 ILAB0402.ILE0502.A} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0402.ILE0502.net2749 w=3.35 e=switch_ds=ILAB0402.ILE0502.Is41{ILAB0402.ILE0502.A ILAB0402.ILE0502.net2749} prev=[5] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _132_ {
	 xc_pin xci2_xnor2ft y o [-1] pinInv=0 { ILAB0402.ILE0401.net2656 ILAB0402.ILE0401.net0541 }
	 xc_pin xci2_ao21 b i [4] pinInv=0 { ILAB0402.ILE0601.net2743 }
	 [0] xc_tree ILAB0402.ILE0401.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0402.ILE0401.net2695 w=0.55 e=switch2=ILAB0402.ILE0401.Is15{ILAB0402.ILE0401.net2656 ILAB0402.ILE0401.net2695} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0402.net20612 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0402.ILE0401.Ivo2{ILAB0402.ILE0401.net2695 ILAB0402.net20612} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0402.ILE0601.B w=1.612 e=switch=ILAB0402.ILE0601.Is115{ILAB0402.net20612 ILAB0402.ILE0601.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0402.ILE0601.net2743 w=1.724 e=switch_ds=ILAB0402.ILE0601.Is43{ILAB0402.ILE0601.B ILAB0402.ILE0601.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _131_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0402.ILE0501.net2656 ILAB0402.ILE0501.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0402.ILE0601.net2746 }
	 [0] xc_tree ILAB0402.ILE0501.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0402.ILE0501.net2660 w=0.55 e=switch2=ILAB0402.ILE0501.Is23{ILAB0402.ILE0501.net2656 ILAB0402.ILE0501.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0402.net20929 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0402.ILE0501.Ivo1{ILAB0402.ILE0501.net2660 ILAB0402.net20929} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0402.ILE0601.C w=1.25 e=switch_sd=ILAB0402.ILE0601.Is125{ILAB0402.net20929 ILAB0402.ILE0601.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0402.ILE0601.net2746 w=1.35 e=switch_ds=ILAB0402.ILE0601.Is44{ILAB0402.ILE0601.C ILAB0402.ILE0601.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _027_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0401.ILE0616.net2656 ILAB0401.ILE0616.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0401.ILE0716.net2749 }
	 [0] xc_tree ILAB0401.ILE0616.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0616.net2660 w=0.55 e=switch2=ILAB0401.ILE0616.Is23{ILAB0401.ILE0616.net2656 ILAB0401.ILE0616.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net21604 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0616.Ivo1{ILAB0401.ILE0616.net2660 ILAB0401.net21604} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0716.A w=1.25 e=switch_sd=ILAB0401.ILE0716.Is121{ILAB0401.net21604 ILAB0401.ILE0716.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0716.net2749 w=1.35 e=switch_ds=ILAB0401.ILE0716.Is41{ILAB0401.ILE0716.A ILAB0401.ILE0716.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _130_ {
	 xc_pin xci2_xnor2ft y o [-1] pinInv=0 { ILAB0401.ILE0416.net2656 ILAB0401.ILE0416.net0541 }
	 xc_pin xci2_ao21 b i [4] pinInv=0 { ILAB0401.ILE0616.net2743 }
	 [0] xc_tree ILAB0401.ILE0416.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0416.net2660 w=0.55 e=switch2=ILAB0401.ILE0416.Is23{ILAB0401.ILE0416.net2656 ILAB0401.ILE0416.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net17464 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0416.Ivo1{ILAB0401.ILE0416.net2660 ILAB0401.net17464} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0616.B w=1.346 e=switch_sd=ILAB0401.ILE0616.Is122{ILAB0401.net17464 ILAB0401.ILE0616.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0616.net2743 w=1.458 e=switch_ds=ILAB0401.ILE0616.Is43{ILAB0401.ILE0616.B ILAB0401.ILE0616.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _129_ {
	 xc_pin xci2_and2 y o [-1] pinInv=0 { ILAB0401.ILE0316.net2656 ILAB0401.ILE0316.net0541 }
	 xc_pin xci2_xnor2ft b i [11] pinInv=0 { ILAB0402.ILE0401.net2743 }
	 xc_pin xci2_nand3ftt b i [8] pinInv=0 { ILAB0401.ILE0216.net2743 }
	 [0] xc_tree ILAB0401.ILE0316.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0316.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.ILE0316.net1859 w=0.55 e=switch2=ILAB0401.ILE0316.Is119{ILAB0401.ILE0316.net2656 ILAB0401.ILE0316.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0316.net2680 w=0.85 e=switch2=ILAB0401.ILE0316.Is63{ILAB0401.ILE0316.net0541 ILAB0401.ILE0316.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree net16267<3> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0316.Ivi7{ILAB0401.ILE0316.net1859 net16267<3>} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.ILE0216.B w=1.6 e=switch=ILAB0401.ILE0216.Is131{net16267<3> ILAB0401.ILE0216.B} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree net16248<1> w=1.15 e=inv_8_UCCLAB=ILAB0401.ILE0316.I666{ILAB0401.ILE0316.net2680 net16248<1>} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0402.net30695 w=2.45 e=switch_sd=ILAB0402.ILE0301.Is74{net16248<1> ILAB0402.net30695} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.ILE0216.net2743 w=1.7 e=switch_ds=ILAB0401.ILE0216.Is43{ILAB0401.ILE0216.B ILAB0401.ILE0216.net2743} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0402.ILE0401.net01342 w=2.65 e=inv_4_UCCLAB=ILAB0402.ILE0401.I713{ILAB0402.net30695 ILAB0402.ILE0401.net01342} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0402.ILE0401.B w=3.25 e=switch1_sd=ILAB0402.ILE0401.Is62{ILAB0402.ILE0401.net01342 ILAB0402.ILE0401.B} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0402.ILE0401.net2743 w=3.35 e=switch_ds=ILAB0402.ILE0401.Is43{ILAB0402.ILE0401.B ILAB0402.ILE0401.net2743} prev=[10] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _128_ {
	 xc_pin xci2_nand3 y o [-1] pinInv=0 { ILAB0401.ILE0615.net2656 ILAB0401.ILE0615.net0541 }
	 xc_pin xci2_ao21 a i [8] pinInv=0 { ILAB0401.ILE0616.net2749 }
	 xc_pin xci2_ao21 a i [4] pinInv=0 { ILAB0402.ILE0601.net2749 }
	 [0] xc_tree ILAB0401.ILE0615.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0615.net2685 w=0.55 e=switch2=ILAB0401.ILE0615.Is127{ILAB0401.ILE0615.net2656 ILAB0401.ILE0615.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net16308<3> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0615.Iho1{ILAB0401.ILE0615.net2685 net16308<3>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0402.ILE0601.A w=1.25 e=switch_sd=ILAB0402.ILE0601.Is16{net16308<3> ILAB0402.ILE0601.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0402.ILE0601.net2749 w=1.35 e=switch_ds=ILAB0402.ILE0601.Is41{ILAB0402.ILE0601.A ILAB0402.ILE0601.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.ILE0615.net2635 w=0.55 e=switch2=ILAB0401.ILE0615.Is135{ILAB0401.ILE0615.net2656 ILAB0401.ILE0615.net2635} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree net16308<2> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0615.Iho2{ILAB0401.ILE0615.net2635 net16308<2>} prev=[5] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0401.ILE0616.A w=2.382 e=switch_sd=ILAB0401.ILE0616.Is24{net16308<2> ILAB0401.ILE0616.A} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.ILE0616.net2749 w=2.494 e=switch_ds=ILAB0401.ILE0616.Is41{ILAB0401.ILE0616.A ILAB0401.ILE0616.net2749} prev=[7] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _127_ {
	 xc_pin xci2_nand2 y o [-1] pinInv=0 { ILAB0401.ILE0715.net2656 ILAB0401.ILE0715.net0541 }
	 xc_pin xci2_ao21 c i [17] pinInv=0 { ILAB0402.ILE0101.net2746 }
	 xc_pin xci2_nand3fft b i [7] pinInv=0 { ILAB0401.ILE0914.net2743 }
	 [0] xc_tree ILAB0401.ILE0715.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0715.net1844 w=1 e=switch2=ILAB0401.ILE0715.Is31{ILAB0401.ILE0715.net2656 ILAB0401.ILE0715.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net21487 w=1.35 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0715.Ihi7{ILAB0401.ILE0715.net1844 ILAB0401.net21487} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0714.net2635 w=2.05 e=switch2=ILAB0401.ILE0714.Is135{ILAB0401.net21487 ILAB0401.ILE0714.net2635} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.net22388 w=2.3 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0714.Iho2{ILAB0401.ILE0714.net2635 ILAB0401.net22388} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0401.net19172 w=3.9 e=switch=ILAB0401.ILE0714.Is52{ILAB0401.net22388 ILAB0401.net19172} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0401.ILE0914.B w=4.75 e=switch=ILAB0401.ILE0914.Is115{ILAB0401.net19172 ILAB0401.ILE0914.B} prev=[5] elemInv=0 pathInv=0 v.w=0.1
	 [7] xc_tree ILAB0401.ILE0914.net2743 w=4.85 e=switch_ds=ILAB0401.ILE0914.Is43{ILAB0401.ILE0914.B ILAB0401.ILE0914.net2743} prev=[6] elemInv=0 pathInv=0 v.w=0.1
	 [8] xc_tree ILAB0401.ILE0715.net2685 w=1 e=switch2=ILAB0401.ILE0715.Is127{ILAB0401.ILE0715.net2656 ILAB0401.ILE0715.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [9] xc_tree net16304<3> w=1.35 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0715.Iho1{ILAB0401.ILE0715.net2685 net16304<3>} prev=[8] elemInv=1 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0402.ILE0702.A w=4.45 e=switch=ILAB0402.ILE0702.Is9{net16304<3> ILAB0402.ILE0702.A} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0402.net26464 w=8.3 e=switch=ILAB0402.ILE0702.Is128{ILAB0402.net26464 ILAB0402.ILE0702.A} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0402.ILE0302.net1859 w=9.15 e=switch2=ILAB0402.ILE0302.Is119{ILAB0402.net26464 ILAB0402.ILE0302.net1859} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree net11340<3> w=9.45 e=sw_b_v2_inv_UCCLAB=ILAB0402.ILE0302.Ivi7{ILAB0402.ILE0302.net1859 net11340<3>} prev=[12] elemInv=1 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0402.ILE0102.B w=10.75 e=switch_sd=ILAB0402.ILE0102.Is122{net11340<3> ILAB0402.ILE0102.B} prev=[13] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree net16328<5> w=12.35 e=switch=ILAB0402.ILE0102.Is27{net16328<5> ILAB0402.ILE0102.B} prev=[14] elemInv=0 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB0402.ILE0101.C w=14.378 e=switch_sd=ILAB0402.ILE0101.Is28{net16328<5> ILAB0402.ILE0101.C} prev=[15] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0402.ILE0101.net2746 w=14.526 e=switch_ds=ILAB0402.ILE0101.Is44{ILAB0402.ILE0101.C ILAB0402.ILE0101.net2746} prev=[16] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _126_ {
	 xc_pin xci2_nand3fft y o [-1] pinInv=0 { ILAB0401.ILE0614.net2656 ILAB0401.ILE0614.net0541 }
	 xc_pin xci2_nand2 b i [11] pinInv=0 { ILAB0401.ILE0715.net2746 }
	 xc_pin xci2_nand3 c i [8] pinInv=0 { ILAB0401.ILE0615.net2746 }
	 [0] xc_tree ILAB0401.ILE0614.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0614.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.ILE0614.net2650 w=0.55 e=switch2=ILAB0401.ILE0614.Is143{ILAB0401.ILE0614.net2656 ILAB0401.ILE0614.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0614.net2680 w=0.55 e=switch2=ILAB0401.ILE0614.Is63{ILAB0401.ILE0614.net0541 ILAB0401.ILE0614.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0401.net22119 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0614.Iho3{ILAB0401.ILE0614.net2650 ILAB0401.net22119} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.net19346 w=0.75 e=inv_8_UCCLAB=ILAB0401.ILE0614.I666{ILAB0401.ILE0614.net2680 ILAB0401.net19346} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.ILE0615.C w=1.25 e=switch_sd=ILAB0401.ILE0615.Is36{ILAB0401.net22119 ILAB0401.ILE0615.C} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0401.net24173 w=2.05 e=switch_sd=ILAB0401.ILE0615.Is76{ILAB0401.net19346 ILAB0401.net24173} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.ILE0615.net2746 w=1.35 e=switch_ds=ILAB0401.ILE0615.Is44{ILAB0401.ILE0615.C ILAB0401.ILE0615.net2746} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0401.ILE0715.net01339 w=2.25 e=inv_4_UCCLAB=ILAB0401.ILE0715.I715{ILAB0401.net24173 ILAB0401.ILE0715.net01339} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0401.ILE0715.C w=2.85 e=switch1_sd=ILAB0401.ILE0715.Is70{ILAB0401.ILE0715.net01339 ILAB0401.ILE0715.C} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0401.ILE0715.net2746 w=2.95 e=switch_ds=ILAB0401.ILE0715.Is44{ILAB0401.ILE0715.C ILAB0401.ILE0715.net2746} prev=[10] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _125_ {
	 xc_pin xci2_nand2 y o [-1] pinInv=0 { ILAB0401.ILE0415.net2656 ILAB0401.ILE0415.net0541 }
	 xc_pin xci2_nand3fft c i [12] pinInv=0 { ILAB0401.ILE0614.net2746 }
	 xc_pin xci2_nand3fft a i [11] pinInv=0 { ILAB0401.ILE0713.net2749 }
	 [0] xc_tree ILAB0401.ILE0415.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0415.net1838 w=0.7 e=switch2=ILAB0401.ILE0415.Is47{ILAB0401.ILE0415.net2656 ILAB0401.ILE0415.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.ILE0415.net1844 w=1 e=switch2=ILAB0401.ILE0415.Is31{ILAB0401.ILE0415.net2656 ILAB0401.ILE0415.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0401.net26078 w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0415.Ihi5{ILAB0401.ILE0415.net1838 ILAB0401.net26078} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.net19867 w=1.35 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0415.Ihi7{ILAB0401.ILE0415.net1844 ILAB0401.net19867} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.ILE0414.net2635 w=2.05 e=switch2=ILAB0401.ILE0414.Is135{ILAB0401.net19867 ILAB0401.ILE0414.net2635} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.net19238 w=2.3 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0414.Iho2{ILAB0401.ILE0414.net2635 ILAB0401.net19238} prev=[5] elemInv=1 pathInv=0 v.w=0.1
	 [7] xc_tree ILAB0401.net22549 w=4.606 e=switch=ILAB0401.ILE0413.Is37{ILAB0401.net26078 ILAB0401.net22549} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.net22142 w=5.1 e=switch=ILAB0401.ILE0414.Is52{ILAB0401.net19238 ILAB0401.net22142} prev=[6] elemInv=0 pathInv=0 v.w=0.1
	 [9] xc_tree ILAB0401.ILE0713.A w=5.468 e=switch=ILAB0401.ILE0713.Is129{ILAB0401.net22549 ILAB0401.ILE0713.A} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0401.ILE0614.C w=5.962 e=switch=ILAB0401.ILE0614.Is117{ILAB0401.net22142 ILAB0401.ILE0614.C} prev=[8] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0401.ILE0713.net2749 w=5.58 e=switch_ds=ILAB0401.ILE0713.Is41{ILAB0401.ILE0713.A ILAB0401.ILE0713.net2749} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0401.ILE0614.net2746 w=6.074 e=switch_ds=ILAB0401.ILE0614.Is44{ILAB0401.ILE0614.C ILAB0401.ILE0614.net2746} prev=[10] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _124_ {
	 xc_pin xci2_and3fft y o [-1] pinInv=0 { ILAB0402.ILE0301.net2656 ILAB0402.ILE0301.net0541 }
	 xc_pin xci2_nand2 b i [5] pinInv=0 { ILAB0401.ILE0415.net2746 }
	 [0] xc_tree ILAB0402.ILE0301.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0402.ILE0301.net1838 w=0.7 e=switch2=ILAB0402.ILE0301.Is47{ILAB0402.ILE0301.net2656 ILAB0402.ILE0301.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net16320<2> w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0402.ILE0301.Ihi5{ILAB0402.ILE0301.net1838 net16320<2>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.net24214 w=2.55 e=switch=ILAB0401.ILE0315.Is37{net16320<2> ILAB0401.net24214} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0415.C w=3.05 e=switch_sd=ILAB0401.ILE0415.Is125{ILAB0401.net24214 ILAB0401.ILE0415.C} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.ILE0415.net2746 w=3.15 e=switch_ds=ILAB0401.ILE0415.Is44{ILAB0401.ILE0415.C ILAB0401.ILE0415.net2746} prev=[4] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _123_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0401.ILE0315.net2656 ILAB0401.ILE0315.net0541 }
	 xc_pin xci2_nand2 a i [15] pinInv=0 { ILAB0401.ILE0415.net2749 }
	 xc_pin xci2_and2 b i [8] pinInv=0 { ILAB0401.ILE0316.net2746 }
	 xc_pin xci2_xnor2ft b i [11] pinInv=0 { ILAB0401.ILE0416.net2743 }
	 [0] xc_tree ILAB0401.ILE0315.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0315.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.ILE0315.net2685 w=0.55 e=switch2=ILAB0401.ILE0315.Is127{ILAB0401.ILE0315.net2656 ILAB0401.ILE0315.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0315.net2680 w=0.55 e=switch2=ILAB0401.ILE0315.Is63{ILAB0401.ILE0315.net0541 ILAB0401.ILE0315.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree net16320<3> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0315.Iho1{ILAB0401.ILE0315.net2685 net16320<3>} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.net23801 w=0.75 e=inv_8_UCCLAB=ILAB0401.ILE0315.I666{ILAB0401.ILE0315.net2680 ILAB0401.net23801} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.ILE0316.C w=1.25 e=switch_sd=ILAB0401.ILE0316.Is21{net16320<3> ILAB0401.ILE0316.C} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0401.net17290 w=2.05 e=switch_sd=ILAB0401.ILE0316.Is74{ILAB0401.net23801 ILAB0401.net17290} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.ILE0316.net2746 w=1.35 e=switch_ds=ILAB0401.ILE0316.Is44{ILAB0401.ILE0316.C ILAB0401.ILE0316.net2746} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0401.ILE0416.net01342 w=2.25 e=inv_4_UCCLAB=ILAB0401.ILE0416.I713{ILAB0401.net17290 ILAB0401.ILE0416.net01342} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0401.ILE0416.B w=2.85 e=switch1_sd=ILAB0401.ILE0416.Is62{ILAB0401.ILE0416.net01342 ILAB0401.ILE0416.B} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0401.ILE0416.net2743 w=2.95 e=switch_ds=ILAB0401.ILE0416.Is43{ILAB0401.ILE0416.B ILAB0401.ILE0416.net2743} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0401.ILE0315.net2670 w=0.55 e=switch2=ILAB0401.ILE0315.Is7{ILAB0401.ILE0315.net2656 ILAB0401.ILE0315.net2670} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0401.net22365 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0315.Ivo3{ILAB0401.ILE0315.net2670 ILAB0401.net22365} prev=[12] elemInv=1 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0401.ILE0415.A w=1.262 e=switch_sd=ILAB0401.ILE0415.Is104{ILAB0401.net22365 ILAB0401.ILE0415.A} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0401.ILE0415.net2749 w=1.374 e=switch_ds=ILAB0401.ILE0415.Is41{ILAB0401.ILE0415.A ILAB0401.ILE0415.net2749} prev=[14] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _122_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0402.ILE0701.net2656 ILAB0402.ILE0701.net0541 }
	 xc_pin xci2_ao21 c i [6] pinInv=0 { ILAB0401.ILE0616.net2746 }
	 [0] xc_tree ILAB0402.ILE0701.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0402.ILE0701.net2680 w=0.85 e=switch2=ILAB0402.ILE0701.Is63{ILAB0402.ILE0701.net0541 ILAB0402.ILE0701.net2680} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net16244<0> w=1.15 e=inv_8_UCCLAB=ILAB0402.ILE0701.I666{ILAB0402.ILE0701.net2680 net16244<0>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.net19281 w=2.45 e=switch_sd=ILAB0401.ILE0716.Is93{net16244<0> ILAB0401.net19281} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0616.net0558 w=2.65 e=inv_4_UCCLAB=ILAB0401.ILE0616.I710{ILAB0401.net19281 ILAB0401.ILE0616.net0558} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0401.ILE0616.C w=3.442 e=switch1_sd=ILAB0401.ILE0616.Is78{ILAB0401.ILE0616.net0558 ILAB0401.ILE0616.C} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0401.ILE0616.net2746 w=3.566 e=switch_ds=ILAB0401.ILE0616.Is44{ILAB0401.ILE0616.C ILAB0401.ILE0616.net2746} prev=[5] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _026_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0401.ILE0213.net2656 ILAB0401.ILE0213.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0401.ILE0313.net2749 }
	 [0] xc_tree ILAB0401.ILE0213.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0213.net2670 w=0.55 e=switch2=ILAB0401.ILE0213.Is7{ILAB0401.ILE0213.net2656 ILAB0401.ILE0213.net2670} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net23175 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0213.Ivo3{ILAB0401.ILE0213.net2670 ILAB0401.net23175} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0313.A w=1.262 e=switch_sd=ILAB0401.ILE0313.Is104{ILAB0401.net23175 ILAB0401.ILE0313.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0313.net2749 w=1.374 e=switch_ds=ILAB0401.ILE0313.Is41{ILAB0401.ILE0313.A ILAB0401.ILE0313.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _121_ {
	 xc_pin xci2_nand3ftt y o [-1] pinInv=0 { ILAB0401.ILE0214.net2656 ILAB0401.ILE0214.net0541 }
	 xc_pin xci2_xnor2 b i [4] pinInv=0 { ILAB0401.ILE0213.net2743 }
	 [0] xc_tree ILAB0401.ILE0214.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0214.net1844 w=0.55 e=switch2=ILAB0401.ILE0214.Is31{ILAB0401.ILE0214.net2656 ILAB0401.ILE0214.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net25537 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0214.Ihi7{ILAB0401.ILE0214.net1844 ILAB0401.net25537} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0213.B w=1.6 e=switch=ILAB0401.ILE0213.Is11{ILAB0401.net25537 ILAB0401.ILE0213.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0213.net2743 w=1.7 e=switch_ds=ILAB0401.ILE0213.Is43{ILAB0401.ILE0213.B ILAB0401.ILE0213.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _025_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0401.ILE0212.net2656 ILAB0401.ILE0212.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0401.ILE0312.net2749 }
	 [0] xc_tree ILAB0401.ILE0212.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0212.net2670 w=0.55 e=switch2=ILAB0401.ILE0212.Is7{ILAB0401.ILE0212.net2656 ILAB0401.ILE0212.net2670} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net24930 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0212.Ivo3{ILAB0401.ILE0212.net2670 ILAB0401.net24930} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0312.A w=1.262 e=switch_sd=ILAB0401.ILE0312.Is104{ILAB0401.net24930 ILAB0401.ILE0312.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0312.net2749 w=1.374 e=switch_ds=ILAB0401.ILE0312.Is41{ILAB0401.ILE0312.A ILAB0401.ILE0312.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _120_ {
	 xc_pin xci2_aoi21 y o [-1] pinInv=0 { ILAB0401.ILE0512.net2656 ILAB0401.ILE0512.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0401.ILE0212.net2746 }
	 [0] xc_tree ILAB0401.ILE0512.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0512.net1859 w=0.55 e=switch2=ILAB0401.ILE0512.Is119{ILAB0401.ILE0512.net2656 ILAB0401.ILE0512.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net19084 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0512.Ivi7{ILAB0401.ILE0512.net1859 ILAB0401.net19084} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0212.C w=1.25 e=switch_sd=ILAB0401.ILE0212.Is125{ILAB0401.net19084 ILAB0401.ILE0212.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0212.net2746 w=1.35 e=switch_ds=ILAB0401.ILE0212.Is44{ILAB0401.ILE0212.C ILAB0401.ILE0212.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _119_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0401.ILE0612.net2656 ILAB0401.ILE0612.net0541 }
	 xc_pin xci2_aoi21 b i [4] pinInv=0 { ILAB0401.ILE0512.net2743 }
	 [0] xc_tree ILAB0401.ILE0612.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0612.net1859 w=0.55 e=switch2=ILAB0401.ILE0612.Is119{ILAB0401.ILE0612.net2656 ILAB0401.ILE0612.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net19714 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0612.Ivi7{ILAB0401.ILE0612.net1859 ILAB0401.net19714} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0512.B w=1.6 e=switch=ILAB0401.ILE0512.Is131{ILAB0401.net19714 ILAB0401.ILE0512.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0512.net2743 w=1.7 e=switch_ds=ILAB0401.ILE0512.Is43{ILAB0401.ILE0512.B ILAB0401.ILE0512.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _118_ {
	 xc_pin xci2_nand3fft y o [-1] pinInv=0 { ILAB0401.ILE0613.net2656 ILAB0401.ILE0613.net0541 }
	 xc_pin xci2_nand2 a i [16] pinInv=0 { ILAB0401.ILE0715.net2749 }
	 xc_pin xci2_nand3 b i [13] pinInv=0 { ILAB0401.ILE0615.net2743 }
	 xc_pin xci2_oa21 c i [7] pinInv=0 { ILAB0401.ILE0714.net2746 }
	 [0] xc_tree ILAB0401.ILE0613.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0613.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.ILE0613.net2680 w=0.85 e=switch2=ILAB0401.ILE0613.Is63{ILAB0401.ILE0613.net0541 ILAB0401.ILE0613.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0401.net19706 w=1.15 e=inv_8_UCCLAB=ILAB0401.ILE0613.I666{ILAB0401.ILE0613.net2680 ILAB0401.net19706} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.net22373 w=2.45 e=switch_sd=ILAB0401.ILE0614.Is76{ILAB0401.net19706 ILAB0401.net22373} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.ILE0714.net01339 w=2.65 e=inv_4_UCCLAB=ILAB0401.ILE0714.I715{ILAB0401.net22373 ILAB0401.ILE0714.net01339} prev=[4] elemInv=1 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0401.ILE0714.C w=3.25 e=switch1_sd=ILAB0401.ILE0714.Is70{ILAB0401.ILE0714.net01339 ILAB0401.ILE0714.C} prev=[5] elemInv=0 pathInv=0 v.w=0.1
	 [7] xc_tree ILAB0401.ILE0714.net2746 w=3.35 e=switch_ds=ILAB0401.ILE0714.Is44{ILAB0401.ILE0714.C ILAB0401.ILE0714.net2746} prev=[6] elemInv=0 pathInv=0 v.w=0.1
	 [8] xc_tree ILAB0401.ILE0613.net2635 w=0.55 e=switch2=ILAB0401.ILE0613.Is135{ILAB0401.ILE0613.net2656 ILAB0401.ILE0613.net2635} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [9] xc_tree ILAB0401.net19328 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0613.Iho2{ILAB0401.ILE0613.net2635 ILAB0401.net19328} prev=[8] elemInv=1 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0401.ILE0615.B w=1.612 e=switch=ILAB0401.ILE0615.Is27{ILAB0401.net19328 ILAB0401.ILE0615.B} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0401.ILE0615.net2650 w=1.45 e=switch2=ILAB0401.ILE0615.Is143{ILAB0401.net19328 ILAB0401.ILE0615.net2650} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0401.net23964 w=1.7 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0615.Iho3{ILAB0401.ILE0615.net2650 ILAB0401.net23964} prev=[11] elemInv=1 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0401.ILE0615.net2743 w=1.724 e=switch_ds=ILAB0401.ILE0615.Is43{ILAB0401.ILE0615.B ILAB0401.ILE0615.net2743} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0401.net24484 w=3.3 e=switch=ILAB0401.ILE0615.Is45{ILAB0401.net23964 ILAB0401.net24484} prev=[12] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0401.ILE0715.A w=4.932 e=switch_sd=ILAB0401.ILE0715.Is121{ILAB0401.net24484 ILAB0401.ILE0715.A} prev=[14] elemInv=0 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB0401.ILE0715.net2749 w=5.044 e=switch_ds=ILAB0401.ILE0715.Is41{ILAB0401.ILE0715.A ILAB0401.ILE0715.net2749} prev=[15] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _117_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0401.ILE0513.net2656 ILAB0401.ILE0513.net0541 }
	 xc_pin xci2_nand3fft a i [16] pinInv=0 { ILAB0401.ILE0613.net2749 }
	 xc_pin xci2_ao21 b i [12] pinInv=0 { ILAB0401.ILE0612.net2743 }
	 xc_pin xci2_nand3 c i [11] pinInv=0 { ILAB0401.ILE0611.net2746 }
	 [0] xc_tree ILAB0401.ILE0513.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0513.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.ILE0513.net1838 w=0.7 e=switch2=ILAB0401.ILE0513.Is47{ILAB0401.ILE0513.net2656 ILAB0401.ILE0513.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0513.net2680 w=0.85 e=switch2=ILAB0401.ILE0513.Is63{ILAB0401.ILE0513.net0541 ILAB0401.ILE0513.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0401.net20363 w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0513.Ihi5{ILAB0401.ILE0513.net1838 ILAB0401.net20363} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.net19076 w=1.15 e=inv_8_UCCLAB=ILAB0401.ILE0513.I666{ILAB0401.ILE0513.net2680 ILAB0401.net19076} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.net21512 w=2.55 e=switch=ILAB0401.ILE0511.Is52{ILAB0401.net20363 ILAB0401.net21512} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0401.net19675 w=2.45 e=switch_sd=ILAB0401.ILE0512.Is98{ILAB0401.net19076 ILAB0401.net19675} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.ILE0612.net01342 w=2.65 e=inv_4_UCCLAB=ILAB0401.ILE0612.I713{ILAB0401.net19675 ILAB0401.ILE0612.net01342} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [9] xc_tree ILAB0401.ILE0611.C w=3.05 e=switch_sd=ILAB0401.ILE0611.Is116{ILAB0401.net21512 ILAB0401.ILE0611.C} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0401.ILE0612.B w=3.25 e=switch1_sd=ILAB0401.ILE0612.Is62{ILAB0401.ILE0612.net01342 ILAB0401.ILE0612.B} prev=[8] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0401.ILE0611.net2746 w=3.15 e=switch_ds=ILAB0401.ILE0611.Is44{ILAB0401.ILE0611.C ILAB0401.ILE0611.net2746} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0401.ILE0612.net2743 w=3.35 e=switch_ds=ILAB0401.ILE0612.Is43{ILAB0401.ILE0612.B ILAB0401.ILE0612.net2743} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0401.ILE0513.net2670 w=0.55 e=switch2=ILAB0401.ILE0513.Is7{ILAB0401.ILE0513.net2656 ILAB0401.ILE0513.net2670} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0401.net19350 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0513.Ivo3{ILAB0401.ILE0513.net2670 ILAB0401.net19350} prev=[13] elemInv=1 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0401.ILE0613.A w=1.274 e=switch_sd=ILAB0401.ILE0613.Is104{ILAB0401.net19350 ILAB0401.ILE0613.A} prev=[14] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0401.ILE0613.net2749 w=1.398 e=switch_ds=ILAB0401.ILE0613.Is41{ILAB0401.ILE0613.A ILAB0401.ILE0613.net2749} prev=[15] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _116_ {
	 xc_pin xci2_xnor2 y o [-1] pinInv=0 { ILAB0401.ILE0412.net2656 ILAB0401.ILE0412.net0541 }
	 xc_pin xci2_aoi21 c i [4] pinInv=0 { ILAB0401.ILE0512.net2746 }
	 [0] xc_tree ILAB0401.ILE0412.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0412.net2660 w=0.55 e=switch2=ILAB0401.ILE0412.Is23{ILAB0401.ILE0412.net2656 ILAB0401.ILE0412.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net18679 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0412.Ivo1{ILAB0401.ILE0412.net2660 ILAB0401.net18679} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0512.C w=1.25 e=switch_sd=ILAB0401.ILE0512.Is125{ILAB0401.net18679 ILAB0401.ILE0512.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0512.net2746 w=1.35 e=switch_ds=ILAB0401.ILE0512.Is44{ILAB0401.ILE0512.C ILAB0401.ILE0512.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _024_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0401.ILE0114.net2656 ILAB0401.ILE0114.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0401.ILE0113.net2749 }
	 [0] xc_tree ILAB0401.ILE0114.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0114.net1844 w=0.55 e=switch2=ILAB0401.ILE0114.Is31{ILAB0401.ILE0114.net2656 ILAB0401.ILE0114.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net25267 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0114.Ihi7{ILAB0401.ILE0114.net1844 ILAB0401.net25267} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0113.A w=1.6 e=switch=ILAB0401.ILE0113.Is9{ILAB0401.net25267 ILAB0401.ILE0113.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0113.net2749 w=1.7 e=switch_ds=ILAB0401.ILE0113.Is41{ILAB0401.ILE0113.A ILAB0401.ILE0113.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _115_ {
	 xc_pin xci2_and2 y o [-1] pinInv=0 { ILAB0401.ILE0116.net2656 ILAB0401.ILE0116.net0541 }
	 xc_pin xci2_mux2h b i [14] pinInv=0 { ILAB0401.ILE0114.net2746 }
	 xc_pin xci2_ao21 b i [10] pinInv=0 { ILAB0401.ILE0212.net2743 }
	 xc_pin xci2_nand3ftt a i [16] pinInv=0 { ILAB0401.ILE0214.net2749 }
	 xc_pin xci2_nand3ftt a i [8] pinInv=0 { ILAB0401.ILE0216.net2749 }
	 [0] xc_tree ILAB0401.ILE0116.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0116.net2660 w=0.55 e=switch2=ILAB0401.ILE0116.Is23{ILAB0401.ILE0116.net2656 ILAB0401.ILE0116.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.ILE0116.net1838 w=0.7 e=switch2=ILAB0401.ILE0116.Is47{ILAB0401.ILE0116.net2656 ILAB0401.ILE0116.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0116.net1844 w=0.55 e=switch2=ILAB0401.ILE0116.Is31{ILAB0401.ILE0116.net2656 ILAB0401.ILE0116.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0401.net17014 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0116.Ivo1{ILAB0401.ILE0116.net2660 ILAB0401.net17014} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.net21892 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0116.Ihi7{ILAB0401.ILE0116.net1844 ILAB0401.net21892} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.ILE0216.A w=1.25 e=switch_sd=ILAB0401.ILE0216.Is121{ILAB0401.net17014 ILAB0401.ILE0216.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0401.net24932 w=2.35 e=switch=ILAB0401.ILE0112.Is51{ILAB0401.net21892 ILAB0401.net24932} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.ILE0216.net2749 w=1.35 e=switch_ds=ILAB0401.ILE0216.Is41{ILAB0401.ILE0216.A ILAB0401.ILE0216.net2749} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0401.ILE0212.B w=2.85 e=switch_sd=ILAB0401.ILE0212.Is114{ILAB0401.net24932 ILAB0401.ILE0212.B} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0401.ILE0212.net2743 w=2.95 e=switch_ds=ILAB0401.ILE0212.Is43{ILAB0401.ILE0212.B ILAB0401.ILE0212.net2743} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0401.net23648 w=1.046 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0116.Ihi5{ILAB0401.ILE0116.net1838 ILAB0401.net23648} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0401.ILE0114.C w=1.346 e=switch_sd=ILAB0401.ILE0114.Is20{ILAB0401.net21892 ILAB0401.ILE0114.C} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0401.net23760 w=2.646 e=switch=ILAB0401.ILE0114.Is49{ILAB0401.net23648 ILAB0401.net23760} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0401.ILE0114.net2746 w=1.458 e=switch_ds=ILAB0401.ILE0114.Is44{ILAB0401.ILE0114.C ILAB0401.ILE0114.net2746} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0401.ILE0214.A w=3.158 e=switch_sd=ILAB0401.ILE0214.Is104{ILAB0401.net23760 ILAB0401.ILE0214.A} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0401.ILE0214.net2749 w=3.27 e=switch_ds=ILAB0401.ILE0214.Is41{ILAB0401.ILE0214.A ILAB0401.ILE0214.net2749} prev=[15] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _114_ {
	 xc_pin xci2_ao21ftf y o [-1] pinInv=0 { ILAB0401.ILE0115.net2656 ILAB0401.ILE0115.net0541 }
	 xc_pin xci2_mux2h a i [4] pinInv=0 { ILAB0401.ILE0114.net2749 }
	 [0] xc_tree ILAB0401.ILE0115.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0115.net1844 w=0.55 e=switch2=ILAB0401.ILE0115.Is31{ILAB0401.ILE0115.net2656 ILAB0401.ILE0115.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net23197 w=0.846 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0115.Ihi7{ILAB0401.ILE0115.net1844 ILAB0401.net23197} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0114.A w=1.708 e=switch=ILAB0401.ILE0114.Is9{ILAB0401.net23197 ILAB0401.ILE0114.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0114.net2749 w=1.82 e=switch_ds=ILAB0401.ILE0114.Is41{ILAB0401.ILE0114.A ILAB0401.ILE0114.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _113_ {
	 xc_pin xci2_nand2ft y o [-1] pinInv=0 { ILAB0401.ILE0515.net2656 ILAB0401.ILE0515.net0541 }
	 xc_pin xci2_aoi21 a i [10] pinInv=0 { ILAB0401.ILE0512.net2749 }
	 xc_pin xci2_nand3 a i [4] pinInv=0 { ILAB0401.ILE0615.net2749 }
	 [0] xc_tree ILAB0401.ILE0515.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0515.net2660 w=0.55 e=switch2=ILAB0401.ILE0515.Is23{ILAB0401.ILE0515.net2656 ILAB0401.ILE0515.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net22189 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0515.Ivo1{ILAB0401.ILE0515.net2660 ILAB0401.net22189} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0615.A w=1.25 e=switch_sd=ILAB0401.ILE0615.Is121{ILAB0401.net22189 ILAB0401.ILE0615.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0615.net2749 w=1.35 e=switch_ds=ILAB0401.ILE0615.Is41{ILAB0401.ILE0615.A ILAB0401.ILE0615.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.ILE0515.net1838 w=0.85 e=switch2=ILAB0401.ILE0515.Is47{ILAB0401.ILE0515.net2656 ILAB0401.ILE0515.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0401.net18293 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0515.Ihi5{ILAB0401.ILE0515.net1838 ILAB0401.net18293} prev=[5] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0401.ILE0513.net1832 w=1.7 e=switch2=ILAB0401.ILE0513.Is39{ILAB0401.net18293 ILAB0401.ILE0513.net1832} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.net23917 w=1.9 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0513.Ihi6{ILAB0401.ILE0513.net1832 ILAB0401.net23917} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [9] xc_tree ILAB0401.ILE0512.A w=2.412 e=switch_sd=ILAB0401.ILE0512.Is16{ILAB0401.net23917 ILAB0401.ILE0512.A} prev=[8] elemInv=0 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0401.ILE0512.net2749 w=2.524 e=switch_ds=ILAB0401.ILE0512.Is41{ILAB0401.ILE0512.A ILAB0401.ILE0512.net2749} prev=[9] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _112_ {
	 xc_pin xci2_nand3 y o [-1] pinInv=0 { ILAB0401.ILE0514.net2656 ILAB0401.ILE0514.net0541 }
	 xc_pin xci2_nand2ft b i [7] pinInv=0 { ILAB0401.ILE0515.net2746 }
	 xc_pin xci2_ao21ftf b i [20] pinInv=0 { ILAB0401.ILE0115.net2743 }
	 xc_pin xci2_oa21 b i [15] pinInv=0 { ILAB0401.ILE0714.net2743 }
	 xc_pin xci2_mux2h a i [11] pinInv=0 { ILAB0302.ILE1601.net2749 }
	 [0] xc_tree ILAB0401.ILE0514.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0514.net2685 w=0.55 e=switch2=ILAB0401.ILE0514.Is127{ILAB0401.ILE0514.net2656 ILAB0401.ILE0514.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.ILE0514.net1850 w=0.85 e=switch2=ILAB0401.ILE0514.Is103{ILAB0401.ILE0514.net2656 ILAB0401.ILE0514.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree net16312<1> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0514.Iho1{ILAB0401.ILE0514.net2685 net16312<1>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0515.C w=1.25 e=switch_sd=ILAB0401.ILE0515.Is21{net16312<1> ILAB0401.ILE0515.C} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.net19802 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0514.Ivi5{ILAB0401.ILE0514.net1850 ILAB0401.net19802} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.ILE0314.net1862 w=1.85 e=switch2=ILAB0401.ILE0314.Is111{ILAB0401.net19802 ILAB0401.ILE0314.net1862} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0401.ILE0515.net2746 w=1.35 e=switch_ds=ILAB0401.ILE0515.Is44{ILAB0401.ILE0515.C ILAB0401.ILE0515.net2746} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree net16275<6> w=2.1 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0314.Ivi6{ILAB0401.ILE0314.net1862 net16275<6>} prev=[6] elemInv=1 pathInv=0 v.w=0.1
	 [9] xc_tree net16419<1> w=3.7 e=switch=ILAB0301.ILE1614.Is35{net16419<1> net16275<6>} prev=[8] elemInv=0 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0302.ILE1601.A w=4.55 e=switch=ILAB0302.ILE1601.Is9{net16419<1> ILAB0302.ILE1601.A} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0302.ILE1601.net2749 w=4.65 e=switch_ds=ILAB0302.ILE1601.Is41{ILAB0302.ILE1601.A ILAB0302.ILE1601.net2749} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0401.ILE0514.net2695 w=0.55 e=switch2=ILAB0401.ILE0514.Is15{ILAB0401.ILE0514.net2656 ILAB0401.ILE0514.net2695} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0401.net22412 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0514.Ivo2{ILAB0401.ILE0514.net2695 ILAB0401.net22412} prev=[12] elemInv=1 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0401.ILE0714.B w=1.696 e=switch=ILAB0401.ILE0714.Is115{ILAB0401.net22412 ILAB0401.ILE0714.B} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0401.ILE0714.net2743 w=1.808 e=switch_ds=ILAB0401.ILE0714.Is43{ILAB0401.ILE0714.B ILAB0401.ILE0714.net2743} prev=[14] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0401.ILE0514.net1859 w=0.7 e=switch2=ILAB0401.ILE0514.Is119{ILAB0401.ILE0514.net2656 ILAB0401.ILE0514.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0401.net19804 w=2.214 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0514.Ivi7{ILAB0401.ILE0514.net1859 ILAB0401.net19804} prev=[16] elemInv=1 pathInv=1 v.w=0.1
	 [18] xc_tree ILAB0401.net23649 w=3.838 e=switch=ILAB0401.ILE0114.Is45{ILAB0401.net23649 ILAB0401.net19804} prev=[17] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0401.ILE0115.B w=4.362 e=switch_sd=ILAB0401.ILE0115.Is34{ILAB0401.net23649 ILAB0401.ILE0115.B} prev=[18] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0401.ILE0115.net2743 w=4.486 e=switch_ds=ILAB0401.ILE0115.Is43{ILAB0401.ILE0115.B ILAB0401.ILE0115.net2743} prev=[19] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _111_ {
	 xc_pin xci2_and2 y o [-1] pinInv=0 { ILAB0401.ILE0516.net2656 ILAB0401.ILE0516.net0541 }
	 xc_pin xci2_nand3 c i [6] pinInv=0 { ILAB0401.ILE0514.net2746 }
	 xc_pin xci2_and3 c i [5] pinInv=0 { ILAB0401.ILE0513.net2746 }
	 [0] xc_tree ILAB0401.ILE0516.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0516.net1844 w=0.55 e=switch2=ILAB0401.ILE0516.Is31{ILAB0401.ILE0516.net2656 ILAB0401.ILE0516.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net19057 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0516.Ihi7{ILAB0401.ILE0516.net1844 ILAB0401.net19057} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0514.C w=1.25 e=switch_sd=ILAB0401.ILE0514.Is20{ILAB0401.net19057 ILAB0401.ILE0514.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0513.C w=1.25 e=switch_sd=ILAB0401.ILE0513.Is21{ILAB0401.net19057 ILAB0401.ILE0513.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.ILE0513.net2746 w=1.35 e=switch_ds=ILAB0401.ILE0513.Is44{ILAB0401.ILE0513.C ILAB0401.ILE0513.net2746} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.ILE0514.net2746 w=1.35 e=switch_ds=ILAB0401.ILE0514.Is44{ILAB0401.ILE0514.C ILAB0401.ILE0514.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _110_ {
	 xc_pin xci2_and2ft y o [-1] pinInv=0 { ILAB0401.ILE0414.net2656 ILAB0401.ILE0414.net0541 }
	 xc_pin xci2_nand3 b i [4] pinInv=0 { ILAB0401.ILE0514.net2743 }
	 [0] xc_tree ILAB0401.ILE0414.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0414.net2660 w=0.55 e=switch2=ILAB0401.ILE0414.Is23{ILAB0401.ILE0414.net2656 ILAB0401.ILE0414.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net18904 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0414.Ivo1{ILAB0401.ILE0414.net2660 ILAB0401.net18904} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0514.B w=1.25 e=switch_sd=ILAB0401.ILE0514.Is123{ILAB0401.net18904 ILAB0401.ILE0514.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0514.net2743 w=1.35 e=switch_ds=ILAB0401.ILE0514.Is43{ILAB0401.ILE0514.B ILAB0401.ILE0514.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _109_ {
	 xc_pin xci2_nand3ftt y o [-1] pinInv=0 { ILAB0401.ILE0712.net2656 ILAB0401.ILE0712.net0541 }
	 xc_pin xci2_nand2ft a i [22] pinInv=0 { ILAB0401.ILE0515.net2749 }
	 xc_pin xci2_ao21ftf a i [29] pinInv=0 { ILAB0401.ILE0115.net2749 }
	 xc_pin xci2_and2 b i [40] pinInv=0 { ILAB0401.ILE0116.net2746 }
	 xc_pin xci2_and3 c i [14] pinInv=0 { ILAB0402.ILE0701.net2746 }
	 xc_pin xci2_and3 c i [20] pinInv=0 { ILAB0402.ILE0501.net2746 }
	 xc_pin xci2_oa21 a i [8] pinInv=0 { ILAB0401.ILE0714.net2749 }
	 xc_pin xci2_nand3 a i [7] pinInv=0 { ILAB0401.ILE0711.net2749 }
	 xc_pin xci2_mux2h s i [26] pinInv=0 { ILAB0302.ILE1601.net2743 }
	 [0] xc_tree ILAB0401.ILE0712.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0712.net2635 w=0.55 e=switch2=ILAB0401.ILE0712.Is135{ILAB0401.ILE0712.net2656 ILAB0401.ILE0712.net2635} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.ILE0712.net1832 w=0.55 e=switch2=ILAB0401.ILE0712.Is39{ILAB0401.ILE0712.net2656 ILAB0401.ILE0712.net1832} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0401.net19913 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0712.Iho2{ILAB0401.ILE0712.net2635 ILAB0401.net19913} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.net15637 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0712.Ihi6{ILAB0401.ILE0712.net1832 ILAB0401.net15637} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.ILE0711.A w=1.25 e=switch_sd=ILAB0401.ILE0711.Is16{ILAB0401.net15637 ILAB0401.ILE0711.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.ILE0714.A w=1.6 e=switch=ILAB0401.ILE0714.Is25{ILAB0401.net19913 ILAB0401.ILE0714.A} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0401.ILE0711.net2749 w=1.35 e=switch_ds=ILAB0401.ILE0711.Is41{ILAB0401.ILE0711.A ILAB0401.ILE0711.net2749} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.ILE0714.net2749 w=1.7 e=switch_ds=ILAB0401.ILE0714.Is41{ILAB0401.ILE0714.A ILAB0401.ILE0714.net2749} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0401.ILE0713.net2685 w=1.3 e=switch2=ILAB0401.ILE0713.Is127{ILAB0401.net15637 ILAB0401.ILE0713.net2685} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree net16304<0> w=1.596 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0713.Iho1{ILAB0401.ILE0713.net2685 net16304<0>} prev=[9] elemInv=1 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0401.ILE0715.B w=2.896 e=switch_sd=ILAB0401.ILE0715.Is18{net16304<0> ILAB0401.ILE0715.B} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0402.ILE0701.C w=2.458 e=switch=ILAB0402.ILE0701.Is12{net16304<0> ILAB0402.ILE0701.C} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0402.net20704 w=4.058 e=switch=ILAB0402.ILE0701.Is133{ILAB0402.net20704 ILAB0402.ILE0701.C} prev=[12] elemInv=0 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0402.ILE0701.net2746 w=2.57 e=switch_ds=ILAB0402.ILE0701.Is44{ILAB0402.ILE0701.C ILAB0402.ILE0701.net2746} prev=[12] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0401.net22099 w=4.496 e=switch=ILAB0401.ILE0715.Is131{ILAB0401.net22099 ILAB0401.ILE0715.B} prev=[11] elemInv=0 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB0402.ILE0401.net1859 w=4.908 e=switch2=ILAB0402.ILE0401.Is119{ILAB0402.net20704 ILAB0402.ILE0401.net1859} prev=[13] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0402.ILE0501.C w=4.57 e=switch_sd=ILAB0402.ILE0501.Is125{ILAB0402.net20704 ILAB0402.ILE0501.C} prev=[13] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0401.ILE0515.A w=5.008 e=switch_sd=ILAB0401.ILE0515.Is121{ILAB0401.net22099 ILAB0401.ILE0515.A} prev=[15] elemInv=0 pathInv=0 v.w=0.1
	 [19] xc_tree ILAB0401.ILE0415.net1859 w=5.046 e=switch2=ILAB0401.ILE0415.Is119{ILAB0401.net22099 ILAB0401.ILE0415.net1859} prev=[15] elemInv=0 pathInv=0 v.w=0.1
	 [20] xc_tree ILAB0402.ILE0501.net2746 w=4.682 e=switch_ds=ILAB0402.ILE0501.Is44{ILAB0402.ILE0501.C ILAB0402.ILE0501.net2746} prev=[17] elemInv=0 pathInv=0 v.w=0.1
	 [21] xc_tree net11344<6> w=5.208 e=sw_b_v2_inv_UCCLAB=ILAB0402.ILE0401.Ivi7{ILAB0402.ILE0401.net1859 net11344<6>} prev=[16] elemInv=1 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0401.ILE0515.net2749 w=5.12 e=switch_ds=ILAB0401.ILE0515.Is41{ILAB0401.ILE0515.A ILAB0401.ILE0515.net2749} prev=[18] elemInv=0 pathInv=0 v.w=0.1
	 [23] xc_tree ILAB0302.ILE1601.net1859 w=5.758 e=switch2=ILAB0302.ILE1601.Is119{net11344<6> ILAB0302.ILE1601.net1859} prev=[21] elemInv=0 pathInv=1 v.w=0.1
	 [24] xc_tree ILAB0302.net20569 w=5.958 e=sw_b_v2_inv_UCCLAB=ILAB0302.ILE1601.Ivi7{ILAB0302.ILE1601.net1859 ILAB0302.net20569} prev=[23] elemInv=1 pathInv=0 v.w=0.1
	 [25] xc_tree ILAB0302.ILE1601.B w=6.82 e=switch=ILAB0302.ILE1601.Is130{ILAB0302.net20569 ILAB0302.ILE1601.B} prev=[24] elemInv=0 pathInv=0 v.w=0.1
	 [26] xc_tree ILAB0302.ILE1601.net2743 w=6.932 e=switch_ds=ILAB0302.ILE1601.Is43{ILAB0302.ILE1601.B ILAB0302.ILE1601.net2743} prev=[25] elemInv=0 pathInv=0 v.w=0.1
	 [27] xc_tree net16271<6> w=8.358 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0415.Ivi7{ILAB0401.ILE0415.net1859 net16271<6>} prev=[19] elemInv=1 pathInv=1 v.w=0.1
	 [28] xc_tree ILAB0401.ILE0115.A w=8.882 e=switch_sd=ILAB0401.ILE0115.Is121{net16271<6> ILAB0401.ILE0115.A} prev=[27] elemInv=0 pathInv=1 v.w=0.1
	 [29] xc_tree ILAB0401.ILE0115.net2749 w=9.006 e=switch_ds=ILAB0401.ILE0115.Is41{ILAB0401.ILE0115.A ILAB0401.ILE0115.net2749} prev=[28] elemInv=0 pathInv=1 v.w=0.1
	 [30] xc_tree ILAB0401.ILE0716.B w=3.946 e=switch=ILAB0401.ILE0716.Is11{net16304<0> ILAB0401.ILE0716.B} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [31] xc_tree ILAB0401.ILE0716.net01328 w=5.646 e=switch_ds=ILAB0401.ILE0716.Is58{ILAB0401.ILE0716.B ILAB0401.ILE0716.net01328} prev=[30] elemInv=0 pathInv=0 v.w=0.1
	 [32] xc_tree ILAB0401.ILE0716.net2680 w=6.196 e=switch2=ILAB0401.ILE0716.Is63{ILAB0401.ILE0716.net01328 ILAB0401.ILE0716.net2680} prev=[31] elemInv=0 pathInv=0 v.w=0.1
	 [33] xc_tree net16244<1> w=6.396 e=inv_8_UCCLAB=ILAB0401.ILE0716.I666{ILAB0401.ILE0716.net2680 net16244<1>} prev=[32] elemInv=1 pathInv=1 v.w=0.1
	 [34] xc_tree ILAB0401.net27305 w=7.996 e=buf4_12_UCCLAB=ILAB0401.I4397{net16244<1> ILAB0401.net27305} prev=[33] elemInv=0 pathInv=1 v.w=0.1
	 [35] xc_tree ILAB0401.net37702 w=8.221 e=switch1=ILAB0401.I4142{ILAB0401.net37702 ILAB0401.net27305} prev=[34] elemInv=0 pathInv=1 v.w=0.1
	 [36] xc_tree net8320<7> w=8.421 e=buftid52C_UCCLAB=ILAB0401.I4462{ILAB0401.net37702 net8320<7>} prev=[35] elemInv=0 pathInv=1 v.w=0.1
	 [37] xc_tree net16331<5> w=9.721 e=switch_ds=ILAB0401.I1683{net8320<7> net16331<5>} prev=[36] elemInv=0 pathInv=1 v.w=0.1
	 [38] xc_tree ILAB0401.ILE0116.net01339 w=9.921 e=inv_4_UCCLAB=ILAB0401.ILE0116.I715{net16331<5> ILAB0401.ILE0116.net01339} prev=[37] elemInv=1 pathInv=0 v.w=0.1
	 [39] xc_tree ILAB0401.ILE0116.C w=10.557 e=switch1_sd=ILAB0401.ILE0116.Is70{ILAB0401.ILE0116.net01339 ILAB0401.ILE0116.C} prev=[38] elemInv=0 pathInv=0 v.w=0.1
	 [40] xc_tree ILAB0401.ILE0116.net2746 w=10.693 e=switch_ds=ILAB0401.ILE0116.Is44{ILAB0401.ILE0116.C ILAB0401.ILE0116.net2746} prev=[39] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree adc_rd.state[0] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0401.ILE0814.net2656 ILAB0401.ILE0814.net0541 }
	 xc_pin xci2_nand3ftt a i [32] pinInv=0 { ILAB0401.ILE0712.net2749 }
	 xc_pin xci2_nand3fft c i [29] pinInv=0 { ILAB0401.ILE0613.net2746 }
	 xc_pin xci2_ao21 a i [28] pinInv=0 { ILAB0401.ILE0612.net2749 }
	 xc_pin xci2_nand3fft a i [23] pinInv=0 { ILAB0401.ILE0614.net2749 }
	 xc_pin xci2_and3fft c i [16] pinInv=0 { ILAB0401.ILE0911.net2743 }
	 xc_pin xci2_nand3fft a i [15] pinInv=0 { ILAB0401.ILE0912.net2749 }
	 xc_pin xci2_nand3fft b i [17] pinInv=0 { ILAB0401.ILE0713.net2743 }
	 xc_pin xci2_nand3 a i [27] pinInv=0 { ILAB0401.ILE0611.net2749 }
	 [0] xc_tree ILAB0401.ILE0814.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0814.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.ILE0814.net1838 w=0.7 e=switch2=ILAB0401.ILE0814.Is47{ILAB0401.ILE0814.net2656 ILAB0401.ILE0814.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0814.net1832 w=0.7 e=switch2=ILAB0401.ILE0814.Is39{ILAB0401.ILE0814.net2656 ILAB0401.ILE0814.net1832} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0814.net2680 w=0.85 e=switch2=ILAB0401.ILE0814.Is63{ILAB0401.ILE0814.net0541 ILAB0401.ILE0814.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0401.net18653 w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0814.Ihi5{ILAB0401.ILE0814.net1838 ILAB0401.net18653} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.net18472 w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0814.Ihi6{ILAB0401.ILE0814.net1832 ILAB0401.net18472} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0401.net22541 w=1.15 e=inv_8_UCCLAB=ILAB0401.ILE0814.I666{ILAB0401.ILE0814.net2680 ILAB0401.net22541} prev=[4] elemInv=1 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.net21379 w=2.55 e=switch=ILAB0401.ILE0812.Is37{ILAB0401.net18653 ILAB0401.net21379} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0401.net22682 w=2.55 e=switch=ILAB0401.ILE0811.Is51{ILAB0401.net18472 ILAB0401.net22682} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0401.net22519 w=2.45 e=switch_sd=ILAB0401.ILE0813.Is91{ILAB0401.net22541 ILAB0401.net22519} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0401.ILE0713.net0560 w=2.65 e=inv_4_UCCLAB=ILAB0401.ILE0713.I711{ILAB0401.net22519 ILAB0401.ILE0713.net0560} prev=[10] elemInv=1 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0401.ILE0912.A w=3.05 e=switch_sd=ILAB0401.ILE0912.Is121{ILAB0401.net21379 ILAB0401.ILE0912.A} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0401.ILE0911.B w=3.05 e=switch_sd=ILAB0401.ILE0911.Is114{ILAB0401.net22682 ILAB0401.ILE0911.B} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0401.ILE0713.B w=3.25 e=switch1_sd=ILAB0401.ILE0713.Is86{ILAB0401.ILE0713.net0560 ILAB0401.ILE0713.B} prev=[11] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0401.ILE0912.net2749 w=3.15 e=switch_ds=ILAB0401.ILE0912.Is41{ILAB0401.ILE0912.A ILAB0401.ILE0912.net2749} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0401.ILE0911.net2743 w=3.15 e=switch_ds=ILAB0401.ILE0911.Is43{ILAB0401.ILE0911.B ILAB0401.ILE0911.net2743} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0401.ILE0713.net2743 w=3.35 e=switch_ds=ILAB0401.ILE0713.Is43{ILAB0401.ILE0713.B ILAB0401.ILE0713.net2743} prev=[14] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0401.ILE0814.net1862 w=0.55 e=switch2=ILAB0401.ILE0814.Is111{ILAB0401.ILE0814.net2656 ILAB0401.ILE0814.net1862} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [19] xc_tree ILAB0401.net19174 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0814.Ivi6{ILAB0401.ILE0814.net1862 ILAB0401.net19174} prev=[18] elemInv=1 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0401.ILE0614.A w=1.262 e=switch_sd=ILAB0401.ILE0614.Is121{ILAB0401.net19174 ILAB0401.ILE0614.A} prev=[19] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0401.net21442 w=2.874 e=switch=ILAB0401.ILE0614.Is9{ILAB0401.net21442 ILAB0401.ILE0614.A} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0401.net24097 w=2.874 e=switch=ILAB0401.ILE0614.Is8{ILAB0401.net24097 ILAB0401.ILE0614.A} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [23] xc_tree ILAB0401.ILE0614.net2749 w=1.374 e=switch_ds=ILAB0401.ILE0614.Is41{ILAB0401.ILE0614.A ILAB0401.ILE0614.net2749} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [24] xc_tree ILAB0401.ILE0612.A w=3.386 e=switch_sd=ILAB0401.ILE0612.Is17{ILAB0401.net21442 ILAB0401.ILE0612.A} prev=[21] elemInv=0 pathInv=1 v.w=0.1
	 [25] xc_tree ILAB0401.ILE0613.C w=3.386 e=switch_sd=ILAB0401.ILE0613.Is20{ILAB0401.net21442 ILAB0401.ILE0613.C} prev=[21] elemInv=0 pathInv=1 v.w=0.1
	 [26] xc_tree ILAB0401.ILE0611.A w=3.386 e=switch_sd=ILAB0401.ILE0611.Is17{ILAB0401.net24097 ILAB0401.ILE0611.A} prev=[22] elemInv=0 pathInv=1 v.w=0.1
	 [27] xc_tree ILAB0401.ILE0611.net2749 w=3.498 e=switch_ds=ILAB0401.ILE0611.Is41{ILAB0401.ILE0611.A ILAB0401.ILE0611.net2749} prev=[26] elemInv=0 pathInv=1 v.w=0.1
	 [28] xc_tree ILAB0401.ILE0612.net2749 w=3.498 e=switch_ds=ILAB0401.ILE0612.Is41{ILAB0401.ILE0612.A ILAB0401.ILE0612.net2749} prev=[24] elemInv=0 pathInv=1 v.w=0.1
	 [29] xc_tree ILAB0401.ILE0613.net2746 w=3.498 e=switch_ds=ILAB0401.ILE0613.Is44{ILAB0401.ILE0613.C ILAB0401.ILE0613.net2746} prev=[25] elemInv=0 pathInv=1 v.w=0.1
	 [30] xc_tree ILAB0401.net24142 w=4.874 e=switch=ILAB0401.ILE0713.Is11{ILAB0401.net24142 ILAB0401.ILE0713.B} prev=[14] elemInv=0 pathInv=0 v.w=0.1
	 [31] xc_tree ILAB0401.ILE0712.A w=5.398 e=switch_sd=ILAB0401.ILE0712.Is16{ILAB0401.net24142 ILAB0401.ILE0712.A} prev=[30] elemInv=0 pathInv=0 v.w=0.1
	 [32] xc_tree ILAB0401.ILE0712.net2749 w=5.522 e=switch_ds=ILAB0401.ILE0712.Is41{ILAB0401.ILE0712.A ILAB0401.ILE0712.net2749} prev=[31] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _108_ {
	 xc_pin xci2_nor2 y o [-1] pinInv=0 { ILAB0401.ILE1012.net2656 ILAB0401.ILE1012.net0541 }
	 xc_pin xci2_nand3ftt c i [5] pinInv=0 { ILAB0401.ILE0712.net2746 }
	 xc_pin xci2_nand3fft c i [6] pinInv=0 { ILAB0401.ILE0912.net2746 }
	 [0] xc_tree ILAB0401.ILE1012.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE1012.net1859 w=0.55 e=switch2=ILAB0401.ILE1012.Is119{ILAB0401.ILE1012.net2656 ILAB0401.ILE1012.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net21694 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE1012.Ivi7{ILAB0401.ILE1012.net1859 ILAB0401.net21694} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0712.C w=1.25 e=switch_sd=ILAB0401.ILE0712.Is125{ILAB0401.net21694 ILAB0401.ILE0712.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0912.C w=1.6 e=switch=ILAB0401.ILE0912.Is133{ILAB0401.net21694 ILAB0401.ILE0912.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.ILE0712.net2746 w=1.35 e=switch_ds=ILAB0401.ILE0712.Is44{ILAB0401.ILE0712.C ILAB0401.ILE0712.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.ILE0912.net2746 w=1.7 e=switch_ds=ILAB0401.ILE0912.Is44{ILAB0401.ILE0912.C ILAB0401.ILE0912.net2746} prev=[4] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _107_ {
	 xc_pin xci2_nand3fft y o [-1] pinInv=0 { ILAB0401.ILE0812.net2656 ILAB0401.ILE0812.net0541 }
	 xc_pin xci2_ao21ftf c i [38] pinInv=0 { ILAB0401.ILE0115.net2746 }
	 xc_pin xci2_and2 a i [37] pinInv=0 { ILAB0401.ILE0116.net2749 }
	 xc_pin xci2_nand3fft b i [7] pinInv=0 { ILAB0401.ILE0613.net2743 }
	 xc_pin xci2_ao21 c i [12] pinInv=0 { ILAB0401.ILE0612.net2746 }
	 xc_pin xci2_and3 b i [26] pinInv=0 { ILAB0402.ILE0701.net2743 }
	 xc_pin xci2_nand3fft b i [32] pinInv=0 { ILAB0401.ILE0614.net2743 }
	 xc_pin xci2_and3 b i [24] pinInv=0 { ILAB0402.ILE0501.net2743 }
	 xc_pin xci2_ao21 b i [30] pinInv=0 { ILAB0402.ILE0101.net2743 }
	 [0] xc_tree ILAB0401.ILE0812.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0812.net1862 w=0.55 e=switch2=ILAB0401.ILE0812.Is111{ILAB0401.ILE0812.net2656 ILAB0401.ILE0812.net1862} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.ILE0812.net1850 w=0.7 e=switch2=ILAB0401.ILE0812.Is103{ILAB0401.ILE0812.net2656 ILAB0401.ILE0812.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0401.net18949 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0812.Ivi6{ILAB0401.ILE0812.net1862 ILAB0401.net18949} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.net18677 w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0812.Ivi5{ILAB0401.ILE0812.net1850 ILAB0401.net18677} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.net19688 w=2.55 e=switch=ILAB0401.ILE0612.Is52{ILAB0401.net19688 ILAB0401.net18677} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.ILE0613.B w=3.05 e=switch_sd=ILAB0401.ILE0613.Is26{ILAB0401.net19688 ILAB0401.ILE0613.B} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0401.ILE0613.net2743 w=3.15 e=switch_ds=ILAB0401.ILE0613.Is43{ILAB0401.ILE0613.B ILAB0401.ILE0613.net2743} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.ILE0612.C w=1.262 e=switch_sd=ILAB0401.ILE0612.Is125{ILAB0401.net18949 ILAB0401.ILE0612.C} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0401.net19058 w=3.1 e=switch=ILAB0401.ILE0512.Is37{ILAB0401.net19058 ILAB0401.net18949} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0401.net19687 w=2.55 e=switch=ILAB0401.ILE0612.Is51{ILAB0401.net19687 ILAB0401.net18677} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0401.net15412 w=2.862 e=switch=ILAB0401.ILE0612.Is13{ILAB0401.net15412 ILAB0401.ILE0612.C} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0401.ILE0612.net2746 w=1.374 e=switch_ds=ILAB0401.ILE0612.Is44{ILAB0401.ILE0612.C ILAB0401.ILE0612.net2746} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0401.ILE0613.net2685 w=3.412 e=switch2=ILAB0401.ILE0613.Is127{ILAB0401.net15412 ILAB0401.ILE0613.net2685} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0401.ILE0512.net1832 w=3.95 e=switch2=ILAB0401.ILE0512.Is39{ILAB0401.net19058 ILAB0401.ILE0512.net1832} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree net16308<0> w=3.612 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0613.Iho1{ILAB0401.ILE0613.net2685 net16308<0>} prev=[13] elemInv=1 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB0402.ILE0601.net2685 w=4.312 e=switch2=ILAB0402.ILE0601.Is127{net16308<0> ILAB0402.ILE0601.net2685} prev=[15] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0401.net19102 w=4.25 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0512.Ihi6{ILAB0401.ILE0512.net1832 ILAB0401.net19102} prev=[14] elemInv=1 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0401.ILE0513.net2685 w=4.8 e=switch2=ILAB0401.ILE0513.Is127{ILAB0401.net19102 ILAB0401.ILE0513.net2685} prev=[17] elemInv=0 pathInv=0 v.w=0.1
	 [19] xc_tree ILAB0402.net20587 w=4.562 e=sw_b_v2_inv_UCCLAB=ILAB0402.ILE0601.Iho1{ILAB0402.ILE0601.net2685 ILAB0402.net20587} prev=[16] elemInv=1 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0402.net16564 w=6.162 e=switch=ILAB0402.ILE0601.Is35{ILAB0402.net20587 ILAB0402.net16564} prev=[19] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree net16312<0> w=5 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0513.Iho1{ILAB0401.ILE0513.net2685 net16312<0>} prev=[18] elemInv=1 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0402.ILE0501.B w=5.862 e=switch=ILAB0402.ILE0501.Is10{net16312<0> ILAB0402.ILE0501.B} prev=[21] elemInv=0 pathInv=1 v.w=0.1
	 [23] xc_tree ILAB0402.net20614 w=7.462 e=switch=ILAB0402.ILE0501.Is131{ILAB0402.net20614 ILAB0402.ILE0501.B} prev=[22] elemInv=0 pathInv=1 v.w=0.1
	 [24] xc_tree ILAB0402.ILE0501.net2743 w=5.974 e=switch_ds=ILAB0402.ILE0501.Is43{ILAB0402.ILE0501.B ILAB0402.ILE0501.net2743} prev=[22] elemInv=0 pathInv=1 v.w=0.1
	 [25] xc_tree ILAB0402.ILE0701.B w=6.674 e=switch_sd=ILAB0402.ILE0701.Is123{ILAB0402.net16564 ILAB0402.ILE0701.B} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [26] xc_tree ILAB0402.ILE0701.net2743 w=6.786 e=switch_ds=ILAB0402.ILE0701.Is43{ILAB0402.ILE0701.B ILAB0402.ILE0701.net2743} prev=[25] elemInv=0 pathInv=1 v.w=0.1
	 [27] xc_tree ILAB0402.ILE0201.net1859 w=8.012 e=switch2=ILAB0402.ILE0201.Is119{ILAB0402.net20614 ILAB0402.ILE0201.net1859} prev=[23] elemInv=0 pathInv=1 v.w=0.1
	 [28] xc_tree net11344<1> w=8.212 e=sw_b_v2_inv_UCCLAB=ILAB0402.ILE0201.Ivi7{ILAB0402.ILE0201.net1859 net11344<1>} prev=[27] elemInv=1 pathInv=0 v.w=0.1
	 [29] xc_tree ILAB0402.ILE0101.B w=9.074 e=switch=ILAB0402.ILE0101.Is131{net11344<1> ILAB0402.ILE0101.B} prev=[28] elemInv=0 pathInv=0 v.w=0.1
	 [30] xc_tree ILAB0402.ILE0101.net2743 w=9.186 e=switch_ds=ILAB0402.ILE0101.Is43{ILAB0402.ILE0101.B ILAB0402.ILE0101.net2743} prev=[29] elemInv=0 pathInv=0 v.w=0.1
	 [31] xc_tree ILAB0401.ILE0614.B w=4.314 e=switch_sd=ILAB0401.ILE0614.Is18{ILAB0401.net19687 ILAB0401.ILE0614.B} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [32] xc_tree ILAB0401.ILE0614.net2743 w=4.438 e=switch_ds=ILAB0401.ILE0614.Is43{ILAB0401.ILE0614.B ILAB0401.ILE0614.net2743} prev=[31] elemInv=0 pathInv=1 v.w=0.1
	 [33] xc_tree net16328<2> w=10.71 e=switch=ILAB0402.ILE0101.Is27{net16328<2> ILAB0402.ILE0101.B} prev=[29] elemInv=0 pathInv=0 v.w=0.1
	 [34] xc_tree net16328<0> w=10.71 e=switch=ILAB0402.ILE0101.Is10{net16328<0> ILAB0402.ILE0101.B} prev=[29] elemInv=0 pathInv=0 v.w=0.1
	 [35] xc_tree ILAB0401.ILE0116.A w=11.246 e=switch_sd=ILAB0401.ILE0116.Is24{net16328<2> ILAB0401.ILE0116.A} prev=[33] elemInv=0 pathInv=0 v.w=0.1
	 [36] xc_tree ILAB0401.ILE0115.C w=11.246 e=switch_sd=ILAB0401.ILE0115.Is20{net16328<0> ILAB0401.ILE0115.C} prev=[34] elemInv=0 pathInv=0 v.w=0.1
	 [37] xc_tree ILAB0401.ILE0116.net2749 w=11.382 e=switch_ds=ILAB0401.ILE0116.Is41{ILAB0401.ILE0116.A ILAB0401.ILE0116.net2749} prev=[35] elemInv=0 pathInv=0 v.w=0.1
	 [38] xc_tree ILAB0401.ILE0115.net2746 w=11.382 e=switch_ds=ILAB0401.ILE0115.Is44{ILAB0401.ILE0115.C ILAB0401.ILE0115.net2746} prev=[36] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _106_ {
	 xc_pin xci2_and3fft y o [-1] pinInv=0 { ILAB0401.ILE0811.net2656 ILAB0401.ILE0811.net0541 }
	 xc_pin xci2_nand3fft c i [9] pinInv=0 { ILAB0401.ILE0713.net2746 }
	 xc_pin xci2_nand3 b i [5] pinInv=0 { ILAB0401.ILE0611.net2743 }
	 [0] xc_tree ILAB0401.ILE0811.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0811.net1859 w=0.55 e=switch2=ILAB0401.ILE0811.Is119{ILAB0401.ILE0811.net2656 ILAB0401.ILE0811.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net18499 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0811.Ivi7{ILAB0401.ILE0811.net1859 ILAB0401.net18499} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0711.net2695 w=1.45 e=switch2=ILAB0401.ILE0711.Is15{ILAB0401.net18499 ILAB0401.ILE0711.net2695} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0611.B w=1.25 e=switch_sd=ILAB0401.ILE0611.Is122{ILAB0401.net18499 ILAB0401.ILE0611.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.ILE0611.net2743 w=1.35 e=switch_ds=ILAB0401.ILE0611.Is43{ILAB0401.ILE0611.B ILAB0401.ILE0611.net2743} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.net18992 w=1.7 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0711.Ivo2{ILAB0401.ILE0711.net2695 ILAB0401.net18992} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [7] xc_tree ILAB0401.net21488 w=3.3 e=switch=ILAB0401.ILE0711.Is52{ILAB0401.net21488 ILAB0401.net18992} prev=[6] elemInv=0 pathInv=0 v.w=0.1
	 [8] xc_tree ILAB0401.ILE0713.C w=4.15 e=switch=ILAB0401.ILE0713.Is29{ILAB0401.net21488 ILAB0401.ILE0713.C} prev=[7] elemInv=0 pathInv=0 v.w=0.1
	 [9] xc_tree ILAB0401.ILE0713.net2746 w=4.25 e=switch_ds=ILAB0401.ILE0713.Is44{ILAB0401.ILE0713.C ILAB0401.ILE0713.net2746} prev=[8] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree adc_rd.state[2] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0401.ILE0710.net2656 ILAB0401.ILE0710.net0541 }
	 xc_pin xci2_and3fft a i [19] pinInv=0 { ILAB0401.ILE0811.net2749 }
	 xc_pin xci2_nand3fft a i [33] pinInv=0 { ILAB0401.ILE0812.net2749 }
	 xc_pin xci2_nand3ftt b i [29] pinInv=0 { ILAB0401.ILE0712.net2743 }
	 xc_pin xci2_and2 a i [39] pinInv=0 { ILAB0401.ILE1013.net2749 }
	 xc_pin xci2_and3fft a i [15] pinInv=0 { ILAB0401.ILE1010.net2749 }
	 xc_pin xci2_nand3fft b i [34] pinInv=0 { ILAB0401.ILE0912.net2743 }
	 xc_pin xci2_and3ftt a i [20] pinInv=0 { ILAB0401.ILE1011.net2749 }
	 xc_pin xci2_and3 a i [12] pinInv=0 { ILAB0401.ILE0910.net2749 }
	 [0] xc_tree ILAB0401.ILE0710.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0710.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.ILE0710.net2695 w=0.55 e=switch2=ILAB0401.ILE0710.Is15{ILAB0401.ILE0710.net2656 ILAB0401.ILE0710.net2695} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0710.net2660 w=0.55 e=switch2=ILAB0401.ILE0710.Is23{ILAB0401.ILE0710.net2656 ILAB0401.ILE0710.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0710.net2680 w=0.85 e=switch2=ILAB0401.ILE0710.Is63{ILAB0401.ILE0710.net0541 ILAB0401.ILE0710.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0401.net24979 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0710.Ivo1{ILAB0401.ILE0710.net2660 ILAB0401.net24979} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.net23717 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0710.Ivo2{ILAB0401.ILE0710.net2695 ILAB0401.net23717} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0401.ILE1010.A w=1.6 e=switch=ILAB0401.ILE1010.Is129{ILAB0401.net24979 ILAB0401.ILE1010.A} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.ILE0910.A w=1.25 e=switch_sd=ILAB0401.ILE0910.Is120{ILAB0401.net24979 ILAB0401.ILE0910.A} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0401.ILE0910.net2670 w=1.3 e=switch2=ILAB0401.ILE0910.Is7{ILAB0401.net23717 ILAB0401.ILE0910.net2670} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0401.net15656 w=1.15 e=inv_8_UCCLAB=ILAB0401.ILE0710.I666{ILAB0401.ILE0710.net2680 ILAB0401.net15656} prev=[4] elemInv=1 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0401.net18461 w=2.45 e=switch_sd=ILAB0401.ILE0711.Is72{ILAB0401.net15656 ILAB0401.net18461} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0401.ILE0910.net2749 w=1.35 e=switch_ds=ILAB0401.ILE0910.Is41{ILAB0401.ILE0910.A ILAB0401.ILE0910.net2749} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0401.net24885 w=1.5 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0910.Ivo3{ILAB0401.ILE0910.net2670 ILAB0401.net24885} prev=[9] elemInv=1 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0401.net25807 w=3.2 e=switch=ILAB0401.ILE1010.Is9{ILAB0401.net25807 ILAB0401.ILE1010.A} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0401.ILE1010.net2749 w=1.7 e=switch_ds=ILAB0401.ILE1010.Is41{ILAB0401.ILE1010.A ILAB0401.ILE1010.net2749} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0401.ILE0811.net01345 w=2.65 e=inv_4_UCCLAB=ILAB0401.ILE0811.I714{ILAB0401.net18461 ILAB0401.ILE0811.net01345} prev=[11] elemInv=1 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0401.ILE0811.A w=3.25 e=switch1_sd=ILAB0401.ILE0811.Is54{ILAB0401.ILE0811.net01345 ILAB0401.ILE0811.A} prev=[16] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0401.ILE1011.A w=4.05 e=switch=ILAB0401.ILE1011.Is8{ILAB0401.net25807 ILAB0401.ILE1011.A} prev=[14] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0401.ILE0811.net2749 w=3.35 e=switch_ds=ILAB0401.ILE0811.Is41{ILAB0401.ILE0811.A ILAB0401.ILE0811.net2749} prev=[17] elemInv=0 pathInv=0 v.w=0.1
	 [20] xc_tree ILAB0401.ILE1011.net2749 w=4.15 e=switch_ds=ILAB0401.ILE1011.Is41{ILAB0401.ILE1011.A ILAB0401.ILE1011.net2749} prev=[18] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0401.ILE0710.net2635 w=0.55 e=switch2=ILAB0401.ILE0710.Is135{ILAB0401.ILE0710.net2656 ILAB0401.ILE0710.net2635} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [22] xc_tree ILAB0401.net24143 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0710.Iho2{ILAB0401.ILE0710.net2635 ILAB0401.net24143} prev=[21] elemInv=1 pathInv=1 v.w=0.1
	 [23] xc_tree ILAB0401.ILE0712.B w=1.612 e=switch=ILAB0401.ILE0712.Is27{ILAB0401.net24143 ILAB0401.ILE0712.B} prev=[22] elemInv=0 pathInv=1 v.w=0.1
	 [24] xc_tree ILAB0401.ILE0712.net2650 w=1.45 e=switch2=ILAB0401.ILE0712.Is143{ILAB0401.net24143 ILAB0401.ILE0712.net2650} prev=[22] elemInv=0 pathInv=1 v.w=0.1
	 [25] xc_tree ILAB0401.ILE1010.net2695 w=1.45 e=switch2=ILAB0401.ILE1010.Is15{ILAB0401.net24979 ILAB0401.ILE1010.net2695} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [26] xc_tree ILAB0401.net19914 w=1.7 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0712.Iho3{ILAB0401.ILE0712.net2650 ILAB0401.net19914} prev=[24] elemInv=1 pathInv=0 v.w=0.1
	 [27] xc_tree ILAB0401.net24752 w=1.7 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE1010.Ivo2{ILAB0401.ILE1010.net2695 ILAB0401.net24752} prev=[25] elemInv=1 pathInv=0 v.w=0.1
	 [28] xc_tree ILAB0401.net23693 w=3.1 e=switch=ILAB0401.ILE0910.Is49{ILAB0401.net23693 ILAB0401.net24885} prev=[13] elemInv=0 pathInv=0 v.w=0.1
	 [29] xc_tree ILAB0401.ILE0712.net2743 w=1.724 e=switch_ds=ILAB0401.ILE0712.Is43{ILAB0401.ILE0712.B ILAB0401.ILE0712.net2743} prev=[23] elemInv=0 pathInv=1 v.w=0.1
	 [30] xc_tree ILAB0401.net21784 w=3.3 e=switch=ILAB0401.ILE0712.Is45{ILAB0401.net19914 ILAB0401.net21784} prev=[26] elemInv=0 pathInv=0 v.w=0.1
	 [31] xc_tree ILAB0401.ILE0912.B w=3.962 e=switch=ILAB0401.ILE0912.Is27{ILAB0401.net23693 ILAB0401.ILE0912.B} prev=[28] elemInv=0 pathInv=0 v.w=0.1
	 [32] xc_tree ILAB0401.ILE0812.A w=3.812 e=switch_sd=ILAB0401.ILE0812.Is121{ILAB0401.net21784 ILAB0401.ILE0812.A} prev=[30] elemInv=0 pathInv=0 v.w=0.1
	 [33] xc_tree ILAB0401.ILE0812.net2749 w=3.924 e=switch_ds=ILAB0401.ILE0812.Is41{ILAB0401.ILE0812.A ILAB0401.ILE0812.net2749} prev=[32] elemInv=0 pathInv=0 v.w=0.1
	 [34] xc_tree ILAB0401.ILE0912.net2743 w=4.074 e=switch_ds=ILAB0401.ILE0912.Is43{ILAB0401.ILE0912.B ILAB0401.ILE0912.net2743} prev=[31] elemInv=0 pathInv=0 v.w=0.1
	 [35] xc_tree ILAB0401.net24863 w=3.3 e=switch=ILAB0401.ILE1010.Is52{ILAB0401.net24863 ILAB0401.net24752} prev=[27] elemInv=0 pathInv=0 v.w=0.1
	 [36] xc_tree ILAB0401.ILE1012.net2650 w=3.85 e=switch2=ILAB0401.ILE1012.Is143{ILAB0401.net24863 ILAB0401.ILE1012.net2650} prev=[35] elemInv=0 pathInv=0 v.w=0.1
	 [37] xc_tree ILAB0401.net21669 w=4.05 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE1012.Iho3{ILAB0401.ILE1012.net2650 ILAB0401.net21669} prev=[36] elemInv=1 pathInv=1 v.w=0.1
	 [38] xc_tree ILAB0401.ILE1013.A w=4.574 e=switch_sd=ILAB0401.ILE1013.Is32{ILAB0401.net21669 ILAB0401.ILE1013.A} prev=[37] elemInv=0 pathInv=1 v.w=0.1
	 [39] xc_tree ILAB0401.ILE1013.net2749 w=4.698 e=switch_ds=ILAB0401.ILE1013.Is41{ILAB0401.ILE1013.A ILAB0401.ILE1013.net2749} prev=[38] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.state[1] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0401.ILE1014.net2656 ILAB0401.ILE1014.net0541 }
	 xc_pin xci2_and3fft c i [15] pinInv=0 { ILAB0401.ILE0811.net2743 }
	 xc_pin xci2_nand3fft c i [17] pinInv=0 { ILAB0401.ILE0812.net2746 }
	 xc_pin xci2_nor2 a i [6] pinInv=0 { ILAB0401.ILE1012.net2749 }
	 xc_pin xci2_and3fft a i [16] pinInv=0 { ILAB0401.ILE0911.net2749 }
	 [0] xc_tree ILAB0401.ILE1014.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE1014.net1859 w=0.85 e=switch2=ILAB0401.ILE1014.Is119{ILAB0401.ILE1014.net2656 ILAB0401.ILE1014.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.ILE1014.net1832 w=0.55 e=switch2=ILAB0401.ILE1014.Is39{ILAB0401.ILE1014.net2656 ILAB0401.ILE1014.net1832} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0401.net22657 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE1014.Ihi6{ILAB0401.ILE1014.net1832 ILAB0401.net22657} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE1012.A w=1.262 e=switch_sd=ILAB0401.ILE1012.Is17{ILAB0401.net22657 ILAB0401.ILE1012.A} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.net23494 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE1014.Ivi7{ILAB0401.ILE1014.net1859 ILAB0401.net23494} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.ILE1012.net2749 w=1.374 e=switch_ds=ILAB0401.ILE1012.Is41{ILAB0401.ILE1012.A ILAB0401.ILE1012.net2749} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0401.net22592 w=3.1 e=switch=ILAB0401.ILE1011.Is51{ILAB0401.net22657 ILAB0401.net22592} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.ILE0814.B w=2.45 e=switch_sd=ILAB0401.ILE0814.Is122{ILAB0401.net23494 ILAB0401.ILE0814.B} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0401.net23602 w=4.074 e=switch=ILAB0401.ILE0814.Is10{ILAB0401.net23602 ILAB0401.ILE0814.B} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0401.ILE1011.net1862 w=3.65 e=switch2=ILAB0401.ILE1011.Is111{ILAB0401.net22592 ILAB0401.ILE1011.net1862} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0401.net23044 w=3.874 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE1011.Ivi6{ILAB0401.ILE1011.net1862 ILAB0401.net23044} prev=[10] elemInv=1 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0401.ILE0911.A w=4.398 e=switch_sd=ILAB0401.ILE0911.Is120{ILAB0401.net23044 ILAB0401.ILE0911.A} prev=[11] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0401.ILE0811.B w=4.398 e=switch_sd=ILAB0401.ILE0811.Is123{ILAB0401.net23044 ILAB0401.ILE0811.B} prev=[11] elemInv=0 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0401.ILE0812.C w=4.598 e=switch_sd=ILAB0401.ILE0812.Is20{ILAB0401.net23602 ILAB0401.ILE0812.C} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0401.ILE0811.net2743 w=4.522 e=switch_ds=ILAB0401.ILE0811.Is43{ILAB0401.ILE0811.B ILAB0401.ILE0811.net2743} prev=[13] elemInv=0 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB0401.ILE0911.net2749 w=4.522 e=switch_ds=ILAB0401.ILE0911.Is41{ILAB0401.ILE0911.A ILAB0401.ILE0911.net2749} prev=[12] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0401.ILE0812.net2746 w=4.722 e=switch_ds=ILAB0401.ILE0812.Is44{ILAB0401.ILE0812.C ILAB0401.ILE0812.net2746} prev=[14] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _023_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE1005.net2656 ILAB0102.ILE1005.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE1004.net2749 }
	 [0] xc_tree ILAB0102.ILE1005.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1005.net1844 w=0.55 e=switch2=ILAB0102.ILE1005.Is31{ILAB0102.ILE1005.net2656 ILAB0102.ILE1005.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net16537 w=0.846 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1005.Ihi7{ILAB0102.ILE1005.net1844 ILAB0102.net16537} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1004.A w=2.828 e=switch=ILAB0102.ILE1004.Is9{ILAB0102.net16537 ILAB0102.ILE1004.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1004.net2749 w=2.94 e=switch_ds=ILAB0102.ILE1004.Is41{ILAB0102.ILE1004.A ILAB0102.ILE1004.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[23] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE1004.net2656 ILAB0102.ILE1004.net0541 }
	 xc_pin xci2_ao21 a i [7] pinInv=0 { ILAB0102.ILE1005.net2749 }
	 xc_pin xci2_mux2h a i [17] pinInv=0 { ILAB0102.ILE0901.net2749 }
	 xc_pin xci2_mux2h a i [11] pinInv=0 { ILAB0102.ILE0812.net2749 }
	 [0] xc_tree ILAB0102.ILE1004.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1004.net1850 w=0.85 e=switch2=ILAB0102.ILE1004.Is103{ILAB0102.ILE1004.net2656 ILAB0102.ILE1004.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE1004.net2650 w=0.55 e=switch2=ILAB0102.ILE1004.Is143{ILAB0102.ILE1004.net2656 ILAB0102.ILE1004.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.net23109 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1004.Iho3{ILAB0102.ILE1004.net2650 ILAB0102.net23109} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1005.A w=1.25 e=switch_sd=ILAB0102.ILE1005.Is32{ILAB0102.net23109 ILAB0102.ILE1005.A} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.net23132 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1004.Ivi5{ILAB0102.ILE1004.net1850 ILAB0102.net23132} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.net25582 w=4.25 e=switch=ILAB0102.ILE0804.Is51{ILAB0102.net25582 ILAB0102.net23132} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE1005.net2749 w=1.35 e=switch_ds=ILAB0102.ILE1005.Is41{ILAB0102.ILE1005.A ILAB0102.ILE1005.net2749} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0808.net2685 w=4.8 e=switch2=ILAB0102.ILE0808.Is127{ILAB0102.net25582 ILAB0102.ILE0808.net2685} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.net17977 w=5 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0808.Iho1{ILAB0102.ILE0808.net2685 ILAB0102.net17977} prev=[8] elemInv=1 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0812.A w=5.85 e=switch=ILAB0102.ILE0812.Is8{ILAB0102.net17977 ILAB0102.ILE0812.A} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0812.net2749 w=5.95 e=switch_ds=ILAB0102.ILE0812.Is41{ILAB0102.ILE0812.A ILAB0102.ILE0812.net2749} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0102.ILE1004.net1844 w=0.85 e=switch2=ILAB0102.ILE1004.Is31{ILAB0102.ILE1004.net2656 ILAB0102.ILE1004.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree net17198<6> w=3.55 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1004.Ihi7{ILAB0102.ILE1004.net1844 net17198<6>} prev=[12] elemInv=1 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0102.ILE1001.B w=4.85 e=switch_sd=ILAB0102.ILE1001.Is19{net17198<6> ILAB0102.ILE1001.B} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0102.net16564 w=6.45 e=switch=ILAB0102.ILE1001.Is130{ILAB0102.net16564 ILAB0102.ILE1001.B} prev=[14] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0102.ILE0901.A w=8.564 e=switch=ILAB0102.ILE0901.Is129{ILAB0102.net16564 ILAB0102.ILE0901.A} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0102.ILE0901.net2749 w=8.688 e=switch_ds=ILAB0102.ILE0901.Is41{ILAB0102.ILE0901.A ILAB0102.ILE0901.net2749} prev=[16] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _105_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE1405.net2656 ILAB0102.ILE1405.net0541 }
	 xc_pin xci2_ao21 c i [6] pinInv=0 { ILAB0102.ILE1005.net2746 }
	 [0] xc_tree ILAB0102.ILE1405.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1405.net1850 w=0.85 e=switch2=ILAB0102.ILE1405.Is103{ILAB0102.ILE1405.net2656 ILAB0102.ILE1405.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net25067 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1405.Ivi5{ILAB0102.ILE1405.net1850 ILAB0102.net25067} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1205.net1862 w=1.7 e=switch2=ILAB0102.ILE1205.Is111{ILAB0102.net25067 ILAB0102.ILE1205.net1862} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net15934 w=1.996 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1205.Ivi6{ILAB0102.ILE1205.net1862 ILAB0102.net15934} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0102.ILE1005.C w=2.508 e=switch_sd=ILAB0102.ILE1005.Is125{ILAB0102.net15934 ILAB0102.ILE1005.C} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0102.ILE1005.net2746 w=2.62 e=switch_ds=ILAB0102.ILE1005.Is44{ILAB0102.ILE1005.C ILAB0102.ILE1005.net2746} prev=[5] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _104_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0102.ILE1404.net2656 ILAB0102.ILE1404.net0541 }
	 xc_pin xci2_ao21 b i [4] pinInv=0 { ILAB0102.ILE1405.net2743 }
	 [0] xc_tree ILAB0102.ILE1404.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1404.net2650 w=0.55 e=switch2=ILAB0102.ILE1404.Is143{ILAB0102.ILE1404.net2656 ILAB0102.ILE1404.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net25629 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1404.Iho3{ILAB0102.ILE1404.net2650 ILAB0102.net25629} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1405.B w=1.346 e=switch_sd=ILAB0102.ILE1405.Is34{ILAB0102.net25629 ILAB0102.ILE1405.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1405.net2743 w=1.458 e=switch_ds=ILAB0102.ILE1405.Is43{ILAB0102.ILE1405.B ILAB0102.ILE1405.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _103_ {
	 xc_pin xci2_and3ftt y o [-1] pinInv=0 { ILAB0102.ILE1305.net2656 ILAB0102.ILE1305.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0102.ILE1405.net2746 }
	 [0] xc_tree ILAB0102.ILE1305.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1305.net2670 w=0.55 e=switch2=ILAB0102.ILE1305.Is7{ILAB0102.ILE1305.net2656 ILAB0102.ILE1305.net2670} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net25065 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1305.Ivo3{ILAB0102.ILE1305.net2670 ILAB0102.net25065} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1405.C w=1.262 e=switch_sd=ILAB0102.ILE1405.Is108{ILAB0102.net25065 ILAB0102.ILE1405.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1405.net2746 w=1.374 e=switch_ds=ILAB0102.ILE1405.Is44{ILAB0102.ILE1405.C ILAB0102.ILE1405.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _022_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE1415.net2656 ILAB0102.ILE1415.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE1414.net2749 }
	 [0] xc_tree ILAB0102.ILE1415.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1415.net1844 w=0.55 e=switch2=ILAB0102.ILE1415.Is31{ILAB0102.ILE1415.net2656 ILAB0102.ILE1415.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net20407 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1415.Ihi7{ILAB0102.ILE1415.net1844 ILAB0102.net20407} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1414.A w=1.6 e=switch=ILAB0102.ILE1414.Is9{ILAB0102.net20407 ILAB0102.ILE1414.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1414.net2749 w=1.7 e=switch_ds=ILAB0102.ILE1414.Is41{ILAB0102.ILE1414.A ILAB0102.ILE1414.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[22] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE1414.net2656 ILAB0102.ILE1414.net0541 }
	 xc_pin xci2_ao21 a i [12] pinInv=0 { ILAB0102.ILE1415.net2749 }
	 xc_pin xci2_and3ftt c i [24] pinInv=0 { ILAB0102.ILE1305.net2743 }
	 xc_pin xci2_mux2h a i [19] pinInv=0 { ILAB0102.ILE1404.net2749 }
	 xc_pin xci2_mux2h a i [5] pinInv=0 { ILAB0102.ILE1215.net2749 }
	 [0] xc_tree ILAB0102.ILE1414.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1414.net1850 w=0.7 e=switch2=ILAB0102.ILE1414.Is103{ILAB0102.ILE1414.net2656 ILAB0102.ILE1414.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net19847 w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1414.Ivi5{ILAB0102.ILE1414.net1850 ILAB0102.net19847} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.net23423 w=2.55 e=switch=ILAB0102.ILE1214.Is52{ILAB0102.net23423 ILAB0102.net19847} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1215.A w=3.05 e=switch_sd=ILAB0102.ILE1215.Is24{ILAB0102.net23423 ILAB0102.ILE1215.A} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE1215.net2749 w=3.15 e=switch_ds=ILAB0102.ILE1215.Is41{ILAB0102.ILE1215.A ILAB0102.ILE1215.net2749} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.ILE1414.net2685 w=0.55 e=switch2=ILAB0102.ILE1414.Is127{ILAB0102.ILE1414.net2656 ILAB0102.ILE1414.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [7] xc_tree ILAB0102.ILE1414.net1838 w=0.85 e=switch2=ILAB0102.ILE1414.Is47{ILAB0102.ILE1414.net2656 ILAB0102.ILE1414.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [8] xc_tree net10387<1> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1414.Iho1{ILAB0102.ILE1414.net2685 net10387<1>} prev=[6] elemInv=1 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE1415.A w=1.262 e=switch_sd=ILAB0102.ILE1415.Is17{net10387<1> ILAB0102.ILE1415.A} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.net19373 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1414.Ihi5{ILAB0102.ILE1414.net1838 ILAB0102.net19373} prev=[7] elemInv=1 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE1412.net1832 w=2 e=switch2=ILAB0102.ILE1412.Is39{ILAB0102.net19373 ILAB0102.ILE1412.net1832} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE1415.net2749 w=1.374 e=switch_ds=ILAB0102.ILE1415.Is41{ILAB0102.ILE1415.A ILAB0102.ILE1415.net2749} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0102.net18067 w=2.3 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1412.Ihi6{ILAB0102.ILE1412.net1832 ILAB0102.net18067} prev=[11] elemInv=1 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0102.ILE1409.net1844 w=3.15 e=switch2=ILAB0102.ILE1409.Is31{ILAB0102.net18067 ILAB0102.ILE1409.net1844} prev=[13] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0102.net25042 w=3.45 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1409.Ihi7{ILAB0102.ILE1409.net1844 ILAB0102.net25042} prev=[14] elemInv=1 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0102.ILE1405.net1844 w=4 e=switch2=ILAB0102.ILE1405.Is31{ILAB0102.net25042 ILAB0102.ILE1405.net1844} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0102.net20812 w=4.2 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1405.Ihi7{ILAB0102.ILE1405.net1844 ILAB0102.net20812} prev=[16] elemInv=1 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0102.ILE1404.A w=5.062 e=switch=ILAB0102.ILE1404.Is9{ILAB0102.net20812 ILAB0102.ILE1404.A} prev=[17] elemInv=0 pathInv=0 v.w=0.1
	 [19] xc_tree ILAB0102.ILE1404.net2749 w=5.174 e=switch_ds=ILAB0102.ILE1404.Is41{ILAB0102.ILE1404.A ILAB0102.ILE1404.net2749} prev=[18] elemInv=0 pathInv=0 v.w=0.1
	 [20] xc_tree net18576<1> w=6.574 e=switch=ILAB0102.ILE1405.Is35{ILAB0102.net25042 net18576<1>} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0102.ILE1405.net1859 w=7.124 e=switch2=ILAB0102.ILE1405.Is119{net18576<1> ILAB0102.ILE1405.net1859} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0102.net25069 w=7.348 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1405.Ivi7{ILAB0102.ILE1405.net1859 ILAB0102.net25069} prev=[21] elemInv=1 pathInv=0 v.w=0.1
	 [23] xc_tree ILAB0102.ILE1305.B w=8.222 e=switch=ILAB0102.ILE1305.Is131{ILAB0102.net25069 ILAB0102.ILE1305.B} prev=[22] elemInv=0 pathInv=0 v.w=0.1
	 [24] xc_tree ILAB0102.ILE1305.net2743 w=8.346 e=switch_ds=ILAB0102.ILE1305.Is43{ILAB0102.ILE1305.B ILAB0102.ILE1305.net2743} prev=[23] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _102_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE1315.net2656 ILAB0102.ILE1315.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0102.ILE1415.net2746 }
	 [0] xc_tree ILAB0102.ILE1315.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1315.net2660 w=0.55 e=switch2=ILAB0102.ILE1315.Is23{ILAB0102.ILE1315.net2656 ILAB0102.ILE1315.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net18536<0> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1315.Ivo1{ILAB0102.ILE1315.net2660 net18536<0>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1415.C w=1.25 e=switch_sd=ILAB0102.ILE1415.Is125{net18536<0> ILAB0102.ILE1415.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1415.net2746 w=1.35 e=switch_ds=ILAB0102.ILE1415.Is44{ILAB0102.ILE1415.C ILAB0102.ILE1415.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _021_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0103.ILE1301.net2656 ILAB0103.ILE1301.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0103.ILE1302.net2749 }
	 [0] xc_tree ILAB0103.ILE1301.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE1301.net2650 w=0.55 e=switch2=ILAB0103.ILE1301.Is143{ILAB0103.ILE1301.net2656 ILAB0103.ILE1301.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net20454 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1301.Iho3{ILAB0103.ILE1301.net2650 ILAB0103.net20454} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE1302.A w=1.25 e=switch_sd=ILAB0103.ILE1302.Is32{ILAB0103.net20454 ILAB0103.ILE1302.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE1302.net2749 w=1.35 e=switch_ds=ILAB0103.ILE1302.Is41{ILAB0103.ILE1302.A ILAB0103.ILE1302.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[21] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0103.ILE1302.net2656 ILAB0103.ILE1302.net0541 }
	 xc_pin xci2_ao21 a i [10] pinInv=0 { ILAB0103.ILE1301.net2749 }
	 xc_pin xci2_and3 a i [6] pinInv=0 { ILAB0102.ILE1315.net2749 }
	 xc_pin xci2_mux2h a i [12] pinInv=0 { ILAB0103.ILE1102.net2749 }
	 [0] xc_tree ILAB0103.ILE1302.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE1302.net1838 w=0.55 e=switch2=ILAB0103.ILE1302.Is47{ILAB0103.ILE1302.net2656 ILAB0103.ILE1302.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.ILE1302.net1844 w=0.55 e=switch2=ILAB0103.ILE1302.Is31{ILAB0103.ILE1302.net2656 ILAB0103.ILE1302.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree net10391<5> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1302.Ihi5{ILAB0103.ILE1302.net1838 net10391<5>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree net10391<1> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1302.Ihi7{ILAB0103.ILE1302.net1844 net10391<1>} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE1315.A w=1.25 e=switch_sd=ILAB0102.ILE1315.Is17{net10391<1> ILAB0102.ILE1315.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.ILE1315.net2749 w=1.35 e=switch_ds=ILAB0102.ILE1315.Is41{ILAB0102.ILE1315.A ILAB0102.ILE1315.net2749} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0103.ILE1302.net1862 w=0.55 e=switch2=ILAB0103.ILE1302.Is111{ILAB0103.ILE1302.net2656 ILAB0103.ILE1302.net1862} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [8] xc_tree ILAB0103.net26329 w=0.762 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1302.Ivi6{ILAB0103.ILE1302.net1862 ILAB0103.net26329} prev=[7] elemInv=1 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0103.ILE1301.A w=1.346 e=switch_sd=ILAB0103.ILE1301.Is24{net10391<5> ILAB0103.ILE1301.A} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0103.ILE1301.net2749 w=1.458 e=switch_ds=ILAB0103.ILE1301.Is41{ILAB0103.ILE1301.A ILAB0103.ILE1301.net2749} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0103.ILE1102.A w=5.43 e=switch_sd=ILAB0103.ILE1102.Is121{ILAB0103.net26329 ILAB0103.ILE1102.A} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0103.ILE1102.net2749 w=5.566 e=switch_ds=ILAB0103.ILE1102.Is41{ILAB0103.ILE1102.A ILAB0103.ILE1102.net2749} prev=[11] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _101_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE1316.net2656 ILAB0102.ILE1316.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0103.ILE1301.net2746 }
	 [0] xc_tree ILAB0102.ILE1316.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1316.net2650 w=0.55 e=switch2=ILAB0102.ILE1316.Is143{ILAB0102.ILE1316.net2656 ILAB0102.ILE1316.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net10391<4> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1316.Iho3{ILAB0102.ILE1316.net2650 net10391<4>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE1301.C w=1.25 e=switch_sd=ILAB0103.ILE1301.Is36{net10391<4> ILAB0103.ILE1301.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE1301.net2746 w=1.35 e=switch_ds=ILAB0103.ILE1301.Is44{ILAB0103.ILE1301.C ILAB0103.ILE1301.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _020_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE1516.net2656 ILAB0102.ILE1516.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE1416.net2749 }
	 [0] xc_tree ILAB0102.ILE1516.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1516.net1859 w=0.55 e=switch2=ILAB0102.ILE1516.Is119{ILAB0102.ILE1516.net2656 ILAB0102.ILE1516.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net18814 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1516.Ivi7{ILAB0102.ILE1516.net1859 ILAB0102.net18814} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1416.A w=1.6 e=switch=ILAB0102.ILE1416.Is129{ILAB0102.net18814 ILAB0102.ILE1416.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1416.net2749 w=1.7 e=switch_ds=ILAB0102.ILE1416.Is41{ILAB0102.ILE1416.A ILAB0102.ILE1416.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[20] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE1416.net2656 ILAB0102.ILE1416.net0541 }
	 xc_pin xci2_ao21 a i [6] pinInv=0 { ILAB0102.ILE1516.net2749 }
	 xc_pin xci2_and3 a i [9] pinInv=0 { ILAB0102.ILE1316.net2749 }
	 xc_pin xci2_mux2h a i [13] pinInv=0 { ILAB0103.ILE1203.net2749 }
	 [0] xc_tree ILAB0102.ILE1416.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1416.net1850 w=0.55 e=switch2=ILAB0102.ILE1416.Is103{ILAB0102.ILE1416.net2656 ILAB0102.ILE1416.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE1416.net2660 w=0.55 e=switch2=ILAB0102.ILE1416.Is23{ILAB0102.ILE1416.net2656 ILAB0102.ILE1416.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree net18532<1> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1416.Ivo1{ILAB0102.ILE1416.net2660 net18532<1>} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net17912 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1416.Ivi5{ILAB0102.ILE1416.net1850 ILAB0102.net17912} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE1516.A w=1.25 e=switch_sd=ILAB0102.ILE1516.Is121{net18532<1> ILAB0102.ILE1516.A} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.ILE1516.net2749 w=1.35 e=switch_ds=ILAB0102.ILE1516.Is41{ILAB0102.ILE1516.A ILAB0102.ILE1516.net2749} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree net10395<5> w=3.1 e=switch=ILAB0102.ILE1216.Is52{net10395<5> ILAB0102.net17912} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE1316.A w=1.346 e=switch_sd=ILAB0102.ILE1316.Is112{ILAB0102.net17912 ILAB0102.ILE1316.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE1316.net2749 w=1.458 e=switch_ds=ILAB0102.ILE1316.Is41{ILAB0102.ILE1316.A ILAB0102.ILE1316.net2749} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0103.ILE1202.net2650 w=3.65 e=switch2=ILAB0103.ILE1202.Is143{net10395<5> ILAB0103.ILE1202.net2650} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0103.net26574 w=3.85 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1202.Iho3{ILAB0103.ILE1202.net2650 ILAB0103.net26574} prev=[10] elemInv=1 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0103.ILE1203.A w=4.362 e=switch_sd=ILAB0103.ILE1203.Is32{ILAB0103.net26574 ILAB0103.ILE1203.A} prev=[11] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0103.ILE1203.net2749 w=4.474 e=switch_ds=ILAB0103.ILE1203.Is41{ILAB0103.ILE1203.A ILAB0103.ILE1203.net2749} prev=[12] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _100_ {
	 xc_pin xci2_ao21ttf y o [-1] pinInv=0 { ILAB0102.ILE1508.net2656 ILAB0102.ILE1508.net0541 }
	 xc_pin xci2_ao21 c i [6] pinInv=0 { ILAB0102.ILE1516.net2746 }
	 [0] xc_tree ILAB0102.ILE1508.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1508.net2685 w=0.85 e=switch2=ILAB0102.ILE1508.Is127{ILAB0102.ILE1508.net2656 ILAB0102.ILE1508.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net19552 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1508.Iho1{ILAB0102.ILE1508.net2685 ILAB0102.net19552} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1512.net2685 w=1.7 e=switch2=ILAB0102.ILE1512.Is127{ILAB0102.net19552 ILAB0102.ILE1512.net2685} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net19642 w=1.9 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1512.Iho1{ILAB0102.ILE1512.net2685 ILAB0102.net19642} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0102.ILE1516.C w=2.75 e=switch=ILAB0102.ILE1516.Is12{ILAB0102.net19642 ILAB0102.ILE1516.C} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0102.ILE1516.net2746 w=2.85 e=switch_ds=ILAB0102.ILE1516.Is44{ILAB0102.ILE1516.C ILAB0102.ILE1516.net2746} prev=[5] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _019_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE1407.net2656 ILAB0102.ILE1407.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE1408.net2749 }
	 [0] xc_tree ILAB0102.ILE1407.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1407.net2650 w=0.55 e=switch2=ILAB0102.ILE1407.Is143{ILAB0102.ILE1407.net2656 ILAB0102.ILE1407.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net25764 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1407.Iho3{ILAB0102.ILE1407.net2650 ILAB0102.net25764} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1408.A w=1.25 e=switch_sd=ILAB0102.ILE1408.Is32{ILAB0102.net25764 ILAB0102.ILE1408.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1408.net2749 w=1.35 e=switch_ds=ILAB0102.ILE1408.Is41{ILAB0102.ILE1408.A ILAB0102.ILE1408.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[19] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE1408.net2656 ILAB0102.ILE1408.net0541 }
	 xc_pin xci2_ao21 a i [9] pinInv=0 { ILAB0102.ILE1407.net2749 }
	 xc_pin xci2_ao21ttf a i [8] pinInv=0 { ILAB0102.ILE1508.net2749 }
	 xc_pin xci2_mux2h a i [12] pinInv=0 { ILAB0102.ILE1312.net2749 }
	 [0] xc_tree ILAB0102.ILE1408.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1408.net2660 w=0.55 e=switch2=ILAB0102.ILE1408.Is23{ILAB0102.ILE1408.net2656 ILAB0102.ILE1408.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE1408.net1838 w=0.55 e=switch2=ILAB0102.ILE1408.Is47{ILAB0102.ILE1408.net2656 ILAB0102.ILE1408.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree net18564<1> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1408.Ivo1{ILAB0102.ILE1408.net2660 net18564<1>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net21128 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1408.Ihi5{ILAB0102.ILE1408.net1838 ILAB0102.net21128} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE1508.A w=1.25 e=switch_sd=ILAB0102.ILE1508.Is121{net18564<1> ILAB0102.ILE1508.A} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.ILE1407.A w=1.25 e=switch_sd=ILAB0102.ILE1407.Is24{ILAB0102.net21128 ILAB0102.ILE1407.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.net19577 w=2.85 e=switch=ILAB0102.ILE1508.Is113{ILAB0102.net19577 ILAB0102.ILE1508.A} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE1508.net2749 w=1.35 e=switch_ds=ILAB0102.ILE1508.Is41{ILAB0102.ILE1508.A ILAB0102.ILE1508.net2749} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE1407.net2749 w=1.35 e=switch_ds=ILAB0102.ILE1407.Is41{ILAB0102.ILE1407.A ILAB0102.ILE1407.net2749} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.net21847 w=4.45 e=switch=ILAB0102.ILE1308.Is51{ILAB0102.net21847 ILAB0102.net19577} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE1312.A w=5.3 e=switch=ILAB0102.ILE1312.Is8{ILAB0102.net21847 ILAB0102.ILE1312.A} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE1312.net2749 w=5.4 e=switch_ds=ILAB0102.ILE1312.Is41{ILAB0102.ILE1312.A ILAB0102.ILE1312.net2749} prev=[11] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _099_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE1505.net2656 ILAB0102.ILE1505.net0541 }
	 xc_pin xci2_ao21 c i [13] pinInv=0 { ILAB0102.ILE1407.net2746 }
	 [0] xc_tree ILAB0102.ILE1505.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1505.net1832 w=1 e=switch2=ILAB0102.ILE1505.Is39{ILAB0102.ILE1505.net2656 ILAB0102.ILE1505.net1832} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net26347 w=1.4 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1505.Ihi6{ILAB0102.ILE1505.net1832 ILAB0102.net26347} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1506.net2685 w=2.25 e=switch2=ILAB0102.ILE1506.Is127{ILAB0102.net26347 ILAB0102.ILE1506.net2685} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net18157 w=2.55 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1506.Iho1{ILAB0102.ILE1506.net2685 ILAB0102.net18157} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0102.net18270 w=6.4 e=switch=ILAB0102.ILE1506.Is48{ILAB0102.net18157 ILAB0102.net18270} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0102.ILE1506.net1850 w=7.25 e=switch2=ILAB0102.ILE1506.Is103{ILAB0102.net18270 ILAB0102.ILE1506.net1850} prev=[5] elemInv=0 pathInv=0 v.w=0.1
	 [7] xc_tree ILAB0102.net18182 w=7.55 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1506.Ivi5{ILAB0102.ILE1506.net1850 ILAB0102.net18182} prev=[6] elemInv=1 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE1406.B w=8.85 e=switch_sd=ILAB0102.ILE1406.Is114{ILAB0102.net18182 ILAB0102.ILE1406.B} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE1406.net01328 w=10.55 e=switch_ds=ILAB0102.ILE1406.Is58{ILAB0102.ILE1406.B ILAB0102.ILE1406.net01328} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.ILE1406.net2680 w=11.1 e=switch2=ILAB0102.ILE1406.Is63{ILAB0102.ILE1406.net01328 ILAB0102.ILE1406.net2680} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.net25061 w=11.3 e=inv_8_UCCLAB=ILAB0102.ILE1406.I666{ILAB0102.ILE1406.net2680 ILAB0102.net25061} prev=[10] elemInv=1 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0102.ILE1407.C w=11.872 e=switch_sd=ILAB0102.ILE1407.Is68{ILAB0102.net25061 ILAB0102.ILE1407.C} prev=[11] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0102.ILE1407.net2746 w=12.044 e=switch_ds=ILAB0102.ILE1407.Is44{ILAB0102.ILE1407.C ILAB0102.ILE1407.net2746} prev=[12] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _098_ {
	 xc_pin xci2_mux2h y o [-1] pinInv=0 { ILAB0102.ILE1604.net2656 ILAB0102.ILE1604.net0541 }
	 xc_pin xci2_ao21 b i [9] pinInv=0 { ILAB0102.ILE1505.net2743 }
	 [0] xc_tree ILAB0102.ILE1604.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1604.net2680 w=0.85 e=switch2=ILAB0102.ILE1604.Is63{ILAB0102.ILE1604.net0541 ILAB0102.ILE1604.net2680} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net15476 w=1.15 e=inv_8_UCCLAB=ILAB0102.ILE1604.I666{ILAB0102.ILE1604.net2680 ILAB0102.net15476} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.net27188 w=1.31 e=buftd4_UCCLAB=ILAB0102.I224{ILAB0102.net15476 ILAB0102.net27188} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.I5605.net29 w=1.4125 e=mux2p_2_UCCLAB=ILAB0102.I5605.I0{ILAB0102.net27188 ILAB0102.I5605.net29} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.Clk_int<3> w=1.5145 e=invd16_seth_UCCLAB=ILAB0102.I5605.I1{ILAB0102.I5605.net29 ILAB0102.Clk_int<3>} prev=[4] elemInv=1 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0102.I5366.net0102 w=1.7645 e=mux2d1i_1_P_UCCLAB=ILAB0102.I5366.I81{ILAB0102.Clk_int<3> ILAB0102.I5366.net0102} prev=[5] elemInv=0 pathInv=0 v.w=0.1
	 [7] xc_tree ILAB0102.net15299<0> w=1.8745 e=invd52_UCCLAB=ILAB0102.I5366.I77{ILAB0102.I5366.net0102 ILAB0102.net15299<0>} prev=[6] elemInv=1 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.Clk_LAB<3> w=1.975 e=invd32_UCCLAB=ILAB0102.I5591.I0{ILAB0102.net15299<0> ILAB0102.Clk_LAB<3>} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [9] xc_tree ILAB0102.ILE1505.net2743 w=2.075 e=switch_sd_clk3=ILAB0102.ILE1505.Is139{ILAB0102.Clk_LAB<3> ILAB0102.ILE1505.net2743} prev=[8] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _097_ {
	 xc_pin xci2_and3ftt y o [-1] pinInv=0 { ILAB0102.ILE1605.net2656 ILAB0102.ILE1605.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0102.ILE1505.net2746 }
	 [0] xc_tree ILAB0102.ILE1605.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1605.net1859 w=0.55 e=switch2=ILAB0102.ILE1605.Is119{ILAB0102.ILE1605.net2656 ILAB0102.ILE1605.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net15889 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1605.Ivi7{ILAB0102.ILE1605.net1859 ILAB0102.net15889} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1505.C w=1.6 e=switch=ILAB0102.ILE1505.Is133{ILAB0102.net15889 ILAB0102.ILE1505.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1505.net2746 w=1.7 e=switch_ds=ILAB0102.ILE1505.Is44{ILAB0102.ILE1505.C ILAB0102.ILE1505.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _018_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE1506.net2656 ILAB0102.ILE1506.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE1406.net2749 }
	 [0] xc_tree ILAB0102.ILE1506.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1506.net1859 w=0.55 e=switch2=ILAB0102.ILE1506.Is119{ILAB0102.ILE1506.net2656 ILAB0102.ILE1506.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net18184 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1506.Ivi7{ILAB0102.ILE1506.net1859 ILAB0102.net18184} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1406.A w=1.6 e=switch=ILAB0102.ILE1406.Is129{ILAB0102.net18184 ILAB0102.ILE1406.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1406.net2749 w=1.7 e=switch_ds=ILAB0102.ILE1406.Is41{ILAB0102.ILE1406.A ILAB0102.ILE1406.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[18] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE1406.net2656 ILAB0102.ILE1406.net0541 }
	 xc_pin xci2_ao21 a i [11] pinInv=0 { ILAB0102.ILE1506.net2749 }
	 xc_pin xci2_and3ftt c i [17] pinInv=0 { ILAB0102.ILE1605.net2743 }
	 xc_pin xci2_mux2h a i [15] pinInv=0 { ILAB0102.ILE1604.net2749 }
	 xc_pin xci2_mux2h a i [12] pinInv=0 { ILAB0102.ILE1306.net2749 }
	 [0] xc_tree ILAB0102.ILE1406.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1406.net1850 w=0.55 e=switch2=ILAB0102.ILE1406.Is103{ILAB0102.ILE1406.net2656 ILAB0102.ILE1406.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE1406.net2660 w=0.55 e=switch2=ILAB0102.ILE1406.Is23{ILAB0102.ILE1406.net2656 ILAB0102.ILE1406.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1406.net1838 w=0.7 e=switch2=ILAB0102.ILE1406.Is47{ILAB0102.ILE1406.net2656 ILAB0102.ILE1406.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree net18572<1> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1406.Ivo1{ILAB0102.ILE1406.net2660 net18572<1>} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.net21152 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1406.Ivi5{ILAB0102.ILE1406.net1850 ILAB0102.net21152} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.net25628 w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1406.Ihi5{ILAB0102.ILE1406.net1838 ILAB0102.net25628} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE1606.B w=2.05 e=switch_sd=ILAB0102.ILE1606.Is122{net18572<1> ILAB0102.ILE1606.B} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE1506.A w=1.25 e=switch_sd=ILAB0102.ILE1506.Is121{net18572<1> ILAB0102.ILE1506.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE1306.A w=1.25 e=switch_sd=ILAB0102.ILE1306.Is112{ILAB0102.net21152 ILAB0102.ILE1306.A} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree net18580<1> w=2.55 e=switch=ILAB0102.ILE1404.Is37{ILAB0102.net25628 net18580<1>} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE1506.net2749 w=1.35 e=switch_ds=ILAB0102.ILE1506.Is41{ILAB0102.ILE1506.A ILAB0102.ILE1506.net2749} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE1306.net2749 w=1.35 e=switch_ds=ILAB0102.ILE1306.Is41{ILAB0102.ILE1306.A ILAB0102.ILE1306.net2749} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0102.net25358 w=3.65 e=switch=ILAB0102.ILE1606.Is27{ILAB0102.net25358 ILAB0102.ILE1606.B} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0102.ILE1604.A w=3.05 e=switch_sd=ILAB0102.ILE1604.Is120{net18580<1> ILAB0102.ILE1604.A} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0102.ILE1604.net2749 w=3.15 e=switch_ds=ILAB0102.ILE1604.Is41{ILAB0102.ILE1604.A ILAB0102.ILE1604.net2749} prev=[14] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0102.ILE1605.B w=4.15 e=switch_sd=ILAB0102.ILE1605.Is26{ILAB0102.net25358 ILAB0102.ILE1605.B} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0102.ILE1605.net2743 w=4.25 e=switch_ds=ILAB0102.ILE1605.Is43{ILAB0102.ILE1605.B ILAB0102.ILE1605.net2743} prev=[16] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _096_ {
	 xc_pin xci2_ao21ttf y o [-1] pinInv=0 { ILAB0102.ILE1507.net2656 ILAB0102.ILE1507.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0102.ILE1506.net2746 }
	 [0] xc_tree ILAB0102.ILE1507.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1507.net1838 w=0.55 e=switch2=ILAB0102.ILE1507.Is47{ILAB0102.ILE1507.net2656 ILAB0102.ILE1507.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net15728 w=0.942 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1507.Ihi5{ILAB0102.ILE1507.net1838 ILAB0102.net15728} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1506.C w=1.466 e=switch_sd=ILAB0102.ILE1506.Is28{ILAB0102.net15728 ILAB0102.ILE1506.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1506.net2746 w=1.59 e=switch_ds=ILAB0102.ILE1506.Is44{ILAB0102.ILE1506.C ILAB0102.ILE1506.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _095_ {
	 xc_pin xci2_nand3ftt y o [-1] pinInv=0 { ILAB0102.ILE1504.net2656 ILAB0102.ILE1504.net0541 }
	 xc_pin xci2_ao21ttf c i [6] pinInv=0 { ILAB0102.ILE1507.net2746 }
	 xc_pin xci2_ao21ttf c i [4] pinInv=0 { ILAB0102.ILE1508.net2746 }
	 [0] xc_tree ILAB0102.ILE1504.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1504.net2685 w=0.55 e=switch2=ILAB0102.ILE1504.Is127{ILAB0102.ILE1504.net2656 ILAB0102.ILE1504.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net16177 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1504.Iho1{ILAB0102.ILE1504.net2685 ILAB0102.net16177} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1508.C w=1.6 e=switch=ILAB0102.ILE1508.Is12{ILAB0102.net16177 ILAB0102.ILE1508.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1508.net2746 w=1.7 e=switch_ds=ILAB0102.ILE1508.Is44{ILAB0102.ILE1508.C ILAB0102.ILE1508.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE1507.C w=15.696 e=switch=ILAB0102.ILE1507.Is13{ILAB0102.net16177 ILAB0102.ILE1507.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.ILE1507.net2746 w=15.868 e=switch_ds=ILAB0102.ILE1507.Is44{ILAB0102.ILE1507.C ILAB0102.ILE1507.net2746} prev=[5] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _094_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0202.ILE0105.net2656 ILAB0202.ILE0105.net0541 }
	 xc_pin xci2_ao21ttf b i [8] pinInv=0 { ILAB0102.ILE1507.net2743 }
	 xc_pin xci2_ao21ttf b i [10] pinInv=0 { ILAB0102.ILE1508.net2743 }
	 [0] xc_tree ILAB0202.ILE0105.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0202.ILE0105.net2685 w=0.85 e=switch2=ILAB0202.ILE0105.Is127{ILAB0202.ILE0105.net2656 ILAB0202.ILE0105.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0202.net19732 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0202.ILE0105.Iho1{ILAB0202.ILE0105.net2685 ILAB0202.net19732} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0202.ILE0107.B w=2.45 e=switch_sd=ILAB0202.ILE0107.Is18{ILAB0202.net19732 ILAB0202.ILE0107.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree net18568<1> w=4.05 e=switch=ILAB0202.ILE0107.Is131{net18568<1> ILAB0202.ILE0107.B} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree net18568<2> w=4.8 e=switch=ILAB0202.ILE0107.Is115{net18568<2> ILAB0202.ILE0107.B} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.ILE1507.B w=5.946 e=switch_sd=ILAB0102.ILE1507.Is123{net18568<1> ILAB0102.ILE1507.B} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.net25718 w=6.4 e=switch=ILAB0102.ILE1507.Is52{ILAB0102.net25718 net18568<2>} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE1507.net2743 w=6.082 e=switch_ds=ILAB0102.ILE1507.Is43{ILAB0102.ILE1507.B ILAB0102.ILE1507.net2743} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE1508.B w=6.936 e=switch_sd=ILAB0102.ILE1508.Is26{ILAB0102.net25718 ILAB0102.ILE1508.B} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.ILE1508.net2743 w=7.072 e=switch_ds=ILAB0102.ILE1508.Is43{ILAB0102.ILE1508.B ILAB0102.ILE1508.net2743} prev=[9] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _017_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE1110.net2656 ILAB0102.ILE1110.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE1210.net2749 }
	 [0] xc_tree ILAB0102.ILE1110.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1110.net2660 w=0.55 e=switch2=ILAB0102.ILE1110.Is23{ILAB0102.ILE1110.net2656 ILAB0102.ILE1110.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net24079 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1110.Ivo1{ILAB0102.ILE1110.net2660 ILAB0102.net24079} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1210.A w=1.25 e=switch_sd=ILAB0102.ILE1210.Is121{ILAB0102.net24079 ILAB0102.ILE1210.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1210.net2749 w=1.35 e=switch_ds=ILAB0102.ILE1210.Is41{ILAB0102.ILE1210.A ILAB0102.ILE1210.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[17] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE1210.net2656 ILAB0102.ILE1210.net0541 }
	 xc_pin xci2_ao21 a i [6] pinInv=0 { ILAB0102.ILE1110.net2749 }
	 xc_pin xci2_ao21ttf a i [14] pinInv=0 { ILAB0102.ILE1507.net2749 }
	 xc_pin xci2_mux2h a i [12] pinInv=0 { ILAB0102.ILE1011.net2749 }
	 [0] xc_tree ILAB0102.ILE1210.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1210.net1859 w=0.55 e=switch2=ILAB0102.ILE1210.Is119{ILAB0102.ILE1210.net2656 ILAB0102.ILE1210.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE1210.net1850 w=0.55 e=switch2=ILAB0102.ILE1210.Is103{ILAB0102.ILE1210.net2656 ILAB0102.ILE1210.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1210.net1832 w=0.7 e=switch2=ILAB0102.ILE1210.Is39{ILAB0102.ILE1210.net2656 ILAB0102.ILE1210.net1832} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0102.net24754 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1210.Ivi7{ILAB0102.ILE1210.net1859 ILAB0102.net24754} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE1110.A w=1.6 e=switch=ILAB0102.ILE1110.Is129{ILAB0102.net24754 ILAB0102.ILE1110.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.ILE1110.net2749 w=1.7 e=switch_ds=ILAB0102.ILE1110.Is41{ILAB0102.ILE1110.A ILAB0102.ILE1110.net2749} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.net24752 w=0.846 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1210.Ivi5{ILAB0102.ILE1210.net1850 ILAB0102.net24752} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.net17032 w=1.046 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1210.Ihi6{ILAB0102.ILE1210.net1832 ILAB0102.net17032} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.net24864 w=2.446 e=switch=ILAB0102.ILE1010.Is53{ILAB0102.net24864 ILAB0102.net24752} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.net15349 w=3.778 e=switch=ILAB0102.ILE1207.Is35{ILAB0102.net17032 ILAB0102.net15349} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE1011.A w=2.958 e=switch_sd=ILAB0102.ILE1011.Is32{ILAB0102.net24864 ILAB0102.ILE1011.A} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE1011.net2749 w=3.07 e=switch_ds=ILAB0102.ILE1011.Is41{ILAB0102.ILE1011.A ILAB0102.ILE1011.net2749} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0102.ILE1507.A w=16.708 e=switch=ILAB0102.ILE1507.Is129{ILAB0102.net15349 ILAB0102.ILE1507.A} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0102.ILE1507.net2749 w=16.868 e=switch_ds=ILAB0102.ILE1507.Is41{ILAB0102.ILE1507.A ILAB0102.ILE1507.net2749} prev=[13] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _093_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE1010.net2656 ILAB0102.ILE1010.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0102.ILE1110.net2746 }
	 [0] xc_tree ILAB0102.ILE1010.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1010.net2670 w=0.55 e=switch2=ILAB0102.ILE1010.Is7{ILAB0102.ILE1010.net2656 ILAB0102.ILE1010.net2670} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net24975 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1010.Ivo3{ILAB0102.ILE1010.net2670 ILAB0102.net24975} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1110.C w=1.274 e=switch_sd=ILAB0102.ILE1110.Is108{ILAB0102.net24975 ILAB0102.ILE1110.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1110.net2746 w=1.398 e=switch_ds=ILAB0102.ILE1110.Is44{ILAB0102.ILE1110.C ILAB0102.ILE1110.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _016_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE0909.net2656 ILAB0102.ILE0909.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE0910.net2749 }
	 [0] xc_tree ILAB0102.ILE0909.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0909.net2650 w=0.55 e=switch2=ILAB0102.ILE0909.Is143{ILAB0102.ILE0909.net2656 ILAB0102.ILE0909.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net25314 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0909.Iho3{ILAB0102.ILE0909.net2650 ILAB0102.net25314} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0910.A w=1.25 e=switch_sd=ILAB0102.ILE0910.Is32{ILAB0102.net25314 ILAB0102.ILE0910.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0910.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0910.Is41{ILAB0102.ILE0910.A ILAB0102.ILE0910.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[16] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0910.net2656 ILAB0102.ILE0910.net0541 }
	 xc_pin xci2_ao21 a i [7] pinInv=0 { ILAB0102.ILE0909.net2749 }
	 xc_pin xci2_and3 a i [12] pinInv=0 { ILAB0102.ILE1010.net2749 }
	 xc_pin xci2_mux2h a i [8] pinInv=0 { ILAB0102.ILE0710.net2749 }
	 [0] xc_tree ILAB0102.ILE0910.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0910.net1862 w=0.55 e=switch2=ILAB0102.ILE0910.Is111{ILAB0102.ILE0910.net2656 ILAB0102.ILE0910.net1862} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE0910.net1832 w=0.55 e=switch2=ILAB0102.ILE0910.Is39{ILAB0102.ILE0910.net2656 ILAB0102.ILE0910.net1832} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.net25942 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0910.Ihi6{ILAB0102.ILE0910.net1832 ILAB0102.net25942} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net24889 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0910.Ivi6{ILAB0102.ILE0910.net1862 ILAB0102.net24889} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0909.A w=1.25 e=switch_sd=ILAB0102.ILE0909.Is16{ILAB0102.net25942 ILAB0102.ILE0909.A} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.ILE0710.A w=1.25 e=switch_sd=ILAB0102.ILE0710.Is121{ILAB0102.net24889 ILAB0102.ILE0710.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE0909.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0909.Is41{ILAB0102.ILE0909.A ILAB0102.ILE0909.net2749} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0710.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0710.Is41{ILAB0102.ILE0710.A ILAB0102.ILE0710.net2749} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0910.net2670 w=0.55 e=switch2=ILAB0102.ILE0910.Is7{ILAB0102.ILE0910.net2656 ILAB0102.ILE0910.net2670} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0102.net24885 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0910.Ivo3{ILAB0102.ILE0910.net2670 ILAB0102.net24885} prev=[9] elemInv=1 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE1010.A w=1.274 e=switch_sd=ILAB0102.ILE1010.Is104{ILAB0102.net24885 ILAB0102.ILE1010.A} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE1010.net2749 w=1.398 e=switch_ds=ILAB0102.ILE1010.Is41{ILAB0102.ILE1010.A ILAB0102.ILE1010.net2749} prev=[11] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _092_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE0908.net2656 ILAB0102.ILE0908.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0102.ILE0909.net2746 }
	 [0] xc_tree ILAB0102.ILE0908.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0908.net2650 w=0.55 e=switch2=ILAB0102.ILE0908.Is143{ILAB0102.ILE0908.net2656 ILAB0102.ILE0908.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net18519 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0908.Iho3{ILAB0102.ILE0908.net2650 ILAB0102.net18519} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0909.C w=1.25 e=switch_sd=ILAB0102.ILE0909.Is36{ILAB0102.net18519 ILAB0102.ILE0909.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0909.net2746 w=1.35 e=switch_ds=ILAB0102.ILE0909.Is44{ILAB0102.ILE0909.C ILAB0102.ILE0909.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _015_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE0808.net2656 ILAB0102.ILE0808.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE0708.net2749 }
	 [0] xc_tree ILAB0102.ILE0808.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0808.net1850 w=0.55 e=switch2=ILAB0102.ILE0808.Is103{ILAB0102.ILE0808.net2656 ILAB0102.ILE0808.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net18002 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0808.Ivi5{ILAB0102.ILE0808.net1850 ILAB0102.net18002} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0708.A w=1.262 e=switch_sd=ILAB0102.ILE0708.Is112{ILAB0102.net18002 ILAB0102.ILE0708.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0708.net2749 w=1.374 e=switch_ds=ILAB0102.ILE0708.Is41{ILAB0102.ILE0708.A ILAB0102.ILE0708.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[15] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0708.net2656 ILAB0102.ILE0708.net0541 }
	 xc_pin xci2_ao21 a i [5] pinInv=0 { ILAB0102.ILE0808.net2749 }
	 xc_pin xci2_and3 a i [6] pinInv=0 { ILAB0102.ILE0908.net2749 }
	 xc_pin xci2_mux2h a i [10] pinInv=0 { ILAB0102.ILE0608.net2749 }
	 [0] xc_tree ILAB0102.ILE0708.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0708.net2660 w=0.55 e=switch2=ILAB0102.ILE0708.Is23{ILAB0102.ILE0708.net2656 ILAB0102.ILE0708.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net24799 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0708.Ivo1{ILAB0102.ILE0708.net2660 ILAB0102.net24799} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0908.A w=1.25 e=switch_sd=ILAB0102.ILE0908.Is120{ILAB0102.net24799 ILAB0102.ILE0908.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0808.A w=1.25 e=switch_sd=ILAB0102.ILE0808.Is121{ILAB0102.net24799 ILAB0102.ILE0808.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0808.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0808.Is41{ILAB0102.ILE0808.A ILAB0102.ILE0808.net2749} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.ILE0908.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0908.Is41{ILAB0102.ILE0908.A ILAB0102.ILE0908.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE0708.net1850 w=0.55 e=switch2=ILAB0102.ILE0708.Is103{ILAB0102.ILE0708.net2656 ILAB0102.ILE0708.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [8] xc_tree ILAB0102.net21062 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0708.Ivi5{ILAB0102.ILE0708.net1850 ILAB0102.net21062} prev=[7] elemInv=1 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0608.A w=1.262 e=switch_sd=ILAB0102.ILE0608.Is112{ILAB0102.net21062 ILAB0102.ILE0608.A} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0608.net2749 w=1.374 e=switch_ds=ILAB0102.ILE0608.Is41{ILAB0102.ILE0608.A ILAB0102.ILE0608.net2749} prev=[9] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _091_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE0807.net2656 ILAB0102.ILE0807.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0102.ILE0808.net2746 }
	 [0] xc_tree ILAB0102.ILE0807.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0807.net2650 w=0.55 e=switch2=ILAB0102.ILE0807.Is143{ILAB0102.ILE0807.net2656 ILAB0102.ILE0807.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net25224 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0807.Iho3{ILAB0102.ILE0807.net2650 ILAB0102.net25224} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0808.C w=1.25 e=switch_sd=ILAB0102.ILE0808.Is36{ILAB0102.net25224 ILAB0102.ILE0808.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0808.net2746 w=1.35 e=switch_ds=ILAB0102.ILE0808.Is44{ILAB0102.ILE0808.C ILAB0102.ILE0808.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _014_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE0805.net2656 ILAB0102.ILE0805.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE0705.net2749 }
	 [0] xc_tree ILAB0102.ILE0805.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0805.net1859 w=0.55 e=switch2=ILAB0102.ILE0805.Is119{ILAB0102.ILE0805.net2656 ILAB0102.ILE0805.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net17374 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0805.Ivi7{ILAB0102.ILE0805.net1859 ILAB0102.net17374} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0705.A w=1.6 e=switch=ILAB0102.ILE0705.Is129{ILAB0102.net17374 ILAB0102.ILE0705.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0705.net2749 w=1.7 e=switch_ds=ILAB0102.ILE0705.Is41{ILAB0102.ILE0705.A ILAB0102.ILE0705.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[14] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0705.net2656 ILAB0102.ILE0705.net0541 }
	 xc_pin xci2_ao21 a i [10] pinInv=0 { ILAB0102.ILE0805.net2749 }
	 xc_pin xci2_and3 a i [15] pinInv=0 { ILAB0102.ILE0807.net2749 }
	 xc_pin xci2_mux2h a i [11] pinInv=0 { ILAB0102.ILE0706.net2749 }
	 [0] xc_tree ILAB0102.ILE0705.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0705.net2685 w=0.55 e=switch2=ILAB0102.ILE0705.Is127{ILAB0102.ILE0705.net2656 ILAB0102.ILE0705.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE0705.net2660 w=0.55 e=switch2=ILAB0102.ILE0705.Is23{ILAB0102.ILE0705.net2656 ILAB0102.ILE0705.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0705.net2635 w=0.55 e=switch2=ILAB0102.ILE0705.Is135{ILAB0102.ILE0705.net2656 ILAB0102.ILE0705.net2635} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0102.net15817 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0705.Iho1{ILAB0102.ILE0705.net2685 ILAB0102.net15817} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.net17959 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0705.Ivo1{ILAB0102.ILE0705.net2660 ILAB0102.net17959} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.net15818 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0705.Iho2{ILAB0102.ILE0705.net2635 ILAB0102.net15818} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE0706.A w=1.25 e=switch_sd=ILAB0102.ILE0706.Is17{ILAB0102.net15817 ILAB0102.ILE0706.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0805.A w=1.25 e=switch_sd=ILAB0102.ILE0805.Is121{ILAB0102.net17959 ILAB0102.ILE0805.A} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0707.net2650 w=1.45 e=switch2=ILAB0102.ILE0707.Is143{ILAB0102.net15818 ILAB0102.ILE0707.net2650} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0805.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0805.Is41{ILAB0102.ILE0805.A ILAB0102.ILE0805.net2749} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0706.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0706.Is41{ILAB0102.ILE0706.A ILAB0102.ILE0706.net2749} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.net17214 w=1.7 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0707.Iho3{ILAB0102.ILE0707.net2650 ILAB0102.net17214} prev=[9] elemInv=1 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0102.net25967 w=3.3 e=switch=ILAB0102.ILE0707.Is53{ILAB0102.net17214 ILAB0102.net25967} prev=[12] elemInv=0 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0102.ILE0807.A w=3.8 e=switch_sd=ILAB0102.ILE0807.Is112{ILAB0102.net25967 ILAB0102.ILE0807.A} prev=[13] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0102.ILE0807.net2749 w=3.9 e=switch_ds=ILAB0102.ILE0807.Is41{ILAB0102.ILE0807.A ILAB0102.ILE0807.net2749} prev=[14] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _090_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE0804.net2656 ILAB0102.ILE0804.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0102.ILE0805.net2746 }
	 [0] xc_tree ILAB0102.ILE0804.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0804.net2650 w=0.55 e=switch2=ILAB0102.ILE0804.Is143{ILAB0102.ILE0804.net2656 ILAB0102.ILE0804.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net25584 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0804.Iho3{ILAB0102.ILE0804.net2650 ILAB0102.net25584} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0805.C w=1.25 e=switch_sd=ILAB0102.ILE0805.Is36{ILAB0102.net25584 ILAB0102.ILE0805.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0805.net2746 w=1.35 e=switch_ds=ILAB0102.ILE0805.Is44{ILAB0102.ILE0805.C ILAB0102.ILE0805.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _013_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE0803.net2656 ILAB0102.ILE0803.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE0703.net2749 }
	 [0] xc_tree ILAB0102.ILE0803.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0803.net1859 w=0.55 e=switch2=ILAB0102.ILE0803.Is119{ILAB0102.ILE0803.net2656 ILAB0102.ILE0803.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net20344 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0803.Ivi7{ILAB0102.ILE0803.net1859 ILAB0102.net20344} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0703.A w=1.6 e=switch=ILAB0102.ILE0703.Is129{ILAB0102.net20344 ILAB0102.ILE0703.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0703.net2749 w=1.7 e=switch_ds=ILAB0102.ILE0703.Is41{ILAB0102.ILE0703.A ILAB0102.ILE0703.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[13] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0703.net2656 ILAB0102.ILE0703.net0541 }
	 xc_pin xci2_ao21 a i [15] pinInv=0 { ILAB0102.ILE0803.net2749 }
	 xc_pin xci2_and3 a i [10] pinInv=0 { ILAB0102.ILE0804.net2749 }
	 xc_pin xci2_mux2h a i [11] pinInv=0 { ILAB0102.ILE0604.net2749 }
	 [0] xc_tree ILAB0102.ILE0703.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0703.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE0703.net2680 w=0.85 e=switch2=ILAB0102.ILE0703.Is63{ILAB0102.ILE0703.net0541 ILAB0102.ILE0703.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.net26456 w=1.15 e=inv_8_UCCLAB=ILAB0102.ILE0703.I666{ILAB0102.ILE0703.net2680 ILAB0102.net26456} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net16082 w=2.45 e=switch_sd=ILAB0102.ILE0704.Is65{ILAB0102.net26456 ILAB0102.net16082} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.net25571 w=2.45 e=switch_sd=ILAB0102.ILE0704.Is72{ILAB0102.net26456 ILAB0102.net25571} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.ILE0604.net0562 w=2.65 e=inv_4_UCCLAB=ILAB0102.ILE0604.I712{ILAB0102.net16082 ILAB0102.ILE0604.net0562} prev=[4] elemInv=1 pathInv=0 v.w=0.1
	 [7] xc_tree ILAB0102.ILE0804.net01345 w=2.65 e=inv_4_UCCLAB=ILAB0102.ILE0804.I714{ILAB0102.net25571 ILAB0102.ILE0804.net01345} prev=[5] elemInv=1 pathInv=0 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0604.A w=3.25 e=switch1_sd=ILAB0102.ILE0604.Is94{ILAB0102.ILE0604.net0562 ILAB0102.ILE0604.A} prev=[6] elemInv=0 pathInv=0 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0804.A w=3.25 e=switch1_sd=ILAB0102.ILE0804.Is54{ILAB0102.ILE0804.net01345 ILAB0102.ILE0804.A} prev=[7] elemInv=0 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0804.net2749 w=3.35 e=switch_ds=ILAB0102.ILE0804.Is41{ILAB0102.ILE0804.A ILAB0102.ILE0804.net2749} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0604.net2749 w=3.35 e=switch_ds=ILAB0102.ILE0604.Is41{ILAB0102.ILE0604.A ILAB0102.ILE0604.net2749} prev=[8] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0102.ILE0703.net2670 w=0.55 e=switch2=ILAB0102.ILE0703.Is7{ILAB0102.ILE0703.net2656 ILAB0102.ILE0703.net2670} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0102.net20340 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0703.Ivo3{ILAB0102.ILE0703.net2670 ILAB0102.net20340} prev=[12] elemInv=1 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0102.ILE0803.A w=1.262 e=switch_sd=ILAB0102.ILE0803.Is104{ILAB0102.net20340 ILAB0102.ILE0803.A} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0102.ILE0803.net2749 w=1.374 e=switch_ds=ILAB0102.ILE0803.Is41{ILAB0102.ILE0803.A ILAB0102.ILE0803.net2749} prev=[14] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _089_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE0904.net2656 ILAB0102.ILE0904.net0541 }
	 xc_pin xci2_ao21 c i [6] pinInv=0 { ILAB0102.ILE0803.net2746 }
	 [0] xc_tree ILAB0102.ILE0904.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0904.net2680 w=0.85 e=switch2=ILAB0102.ILE0904.Is63{ILAB0102.ILE0904.net0541 ILAB0102.ILE0904.net2680} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net20291 w=1.15 e=inv_8_UCCLAB=ILAB0102.ILE0904.I666{ILAB0102.ILE0904.net2680 ILAB0102.net20291} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.net20271 w=2.45 e=switch_sd=ILAB0102.ILE0903.Is93{ILAB0102.net20291 ILAB0102.net20271} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0803.net0558 w=2.65 e=inv_4_UCCLAB=ILAB0102.ILE0803.I710{ILAB0102.net20271 ILAB0102.ILE0803.net0558} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0803.C w=3.25 e=switch1_sd=ILAB0102.ILE0803.Is78{ILAB0102.ILE0803.net0558 ILAB0102.ILE0803.C} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0102.ILE0803.net2746 w=3.35 e=switch_ds=ILAB0102.ILE0803.Is44{ILAB0102.ILE0803.C ILAB0102.ILE0803.net2746} prev=[5] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _012_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE0903.net2656 ILAB0102.ILE0903.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE0902.net2749 }
	 [0] xc_tree ILAB0102.ILE0903.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0903.net1844 w=0.55 e=switch2=ILAB0102.ILE0903.Is31{ILAB0102.ILE0903.net2656 ILAB0102.ILE0903.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net17202<3> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0903.Ihi7{ILAB0102.ILE0903.net1844 net17202<3>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0902.A w=1.696 e=switch=ILAB0102.ILE0902.Is9{net17202<3> ILAB0102.ILE0902.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0902.net2749 w=1.808 e=switch_ds=ILAB0102.ILE0902.Is41{ILAB0102.ILE0902.A ILAB0102.ILE0902.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[12] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0902.net2656 ILAB0102.ILE0902.net0541 }
	 xc_pin xci2_ao21 a i [8] pinInv=0 { ILAB0102.ILE0903.net2749 }
	 xc_pin xci2_and3 a i [9] pinInv=0 { ILAB0102.ILE0904.net2749 }
	 xc_pin xci2_mux2h a i [12] pinInv=0 { ILAB0102.ILE0602.net2749 }
	 [0] xc_tree ILAB0102.ILE0902.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0902.net2635 w=0.55 e=switch2=ILAB0102.ILE0902.Is135{ILAB0102.ILE0902.net2656 ILAB0102.ILE0902.net2635} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net26168 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0902.Iho2{ILAB0102.ILE0902.net2635 ILAB0102.net26168} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0902.net1850 w=0.85 e=switch2=ILAB0102.ILE0902.Is103{ILAB0102.ILE0902.net2656 ILAB0102.ILE0902.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0904.A w=1.696 e=switch=ILAB0102.ILE0904.Is25{ILAB0102.net26168 ILAB0102.ILE0904.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0903.A w=1.262 e=switch_sd=ILAB0102.ILE0903.Is24{ILAB0102.net26168 ILAB0102.ILE0903.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.net26192 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0902.Ivi5{ILAB0102.ILE0902.net1850 ILAB0102.net26192} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE0702.net1862 w=1.7 e=switch2=ILAB0102.ILE0702.Is111{ILAB0102.net26192 ILAB0102.ILE0702.net1862} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0903.net2749 w=1.374 e=switch_ds=ILAB0102.ILE0903.Is41{ILAB0102.ILE0903.A ILAB0102.ILE0903.net2749} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0904.net2749 w=1.808 e=switch_ds=ILAB0102.ILE0904.Is41{ILAB0102.ILE0904.A ILAB0102.ILE0904.net2749} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.net26149 w=1.9 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0702.Ivi6{ILAB0102.ILE0702.net1862 ILAB0102.net26149} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0602.A w=2.412 e=switch_sd=ILAB0102.ILE0602.Is120{ILAB0102.net26149 ILAB0102.ILE0602.A} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0102.ILE0602.net2749 w=2.524 e=switch_ds=ILAB0102.ILE0602.Is41{ILAB0102.ILE0602.A ILAB0102.ILE0602.net2749} prev=[11] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _088_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE1003.net2656 ILAB0102.ILE1003.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0102.ILE0903.net2746 }
	 [0] xc_tree ILAB0102.ILE1003.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1003.net1859 w=0.55 e=switch2=ILAB0102.ILE1003.Is119{ILAB0102.ILE1003.net2656 ILAB0102.ILE1003.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net17419 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1003.Ivi7{ILAB0102.ILE1003.net1859 ILAB0102.net17419} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0903.C w=1.6 e=switch=ILAB0102.ILE0903.Is133{ILAB0102.net17419 ILAB0102.ILE0903.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0903.net2746 w=1.7 e=switch_ds=ILAB0102.ILE0903.Is44{ILAB0102.ILE0903.C ILAB0102.ILE0903.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _011_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE1103.net2656 ILAB0102.ILE1103.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE1102.net2749 }
	 [0] xc_tree ILAB0102.ILE1103.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1103.net1844 w=0.55 e=switch2=ILAB0102.ILE1103.Is31{ILAB0102.ILE1103.net2656 ILAB0102.ILE1103.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net17194<3> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1103.Ihi7{ILAB0102.ILE1103.net1844 net17194<3>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1102.A w=1.6 e=switch=ILAB0102.ILE1102.Is9{net17194<3> ILAB0102.ILE1102.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1102.net2749 w=1.7 e=switch_ds=ILAB0102.ILE1102.Is41{ILAB0102.ILE1102.A ILAB0102.ILE1102.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[11] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE1102.net2656 ILAB0102.ILE1102.net0541 }
	 xc_pin xci2_ao21 a i [15] pinInv=0 { ILAB0102.ILE1103.net2749 }
	 xc_pin xci2_and3 a i [11] pinInv=0 { ILAB0102.ILE1003.net2749 }
	 xc_pin xci2_mux2h a i [8] pinInv=0 { ILAB0102.ILE0802.net2749 }
	 [0] xc_tree ILAB0102.ILE1102.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1102.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE1102.net1859 w=0.55 e=switch2=ILAB0102.ILE1102.Is119{ILAB0102.ILE1102.net2656 ILAB0102.ILE1102.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1102.net2680 w=0.55 e=switch2=ILAB0102.ILE1102.Is63{ILAB0102.ILE1102.net0541 ILAB0102.ILE1102.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0102.net26689 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1102.Ivi7{ILAB0102.ILE1102.net1859 ILAB0102.net26689} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.net16601 w=0.75 e=inv_8_UCCLAB=ILAB0102.ILE1102.I666{ILAB0102.ILE1102.net2680 ILAB0102.net16601} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.ILE0802.A w=1.25 e=switch_sd=ILAB0102.ILE0802.Is121{ILAB0102.net26689 ILAB0102.ILE0802.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.net16892 w=2.05 e=switch_sd=ILAB0102.ILE1103.Is65{ILAB0102.net16601 ILAB0102.net16892} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0802.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0802.Is41{ILAB0102.ILE0802.A ILAB0102.ILE0802.net2749} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE1003.net0562 w=2.25 e=inv_4_UCCLAB=ILAB0102.ILE1003.I712{ILAB0102.net16892 ILAB0102.ILE1003.net0562} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0102.ILE1003.A w=2.85 e=switch1_sd=ILAB0102.ILE1003.Is94{ILAB0102.ILE1003.net0562 ILAB0102.ILE1003.A} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0102.ILE1003.net2749 w=2.95 e=switch_ds=ILAB0102.ILE1003.Is41{ILAB0102.ILE1003.A ILAB0102.ILE1003.net2749} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0102.ILE1102.net2685 w=0.55 e=switch2=ILAB0102.ILE1102.Is127{ILAB0102.ILE1102.net2656 ILAB0102.ILE1102.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0102.net26662 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1102.Iho1{ILAB0102.ILE1102.net2685 ILAB0102.net26662} prev=[12] elemInv=1 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0102.ILE1103.A w=1.262 e=switch_sd=ILAB0102.ILE1103.Is17{ILAB0102.net26662 ILAB0102.ILE1103.A} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0102.ILE1103.net2749 w=1.374 e=switch_ds=ILAB0102.ILE1103.Is41{ILAB0102.ILE1103.A ILAB0102.ILE1103.net2749} prev=[14] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _087_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE1104.net2656 ILAB0102.ILE1104.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0102.ILE1103.net2746 }
	 [0] xc_tree ILAB0102.ILE1104.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1104.net1844 w=0.55 e=switch2=ILAB0102.ILE1104.Is31{ILAB0102.ILE1104.net2656 ILAB0102.ILE1104.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net17194<6> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1104.Ihi7{ILAB0102.ILE1104.net1844 net17194<6>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1103.C w=1.6 e=switch=ILAB0102.ILE1103.Is13{net17194<6> ILAB0102.ILE1103.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1103.net2746 w=1.7 e=switch_ds=ILAB0102.ILE1103.Is44{ILAB0102.ILE1103.C ILAB0102.ILE1103.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _010_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE0907.net2656 ILAB0102.ILE0907.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE1007.net2749 }
	 [0] xc_tree ILAB0102.ILE0907.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0907.net2670 w=0.55 e=switch2=ILAB0102.ILE0907.Is7{ILAB0102.ILE0907.net2656 ILAB0102.ILE0907.net2670} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net25830 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0907.Ivo3{ILAB0102.ILE0907.net2670 ILAB0102.net25830} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1007.A w=1.262 e=switch_sd=ILAB0102.ILE1007.Is104{ILAB0102.net25830 ILAB0102.ILE1007.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1007.net2749 w=1.374 e=switch_ds=ILAB0102.ILE1007.Is41{ILAB0102.ILE1007.A ILAB0102.ILE1007.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[10] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE1007.net2656 ILAB0102.ILE1007.net0541 }
	 xc_pin xci2_ao21 a i [9] pinInv=0 { ILAB0102.ILE0907.net2749 }
	 xc_pin xci2_and3 a i [5] pinInv=0 { ILAB0102.ILE1104.net2749 }
	 xc_pin xci2_mux2h a i [14] pinInv=0 { ILAB0102.ILE0504.net2749 }
	 [0] xc_tree ILAB0102.ILE1007.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1007.net1832 w=0.7 e=switch2=ILAB0102.ILE1007.Is39{ILAB0102.ILE1007.net2656 ILAB0102.ILE1007.net1832} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net23107 w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1007.Ihi6{ILAB0102.ILE1007.net1832 ILAB0102.net23107} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.net25654 w=2.55 e=switch=ILAB0102.ILE1004.Is35{ILAB0102.net23107 ILAB0102.net25654} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1104.A w=3.05 e=switch_sd=ILAB0102.ILE1104.Is121{ILAB0102.net25654 ILAB0102.ILE1104.A} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE1104.net2749 w=3.15 e=switch_ds=ILAB0102.ILE1104.Is41{ILAB0102.ILE1104.A ILAB0102.ILE1104.net2749} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.ILE1007.net1850 w=0.55 e=switch2=ILAB0102.ILE1007.Is103{ILAB0102.ILE1007.net2656 ILAB0102.ILE1007.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [7] xc_tree ILAB0102.net25832 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1007.Ivi5{ILAB0102.ILE1007.net1850 ILAB0102.net25832} prev=[6] elemInv=1 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0907.A w=1.274 e=switch_sd=ILAB0102.ILE0907.Is112{ILAB0102.net25832 ILAB0102.ILE0907.A} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0907.net2749 w=1.398 e=switch_ds=ILAB0102.ILE0907.Is41{ILAB0102.ILE0907.A ILAB0102.ILE0907.net2749} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.net22909 w=4.674 e=switch=ILAB0102.ILE1104.Is129{ILAB0102.net22909 ILAB0102.ILE1104.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0804.net1859 w=5.224 e=switch2=ILAB0102.ILE0804.Is119{ILAB0102.net22909 ILAB0102.ILE0804.net1859} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.net25609 w=6.624 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0804.Ivi7{ILAB0102.ILE0804.net1859 ILAB0102.net25609} prev=[11] elemInv=1 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0102.ILE0504.A w=7.148 e=switch_sd=ILAB0102.ILE0504.Is121{ILAB0102.net25609 ILAB0102.ILE0504.A} prev=[12] elemInv=0 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0102.ILE0504.net2749 w=7.272 e=switch_ds=ILAB0102.ILE0504.Is41{ILAB0102.ILE0504.A ILAB0102.ILE0504.net2749} prev=[13] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _086_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE0809.net2656 ILAB0102.ILE0809.net0541 }
	 xc_pin xci2_ao21 c i [5] pinInv=0 { ILAB0102.ILE0907.net2746 }
	 [0] xc_tree ILAB0102.ILE0809.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0809.net1838 w=0.7 e=switch2=ILAB0102.ILE0809.Is47{ILAB0102.ILE0809.net2656 ILAB0102.ILE0809.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net25223 w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0809.Ihi5{ILAB0102.ILE0809.net1838 ILAB0102.net25223} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.net17059 w=2.55 e=switch=ILAB0102.ILE0807.Is37{ILAB0102.net25223 ILAB0102.net17059} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0907.C w=3.05 e=switch_sd=ILAB0102.ILE0907.Is125{ILAB0102.net17059 ILAB0102.ILE0907.C} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0907.net2746 w=3.15 e=switch_ds=ILAB0102.ILE0907.Is44{ILAB0102.ILE0907.C ILAB0102.ILE0907.net2746} prev=[4] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _009_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE0811.net2656 ILAB0102.ILE0811.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE0810.net2749 }
	 [0] xc_tree ILAB0102.ILE0811.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0811.net1838 w=0.55 e=switch2=ILAB0102.ILE0811.Is47{ILAB0102.ILE0811.net2656 ILAB0102.ILE0811.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net17618 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0811.Ihi5{ILAB0102.ILE0811.net1838 ILAB0102.net17618} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0810.A w=1.262 e=switch_sd=ILAB0102.ILE0810.Is24{ILAB0102.net17618 ILAB0102.ILE0810.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0810.net2749 w=1.374 e=switch_ds=ILAB0102.ILE0810.Is41{ILAB0102.ILE0810.A ILAB0102.ILE0810.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[9] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0810.net2656 ILAB0102.ILE0810.net0541 }
	 xc_pin xci2_ao21 a i [10] pinInv=0 { ILAB0102.ILE0811.net2749 }
	 xc_pin xci2_and3 a i [9] pinInv=0 { ILAB0102.ILE0809.net2749 }
	 xc_pin xci2_mux2h a i [13] pinInv=0 { ILAB0102.ILE0711.net2749 }
	 [0] xc_tree ILAB0102.ILE0810.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0810.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE0810.net1838 w=0.55 e=switch2=ILAB0102.ILE0810.Is47{ILAB0102.ILE0810.net2656 ILAB0102.ILE0810.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0810.net2680 w=0.55 e=switch2=ILAB0102.ILE0810.Is63{ILAB0102.ILE0810.net0541 ILAB0102.ILE0810.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0102.net17978 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0810.Ihi5{ILAB0102.ILE0810.net1838 ILAB0102.net17978} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.net17636 w=0.75 e=inv_8_UCCLAB=ILAB0102.ILE0810.I666{ILAB0102.ILE0810.net2680 ILAB0102.net17636} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.ILE0809.A w=1.25 e=switch_sd=ILAB0102.ILE0809.Is24{ILAB0102.net17978 ILAB0102.ILE0809.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE0811.A w=1.25 e=switch_sd=ILAB0102.ILE0811.Is64{ILAB0102.net17636 ILAB0102.ILE0811.A} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.net18467 w=2.05 e=switch_sd=ILAB0102.ILE0811.Is65{ILAB0102.net17636 ILAB0102.net18467} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0809.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0809.Is41{ILAB0102.ILE0809.A ILAB0102.ILE0809.net2749} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0811.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0811.Is41{ILAB0102.ILE0811.A ILAB0102.ILE0811.net2749} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0711.net0562 w=2.25 e=inv_4_UCCLAB=ILAB0102.ILE0711.I712{ILAB0102.net18467 ILAB0102.ILE0711.net0562} prev=[8] elemInv=1 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0102.ILE0711.A w=2.85 e=switch1_sd=ILAB0102.ILE0711.Is94{ILAB0102.ILE0711.net0562 ILAB0102.ILE0711.A} prev=[11] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0102.ILE0711.net2749 w=2.95 e=switch_ds=ILAB0102.ILE0711.Is41{ILAB0102.ILE0711.A ILAB0102.ILE0711.net2749} prev=[12] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _085_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE0814.net2656 ILAB0102.ILE0814.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0102.ILE0811.net2746 }
	 [0] xc_tree ILAB0102.ILE0814.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0814.net1844 w=0.55 e=switch2=ILAB0102.ILE0814.Is31{ILAB0102.ILE0814.net2656 ILAB0102.ILE0814.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net23602 w=2.806 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0814.Ihi7{ILAB0102.ILE0814.net1844 ILAB0102.net23602} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0811.C w=3.318 e=switch_sd=ILAB0102.ILE0811.Is21{ILAB0102.net23602 ILAB0102.ILE0811.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0811.net2746 w=3.43 e=switch_ds=ILAB0102.ILE0811.Is44{ILAB0102.ILE0811.C ILAB0102.ILE0811.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _008_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE0815.net2656 ILAB0102.ILE0815.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE0715.net2749 }
	 [0] xc_tree ILAB0102.ILE0815.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0815.net1850 w=0.55 e=switch2=ILAB0102.ILE0815.Is103{ILAB0102.ILE0815.net2656 ILAB0102.ILE0815.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net22097 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0815.Ivi5{ILAB0102.ILE0815.net1850 ILAB0102.net22097} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0715.A w=1.262 e=switch_sd=ILAB0102.ILE0715.Is112{ILAB0102.net22097 ILAB0102.ILE0715.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0715.net2749 w=1.374 e=switch_ds=ILAB0102.ILE0715.Is41{ILAB0102.ILE0715.A ILAB0102.ILE0715.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[8] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0715.net2656 ILAB0102.ILE0715.net0541 }
	 xc_pin xci2_ao21 a i [11] pinInv=0 { ILAB0102.ILE0815.net2749 }
	 xc_pin xci2_and3 a i [16] pinInv=0 { ILAB0102.ILE0814.net2749 }
	 xc_pin xci2_mux2h a i [14] pinInv=0 { ILAB0103.ILE0501.net2749 }
	 [0] xc_tree ILAB0102.ILE0715.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0715.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE0715.net1850 w=0.7 e=switch2=ILAB0102.ILE0715.Is103{ILAB0102.ILE0715.net2656 ILAB0102.ILE0715.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0715.net2660 w=0.55 e=switch2=ILAB0102.ILE0715.Is23{ILAB0102.ILE0715.net2656 ILAB0102.ILE0715.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0715.net2680 w=0.85 e=switch2=ILAB0102.ILE0715.Is63{ILAB0102.ILE0715.net0541 ILAB0102.ILE0715.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0102.net24529 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0715.Ivo1{ILAB0102.ILE0715.net2660 ILAB0102.net24529} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.net24212 w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0715.Ivi5{ILAB0102.ILE0715.net1850 ILAB0102.net24212} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE0815.A w=1.25 e=switch_sd=ILAB0102.ILE0815.Is121{ILAB0102.net24529 ILAB0102.ILE0815.A} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.net22406 w=1.15 e=inv_8_UCCLAB=ILAB0102.ILE0715.I666{ILAB0102.ILE0715.net2680 ILAB0102.net22406} prev=[4] elemInv=1 pathInv=1 v.w=0.1
	 [9] xc_tree net10423<2> w=2.55 e=switch=ILAB0102.ILE0515.Is52{net10423<2> ILAB0102.net24212} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.net18866 w=2.45 e=switch_sd=ILAB0102.ILE0714.Is96{ILAB0102.net22406 ILAB0102.net18866} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0815.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0815.Is41{ILAB0102.ILE0815.A ILAB0102.ILE0815.net2749} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE0814.net01345 w=2.65 e=inv_4_UCCLAB=ILAB0102.ILE0814.I714{ILAB0102.net18866 ILAB0102.ILE0814.net01345} prev=[10] elemInv=1 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0103.ILE0501.A w=3.4 e=switch=ILAB0103.ILE0501.Is25{net10423<2> ILAB0103.ILE0501.A} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0103.ILE0501.net2749 w=3.5 e=switch_ds=ILAB0103.ILE0501.Is41{ILAB0103.ILE0501.A ILAB0103.ILE0501.net2749} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0102.ILE0814.A w=3.346 e=switch1_sd=ILAB0102.ILE0814.Is54{ILAB0102.ILE0814.net01345 ILAB0102.ILE0814.A} prev=[12] elemInv=0 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB0102.ILE0814.net2749 w=3.458 e=switch_ds=ILAB0102.ILE0814.Is41{ILAB0102.ILE0814.A ILAB0102.ILE0814.net2749} prev=[15] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _084_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE0816.net2656 ILAB0102.ILE0816.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0102.ILE0815.net2746 }
	 [0] xc_tree ILAB0102.ILE0816.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0816.net1844 w=0.55 e=switch2=ILAB0102.ILE0816.Is31{ILAB0102.ILE0816.net2656 ILAB0102.ILE0816.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net18652 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0816.Ihi7{ILAB0102.ILE0816.net1844 ILAB0102.net18652} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0815.C w=1.6 e=switch=ILAB0102.ILE0815.Is13{ILAB0102.net18652 ILAB0102.ILE0815.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0815.net2746 w=1.7 e=switch_ds=ILAB0102.ILE0815.Is44{ILAB0102.ILE0815.C ILAB0102.ILE0815.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _007_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE0916.net2656 ILAB0102.ILE0916.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0103.ILE0902.net2749 }
	 [0] xc_tree ILAB0102.ILE0916.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0916.net2685 w=0.55 e=switch2=ILAB0102.ILE0916.Is127{ILAB0102.ILE0916.net2656 ILAB0102.ILE0916.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net10407<6> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0916.Iho1{ILAB0102.ILE0916.net2685 net10407<6>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0902.A w=1.25 e=switch_sd=ILAB0103.ILE0902.Is16{net10407<6> ILAB0103.ILE0902.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0902.net2749 w=1.35 e=switch_ds=ILAB0103.ILE0902.Is41{ILAB0103.ILE0902.A ILAB0103.ILE0902.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[7] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0103.ILE0902.net2656 ILAB0103.ILE0902.net0541 }
	 xc_pin xci2_ao21 a i [10] pinInv=0 { ILAB0102.ILE0916.net2749 }
	 xc_pin xci2_and3 a i [12] pinInv=0 { ILAB0102.ILE0816.net2749 }
	 xc_pin xci2_mux2h a i [6] pinInv=0 { ILAB0103.ILE0703.net2749 }
	 [0] xc_tree ILAB0103.ILE0902.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0902.net1850 w=0.7 e=switch2=ILAB0103.ILE0902.Is103{ILAB0103.ILE0902.net2656 ILAB0103.ILE0902.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.ILE0902.net1844 w=0.55 e=switch2=ILAB0103.ILE0902.Is31{ILAB0103.ILE0902.net2656 ILAB0103.ILE0902.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0103.net26192 w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0902.Ivi5{ILAB0103.ILE0902.net1850 ILAB0103.net26192} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.net26439 w=2.55 e=switch=ILAB0103.ILE0702.Is53{ILAB0103.net26439 ILAB0103.net26192} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0103.ILE0703.A w=3.05 e=switch_sd=ILAB0103.ILE0703.Is32{ILAB0103.net26439 ILAB0103.ILE0703.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0103.ILE0703.net2749 w=3.15 e=switch_ds=ILAB0103.ILE0703.Is41{ILAB0103.ILE0703.A ILAB0103.ILE0703.net2749} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree net10407<1> w=0.846 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0902.Ihi7{ILAB0103.ILE0902.net1844 net10407<1>} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0916.A w=1.358 e=switch_sd=ILAB0102.ILE0916.Is16{net10407<1> ILAB0102.ILE0916.A} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.net21604 w=2.958 e=switch=ILAB0102.ILE0916.Is129{ILAB0102.net21604 ILAB0102.ILE0916.A} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0916.net2749 w=1.47 e=switch_ds=ILAB0102.ILE0916.Is41{ILAB0102.ILE0916.A ILAB0102.ILE0916.net2749} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0816.A w=3.47 e=switch_sd=ILAB0102.ILE0816.Is120{ILAB0102.net21604 ILAB0102.ILE0816.A} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE0816.net2749 w=3.582 e=switch_ds=ILAB0102.ILE0816.Is41{ILAB0102.ILE0816.A ILAB0102.ILE0816.net2749} prev=[11] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _083_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE0915.net2656 ILAB0102.ILE0915.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0102.ILE0916.net2746 }
	 [0] xc_tree ILAB0102.ILE0915.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0915.net2650 w=0.55 e=switch2=ILAB0102.ILE0915.Is143{ILAB0102.ILE0915.net2656 ILAB0102.ILE0915.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net22164 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0915.Iho3{ILAB0102.ILE0915.net2650 ILAB0102.net22164} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0916.C w=1.346 e=switch_sd=ILAB0102.ILE0916.Is36{ILAB0102.net22164 ILAB0102.ILE0916.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0916.net2746 w=1.458 e=switch_ds=ILAB0102.ILE0916.Is44{ILAB0102.ILE0916.C ILAB0102.ILE0916.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _006_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE1016.net2656 ILAB0102.ILE1016.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE1015.net2749 }
	 [0] xc_tree ILAB0102.ILE1016.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1016.net1844 w=0.55 e=switch2=ILAB0102.ILE1016.Is31{ILAB0102.ILE1016.net2656 ILAB0102.ILE1016.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net21667 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1016.Ihi7{ILAB0102.ILE1016.net1844 ILAB0102.net21667} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1015.A w=1.6 e=switch=ILAB0102.ILE1015.Is9{ILAB0102.net21667 ILAB0102.ILE1015.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1015.net2749 w=1.7 e=switch_ds=ILAB0102.ILE1015.Is41{ILAB0102.ILE1015.A ILAB0102.ILE1015.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[6] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE1015.net2656 ILAB0102.ILE1015.net0541 }
	 xc_pin xci2_ao21 a i [10] pinInv=0 { ILAB0102.ILE1016.net2749 }
	 xc_pin xci2_and3 a i [11] pinInv=0 { ILAB0102.ILE0915.net2749 }
	 xc_pin xci2_mux2h a i [15] pinInv=0 { ILAB0103.ILE0903.net2749 }
	 [0] xc_tree ILAB0102.ILE1015.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1015.net1859 w=0.55 e=switch2=ILAB0102.ILE1015.Is119{ILAB0102.ILE1015.net2656 ILAB0102.ILE1015.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE1015.net1850 w=0.55 e=switch2=ILAB0102.ILE1015.Is103{ILAB0102.ILE1015.net2656 ILAB0102.ILE1015.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1015.net2650 w=0.55 e=switch2=ILAB0102.ILE1015.Is143{ILAB0102.ILE1015.net2656 ILAB0102.ILE1015.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0102.net24484 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1015.Ivi7{ILAB0102.ILE1015.net1859 ILAB0102.net24484} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.net24459 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1015.Iho3{ILAB0102.ILE1015.net2650 ILAB0102.net24459} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.net24482 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1015.Ivi5{ILAB0102.ILE1015.net1850 ILAB0102.net24482} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE1016.A w=1.25 e=switch_sd=ILAB0102.ILE1016.Is32{ILAB0102.net24459 ILAB0102.ILE1016.A} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0915.A w=1.25 e=switch_sd=ILAB0102.ILE0915.Is112{ILAB0102.net24482 ILAB0102.ILE0915.A} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0915.net2695 w=1.45 e=switch2=ILAB0102.ILE0915.Is15{ILAB0102.net24484 ILAB0102.ILE0915.net2695} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.ILE1016.net2749 w=1.35 e=switch_ds=ILAB0102.ILE1016.Is41{ILAB0102.ILE1016.A ILAB0102.ILE1016.net2749} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0915.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0915.Is41{ILAB0102.ILE0915.A ILAB0102.ILE0915.net2749} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.net24527 w=1.7 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0915.Ivo2{ILAB0102.ILE0915.net2695 ILAB0102.net24527} prev=[9] elemInv=1 pathInv=0 v.w=0.1
	 [13] xc_tree net10407<3> w=3.3 e=switch=ILAB0102.ILE0915.Is51{net10407<3> ILAB0102.net24527} prev=[12] elemInv=0 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0103.ILE0903.A w=4.15 e=switch=ILAB0103.ILE0903.Is8{net10407<3> ILAB0103.ILE0903.A} prev=[13] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0103.ILE0903.net2749 w=4.25 e=switch_ds=ILAB0103.ILE0903.Is41{ILAB0103.ILE0903.A ILAB0103.ILE0903.net2749} prev=[14] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _082_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0103.ILE1001.net2656 ILAB0103.ILE1001.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0102.ILE1016.net2746 }
	 [0] xc_tree ILAB0103.ILE1001.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE1001.net1838 w=0.55 e=switch2=ILAB0103.ILE1001.Is47{ILAB0103.ILE1001.net2656 ILAB0103.ILE1001.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net10403<2> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1001.Ihi5{ILAB0103.ILE1001.net1838 net10403<2>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1016.C w=1.346 e=switch_sd=ILAB0102.ILE1016.Is28{net10403<2> ILAB0102.ILE1016.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1016.net2746 w=1.458 e=switch_ds=ILAB0102.ILE1016.Is44{ILAB0102.ILE1016.C ILAB0102.ILE1016.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _005_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0103.ILE0801.net2656 ILAB0103.ILE0801.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0103.ILE0802.net2749 }
	 [0] xc_tree ILAB0103.ILE0801.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0801.net2650 w=0.55 e=switch2=ILAB0103.ILE0801.Is143{ILAB0103.ILE0801.net2656 ILAB0103.ILE0801.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net20679 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0801.Iho3{ILAB0103.ILE0801.net2650 ILAB0103.net20679} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0802.A w=1.25 e=switch_sd=ILAB0103.ILE0802.Is32{ILAB0103.net20679 ILAB0103.ILE0802.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0802.net2749 w=1.35 e=switch_ds=ILAB0103.ILE0802.Is41{ILAB0103.ILE0802.A ILAB0103.ILE0802.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[5] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0103.ILE0802.net2656 ILAB0103.ILE0802.net0541 }
	 xc_pin xci2_ao21 a i [10] pinInv=0 { ILAB0103.ILE0801.net2749 }
	 xc_pin xci2_and3 a i [13] pinInv=0 { ILAB0103.ILE1001.net2749 }
	 xc_pin xci2_mux2h a i [8] pinInv=0 { ILAB0103.ILE0502.net2749 }
	 [0] xc_tree ILAB0103.ILE0802.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0802.net1844 w=0.55 e=switch2=ILAB0103.ILE0802.Is31{ILAB0103.ILE0802.net2656 ILAB0103.ILE0802.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.ILE0802.net1859 w=0.646 e=switch2=ILAB0103.ILE0802.Is119{ILAB0103.ILE0802.net2656 ILAB0103.ILE0802.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree net10411<1> w=0.846 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0802.Ihi7{ILAB0103.ILE0802.net1844 net10411<1>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.net26149 w=0.942 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0802.Ivi7{ILAB0103.ILE0802.net1859 ILAB0103.net26149} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0103.ILE0801.A w=1.792 e=switch=ILAB0103.ILE0801.Is9{net10411<1> ILAB0103.ILE0801.A} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0103.ILE0801.net2635 w=1.558 e=switch2=ILAB0103.ILE0801.Is135{net10411<1> ILAB0103.ILE0801.net2635} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0103.ILE0502.A w=1.454 e=switch_sd=ILAB0103.ILE0502.Is121{ILAB0103.net26149 ILAB0103.ILE0502.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0103.ILE0502.net2749 w=1.566 e=switch_ds=ILAB0103.ILE0502.Is41{ILAB0103.ILE0502.A ILAB0103.ILE0502.net2749} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0103.net20678 w=1.82 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0801.Iho2{ILAB0103.ILE0801.net2635 ILAB0103.net20678} prev=[6] elemInv=1 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0103.ILE0801.net2749 w=1.904 e=switch_ds=ILAB0103.ILE0801.Is41{ILAB0103.ILE0801.A ILAB0103.ILE0801.net2749} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0103.net16562 w=3.42 e=switch=ILAB0103.ILE0801.Is52{ILAB0103.net20678 ILAB0103.net16562} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0103.ILE1001.A w=5.402 e=switch=ILAB0103.ILE1001.Is113{ILAB0103.net16562 ILAB0103.ILE1001.A} prev=[11] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0103.ILE1001.net2749 w=5.514 e=switch_ds=ILAB0103.ILE1001.Is41{ILAB0103.ILE1001.A ILAB0103.ILE1001.net2749} prev=[12] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _081_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0103.ILE0901.net2656 ILAB0103.ILE0901.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0103.ILE0801.net2746 }
	 [0] xc_tree ILAB0103.ILE0901.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0901.net1859 w=0.55 e=switch2=ILAB0103.ILE0901.Is119{ILAB0103.ILE0901.net2656 ILAB0103.ILE0901.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net20929 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0901.Ivi7{ILAB0103.ILE0901.net1859 ILAB0103.net20929} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0801.C w=1.696 e=switch=ILAB0103.ILE0801.Is133{ILAB0103.net20929 ILAB0103.ILE0801.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0801.net2746 w=1.808 e=switch_ds=ILAB0103.ILE0801.Is44{ILAB0103.ILE0801.C ILAB0103.ILE0801.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _004_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0103.ILE1201.net2656 ILAB0103.ILE1201.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0103.ILE1202.net2749 }
	 [0] xc_tree ILAB0103.ILE1201.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE1201.net2650 w=0.55 e=switch2=ILAB0103.ILE1201.Is143{ILAB0103.ILE1201.net2656 ILAB0103.ILE1201.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net15504 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1201.Iho3{ILAB0103.ILE1201.net2650 ILAB0103.net15504} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE1202.A w=1.25 e=switch_sd=ILAB0103.ILE1202.Is32{ILAB0103.net15504 ILAB0103.ILE1202.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE1202.net2749 w=1.35 e=switch_ds=ILAB0103.ILE1202.Is41{ILAB0103.ILE1202.A ILAB0103.ILE1202.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[4] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0103.ILE1202.net2656 ILAB0103.ILE1202.net0541 }
	 xc_pin xci2_ao21 a i [8] pinInv=0 { ILAB0103.ILE1201.net2749 }
	 xc_pin xci2_and3 a i [13] pinInv=0 { ILAB0103.ILE0901.net2749 }
	 xc_pin xci2_mux2h a i [11] pinInv=0 { ILAB0103.ILE0702.net2749 }
	 [0] xc_tree ILAB0103.ILE1202.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE1202.net1862 w=0.85 e=switch2=ILAB0103.ILE1202.Is111{ILAB0103.ILE1202.net2656 ILAB0103.ILE1202.net1862} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.ILE1202.net1844 w=0.55 e=switch2=ILAB0103.ILE1202.Is31{ILAB0103.ILE1202.net2656 ILAB0103.ILE1202.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree net10395<1> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1202.Ihi7{ILAB0103.ILE1202.net1844 net10395<1>} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE1201.A w=1.6 e=switch=ILAB0103.ILE1201.Is9{net10395<1> ILAB0103.ILE1201.A} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0103.net26554 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1202.Ivi6{ILAB0103.ILE1202.net1862 ILAB0103.net26554} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0103.ILE0902.net1859 w=1.7 e=switch2=ILAB0103.ILE0902.Is119{ILAB0103.net26554 ILAB0103.ILE0902.net1859} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0103.net15529 w=3.2 e=switch=ILAB0103.ILE1201.Is128{ILAB0103.net15529 ILAB0103.ILE1201.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0103.ILE1201.net2749 w=1.7 e=switch_ds=ILAB0103.ILE1201.Is41{ILAB0103.ILE1201.A ILAB0103.ILE1201.net2749} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0103.net26194 w=1.9 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0902.Ivi7{ILAB0103.ILE0902.net1859 ILAB0103.net26194} prev=[6] elemInv=1 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0103.ILE0702.A w=2.4 e=switch_sd=ILAB0103.ILE0702.Is120{ILAB0103.net26194 ILAB0103.ILE0702.A} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0103.ILE0702.net2749 w=2.5 e=switch_ds=ILAB0103.ILE0702.Is41{ILAB0103.ILE0702.A ILAB0103.ILE0702.net2749} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0103.ILE0901.A w=3.7 e=switch_sd=ILAB0103.ILE0901.Is121{ILAB0103.net15529 ILAB0103.ILE0901.A} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0103.ILE0901.net2749 w=3.8 e=switch_ds=ILAB0103.ILE0901.Is41{ILAB0103.ILE0901.A ILAB0103.ILE0901.net2749} prev=[12] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _080_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0103.ILE1101.net2656 ILAB0103.ILE1101.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0103.ILE1201.net2746 }
	 [0] xc_tree ILAB0103.ILE1101.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE1101.net2660 w=0.55 e=switch2=ILAB0103.ILE1101.Is23{ILAB0103.ILE1101.net2656 ILAB0103.ILE1101.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net20884 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1101.Ivo1{ILAB0103.ILE1101.net2660 ILAB0103.net20884} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE1201.C w=1.346 e=switch_sd=ILAB0103.ILE1201.Is125{ILAB0103.net20884 ILAB0103.ILE1201.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE1201.net2746 w=1.458 e=switch_ds=ILAB0103.ILE1201.Is44{ILAB0103.ILE1201.C ILAB0103.ILE1201.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _003_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE1116.net2656 ILAB0102.ILE1116.net0541 }
	 xc_pin xci2_dffcl d i [7] pinInv=0 { ILAB0103.ILE1002.net2749 }
	 [0] xc_tree ILAB0102.ILE1116.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1116.net1859 w=1 e=switch2=ILAB0102.ILE1116.Is119{ILAB0102.ILE1116.net2656 ILAB0102.ILE1116.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net21739 w=1.446 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1116.Ivi7{ILAB0102.ILE1116.net1859 ILAB0102.net21739} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1016.net2695 w=2.158 e=switch2=ILAB0102.ILE1016.Is15{ILAB0102.net21739 ILAB0102.ILE1016.net2695} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net21197 w=2.504 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1016.Ivo2{ILAB0102.ILE1016.net2695 ILAB0102.net21197} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree net10403<5> w=6.504 e=switch=ILAB0102.ILE1016.Is52{net10403<5> ILAB0102.net21197} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0103.ILE1002.A w=7.366 e=switch=ILAB0103.ILE1002.Is25{net10403<5> ILAB0103.ILE1002.A} prev=[5] elemInv=0 pathInv=0 v.w=0.1
	 [7] xc_tree ILAB0103.ILE1002.net2749 w=7.478 e=switch_ds=ILAB0103.ILE1002.Is41{ILAB0103.ILE1002.A ILAB0103.ILE1002.net2749} prev=[6] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[3] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0103.ILE1002.net2656 ILAB0103.ILE1002.net0541 }
	 xc_pin xci2_ao21 a i [11] pinInv=0 { ILAB0102.ILE1116.net2749 }
	 xc_pin xci2_and3 a i [6] pinInv=0 { ILAB0103.ILE1101.net2749 }
	 xc_pin xci2_mux2h a i [8] pinInv=0 { ILAB0103.ILE1003.net2749 }
	 [0] xc_tree ILAB0103.ILE1002.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE1002.net2680 w=0.55 e=switch2=ILAB0103.ILE1002.Is63{ILAB0103.ILE1002.net0541 ILAB0103.ILE1002.net2680} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net16556 w=0.75 e=inv_8_UCCLAB=ILAB0103.ILE1002.I666{ILAB0103.ILE1002.net2680 ILAB0103.net16556} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.net28727 w=2.05 e=switch_sd=ILAB0103.ILE1001.Is96{ILAB0103.net16556 ILAB0103.net28727} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE1101.net01345 w=2.25 e=inv_4_UCCLAB=ILAB0103.ILE1101.I714{ILAB0103.net28727 ILAB0103.ILE1101.net01345} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0103.ILE1101.A w=2.946 e=switch1_sd=ILAB0103.ILE1101.Is54{ILAB0103.ILE1101.net01345 ILAB0103.ILE1101.A} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0103.ILE1101.net2749 w=3.058 e=switch_ds=ILAB0103.ILE1101.Is41{ILAB0103.ILE1101.A ILAB0103.ILE1101.net2749} prev=[5] elemInv=0 pathInv=0 v.w=0.1
	 [7] xc_tree ILAB0103.ILE1003.A w=1.274 e=switch_sd=ILAB0103.ILE1003.Is64{ILAB0103.net16556 ILAB0103.ILE1003.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0103.ILE1003.net2749 w=1.398 e=switch_ds=ILAB0103.ILE1003.Is41{ILAB0103.ILE1003.A ILAB0103.ILE1003.net2749} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree net10399<1> w=4.582 e=switch=ILAB0103.ILE1101.Is9{net10399<1> ILAB0103.ILE1101.A} prev=[5] elemInv=0 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0102.ILE1116.A w=5.118 e=switch_sd=ILAB0102.ILE1116.Is16{net10399<1> ILAB0102.ILE1116.A} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0102.ILE1116.net2749 w=5.254 e=switch_ds=ILAB0102.ILE1116.Is41{ILAB0102.ILE1116.A ILAB0102.ILE1116.net2749} prev=[10] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _079_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE1115.net2656 ILAB0102.ILE1115.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0102.ILE1116.net2746 }
	 [0] xc_tree ILAB0102.ILE1115.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1115.net2650 w=0.55 e=switch2=ILAB0102.ILE1115.Is143{ILAB0102.ILE1115.net2656 ILAB0102.ILE1115.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net24504 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1115.Iho3{ILAB0102.ILE1115.net2650 ILAB0102.net24504} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1116.C w=1.25 e=switch_sd=ILAB0102.ILE1116.Is36{ILAB0102.net24504 ILAB0102.ILE1116.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1116.net2746 w=1.35 e=switch_ds=ILAB0102.ILE1116.Is44{ILAB0102.ILE1116.C ILAB0102.ILE1116.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _002_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE0914.net2656 ILAB0102.ILE0914.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE1014.net2749 }
	 [0] xc_tree ILAB0102.ILE0914.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0914.net2660 w=0.55 e=switch2=ILAB0102.ILE0914.Is23{ILAB0102.ILE0914.net2656 ILAB0102.ILE0914.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net23269 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0914.Ivo1{ILAB0102.ILE0914.net2660 ILAB0102.net23269} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1014.A w=1.25 e=switch_sd=ILAB0102.ILE1014.Is121{ILAB0102.net23269 ILAB0102.ILE1014.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1014.net2749 w=1.35 e=switch_ds=ILAB0102.ILE1014.Is41{ILAB0102.ILE1014.A ILAB0102.ILE1014.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[2] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE1014.net2656 ILAB0102.ILE1014.net0541 }
	 xc_pin xci2_ao21 a i [14] pinInv=0 { ILAB0102.ILE0914.net2749 }
	 xc_pin xci2_and3 a i [12] pinInv=0 { ILAB0102.ILE1115.net2749 }
	 xc_pin xci2_mux2h a i [11] pinInv=0 { ILAB0102.ILE0615.net2749 }
	 [0] xc_tree ILAB0102.ILE1014.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1014.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE1014.net1859 w=0.55 e=switch2=ILAB0102.ILE1014.Is119{ILAB0102.ILE1014.net2656 ILAB0102.ILE1014.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1014.net2680 w=0.85 e=switch2=ILAB0102.ILE1014.Is63{ILAB0102.ILE1014.net0541 ILAB0102.ILE1014.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0102.net23494 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1014.Ivi7{ILAB0102.ILE1014.net1859 ILAB0102.net23494} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.net22118 w=2.35 e=switch=ILAB0102.ILE0614.Is37{ILAB0102.net22118 ILAB0102.net23494} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.net21416 w=1.15 e=inv_8_UCCLAB=ILAB0102.ILE1014.I666{ILAB0102.ILE1014.net2680 ILAB0102.net21416} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.net24491 w=2.45 e=switch_sd=ILAB0102.ILE1015.Is72{ILAB0102.net21416 ILAB0102.net24491} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0615.A w=2.85 e=switch_sd=ILAB0102.ILE0615.Is24{ILAB0102.net22118 ILAB0102.ILE0615.A} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE1115.net01345 w=2.65 e=inv_4_UCCLAB=ILAB0102.ILE1115.I714{ILAB0102.net24491 ILAB0102.ILE1115.net01345} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0102.ILE1115.A w=3.25 e=switch1_sd=ILAB0102.ILE1115.Is54{ILAB0102.ILE1115.net01345 ILAB0102.ILE1115.A} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0615.net2749 w=2.95 e=switch_ds=ILAB0102.ILE0615.Is41{ILAB0102.ILE0615.A ILAB0102.ILE0615.net2749} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE1115.net2749 w=3.35 e=switch_ds=ILAB0102.ILE1115.Is41{ILAB0102.ILE1115.A ILAB0102.ILE1115.net2749} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0102.ILE0914.A w=1.696 e=switch=ILAB0102.ILE0914.Is129{ILAB0102.net23494 ILAB0102.ILE0914.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0102.ILE0914.net2749 w=1.808 e=switch_ds=ILAB0102.ILE0914.Is41{ILAB0102.ILE0914.A ILAB0102.ILE0914.net2749} prev=[13] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _078_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE0913.net2656 ILAB0102.ILE0913.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0102.ILE0914.net2746 }
	 [0] xc_tree ILAB0102.ILE0913.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0913.net2650 w=0.55 e=switch2=ILAB0102.ILE0913.Is143{ILAB0102.ILE0913.net2656 ILAB0102.ILE0913.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net25494 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0913.Iho3{ILAB0102.ILE0913.net2650 ILAB0102.net25494} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0914.C w=1.25 e=switch_sd=ILAB0102.ILE0914.Is36{ILAB0102.net25494 ILAB0102.ILE0914.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0914.net2746 w=1.35 e=switch_ds=ILAB0102.ILE0914.Is44{ILAB0102.ILE0914.C ILAB0102.ILE0914.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _001_ {
	 xc_pin xci2_ao21 y o [-1] pinInv=0 { ILAB0102.ILE0906.net2656 ILAB0102.ILE0906.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE0806.net2749 }
	 [0] xc_tree ILAB0102.ILE0906.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0906.net1859 w=0.55 e=switch2=ILAB0102.ILE0906.Is119{ILAB0102.ILE0906.net2656 ILAB0102.ILE0906.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net24664 w=0.942 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0906.Ivi7{ILAB0102.ILE0906.net1859 ILAB0102.net24664} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0806.A w=1.816 e=switch=ILAB0102.ILE0806.Is129{ILAB0102.net24664 ILAB0102.ILE0806.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0806.net2749 w=1.94 e=switch_ds=ILAB0102.ILE0806.Is41{ILAB0102.ILE0806.A ILAB0102.ILE0806.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[1] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0806.net2656 ILAB0102.ILE0806.net0541 }
	 xc_pin xci2_ao21 a i [5] pinInv=0 { ILAB0102.ILE0906.net2749 }
	 xc_pin xci2_and3 a i [17] pinInv=0 { ILAB0102.ILE0913.net2749 }
	 xc_pin xci2_mux2h a i [10] pinInv=0 { ILAB0102.ILE0713.net2749 }
	 [0] xc_tree ILAB0102.ILE0806.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0806.net2670 w=0.55 e=switch2=ILAB0102.ILE0806.Is7{ILAB0102.ILE0806.net2656 ILAB0102.ILE0806.net2670} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net24660 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0806.Ivo3{ILAB0102.ILE0806.net2670 ILAB0102.net24660} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0906.A w=1.262 e=switch_sd=ILAB0102.ILE0906.Is104{ILAB0102.net24660 ILAB0102.ILE0906.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net24662 w=2.874 e=switch=ILAB0102.ILE0906.Is113{ILAB0102.net24662 ILAB0102.ILE0906.A} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0906.net2749 w=1.374 e=switch_ds=ILAB0102.ILE0906.Is41{ILAB0102.ILE0906.A ILAB0102.ILE0906.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.net16042 w=5.236 e=switch=ILAB0102.ILE0706.Is51{ILAB0102.net16042 ILAB0102.net24662} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE0710.net2685 w=5.798 e=switch2=ILAB0102.ILE0710.Is127{ILAB0102.net16042 ILAB0102.ILE0710.net2685} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.net24142 w=7.13 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0710.Iho1{ILAB0102.ILE0710.net2685 ILAB0102.net24142} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0713.A w=7.992 e=switch=ILAB0102.ILE0713.Is9{ILAB0102.net24142 ILAB0102.ILE0713.A} prev=[8] elemInv=0 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0713.net2749 w=8.104 e=switch_ds=ILAB0102.ILE0713.Is41{ILAB0102.ILE0713.A ILAB0102.ILE0713.net2749} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0102.net26167 w=2.862 e=switch=ILAB0102.ILE0906.Is8{ILAB0102.net26167 ILAB0102.ILE0906.A} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE0906.net2685 w=3.712 e=switch2=ILAB0102.ILE0906.Is127{ILAB0102.net26167 ILAB0102.ILE0906.net2685} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0102.net24637 w=4.048 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0906.Iho1{ILAB0102.ILE0906.net2685 ILAB0102.net24637} prev=[12] elemInv=1 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0102.ILE0910.net2685 w=4.634 e=switch2=ILAB0102.ILE0910.Is127{ILAB0102.net24637 ILAB0102.ILE0910.net2685} prev=[13] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0102.net23692 w=4.87 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0910.Iho1{ILAB0102.ILE0910.net2685 ILAB0102.net23692} prev=[14] elemInv=1 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0102.ILE0913.A w=5.756 e=switch=ILAB0102.ILE0913.Is9{ILAB0102.net23692 ILAB0102.ILE0913.A} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0102.ILE0913.net2749 w=5.892 e=switch_ds=ILAB0102.ILE0913.Is41{ILAB0102.ILE0913.A ILAB0102.ILE0913.net2749} prev=[16] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _077_ {
	 xc_pin xci2_and3 y o [-1] pinInv=0 { ILAB0102.ILE0905.net2656 ILAB0102.ILE0905.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0102.ILE0906.net2746 }
	 [0] xc_tree ILAB0102.ILE0905.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0905.net2650 w=0.55 e=switch2=ILAB0102.ILE0905.Is143{ILAB0102.ILE0905.net2656 ILAB0102.ILE0905.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net25404 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0905.Iho3{ILAB0102.ILE0905.net2650 ILAB0102.net25404} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0906.C w=1.25 e=switch_sd=ILAB0102.ILE0906.Is36{ILAB0102.net25404 ILAB0102.ILE0906.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0906.net2746 w=1.35 e=switch_ds=ILAB0102.ILE0906.Is44{ILAB0102.ILE0906.C ILAB0102.ILE0906.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _076_ {
	 xc_pin xci2_nand2 y o [-1] pinInv=0 { ILAB0102.ILE1304.net2656 ILAB0102.ILE1304.net0541 }
	 xc_pin xci2_and3 c i [18] pinInv=0 { ILAB0102.ILE0905.net2746 }
	 xc_pin xci2_and3 c i [142] pinInv=0 { ILAB0102.ILE0913.net2746 }
	 xc_pin xci2_and3 c i [100] pinInv=0 { ILAB0102.ILE1115.net2746 }
	 xc_pin xci2_and3 c i [130] pinInv=0 { ILAB0103.ILE1101.net2746 }
	 xc_pin xci2_and3 c i [99] pinInv=0 { ILAB0103.ILE0901.net2746 }
	 xc_pin xci2_and3 c i [154] pinInv=0 { ILAB0103.ILE1001.net2746 }
	 xc_pin xci2_and3 c i [84] pinInv=0 { ILAB0102.ILE0915.net2746 }
	 xc_pin xci2_and3 c i [161] pinInv=0 { ILAB0102.ILE0816.net2746 }
	 xc_pin xci2_and3 c i [162] pinInv=0 { ILAB0102.ILE0814.net2746 }
	 xc_pin xci2_and3 c i [91] pinInv=0 { ILAB0102.ILE0809.net2746 }
	 xc_pin xci2_and3 c i [10] pinInv=0 { ILAB0102.ILE1104.net2746 }
	 xc_pin xci2_and3 c i [139] pinInv=0 { ILAB0102.ILE1003.net2746 }
	 xc_pin xci2_and3 c i [70] pinInv=0 { ILAB0102.ILE0904.net2746 }
	 xc_pin xci2_and3 c i [40] pinInv=0 { ILAB0102.ILE0804.net2746 }
	 xc_pin xci2_and3 c i [86] pinInv=0 { ILAB0102.ILE0807.net2746 }
	 xc_pin xci2_and3 c i [20] pinInv=0 { ILAB0102.ILE0908.net2746 }
	 xc_pin xci2_and3 c i [149] pinInv=0 { ILAB0102.ILE1010.net2746 }
	 xc_pin xci2_and3 c i [69] pinInv=0 { ILAB0102.ILE1316.net2746 }
	 xc_pin xci2_and3 c i [58] pinInv=0 { ILAB0102.ILE1315.net2746 }
	 xc_pin xci2_mux2h s i [103] pinInv=0 { ILAB0102.ILE0503.net2743 }
	 xc_pin xci2_mux2h s i [153] pinInv=0 { ILAB0102.ILE0713.net2743 }
	 xc_pin xci2_mux2h s i [122] pinInv=0 { ILAB0102.ILE0615.net2743 }
	 xc_pin xci2_mux2h s i [152] pinInv=0 { ILAB0103.ILE1003.net2743 }
	 xc_pin xci2_mux2h s i [132] pinInv=0 { ILAB0103.ILE0702.net2743 }
	 xc_pin xci2_mux2h s i [169] pinInv=0 { ILAB0103.ILE0502.net2743 }
	 xc_pin xci2_mux2h s i [131] pinInv=0 { ILAB0103.ILE0903.net2743 }
	 xc_pin xci2_mux2h s i [129] pinInv=0 { ILAB0103.ILE0703.net2743 }
	 xc_pin xci2_mux2h s i [167] pinInv=0 { ILAB0103.ILE0501.net2743 }
	 xc_pin xci2_mux2h s i [115] pinInv=0 { ILAB0102.ILE0711.net2743 }
	 xc_pin xci2_mux2h s i [64] pinInv=0 { ILAB0102.ILE0504.net2743 }
	 xc_pin xci2_mux2h s i [71] pinInv=0 { ILAB0102.ILE0802.net2743 }
	 xc_pin xci2_mux2h s i [62] pinInv=0 { ILAB0102.ILE0602.net2743 }
	 xc_pin xci2_mux2h s i [14] pinInv=0 { ILAB0102.ILE0604.net2743 }
	 xc_pin xci2_mux2h s i [93] pinInv=0 { ILAB0102.ILE0706.net2743 }
	 xc_pin xci2_mux2h s i [105] pinInv=0 { ILAB0102.ILE0608.net2743 }
	 xc_pin xci2_mux2h s i [114] pinInv=0 { ILAB0102.ILE0710.net2743 }
	 xc_pin xci2_mux2h s i [144] pinInv=0 { ILAB0102.ILE1011.net2743 }
	 xc_pin xci2_mux2h s i [13] pinInv=0 { ILAB0102.ILE1306.net2743 }
	 xc_pin xci2_mux2h s i [53] pinInv=0 { ILAB0102.ILE1312.net2743 }
	 xc_pin xci2_mux2h s i [127] pinInv=0 { ILAB0103.ILE1203.net2743 }
	 xc_pin xci2_mux2h s i [119] pinInv=0 { ILAB0103.ILE1102.net2743 }
	 xc_pin xci2_mux2h s i [101] pinInv=0 { ILAB0102.ILE1215.net2743 }
	 xc_pin xci2_mux2h s i [121] pinInv=0 { ILAB0102.ILE0812.net2743 }
	 [0] xc_tree ILAB0102.ILE1304.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1304.net1859 w=0.55 e=switch2=ILAB0102.ILE1304.Is119{ILAB0102.ILE1304.net2656 ILAB0102.ILE1304.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE1304.net2635 w=0.55 e=switch2=ILAB0102.ILE1304.Is135{ILAB0102.ILE1304.net2656 ILAB0102.ILE1304.net2635} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.net25159 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1304.Ivi7{ILAB0102.ILE1304.net1859 ILAB0102.net25159} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net25133 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1304.Iho2{ILAB0102.ILE1304.net2635 ILAB0102.net25133} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.net25087 w=2.35 e=switch=ILAB0102.ILE0904.Is35{ILAB0102.net25087 ILAB0102.net25159} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.ILE0904.net1859 w=1.3 e=switch2=ILAB0102.ILE0904.Is119{ILAB0102.net25159 ILAB0102.ILE0904.net1859} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE1104.C w=1.25 e=switch_sd=ILAB0102.ILE1104.Is124{ILAB0102.net25159 ILAB0102.ILE1104.C} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE1306.B w=1.6 e=switch=ILAB0102.ILE1306.Is27{ILAB0102.net25133 ILAB0102.ILE1306.B} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.net16582 w=2.85 e=switch=ILAB0102.ILE1104.Is13{ILAB0102.net16582 ILAB0102.ILE1104.C} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.ILE1104.net2746 w=1.35 e=switch_ds=ILAB0102.ILE1104.Is44{ILAB0102.ILE1104.C ILAB0102.ILE1104.net2746} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.net25114 w=1.5 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0904.Ivi7{ILAB0102.ILE0904.net1859 ILAB0102.net25114} prev=[6] elemInv=1 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0102.ILE0604.B w=2 e=switch_sd=ILAB0102.ILE0604.Is123{ILAB0102.net25114 ILAB0102.ILE0604.B} prev=[11] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0102.ILE1306.net2743 w=1.7 e=switch_ds=ILAB0102.ILE1306.Is43{ILAB0102.ILE1306.B ILAB0102.ILE1306.net2743} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0102.ILE0604.net2743 w=2.1 e=switch_ds=ILAB0102.ILE0604.Is43{ILAB0102.ILE0604.B ILAB0102.ILE0604.net2743} prev=[12] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0102.ILE0905.C w=2.85 e=switch_sd=ILAB0102.ILE0905.Is21{ILAB0102.net25087 ILAB0102.ILE0905.C} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0102.ILE0908.C w=3.2 e=switch=ILAB0102.ILE0908.Is12{ILAB0102.net25087 ILAB0102.ILE0908.C} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0102.ILE0908.net2685 w=3.2 e=switch2=ILAB0102.ILE0908.Is127{ILAB0102.net25087 ILAB0102.ILE0908.net2685} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [18] xc_tree ILAB0102.ILE0905.net2746 w=2.95 e=switch_ds=ILAB0102.ILE0905.Is44{ILAB0102.ILE0905.C ILAB0102.ILE0905.net2746} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0102.ILE1105.net2685 w=3.7 e=switch2=ILAB0102.ILE1105.Is127{ILAB0102.net16582 ILAB0102.ILE1105.net2685} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0102.ILE0908.net2746 w=3.3 e=switch_ds=ILAB0102.ILE0908.Is44{ILAB0102.ILE0908.C ILAB0102.ILE0908.net2746} prev=[16] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0102.net18517 w=3.5 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0908.Iho1{ILAB0102.ILE0908.net2685 ILAB0102.net18517} prev=[17] elemInv=1 pathInv=0 v.w=0.1
	 [22] xc_tree ILAB0102.net17932 w=4 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1105.Iho1{ILAB0102.ILE1105.net2685 ILAB0102.net17932} prev=[19] elemInv=1 pathInv=0 v.w=0.1
	 [23] xc_tree ILAB0102.ILE1109.net2685 w=4.85 e=switch2=ILAB0102.ILE1109.Is127{ILAB0102.net17932 ILAB0102.ILE1109.net2685} prev=[22] elemInv=0 pathInv=0 v.w=0.1
	 [24] xc_tree ILAB0102.net16357 w=5.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1109.Iho1{ILAB0102.ILE1109.net2685 ILAB0102.net16357} prev=[23] elemInv=1 pathInv=1 v.w=0.1
	 [25] xc_tree ILAB0102.ILE1113.net2685 w=5.7 e=switch2=ILAB0102.ILE1113.Is127{ILAB0102.net16357 ILAB0102.ILE1113.net2685} prev=[24] elemInv=0 pathInv=1 v.w=0.1
	 [26] xc_tree net10399<0> w=5.9 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1113.Iho1{ILAB0102.ILE1113.net2685 net10399<0>} prev=[25] elemInv=1 pathInv=0 v.w=0.1
	 [27] xc_tree ILAB0102.ILE1304.net1832 w=0.85 e=switch2=ILAB0102.ILE1304.Is39{ILAB0102.ILE1304.net2656 ILAB0102.ILE1304.net1832} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [28] xc_tree ILAB0102.ILE1004.B w=2.05 e=switch_sd=ILAB0102.ILE1004.Is123{ILAB0102.net25159 ILAB0102.ILE1004.B} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [29] xc_tree ILAB0102.net20452 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1304.Ihi6{ILAB0102.ILE1304.net1832 ILAB0102.net20452} prev=[27] elemInv=1 pathInv=1 v.w=0.1
	 [30] xc_tree ILAB0102.ILE1305.net2685 w=1.7 e=switch2=ILAB0102.ILE1305.Is127{ILAB0102.net20452 ILAB0102.ILE1305.net2685} prev=[29] elemInv=0 pathInv=1 v.w=0.1
	 [31] xc_tree ILAB0102.ILE0804.C w=2.362 e=switch=ILAB0102.ILE0804.Is133{ILAB0102.net25114 ILAB0102.ILE0804.C} prev=[11] elemInv=0 pathInv=0 v.w=0.1
	 [32] xc_tree ILAB0102.ILE0904.C w=4.406 e=switch=ILAB0102.ILE0904.Is132{ILAB0102.net25114 ILAB0102.ILE0904.C} prev=[11] elemInv=0 pathInv=0 v.w=0.1
	 [33] xc_tree ILAB0102.net18722 w=3.2 e=switch=ILAB0102.ILE1306.Is115{ILAB0102.net18722 ILAB0102.ILE1306.B} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [34] xc_tree ILAB0102.net15907 w=1.9 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1305.Iho1{ILAB0102.ILE1305.net2685 ILAB0102.net15907} prev=[30] elemInv=1 pathInv=0 v.w=0.1
	 [35] xc_tree ILAB0102.ILE1309.net2685 w=2.45 e=switch2=ILAB0102.ILE1309.Is127{ILAB0102.net15907 ILAB0102.ILE1309.net2685} prev=[34] elemInv=0 pathInv=0 v.w=0.1
	 [36] xc_tree net17214<6> w=3.6 e=switch=ILAB0102.ILE0604.Is10{net17214<6> ILAB0102.ILE0604.B} prev=[12] elemInv=0 pathInv=0 v.w=0.1
	 [37] xc_tree ILAB0102.net26012 w=3.6 e=switch=ILAB0102.ILE0604.Is115{ILAB0102.net26012 ILAB0102.ILE0604.B} prev=[12] elemInv=0 pathInv=0 v.w=0.1
	 [38] xc_tree ILAB0102.net20677 w=4.058 e=switch=ILAB0102.ILE0804.Is13{ILAB0102.net20677 ILAB0102.ILE0804.C} prev=[31] elemInv=0 pathInv=0 v.w=0.1
	 [39] xc_tree net17206<6> w=3.962 e=switch=ILAB0102.ILE0804.Is12{net17206<6> ILAB0102.ILE0804.C} prev=[31] elemInv=0 pathInv=0 v.w=0.1
	 [40] xc_tree ILAB0102.ILE0804.net2746 w=2.474 e=switch_ds=ILAB0102.ILE0804.Is44{ILAB0102.ILE0804.C ILAB0102.ILE0804.net2746} prev=[31] elemInv=0 pathInv=0 v.w=0.1
	 [41] xc_tree ILAB0102.net16222 w=2.65 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1309.Iho1{ILAB0102.ILE1309.net2685 ILAB0102.net16222} prev=[35] elemInv=1 pathInv=1 v.w=0.1
	 [42] xc_tree ILAB0102.ILE1312.B w=3.512 e=switch=ILAB0102.ILE1312.Is11{ILAB0102.net16222 ILAB0102.ILE1312.B} prev=[41] elemInv=0 pathInv=1 v.w=0.1
	 [43] xc_tree ILAB0102.ILE1313.net2685 w=3.2 e=switch2=ILAB0102.ILE1313.Is127{ILAB0102.net16222 ILAB0102.ILE1313.net2685} prev=[41] elemInv=0 pathInv=1 v.w=0.1
	 [44] xc_tree ILAB0102.net24349 w=4.8 e=switch=ILAB0102.ILE0908.Is133{ILAB0102.net24349 ILAB0102.ILE0908.C} prev=[16] elemInv=0 pathInv=1 v.w=0.1
	 [45] xc_tree ILAB0102.net18542 w=4.8 e=switch=ILAB0102.ILE0908.Is117{ILAB0102.net18542 ILAB0102.ILE0908.C} prev=[16] elemInv=0 pathInv=1 v.w=0.1
	 [46] xc_tree net10391<0> w=3.4 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1313.Iho1{ILAB0102.ILE1313.net2685 net10391<0>} prev=[43] elemInv=1 pathInv=0 v.w=0.1
	 [47] xc_tree ILAB0102.ILE1106.net1862 w=3.9 e=switch2=ILAB0102.ILE1106.Is111{ILAB0102.net18722 ILAB0102.ILE1106.net1862} prev=[33] elemInv=0 pathInv=1 v.w=0.1
	 [48] xc_tree ILAB0103.ILE1301.net2685 w=4.25 e=switch2=ILAB0103.ILE1301.Is127{net10391<0> ILAB0103.ILE1301.net2685} prev=[46] elemInv=0 pathInv=0 v.w=0.1
	 [49] xc_tree ILAB0102.ILE1315.C w=3.912 e=switch_sd=ILAB0102.ILE1315.Is20{net10391<0> ILAB0102.ILE1315.C} prev=[46] elemInv=0 pathInv=0 v.w=0.1
	 [50] xc_tree ILAB0102.ILE1316.C w=4.262 e=switch=ILAB0102.ILE1316.Is13{net10391<0> ILAB0102.ILE1316.C} prev=[46] elemInv=0 pathInv=0 v.w=0.1
	 [51] xc_tree ILAB0102.ILE0912.net2685 w=4.05 e=switch2=ILAB0102.ILE0912.Is127{ILAB0102.net18517 ILAB0102.ILE0912.net2685} prev=[21] elemInv=0 pathInv=0 v.w=0.1
	 [52] xc_tree ILAB0102.net21242 w=5.112 e=switch=ILAB0102.ILE1312.Is115{ILAB0102.net21242 ILAB0102.ILE1312.B} prev=[42] elemInv=0 pathInv=1 v.w=0.1
	 [53] xc_tree ILAB0102.ILE1312.net2743 w=3.624 e=switch_ds=ILAB0102.ILE1312.Is43{ILAB0102.ILE1312.B ILAB0102.ILE1312.net2743} prev=[42] elemInv=0 pathInv=1 v.w=0.1
	 [54] xc_tree ILAB0102.ILE0602.B w=4.112 e=switch_sd=ILAB0102.ILE0602.Is18{net17214<6> ILAB0102.ILE0602.B} prev=[36] elemInv=0 pathInv=0 v.w=0.1
	 [55] xc_tree ILAB0102.ILE0504.B w=4.112 e=switch_sd=ILAB0102.ILE0504.Is114{ILAB0102.net26012 ILAB0102.ILE0504.B} prev=[37] elemInv=0 pathInv=0 v.w=0.1
	 [56] xc_tree ILAB0102.net25699 w=4.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1106.Ivi6{ILAB0102.ILE1106.net1862 ILAB0102.net25699} prev=[47] elemInv=1 pathInv=0 v.w=0.1
	 [57] xc_tree ILAB0102.net22729 w=5.524 e=switch=ILAB0102.ILE1315.Is133{ILAB0102.net22729 ILAB0102.ILE1315.C} prev=[49] elemInv=0 pathInv=0 v.w=0.1
	 [58] xc_tree ILAB0102.ILE1315.net2746 w=4.024 e=switch_ds=ILAB0102.ILE1315.Is44{ILAB0102.ILE1315.C ILAB0102.ILE1315.net2746} prev=[49] elemInv=0 pathInv=0 v.w=0.1
	 [59] xc_tree ILAB0102.ILE0802.B w=4.474 e=switch_sd=ILAB0102.ILE0802.Is18{net17206<6> ILAB0102.ILE0802.B} prev=[39] elemInv=0 pathInv=0 v.w=0.1
	 [60] xc_tree ILAB0102.net18922 w=4.25 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0912.Iho1{ILAB0102.ILE0912.net2685 ILAB0102.net18922} prev=[51] elemInv=1 pathInv=1 v.w=0.1
	 [61] xc_tree ILAB0102.ILE0805.net2685 w=4.62 e=switch2=ILAB0102.ILE0805.Is127{ILAB0102.net20677 ILAB0102.ILE0805.net2685} prev=[38] elemInv=0 pathInv=0 v.w=0.1
	 [62] xc_tree ILAB0102.ILE0602.net2743 w=4.224 e=switch_ds=ILAB0102.ILE0602.Is43{ILAB0102.ILE0602.B ILAB0102.ILE0602.net2743} prev=[54] elemInv=0 pathInv=0 v.w=0.1
	 [63] xc_tree ILAB0102.net20632 w=5.712 e=switch=ILAB0102.ILE0504.Is11{ILAB0102.net20632 ILAB0102.ILE0504.B} prev=[55] elemInv=0 pathInv=0 v.w=0.1
	 [64] xc_tree ILAB0102.ILE0504.net2743 w=4.224 e=switch_ds=ILAB0102.ILE0504.Is43{ILAB0102.ILE0504.B ILAB0102.ILE0504.net2743} prev=[55] elemInv=0 pathInv=0 v.w=0.1
	 [65] xc_tree ILAB0102.ILE0806.net1859 w=4.7 e=switch2=ILAB0102.ILE0806.Is119{ILAB0102.net25699 ILAB0102.ILE0806.net1859} prev=[56] elemInv=0 pathInv=0 v.w=0.1
	 [66] xc_tree ILAB0102.ILE0915.C w=5.112 e=switch=ILAB0102.ILE0915.Is13{ILAB0102.net18922 ILAB0102.ILE0915.C} prev=[60] elemInv=0 pathInv=1 v.w=0.1
	 [67] xc_tree ILAB0102.ILE0915.net2635 w=4.8 e=switch2=ILAB0102.ILE0915.Is135{ILAB0102.net18922 ILAB0102.ILE0915.net2635} prev=[60] elemInv=0 pathInv=1 v.w=0.1
	 [68] xc_tree ILAB0103.net20452 w=4.55 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1301.Iho1{ILAB0103.ILE1301.net2685 ILAB0103.net20452} prev=[48] elemInv=1 pathInv=1 v.w=0.1
	 [69] xc_tree ILAB0102.ILE1316.net2746 w=4.374 e=switch_ds=ILAB0102.ILE1316.Is44{ILAB0102.ILE1316.C ILAB0102.ILE1316.net2746} prev=[50] elemInv=0 pathInv=0 v.w=0.1
	 [70] xc_tree ILAB0102.ILE0904.net2746 w=4.518 e=switch_ds=ILAB0102.ILE0904.Is44{ILAB0102.ILE0904.C ILAB0102.ILE0904.net2746} prev=[32] elemInv=0 pathInv=0 v.w=0.1
	 [71] xc_tree ILAB0102.ILE0802.net2743 w=4.586 e=switch_ds=ILAB0102.ILE0802.Is43{ILAB0102.ILE0802.B ILAB0102.ILE0802.net2743} prev=[59] elemInv=0 pathInv=0 v.w=0.1
	 [72] xc_tree ILAB0103.ILE1303.A w=5.85 e=switch_sd=ILAB0103.ILE1303.Is16{ILAB0103.net20452 ILAB0103.ILE1303.A} prev=[68] elemInv=0 pathInv=1 v.w=0.1
	 [73] xc_tree ILAB0102.net17347 w=4.832 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0805.Iho1{ILAB0102.ILE0805.net2685 ILAB0102.net17347} prev=[61] elemInv=1 pathInv=1 v.w=0.1
	 [74] xc_tree ILAB0102.net18634 w=4.9 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0806.Ivi7{ILAB0102.ILE0806.net1859 ILAB0102.net18634} prev=[65] elemInv=1 pathInv=1 v.w=0.1
	 [75] xc_tree net10407<2> w=5 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0915.Iho2{ILAB0102.ILE0915.net2635 net10407<2>} prev=[67] elemInv=1 pathInv=0 v.w=0.1
	 [76] xc_tree ILAB0102.ILE0608.net1859 w=5.35 e=switch2=ILAB0102.ILE0608.Is119{ILAB0102.net24349 ILAB0102.ILE0608.net1859} prev=[44] elemInv=0 pathInv=1 v.w=0.1
	 [77] xc_tree ILAB0102.net21038 w=6.4 e=switch=ILAB0102.ILE0708.Is52{ILAB0102.net21038 ILAB0102.net18542} prev=[45] elemInv=0 pathInv=1 v.w=0.1
	 [78] xc_tree ILAB0102.net21037 w=6.412 e=switch=ILAB0102.ILE0708.Is51{ILAB0102.net21037 ILAB0102.net18542} prev=[45] elemInv=0 pathInv=1 v.w=0.1
	 [79] xc_tree ILAB0102.ILE0807.C w=5.344 e=switch_sd=ILAB0102.ILE0807.Is20{ILAB0102.net17347 ILAB0102.ILE0807.C} prev=[73] elemInv=0 pathInv=1 v.w=0.1
	 [80] xc_tree ILAB0102.ILE0809.C w=5.694 e=switch=ILAB0102.ILE0809.Is12{ILAB0102.net17347 ILAB0102.ILE0809.C} prev=[73] elemInv=0 pathInv=1 v.w=0.1
	 [81] xc_tree ILAB0102.ILE0706.B w=5.762 e=switch=ILAB0102.ILE0706.Is131{ILAB0102.net18634 ILAB0102.ILE0706.B} prev=[74] elemInv=0 pathInv=1 v.w=0.1
	 [82] xc_tree ILAB0103.ILE0901.C w=5.946 e=switch=ILAB0103.ILE0901.Is29{net10407<2> ILAB0103.ILE0901.C} prev=[75] elemInv=0 pathInv=0 v.w=0.1
	 [83] xc_tree ILAB0102.net22187 w=6.712 e=switch=ILAB0102.ILE0915.Is117{ILAB0102.net22187 ILAB0102.ILE0915.C} prev=[66] elemInv=0 pathInv=1 v.w=0.1
	 [84] xc_tree ILAB0102.ILE0915.net2746 w=5.224 e=switch_ds=ILAB0102.ILE0915.Is44{ILAB0102.ILE0915.C ILAB0102.ILE0915.net2746} prev=[66] elemInv=0 pathInv=1 v.w=0.1
	 [85] xc_tree ILAB0102.ILE1112.net1862 w=5.812 e=switch2=ILAB0102.ILE1112.Is111{ILAB0102.net21242 ILAB0102.ILE1112.net1862} prev=[52] elemInv=0 pathInv=1 v.w=0.1
	 [86] xc_tree ILAB0102.ILE0807.net2746 w=5.456 e=switch_ds=ILAB0102.ILE0807.Is44{ILAB0102.ILE0807.C ILAB0102.ILE0807.net2746} prev=[79] elemInv=0 pathInv=1 v.w=0.1
	 [87] xc_tree ILAB0102.net19624 w=5.55 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0608.Ivi7{ILAB0102.ILE0608.net1859 ILAB0102.net19624} prev=[76] elemInv=1 pathInv=0 v.w=0.1
	 [88] xc_tree ILAB0102.ILE1115.C w=6.036 e=switch_sd=ILAB0102.ILE1115.Is125{ILAB0102.net22729 ILAB0102.ILE1115.C} prev=[57] elemInv=0 pathInv=0 v.w=0.1
	 [89] xc_tree ILAB0102.ILE1215.B w=6.036 e=switch_sd=ILAB0102.ILE1215.Is122{ILAB0102.net22729 ILAB0102.ILE1215.B} prev=[57] elemInv=0 pathInv=0 v.w=0.1
	 [90] xc_tree ILAB0102.ILE0608.B w=6.412 e=switch=ILAB0102.ILE0608.Is130{ILAB0102.net19624 ILAB0102.ILE0608.B} prev=[87] elemInv=0 pathInv=0 v.w=0.1
	 [91] xc_tree ILAB0102.ILE0809.net2746 w=5.806 e=switch_ds=ILAB0102.ILE0809.Is44{ILAB0102.ILE0809.C ILAB0102.ILE0809.net2746} prev=[80] elemInv=0 pathInv=1 v.w=0.1
	 [92] xc_tree ILAB0102.ILE0503.B w=6.224 e=switch_sd=ILAB0102.ILE0503.Is18{ILAB0102.net20632 ILAB0102.ILE0503.B} prev=[63] elemInv=0 pathInv=0 v.w=0.1
	 [93] xc_tree ILAB0102.ILE0706.net2743 w=5.874 e=switch_ds=ILAB0102.ILE0706.Is43{ILAB0102.ILE0706.B ILAB0102.ILE0706.net2743} prev=[81] elemInv=0 pathInv=1 v.w=0.1
	 [94] xc_tree ILAB0102.net21379 w=6.062 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1112.Ivi6{ILAB0102.ILE1112.net1862 ILAB0102.net21379} prev=[85] elemInv=1 pathInv=0 v.w=0.1
	 [95] xc_tree ILAB0103.net16654 w=7.45 e=switch=ILAB0103.ILE1303.Is128{ILAB0103.net16654 ILAB0103.ILE1303.A} prev=[72] elemInv=0 pathInv=1 v.w=0.1
	 [96] xc_tree ILAB0103.ILE1101.C w=8.806 e=switch=ILAB0103.ILE1101.Is12{net10399<0> ILAB0103.ILE1101.C} prev=[26] elemInv=0 pathInv=0 v.w=0.1
	 [97] xc_tree ILAB0102.ILE1116.net2635 w=6.45 e=switch2=ILAB0102.ILE1116.Is135{net10399<0> ILAB0102.ILE1116.net2635} prev=[26] elemInv=0 pathInv=0 v.w=0.1
	 [98] xc_tree ILAB0103.net16564 w=7.546 e=switch=ILAB0103.ILE0901.Is133{ILAB0103.net16564 ILAB0103.ILE0901.C} prev=[82] elemInv=0 pathInv=0 v.w=0.1
	 [99] xc_tree ILAB0103.ILE0901.net2746 w=6.058 e=switch_ds=ILAB0103.ILE0901.Is44{ILAB0103.ILE0901.C ILAB0103.ILE0901.net2746} prev=[82] elemInv=0 pathInv=0 v.w=0.1
	 [100] xc_tree ILAB0102.ILE1115.net2746 w=6.148 e=switch_ds=ILAB0102.ILE1115.Is44{ILAB0102.ILE1115.C ILAB0102.ILE1115.net2746} prev=[88] elemInv=0 pathInv=0 v.w=0.1
	 [101] xc_tree ILAB0102.ILE1215.net2743 w=6.148 e=switch_ds=ILAB0102.ILE1215.Is43{ILAB0102.ILE1215.B ILAB0102.ILE1215.net2743} prev=[89] elemInv=0 pathInv=0 v.w=0.1
	 [102] xc_tree ILAB0102.ILE0812.net1859 w=6.612 e=switch2=ILAB0102.ILE0812.Is119{ILAB0102.net21379 ILAB0102.ILE0812.net1859} prev=[94] elemInv=0 pathInv=0 v.w=0.1
	 [103] xc_tree ILAB0102.ILE0503.net2743 w=6.336 e=switch_ds=ILAB0102.ILE0503.Is43{ILAB0102.ILE0503.B ILAB0102.ILE0503.net2743} prev=[92] elemInv=0 pathInv=0 v.w=0.1
	 [104] xc_tree ILAB0102.ILE0710.B w=7.262 e=switch=ILAB0102.ILE0710.Is27{ILAB0102.net21038 ILAB0102.ILE0710.B} prev=[77] elemInv=0 pathInv=1 v.w=0.1
	 [105] xc_tree ILAB0102.ILE0608.net2743 w=6.524 e=switch_ds=ILAB0102.ILE0608.Is43{ILAB0102.ILE0608.B ILAB0102.ILE0608.net2743} prev=[90] elemInv=0 pathInv=0 v.w=0.1
	 [106] xc_tree ILAB0102.ILE0711.B w=7.274 e=switch=ILAB0102.ILE0711.Is11{ILAB0102.net21037 ILAB0102.ILE0711.B} prev=[78] elemInv=0 pathInv=1 v.w=0.1
	 [107] xc_tree net10399<5> w=6.65 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1116.Iho2{ILAB0102.ILE1116.net2635 net10399<5>} prev=[97] elemInv=1 pathInv=1 v.w=0.1
	 [108] xc_tree ILAB0102.net18679 w=6.812 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0812.Ivi7{ILAB0102.ILE0812.net1859 ILAB0102.net18679} prev=[102] elemInv=1 pathInv=1 v.w=0.1
	 [109] xc_tree ILAB0103.ILE1102.B w=7.512 e=switch=ILAB0103.ILE1102.Is27{net10399<5> ILAB0103.ILE1102.B} prev=[107] elemInv=0 pathInv=1 v.w=0.1
	 [110] xc_tree net10415<3> w=8.324 e=switch=ILAB0102.ILE0715.Is51{net10415<3> ILAB0102.net22187} prev=[83] elemInv=0 pathInv=1 v.w=0.1
	 [111] xc_tree ILAB0102.ILE0715.net1862 w=7.262 e=switch2=ILAB0102.ILE0715.Is111{ILAB0102.net22187 ILAB0102.ILE0715.net1862} prev=[83] elemInv=0 pathInv=1 v.w=0.1
	 [112] xc_tree ILAB0102.ILE0812.B w=7.674 e=switch=ILAB0102.ILE0812.Is130{ILAB0102.net18679 ILAB0102.ILE0812.B} prev=[108] elemInv=0 pathInv=1 v.w=0.1
	 [113] xc_tree ILAB0102.net22099 w=7.462 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0715.Ivi6{ILAB0102.ILE0715.net1862 ILAB0102.net22099} prev=[111] elemInv=1 pathInv=0 v.w=0.1
	 [114] xc_tree ILAB0102.ILE0710.net2743 w=7.374 e=switch_ds=ILAB0102.ILE0710.Is43{ILAB0102.ILE0710.B ILAB0102.ILE0710.net2743} prev=[104] elemInv=0 pathInv=1 v.w=0.1
	 [115] xc_tree ILAB0102.ILE0711.net2743 w=7.386 e=switch_ds=ILAB0102.ILE0711.Is43{ILAB0102.ILE0711.B ILAB0102.ILE0711.net2743} prev=[106] elemInv=0 pathInv=1 v.w=0.1
	 [116] xc_tree ILAB0103.ILE0903.net1859 w=8 e=switch2=ILAB0103.ILE0903.Is119{ILAB0103.net16654 ILAB0103.ILE0903.net1859} prev=[95] elemInv=0 pathInv=1 v.w=0.1
	 [117] xc_tree ILAB0103.ILE1203.B w=8.312 e=switch=ILAB0103.ILE1203.Is131{ILAB0103.net16654 ILAB0103.ILE1203.B} prev=[95] elemInv=0 pathInv=1 v.w=0.1
	 [118] xc_tree ILAB0102.ILE0615.B w=7.974 e=switch_sd=ILAB0102.ILE0615.Is122{ILAB0102.net22099 ILAB0102.ILE0615.B} prev=[113] elemInv=0 pathInv=0 v.w=0.1
	 [119] xc_tree ILAB0103.ILE1102.net2743 w=7.624 e=switch_ds=ILAB0103.ILE1102.Is43{ILAB0103.ILE1102.B ILAB0103.ILE1102.net2743} prev=[109] elemInv=0 pathInv=1 v.w=0.1
	 [120] xc_tree ILAB0103.ILE0601.net1859 w=8.096 e=switch2=ILAB0103.ILE0601.Is119{ILAB0103.net16564 ILAB0103.ILE0601.net1859} prev=[98] elemInv=0 pathInv=0 v.w=0.1
	 [121] xc_tree ILAB0102.ILE0812.net2743 w=7.786 e=switch_ds=ILAB0102.ILE0812.Is43{ILAB0102.ILE0812.B ILAB0102.ILE0812.net2743} prev=[112] elemInv=0 pathInv=1 v.w=0.1
	 [122] xc_tree ILAB0102.ILE0615.net2743 w=8.086 e=switch_ds=ILAB0102.ILE0615.Is43{ILAB0102.ILE0615.B ILAB0102.ILE0615.net2743} prev=[118] elemInv=0 pathInv=0 v.w=0.1
	 [123] xc_tree ILAB0103.net20299 w=8.2 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0903.Ivi7{ILAB0103.ILE0903.net1859 ILAB0103.net20299} prev=[116] elemInv=1 pathInv=0 v.w=0.1
	 [124] xc_tree ILAB0103.net20614 w=8.296 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0601.Ivi7{ILAB0103.ILE0601.net1859 ILAB0103.net20614} prev=[120] elemInv=1 pathInv=1 v.w=0.1
	 [125] xc_tree ILAB0103.ILE0903.B w=9.062 e=switch=ILAB0103.ILE0903.Is130{ILAB0103.net20299 ILAB0103.ILE0903.B} prev=[123] elemInv=0 pathInv=0 v.w=0.1
	 [126] xc_tree ILAB0103.ILE0703.B w=8.712 e=switch_sd=ILAB0103.ILE0703.Is122{ILAB0103.net20299 ILAB0103.ILE0703.B} prev=[123] elemInv=0 pathInv=0 v.w=0.1
	 [127] xc_tree ILAB0103.ILE1203.net2743 w=8.424 e=switch_ds=ILAB0103.ILE1203.Is43{ILAB0103.ILE1203.B ILAB0103.ILE1203.net2743} prev=[117] elemInv=0 pathInv=1 v.w=0.1
	 [128] xc_tree ILAB0103.ILE0702.B w=9.186 e=switch=ILAB0103.ILE0702.Is11{net10415<3> ILAB0103.ILE0702.B} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [129] xc_tree ILAB0103.ILE0703.net2743 w=8.824 e=switch_ds=ILAB0103.ILE0703.Is43{ILAB0103.ILE0703.B ILAB0103.ILE0703.net2743} prev=[126] elemInv=0 pathInv=0 v.w=0.1
	 [130] xc_tree ILAB0103.ILE1101.net2746 w=8.918 e=switch_ds=ILAB0103.ILE1101.Is44{ILAB0103.ILE1101.C ILAB0103.ILE1101.net2746} prev=[96] elemInv=0 pathInv=0 v.w=0.1
	 [131] xc_tree ILAB0103.ILE0903.net2743 w=9.174 e=switch_ds=ILAB0103.ILE0903.Is43{ILAB0103.ILE0903.B ILAB0103.ILE0903.net2743} prev=[125] elemInv=0 pathInv=0 v.w=0.1
	 [132] xc_tree ILAB0103.ILE0702.net2743 w=9.298 e=switch_ds=ILAB0103.ILE0702.Is43{ILAB0103.ILE0702.B ILAB0103.ILE0702.net2743} prev=[128] elemInv=0 pathInv=1 v.w=0.1
	 [133] xc_tree ILAB0102.net26618 w=3.65 e=switch=ILAB0102.ILE1004.Is27{ILAB0102.net26618 ILAB0102.ILE1004.B} prev=[28] elemInv=0 pathInv=1 v.w=0.1
	 [134] xc_tree ILAB0102.ILE1310.A w=3.95 e=switch_sd=ILAB0102.ILE1310.Is17{ILAB0102.net16222 ILAB0102.ILE1310.A} prev=[41] elemInv=0 pathInv=1 v.w=0.1
	 [135] xc_tree ILAB0102.ILE1311.A w=3.95 e=switch_sd=ILAB0102.ILE1311.Is16{ILAB0102.net16222 ILAB0102.ILE1311.A} prev=[41] elemInv=0 pathInv=1 v.w=0.1
	 [136] xc_tree ILAB0102.ILE1003.C w=4.174 e=switch_sd=ILAB0102.ILE1003.Is28{ILAB0102.net26618 ILAB0102.ILE1003.C} prev=[133] elemInv=0 pathInv=1 v.w=0.1
	 [137] xc_tree ILAB0102.net24709 w=6.75 e=switch=ILAB0102.ILE1310.Is128{ILAB0102.net24709 ILAB0102.ILE1310.A} prev=[134] elemInv=0 pathInv=1 v.w=0.1
	 [138] xc_tree ILAB0102.net22234 w=5.55 e=switch=ILAB0102.ILE1311.Is128{ILAB0102.net22234 ILAB0102.ILE1311.A} prev=[135] elemInv=0 pathInv=1 v.w=0.1
	 [139] xc_tree ILAB0102.ILE1003.net2746 w=4.298 e=switch_ds=ILAB0102.ILE1003.Is44{ILAB0102.ILE1003.C ILAB0102.ILE1003.net2746} prev=[136] elemInv=0 pathInv=1 v.w=0.1
	 [140] xc_tree ILAB0102.ILE0913.C w=6.014 e=switch_sd=ILAB0102.ILE0913.Is21{ILAB0102.net18922 ILAB0102.ILE0913.C} prev=[60] elemInv=0 pathInv=1 v.w=0.1
	 [141] xc_tree ILAB0102.ILE1011.B w=6.074 e=switch_sd=ILAB0102.ILE1011.Is123{ILAB0102.net22234 ILAB0102.ILE1011.B} prev=[138] elemInv=0 pathInv=1 v.w=0.1
	 [142] xc_tree ILAB0102.ILE0913.net2746 w=6.138 e=switch_ds=ILAB0102.ILE0913.Is44{ILAB0102.ILE0913.C ILAB0102.ILE0913.net2746} prev=[140] elemInv=0 pathInv=1 v.w=0.1
	 [143] xc_tree ILAB0102.net18653 w=7.662 e=switch=ILAB0102.ILE0812.Is37{ILAB0102.net18653 ILAB0102.net21379} prev=[94] elemInv=0 pathInv=0 v.w=0.1
	 [144] xc_tree ILAB0102.ILE1011.net2743 w=6.198 e=switch_ds=ILAB0102.ILE1011.Is43{ILAB0102.ILE1011.B ILAB0102.ILE1011.net2743} prev=[141] elemInv=0 pathInv=1 v.w=0.1
	 [145] xc_tree ILAB0102.ILE0711.net2635 w=6.962 e=switch2=ILAB0102.ILE0711.Is135{ILAB0102.net21037 ILAB0102.ILE0711.net2635} prev=[78] elemInv=0 pathInv=1 v.w=0.1
	 [146] xc_tree ILAB0102.ILE1010.C w=7.274 e=switch_sd=ILAB0102.ILE1010.Is125{ILAB0102.net24709 ILAB0102.ILE1010.C} prev=[137] elemInv=0 pathInv=1 v.w=0.1
	 [147] xc_tree ILAB0102.net21488 w=7.162 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0711.Iho2{ILAB0102.ILE0711.net2635 ILAB0102.net21488} prev=[145] elemInv=1 pathInv=0 v.w=0.1
	 [148] xc_tree ILAB0102.ILE0713.B w=8.036 e=switch=ILAB0102.ILE0713.Is27{ILAB0102.net21488 ILAB0102.ILE0713.B} prev=[147] elemInv=0 pathInv=0 v.w=0.1
	 [149] xc_tree ILAB0102.ILE1010.net2746 w=7.398 e=switch_ds=ILAB0102.ILE1010.Is44{ILAB0102.ILE1010.C ILAB0102.ILE1010.net2746} prev=[146] elemInv=0 pathInv=1 v.w=0.1
	 [150] xc_tree ILAB0103.ILE1003.B w=7.974 e=switch_sd=ILAB0103.ILE1003.Is123{ILAB0103.net16654 ILAB0103.ILE1003.B} prev=[95] elemInv=0 pathInv=1 v.w=0.1
	 [151] xc_tree ILAB0103.ILE1001.C w=8.42 e=switch=ILAB0103.ILE1001.Is132{ILAB0103.net16564 ILAB0103.ILE1001.C} prev=[98] elemInv=0 pathInv=0 v.w=0.1
	 [152] xc_tree ILAB0103.ILE1003.net2743 w=8.098 e=switch_ds=ILAB0103.ILE1003.Is43{ILAB0103.ILE1003.B ILAB0103.ILE1003.net2743} prev=[150] elemInv=0 pathInv=1 v.w=0.1
	 [153] xc_tree ILAB0102.ILE0713.net2743 w=8.16 e=switch_ds=ILAB0102.ILE0713.Is43{ILAB0102.ILE0713.B ILAB0102.ILE0713.net2743} prev=[148] elemInv=0 pathInv=0 v.w=0.1
	 [154] xc_tree ILAB0103.ILE1001.net2746 w=8.544 e=switch_ds=ILAB0103.ILE1001.Is44{ILAB0103.ILE1001.C ILAB0103.ILE1001.net2746} prev=[151] elemInv=0 pathInv=0 v.w=0.1
	 [155] xc_tree ILAB0102.net22682 w=7.674 e=switch=ILAB0102.ILE1011.Is115{ILAB0102.net22682 ILAB0102.ILE1011.B} prev=[141] elemInv=0 pathInv=1 v.w=0.1
	 [156] xc_tree ILAB0102.ILE0814.C w=12.68 e=switch=ILAB0102.ILE0814.Is29{ILAB0102.net18653 ILAB0102.ILE0814.C} prev=[143] elemInv=0 pathInv=0 v.w=0.1
	 [157] xc_tree ILAB0102.net18472 w=9.274 e=switch=ILAB0102.ILE0811.Is51{ILAB0102.net18472 ILAB0102.net22682} prev=[155] elemInv=0 pathInv=1 v.w=0.1
	 [158] xc_tree ILAB0102.ILE0814.net2635 w=9.824 e=switch2=ILAB0102.ILE0814.Is135{ILAB0102.net18472 ILAB0102.ILE0814.net2635} prev=[157] elemInv=0 pathInv=1 v.w=0.1
	 [159] xc_tree ILAB0102.net18878 w=10.024 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0814.Iho2{ILAB0102.ILE0814.net2635 ILAB0102.net18878} prev=[158] elemInv=1 pathInv=0 v.w=0.1
	 [160] xc_tree ILAB0102.ILE0816.C w=10.91 e=switch=ILAB0102.ILE0816.Is29{ILAB0102.net18878 ILAB0102.ILE0816.C} prev=[159] elemInv=0 pathInv=0 v.w=0.1
	 [161] xc_tree ILAB0102.ILE0816.net2746 w=11.046 e=switch_ds=ILAB0102.ILE0816.Is44{ILAB0102.ILE0816.C ILAB0102.ILE0816.net2746} prev=[160] elemInv=0 pathInv=0 v.w=0.1
	 [162] xc_tree ILAB0102.ILE0814.net2746 w=12.816 e=switch_ds=ILAB0102.ILE0814.Is44{ILAB0102.ILE0814.C ILAB0102.ILE0814.net2746} prev=[156] elemInv=0 pathInv=0 v.w=0.1
	 [163] xc_tree ILAB0103.ILE0501.B w=10.674 e=switch=ILAB0103.ILE0501.Is131{ILAB0103.net20614 ILAB0103.ILE0501.B} prev=[124] elemInv=0 pathInv=1 v.w=0.1
	 [164] xc_tree ILAB0103.ILE0501.net2695 w=8.996 e=switch2=ILAB0103.ILE0501.Is15{ILAB0103.net20614 ILAB0103.ILE0501.net2695} prev=[124] elemInv=0 pathInv=1 v.w=0.1
	 [165] xc_tree ILAB0103.net20522 w=9.246 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0501.Ivo2{ILAB0103.ILE0501.net2695 ILAB0103.net20522} prev=[164] elemInv=1 pathInv=0 v.w=0.1
	 [166] xc_tree ILAB0103.net20634 w=10.846 e=switch=ILAB0103.ILE0501.Is53{ILAB0103.net20634 ILAB0103.net20522} prev=[165] elemInv=0 pathInv=0 v.w=0.1
	 [167] xc_tree ILAB0103.ILE0501.net2743 w=10.822 e=switch_ds=ILAB0103.ILE0501.Is43{ILAB0103.ILE0501.B ILAB0103.ILE0501.net2743} prev=[163] elemInv=0 pathInv=1 v.w=0.1
	 [168] xc_tree ILAB0103.ILE0502.B w=11.394 e=switch_sd=ILAB0103.ILE0502.Is34{ILAB0103.net20634 ILAB0103.ILE0502.B} prev=[166] elemInv=0 pathInv=0 v.w=0.1
	 [169] xc_tree ILAB0103.ILE0502.net2743 w=11.542 e=switch_ds=ILAB0103.ILE0502.Is43{ILAB0103.ILE0502.B ILAB0103.ILE0502.net2743} prev=[168] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _075_ {
	 xc_pin xci2_ao21ftt y o [-1] pinInv=0 { ILAB0102.ILE1303.net2656 ILAB0102.ILE1303.net0541 }
	 xc_pin xci2_and3 b i [13] pinInv=0 { ILAB0102.ILE0905.net2743 }
	 xc_pin xci2_and3 b i [68] pinInv=0 { ILAB0102.ILE0913.net2743 }
	 xc_pin xci2_and3 b i [56] pinInv=0 { ILAB0102.ILE1115.net2743 }
	 xc_pin xci2_and3 b i [75] pinInv=0 { ILAB0103.ILE1101.net2743 }
	 xc_pin xci2_and3 b i [80] pinInv=0 { ILAB0103.ILE0901.net2743 }
	 xc_pin xci2_and3 b i [86] pinInv=0 { ILAB0103.ILE1001.net2743 }
	 xc_pin xci2_and3 b i [73] pinInv=0 { ILAB0102.ILE0915.net2743 }
	 xc_pin xci2_and3 b i [79] pinInv=0 { ILAB0102.ILE0816.net2743 }
	 xc_pin xci2_and3 b i [78] pinInv=0 { ILAB0102.ILE0814.net2743 }
	 xc_pin xci2_and3 b i [71] pinInv=0 { ILAB0102.ILE0809.net2743 }
	 xc_pin xci2_and3 b i [15] pinInv=0 { ILAB0102.ILE1104.net2743 }
	 xc_pin xci2_and3 b i [9] pinInv=0 { ILAB0102.ILE1003.net2743 }
	 xc_pin xci2_and3 b i [14] pinInv=0 { ILAB0102.ILE0904.net2743 }
	 xc_pin xci2_and3 b i [46] pinInv=0 { ILAB0102.ILE0804.net2743 }
	 xc_pin xci2_and3 b i [51] pinInv=0 { ILAB0102.ILE0807.net2743 }
	 xc_pin xci2_and3 b i [31] pinInv=0 { ILAB0102.ILE0908.net2743 }
	 xc_pin xci2_and3 b i [72] pinInv=0 { ILAB0102.ILE1010.net2743 }
	 xc_pin xci2_and3 b i [63] pinInv=0 { ILAB0102.ILE1316.net2743 }
	 xc_pin xci2_and3 b i [58] pinInv=0 { ILAB0102.ILE1315.net2743 }
	 [0] xc_tree ILAB0102.ILE1303.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1303.net2685 w=0.85 e=switch2=ILAB0102.ILE1303.Is127{ILAB0102.ILE1303.net2656 ILAB0102.ILE1303.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE1303.net1859 w=0.55 e=switch2=ILAB0102.ILE1303.Is119{ILAB0102.ILE1303.net2656 ILAB0102.ILE1303.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1303.net1850 w=0.7 e=switch2=ILAB0102.ILE1303.Is103{ILAB0102.ILE1303.net2656 ILAB0102.ILE1303.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0102.net16654 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1303.Ivi7{ILAB0102.ILE1303.net1859 ILAB0102.net16654} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.net16652 w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1303.Ivi5{ILAB0102.ILE1303.net1850 ILAB0102.net16652} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.net20272 w=2.35 e=switch=ILAB0102.ILE0903.Is35{ILAB0102.net20272 ILAB0102.net16654} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE1003.B w=1.25 e=switch_sd=ILAB0102.ILE1003.Is123{ILAB0102.net16654 ILAB0102.ILE1003.B} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.net16898 w=2.55 e=switch=ILAB0102.ILE1103.Is52{ILAB0102.net16898 ILAB0102.net16652} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE1003.net2743 w=1.35 e=switch_ds=ILAB0102.ILE1003.Is43{ILAB0102.ILE1003.B ILAB0102.ILE1003.net2743} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0905.B w=2.85 e=switch_sd=ILAB0102.ILE0905.Is18{ILAB0102.net20272 ILAB0102.ILE0905.B} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0904.B w=2.85 e=switch_sd=ILAB0102.ILE0904.Is19{ILAB0102.net20272 ILAB0102.ILE0904.B} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE1104.B w=3.05 e=switch_sd=ILAB0102.ILE1104.Is26{ILAB0102.net16898 ILAB0102.ILE1104.B} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0102.ILE0905.net2743 w=2.95 e=switch_ds=ILAB0102.ILE0905.Is43{ILAB0102.ILE0905.B ILAB0102.ILE0905.net2743} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0102.ILE0904.net2743 w=2.95 e=switch_ds=ILAB0102.ILE0904.Is43{ILAB0102.ILE0904.B ILAB0102.ILE0904.net2743} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0102.ILE1104.net2743 w=3.15 e=switch_ds=ILAB0102.ILE1104.Is43{ILAB0102.ILE1104.B ILAB0102.ILE1104.net2743} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0102.net16627 w=3.206 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1303.Iho1{ILAB0102.ILE1303.net2685 ILAB0102.net16627} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0102.net16897 w=2.646 e=switch=ILAB0102.ILE1103.Is51{ILAB0102.net16897 ILAB0102.net16652} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [18] xc_tree ILAB0102.net16538 w=2.85 e=switch=ILAB0102.ILE1003.Is27{ILAB0102.net16538 ILAB0102.ILE1003.B} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0102.net17417 w=2.85 e=switch=ILAB0102.ILE1003.Is115{ILAB0102.net17417 ILAB0102.ILE1003.B} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0102.ILE0906.net2635 w=2.9 e=switch2=ILAB0102.ILE0906.Is135{ILAB0102.net20272 ILAB0102.ILE0906.net2635} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0102.ILE1107.net2685 w=3.592 e=switch2=ILAB0102.ILE1107.Is127{ILAB0102.net16897 ILAB0102.ILE1107.net2685} prev=[17] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0102.net25112 w=4.45 e=switch=ILAB0102.ILE0904.Is115{ILAB0102.net25112 ILAB0102.ILE0904.B} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [23] xc_tree ILAB0102.ILE1001.net1832 w=3.7 e=switch2=ILAB0102.ILE1001.Is39{ILAB0102.net16538 ILAB0102.ILE1001.net1832} prev=[18] elemInv=0 pathInv=1 v.w=0.1
	 [24] xc_tree ILAB0102.net20317 w=4.546 e=switch=ILAB0102.ILE0803.Is51{ILAB0102.net20317 ILAB0102.net17417} prev=[19] elemInv=0 pathInv=1 v.w=0.1
	 [25] xc_tree ILAB0102.net24638 w=3.1 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0906.Iho2{ILAB0102.ILE0906.net2635 ILAB0102.net24638} prev=[20] elemInv=1 pathInv=0 v.w=0.1
	 [26] xc_tree ILAB0102.ILE0908.B w=3.962 e=switch=ILAB0102.ILE0908.Is27{ILAB0102.net24638 ILAB0102.ILE0908.B} prev=[25] elemInv=0 pathInv=0 v.w=0.1
	 [27] xc_tree ILAB0102.ILE1307.net2685 w=4.068 e=switch2=ILAB0102.ILE1307.Is127{ILAB0102.net16627 ILAB0102.ILE1307.net2685} prev=[16] elemInv=0 pathInv=1 v.w=0.1
	 [28] xc_tree ILAB0102.net17167 w=3.988 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1107.Iho1{ILAB0102.ILE1107.net2685 ILAB0102.net17167} prev=[21] elemInv=1 pathInv=0 v.w=0.1
	 [29] xc_tree net17198<1> w=4 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1001.Ihi6{ILAB0102.ILE1001.net1832 net17198<1>} prev=[23] elemInv=1 pathInv=0 v.w=0.1
	 [30] xc_tree ILAB0102.net25402 w=5.562 e=switch=ILAB0102.ILE0908.Is11{ILAB0102.net25402 ILAB0102.ILE0908.B} prev=[26] elemInv=0 pathInv=0 v.w=0.1
	 [31] xc_tree ILAB0102.ILE0908.net2743 w=4.074 e=switch_ds=ILAB0102.ILE0908.Is43{ILAB0102.ILE0908.B ILAB0102.ILE0908.net2743} prev=[26] elemInv=0 pathInv=0 v.w=0.1
	 [32] xc_tree ILAB0102.ILE1111.net2685 w=4.634 e=switch2=ILAB0102.ILE1111.Is127{ILAB0102.net17167 ILAB0102.ILE1111.net2685} prev=[28] elemInv=0 pathInv=0 v.w=0.1
	 [33] xc_tree ILAB0102.ILE1109.A w=5.288 e=switch_sd=ILAB0102.ILE1109.Is16{ILAB0102.net17167 ILAB0102.ILE1109.A} prev=[28] elemInv=0 pathInv=0 v.w=0.1
	 [34] xc_tree ILAB0102.ILE1002.net2685 w=4.55 e=switch2=ILAB0102.ILE1002.Is127{net17198<1> ILAB0102.ILE1002.net2685} prev=[29] elemInv=0 pathInv=0 v.w=0.1
	 [35] xc_tree ILAB0102.net17122 w=4.38 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1307.Iho1{ILAB0102.ILE1307.net2685 ILAB0102.net17122} prev=[27] elemInv=1 pathInv=0 v.w=0.1
	 [36] xc_tree ILAB0102.ILE1311.net2685 w=4.942 e=switch2=ILAB0102.ILE1311.Is127{ILAB0102.net17122 ILAB0102.ILE1311.net2685} prev=[35] elemInv=0 pathInv=0 v.w=0.1
	 [37] xc_tree ILAB0102.ILE0804.B w=4.962 e=switch_sd=ILAB0102.ILE0804.Is114{ILAB0102.net25112 ILAB0102.ILE0804.B} prev=[22] elemInv=0 pathInv=1 v.w=0.1
	 [38] xc_tree ILAB0102.ILE0807.B w=5.408 e=switch=ILAB0102.ILE0807.Is10{ILAB0102.net20317 ILAB0102.ILE0807.B} prev=[24] elemInv=0 pathInv=1 v.w=0.1
	 [39] xc_tree ILAB0102.net26617 w=4.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1002.Iho1{ILAB0102.ILE1002.net2685 ILAB0102.net26617} prev=[34] elemInv=1 pathInv=1 v.w=0.1
	 [40] xc_tree ILAB0102.net23017 w=4.93 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1111.Iho1{ILAB0102.ILE1111.net2685 ILAB0102.net23017} prev=[32] elemInv=1 pathInv=1 v.w=0.1
	 [41] xc_tree ILAB0102.ILE1006.net2685 w=5.3 e=switch2=ILAB0102.ILE1006.Is127{ILAB0102.net26617 ILAB0102.ILE1006.net2685} prev=[39] elemInv=0 pathInv=1 v.w=0.1
	 [42] xc_tree ILAB0102.ILE1115.B w=5.792 e=switch=ILAB0102.ILE1115.Is10{ILAB0102.net23017 ILAB0102.ILE1115.B} prev=[40] elemInv=0 pathInv=1 v.w=0.1
	 [43] xc_tree ILAB0102.ILE1115.net2685 w=5.492 e=switch2=ILAB0102.ILE1115.Is127{ILAB0102.net23017 ILAB0102.ILE1115.net2685} prev=[40] elemInv=0 pathInv=1 v.w=0.1
	 [44] xc_tree ILAB0102.ILE1114.A w=7.28 e=switch=ILAB0102.ILE1114.Is9{ILAB0102.net23017 ILAB0102.ILE1114.A} prev=[40] elemInv=0 pathInv=1 v.w=0.1
	 [45] xc_tree ILAB0102.net22207 w=5.154 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1311.Iho1{ILAB0102.ILE1311.net2685 ILAB0102.net22207} prev=[36] elemInv=1 pathInv=1 v.w=0.1
	 [46] xc_tree ILAB0102.ILE0804.net2743 w=5.074 e=switch_ds=ILAB0102.ILE0804.Is43{ILAB0102.ILE0804.B ILAB0102.ILE0804.net2743} prev=[37] elemInv=0 pathInv=1 v.w=0.1
	 [47] xc_tree ILAB0102.ILE1315.B w=6.016 e=switch=ILAB0102.ILE1315.Is10{ILAB0102.net22207 ILAB0102.ILE1315.B} prev=[45] elemInv=0 pathInv=1 v.w=0.1
	 [48] xc_tree ILAB0102.ILE1314.net2635 w=5.704 e=switch2=ILAB0102.ILE1314.Is135{ILAB0102.net22207 ILAB0102.ILE1314.net2635} prev=[45] elemInv=0 pathInv=1 v.w=0.1
	 [49] xc_tree ILAB0102.net16384 w=6.888 e=switch=ILAB0102.ILE1109.Is128{ILAB0102.net16384 ILAB0102.ILE1109.A} prev=[33] elemInv=0 pathInv=0 v.w=0.1
	 [50] xc_tree ILAB0102.net18202 w=6.7 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1006.Iho1{ILAB0102.ILE1006.net2685 ILAB0102.net18202} prev=[41] elemInv=1 pathInv=0 v.w=0.1
	 [51] xc_tree ILAB0102.ILE0807.net2743 w=5.52 e=switch_ds=ILAB0102.ILE0807.Is43{ILAB0102.ILE0807.B ILAB0102.ILE0807.net2743} prev=[38] elemInv=0 pathInv=1 v.w=0.1
	 [52] xc_tree net10399<3> w=7.748 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1115.Iho1{ILAB0102.ILE1115.net2685 net10399<3>} prev=[43] elemInv=1 pathInv=0 v.w=0.1
	 [53] xc_tree ILAB0102.ILE0909.net2685 w=6.112 e=switch2=ILAB0102.ILE0909.Is127{ILAB0102.net25402 ILAB0102.ILE0909.net2685} prev=[30] elemInv=0 pathInv=0 v.w=0.1
	 [54] xc_tree ILAB0102.net23243 w=5.904 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1314.Iho2{ILAB0102.ILE1314.net2635 ILAB0102.net23243} prev=[48] elemInv=1 pathInv=0 v.w=0.1
	 [55] xc_tree ILAB0102.net24439 w=7.392 e=switch=ILAB0102.ILE1115.Is131{ILAB0102.net24439 ILAB0102.ILE1115.B} prev=[42] elemInv=0 pathInv=1 v.w=0.1
	 [56] xc_tree ILAB0102.ILE1115.net2743 w=5.904 e=switch_ds=ILAB0102.ILE1115.Is43{ILAB0102.ILE1115.B ILAB0102.ILE1115.net2743} prev=[42] elemInv=0 pathInv=1 v.w=0.1
	 [57] xc_tree ILAB0102.ILE1316.B w=6.766 e=switch=ILAB0102.ILE1316.Is27{ILAB0102.net23243 ILAB0102.ILE1316.B} prev=[54] elemInv=0 pathInv=0 v.w=0.1
	 [58] xc_tree ILAB0102.ILE1315.net2743 w=6.128 e=switch_ds=ILAB0102.ILE1315.Is43{ILAB0102.ILE1315.B ILAB0102.ILE1315.net2743} prev=[47] elemInv=0 pathInv=1 v.w=0.1
	 [59] xc_tree ILAB0102.net25312 w=6.312 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0909.Iho1{ILAB0102.ILE0909.net2685 ILAB0102.net25312} prev=[53] elemInv=1 pathInv=1 v.w=0.1
	 [60] xc_tree ILAB0102.ILE0913.B w=7.174 e=switch=ILAB0102.ILE0913.Is10{ILAB0102.net25312 ILAB0102.ILE0913.B} prev=[59] elemInv=0 pathInv=1 v.w=0.1
	 [61] xc_tree ILAB0102.ILE0913.net2685 w=6.862 e=switch2=ILAB0102.ILE0913.Is127{ILAB0102.net25312 ILAB0102.ILE0913.net2685} prev=[59] elemInv=0 pathInv=1 v.w=0.1
	 [62] xc_tree ILAB0102.ILE1010.B w=7.562 e=switch=ILAB0102.ILE1010.Is10{ILAB0102.net18202 ILAB0102.ILE1010.B} prev=[50] elemInv=0 pathInv=0 v.w=0.1
	 [63] xc_tree ILAB0102.ILE1316.net2743 w=6.878 e=switch_ds=ILAB0102.ILE1316.Is43{ILAB0102.ILE1316.B ILAB0102.ILE1316.net2743} prev=[57] elemInv=0 pathInv=0 v.w=0.1
	 [64] xc_tree net10407<0> w=7.062 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0913.Iho1{ILAB0102.ILE0913.net2685 net10407<0>} prev=[61] elemInv=1 pathInv=0 v.w=0.1
	 [65] xc_tree ILAB0102.ILE0809.B w=7.4 e=switch_sd=ILAB0102.ILE0809.Is123{ILAB0102.net16384 ILAB0102.ILE0809.B} prev=[49] elemInv=0 pathInv=0 v.w=0.1
	 [66] xc_tree ILAB0103.ILE0901.B w=9.968 e=switch=ILAB0103.ILE0901.Is10{net10407<0> ILAB0103.ILE0901.B} prev=[64] elemInv=0 pathInv=0 v.w=0.1
	 [67] xc_tree ILAB0102.ILE0915.B w=7.574 e=switch_sd=ILAB0102.ILE0915.Is18{net10407<0> ILAB0102.ILE0915.B} prev=[64] elemInv=0 pathInv=0 v.w=0.1
	 [68] xc_tree ILAB0102.ILE0913.net2743 w=7.286 e=switch_ds=ILAB0102.ILE0913.Is43{ILAB0102.ILE0913.B ILAB0102.ILE0913.net2743} prev=[60] elemInv=0 pathInv=1 v.w=0.1
	 [69] xc_tree ILAB0102.net23539 w=8.892 e=switch=ILAB0102.ILE1114.Is128{ILAB0102.net23539 ILAB0102.ILE1114.A} prev=[44] elemInv=0 pathInv=1 v.w=0.1
	 [70] xc_tree net10411<3> w=8.992 e=switch=ILAB0102.ILE0815.Is35{net10411<3> ILAB0102.net24439} prev=[55] elemInv=0 pathInv=1 v.w=0.1
	 [71] xc_tree ILAB0102.ILE0809.net2743 w=7.512 e=switch_ds=ILAB0102.ILE0809.Is43{ILAB0102.ILE0809.B ILAB0102.ILE0809.net2743} prev=[65] elemInv=0 pathInv=0 v.w=0.1
	 [72] xc_tree ILAB0102.ILE1010.net2743 w=7.674 e=switch_ds=ILAB0102.ILE1010.Is43{ILAB0102.ILE1010.B ILAB0102.ILE1010.net2743} prev=[62] elemInv=0 pathInv=0 v.w=0.1
	 [73] xc_tree ILAB0102.ILE0915.net2743 w=7.686 e=switch_ds=ILAB0102.ILE0915.Is43{ILAB0102.ILE0915.B ILAB0102.ILE0915.net2743} prev=[67] elemInv=0 pathInv=0 v.w=0.1
	 [74] xc_tree ILAB0103.ILE1101.B w=8.26 e=switch_sd=ILAB0103.ILE1101.Is18{net10399<3> ILAB0103.ILE1101.B} prev=[52] elemInv=0 pathInv=0 v.w=0.1
	 [75] xc_tree ILAB0103.ILE1101.net2743 w=8.372 e=switch_ds=ILAB0103.ILE1101.Is43{ILAB0103.ILE1101.B ILAB0103.ILE1101.net2743} prev=[74] elemInv=0 pathInv=0 v.w=0.1
	 [76] xc_tree ILAB0102.ILE0814.B w=9.404 e=switch_sd=ILAB0102.ILE0814.Is123{ILAB0102.net23539 ILAB0102.ILE0814.B} prev=[69] elemInv=0 pathInv=1 v.w=0.1
	 [77] xc_tree ILAB0102.ILE0816.B w=9.504 e=switch_sd=ILAB0102.ILE0816.Is19{net10411<3> ILAB0102.ILE0816.B} prev=[70] elemInv=0 pathInv=1 v.w=0.1
	 [78] xc_tree ILAB0102.ILE0814.net2743 w=9.516 e=switch_ds=ILAB0102.ILE0814.Is43{ILAB0102.ILE0814.B ILAB0102.ILE0814.net2743} prev=[76] elemInv=0 pathInv=1 v.w=0.1
	 [79] xc_tree ILAB0102.ILE0816.net2743 w=9.616 e=switch_ds=ILAB0102.ILE0816.Is43{ILAB0102.ILE0816.B ILAB0102.ILE0816.net2743} prev=[77] elemInv=0 pathInv=1 v.w=0.1
	 [80] xc_tree ILAB0103.ILE0901.net2743 w=10.08 e=switch_ds=ILAB0103.ILE0901.Is43{ILAB0103.ILE0901.B ILAB0103.ILE0901.net2743} prev=[66] elemInv=0 pathInv=0 v.w=0.1
	 [81] xc_tree ILAB0102.ILE1010.net2685 w=7.574 e=switch2=ILAB0102.ILE1010.Is127{ILAB0102.net18202 ILAB0102.ILE1010.net2685} prev=[50] elemInv=0 pathInv=0 v.w=0.1
	 [82] xc_tree ILAB0102.net24862 w=7.898 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1010.Iho1{ILAB0102.ILE1010.net2685 ILAB0102.net24862} prev=[81] elemInv=1 pathInv=1 v.w=0.1
	 [83] xc_tree ILAB0102.ILE1014.net2685 w=8.472 e=switch2=ILAB0102.ILE1014.Is127{ILAB0102.net24862 ILAB0102.ILE1014.net2685} prev=[82] elemInv=0 pathInv=1 v.w=0.1
	 [84] xc_tree net10403<1> w=8.696 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1014.Iho1{ILAB0102.ILE1014.net2685 net10403<1>} prev=[83] elemInv=1 pathInv=0 v.w=0.1
	 [85] xc_tree ILAB0103.ILE1001.B w=9.57 e=switch=ILAB0103.ILE1001.Is11{net10403<1> ILAB0103.ILE1001.B} prev=[84] elemInv=0 pathInv=0 v.w=0.1
	 [86] xc_tree ILAB0103.ILE1001.net2743 w=9.694 e=switch_ds=ILAB0103.ILE1001.Is43{ILAB0103.ILE1001.B ILAB0103.ILE1001.net2743} prev=[85] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _000_ {
	 xc_pin xci2_oai21 y o [-1] pinInv=0 { ILAB0102.ILE1602.net2656 ILAB0102.ILE1602.net0541 }
	 xc_pin xci2_dffcl d i [4] pinInv=0 { ILAB0102.ILE1502.net2749 }
	 [0] xc_tree ILAB0102.ILE1602.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1602.net1859 w=0.55 e=switch2=ILAB0102.ILE1602.Is119{ILAB0102.ILE1602.net2656 ILAB0102.ILE1602.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net26509 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1602.Ivi7{ILAB0102.ILE1602.net1859 ILAB0102.net26509} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1502.A w=1.6 e=switch=ILAB0102.ILE1502.Is129{ILAB0102.net26509 ILAB0102.ILE1502.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1502.net2749 w=1.7 e=switch_ds=ILAB0102.ILE1502.Is41{ILAB0102.ILE1502.A ILAB0102.ILE1502.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _074_ {
	 xc_pin xci2_aoi21 y o [-1] pinInv=0 { ILAB0102.ILE1503.net2656 ILAB0102.ILE1503.net0541 }
	 xc_pin xci2_oai21 c i [6] pinInv=0 { ILAB0102.ILE1602.net2746 }
	 [0] xc_tree ILAB0102.ILE1503.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1503.net2680 w=0.85 e=switch2=ILAB0102.ILE1503.Is63{ILAB0102.ILE1503.net0541 ILAB0102.ILE1503.net2680} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net26366 w=1.15 e=inv_8_UCCLAB=ILAB0102.ILE1503.I666{ILAB0102.ILE1503.net2680 ILAB0102.net26366} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.net26468 w=2.45 e=switch_sd=ILAB0102.ILE1502.Is100{ILAB0102.net26366 ILAB0102.net26468} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1602.net01339 w=2.65 e=inv_4_UCCLAB=ILAB0102.ILE1602.I715{ILAB0102.net26468 ILAB0102.ILE1602.net01339} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0102.ILE1602.C w=3.25 e=switch1_sd=ILAB0102.ILE1602.Is70{ILAB0102.ILE1602.net01339 ILAB0102.ILE1602.C} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0102.ILE1602.net2746 w=3.35 e=switch_ds=ILAB0102.ILE1602.Is44{ILAB0102.ILE1602.C ILAB0102.ILE1602.net2746} prev=[5] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree adc_rd.shift_reg[0] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE1502.net2656 ILAB0102.ILE1502.net0541 }
	 xc_pin xci2_aoi21 a i [5] pinInv=0 { ILAB0102.ILE1503.net2749 }
	 xc_pin xci2_and3 a i [12] pinInv=0 { ILAB0102.ILE0905.net2749 }
	 xc_pin xci2_mux2h a i [17] pinInv=0 { ILAB0102.ILE0503.net2749 }
	 [0] xc_tree ILAB0102.ILE1502.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1502.net2650 w=0.55 e=switch2=ILAB0102.ILE1502.Is143{ILAB0102.ILE1502.net2656 ILAB0102.ILE1502.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net26349 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1502.Iho3{ILAB0102.ILE1502.net2650 ILAB0102.net26349} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1503.A w=1.25 e=switch_sd=ILAB0102.ILE1503.Is32{ILAB0102.net26349 ILAB0102.ILE1503.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net15484 w=2.85 e=switch=ILAB0102.ILE1503.Is129{ILAB0102.net15484 ILAB0102.ILE1503.A} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE1503.net2749 w=1.35 e=switch_ds=ILAB0102.ILE1503.Is41{ILAB0102.ILE1503.A ILAB0102.ILE1503.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.net17734 w=4.05 e=switch=ILAB0102.ILE1503.Is128{ILAB0102.net17734 ILAB0102.ILE1503.A} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.net15593 w=5.2 e=switch=ILAB0102.ILE1203.Is37{ILAB0102.net15593 ILAB0102.net15484} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE1103.net1859 w=4.9 e=switch2=ILAB0102.ILE1103.Is119{ILAB0102.net17734 ILAB0102.ILE1103.net1859} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE1205.C w=7.55 e=switch=ILAB0102.ILE1205.Is29{ILAB0102.net15593 ILAB0102.ILE1205.C} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.net15979 w=9.15 e=switch=ILAB0102.ILE1205.Is132{ILAB0102.net15979 ILAB0102.ILE1205.C} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0905.A w=9.65 e=switch_sd=ILAB0102.ILE0905.Is121{ILAB0102.net15979 ILAB0102.ILE0905.A} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE0905.net2749 w=9.762 e=switch_ds=ILAB0102.ILE0905.Is41{ILAB0102.ILE0905.A ILAB0102.ILE0905.net2749} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0102.net16924 w=8.312 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1103.Ivi7{ILAB0102.ILE1103.net1859 ILAB0102.net16924} prev=[8] elemInv=1 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0102.ILE0703.net1859 w=8.886 e=switch2=ILAB0102.ILE0703.Is119{ILAB0102.net16924 ILAB0102.ILE0703.net1859} prev=[13] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0102.net15709 w=9.11 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0703.Ivi7{ILAB0102.ILE0703.net1859 ILAB0102.net15709} prev=[14] elemInv=1 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0102.ILE0503.A w=9.634 e=switch_sd=ILAB0102.ILE0503.Is120{ILAB0102.net15709 ILAB0102.ILE0503.A} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0102.ILE0503.net2749 w=9.758 e=switch_ds=ILAB0102.ILE0503.Is41{ILAB0102.ILE0503.A ILAB0102.ILE0503.net2749} prev=[16] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _073_ {
	 xc_pin xci2_oa21ttf y o [-1] pinInv=0 { ILAB0202.ILE0103.net2656 ILAB0202.ILE0103.net0541 }
	 xc_pin xci2_ao21 b i [10] pinInv=0 { ILAB0202.ILE0105.net2743 }
	 xc_pin xci2_nand3ftt c i [15] pinInv=0 { ILAB0102.ILE1504.net2746 }
	 xc_pin xci2_ao21 a i [16] pinInv=0 { ILAB0102.ILE1505.net2749 }
	 xc_pin xci2_ao21 a i [14] pinInv=0 { ILAB0102.ILE1405.net2749 }
	 [0] xc_tree ILAB0202.ILE0103.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0202.ILE0103.net1862 w=0.7 e=switch2=ILAB0202.ILE0103.Is111{ILAB0202.ILE0103.net2656 ILAB0202.ILE0103.net1862} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0202.ILE0103.net2685 w=0.55 e=switch2=ILAB0202.ILE0103.Is127{ILAB0202.ILE0103.net2656 ILAB0202.ILE0103.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0202.ILE0103.net1850 w=0.7 e=switch2=ILAB0202.ILE0103.Is103{ILAB0202.ILE0103.net2656 ILAB0202.ILE0103.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0202.net22837 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0202.ILE0103.Iho1{ILAB0202.ILE0103.net2685 ILAB0202.net22837} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree net18584<1> w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0202.ILE0103.Ivi6{ILAB0202.ILE0103.net1862 net18584<1>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree net18584<2> w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0202.ILE0103.Ivi5{ILAB0202.ILE0103.net1850 net18584<2>} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0202.ILE0105.B w=1.25 e=switch_sd=ILAB0202.ILE0105.Is18{ILAB0202.net22837 ILAB0202.ILE0105.B} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.net20002 w=2.55 e=switch=ILAB0102.ILE1403.Is35{ILAB0102.net20002 net18584<1>} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.net17708 w=2.55 e=switch=ILAB0102.ILE1503.Is52{ILAB0102.net17708 net18584<2>} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0202.ILE0105.net2743 w=1.35 e=switch_ds=ILAB0202.ILE0105.Is43{ILAB0202.ILE0105.B ILAB0202.ILE0105.net2743} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE1405.A w=3.05 e=switch_sd=ILAB0102.ILE1405.Is16{ILAB0102.net20002 ILAB0102.ILE1405.A} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE1504.C w=3.05 e=switch_sd=ILAB0102.ILE1504.Is28{ILAB0102.net17708 ILAB0102.ILE1504.C} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0102.ILE1505.A w=3.4 e=switch=ILAB0102.ILE1505.Is25{ILAB0102.net17708 ILAB0102.ILE1505.A} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0102.ILE1405.net2749 w=3.15 e=switch_ds=ILAB0102.ILE1405.Is41{ILAB0102.ILE1405.A ILAB0102.ILE1405.net2749} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0102.ILE1504.net2746 w=3.15 e=switch_ds=ILAB0102.ILE1504.Is44{ILAB0102.ILE1504.C ILAB0102.ILE1504.net2746} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0102.ILE1505.net2749 w=3.5 e=switch_ds=ILAB0102.ILE1505.Is41{ILAB0102.ILE1505.A ILAB0102.ILE1505.net2749} prev=[13] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _072_ {
	 xc_pin xci2_nor3 y o [-1] pinInv=0 { ILAB0102.ILE1403.net2656 ILAB0102.ILE1403.net0541 }
	 xc_pin xci2_aoi21 b i [14] pinInv=0 { ILAB0102.ILE1503.net2743 }
	 xc_pin xci2_ao21 b i [37] pinInv=0 { ILAB0102.ILE0906.net2743 }
	 xc_pin xci2_ao21 b i [102] pinInv=0 { ILAB0102.ILE0914.net2743 }
	 xc_pin xci2_ao21 b i [97] pinInv=0 { ILAB0102.ILE1116.net2743 }
	 xc_pin xci2_ao21 b i [95] pinInv=0 { ILAB0103.ILE1201.net2743 }
	 xc_pin xci2_ao21 b i [106] pinInv=0 { ILAB0103.ILE0801.net2743 }
	 xc_pin xci2_ao21 b i [89] pinInv=0 { ILAB0102.ILE1016.net2743 }
	 xc_pin xci2_ao21 b i [103] pinInv=0 { ILAB0102.ILE0916.net2743 }
	 xc_pin xci2_ao21 b i [104] pinInv=0 { ILAB0102.ILE0815.net2743 }
	 xc_pin xci2_ao21 b i [110] pinInv=0 { ILAB0102.ILE0811.net2743 }
	 xc_pin xci2_ao21 b i [86] pinInv=0 { ILAB0102.ILE0907.net2743 }
	 xc_pin xci2_ao21 b i [4] pinInv=0 { ILAB0102.ILE1103.net2743 }
	 xc_pin xci2_ao21 b i [51] pinInv=0 { ILAB0102.ILE0903.net2743 }
	 xc_pin xci2_ao21 b i [109] pinInv=0 { ILAB0102.ILE0803.net2743 }
	 xc_pin xci2_ao21 b i [32] pinInv=0 { ILAB0102.ILE0805.net2743 }
	 xc_pin xci2_ao21 b i [93] pinInv=0 { ILAB0102.ILE0808.net2743 }
	 xc_pin xci2_ao21 b i [87] pinInv=0 { ILAB0102.ILE0909.net2743 }
	 xc_pin xci2_ao21 b i [83] pinInv=0 { ILAB0102.ILE1110.net2743 }
	 xc_pin xci2_ao21 b i [53] pinInv=0 { ILAB0102.ILE1506.net2743 }
	 xc_pin xci2_ao21 b i [21] pinInv=0 { ILAB0102.ILE1407.net2743 }
	 xc_pin xci2_ao21 b i [82] pinInv=0 { ILAB0102.ILE1516.net2743 }
	 xc_pin xci2_ao21 b i [101] pinInv=0 { ILAB0103.ILE1301.net2743 }
	 xc_pin xci2_ao21 b i [34] pinInv=0 { ILAB0102.ILE1415.net2743 }
	 xc_pin xci2_ao21 b i [26] pinInv=0 { ILAB0102.ILE1005.net2743 }
	 [0] xc_tree ILAB0102.ILE1403.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1403.net1859 w=0.55 e=switch2=ILAB0102.ILE1403.Is119{ILAB0102.ILE1403.net2656 ILAB0102.ILE1403.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.net20029 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1403.Ivi7{ILAB0102.ILE1403.net1859 ILAB0102.net20029} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1103.B w=1.25 e=switch_sd=ILAB0102.ILE1103.Is123{ILAB0102.net20029 ILAB0102.ILE1103.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1103.net2743 w=1.35 e=switch_ds=ILAB0102.ILE1103.Is43{ILAB0102.ILE1103.B ILAB0102.ILE1103.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE1403.net2695 w=0.55 e=switch2=ILAB0102.ILE1403.Is15{ILAB0102.ILE1403.net2656 ILAB0102.ILE1403.net2695} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0102.ILE1403.net1832 w=0.85 e=switch2=ILAB0102.ILE1403.Is39{ILAB0102.ILE1403.net2656 ILAB0102.ILE1403.net1832} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [7] xc_tree ILAB0102.net15482 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1403.Ivo2{ILAB0102.ILE1403.net2695 ILAB0102.net15482} prev=[5] elemInv=1 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE1503.B w=1.262 e=switch_sd=ILAB0102.ILE1503.Is114{ILAB0102.net15482 ILAB0102.ILE1503.B} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE1603.C w=3.1 e=switch=ILAB0102.ILE1603.Is117{ILAB0102.net15482 ILAB0102.ILE1603.C} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.net17393 w=2.35 e=switch=ILAB0102.ILE1003.Is37{ILAB0102.net17393 ILAB0102.net20029} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree net17182<6> w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1403.Ihi6{ILAB0102.ILE1403.net1832 net17182<6>} prev=[6] elemInv=1 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE1404.net2685 w=1.7 e=switch2=ILAB0102.ILE1404.Is127{net17182<6> ILAB0102.ILE1404.net2685} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0102.net15619 w=3.85 e=switch=ILAB0102.ILE1103.Is131{ILAB0102.net15619 ILAB0102.ILE1103.B} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0102.ILE1503.net2743 w=1.374 e=switch_ds=ILAB0102.ILE1503.Is43{ILAB0102.ILE1503.B ILAB0102.ILE1503.net2743} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0102.net25627 w=1.9 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1404.Iho1{ILAB0102.ILE1404.net2685 ILAB0102.net25627} prev=[12] elemInv=1 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB0102.ILE1407.B w=2.762 e=switch=ILAB0102.ILE1407.Is11{ILAB0102.net25627 ILAB0102.ILE1407.B} prev=[15] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0102.ILE1408.net2685 w=2.75 e=switch2=ILAB0102.ILE1408.Is127{ILAB0102.net25627 ILAB0102.ILE1408.net2685} prev=[15] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0102.ILE1005.B w=3.212 e=switch=ILAB0102.ILE1005.Is27{ILAB0102.net17393 ILAB0102.ILE1005.B} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0102.ILE1005.net2650 w=3.2 e=switch2=ILAB0102.ILE1005.Is143{ILAB0102.net17393 ILAB0102.ILE1005.net2650} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0102.net19507 w=3.05 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1408.Iho1{ILAB0102.ILE1408.net2685 ILAB0102.net19507} prev=[17] elemInv=1 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0102.ILE1407.net2743 w=2.874 e=switch_ds=ILAB0102.ILE1407.Is43{ILAB0102.ILE1407.B ILAB0102.ILE1407.net2743} prev=[16] elemInv=0 pathInv=0 v.w=0.1
	 [22] xc_tree ILAB0102.ILE1412.net2685 w=3.6 e=switch2=ILAB0102.ILE1412.Is127{ILAB0102.net19507 ILAB0102.ILE1412.net2685} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [23] xc_tree ILAB0102.ILE1603.net01328 w=5.6 e=switch_ds=ILAB0102.ILE1603.Is60{ILAB0102.ILE1603.C ILAB0102.ILE1603.net01328} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [24] xc_tree ILAB0102.net17799 w=3.5 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1005.Iho3{ILAB0102.ILE1005.net2650 ILAB0102.net17799} prev=[19] elemInv=1 pathInv=0 v.w=0.1
	 [25] xc_tree ILAB0102.net17824 w=4.812 e=switch=ILAB0102.ILE1005.Is130{ILAB0102.net17824 ILAB0102.ILE1005.B} prev=[18] elemInv=0 pathInv=1 v.w=0.1
	 [26] xc_tree ILAB0102.ILE1005.net2743 w=3.324 e=switch_ds=ILAB0102.ILE1005.Is43{ILAB0102.ILE1005.B ILAB0102.ILE1005.net2743} prev=[18] elemInv=0 pathInv=1 v.w=0.1
	 [27] xc_tree ILAB0102.ILE1006.C w=4.8 e=switch_sd=ILAB0102.ILE1006.Is36{ILAB0102.net17799 ILAB0102.ILE1006.C} prev=[24] elemInv=0 pathInv=0 v.w=0.1
	 [28] xc_tree ILAB0102.net19372 w=5 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1412.Iho1{ILAB0102.ILE1412.net2685 ILAB0102.net19372} prev=[22] elemInv=1 pathInv=0 v.w=0.1
	 [29] xc_tree ILAB0102.net18227 w=6.4 e=switch=ILAB0102.ILE1006.Is117{ILAB0102.net18227 ILAB0102.ILE1006.C} prev=[27] elemInv=0 pathInv=0 v.w=0.1
	 [30] xc_tree ILAB0102.ILE0805.B w=5.324 e=switch_sd=ILAB0102.ILE0805.Is122{ILAB0102.net17824 ILAB0102.ILE0805.B} prev=[25] elemInv=0 pathInv=1 v.w=0.1
	 [31] xc_tree ILAB0102.ILE1415.B w=5.862 e=switch=ILAB0102.ILE1415.Is11{ILAB0102.net19372 ILAB0102.ILE1415.B} prev=[28] elemInv=0 pathInv=0 v.w=0.1
	 [32] xc_tree ILAB0102.ILE0805.net2743 w=5.436 e=switch_ds=ILAB0102.ILE0805.Is43{ILAB0102.ILE0805.B ILAB0102.ILE0805.net2743} prev=[30] elemInv=0 pathInv=1 v.w=0.1
	 [33] xc_tree ILAB0102.ILE1603.net2680 w=6.6 e=switch2=ILAB0102.ILE1603.Is63{ILAB0102.ILE1603.net01328 ILAB0102.ILE1603.net2680} prev=[23] elemInv=0 pathInv=1 v.w=0.1
	 [34] xc_tree ILAB0102.ILE1415.net2743 w=5.974 e=switch_ds=ILAB0102.ILE1415.Is43{ILAB0102.ILE1415.B ILAB0102.ILE1415.net2743} prev=[31] elemInv=0 pathInv=0 v.w=0.1
	 [35] xc_tree ILAB0102.ILE0906.B w=6.912 e=switch_sd=ILAB0102.ILE0906.Is114{ILAB0102.net18227 ILAB0102.ILE0906.B} prev=[29] elemInv=0 pathInv=0 v.w=0.1
	 [36] xc_tree ILAB0102.net26501 w=6.95 e=inv_8_UCCLAB=ILAB0102.ILE1603.I666{ILAB0102.ILE1603.net2680 ILAB0102.net26501} prev=[33] elemInv=1 pathInv=0 v.w=0.1
	 [37] xc_tree ILAB0102.ILE0906.net2743 w=7.024 e=switch_ds=ILAB0102.ILE0906.Is43{ILAB0102.ILE0906.B ILAB0102.ILE0906.net2743} prev=[35] elemInv=0 pathInv=0 v.w=0.1
	 [38] xc_tree ILAB0102.net17392 w=3.35 e=switch=ILAB0102.ILE1003.Is35{ILAB0102.net17392 ILAB0102.net20029} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [39] xc_tree net17178<3> w=2.862 e=switch=ILAB0102.ILE1503.Is10{net17178<3> ILAB0102.ILE1503.B} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [40] xc_tree ILAB0102.ILE1503.net2685 w=3.412 e=switch2=ILAB0102.ILE1503.Is127{net17178<3> ILAB0102.ILE1503.net2685} prev=[39] elemInv=0 pathInv=1 v.w=0.1
	 [41] xc_tree ILAB0102.ILE1410.A w=4.35 e=switch_sd=ILAB0102.ILE1410.Is16{ILAB0102.net19507 ILAB0102.ILE1410.A} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [42] xc_tree ILAB0102.ILE1007.net2685 w=4.05 e=switch2=ILAB0102.ILE1007.Is127{ILAB0102.net17392 ILAB0102.ILE1007.net2685} prev=[38] elemInv=0 pathInv=1 v.w=0.1
	 [43] xc_tree ILAB0102.net17707 w=3.636 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1503.Iho1{ILAB0102.ILE1503.net2685 ILAB0102.net17707} prev=[40] elemInv=1 pathInv=0 v.w=0.1
	 [44] xc_tree ILAB0102.ILE1507.net2685 w=4.51 e=switch2=ILAB0102.ILE1507.Is127{ILAB0102.net17707 ILAB0102.ILE1507.net2685} prev=[43] elemInv=0 pathInv=0 v.w=0.1
	 [45] xc_tree ILAB0102.ILE1506.B w=4.51 e=switch=ILAB0102.ILE1506.Is11{ILAB0102.net17707 ILAB0102.ILE1506.B} prev=[43] elemInv=0 pathInv=0 v.w=0.1
	 [46] xc_tree ILAB0102.ILE0903.B w=4.374 e=switch_sd=ILAB0102.ILE0903.Is123{ILAB0102.net15619 ILAB0102.ILE0903.B} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [47] xc_tree ILAB0102.net25807 w=4.3 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1007.Iho1{ILAB0102.ILE1007.net2685 ILAB0102.net25807} prev=[42] elemInv=1 pathInv=0 v.w=0.1
	 [48] xc_tree ILAB0102.ILE1011.net2685 w=5.15 e=switch2=ILAB0102.ILE1011.Is127{ILAB0102.net25807 ILAB0102.ILE1011.net2685} prev=[47] elemInv=0 pathInv=0 v.w=0.1
	 [49] xc_tree ILAB0102.ILE1009.A w=5.6 e=switch_sd=ILAB0102.ILE1009.Is16{ILAB0102.net25807 ILAB0102.ILE1009.A} prev=[47] elemInv=0 pathInv=0 v.w=0.1
	 [50] xc_tree ILAB0102.net24034 w=7.15 e=switch=ILAB0102.ILE1410.Is128{ILAB0102.net24034 ILAB0102.ILE1410.A} prev=[41] elemInv=0 pathInv=1 v.w=0.1
	 [51] xc_tree ILAB0102.ILE0903.net2743 w=4.498 e=switch_ds=ILAB0102.ILE0903.Is43{ILAB0102.ILE0903.B ILAB0102.ILE0903.net2743} prev=[46] elemInv=0 pathInv=1 v.w=0.1
	 [52] xc_tree ILAB0102.net25717 w=4.834 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1507.Iho1{ILAB0102.ILE1507.net2685 ILAB0102.net25717} prev=[44] elemInv=1 pathInv=1 v.w=0.1
	 [53] xc_tree ILAB0102.ILE1506.net2743 w=4.634 e=switch_ds=ILAB0102.ILE1506.Is43{ILAB0102.ILE1506.B ILAB0102.ILE1506.net2743} prev=[45] elemInv=0 pathInv=0 v.w=0.1
	 [54] xc_tree ILAB0102.ILE0905.net2695 w=5.362 e=switch2=ILAB0102.ILE0905.Is15{ILAB0102.net17824 ILAB0102.ILE0905.net2695} prev=[25] elemInv=0 pathInv=1 v.w=0.1
	 [55] xc_tree ILAB0102.ILE1511.net2685 w=5.708 e=switch2=ILAB0102.ILE1511.Is127{ILAB0102.net25717 ILAB0102.ILE1511.net2685} prev=[52] elemInv=0 pathInv=1 v.w=0.1
	 [56] xc_tree ILAB0102.ILE1416.net2685 w=5.7 e=switch2=ILAB0102.ILE1416.Is127{ILAB0102.net19372 ILAB0102.ILE1416.net2685} prev=[28] elemInv=0 pathInv=0 v.w=0.1
	 [57] xc_tree ILAB0102.net22657 w=5.45 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1011.Iho1{ILAB0102.ILE1011.net2685 ILAB0102.net22657} prev=[48] elemInv=1 pathInv=1 v.w=0.1
	 [58] xc_tree ILAB0102.net17957 w=5.562 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0905.Ivo2{ILAB0102.ILE0905.net2695 ILAB0102.net17957} prev=[54] elemInv=1 pathInv=0 v.w=0.1
	 [59] xc_tree ILAB0102.ILE1015.net2685 w=6 e=switch2=ILAB0102.ILE1015.Is127{ILAB0102.net22657 ILAB0102.ILE1015.net2685} prev=[57] elemInv=0 pathInv=1 v.w=0.1
	 [60] xc_tree ILAB0102.ILE1014.B w=7.8 e=switch=ILAB0102.ILE1014.Is11{ILAB0102.net22657 ILAB0102.ILE1014.B} prev=[57] elemInv=0 pathInv=1 v.w=0.1
	 [61] xc_tree ILAB0102.net25403 w=7.162 e=switch=ILAB0102.ILE0905.Is52{ILAB0102.net25403 ILAB0102.net17957} prev=[58] elemInv=0 pathInv=0 v.w=0.1
	 [62] xc_tree ILAB0102.net16339 w=7.2 e=switch=ILAB0102.ILE1009.Is128{ILAB0102.net16339 ILAB0102.ILE1009.A} prev=[49] elemInv=0 pathInv=0 v.w=0.1
	 [63] xc_tree net10387<6> w=5.95 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1416.Iho1{ILAB0102.ILE1416.net2685 net10387<6>} prev=[56] elemInv=1 pathInv=1 v.w=0.1
	 [64] xc_tree ILAB0102.net21262 w=6.032 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1511.Iho1{ILAB0102.ILE1511.net2685 ILAB0102.net21262} prev=[55] elemInv=1 pathInv=0 v.w=0.1
	 [65] xc_tree ILAB0102.net22819 w=7.462 e=switch=ILAB0102.ILE1415.Is131{ILAB0102.net22819 ILAB0102.ILE1415.B} prev=[31] elemInv=0 pathInv=0 v.w=0.1
	 [66] xc_tree ILAB0103.ILE1401.A w=7.25 e=switch_sd=ILAB0103.ILE1401.Is17{net10387<6> ILAB0103.ILE1401.A} prev=[63] elemInv=0 pathInv=1 v.w=0.1
	 [67] xc_tree net10403<3> w=7.4 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1015.Iho1{ILAB0102.ILE1015.net2685 net10403<3>} prev=[59] elemInv=1 pathInv=0 v.w=0.1
	 [68] xc_tree ILAB0102.ILE1514.net2635 w=6.582 e=switch2=ILAB0102.ILE1514.Is135{ILAB0102.net21262 ILAB0102.ILE1514.net2635} prev=[64] elemInv=0 pathInv=0 v.w=0.1
	 [69] xc_tree ILAB0102.net18608 w=8.024 e=switch=ILAB0102.ILE0806.Is52{ILAB0102.net18608 ILAB0102.net18227} prev=[29] elemInv=0 pathInv=0 v.w=0.1
	 [70] xc_tree ILAB0102.net22028 w=6.782 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1514.Iho2{ILAB0102.ILE1514.net2635 ILAB0102.net22028} prev=[68] elemInv=1 pathInv=1 v.w=0.1
	 [71] xc_tree ILAB0102.ILE1516.B w=7.656 e=switch=ILAB0102.ILE1516.Is27{ILAB0102.net22028 ILAB0102.ILE1516.B} prev=[70] elemInv=0 pathInv=1 v.w=0.1
	 [72] xc_tree ILAB0102.net027166 w=7.11 e=buftd4_UCCLAB=ILAB0102.I227{ILAB0102.net26501 ILAB0102.net027166} prev=[36] elemInv=0 pathInv=0 v.w=0.1
	 [73] xc_tree ILAB0102.I5605.net25 w=7.2125 e=mux2p_2_UCCLAB=ILAB0102.I5605.I4{ILAB0102.net027166 ILAB0102.I5605.net25} prev=[72] elemInv=0 pathInv=0 v.w=0.1
	 [74] xc_tree ILAB0102.ILE1110.B w=7.674 e=switch_sd=ILAB0102.ILE1110.Is123{ILAB0102.net24034 ILAB0102.ILE1110.B} prev=[50] elemInv=0 pathInv=1 v.w=0.1
	 [75] xc_tree ILAB0102.ILE0907.B w=8.036 e=switch=ILAB0102.ILE0907.Is27{ILAB0102.net25403 ILAB0102.ILE0907.B} prev=[61] elemInv=0 pathInv=0 v.w=0.1
	 [76] xc_tree ILAB0102.ILE0909.B w=8.074 e=switch=ILAB0102.ILE0909.Is131{ILAB0102.net16339 ILAB0102.ILE0909.B} prev=[62] elemInv=0 pathInv=0 v.w=0.1
	 [77] xc_tree ILAB0102.Clk_int<1> w=7.3145 e=invd16_seth_UCCLAB=ILAB0102.I5605.I5{ILAB0102.I5605.net25 ILAB0102.Clk_int<1>} prev=[73] elemInv=1 pathInv=1 v.w=0.1
	 [78] xc_tree ILAB0103.net20839 w=8.85 e=switch=ILAB0103.ILE1401.Is128{ILAB0103.net20839 ILAB0103.ILE1401.A} prev=[66] elemInv=0 pathInv=1 v.w=0.1
	 [79] xc_tree ILAB0102.I5366.net0110 w=8.5645 e=mux2d1i_1_P_UCCLAB=ILAB0102.I5366.I79{ILAB0102.Clk_int<1> ILAB0102.I5366.net0110} prev=[77] elemInv=0 pathInv=1 v.w=0.1
	 [80] xc_tree ILAB0102.ILE1016.B w=8.092 e=switch_sd=ILAB0102.ILE1016.Is19{net10403<3> ILAB0102.ILE1016.B} prev=[67] elemInv=0 pathInv=0 v.w=0.1
	 [81] xc_tree net10399<2> w=9.062 e=switch=ILAB0102.ILE1115.Is37{net10399<2> ILAB0102.net22819} prev=[65] elemInv=0 pathInv=0 v.w=0.1
	 [82] xc_tree ILAB0102.ILE1516.net2743 w=7.78 e=switch_ds=ILAB0102.ILE1516.Is43{ILAB0102.ILE1516.B ILAB0102.ILE1516.net2743} prev=[71] elemInv=0 pathInv=1 v.w=0.1
	 [83] xc_tree ILAB0102.ILE1110.net2743 w=7.798 e=switch_ds=ILAB0102.ILE1110.Is43{ILAB0102.ILE1110.B ILAB0102.ILE1110.net2743} prev=[74] elemInv=0 pathInv=1 v.w=0.1
	 [84] xc_tree ILAB0102.net23492 w=9.4 e=switch=ILAB0102.ILE1014.Is115{ILAB0102.net23492 ILAB0102.ILE1014.B} prev=[60] elemInv=0 pathInv=1 v.w=0.1
	 [85] xc_tree ILAB0102.ILE0808.B w=8.898 e=switch=ILAB0102.ILE0808.Is27{ILAB0102.net18608 ILAB0102.ILE0808.B} prev=[69] elemInv=0 pathInv=0 v.w=0.1
	 [86] xc_tree ILAB0102.ILE0907.net2743 w=8.16 e=switch_ds=ILAB0102.ILE0907.Is43{ILAB0102.ILE0907.B ILAB0102.ILE0907.net2743} prev=[75] elemInv=0 pathInv=0 v.w=0.1
	 [87] xc_tree ILAB0102.ILE0909.net2743 w=8.198 e=switch_ds=ILAB0102.ILE0909.Is43{ILAB0102.ILE0909.B ILAB0102.ILE0909.net2743} prev=[76] elemInv=0 pathInv=0 v.w=0.1
	 [88] xc_tree ILAB0102.net21602 w=9.692 e=switch=ILAB0102.ILE1016.Is115{ILAB0102.net21602 ILAB0102.ILE1016.B} prev=[80] elemInv=0 pathInv=0 v.w=0.1
	 [89] xc_tree ILAB0102.ILE1016.net2743 w=8.216 e=switch_ds=ILAB0102.ILE1016.Is43{ILAB0102.ILE1016.B ILAB0102.ILE1016.net2743} prev=[80] elemInv=0 pathInv=0 v.w=0.1
	 [90] xc_tree ILAB0102.net15299<2> w=9.6745 e=invd52_UCCLAB=ILAB0102.I5366.I75{ILAB0102.I5366.net0110 ILAB0102.net15299<2>} prev=[79] elemInv=1 pathInv=0 v.w=0.1
	 [91] xc_tree ILAB0103.ILE1301.B w=9.7 e=switch=ILAB0103.ILE1301.Is131{ILAB0103.net20839 ILAB0103.ILE1301.B} prev=[78] elemInv=0 pathInv=1 v.w=0.1
	 [92] xc_tree ILAB0103.ILE1201.B w=9.374 e=switch_sd=ILAB0103.ILE1201.Is122{ILAB0103.net20839 ILAB0103.ILE1201.B} prev=[78] elemInv=0 pathInv=1 v.w=0.1
	 [93] xc_tree ILAB0102.ILE0808.net2743 w=9.022 e=switch_ds=ILAB0102.ILE0808.Is43{ILAB0102.ILE0808.B ILAB0102.ILE0808.net2743} prev=[85] elemInv=0 pathInv=0 v.w=0.1
	 [94] xc_tree ILAB0102.ILE1116.B w=9.586 e=switch_sd=ILAB0102.ILE1116.Is26{net10399<2> ILAB0102.ILE1116.B} prev=[81] elemInv=0 pathInv=0 v.w=0.1
	 [95] xc_tree ILAB0103.ILE1201.net2743 w=9.498 e=switch_ds=ILAB0103.ILE1201.Is43{ILAB0103.ILE1201.B ILAB0103.ILE1201.net2743} prev=[92] elemInv=0 pathInv=1 v.w=0.1
	 [96] xc_tree ILAB0102.ILE0914.B w=10.092 e=switch_sd=ILAB0102.ILE0914.Is114{ILAB0102.net23492 ILAB0102.ILE0914.B} prev=[84] elemInv=0 pathInv=1 v.w=0.1
	 [97] xc_tree ILAB0102.ILE1116.net2743 w=9.71 e=switch_ds=ILAB0102.ILE1116.Is43{ILAB0102.ILE1116.B ILAB0102.ILE1116.net2743} prev=[94] elemInv=0 pathInv=0 v.w=0.1
	 [98] xc_tree ILAB0102.Clk_LAB<1> w=10.775 e=invd32_UCCLAB=ILAB0102.I5591.I2{ILAB0102.net15299<2> ILAB0102.Clk_LAB<1>} prev=[90] elemInv=1 pathInv=1 v.w=0.1
	 [99] xc_tree ILAB0102.ILE0916.B w=10.384 e=switch_sd=ILAB0102.ILE0916.Is114{ILAB0102.net21602 ILAB0102.ILE0916.B} prev=[88] elemInv=0 pathInv=0 v.w=0.1
	 [100] xc_tree net10411<4> w=11.292 e=switch=ILAB0102.ILE0816.Is53{net10411<4> ILAB0102.net21602} prev=[88] elemInv=0 pathInv=0 v.w=0.1
	 [101] xc_tree ILAB0103.ILE1301.net2743 w=9.824 e=switch_ds=ILAB0103.ILE1301.Is43{ILAB0103.ILE1301.B ILAB0103.ILE1301.net2743} prev=[91] elemInv=0 pathInv=1 v.w=0.1
	 [102] xc_tree ILAB0102.ILE0914.net2743 w=10.216 e=switch_ds=ILAB0102.ILE0914.Is43{ILAB0102.ILE0914.B ILAB0102.ILE0914.net2743} prev=[96] elemInv=0 pathInv=1 v.w=0.1
	 [103] xc_tree ILAB0102.ILE0916.net2743 w=10.508 e=switch_ds=ILAB0102.ILE0916.Is43{ILAB0102.ILE0916.B ILAB0102.ILE0916.net2743} prev=[99] elemInv=0 pathInv=0 v.w=0.1
	 [104] xc_tree ILAB0102.ILE0815.net2743 w=10.899 e=switch_sd_clk1=ILAB0102.ILE0815.Is2{ILAB0102.Clk_LAB<1> ILAB0102.ILE0815.net2743} prev=[98] elemInv=0 pathInv=1 v.w=0.1
	 [105] xc_tree ILAB0103.ILE0801.B w=11.792 e=switch_sd=ILAB0103.ILE0801.Is34{net10411<4> ILAB0103.ILE0801.B} prev=[100] elemInv=0 pathInv=0 v.w=0.1
	 [106] xc_tree ILAB0103.ILE0801.net2743 w=11.916 e=switch_ds=ILAB0103.ILE0801.Is43{ILAB0103.ILE0801.B ILAB0103.ILE0801.net2743} prev=[105] elemInv=0 pathInv=0 v.w=0.1
	 [107] xc_tree ILAB0102.net20299 w=5.974 e=switch=ILAB0102.ILE0903.Is130{ILAB0102.net20299 ILAB0102.ILE0903.B} prev=[46] elemInv=0 pathInv=1 v.w=0.1
	 [108] xc_tree ILAB0102.ILE0803.B w=6.86 e=switch=ILAB0102.ILE0803.Is131{ILAB0102.net20299 ILAB0102.ILE0803.B} prev=[107] elemInv=0 pathInv=1 v.w=0.1
	 [109] xc_tree ILAB0102.ILE0803.net2743 w=6.996 e=switch_ds=ILAB0102.ILE0803.Is43{ILAB0102.ILE0803.B ILAB0102.ILE0803.net2743} prev=[108] elemInv=0 pathInv=1 v.w=0.1
	 [110] xc_tree ILAB0102.ILE0811.net2743 w=10.911 e=switch_sd_clk1=ILAB0102.ILE0811.Is2{ILAB0102.Clk_LAB<1> ILAB0102.ILE0811.net2743} prev=[98] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _071_ {
	 xc_pin xci2_or2 y o [-1] pinInv=0 { ILAB0102.ILE1402.net2656 ILAB0102.ILE1402.net0541 }
	 xc_pin xci2_ao21ftt b i [11] pinInv=0 { ILAB0102.ILE1303.net2743 }
	 xc_pin xci2_nand3ftt b i [8] pinInv=0 { ILAB0102.ILE1302.net2743 }
	 [0] xc_tree ILAB0102.ILE1402.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1402.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE1402.net1859 w=0.55 e=switch2=ILAB0102.ILE1402.Is119{ILAB0102.ILE1402.net2656 ILAB0102.ILE1402.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1402.net2680 w=0.85 e=switch2=ILAB0102.ILE1402.Is63{ILAB0102.ILE1402.net0541 ILAB0102.ILE1402.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0102.net26329 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1402.Ivi7{ILAB0102.ILE1402.net1859 ILAB0102.net26329} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE1302.B w=1.6 e=switch=ILAB0102.ILE1302.Is131{ILAB0102.net26329 ILAB0102.ILE1302.B} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.net20831 w=1.15 e=inv_8_UCCLAB=ILAB0102.ILE1402.I666{ILAB0102.ILE1402.net2680 ILAB0102.net20831} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.net19999 w=2.45 e=switch_sd=ILAB0102.ILE1403.Is67{ILAB0102.net20831 ILAB0102.net19999} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE1302.net2743 w=1.7 e=switch_ds=ILAB0102.ILE1302.Is43{ILAB0102.ILE1302.B ILAB0102.ILE1302.net2743} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE1303.net0560 w=2.65 e=inv_4_UCCLAB=ILAB0102.ILE1303.I711{ILAB0102.net19999 ILAB0102.ILE1303.net0560} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0102.ILE1303.B w=3.25 e=switch1_sd=ILAB0102.ILE1303.Is86{ILAB0102.ILE1303.net0560 ILAB0102.ILE1303.B} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0102.ILE1303.net2743 w=3.35 e=switch_ds=ILAB0102.ILE1303.Is43{ILAB0102.ILE1303.B ILAB0102.ILE1303.net2743} prev=[10] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree adc_rd.wreg_mode {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0402.ILE0102.net2656 ILAB0402.ILE0102.net0541 }
	 xc_pin xci2_or2 a i [30] pinInv=0 { ILAB0102.ILE1402.net2749 }
	 xc_pin xci2_nor3 a i [29] pinInv=0 { ILAB0102.ILE1403.net2749 }
	 xc_pin xci2_oa21ttf a i [17] pinInv=0 { ILAB0202.ILE0103.net2749 }
	 xc_pin xci2_ao21 a i [8] pinInv=0 { ILAB0402.ILE0101.net2749 }
	 [0] xc_tree ILAB0402.ILE0102.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0402.ILE0102.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0402.ILE0102.net1844 w=0.55 e=switch2=ILAB0402.ILE0102.Is31{ILAB0402.ILE0102.net2656 ILAB0402.ILE0102.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0402.ILE0102.net2680 w=0.55 e=switch2=ILAB0402.ILE0102.Is63{ILAB0402.ILE0102.net0541 ILAB0402.ILE0102.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree net16328<1> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0402.ILE0102.Ihi7{ILAB0402.ILE0102.net1844 net16328<1>} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0402.net16736 w=0.75 e=inv_8_UCCLAB=ILAB0402.ILE0102.I666{ILAB0402.ILE0102.net2680 ILAB0402.net16736} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0402.ILE0101.A w=1.6 e=switch=ILAB0402.ILE0101.Is9{net16328<1> ILAB0402.ILE0101.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0402.net37806 w=2.35 e=buf4_12_UCCLAB=ILAB0402.I4388{ILAB0402.net16736 ILAB0402.net37806} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0402.ILE0101.net2749 w=1.7 e=switch_ds=ILAB0402.ILE0101.Is41{ILAB0402.ILE0101.A ILAB0402.ILE0101.net2749} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0402.net39424 w=2.575 e=switch1=ILAB0402.I3657{ILAB0402.net39424 ILAB0402.net37806} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree LongBus_6<4> w=3.275 e=buftd52C_UCCLAB=ILAB0402.I4443{ILAB0402.net39424 LongBus_6<4>} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree net8296<11> w=3.975 e=buftd52_UCCLAB=ILAB0402.I4772.I40{LongBus_6<4> net8296<11>} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree LongBus_73<4> w=4.825 e=buftd52C_UCCLAB=I3741.I41{net8296<11> LongBus_73<4>} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree LongBus_2<4> w=5.525 e=buftd52_UCCLAB=ILAB0202.I4772.I41{LongBus_73<4> LongBus_2<4>} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree net18609<3> w=6.825 e=switch_ds=ILAB0202.I901{LongBus_2<4> net18609<3>} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0202.ILE0103.net01345 w=7.025 e=inv_4_UCCLAB=ILAB0202.ILE0103.I714{net18609<3> ILAB0202.ILE0103.net01345} prev=[14] elemInv=1 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB0202.ILE0103.A w=7.625 e=switch1_sd=ILAB0202.ILE0103.Is54{ILAB0202.ILE0103.net01345 ILAB0202.ILE0103.A} prev=[15] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0202.ILE0103.net2749 w=7.725 e=switch_ds=ILAB0202.ILE0103.Is41{ILAB0202.ILE0103.A ILAB0202.ILE0103.net2749} prev=[16] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0402.net38257 w=2.575 e=switch1=ILAB0402.I3908{ILAB0402.net38257 ILAB0402.net37806} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree LongBus_6<5> w=3.275 e=buftd52C_UCCLAB=ILAB0402.I4434{ILAB0402.net38257 LongBus_6<5>} prev=[18] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree net8296<10> w=3.975 e=buftd52_UCCLAB=ILAB0402.I4772.I39{LongBus_6<5> net8296<10>} prev=[19] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree LongBus_73<5> w=4.825 e=buftd52C_UCCLAB=I3741.I38{net8296<10> LongBus_73<5>} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0102.net29756 w=6.925 e=switch_ds=ILAB0102.I2263{LongBus_73<5> ILAB0102.net29756} prev=[21] elemInv=0 pathInv=1 v.w=0.1
	 [23] xc_tree ILAB0102.ILE1401.net01339 w=7.225 e=inv_4_UCCLAB=ILAB0102.ILE1401.I715{ILAB0102.net29756 ILAB0102.ILE1401.net01339} prev=[22] elemInv=1 pathInv=0 v.w=0.1
	 [24] xc_tree ILAB0102.ILE1401.C w=8.825 e=switch1_sd=ILAB0102.ILE1401.Is70{ILAB0102.ILE1401.net01339 ILAB0102.ILE1401.C} prev=[23] elemInv=0 pathInv=0 v.w=0.1
	 [25] xc_tree net18584<0> w=11.625 e=switch=ILAB0202.ILE0103.Is128{net18584<0> ILAB0202.ILE0103.A} prev=[16] elemInv=0 pathInv=0 v.w=0.1
	 [26] xc_tree net17182<1> w=11.625 e=switch=ILAB0102.ILE1401.Is13{net17182<1> ILAB0102.ILE1401.C} prev=[24] elemInv=0 pathInv=0 v.w=0.1
	 [27] xc_tree ILAB0102.ILE1402.A w=12.475 e=switch=ILAB0102.ILE1402.Is8{net17182<1> ILAB0102.ILE1402.A} prev=[26] elemInv=0 pathInv=0 v.w=0.1
	 [28] xc_tree ILAB0102.ILE1403.A w=12.125 e=switch_sd=ILAB0102.ILE1403.Is121{net18584<0> ILAB0102.ILE1403.A} prev=[25] elemInv=0 pathInv=0 v.w=0.1
	 [29] xc_tree ILAB0102.ILE1403.net2749 w=12.237 e=switch_ds=ILAB0102.ILE1403.Is41{ILAB0102.ILE1403.A ILAB0102.ILE1403.net2749} prev=[28] elemInv=0 pathInv=0 v.w=0.1
	 [30] xc_tree ILAB0102.ILE1402.net2749 w=12.587 e=switch_ds=ILAB0102.ILE1402.Is41{ILAB0102.ILE1402.A ILAB0102.ILE1402.net2749} prev=[27] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _070_ {
	 xc_pin xci2_or3fft y o [-1] pinInv=0 { ILAB0202.ILE0302.net2656 ILAB0202.ILE0302.net0541 }
	 xc_pin xci2_oai21 b i [7] pinInv=0 { ILAB0102.ILE1602.net2743 }
	 xc_pin xci2_ao21 a i [9] pinInv=0 { ILAB0202.ILE0105.net2749 }
	 [0] xc_tree ILAB0202.ILE0302.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0202.ILE0302.net1859 w=0.55 e=switch2=ILAB0202.ILE0302.Is119{ILAB0202.ILE0302.net2656 ILAB0202.ILE0302.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0202.ILE0302.net1850 w=0.7 e=switch2=ILAB0202.ILE0302.Is103{ILAB0202.ILE0302.net2656 ILAB0202.ILE0302.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree net18588<3> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0202.ILE0302.Ivi7{ILAB0202.ILE0302.net1859 net18588<3>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0202.net26822 w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0202.ILE0302.Ivi5{ILAB0202.ILE0302.net1850 ILAB0202.net26822} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE1602.B w=1.25 e=switch_sd=ILAB0102.ILE1602.Is123{net18588<3> ILAB0102.ILE1602.B} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0202.net26707 w=2.55 e=switch=ILAB0202.ILE0102.Is51{ILAB0202.net26707 ILAB0202.net26822} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE1602.net2743 w=1.35 e=switch_ds=ILAB0102.ILE1602.Is43{ILAB0102.ILE1602.B ILAB0102.ILE1602.net2743} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0202.ILE0105.A w=3.496 e=switch=ILAB0202.ILE0105.Is9{ILAB0202.net26707 ILAB0202.ILE0105.A} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0202.ILE0105.net2749 w=3.608 e=switch_ds=ILAB0202.ILE0105.Is41{ILAB0202.ILE0105.A ILAB0202.ILE0105.net2749} prev=[8] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.start_mode {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0302.ILE1501.net2656 ILAB0302.ILE1501.net0541 }
	 xc_pin xci2_or3fft a i [42] pinInv=0 { ILAB0202.ILE0302.net2749 }
	 xc_pin xci2_or2 b i [53] pinInv=0 { ILAB0102.ILE1402.net2746 }
	 xc_pin xci2_nor3 c i [54] pinInv=0 { ILAB0102.ILE1403.net2746 }
	 xc_pin xci2_oa21ttf b i [29] pinInv=0 { ILAB0202.ILE0103.net2743 }
	 xc_pin xci2_nand3ftt a i [46] pinInv=0 { ILAB0102.ILE1504.net2749 }
	 xc_pin xci2_mux2h b i [30] pinInv=0 { ILAB0102.ILE1604.net2746 }
	 xc_pin xci2_mux2h b i [45] pinInv=0 { ILAB0102.ILE1404.net2746 }
	 xc_pin xci2_mux2h b i [8] pinInv=0 { ILAB0302.ILE1601.net2746 }
	 [0] xc_tree ILAB0302.ILE1501.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0302.ILE1501.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0302.ILE1501.net2660 w=0.55 e=switch2=ILAB0302.ILE1501.Is23{ILAB0302.ILE1501.net2656 ILAB0302.ILE1501.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0302.ILE1501.net2680 w=1 e=switch2=ILAB0302.ILE1501.Is63{ILAB0302.ILE1501.net0541 ILAB0302.ILE1501.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree net11344<3> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0302.ILE1501.Ivo1{ILAB0302.ILE1501.net2660 net11344<3>} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0302.ILE1601.C w=1.25 e=switch_sd=ILAB0302.ILE1601.Is125{net11344<3> ILAB0302.ILE1601.C} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree net16387<0> w=1.4 e=inv_8_UCCLAB=ILAB0302.ILE1501.I666{ILAB0302.ILE1501.net2680 net16387<0>} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0302.ILE1601.net01328 w=3.75 e=switch_ds=ILAB0302.ILE1601.Is60{ILAB0302.ILE1601.C ILAB0302.ILE1601.net01328} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0302.ILE1601.net2746 w=1.35 e=switch_ds=ILAB0302.ILE1601.Is44{ILAB0302.ILE1601.C ILAB0302.ILE1601.net2746} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0302.net38580 w=3 e=buf4_12_UCCLAB=ILAB0302.I4368{net16387<0> ILAB0302.net38580} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0302.net27511 w=3.225 e=switch1=ILAB0302.I3689{ILAB0302.net27511 ILAB0302.net38580} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0302.net27571 w=3.225 e=switch1=ILAB0302.I3736{ILAB0302.net27571 ILAB0302.net38580} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree LongBus_73<0> w=3.425 e=buftid52C_UCCLAB=ILAB0302.I4477{ILAB0302.net27511 LongBus_73<0>} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree LongBus_73<1> w=3.425 e=buftid52C_UCCLAB=ILAB0302.I4457{ILAB0302.net27571 LongBus_73<1>} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree LongBus_1<1> w=4.125 e=buftd52_UCCLAB=ILAB0102.I4775.I5{LongBus_73<1> LongBus_1<1>} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree LongBus_2<0> w=4.125 e=buftd52_UCCLAB=ILAB0202.I4772.I62895{LongBus_73<0> LongBus_2<0>} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0302.ILE1601.net2680 w=4.6 e=switch2=ILAB0302.ILE1601.Is63{ILAB0302.ILE1601.net01328 ILAB0302.ILE1601.net2680} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree net18608<2> w=5.425 e=switch_ds=ILAB0102.I1352{LongBus_1<1> net18608<2>} prev=[14] elemInv=0 pathInv=1 v.w=0.1
	 [18] xc_tree net18609<4> w=5.425 e=switch_ds=ILAB0202.I1665{LongBus_2<0> net18609<4>} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree net16386<0> w=4.9 e=inv_8_UCCLAB=ILAB0302.ILE1601.I666{ILAB0302.ILE1601.net2680 net16386<0>} prev=[16] elemInv=1 pathInv=0 v.w=0.1
	 [20] xc_tree ILAB0302.net027160 w=5.06 e=buftd4_UCCLAB=ILAB0302.I237{net16386<0> ILAB0302.net027160} prev=[19] elemInv=0 pathInv=0 v.w=0.1
	 [21] xc_tree ILAB0302.I5605.net21 w=5.1625 e=mux2p_2_UCCLAB=ILAB0302.I5605.I7{ILAB0302.net027160 ILAB0302.I5605.net21} prev=[20] elemInv=0 pathInv=0 v.w=0.1
	 [22] xc_tree ILAB0302.Clk_int<0> w=5.2645 e=invd16_seth_UCCLAB=ILAB0302.I5605.I6{ILAB0302.I5605.net21 ILAB0302.Clk_int<0>} prev=[21] elemInv=1 pathInv=1 v.w=0.1
	 [23] xc_tree ILAB0302.I5366.net0119 w=5.3675 e=mux2p_2_UCCLAB=ILAB0302.I5366.I82{ILAB0302.Clk_int<0> ILAB0302.I5366.net0119} prev=[22] elemInv=0 pathInv=1 v.w=0.1
	 [24] xc_tree net16372<1> w=5.4705 e=invtd56_clk_UCCLAB=ILAB0302.I5366.I6{ILAB0302.I5366.net0119 net16372<1>} prev=[23] elemInv=1 pathInv=0 v.w=0.1
	 [25] xc_tree ILAB0102.ILE1604.net0558 w=5.625 e=inv_4_UCCLAB=ILAB0102.ILE1604.I710{net18608<2> ILAB0102.ILE1604.net0558} prev=[17] elemInv=1 pathInv=0 v.w=0.1
	 [26] xc_tree ILAB0202.ILE0103.net01342 w=5.625 e=inv_4_UCCLAB=ILAB0202.ILE0103.I713{net18609<4> ILAB0202.ILE0103.net01342} prev=[18] elemInv=1 pathInv=0 v.w=0.1
	 [27] xc_tree ILAB0102.ILE1604.C w=6.225 e=switch1_sd=ILAB0102.ILE1604.Is78{ILAB0102.ILE1604.net0558 ILAB0102.ILE1604.C} prev=[25] elemInv=0 pathInv=0 v.w=0.1
	 [28] xc_tree ILAB0202.ILE0103.B w=6.225 e=switch1_sd=ILAB0202.ILE0103.Is62{ILAB0202.ILE0103.net01342 ILAB0202.ILE0103.B} prev=[26] elemInv=0 pathInv=0 v.w=0.1
	 [29] xc_tree ILAB0202.ILE0103.net2743 w=6.325 e=switch_ds=ILAB0202.ILE0103.Is43{ILAB0202.ILE0103.B ILAB0202.ILE0103.net2743} prev=[28] elemInv=0 pathInv=0 v.w=0.1
	 [30] xc_tree ILAB0102.ILE1604.net2746 w=6.325 e=switch_ds=ILAB0102.ILE1604.Is44{ILAB0102.ILE1604.C ILAB0102.ILE1604.net2746} prev=[27] elemInv=0 pathInv=0 v.w=0.1
	 [31] xc_tree net10281<1> w=5.6695 e=invtd56_UCCLAB=I3700.I4{net16372<1> net10281<1>} prev=[24] elemInv=1 pathInv=1 v.w=0.1
	 [32] xc_tree I3690.net43 w=5.8685 e=mux2p_2_UCCLAB=I3690.I4{net10281<1> I3690.net43} prev=[31] elemInv=0 pathInv=1 v.w=0.1
	 [33] xc_tree net20974<1> w=6.0945 e=invtd56_pd_clk_UCCLAB=I3690.I5{I3690.net43 net20974<1>} prev=[32] elemInv=1 pathInv=0 v.w=0.1
	 [34] xc_tree GCLK_s1<2> w=6.2365 e=invtd56_pd_clk_UCCLAB=I3651.I2{net20974<1> GCLK_s1<2>} prev=[33] elemInv=1 pathInv=1 v.w=0.1
	 [35] xc_tree net18580<0> w=7.825 e=switch=ILAB0102.ILE1604.Is133{net18580<0> ILAB0102.ILE1604.C} prev=[27] elemInv=0 pathInv=0 v.w=0.1
	 [36] xc_tree ILAB0202.I5366.net68 w=6.3785 e=nand2_1_UCCLAB=ILAB0202.I5366.I72{GCLK_s1<2> ILAB0202.I5366.net68} prev=[34] elemInv=1 pathInv=0 v.w=0.1
	 [37] xc_tree ILAB0202.I5366.net0121 w=6.5155 e=switch2_clk=ILAB0202.I5366.I66{ILAB0202.I5366.net68 ILAB0202.I5366.net0121} prev=[36] elemInv=0 pathInv=0 v.w=0.1
	 [38] xc_tree ILAB0202.I5366.net0104 w=6.6475 e=switch2_clk=ILAB0202.I5366.I69{ILAB0202.I5366.net0121 ILAB0202.I5366.net0104} prev=[37] elemInv=0 pathInv=0 v.w=0.1
	 [39] xc_tree ILAB0202.I5366.net0106 w=6.9095 e=mux2d1i_1_P_UCCLAB=ILAB0202.I5366.I80{ILAB0202.I5366.net0104 ILAB0202.I5366.net0106} prev=[38] elemInv=1 pathInv=1 v.w=0.1
	 [40] xc_tree ILAB0202.net15299<1> w=7.0315 e=invd52_UCCLAB=ILAB0202.I5366.I76{ILAB0202.I5366.net0106 ILAB0202.net15299<1>} prev=[39] elemInv=1 pathInv=0 v.w=0.1
	 [41] xc_tree ILAB0202.Clk_LAB<2> w=7.144 e=invd32_UCCLAB=ILAB0202.I5591.I1{ILAB0202.net15299<1> ILAB0202.Clk_LAB<2>} prev=[40] elemInv=1 pathInv=1 v.w=0.1
	 [42] xc_tree ILAB0202.ILE0302.net2749 w=7.256 e=switch_sd_clk2=ILAB0202.ILE0302.Is136{ILAB0202.Clk_LAB<2> ILAB0202.ILE0302.net2749} prev=[41] elemInv=0 pathInv=1 v.w=0.1
	 [43] xc_tree ILAB0102.ILE1404.C w=8.325 e=switch_sd=ILAB0102.ILE1404.Is125{net18580<0> ILAB0102.ILE1404.C} prev=[35] elemInv=0 pathInv=0 v.w=0.1
	 [44] xc_tree ILAB0102.ILE1504.A w=8.325 e=switch_sd=ILAB0102.ILE1504.Is120{net18580<0> ILAB0102.ILE1504.A} prev=[35] elemInv=0 pathInv=0 v.w=0.1
	 [45] xc_tree ILAB0102.ILE1404.net2746 w=8.437 e=switch_ds=ILAB0102.ILE1404.Is44{ILAB0102.ILE1404.C ILAB0102.ILE1404.net2746} prev=[43] elemInv=0 pathInv=0 v.w=0.1
	 [46] xc_tree ILAB0102.ILE1504.net2749 w=8.437 e=switch_ds=ILAB0102.ILE1504.Is41{ILAB0102.ILE1504.A ILAB0102.ILE1504.net2749} prev=[44] elemInv=0 pathInv=0 v.w=0.1
	 [47] xc_tree ILAB0102.I5366.net68 w=6.3665 e=nand2_1_UCCLAB=ILAB0102.I5366.I72{GCLK_s1<2> ILAB0102.I5366.net68} prev=[34] elemInv=1 pathInv=0 v.w=0.1
	 [48] xc_tree ILAB0102.I5366.net0121 w=6.4915 e=switch2_clk=ILAB0102.I5366.I66{ILAB0102.I5366.net68 ILAB0102.I5366.net0121} prev=[47] elemInv=0 pathInv=0 v.w=0.1
	 [49] xc_tree ILAB0102.I5366.net0104 w=6.6115 e=switch2_clk=ILAB0102.I5366.I69{ILAB0102.I5366.net0121 ILAB0102.I5366.net0104} prev=[48] elemInv=0 pathInv=0 v.w=0.1
	 [50] xc_tree ILAB0102.I5366.net0106 w=7.8615 e=mux2d1i_1_P_UCCLAB=ILAB0102.I5366.I80{ILAB0102.I5366.net0104 ILAB0102.I5366.net0106} prev=[49] elemInv=1 pathInv=1 v.w=0.1
	 [51] xc_tree ILAB0102.net15299<1> w=8.9715 e=invd52_UCCLAB=ILAB0102.I5366.I76{ILAB0102.I5366.net0106 ILAB0102.net15299<1>} prev=[50] elemInv=1 pathInv=0 v.w=0.1
	 [52] xc_tree ILAB0102.Clk_LAB<2> w=10.072 e=invd32_UCCLAB=ILAB0102.I5591.I1{ILAB0102.net15299<1> ILAB0102.Clk_LAB<2>} prev=[51] elemInv=1 pathInv=1 v.w=0.1
	 [53] xc_tree ILAB0102.ILE1402.net2746 w=10.196 e=switch_sd_clk2=ILAB0102.ILE1402.Is140{ILAB0102.Clk_LAB<2> ILAB0102.ILE1402.net2746} prev=[52] elemInv=0 pathInv=1 v.w=0.1
	 [54] xc_tree ILAB0102.ILE1403.net2746 w=10.196 e=switch_sd_clk2=ILAB0102.ILE1403.Is140{ILAB0102.Clk_LAB<2> ILAB0102.ILE1403.net2746} prev=[52] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _069_ {
	 xc_pin xci2_nor2ft y o [-1] pinInv=0 { ILAB0202.ILE0202.net2656 ILAB0202.ILE0202.net0541 }
	 xc_pin xci2_ao21ftt a i [18] pinInv=0 { ILAB0102.ILE1303.net2749 }
	 xc_pin xci2_nand3ftt b i [20] pinInv=0 { ILAB0102.ILE1504.net2743 }
	 xc_pin xci2_mux2h s i [22] pinInv=0 { ILAB0102.ILE1604.net2743 }
	 xc_pin xci2_mux2h s i [9] pinInv=0 { ILAB0102.ILE1404.net2743 }
	 xc_pin xci2_nand3ftt a i [17] pinInv=0 { ILAB0102.ILE1302.net2749 }
	 [0] xc_tree ILAB0202.ILE0202.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0202.ILE0202.net1859 w=0.7 e=switch2=ILAB0202.ILE0202.Is119{ILAB0202.ILE0202.net2656 ILAB0202.ILE0202.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0202.ILE0202.net1850 w=0.7 e=switch2=ILAB0202.ILE0202.Is103{ILAB0202.ILE0202.net2656 ILAB0202.ILE0202.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree net18588<1> w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0202.ILE0202.Ivi7{ILAB0202.ILE0202.net1859 net18588<1>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree net18588<5> w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0202.ILE0202.Ivi5{ILAB0202.ILE0202.net1850 net18588<5>} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.net26302 w=2.55 e=switch=ILAB0102.ILE1402.Is35{ILAB0102.net26302 net18588<1>} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.net26483 w=2.55 e=switch=ILAB0102.ILE1602.Is52{ILAB0102.net26483 net18588<5>} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE1602.net1862 w=1.65 e=switch2=ILAB0102.ILE1602.Is111{net18588<5> ILAB0102.ILE1602.net1862} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE1404.B w=3.05 e=switch_sd=ILAB0102.ILE1404.Is18{ILAB0102.net26302 ILAB0102.ILE1404.B} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE1404.net2743 w=3.15 e=switch_ds=ILAB0102.ILE1404.Is43{ILAB0102.ILE1404.B ILAB0102.ILE1404.net2743} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree net18588<0> w=1.996 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1602.Ivi6{ILAB0102.ILE1602.net1862 net18588<0>} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0102.net26528 w=3.596 e=switch=ILAB0102.ILE1302.Is37{ILAB0102.net26528 net18588<0>} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0102.ILE1302.net1859 w=2.546 e=switch2=ILAB0102.ILE1302.Is119{net18588<0> ILAB0102.ILE1302.net1859} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0102.net26554 w=2.746 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1302.Ivi7{ILAB0102.ILE1302.net1859 ILAB0102.net26554} prev=[12] elemInv=1 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0102.ILE1302.A w=3.608 e=switch=ILAB0102.ILE1302.Is128{ILAB0102.net26554 ILAB0102.ILE1302.A} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0102.net16204 w=4.65 e=switch=ILAB0102.ILE1404.Is131{ILAB0102.net16204 ILAB0102.ILE1404.B} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0102.ILE1303.A w=4.108 e=switch_sd=ILAB0102.ILE1303.Is24{ILAB0102.net26528 ILAB0102.ILE1303.A} prev=[11] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0102.ILE1302.net2749 w=3.72 e=switch_ds=ILAB0102.ILE1302.Is41{ILAB0102.ILE1302.A ILAB0102.ILE1302.net2749} prev=[14] elemInv=0 pathInv=1 v.w=0.1
	 [18] xc_tree ILAB0102.ILE1303.net2749 w=4.22 e=switch_ds=ILAB0102.ILE1303.Is41{ILAB0102.ILE1303.A ILAB0102.ILE1303.net2749} prev=[16] elemInv=0 pathInv=0 v.w=0.1
	 [19] xc_tree ILAB0102.ILE1504.B w=5.512 e=switch=ILAB0102.ILE1504.Is130{ILAB0102.net16204 ILAB0102.ILE1504.B} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0102.ILE1504.net2743 w=5.624 e=switch_ds=ILAB0102.ILE1504.Is43{ILAB0102.ILE1504.B ILAB0102.ILE1504.net2743} prev=[19] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0102.ILE1604.B w=6.512 e=switch=ILAB0102.ILE1604.Is27{ILAB0102.net26483 ILAB0102.ILE1604.B} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0102.ILE1604.net2743 w=6.636 e=switch_ds=ILAB0102.ILE1604.Is43{ILAB0102.ILE1604.B ILAB0102.ILE1604.net2743} prev=[21] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _068_ {
	 xc_pin xci2_or3 y o [-1] pinInv=0 { ILAB0402.ILE0302.net2656 ILAB0402.ILE0302.net0541 }
	 xc_pin xci2_nor2ft b i [21] pinInv=0 { ILAB0202.ILE0202.net2746 }
	 xc_pin xci2_or3fft c i [22] pinInv=0 { ILAB0202.ILE0302.net2746 }
	 [0] xc_tree ILAB0402.ILE0302.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0402.ILE0302.net1862 w=1 e=switch2=ILAB0402.ILE0302.Is111{ILAB0402.ILE0302.net2656 ILAB0402.ILE0302.net1862} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net11340<6> w=1.4 e=sw_b_v2_inv_UCCLAB=ILAB0402.ILE0302.Ivi6{ILAB0402.ILE0302.net1862 net11340<6>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0302.ILE1602.net1859 w=2.4 e=switch2=ILAB0302.ILE1602.Is119{net11340<6> ILAB0302.ILE1602.net1859} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0302.net26509 w=2.8 e=sw_b_v2_inv_UCCLAB=ILAB0302.ILE1602.Ivi7{ILAB0302.ILE1602.net1859 ILAB0302.net26509} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0302.ILE1202.net1859 w=3.8 e=switch2=ILAB0302.ILE1202.Is119{ILAB0302.net26509 ILAB0302.ILE1202.net1859} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0302.net26599 w=4.2 e=sw_b_v2_inv_UCCLAB=ILAB0302.ILE1202.Ivi7{ILAB0302.ILE1202.net1859 ILAB0302.net26599} prev=[5] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0302.ILE0802.net1859 w=5.2 e=switch2=ILAB0302.ILE0802.Is119{ILAB0302.net26599 ILAB0302.ILE0802.net1859} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0302.net26149 w=5.6 e=sw_b_v2_inv_UCCLAB=ILAB0302.ILE0802.Ivi7{ILAB0302.ILE0802.net1859 ILAB0302.net26149} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [9] xc_tree ILAB0302.ILE0402.net1859 w=6.6 e=switch2=ILAB0302.ILE0402.Is119{ILAB0302.net26149 ILAB0302.ILE0402.net1859} prev=[8] elemInv=0 pathInv=0 v.w=0.1
	 [10] xc_tree net11189<6> w=7 e=sw_b_v2_inv_UCCLAB=ILAB0302.ILE0402.Ivi7{ILAB0302.ILE0402.net1859 net11189<6>} prev=[9] elemInv=1 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0202.ILE1602.net1859 w=8 e=switch2=ILAB0202.ILE1602.Is119{net11189<6> ILAB0202.ILE1602.net1859} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0202.net26509 w=8.4 e=sw_b_v2_inv_UCCLAB=ILAB0202.ILE1602.Ivi7{ILAB0202.ILE1602.net1859 ILAB0202.net26509} prev=[11] elemInv=1 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0202.ILE1202.net1859 w=9.4 e=switch2=ILAB0202.ILE1202.Is119{ILAB0202.net26509 ILAB0202.ILE1202.net1859} prev=[12] elemInv=0 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0202.net26599 w=9.8 e=sw_b_v2_inv_UCCLAB=ILAB0202.ILE1202.Ivi7{ILAB0202.ILE1202.net1859 ILAB0202.net26599} prev=[13] elemInv=1 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0202.ILE0802.net1859 w=10.65 e=switch2=ILAB0202.ILE0802.Is119{ILAB0202.net26599 ILAB0202.ILE0802.net1859} prev=[14] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0202.net26149 w=10.95 e=sw_b_v2_inv_UCCLAB=ILAB0202.ILE0802.Ivi7{ILAB0202.ILE0802.net1859 ILAB0202.net26149} prev=[15] elemInv=1 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0202.ILE0402.net1859 w=11.5 e=switch2=ILAB0202.ILE0402.Is119{ILAB0202.net26149 ILAB0202.ILE0402.net1859} prev=[16] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree net18588<6> w=11.7 e=sw_b_v2_inv_UCCLAB=ILAB0202.ILE0402.Ivi7{ILAB0202.ILE0402.net1859 net18588<6>} prev=[17] elemInv=1 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0202.ILE0302.C w=12.55 e=switch=ILAB0202.ILE0302.Is133{net18588<6> ILAB0202.ILE0302.C} prev=[18] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0202.ILE0202.C w=12.2 e=switch_sd=ILAB0202.ILE0202.Is124{net18588<6> ILAB0202.ILE0202.C} prev=[18] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0202.ILE0202.net2746 w=12.312 e=switch_ds=ILAB0202.ILE0202.Is44{ILAB0202.ILE0202.C ILAB0202.ILE0202.net2746} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0202.ILE0302.net2746 w=12.662 e=switch_ds=ILAB0202.ILE0302.Is44{ILAB0202.ILE0302.C ILAB0202.ILE0302.net2746} prev=[19] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.bit_cnt[3] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0401.ILE0716.net2656 ILAB0401.ILE0716.net0541 }
	 xc_pin xci2_or3 a i [16] pinInv=0 { ILAB0402.ILE0302.net2749 }
	 xc_pin xci2_and2 a i [11] pinInv=0 { ILAB0401.ILE0516.net2749 }
	 xc_pin xci2_and3 a i [12] pinInv=0 { ILAB0402.ILE0701.net2749 }
	 xc_pin xci2_and3fft a i [17] pinInv=0 { ILAB0402.ILE0301.net2749 }
	 xc_pin xci2_and2 a i [20] pinInv=0 { ILAB0401.ILE0316.net2749 }
	 xc_pin xci2_xnor2ft a i [13] pinInv=0 { ILAB0401.ILE0416.net2746 }
	 xc_pin xci2_xnor2ft a i [10] pinInv=0 { ILAB0401.ILE0416.net2749 }
	 [0] xc_tree ILAB0401.ILE0716.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0716.net1859 w=0.55 e=switch2=ILAB0401.ILE0716.Is119{ILAB0401.ILE0716.net2656 ILAB0401.ILE0716.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.ILE0716.net2635 w=0.55 e=switch2=ILAB0401.ILE0716.Is135{ILAB0401.ILE0716.net2656 ILAB0401.ILE0716.net2635} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0401.net19309 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0716.Ivi7{ILAB0401.ILE0716.net1859 ILAB0401.net19309} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree net16304<5> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0716.Iho2{ILAB0401.ILE0716.net2635 net16304<5>} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree net16320<6> w=2.35 e=switch=ILAB0401.ILE0316.Is35{net16320<6> ILAB0401.net19309} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.ILE0416.C w=1.25 e=switch_sd=ILAB0401.ILE0416.Is125{ILAB0401.net19309 ILAB0401.ILE0416.C} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0401.ILE0416.A w=1.25 e=switch_sd=ILAB0401.ILE0416.Is121{ILAB0401.net19309 ILAB0401.ILE0416.A} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.ILE0516.A w=1.25 e=switch_sd=ILAB0401.ILE0516.Is120{ILAB0401.net19309 ILAB0401.ILE0516.A} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0402.ILE0701.A w=1.25 e=switch_sd=ILAB0402.ILE0701.Is24{net16304<5> ILAB0402.ILE0701.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0401.ILE0416.net2749 w=1.35 e=switch_ds=ILAB0401.ILE0416.Is41{ILAB0401.ILE0416.A ILAB0401.ILE0416.net2749} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0401.ILE0516.net2749 w=1.35 e=switch_ds=ILAB0401.ILE0516.Is41{ILAB0401.ILE0516.A ILAB0401.ILE0516.net2749} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0402.ILE0701.net2749 w=1.35 e=switch_ds=ILAB0402.ILE0701.Is41{ILAB0402.ILE0701.A ILAB0402.ILE0701.net2749} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0401.ILE0416.net2746 w=1.35 e=switch_ds=ILAB0401.ILE0416.Is44{ILAB0401.ILE0416.C ILAB0401.ILE0416.net2746} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0402.ILE0302.A w=2.85 e=switch_sd=ILAB0402.ILE0302.Is16{net16320<6> ILAB0402.ILE0302.A} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0402.ILE0301.A w=2.85 e=switch_sd=ILAB0402.ILE0301.Is17{net16320<6> ILAB0402.ILE0301.A} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0402.ILE0302.net2749 w=2.95 e=switch_ds=ILAB0402.ILE0302.Is41{ILAB0402.ILE0302.A ILAB0402.ILE0302.net2749} prev=[14] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0402.ILE0301.net2749 w=2.95 e=switch_ds=ILAB0402.ILE0301.Is41{ILAB0402.ILE0301.A ILAB0402.ILE0301.net2749} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [18] xc_tree net16267<6> w=2.85 e=switch=ILAB0401.ILE0416.Is128{net16267<6> ILAB0401.ILE0416.A} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0401.ILE0316.A w=4.832 e=switch=ILAB0401.ILE0316.Is129{net16267<6> ILAB0401.ILE0316.A} prev=[18] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0401.ILE0316.net2749 w=4.944 e=switch_ds=ILAB0401.ILE0316.Is41{ILAB0401.ILE0316.A ILAB0401.ILE0316.net2749} prev=[19] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.bit_cnt[4] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0402.ILE0502.net2656 ILAB0402.ILE0502.net0541 }
	 xc_pin xci2_or3 b i [14] pinInv=0 { ILAB0402.ILE0302.net2743 }
	 xc_pin xci2_and2 b i [27] pinInv=0 { ILAB0401.ILE0516.net2746 }
	 xc_pin xci2_and3fft c i [22] pinInv=0 { ILAB0402.ILE0301.net2743 }
	 xc_pin xci2_and3 a i [13] pinInv=0 { ILAB0402.ILE0501.net2749 }
	 xc_pin xci2_xnor2ft a i [19] pinInv=0 { ILAB0402.ILE0401.net2746 }
	 xc_pin xci2_xnor2ft a i [20] pinInv=0 { ILAB0402.ILE0401.net2749 }
	 xc_pin xci2_nand3ftt c i [30] pinInv=0 { ILAB0401.ILE0216.net2746 }
	 [0] xc_tree ILAB0402.ILE0502.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0402.ILE0502.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0402.ILE0502.net1859 w=0.55 e=switch2=ILAB0402.ILE0502.Is119{ILAB0402.ILE0502.net2656 ILAB0402.ILE0502.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0402.ILE0502.net1838 w=0.55 e=switch2=ILAB0402.ILE0502.Is47{ILAB0402.ILE0502.net2656 ILAB0402.ILE0502.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0402.ILE0502.net2680 w=0.55 e=switch2=ILAB0402.ILE0502.Is63{ILAB0402.ILE0502.net0541 ILAB0402.ILE0502.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [5] xc_tree net16312<5> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0402.ILE0502.Ihi5{ILAB0402.ILE0502.net1838 net16312<5>} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree net11247<1> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0402.ILE0502.Ivi7{ILAB0402.ILE0502.net1859 net11247<1>} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0402.net20651 w=0.75 e=inv_8_UCCLAB=ILAB0402.ILE0502.I666{ILAB0402.ILE0502.net2680 ILAB0402.net20651} prev=[4] elemInv=1 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0402.ILE0501.A w=1.25 e=switch_sd=ILAB0402.ILE0501.Is24{net16312<5> ILAB0402.ILE0501.A} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0402.ILE0302.B w=1.25 e=switch_sd=ILAB0402.ILE0302.Is122{net11247<1> ILAB0402.ILE0302.B} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0402.net20627 w=2.05 e=switch_sd=ILAB0402.ILE0501.Is89{ILAB0402.net20651 ILAB0402.net20627} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0402.net20631 w=2.05 e=switch_sd=ILAB0402.ILE0501.Is93{ILAB0402.net20651 ILAB0402.net20631} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree net11247<0> w=2.85 e=switch=ILAB0402.ILE0501.Is128{net11247<0> ILAB0402.ILE0501.A} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0402.ILE0501.net2749 w=1.35 e=switch_ds=ILAB0402.ILE0501.Is41{ILAB0402.ILE0501.A ILAB0402.ILE0501.net2749} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0402.ILE0302.net2743 w=1.35 e=switch_ds=ILAB0402.ILE0302.Is43{ILAB0402.ILE0302.B ILAB0402.ILE0302.net2743} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0402.ILE0401.net0562 w=2.25 e=inv_4_UCCLAB=ILAB0402.ILE0401.I712{ILAB0402.net20627 ILAB0402.ILE0401.net0562} prev=[10] elemInv=1 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB0402.ILE0401.net0558 w=2.25 e=inv_4_UCCLAB=ILAB0402.ILE0401.I710{ILAB0402.net20631 ILAB0402.ILE0401.net0558} prev=[11] elemInv=1 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0402.ILE0401.A w=2.85 e=switch1_sd=ILAB0402.ILE0401.Is94{ILAB0402.ILE0401.net0562 ILAB0402.ILE0401.A} prev=[15] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0402.ILE0401.C w=2.85 e=switch1_sd=ILAB0402.ILE0401.Is78{ILAB0402.ILE0401.net0558 ILAB0402.ILE0401.C} prev=[16] elemInv=0 pathInv=0 v.w=0.1
	 [19] xc_tree ILAB0402.ILE0401.net2746 w=2.95 e=switch_ds=ILAB0402.ILE0401.Is44{ILAB0402.ILE0401.C ILAB0402.ILE0401.net2746} prev=[18] elemInv=0 pathInv=0 v.w=0.1
	 [20] xc_tree ILAB0402.ILE0401.net2749 w=2.95 e=switch_ds=ILAB0402.ILE0401.Is41{ILAB0402.ILE0401.A ILAB0402.ILE0401.net2749} prev=[17] elemInv=0 pathInv=0 v.w=0.1
	 [21] xc_tree ILAB0402.ILE0301.B w=3.35 e=switch_sd=ILAB0402.ILE0301.Is122{net11247<0> ILAB0402.ILE0301.B} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0402.ILE0301.net2743 w=3.45 e=switch_ds=ILAB0402.ILE0301.Is43{ILAB0402.ILE0301.B ILAB0402.ILE0301.net2743} prev=[21] elemInv=0 pathInv=1 v.w=0.1
	 [23] xc_tree ILAB0402.ILE0502.net1832 w=0.55 e=switch2=ILAB0402.ILE0502.Is39{ILAB0402.ILE0502.net2656 ILAB0402.ILE0502.net1832} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [24] xc_tree net16312<3> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0402.ILE0502.Ihi6{ILAB0402.ILE0502.net1832 net16312<3>} prev=[23] elemInv=1 pathInv=1 v.w=0.1
	 [25] xc_tree ILAB0402.ILE0202.B w=2.05 e=switch_sd=ILAB0402.ILE0202.Is123{net11247<1> ILAB0402.ILE0202.B} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [26] xc_tree ILAB0401.ILE0516.C w=1.262 e=switch_sd=ILAB0401.ILE0516.Is21{net16312<3> ILAB0401.ILE0516.C} prev=[24] elemInv=0 pathInv=1 v.w=0.1
	 [27] xc_tree ILAB0401.ILE0516.net2746 w=1.374 e=switch_ds=ILAB0401.ILE0516.Is44{ILAB0401.ILE0516.C ILAB0401.ILE0516.net2746} prev=[26] elemInv=0 pathInv=1 v.w=0.1
	 [28] xc_tree net16324<3> w=3.65 e=switch=ILAB0402.ILE0202.Is11{net16324<3> ILAB0402.ILE0202.B} prev=[25] elemInv=0 pathInv=1 v.w=0.1
	 [29] xc_tree ILAB0401.ILE0216.C w=4.162 e=switch_sd=ILAB0401.ILE0216.Is21{net16324<3> ILAB0401.ILE0216.C} prev=[28] elemInv=0 pathInv=1 v.w=0.1
	 [30] xc_tree ILAB0401.ILE0216.net2746 w=4.274 e=switch_ds=ILAB0401.ILE0216.Is44{ILAB0401.ILE0216.C ILAB0401.ILE0216.net2746} prev=[29] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _067_ {
	 xc_pin xci2_and3fft y o [-1] pinInv=0 { ILAB0401.ILE0215.net2656 ILAB0401.ILE0215.net0541 }
	 xc_pin xci2_nor2ft a i [23] pinInv=0 { ILAB0202.ILE0202.net2749 }
	 xc_pin xci2_or3fft b i [22] pinInv=0 { ILAB0202.ILE0302.net2743 }
	 [0] xc_tree ILAB0401.ILE0215.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0215.net1859 w=1 e=switch2=ILAB0401.ILE0215.Is119{ILAB0401.ILE0215.net2656 ILAB0401.ILE0215.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net16271<1> w=1.4 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0215.Ivi7{ILAB0401.ILE0215.net1859 net16271<1>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0301.ILE1615.A w=3.9 e=switch_sd=ILAB0301.ILE1615.Is120{net16271<1> ILAB0301.ILE1615.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0301.ILE1615.net01328 w=6.4 e=switch_ds=ILAB0301.ILE1615.Is56{ILAB0301.ILE1615.A ILAB0301.ILE1615.net01328} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0301.ILE1615.net2680 w=7.4 e=switch2=ILAB0301.ILE1615.Is63{ILAB0301.ILE1615.net01328 ILAB0301.ILE1615.net2680} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0301.net22766 w=7.8 e=inv_8_UCCLAB=ILAB0301.ILE1615.I666{ILAB0301.ILE1615.net2680 ILAB0301.net22766} prev=[5] elemInv=1 pathInv=0 v.w=0.1
	 [7] xc_tree ILAB0301.net015234 w=7.96 e=buftd4_UCCLAB=ILAB0301.I180{ILAB0301.net22766 ILAB0301.net015234} prev=[6] elemInv=0 pathInv=0 v.w=0.1
	 [8] xc_tree ILAB0301.I5605.net29 w=8.063 e=mux2p_2_UCCLAB=ILAB0301.I5605.I0{ILAB0301.net015234 ILAB0301.I5605.net29} prev=[7] elemInv=0 pathInv=0 v.w=0.1
	 [9] xc_tree ILAB0301.Clk_int<3> w=8.166 e=invd16_seth_UCCLAB=ILAB0301.I5605.I1{ILAB0301.I5605.net29 ILAB0301.Clk_int<3>} prev=[8] elemInv=1 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0301.I5366.net0122 w=8.269 e=mux2p_2_UCCLAB=ILAB0301.I5366.I83{ILAB0301.Clk_int<3> ILAB0301.I5366.net0122} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree net16372<0> w=8.372 e=invtd56_clk_UCCLAB=ILAB0301.I5366.I8{ILAB0301.I5366.net0122 net16372<0>} prev=[10] elemInv=1 pathInv=0 v.w=0.1
	 [12] xc_tree net10281<0> w=8.475 e=invtd56_UCCLAB=I3700.I3{net16372<0> net10281<0>} prev=[11] elemInv=1 pathInv=1 v.w=0.1
	 [13] xc_tree I3690.net39 w=8.578 e=mux2p_2_UCCLAB=I3690.I3{net10281<0> I3690.net39} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree net20974<2> w=8.708 e=invtd56_pd_clk_UCCLAB=I3690.I7{I3690.net39 net20974<2>} prev=[13] elemInv=1 pathInv=0 v.w=0.1
	 [15] xc_tree GCLK_s1<1> w=8.838 e=invtd56_pd_clk_UCCLAB=I3651.I3{net20974<2> GCLK_s1<1>} prev=[14] elemInv=1 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0202.I5366.net70 w=8.968 e=nand2_1_UCCLAB=ILAB0202.I5366.I71{GCLK_s1<1> ILAB0202.I5366.net70} prev=[15] elemInv=1 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0202.I5366.net0130 w=9.093 e=switch2_clk=ILAB0202.I5366.I65{ILAB0202.I5366.net70 ILAB0202.I5366.net0130} prev=[16] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0202.I5366.net0133 w=9.21301 e=switch2_clk=ILAB0202.I5366.I68{ILAB0202.I5366.net0130 ILAB0202.I5366.net0133} prev=[17] elemInv=0 pathInv=0 v.w=0.1
	 [19] xc_tree ILAB0202.I5366.net0110 w=9.46301 e=mux2d1i_1_P_UCCLAB=ILAB0202.I5366.I79{ILAB0202.I5366.net0133 ILAB0202.I5366.net0110} prev=[18] elemInv=1 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0202.net15299<2> w=9.57301 e=invd52_UCCLAB=ILAB0202.I5366.I75{ILAB0202.I5366.net0110 ILAB0202.net15299<2>} prev=[19] elemInv=1 pathInv=0 v.w=0.1
	 [21] xc_tree ILAB0202.Clk_LAB<1> w=9.67351 e=invd32_UCCLAB=ILAB0202.I5591.I2{ILAB0202.net15299<2> ILAB0202.Clk_LAB<1>} prev=[20] elemInv=1 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0202.ILE0302.net2743 w=9.77351 e=switch_sd_clk1=ILAB0202.ILE0302.Is2{ILAB0202.Clk_LAB<1> ILAB0202.ILE0302.net2743} prev=[21] elemInv=0 pathInv=1 v.w=0.1
	 [23] xc_tree ILAB0202.ILE0202.net2749 w=9.77351 e=switch_sd_clk1=ILAB0202.ILE0202.Is0{ILAB0202.Clk_LAB<1> ILAB0202.ILE0202.net2749} prev=[21] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _066_ {
	 xc_pin xci2_and2ft y o [-1] pinInv=0 { ILAB0401.ILE0413.net2656 ILAB0401.ILE0413.net0541 }
	 xc_pin xci2_and3 b i [4] pinInv=0 { ILAB0401.ILE0513.net2743 }
	 [0] xc_tree ILAB0401.ILE0413.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0413.net2670 w=0.55 e=switch2=ILAB0401.ILE0413.Is7{ILAB0401.ILE0413.net2656 ILAB0401.ILE0413.net2670} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net18315 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0413.Ivo3{ILAB0401.ILE0413.net2670 ILAB0401.net18315} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0513.B w=1.262 e=switch_sd=ILAB0401.ILE0513.Is106{ILAB0401.net18315 ILAB0401.ILE0513.B} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0513.net2743 w=1.374 e=switch_ds=ILAB0401.ILE0513.Is43{ILAB0401.ILE0513.B ILAB0401.ILE0513.net2743} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.bit_cnt[1] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0401.ILE0312.net2656 ILAB0401.ILE0312.net0541 }
	 xc_pin xci2_and2ft a i [25] pinInv=0 { ILAB0401.ILE0413.net2749 }
	 xc_pin xci2_and3fft a i [26] pinInv=0 { ILAB0401.ILE0215.net2749 }
	 xc_pin xci2_and2ft b i [29] pinInv=0 { ILAB0401.ILE0414.net2746 }
	 xc_pin xci2_xnor2 b i [17] pinInv=0 { ILAB0401.ILE0412.net2743 }
	 xc_pin xci2_ao21 a i [21] pinInv=0 { ILAB0401.ILE0212.net2749 }
	 xc_pin xci2_nand3ftt b i [33] pinInv=0 { ILAB0401.ILE0214.net2743 }
	 xc_pin xci2_and3 b i [20] pinInv=0 { ILAB0401.ILE0315.net2743 }
	 [0] xc_tree ILAB0401.ILE0312.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0312.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.ILE0312.net2685 w=0.55 e=switch2=ILAB0401.ILE0312.Is127{ILAB0401.ILE0312.net2656 ILAB0401.ILE0312.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0312.net1859 w=0.55 e=switch2=ILAB0401.ILE0312.Is119{ILAB0401.ILE0312.net2656 ILAB0401.ILE0312.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0312.net2660 w=0.55 e=switch2=ILAB0401.ILE0312.Is23{ILAB0401.ILE0312.net2656 ILAB0401.ILE0312.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0401.ILE0312.net2635 w=0.7 e=switch2=ILAB0401.ILE0312.Is135{ILAB0401.ILE0312.net2656 ILAB0401.ILE0312.net2635} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0401.ILE0312.net2680 w=0.85 e=switch2=ILAB0401.ILE0312.Is63{ILAB0401.ILE0312.net0541 ILAB0401.ILE0312.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [7] xc_tree ILAB0401.net24907 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0312.Iho1{ILAB0401.ILE0312.net2685 ILAB0401.net24907} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.net19939 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0312.Ivo1{ILAB0401.ILE0312.net2660 ILAB0401.net19939} prev=[4] elemInv=1 pathInv=1 v.w=0.1
	 [9] xc_tree net16283<3> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0312.Ivi7{ILAB0401.ILE0312.net1859 net16283<3>} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0401.net24908 w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0312.Iho2{ILAB0401.ILE0312.net2635 ILAB0401.net24908} prev=[5] elemInv=1 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0401.ILE0315.B w=1.6 e=switch=ILAB0401.ILE0315.Is11{ILAB0401.net24907 ILAB0401.ILE0315.B} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0401.ILE0412.B w=1.25 e=switch_sd=ILAB0401.ILE0412.Is123{ILAB0401.net19939 ILAB0401.ILE0412.B} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0401.ILE0212.A w=1.6 e=switch=ILAB0401.ILE0212.Is129{net16283<3> ILAB0401.ILE0212.A} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0401.net23396 w=1.15 e=inv_8_UCCLAB=ILAB0401.ILE0312.I666{ILAB0401.ILE0312.net2680 ILAB0401.net23396} prev=[6] elemInv=1 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0401.ILE0314.net2650 w=1.5 e=switch2=ILAB0401.ILE0314.Is143{ILAB0401.net24908 ILAB0401.ILE0314.net2650} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0401.net26066 w=2.45 e=switch_sd=ILAB0401.ILE0313.Is72{ILAB0401.net23396 ILAB0401.net26066} prev=[14] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0401.ILE0412.net2743 w=1.35 e=switch_ds=ILAB0401.ILE0412.Is43{ILAB0401.ILE0412.B ILAB0401.ILE0412.net2743} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [18] xc_tree ILAB0401.net23784 w=1.7 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0314.Iho3{ILAB0401.ILE0314.net2650 ILAB0401.net23784} prev=[15] elemInv=1 pathInv=0 v.w=0.1
	 [19] xc_tree net16271<3> w=3.2 e=switch=ILAB0401.ILE0315.Is130{net16271<3> ILAB0401.ILE0315.B} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0401.ILE0315.net2743 w=1.7 e=switch_ds=ILAB0401.ILE0315.Is43{ILAB0401.ILE0315.B ILAB0401.ILE0315.net2743} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0401.ILE0212.net2749 w=1.7 e=switch_ds=ILAB0401.ILE0212.Is41{ILAB0401.ILE0212.A ILAB0401.ILE0212.net2749} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0401.ILE0413.net01345 w=2.65 e=inv_4_UCCLAB=ILAB0401.ILE0413.I714{ILAB0401.net26066 ILAB0401.ILE0413.net01345} prev=[16] elemInv=1 pathInv=0 v.w=0.1
	 [23] xc_tree ILAB0401.ILE0413.A w=3.25 e=switch1_sd=ILAB0401.ILE0413.Is54{ILAB0401.ILE0413.net01345 ILAB0401.ILE0413.A} prev=[22] elemInv=0 pathInv=0 v.w=0.1
	 [24] xc_tree ILAB0401.ILE0215.A w=4.05 e=switch=ILAB0401.ILE0215.Is129{net16271<3> ILAB0401.ILE0215.A} prev=[19] elemInv=0 pathInv=1 v.w=0.1
	 [25] xc_tree ILAB0401.ILE0413.net2749 w=3.35 e=switch_ds=ILAB0401.ILE0413.Is41{ILAB0401.ILE0413.A ILAB0401.ILE0413.net2749} prev=[23] elemInv=0 pathInv=0 v.w=0.1
	 [26] xc_tree ILAB0401.ILE0215.net2749 w=4.15 e=switch_ds=ILAB0401.ILE0215.Is41{ILAB0401.ILE0215.A ILAB0401.ILE0215.net2749} prev=[24] elemInv=0 pathInv=1 v.w=0.1
	 [27] xc_tree ILAB0401.net19260 w=3.3 e=switch=ILAB0401.ILE0314.Is50{ILAB0401.net23784 ILAB0401.net19260} prev=[18] elemInv=0 pathInv=0 v.w=0.1
	 [28] xc_tree ILAB0401.ILE0414.C w=3.812 e=switch_sd=ILAB0401.ILE0414.Is108{ILAB0401.net19260 ILAB0401.ILE0414.C} prev=[27] elemInv=0 pathInv=0 v.w=0.1
	 [29] xc_tree ILAB0401.ILE0414.net2746 w=3.924 e=switch_ds=ILAB0401.ILE0414.Is44{ILAB0401.ILE0414.C ILAB0401.ILE0414.net2746} prev=[28] elemInv=0 pathInv=0 v.w=0.1
	 [30] xc_tree ILAB0401.ILE0314.B w=2.05 e=switch_sd=ILAB0401.ILE0314.Is18{ILAB0401.net24907 ILAB0401.ILE0314.B} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [31] xc_tree ILAB0401.net23807 w=3.674 e=switch=ILAB0401.ILE0314.Is115{ILAB0401.net23807 ILAB0401.ILE0314.B} prev=[30] elemInv=0 pathInv=1 v.w=0.1
	 [32] xc_tree ILAB0401.ILE0214.B w=4.198 e=switch_sd=ILAB0401.ILE0214.Is114{ILAB0401.net23807 ILAB0401.ILE0214.B} prev=[31] elemInv=0 pathInv=1 v.w=0.1
	 [33] xc_tree ILAB0401.ILE0214.net2743 w=4.322 e=switch_ds=ILAB0401.ILE0214.Is43{ILAB0401.ILE0214.B ILAB0401.ILE0214.net2743} prev=[32] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.bit_cnt[0] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0401.ILE0113.net2656 ILAB0401.ILE0113.net0541 }
	 xc_pin xci2_and2ft b i [30] pinInv=0 { ILAB0401.ILE0413.net2746 }
	 xc_pin xci2_and3fft c i [16] pinInv=0 { ILAB0401.ILE0215.net2743 }
	 xc_pin xci2_and2ft a i [31] pinInv=0 { ILAB0401.ILE0414.net2749 }
	 xc_pin xci2_mux2h s i [23] pinInv=0 { ILAB0401.ILE0114.net2743 }
	 xc_pin xci2_xnor2 a i [35] pinInv=0 { ILAB0401.ILE0412.net2746 }
	 xc_pin xci2_xnor2 a i [34] pinInv=0 { ILAB0401.ILE0412.net2749 }
	 xc_pin xci2_nand3ftt c i [12] pinInv=0 { ILAB0401.ILE0214.net2746 }
	 xc_pin xci2_and3 a i [15] pinInv=0 { ILAB0401.ILE0315.net2749 }
	 [0] xc_tree ILAB0401.ILE0113.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0113.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.ILE0113.net2635 w=0.55 e=switch2=ILAB0401.ILE0113.Is135{ILAB0401.ILE0113.net2656 ILAB0401.ILE0113.net2635} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0113.net2680 w=0.55 e=switch2=ILAB0401.ILE0113.Is63{ILAB0401.ILE0113.net0541 ILAB0401.ILE0113.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0401.net22253 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0113.Iho2{ILAB0401.ILE0113.net2635 ILAB0401.net22253} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.net21911 w=0.75 e=inv_8_UCCLAB=ILAB0401.ILE0113.I666{ILAB0401.ILE0113.net2680 ILAB0401.net21911} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.net23723 w=2.05 e=switch_sd=ILAB0401.ILE0114.Is76{ILAB0401.net21911 ILAB0401.net23723} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0401.ILE0115.net2650 w=1.45 e=switch2=ILAB0401.ILE0115.Is143{ILAB0401.net22253 ILAB0401.ILE0115.net2650} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.net24549 w=1.7 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0115.Iho3{ILAB0401.ILE0115.net2650 ILAB0401.net24549} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [9] xc_tree ILAB0401.net22459 w=3.3 e=switch=ILAB0401.ILE0115.Is45{ILAB0401.net24549 ILAB0401.net22459} prev=[8] elemInv=0 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0401.ILE0214.net01339 w=2.25 e=inv_4_UCCLAB=ILAB0401.ILE0214.I715{ILAB0401.net23723 ILAB0401.ILE0214.net01339} prev=[6] elemInv=1 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0401.ILE0214.C w=2.85 e=switch1_sd=ILAB0401.ILE0214.Is70{ILAB0401.ILE0214.net01339 ILAB0401.ILE0214.C} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0401.ILE0214.net2746 w=2.95 e=switch_ds=ILAB0401.ILE0214.Is44{ILAB0401.ILE0214.C ILAB0401.ILE0214.net2746} prev=[11] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0401.ILE0315.A w=3.8 e=switch_sd=ILAB0401.ILE0315.Is120{ILAB0401.net22459 ILAB0401.ILE0315.A} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0401.ILE0215.B w=3.8 e=switch_sd=ILAB0401.ILE0215.Is123{ILAB0401.net22459 ILAB0401.ILE0215.B} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0401.ILE0315.net2749 w=3.9 e=switch_ds=ILAB0401.ILE0315.Is41{ILAB0401.ILE0315.A ILAB0401.ILE0315.net2749} prev=[13] elemInv=0 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB0401.ILE0215.net2743 w=3.9 e=switch_ds=ILAB0401.ILE0215.Is43{ILAB0401.ILE0215.B ILAB0401.ILE0215.net2743} prev=[14] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0401.ILE0113.net2660 w=0.646 e=switch2=ILAB0401.ILE0113.Is23{ILAB0401.ILE0113.net2656 ILAB0401.ILE0113.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0401.ILE0113.net2650 w=0.55 e=switch2=ILAB0401.ILE0113.Is143{ILAB0401.ILE0113.net2656 ILAB0401.ILE0113.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [19] xc_tree ILAB0401.net22254 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0113.Iho3{ILAB0401.ILE0113.net2650 ILAB0401.net22254} prev=[18] elemInv=1 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0401.net18319 w=3.958 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0113.Ivo1{ILAB0401.ILE0113.net2660 ILAB0401.net18319} prev=[17] elemInv=1 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0401.ILE0114.B w=1.274 e=switch_sd=ILAB0401.ILE0114.Is34{ILAB0401.net22254 ILAB0401.ILE0114.B} prev=[19] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree net16275<1> w=2.874 e=switch=ILAB0401.ILE0114.Is131{net16275<1> ILAB0401.ILE0114.B} prev=[21] elemInv=0 pathInv=1 v.w=0.1
	 [23] xc_tree ILAB0401.ILE0114.net2743 w=1.398 e=switch_ds=ILAB0401.ILE0114.Is43{ILAB0401.ILE0114.B ILAB0401.ILE0114.net2743} prev=[21] elemInv=0 pathInv=1 v.w=0.1
	 [24] xc_tree ILAB0401.net22298 w=4.45 e=switch=ILAB0401.ILE0214.Is29{ILAB0401.net22298 ILAB0401.ILE0214.C} prev=[11] elemInv=0 pathInv=0 v.w=0.1
	 [25] xc_tree ILAB0401.ILE0214.net2660 w=3.424 e=switch2=ILAB0401.ILE0214.Is23{net16275<1> ILAB0401.ILE0214.net2660} prev=[22] elemInv=0 pathInv=1 v.w=0.1
	 [26] xc_tree ILAB0401.net22144 w=4.824 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0214.Ivo1{ILAB0401.ILE0214.net2660 ILAB0401.net22144} prev=[25] elemInv=1 pathInv=0 v.w=0.1
	 [27] xc_tree ILAB0401.ILE0413.C w=4.832 e=switch=ILAB0401.ILE0413.Is133{ILAB0401.net18319 ILAB0401.ILE0413.C} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [28] xc_tree ILAB0401.net19037 w=6.05 e=switch=ILAB0401.ILE0212.Is52{ILAB0401.net22298 ILAB0401.net19037} prev=[24] elemInv=0 pathInv=0 v.w=0.1
	 [29] xc_tree ILAB0401.ILE0414.A w=5.348 e=switch_sd=ILAB0401.ILE0414.Is120{ILAB0401.net22144 ILAB0401.ILE0414.A} prev=[26] elemInv=0 pathInv=0 v.w=0.1
	 [30] xc_tree ILAB0401.ILE0413.net2746 w=4.956 e=switch_ds=ILAB0401.ILE0413.Is44{ILAB0401.ILE0413.C ILAB0401.ILE0413.net2746} prev=[27] elemInv=0 pathInv=1 v.w=0.1
	 [31] xc_tree ILAB0401.ILE0414.net2749 w=5.472 e=switch_ds=ILAB0401.ILE0414.Is41{ILAB0401.ILE0414.A ILAB0401.ILE0414.net2749} prev=[29] elemInv=0 pathInv=0 v.w=0.1
	 [32] xc_tree ILAB0401.ILE0412.A w=6.924 e=switch=ILAB0401.ILE0412.Is113{ILAB0401.net19037 ILAB0401.ILE0412.A} prev=[28] elemInv=0 pathInv=0 v.w=0.1
	 [33] xc_tree ILAB0401.ILE0412.C w=6.924 e=switch=ILAB0401.ILE0412.Is117{ILAB0401.net19037 ILAB0401.ILE0412.C} prev=[28] elemInv=0 pathInv=0 v.w=0.1
	 [34] xc_tree ILAB0401.ILE0412.net2749 w=7.048 e=switch_ds=ILAB0401.ILE0412.Is41{ILAB0401.ILE0412.A ILAB0401.ILE0412.net2749} prev=[32] elemInv=0 pathInv=0 v.w=0.1
	 [35] xc_tree ILAB0401.ILE0412.net2746 w=7.048 e=switch_ds=ILAB0401.ILE0412.Is44{ILAB0401.ILE0412.C ILAB0401.ILE0412.net2746} prev=[33] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _065_ {
	 xc_pin xci2_nor2 y o [-1] pinInv=0 { ILAB0401.ILE0314.net2656 ILAB0401.ILE0314.net0541 }
	 xc_pin xci2_nand3 a i [5] pinInv=0 { ILAB0401.ILE0514.net2749 }
	 xc_pin xci2_and3 a i [9] pinInv=0 { ILAB0401.ILE0513.net2749 }
	 [0] xc_tree ILAB0401.ILE0314.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0314.net2660 w=0.55 e=switch2=ILAB0401.ILE0314.Is23{ILAB0401.ILE0314.net2656 ILAB0401.ILE0314.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.net22414 w=0.846 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0314.Ivo1{ILAB0401.ILE0314.net2660 ILAB0401.net22414} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0514.A w=1.358 e=switch_sd=ILAB0401.ILE0514.Is120{ILAB0401.net22414 ILAB0401.ILE0514.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0401.ILE0514.net01328 w=3.058 e=switch_ds=ILAB0401.ILE0514.Is56{ILAB0401.ILE0514.A ILAB0401.ILE0514.net01328} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.ILE0514.net2749 w=1.47 e=switch_ds=ILAB0401.ILE0514.Is41{ILAB0401.ILE0514.A ILAB0401.ILE0514.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.ILE0514.net2680 w=3.608 e=switch2=ILAB0401.ILE0514.Is63{ILAB0401.ILE0514.net01328 ILAB0401.ILE0514.net2680} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0401.net18311 w=3.808 e=inv_8_UCCLAB=ILAB0401.ILE0514.I666{ILAB0401.ILE0514.net2680 ILAB0401.net18311} prev=[6] elemInv=1 pathInv=0 v.w=0.1
	 [8] xc_tree ILAB0401.ILE0513.A w=4.32 e=switch_sd=ILAB0401.ILE0513.Is88{ILAB0401.net18311 ILAB0401.ILE0513.A} prev=[7] elemInv=0 pathInv=0 v.w=0.1
	 [9] xc_tree ILAB0401.ILE0513.net2749 w=4.432 e=switch_ds=ILAB0401.ILE0513.Is41{ILAB0401.ILE0513.A ILAB0401.ILE0513.net2749} prev=[8] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree adc_rd.bit_cnt[2] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0401.ILE0313.net2656 ILAB0401.ILE0313.net0541 }
	 xc_pin xci2_nor2 a i [15] pinInv=0 { ILAB0401.ILE0314.net2749 }
	 xc_pin xci2_and3fft b i [19] pinInv=0 { ILAB0401.ILE0215.net2746 }
	 xc_pin xci2_xnor2 a i [9] pinInv=0 { ILAB0401.ILE0213.net2746 }
	 xc_pin xci2_xnor2 a i [10] pinInv=0 { ILAB0401.ILE0213.net2749 }
	 xc_pin xci2_and3 c i [21] pinInv=0 { ILAB0401.ILE0315.net2746 }
	 [0] xc_tree ILAB0401.ILE0313.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0401.ILE0313.net1850 w=0.55 e=switch2=ILAB0401.ILE0313.Is103{ILAB0401.ILE0313.net2656 ILAB0401.ILE0313.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0401.ILE0313.net2650 w=0.55 e=switch2=ILAB0401.ILE0313.Is143{ILAB0401.ILE0313.net2656 ILAB0401.ILE0313.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0401.ILE0313.net2635 w=0.55 e=switch2=ILAB0401.ILE0313.Is135{ILAB0401.ILE0313.net2656 ILAB0401.ILE0313.net2635} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0401.net23154 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0313.Iho3{ILAB0401.ILE0313.net2650 ILAB0401.net23154} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0401.net23153 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0313.Iho2{ILAB0401.ILE0313.net2635 ILAB0401.net23153} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.net23177 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0313.Ivi5{ILAB0401.ILE0313.net1850 ILAB0401.net23177} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0401.ILE0213.C w=1.25 e=switch_sd=ILAB0401.ILE0213.Is116{ILAB0401.net23177 ILAB0401.ILE0213.C} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.ILE0213.A w=1.25 e=switch_sd=ILAB0401.ILE0213.Is112{ILAB0401.net23177 ILAB0401.ILE0213.A} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0401.ILE0213.net2746 w=1.35 e=switch_ds=ILAB0401.ILE0213.Is44{ILAB0401.ILE0213.C ILAB0401.ILE0213.net2746} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0401.ILE0213.net2749 w=1.35 e=switch_ds=ILAB0401.ILE0213.Is41{ILAB0401.ILE0213.A ILAB0401.ILE0213.net2749} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0401.ILE0313.net1859 w=0.55 e=switch2=ILAB0401.ILE0313.Is119{ILAB0401.ILE0313.net2656 ILAB0401.ILE0313.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree net16279<3> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0313.Ivi7{ILAB0401.ILE0313.net1859 net16279<3>} prev=[11] elemInv=1 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0401.ILE0314.A w=1.346 e=switch_sd=ILAB0401.ILE0314.Is32{ILAB0401.net23154 ILAB0401.ILE0314.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0401.ILE0213.net2695 w=1.45 e=switch2=ILAB0401.ILE0213.Is15{net16279<3> ILAB0401.ILE0213.net2695} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0401.ILE0314.net2749 w=1.458 e=switch_ds=ILAB0401.ILE0314.Is41{ILAB0401.ILE0314.A ILAB0401.ILE0314.net2749} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0401.net26102 w=1.7 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0213.Ivo2{ILAB0401.ILE0213.net2695 ILAB0401.net26102} prev=[14] elemInv=1 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0401.net23063 w=3.3 e=switch=ILAB0401.ILE0213.Is52{ILAB0401.net23063 ILAB0401.net26102} prev=[16] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0401.ILE0215.C w=4.162 e=switch=ILAB0401.ILE0215.Is29{ILAB0401.net23063 ILAB0401.ILE0215.C} prev=[17] elemInv=0 pathInv=0 v.w=0.1
	 [19] xc_tree ILAB0401.ILE0215.net2746 w=4.274 e=switch_ds=ILAB0401.ILE0215.Is44{ILAB0401.ILE0215.C ILAB0401.ILE0215.net2746} prev=[18] elemInv=0 pathInv=0 v.w=0.1
	 [20] xc_tree ILAB0401.ILE0315.C w=5.768 e=switch=ILAB0401.ILE0315.Is29{ILAB0401.net23153 ILAB0401.ILE0315.C} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0401.ILE0315.net2746 w=5.904 e=switch_ds=ILAB0401.ILE0315.Is44{ILAB0401.ILE0315.C ILAB0401.ILE0315.net2746} prev=[20] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.bit_cnt[5] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0402.ILE0202.net2656 ILAB0402.ILE0202.net0541 }
	 xc_pin xci2_nor2 b i [19] pinInv=0 { ILAB0401.ILE0314.net2746 }
	 xc_pin xci2_or3 c i [12] pinInv=0 { ILAB0402.ILE0302.net2746 }
	 xc_pin xci2_and3fft b i [15] pinInv=0 { ILAB0402.ILE0301.net2746 }
	 xc_pin xci2_xnor2 a i [20] pinInv=0 { ILAB0402.ILE0201.net2746 }
	 xc_pin xci2_xnor2 a i [22] pinInv=0 { ILAB0402.ILE0201.net2749 }
	 [0] xc_tree ILAB0402.ILE0202.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0402.ILE0202.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0402.ILE0202.net2660 w=0.55 e=switch2=ILAB0402.ILE0202.Is23{ILAB0402.ILE0202.net2656 ILAB0402.ILE0202.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0402.ILE0202.net1838 w=0.55 e=switch2=ILAB0402.ILE0202.Is47{ILAB0402.ILE0202.net2656 ILAB0402.ILE0202.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0402.ILE0202.net1844 w=0.55 e=switch2=ILAB0402.ILE0202.Is31{ILAB0402.ILE0202.net2656 ILAB0402.ILE0202.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0402.ILE0202.net2680 w=0.55 e=switch2=ILAB0402.ILE0202.Is63{ILAB0402.ILE0202.net0541 ILAB0402.ILE0202.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0402.net26419 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0402.ILE0202.Ivo1{ILAB0402.ILE0202.net2660 ILAB0402.net26419} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree net16324<5> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0402.ILE0202.Ihi5{ILAB0402.ILE0202.net1838 net16324<5>} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [8] xc_tree net16324<1> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0402.ILE0202.Ihi7{ILAB0402.ILE0202.net1844 net16324<1>} prev=[4] elemInv=1 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0402.net16961 w=0.75 e=inv_8_UCCLAB=ILAB0402.ILE0202.I666{ILAB0402.ILE0202.net2680 ILAB0402.net16961} prev=[5] elemInv=1 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0402.ILE0302.C w=1.25 e=switch_sd=ILAB0402.ILE0302.Is125{ILAB0402.net26419 ILAB0402.ILE0302.C} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0402.net33776 w=2.05 e=switch_sd=ILAB0402.ILE0201.Is100{ILAB0402.net16961 ILAB0402.net33776} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0402.ILE0302.net2746 w=1.35 e=switch_ds=ILAB0402.ILE0302.Is44{ILAB0402.ILE0302.C ILAB0402.ILE0302.net2746} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0402.ILE0301.net01339 w=2.25 e=inv_4_UCCLAB=ILAB0402.ILE0301.I715{ILAB0402.net33776 ILAB0402.ILE0301.net01339} prev=[11] elemInv=1 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0402.ILE0301.C w=2.85 e=switch1_sd=ILAB0402.ILE0301.Is70{ILAB0402.ILE0301.net01339 ILAB0402.ILE0301.C} prev=[13] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0402.ILE0301.net2746 w=2.95 e=switch_ds=ILAB0402.ILE0301.Is44{ILAB0402.ILE0301.C ILAB0402.ILE0301.net2746} prev=[14] elemInv=0 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB0401.net23805 w=2.35 e=switch=ILAB0401.ILE0214.Is48{net16324<1> ILAB0401.net23805} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0402.ILE0201.C w=4.712 e=switch=ILAB0402.ILE0201.Is13{net16324<1> ILAB0402.ILE0201.C} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [18] xc_tree ILAB0401.ILE0314.C w=2.874 e=switch_sd=ILAB0401.ILE0314.Is108{ILAB0401.net23805 ILAB0401.ILE0314.C} prev=[16] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0401.ILE0314.net2746 w=2.998 e=switch_ds=ILAB0401.ILE0314.Is44{ILAB0401.ILE0314.C ILAB0401.ILE0314.net2746} prev=[18] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0402.ILE0201.net2746 w=4.836 e=switch_ds=ILAB0402.ILE0201.Is44{ILAB0402.ILE0201.C ILAB0402.ILE0201.net2746} prev=[17] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0402.ILE0201.A w=6.474 e=switch_sd=ILAB0402.ILE0201.Is24{net16324<5> ILAB0402.ILE0201.A} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0402.ILE0201.net2749 w=6.622 e=switch_ds=ILAB0402.ILE0201.Is41{ILAB0402.ILE0201.A ILAB0402.ILE0201.net2749} prev=[21] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _064_ {
	 xc_pin xci2_and3ftt y o [-1] pinInv=0 { ILAB0101.ILE1513.net2656 ILAB0101.ILE1513.net0541 }
	 xc_pin xci2_aoi21 c i [6] pinInv=0 { ILAB0102.ILE1503.net2746 }
	 [0] xc_tree ILAB0101.ILE1513.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0101.ILE1513.net2685 w=0.85 e=switch2=ILAB0101.ILE1513.Is127{ILAB0101.ILE1513.net2656 ILAB0101.ILE1513.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net17178<0> w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0101.ILE1513.Iho1{ILAB0101.ILE1513.net2685 net17178<0>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1501.net2685 w=1.7 e=switch2=ILAB0102.ILE1501.Is127{net17178<0> ILAB0102.ILE1501.net2685} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net20857 w=1.9 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1501.Iho1{ILAB0102.ILE1501.net2685 ILAB0102.net20857} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0102.ILE1503.C w=2.4 e=switch_sd=ILAB0102.ILE1503.Is20{ILAB0102.net20857 ILAB0102.ILE1503.C} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0102.ILE1503.net2746 w=2.5 e=switch_ds=ILAB0102.ILE1503.Is44{ILAB0102.ILE1503.C ILAB0102.ILE1503.net2746} prev=[5] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree _063_ {
	 xc_pin xci2_and2ft y o [-1] pinInv=0 { ILAB0202.ILE0205.net2656 ILAB0202.ILE0205.net0541 }
	 xc_pin xci2_ao21 c i [4] pinInv=0 { ILAB0202.ILE0105.net2746 }
	 [0] xc_tree ILAB0202.ILE0205.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0202.ILE0205.net1862 w=0.55 e=switch2=ILAB0202.ILE0205.Is111{ILAB0202.ILE0205.net2656 ILAB0202.ILE0205.net1862} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net18576<3> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0202.ILE0205.Ivi6{ILAB0202.ILE0205.net1862 net18576<3>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0202.ILE0105.C w=1.262 e=switch_sd=ILAB0202.ILE0105.Is124{net18576<3> ILAB0202.ILE0105.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0202.ILE0105.net2746 w=1.374 e=switch_ds=ILAB0202.ILE0105.Is44{ILAB0202.ILE0105.C ILAB0202.ILE0105.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.work_mode {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0201.ILE0314.net2656 ILAB0201.ILE0314.net0541 }
	 xc_pin xci2_and2ft b i [26] pinInv=0 { ILAB0202.ILE0205.net2746 }
	 xc_pin xci2_and3ftt c i [24] pinInv=0 { ILAB0101.ILE1513.net2743 }
	 xc_pin xci2_nor3 b i [45] pinInv=0 { ILAB0102.ILE1403.net2743 }
	 xc_pin xci2_oa21ttf c i [34] pinInv=0 { ILAB0202.ILE0103.net2746 }
	 xc_pin xci2_oai21 a i [18] pinInv=0 { ILAB0102.ILE1602.net2749 }
	 xc_pin xci2_ao21ftt c i [40] pinInv=0 { ILAB0102.ILE1303.net2746 }
	 xc_pin xci2_nand2 a i [47] pinInv=0 { ILAB0102.ILE1304.net2749 }
	 xc_pin xci2_and3ftt b i [22] pinInv=0 { ILAB0102.ILE1605.net2746 }
	 xc_pin xci2_and3ftt b i [38] pinInv=0 { ILAB0102.ILE1305.net2746 }
	 xc_pin xci2_mux2h a i [11] pinInv=0 { ILAB0201.ILE0313.net2749 }
	 [0] xc_tree ILAB0201.ILE0314.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0201.ILE0314.net1862 w=0.7 e=switch2=ILAB0201.ILE0314.Is111{ILAB0201.ILE0314.net2656 ILAB0201.ILE0314.net1862} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0201.ILE0314.net1850 w=0.85 e=switch2=ILAB0201.ILE0314.Is103{ILAB0201.ILE0314.net2656 ILAB0201.ILE0314.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0201.ILE0314.net1844 w=0.55 e=switch2=ILAB0201.ILE0314.Is31{ILAB0201.ILE0314.net2656 ILAB0201.ILE0314.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0201.net25897 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0201.ILE0314.Ihi7{ILAB0201.ILE0314.net1844 ILAB0201.net25897} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree net18389<6> w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0201.ILE0314.Ivi6{ILAB0201.ILE0314.net1862 net18389<6>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0201.ILE0313.A w=1.6 e=switch=ILAB0201.ILE0313.Is9{ILAB0201.net25897 ILAB0201.ILE0313.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0201.net23807 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0201.ILE0314.Ivi5{ILAB0201.ILE0314.net1850 ILAB0201.net23807} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [8] xc_tree net17174<1> w=2.55 e=switch=ILAB0101.ILE1614.Is35{net17174<1> net18389<6>} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree net18442<1> w=4.25 e=switch=ILAB0201.ILE0114.Is51{net18442<1> ILAB0201.net23807} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree net18393<6> w=3.2 e=switch=ILAB0201.ILE0313.Is129{net18393<6> ILAB0201.ILE0313.A} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0201.ILE0313.net2749 w=1.7 e=switch_ds=ILAB0201.ILE0313.Is41{ILAB0201.ILE0313.A ILAB0201.ILE0313.net2749} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE1602.A w=3.4 e=switch=ILAB0102.ILE1602.Is8{net17174<1> ILAB0102.ILE1602.A} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0102.ILE1602.net2685 w=3.1 e=switch2=ILAB0102.ILE1602.Is127{net17174<1> ILAB0102.ILE1602.net2685} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0102.net26482 w=3.3 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1602.Iho1{ILAB0102.ILE1602.net2685 ILAB0102.net26482} prev=[13] elemInv=1 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0101.ILE1613.net1859 w=3.75 e=switch2=ILAB0101.ILE1613.Is119{net18393<6> ILAB0101.ILE1613.net1859} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0102.ILE1605.C w=4.15 e=switch=ILAB0102.ILE1605.Is13{ILAB0102.net26482 ILAB0102.ILE1605.C} prev=[14] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0102.ILE1605.net2635 w=4 e=switch2=ILAB0102.ILE1605.Is135{ILAB0102.net26482 ILAB0102.ILE1605.net2635} prev=[14] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0102.ILE1602.net2749 w=3.5 e=switch_ds=ILAB0102.ILE1602.Is41{ILAB0102.ILE1602.A ILAB0102.ILE1602.net2749} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree net17132<4> w=3.95 e=sw_b_v2_inv_UCCLAB=ILAB0101.ILE1613.Ivi7{ILAB0101.ILE1613.net1859 net17132<4>} prev=[15] elemInv=1 pathInv=0 v.w=0.1
	 [20] xc_tree ILAB0101.ILE1513.B w=4.8 e=switch=ILAB0101.ILE1513.Is131{net17132<4> ILAB0101.ILE1513.B} prev=[19] elemInv=0 pathInv=0 v.w=0.1
	 [21] xc_tree ILAB0102.net15863 w=4.25 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1605.Iho2{ILAB0102.ILE1605.net2635 ILAB0102.net15863} prev=[17] elemInv=1 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0102.ILE1605.net2746 w=4.25 e=switch_ds=ILAB0102.ILE1605.Is44{ILAB0102.ILE1605.C ILAB0102.ILE1605.net2746} prev=[16] elemInv=0 pathInv=0 v.w=0.1
	 [23] xc_tree net18576<6> w=5.85 e=switch=ILAB0102.ILE1605.Is37{ILAB0102.net15863 net18576<6>} prev=[21] elemInv=0 pathInv=1 v.w=0.1
	 [24] xc_tree ILAB0101.ILE1513.net2743 w=4.9 e=switch_ds=ILAB0101.ILE1513.Is43{ILAB0101.ILE1513.B ILAB0101.ILE1513.net2743} prev=[20] elemInv=0 pathInv=0 v.w=0.1
	 [25] xc_tree ILAB0202.ILE0205.C w=6.35 e=switch_sd=ILAB0202.ILE0205.Is124{net18576<6> ILAB0202.ILE0205.C} prev=[23] elemInv=0 pathInv=1 v.w=0.1
	 [26] xc_tree ILAB0202.ILE0205.net2746 w=6.45 e=switch_ds=ILAB0202.ILE0205.Is44{ILAB0202.ILE0205.C ILAB0202.ILE0205.net2746} prev=[25] elemInv=0 pathInv=1 v.w=0.1
	 [27] xc_tree ILAB0101.ILE1615.A w=4.25 e=switch_sd=ILAB0101.ILE1615.Is17{net17174<1> ILAB0101.ILE1615.A} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [28] xc_tree ILAB0102.net15887 w=5.75 e=switch=ILAB0102.ILE1605.Is117{ILAB0102.net15887 ILAB0102.ILE1605.C} prev=[16] elemInv=0 pathInv=0 v.w=0.1
	 [29] xc_tree ILAB0202.ILE0101.net2635 w=4.8 e=switch2=ILAB0202.ILE0101.Is135{net18442<1> ILAB0202.ILE0101.net2635} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [30] xc_tree net18385<0> w=6.6 e=switch=ILAB0101.ILE1615.Is129{net18385<0> ILAB0101.ILE1615.A} prev=[27] elemInv=0 pathInv=1 v.w=0.1
	 [31] xc_tree ILAB0202.net16718 w=5 e=sw_b_v2_inv_UCCLAB=ILAB0202.ILE0101.Iho2{ILAB0202.ILE0101.net2635 ILAB0202.net16718} prev=[29] elemInv=1 pathInv=0 v.w=0.1
	 [32] xc_tree ILAB0202.ILE0103.C w=5.862 e=switch=ILAB0202.ILE0103.Is29{ILAB0202.net16718 ILAB0202.ILE0103.C} prev=[31] elemInv=0 pathInv=0 v.w=0.1
	 [33] xc_tree ILAB0102.ILE1405.net1862 w=6.3 e=switch2=ILAB0102.ILE1405.Is111{ILAB0102.net15887 ILAB0102.ILE1405.net1862} prev=[28] elemInv=0 pathInv=0 v.w=0.1
	 [34] xc_tree ILAB0202.ILE0103.net2746 w=5.974 e=switch_ds=ILAB0202.ILE0103.Is44{ILAB0202.ILE0103.C ILAB0202.ILE0103.net2746} prev=[32] elemInv=0 pathInv=0 v.w=0.1
	 [35] xc_tree ILAB0102.net15754 w=6.5 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1405.Ivi6{ILAB0102.ILE1405.net1862 ILAB0102.net15754} prev=[33] elemInv=1 pathInv=1 v.w=0.1
	 [36] xc_tree ILAB0102.ILE1305.C w=7.012 e=switch_sd=ILAB0102.ILE1305.Is124{ILAB0102.net15754 ILAB0102.ILE1305.C} prev=[35] elemInv=0 pathInv=1 v.w=0.1
	 [37] xc_tree net17186<3> w=8.2 e=switch=ILAB0101.ILE1315.Is35{net17186<3> net18385<0>} prev=[30] elemInv=0 pathInv=1 v.w=0.1
	 [38] xc_tree ILAB0102.ILE1305.net2746 w=7.124 e=switch_ds=ILAB0102.ILE1305.Is44{ILAB0102.ILE1305.C ILAB0102.ILE1305.net2746} prev=[36] elemInv=0 pathInv=1 v.w=0.1
	 [39] xc_tree ILAB0102.ILE1303.C w=9.062 e=switch=ILAB0102.ILE1303.Is12{net17186<3> ILAB0102.ILE1303.C} prev=[37] elemInv=0 pathInv=1 v.w=0.1
	 [40] xc_tree ILAB0102.ILE1303.net2746 w=9.174 e=switch_ds=ILAB0102.ILE1303.Is44{ILAB0102.ILE1303.C ILAB0102.ILE1303.net2746} prev=[39] elemInv=0 pathInv=1 v.w=0.1
	 [41] xc_tree ILAB0102.net26507 w=5 e=switch=ILAB0102.ILE1602.Is113{ILAB0102.net26507 ILAB0102.ILE1602.A} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [42] xc_tree ILAB0102.net26303 w=6.6 e=switch=ILAB0102.ILE1402.Is52{ILAB0102.net26303 ILAB0102.net26507} prev=[41] elemInv=0 pathInv=1 v.w=0.1
	 [43] xc_tree ILAB0102.ILE1403.B w=7.124 e=switch_sd=ILAB0102.ILE1403.Is26{ILAB0102.net26303 ILAB0102.ILE1403.B} prev=[42] elemInv=0 pathInv=1 v.w=0.1
	 [44] xc_tree ILAB0102.net26527 w=8.612 e=switch=ILAB0102.ILE1305.Is13{ILAB0102.net26527 ILAB0102.ILE1305.C} prev=[36] elemInv=0 pathInv=1 v.w=0.1
	 [45] xc_tree ILAB0102.ILE1403.net2743 w=7.248 e=switch_ds=ILAB0102.ILE1403.Is43{ILAB0102.ILE1403.B ILAB0102.ILE1403.net2743} prev=[43] elemInv=0 pathInv=1 v.w=0.1
	 [46] xc_tree ILAB0102.ILE1304.A w=9.136 e=switch_sd=ILAB0102.ILE1304.Is16{ILAB0102.net26527 ILAB0102.ILE1304.A} prev=[44] elemInv=0 pathInv=1 v.w=0.1
	 [47] xc_tree ILAB0102.ILE1304.net2749 w=9.26 e=switch_ds=ILAB0102.ILE1304.Is41{ILAB0102.ILE1304.A ILAB0102.ILE1304.net2749} prev=[46] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree _062_ {
	 xc_pin xci2_inv y o [-1] pinInv=0 { ILAB1001.ILE1403.net2656 ILAB1001.ILE1403.net0541 }
	 xc_pin xci2_dffcl d i [6] pinInv=0 { ILAB1001.ILE1410.net2749 }
	 [0] xc_tree ILAB1001.ILE1403.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB1001.ILE1403.net2685 w=0.85 e=switch2=ILAB1001.ILE1403.Is127{ILAB1001.ILE1403.net2656 ILAB1001.ILE1403.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB1001.net20002 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB1001.ILE1403.Iho1{ILAB1001.ILE1403.net2685 ILAB1001.net20002} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB1001.ILE1407.net2685 w=1.7 e=switch2=ILAB1001.ILE1407.Is127{ILAB1001.net20002 ILAB1001.ILE1407.net2685} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB1001.net25762 w=1.9 e=sw_b_v2_inv_UCCLAB=ILAB1001.ILE1407.Iho1{ILAB1001.ILE1407.net2685 ILAB1001.net25762} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB1001.ILE1410.A w=2.75 e=switch=ILAB1001.ILE1410.Is9{ILAB1001.net25762 ILAB1001.ILE1410.A} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB1001.ILE1410.net2749 w=2.85 e=switch_ds=ILAB1001.ILE1410.Is41{ILAB1001.ILE1410.A ILAB1001.ILE1410.net2749} prev=[5] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree XC_C_clk {
	 xc_pin xci2_ib_gclk x o [-1] pinInv=0 { Fast_in_32<7> }
	 xc_pin xci2_dffcl clk i [16] pinInv=0 { ILAB1001.ILE1410.net2743 }
	 [0] xc_tree Fast_in_32<7> w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree IIO31.net728 w=0.103 e=mux4p_0_UCCLAB=IIO31.I24{Fast_in_32<7> IIO31.net728} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net9202<2> w=0.293 e=invtd56_clk1_UCCLAB=IIO31.I12{IIO31.net728 net9202<2>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree I3621.I152.net117 w=0.423 e=mux4p_0_AVDD=I3621.I152.I13{net9202<2> I3621.I152.net117} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree net10329<2> w=0.553 e=invtd56_pd_clk_AVDD=I3621.I152.I5{I3621.I152.net117 net10329<2>} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree I3590.net78 w=0.656 e=mux4p_0_UCCLAB=I3590.I13{net10329<2> I3590.net78} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree net10262<1> w=0.786 e=invtd56_pd_clk_UCCLAB=I3590.I5{I3590.net78 net10262<1>} prev=[5] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree I3687.net43 w=0.889 e=mux2p_2_UCCLAB=I3687.I4{net10262<1> I3687.net43} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree net21016<1> w=1.019 e=invtd56_pd_clk_UCCLAB=I3687.I5{I3687.net43 net21016<1>} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [9] xc_tree GCLK_s5<2> w=1.149 e=invtd56_pd_clk_UCCLAB=I3635.I2{net21016<1> GCLK_s5<2>} prev=[8] elemInv=1 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB1001.I5366.net68 w=1.279 e=nand2_1_UCCLAB=ILAB1001.I5366.I72{GCLK_s5<2> ILAB1001.I5366.net68} prev=[9] elemInv=1 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB1001.I5366.net0121 w=1.409 e=switch2_clk=ILAB1001.I5366.I66{ILAB1001.I5366.net68 ILAB1001.I5366.net0121} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB1001.I5366.net0104 w=1.539 e=switch2_clk=ILAB1001.I5366.I69{ILAB1001.I5366.net0121 ILAB1001.I5366.net0104} prev=[11] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB1001.I5366.net0106 w=31.639 e=mux2d1i_1_P_UCCLAB=ILAB1001.I5366.I80{ILAB1001.I5366.net0104 ILAB1001.I5366.net0106} prev=[12] elemInv=1 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB1001.net15299<1> w=31.769 e=invd52_UCCLAB=ILAB1001.I5366.I76{ILAB1001.I5366.net0106 ILAB1001.net15299<1>} prev=[13] elemInv=1 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB1001.Clk_LAB<2> w=31.872 e=invd32_UCCLAB=ILAB1001.I5591.I1{ILAB1001.net15299<1> ILAB1001.Clk_LAB<2>} prev=[14] elemInv=1 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB1001.ILE1410.net2743 w=32.032 e=switch_sd_clk2=ILAB1001.ILE1410.Is138{ILAB1001.Clk_LAB<2> ILAB1001.ILE1410.net2743} prev=[15] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[9] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0611.net2656 ILAB0102.ILE0611.net0541 }
	 xc_pin xci2_ob a i [32] pinInv=0 { IIO13.I5.net197 }
	 xc_pin xci2_mux2h b i [9] pinInv=0 { ILAB0102.ILE0711.net2746 }
	 xc_pin xci2_xnor2 a i [14] pinInv=0 { ILAB0102.ILE0510.net2746 }
	 xc_pin xci2_xnor2 a i [15] pinInv=0 { ILAB0102.ILE0510.net2749 }
	 xc_pin xci2_dffcl d i [20] pinInv=0 { ILAB0102.ILE0511.net2749 }
	 [0] xc_tree ILAB0102.ILE0611.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0611.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE0611.net2660 w=0.55 e=switch2=ILAB0102.ILE0611.Is23{ILAB0102.ILE0611.net2656 ILAB0102.ILE0611.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0611.net2680 w=0.85 e=switch2=ILAB0102.ILE0611.Is63{ILAB0102.ILE0611.net0541 ILAB0102.ILE0611.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0102.net22684 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0611.Ivo1{ILAB0102.ILE0611.net2660 ILAB0102.net22684} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0711.C w=1.25 e=switch_sd=ILAB0102.ILE0711.Is125{ILAB0102.net22684 ILAB0102.ILE0711.C} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.net24116 w=1.15 e=inv_8_UCCLAB=ILAB0102.ILE0611.I666{ILAB0102.ILE0611.net2680 ILAB0102.net24116} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.net24092 w=2.45 e=switch_sd=ILAB0102.ILE0610.Is89{ILAB0102.net24116 ILAB0102.net24092} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.net24096 w=2.45 e=switch_sd=ILAB0102.ILE0610.Is93{ILAB0102.net24116 ILAB0102.net24096} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0711.net2746 w=1.35 e=switch_ds=ILAB0102.ILE0711.Is44{ILAB0102.ILE0711.C ILAB0102.ILE0711.net2746} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0510.net0562 w=2.65 e=inv_4_UCCLAB=ILAB0102.ILE0510.I712{ILAB0102.net24092 ILAB0102.ILE0510.net0562} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0510.net0558 w=2.65 e=inv_4_UCCLAB=ILAB0102.ILE0510.I710{ILAB0102.net24096 ILAB0102.ILE0510.net0558} prev=[8] elemInv=1 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0102.ILE0510.A w=3.25 e=switch1_sd=ILAB0102.ILE0510.Is94{ILAB0102.ILE0510.net0562 ILAB0102.ILE0510.A} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0102.ILE0510.C w=3.25 e=switch1_sd=ILAB0102.ILE0510.Is78{ILAB0102.ILE0510.net0558 ILAB0102.ILE0510.C} prev=[11] elemInv=0 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0102.ILE0510.net2746 w=3.35 e=switch_ds=ILAB0102.ILE0510.Is44{ILAB0102.ILE0510.C ILAB0102.ILE0510.net2746} prev=[13] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0102.ILE0510.net2749 w=3.35 e=switch_ds=ILAB0102.ILE0510.Is41{ILAB0102.ILE0510.A ILAB0102.ILE0510.net2749} prev=[12] elemInv=0 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB0102.ILE0611.net1850 w=0.55 e=switch2=ILAB0102.ILE0611.Is103{ILAB0102.ILE0611.net2656 ILAB0102.ILE0611.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0102.net21467 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0611.Ivi5{ILAB0102.ILE0611.net1850 ILAB0102.net21467} prev=[16] elemInv=1 pathInv=1 v.w=0.1
	 [18] xc_tree ILAB0102.ILE0511.A w=1.262 e=switch_sd=ILAB0102.ILE0511.Is112{ILAB0102.net21467 ILAB0102.ILE0511.A} prev=[17] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0102.ILE1011.net2660 w=1.6 e=switch2=ILAB0102.ILE1011.Is23{ILAB0102.net22684 ILAB0102.ILE1011.net2660} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0102.ILE0511.net2749 w=1.374 e=switch_ds=ILAB0102.ILE0511.Is41{ILAB0102.ILE0511.A ILAB0102.ILE0511.net2749} prev=[18] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0102.net20434 w=1.9 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1011.Ivo1{ILAB0102.ILE1011.net2660 ILAB0102.net20434} prev=[19] elemInv=1 pathInv=0 v.w=0.1
	 [22] xc_tree ILAB0102.ILE1411.net2660 w=2.9 e=switch2=ILAB0102.ILE1411.Is23{ILAB0102.net20434 ILAB0102.ILE1411.net2660} prev=[21] elemInv=0 pathInv=0 v.w=0.1
	 [23] xc_tree net18552<1> w=3.3 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1411.Ivo1{ILAB0102.ILE1411.net2660 net18552<1>} prev=[22] elemInv=1 pathInv=1 v.w=0.1
	 [24] xc_tree ILAB0102.ILE1611.A w=5.8 e=switch_sd=ILAB0102.ILE1611.Is120{net18552<1> ILAB0102.ILE1611.A} prev=[23] elemInv=0 pathInv=1 v.w=0.1
	 [25] xc_tree ILAB0102.ILE1611.net01328 w=8.3 e=switch_ds=ILAB0102.ILE1611.Is56{ILAB0102.ILE1611.A ILAB0102.ILE1611.net01328} prev=[24] elemInv=0 pathInv=1 v.w=0.1
	 [26] xc_tree ILAB0102.ILE1611.net2680 w=9.3 e=switch2=ILAB0102.ILE1611.Is63{ILAB0102.ILE1611.net01328 ILAB0102.ILE1611.net2680} prev=[25] elemInv=0 pathInv=1 v.w=0.1
	 [27] xc_tree ILAB0102.net24386 w=9.65 e=inv_8_UCCLAB=ILAB0102.ILE1611.I666{ILAB0102.ILE1611.net2680 ILAB0102.net24386} prev=[26] elemInv=1 pathInv=0 v.w=0.1
	 [28] xc_tree ILAB0102.net38760 w=10.75 e=buf4_12_UCCLAB=ILAB0102.I4399{ILAB0102.net24386 ILAB0102.net38760} prev=[27] elemInv=0 pathInv=0 v.w=0.1
	 [29] xc_tree ILAB0102.net27483 w=10.925 e=switch1=ILAB0102.I3947{ILAB0102.net27483 ILAB0102.net38760} prev=[28] elemInv=0 pathInv=0 v.w=0.1
	 [30] xc_tree LongBus_1<2> w=11.325 e=buftd52C_UCCLAB=ILAB0102.I4422{ILAB0102.net27483 LongBus_1<2>} prev=[29] elemInv=0 pathInv=0 v.w=0.1
	 [31] xc_tree LongBus_68<2> w=11.587 e=buftd52_UCCLAB=ILAB0104.I4801.I6{LongBus_1<2> LongBus_68<2>} prev=[30] elemInv=0 pathInv=0 v.w=0.1
	 [32] xc_tree IIO13.I5.net197 w=11.699 e=mux2i_P_UCCLAB=IIO13.I5.I16{LongBus_68<2> IIO13.I5.net197} prev=[31] elemInv=1 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[8] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0103.ILE0401.net2656 ILAB0103.ILE0401.net0541 }
	 xc_pin xci2_ob a i [17] pinInv=0 { IIO13.I4.net197 }
	 xc_pin xci2_mux2h b i [21] pinInv=0 { ILAB0103.ILE0501.net2746 }
	 xc_pin xci2_xnor2 a i [11] pinInv=0 { ILAB0103.ILE0301.net2746 }
	 xc_pin xci2_xnor2 a i [12] pinInv=0 { ILAB0103.ILE0301.net2749 }
	 xc_pin xci2_dffcl d i [9] pinInv=0 { ILAB0103.ILE0201.net2749 }
	 [0] xc_tree ILAB0103.ILE0401.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0401.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.ILE0401.net1859 w=0.55 e=switch2=ILAB0103.ILE0401.Is119{ILAB0103.ILE0401.net2656 ILAB0103.ILE0401.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0401.net2680 w=1 e=switch2=ILAB0103.ILE0401.Is63{ILAB0103.ILE0401.net0541 ILAB0103.ILE0401.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree net11495<6> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0401.Ivi7{ILAB0103.ILE0401.net1859 net11495<6>} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0103.ILE0301.C w=1.6 e=switch=ILAB0103.ILE0301.Is133{net11495<6> ILAB0103.ILE0301.C} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0103.ILE0301.A w=1.6 e=switch=ILAB0103.ILE0301.Is129{net11495<6> ILAB0103.ILE0301.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0103.ILE0201.A w=1.25 e=switch_sd=ILAB0103.ILE0201.Is120{net11495<6> ILAB0103.ILE0201.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree net10358<0> w=1.35 e=inv_8_UCCLAB=ILAB0103.ILE0401.I666{ILAB0103.ILE0401.net2680 net10358<0>} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0103.ILE0201.net2749 w=1.35 e=switch_ds=ILAB0103.ILE0201.Is41{ILAB0103.ILE0201.A ILAB0103.ILE0201.net2749} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0103.net37923 w=2.7 e=buf4_12_UCCLAB=ILAB0103.I4411{net10358<0> ILAB0103.net37923} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0103.ILE0301.net2746 w=1.7 e=switch_ds=ILAB0103.ILE0301.Is44{ILAB0103.ILE0301.C ILAB0103.ILE0301.net2746} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0103.ILE0301.net2749 w=1.7 e=switch_ds=ILAB0103.ILE0301.Is41{ILAB0103.ILE0301.A ILAB0103.ILE0301.net2749} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0103.net27520 w=2.9 e=switch1=ILAB0103.I3414{ILAB0103.net27520 ILAB0103.net37923} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree LongBus_71<3> w=3.075 e=buftid52C_UCCLAB=ILAB0103.I4474{ILAB0103.net27520 LongBus_71<3>} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree LongBus_2<3> w=3.475 e=buftd52_UCCLAB=ILAB0203.I4772.I9{LongBus_71<3> LongBus_2<3>} prev=[14] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree LongBus_68<3> w=3.725 e=buftd52_UCCLAB=ILAB0204.I4773.I8{LongBus_2<3> LongBus_68<3>} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree IIO13.I4.net197 w=3.825 e=mux2i_P_UCCLAB=IIO13.I4.I16{LongBus_68<3> IIO13.I4.net197} prev=[16] elemInv=1 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0103.ILE0401.net2695 w=0.55 e=switch2=ILAB0103.ILE0401.Is15{ILAB0103.ILE0401.net2656 ILAB0103.ILE0401.net2695} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [19] xc_tree ILAB0103.net20612 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0401.Ivo2{ILAB0103.ILE0401.net2695 ILAB0103.net20612} prev=[18] elemInv=1 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0103.ILE0501.C w=3.306 e=switch_sd=ILAB0103.ILE0501.Is116{ILAB0103.net20612 ILAB0103.ILE0501.C} prev=[19] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0103.ILE0501.net2746 w=3.418 e=switch_ds=ILAB0103.ILE0501.Is44{ILAB0103.ILE0501.C ILAB0103.ILE0501.net2746} prev=[20] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[7] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0103.ILE0704.net2656 ILAB0103.ILE0704.net0541 }
	 xc_pin xci2_ob a i [24] pinInv=0 { IIO13.I3.net197 }
	 xc_pin xci2_mux2h b i [14] pinInv=0 { ILAB0103.ILE0703.net2746 }
	 xc_pin xci2_xnor2 a i [12] pinInv=0 { ILAB0103.ILE0504.net2746 }
	 xc_pin xci2_xnor2 a i [11] pinInv=0 { ILAB0103.ILE0504.net2749 }
	 xc_pin xci2_dffcl d i [13] pinInv=0 { ILAB0103.ILE0404.net2749 }
	 [0] xc_tree ILAB0103.ILE0704.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0704.net1859 w=0.55 e=switch2=ILAB0103.ILE0704.Is119{ILAB0103.ILE0704.net2656 ILAB0103.ILE0704.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.ILE0704.net1838 w=0.55 e=switch2=ILAB0103.ILE0704.Is47{ILAB0103.ILE0704.net2656 ILAB0103.ILE0704.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0704.net1844 w=0.55 e=switch2=ILAB0103.ILE0704.Is31{ILAB0103.ILE0704.net2656 ILAB0103.ILE0704.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0103.net26438 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0704.Ihi5{ILAB0103.ILE0704.net1838 ILAB0103.net26438} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree net10415<6> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0704.Ihi7{ILAB0103.ILE0704.net1844 net10415<6>} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0103.net16114 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0704.Ivi7{ILAB0103.ILE0704.net1859 ILAB0103.net16114} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0103.ILE0703.C w=1.25 e=switch_sd=ILAB0103.ILE0703.Is28{ILAB0103.net26438 ILAB0103.ILE0703.C} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0103.ILE0504.A w=1.25 e=switch_sd=ILAB0103.ILE0504.Is120{ILAB0103.net16114 ILAB0103.ILE0504.A} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0103.ILE0504.C w=1.25 e=switch_sd=ILAB0103.ILE0504.Is124{ILAB0103.net16114 ILAB0103.ILE0504.C} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0103.ILE0404.A w=1.25 e=switch_sd=ILAB0103.ILE0404.Is121{ILAB0103.net16114 ILAB0103.ILE0404.A} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0103.ILE0504.net2749 w=1.35 e=switch_ds=ILAB0103.ILE0504.Is41{ILAB0103.ILE0504.A ILAB0103.ILE0504.net2749} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0103.ILE0504.net2746 w=1.35 e=switch_ds=ILAB0103.ILE0504.Is44{ILAB0103.ILE0504.C ILAB0103.ILE0504.net2746} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0103.ILE0404.net2749 w=1.35 e=switch_ds=ILAB0103.ILE0404.Is41{ILAB0103.ILE0404.A ILAB0103.ILE0404.net2749} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0103.ILE0703.net2746 w=1.35 e=switch_ds=ILAB0103.ILE0703.Is44{ILAB0103.ILE0703.C ILAB0103.ILE0703.net2746} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0103.ILE0701.B w=4.85 e=switch_sd=ILAB0103.ILE0701.Is19{net10415<6> ILAB0103.ILE0701.B} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0103.ILE0701.net01328 w=7.374 e=switch_ds=ILAB0103.ILE0701.Is58{ILAB0103.ILE0701.B ILAB0103.ILE0701.net01328} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0103.ILE0701.net2680 w=8.248 e=switch2=ILAB0103.ILE0701.Is63{ILAB0103.ILE0701.net01328 ILAB0103.ILE0701.net2680} prev=[16] elemInv=0 pathInv=1 v.w=0.1
	 [18] xc_tree net10355<0> w=8.572 e=inv_8_UCCLAB=ILAB0103.ILE0701.I666{ILAB0103.ILE0701.net2680 net10355<0>} prev=[17] elemInv=1 pathInv=0 v.w=0.1
	 [19] xc_tree ILAB0103.net39618 w=9.946 e=buf4_12_UCCLAB=ILAB0103.I4395{net10355<0> ILAB0103.net39618} prev=[18] elemInv=0 pathInv=0 v.w=0.1
	 [20] xc_tree ILAB0103.net27523 w=10.146 e=switch1=ILAB0103.I3885{ILAB0103.net27523 ILAB0103.net39618} prev=[19] elemInv=0 pathInv=0 v.w=0.1
	 [21] xc_tree LongBus_71<4> w=10.321 e=buftid52C_UCCLAB=ILAB0103.I4473{ILAB0103.net27523 LongBus_71<4>} prev=[20] elemInv=0 pathInv=0 v.w=0.1
	 [22] xc_tree LongBus_3<4> w=10.721 e=buftd52_UCCLAB=ILAB0203.I4775.I41{LongBus_71<4> LongBus_3<4>} prev=[21] elemInv=0 pathInv=0 v.w=0.1
	 [23] xc_tree LongBus_68<4> w=10.971 e=buftd52_UCCLAB=ILAB0204.I4801.I40{LongBus_3<4> LongBus_68<4>} prev=[22] elemInv=0 pathInv=0 v.w=0.1
	 [24] xc_tree IIO13.I3.net197 w=11.095 e=mux2i_P_UCCLAB=IIO13.I3.I16{LongBus_68<4> IIO13.I3.net197} prev=[23] elemInv=1 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[6] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0103.ILE0904.net2656 ILAB0103.ILE0904.net0541 }
	 xc_pin xci2_ob a i [28] pinInv=0 { IIO13.I2.net197 }
	 xc_pin xci2_mux2h b i [5] pinInv=0 { ILAB0103.ILE0903.net2746 }
	 xc_pin xci2_xnor2 a i [20] pinInv=0 { ILAB0103.ILE0605.net2746 }
	 xc_pin xci2_xnor2 a i [19] pinInv=0 { ILAB0103.ILE0605.net2749 }
	 xc_pin xci2_dffcl d i [12] pinInv=0 { ILAB0103.ILE0604.net2749 }
	 [0] xc_tree ILAB0103.ILE0904.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0904.net1859 w=0.55 e=switch2=ILAB0103.ILE0904.Is119{ILAB0103.ILE0904.net2656 ILAB0103.ILE0904.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.ILE0904.net1838 w=0.55 e=switch2=ILAB0103.ILE0904.Is47{ILAB0103.ILE0904.net2656 ILAB0103.ILE0904.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0103.net26168 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0904.Ihi5{ILAB0103.ILE0904.net1838 ILAB0103.net26168} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0903.C w=1.25 e=switch_sd=ILAB0103.ILE0903.Is28{ILAB0103.net26168 ILAB0103.ILE0903.C} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0103.ILE0903.net2746 w=1.35 e=switch_ds=ILAB0103.ILE0903.Is44{ILAB0103.ILE0903.C ILAB0103.ILE0903.net2746} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0103.ILE0904.net1850 w=0.85 e=switch2=ILAB0103.ILE0904.Is103{ILAB0103.ILE0904.net2656 ILAB0103.ILE0904.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [7] xc_tree ILAB0103.net25114 w=0.846 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0904.Ivi7{ILAB0103.ILE0904.net1859 ILAB0103.net25114} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0103.ILE0604.A w=1.358 e=switch_sd=ILAB0103.ILE0604.Is121{ILAB0103.net25114 ILAB0103.ILE0604.A} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0103.net25112 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0904.Ivi5{ILAB0103.ILE0904.net1850 ILAB0103.net25112} prev=[6] elemInv=1 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0103.ILE0704.net1862 w=1.7 e=switch2=ILAB0103.ILE0704.Is111{ILAB0103.net25112 ILAB0103.ILE0704.net1862} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0103.net20587 w=2.958 e=switch=ILAB0103.ILE0604.Is9{ILAB0103.net20587 ILAB0103.ILE0604.A} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0103.ILE0604.net2749 w=1.47 e=switch_ds=ILAB0103.ILE0604.Is41{ILAB0103.ILE0604.A ILAB0103.ILE0604.net2749} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0103.net25609 w=1.9 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0704.Ivi6{ILAB0103.ILE0704.net1862 ILAB0103.net25609} prev=[10] elemInv=1 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0103.ILE0404.net1859 w=2.75 e=switch2=ILAB0103.ILE0404.Is119{ILAB0103.net25609 ILAB0103.ILE0404.net1859} prev=[13] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree net11483<6> w=3.05 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0404.Ivi7{ILAB0103.ILE0404.net1859 net11483<6>} prev=[14] elemInv=1 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0103.ILE0605.C w=3.82 e=switch=ILAB0103.ILE0605.Is12{ILAB0103.net20587 ILAB0103.ILE0605.C} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0103.ILE0605.A w=3.82 e=switch=ILAB0103.ILE0605.Is8{ILAB0103.net20587 ILAB0103.ILE0605.A} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [18] xc_tree ILAB0103.ILE0104.C w=5.15 e=switch_sd=ILAB0103.ILE0104.Is125{net11483<6> ILAB0103.ILE0104.C} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0103.ILE0605.net2749 w=3.932 e=switch_ds=ILAB0103.ILE0605.Is41{ILAB0103.ILE0605.A ILAB0103.ILE0605.net2749} prev=[17] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0103.ILE0605.net2746 w=3.932 e=switch_ds=ILAB0103.ILE0605.Is44{ILAB0103.ILE0605.C ILAB0103.ILE0605.net2746} prev=[16] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0103.ILE0104.net01328 w=7.65 e=switch_ds=ILAB0103.ILE0104.Is60{ILAB0103.ILE0104.C ILAB0103.ILE0104.net01328} prev=[18] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0103.ILE0104.net2680 w=8.65 e=switch2=ILAB0103.ILE0104.Is63{ILAB0103.ILE0104.net01328 ILAB0103.ILE0104.net2680} prev=[21] elemInv=0 pathInv=1 v.w=0.1
	 [23] xc_tree ILAB0103.net22856 w=9 e=inv_8_UCCLAB=ILAB0103.ILE0104.I666{ILAB0103.ILE0104.net2680 ILAB0103.net22856} prev=[22] elemInv=1 pathInv=0 v.w=0.1
	 [24] xc_tree ILAB0103.net37425 w=10.1 e=buf4_12_UCCLAB=ILAB0103.I4378{ILAB0103.net22856 ILAB0103.net37425} prev=[23] elemInv=0 pathInv=0 v.w=0.1
	 [25] xc_tree ILAB0103.net38257 w=10.275 e=switch1=ILAB0103.I3558{ILAB0103.net38257 ILAB0103.net37425} prev=[24] elemInv=0 pathInv=0 v.w=0.1
	 [26] xc_tree LongBus_0<5> w=10.675 e=buftd52C_UCCLAB=ILAB0103.I4434{ILAB0103.net38257 LongBus_0<5>} prev=[25] elemInv=0 pathInv=0 v.w=0.1
	 [27] xc_tree LongBus_68<5> w=10.925 e=buftd52_UCCLAB=ILAB0104.I4773.I39{LongBus_0<5> LongBus_68<5>} prev=[26] elemInv=0 pathInv=0 v.w=0.1
	 [28] xc_tree IIO13.I2.net197 w=11.037 e=mux2i_P_UCCLAB=IIO13.I2.I16{LongBus_68<5> IIO13.I2.net197} prev=[27] elemInv=1 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[5] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0103.ILE0503.net2656 ILAB0103.ILE0503.net0541 }
	 xc_pin xci2_ob a i [31] pinInv=0 { IIO13.I1.net197 }
	 xc_pin xci2_mux2h b i [12] pinInv=0 { ILAB0103.ILE0502.net2746 }
	 xc_pin xci2_xnor2 a i [19] pinInv=0 { ILAB0103.ILE0402.net2746 }
	 xc_pin xci2_xnor2 a i [18] pinInv=0 { ILAB0103.ILE0402.net2749 }
	 xc_pin xci2_dffcl d i [13] pinInv=0 { ILAB0103.ILE0403.net2749 }
	 [0] xc_tree ILAB0103.ILE0503.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0503.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.ILE0503.net1850 w=0.55 e=switch2=ILAB0103.ILE0503.Is103{ILAB0103.ILE0503.net2656 ILAB0103.ILE0503.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0503.net1838 w=0.55 e=switch2=ILAB0103.ILE0503.Is47{ILAB0103.ILE0503.net2656 ILAB0103.ILE0503.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0503.net2680 w=0.55 e=switch2=ILAB0103.ILE0503.Is63{ILAB0103.ILE0503.net0541 ILAB0103.ILE0503.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0103.net20633 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0503.Ihi5{ILAB0103.ILE0503.net1838 ILAB0103.net20633} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0103.net26276 w=0.75 e=inv_8_UCCLAB=ILAB0103.ILE0503.I666{ILAB0103.ILE0503.net2680 ILAB0103.net26276} prev=[4] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0103.net20162 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0503.Ivi5{ILAB0103.ILE0503.net1850 ILAB0103.net20162} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0103.ILE0502.C w=1.25 e=switch_sd=ILAB0103.ILE0502.Is28{ILAB0103.net20633 ILAB0103.ILE0502.C} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0103.net26252 w=2.05 e=switch_sd=ILAB0103.ILE0502.Is89{ILAB0103.net26276 ILAB0103.net26252} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0103.net26256 w=2.05 e=switch_sd=ILAB0103.ILE0502.Is93{ILAB0103.net26276 ILAB0103.net26256} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0103.ILE0403.A w=1.25 e=switch_sd=ILAB0103.ILE0403.Is112{ILAB0103.net20162 ILAB0103.ILE0403.A} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0103.ILE0502.net2746 w=1.35 e=switch_ds=ILAB0103.ILE0502.Is44{ILAB0103.ILE0502.C ILAB0103.ILE0502.net2746} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0103.ILE0403.net2749 w=1.35 e=switch_ds=ILAB0103.ILE0403.Is41{ILAB0103.ILE0403.A ILAB0103.ILE0403.net2749} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0103.ILE0402.net0558 w=2.25 e=inv_4_UCCLAB=ILAB0103.ILE0402.I710{ILAB0103.net26256 ILAB0103.ILE0402.net0558} prev=[10] elemInv=1 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0103.ILE0402.net0562 w=2.25 e=inv_4_UCCLAB=ILAB0103.ILE0402.I712{ILAB0103.net26252 ILAB0103.ILE0402.net0562} prev=[9] elemInv=1 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB0103.ILE0402.A w=2.85 e=switch1_sd=ILAB0103.ILE0402.Is94{ILAB0103.ILE0402.net0562 ILAB0103.ILE0402.A} prev=[15] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0103.ILE0402.C w=2.85 e=switch1_sd=ILAB0103.ILE0402.Is78{ILAB0103.ILE0402.net0558 ILAB0103.ILE0402.C} prev=[14] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0103.ILE0402.net2749 w=2.95 e=switch_ds=ILAB0103.ILE0402.Is41{ILAB0103.ILE0402.A ILAB0103.ILE0402.net2749} prev=[16] elemInv=0 pathInv=0 v.w=0.1
	 [19] xc_tree ILAB0103.ILE0402.net2746 w=2.95 e=switch_ds=ILAB0103.ILE0402.Is44{ILAB0103.ILE0402.C ILAB0103.ILE0402.net2746} prev=[17] elemInv=0 pathInv=0 v.w=0.1
	 [20] xc_tree ILAB0103.ILE0503.net1859 w=0.55 e=switch2=ILAB0103.ILE0503.Is119{ILAB0103.ILE0503.net2656 ILAB0103.ILE0503.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [21] xc_tree Fast_out_29<5> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0503.Ivi7{ILAB0103.ILE0503.net1859 Fast_out_29<5>} prev=[20] elemInv=1 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0103.net22837 w=3.1 e=switch=ILAB0103.ILE0103.Is35{ILAB0103.net22837 Fast_out_29<5>} prev=[21] elemInv=0 pathInv=1 v.w=0.1
	 [23] xc_tree ILAB0103.ILE0105.A w=4.8 e=switch_sd=ILAB0103.ILE0105.Is16{ILAB0103.net22837 ILAB0103.ILE0105.A} prev=[22] elemInv=0 pathInv=1 v.w=0.1
	 [24] xc_tree ILAB0103.ILE0105.net01328 w=7.3 e=switch_ds=ILAB0103.ILE0105.Is56{ILAB0103.ILE0105.A ILAB0103.ILE0105.net01328} prev=[23] elemInv=0 pathInv=1 v.w=0.1
	 [25] xc_tree ILAB0103.ILE0105.net2680 w=8.3 e=switch2=ILAB0103.ILE0105.Is63{ILAB0103.ILE0105.net01328 ILAB0103.ILE0105.net2680} prev=[24] elemInv=0 pathInv=1 v.w=0.1
	 [26] xc_tree ILAB0103.net22946 w=8.65 e=inv_8_UCCLAB=ILAB0103.ILE0105.I666{ILAB0103.ILE0105.net2680 ILAB0103.net22946} prev=[25] elemInv=1 pathInv=0 v.w=0.1
	 [27] xc_tree ILAB0103.net38496 w=9.75 e=buf4_12_UCCLAB=ILAB0103.I4379{ILAB0103.net22946 ILAB0103.net38496} prev=[26] elemInv=0 pathInv=0 v.w=0.1
	 [28] xc_tree ILAB0103.net38827 w=9.925 e=switch1=ILAB0103.I3556{ILAB0103.net38827 ILAB0103.net38496} prev=[27] elemInv=0 pathInv=0 v.w=0.1
	 [29] xc_tree LongBus_0<14> w=10.325 e=buftd52C_UCCLAB=ILAB0103.I4441{ILAB0103.net38827 LongBus_0<14>} prev=[28] elemInv=0 pathInv=0 v.w=0.1
	 [30] xc_tree LongBus_69<14> w=10.575 e=buftd52_UCCLAB=ILAB0104.I4772.I27{LongBus_0<14> LongBus_69<14>} prev=[29] elemInv=0 pathInv=0 v.w=0.1
	 [31] xc_tree IIO13.I1.net197 w=10.687 e=mux2i_P_UCCLAB=IIO13.I1.I16{LongBus_69<14> IIO13.I1.net197} prev=[30] elemInv=1 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[4] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0103.ILE0602.net2656 ILAB0103.ILE0602.net0541 }
	 xc_pin xci2_ob a i [26] pinInv=0 { IIO13.I0.net197 }
	 xc_pin xci2_mux2h b i [14] pinInv=0 { ILAB0103.ILE0702.net2746 }
	 xc_pin xci2_xnor2 a i [12] pinInv=0 { ILAB0103.ILE0601.net2746 }
	 xc_pin xci2_xnor2 a i [13] pinInv=0 { ILAB0103.ILE0601.net2749 }
	 xc_pin xci2_dffcl d i [18] pinInv=0 { ILAB0103.ILE0701.net2749 }
	 [0] xc_tree ILAB0103.ILE0602.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE0602.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.ILE0602.net2660 w=0.55 e=switch2=ILAB0103.ILE0602.Is23{ILAB0103.ILE0602.net2656 ILAB0103.ILE0602.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0602.net1838 w=0.55 e=switch2=ILAB0103.ILE0602.Is47{ILAB0103.ILE0602.net2656 ILAB0103.ILE0602.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0103.ILE0602.net2680 w=0.55 e=switch2=ILAB0103.ILE0602.Is63{ILAB0103.ILE0602.net0541 ILAB0103.ILE0602.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0103.net26644 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0602.Ivo1{ILAB0103.ILE0602.net2660 ILAB0103.net26644} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree net10419<5> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0602.Ihi5{ILAB0103.ILE0602.net1838 net10419<5>} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0103.net20606 w=0.75 e=inv_8_UCCLAB=ILAB0103.ILE0602.I666{ILAB0103.ILE0602.net2680 ILAB0103.net20606} prev=[4] elemInv=1 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0103.ILE0702.C w=1.25 e=switch_sd=ILAB0103.ILE0702.Is125{ILAB0103.net26644 ILAB0103.ILE0702.C} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0103.ILE0601.C w=1.25 e=switch_sd=ILAB0103.ILE0601.Is28{net10419<5> ILAB0103.ILE0601.C} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0103.ILE0601.A w=1.25 e=switch_sd=ILAB0103.ILE0601.Is24{net10419<5> ILAB0103.ILE0601.A} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0103.net29753 w=2.05 e=switch_sd=ILAB0103.ILE0601.Is96{ILAB0103.net20606 ILAB0103.net29753} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0103.ILE0601.net2746 w=1.35 e=switch_ds=ILAB0103.ILE0601.Is44{ILAB0103.ILE0601.C ILAB0103.ILE0601.net2746} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0103.ILE0601.net2749 w=1.35 e=switch_ds=ILAB0103.ILE0601.Is41{ILAB0103.ILE0601.A ILAB0103.ILE0601.net2749} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0103.ILE0702.net2746 w=1.35 e=switch_ds=ILAB0103.ILE0702.Is44{ILAB0103.ILE0702.C ILAB0103.ILE0702.net2746} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0103.ILE0701.net01345 w=2.25 e=inv_4_UCCLAB=ILAB0103.ILE0701.I714{ILAB0103.net29753 ILAB0103.ILE0701.net01345} prev=[11] elemInv=1 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB0103.ILE0601.net01328 w=3.85 e=switch1_ds=ILAB0103.ILE0601.Is73{ILAB0103.net20606 ILAB0103.ILE0601.net01328} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0103.ILE0701.A w=2.946 e=switch1_sd=ILAB0103.ILE0701.Is54{ILAB0103.ILE0701.net01345 ILAB0103.ILE0701.A} prev=[15] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0103.ILE0701.net2749 w=3.058 e=switch_ds=ILAB0103.ILE0701.Is41{ILAB0103.ILE0701.A ILAB0103.ILE0701.net2749} prev=[17] elemInv=0 pathInv=0 v.w=0.1
	 [19] xc_tree ILAB0103.ILE0601.net2680 w=4.7 e=switch2=ILAB0103.ILE0601.Is63{ILAB0103.ILE0601.net01328 ILAB0103.ILE0601.net2680} prev=[16] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree net10356<0> w=5 e=inv_8_UCCLAB=ILAB0103.ILE0601.I666{ILAB0103.ILE0601.net2680 net10356<0>} prev=[19] elemInv=1 pathInv=0 v.w=0.1
	 [21] xc_tree ILAB0103.net38382 w=6.35 e=buf4_12_UCCLAB=ILAB0103.I4412{net10356<0> ILAB0103.net38382} prev=[20] elemInv=0 pathInv=0 v.w=0.1
	 [22] xc_tree ILAB0103.net27514 w=6.55 e=switch1=ILAB0103.I3982{ILAB0103.net27514 ILAB0103.net38382} prev=[21] elemInv=0 pathInv=0 v.w=0.1
	 [23] xc_tree LongBus_71<15> w=6.725 e=buftid52C_UCCLAB=ILAB0103.I4476{ILAB0103.net27514 LongBus_71<15>} prev=[22] elemInv=0 pathInv=0 v.w=0.1
	 [24] xc_tree LongBus_2<15> w=7.125 e=buftd52_UCCLAB=ILAB0203.I4772.I29{LongBus_71<15> LongBus_2<15>} prev=[23] elemInv=0 pathInv=0 v.w=0.1
	 [25] xc_tree LongBus_69<15> w=7.375 e=buftd52_UCCLAB=ILAB0204.I4772.I28{LongBus_2<15> LongBus_69<15>} prev=[24] elemInv=0 pathInv=0 v.w=0.1
	 [26] xc_tree IIO13.I0.net197 w=7.487 e=mux2i_P_UCCLAB=IIO13.I0.I16{LongBus_69<15> IIO13.I0.net197} prev=[25] elemInv=1 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[3] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0103.ILE1004.net2656 ILAB0103.ILE1004.net0541 }
	 xc_pin xci2_ob a i [28] pinInv=0 { IIO12.I7.net197 }
	 xc_pin xci2_mux2h b i [10] pinInv=0 { ILAB0103.ILE1003.net2746 }
	 xc_pin xci2_xnor2 a i [15] pinInv=0 { ILAB0103.ILE0805.net2746 }
	 xc_pin xci2_xnor2 a i [14] pinInv=0 { ILAB0103.ILE0805.net2749 }
	 xc_pin xci2_dffcl d i [11] pinInv=0 { ILAB0103.ILE0804.net2749 }
	 [0] xc_tree ILAB0103.ILE1004.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE1004.net1859 w=0.55 e=switch2=ILAB0103.ILE1004.Is119{ILAB0103.ILE1004.net2656 ILAB0103.ILE1004.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.ILE1004.net1850 w=0.7 e=switch2=ILAB0103.ILE1004.Is103{ILAB0103.ILE1004.net2656 ILAB0103.ILE1004.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0103.ILE1004.net1838 w=0.55 e=switch2=ILAB0103.ILE1004.Is47{ILAB0103.ILE1004.net2656 ILAB0103.ILE1004.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0103.net26618 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1004.Ihi5{ILAB0103.ILE1004.net1838 ILAB0103.net26618} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0103.net23134 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1004.Ivi7{ILAB0103.ILE1004.net1859 ILAB0103.net23134} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0103.net23132 w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1004.Ivi5{ILAB0103.ILE1004.net1850 ILAB0103.net23132} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0103.ILE1003.C w=1.25 e=switch_sd=ILAB0103.ILE1003.Is28{ILAB0103.net26618 ILAB0103.ILE1003.C} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0103.ILE0804.A w=1.25 e=switch_sd=ILAB0103.ILE0804.Is120{ILAB0103.net23134 ILAB0103.ILE0804.A} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0103.net25582 w=2.55 e=switch=ILAB0103.ILE0804.Is51{ILAB0103.net25582 ILAB0103.net23132} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0103.ILE1003.net2746 w=1.35 e=switch_ds=ILAB0103.ILE1003.Is44{ILAB0103.ILE1003.C ILAB0103.ILE1003.net2746} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0103.ILE0804.net2749 w=1.35 e=switch_ds=ILAB0103.ILE0804.Is41{ILAB0103.ILE0804.A ILAB0103.ILE0804.net2749} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0103.ILE0805.A w=3.05 e=switch_sd=ILAB0103.ILE0805.Is17{ILAB0103.net25582 ILAB0103.ILE0805.A} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0103.ILE0805.C w=3.05 e=switch_sd=ILAB0103.ILE0805.Is21{ILAB0103.net25582 ILAB0103.ILE0805.C} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0103.ILE0805.net2749 w=3.15 e=switch_ds=ILAB0103.ILE0805.Is41{ILAB0103.ILE0805.A ILAB0103.ILE0805.net2749} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0103.ILE0805.net2746 w=3.15 e=switch_ds=ILAB0103.ILE0805.Is44{ILAB0103.ILE0805.C ILAB0103.ILE0805.net2746} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0103.ILE1004.net2660 w=0.85 e=switch2=ILAB0103.ILE1004.Is23{ILAB0103.ILE1004.net2656 ILAB0103.ILE1004.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0103.net25654 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1004.Ivo1{ILAB0103.ILE1004.net2660 ILAB0103.net25654} prev=[16] elemInv=1 pathInv=1 v.w=0.1
	 [18] xc_tree ILAB0103.ILE1404.net2660 w=2.15 e=switch2=ILAB0103.ILE1404.Is23{ILAB0103.net25654 ILAB0103.ILE1404.net2660} prev=[17] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree net18731<1> w=2.55 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1404.Ivo1{ILAB0103.ILE1404.net2660 net18731<1>} prev=[18] elemInv=1 pathInv=0 v.w=0.1
	 [20] xc_tree ILAB0103.ILE1604.A w=5.05 e=switch_sd=ILAB0103.ILE1604.Is120{net18731<1> ILAB0103.ILE1604.A} prev=[19] elemInv=0 pathInv=0 v.w=0.1
	 [21] xc_tree ILAB0103.ILE1604.net01328 w=7.55 e=switch_ds=ILAB0103.ILE1604.Is56{ILAB0103.ILE1604.A ILAB0103.ILE1604.net01328} prev=[20] elemInv=0 pathInv=0 v.w=0.1
	 [22] xc_tree ILAB0103.ILE1604.net2680 w=8.55 e=switch2=ILAB0103.ILE1604.Is63{ILAB0103.ILE1604.net01328 ILAB0103.ILE1604.net2680} prev=[21] elemInv=0 pathInv=0 v.w=0.1
	 [23] xc_tree ILAB0103.net15476 w=8.9 e=inv_8_UCCLAB=ILAB0103.ILE1604.I666{ILAB0103.ILE1604.net2680 ILAB0103.net15476} prev=[22] elemInv=1 pathInv=1 v.w=0.1
	 [24] xc_tree ILAB0103.net37740 w=10 e=buf4_12_UCCLAB=ILAB0103.I4409{ILAB0103.net15476 ILAB0103.net37740} prev=[23] elemInv=0 pathInv=1 v.w=0.1
	 [25] xc_tree ILAB0103.net27462 w=10.175 e=switch1=ILAB0103.I4196{ILAB0103.net27462 ILAB0103.net37740} prev=[24] elemInv=0 pathInv=1 v.w=0.1
	 [26] xc_tree LongBus_1<0> w=10.575 e=buftd52C_UCCLAB=ILAB0103.I4430{ILAB0103.net27462 LongBus_1<0>} prev=[25] elemInv=0 pathInv=1 v.w=0.1
	 [27] xc_tree LongBus_70<0> w=10.825 e=buftd52_UCCLAB=ILAB0103.I4801.I1{LongBus_1<0> LongBus_70<0>} prev=[26] elemInv=0 pathInv=1 v.w=0.1
	 [28] xc_tree IIO12.I7.net197 w=10.937 e=mux2i_P_UCCLAB=IIO12.I7.I16{LongBus_70<0> IIO12.I7.net197} prev=[27] elemInv=1 pathInv=0 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[2] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0515.net2656 ILAB0102.ILE0515.net0541 }
	 xc_pin xci2_ob a i [28] pinInv=0 { IIO12.I6.net197 }
	 xc_pin xci2_mux2h b i [12] pinInv=0 { ILAB0102.ILE0615.net2746 }
	 xc_pin xci2_xnor2 a i [18] pinInv=0 { ILAB0102.ILE0416.net2746 }
	 xc_pin xci2_xnor2 a i [19] pinInv=0 { ILAB0102.ILE0416.net2749 }
	 xc_pin xci2_dffcl d i [13] pinInv=0 { ILAB0102.ILE0516.net2749 }
	 [0] xc_tree ILAB0102.ILE0515.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0515.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE0515.net2685 w=0.55 e=switch2=ILAB0102.ILE0515.Is127{ILAB0102.ILE0515.net2656 ILAB0102.ILE0515.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0515.net2660 w=0.55 e=switch2=ILAB0102.ILE0515.Is23{ILAB0102.ILE0515.net2656 ILAB0102.ILE0515.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0515.net2680 w=0.55 e=switch2=ILAB0102.ILE0515.Is63{ILAB0102.ILE0515.net0541 ILAB0102.ILE0515.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [5] xc_tree net10423<3> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0515.Iho1{ILAB0102.ILE0515.net2685 net10423<3>} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.net22189 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0515.Ivo1{ILAB0102.ILE0515.net2660 ILAB0102.net22189} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.net19796 w=0.75 e=inv_8_UCCLAB=ILAB0102.ILE0515.I666{ILAB0102.ILE0515.net2680 ILAB0102.net19796} prev=[4] elemInv=1 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0516.A w=1.25 e=switch_sd=ILAB0102.ILE0516.Is17{net10423<3> ILAB0102.ILE0516.A} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0615.C w=1.25 e=switch_sd=ILAB0102.ILE0615.Is125{ILAB0102.net22189 ILAB0102.ILE0615.C} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.net16982 w=2.05 e=switch_sd=ILAB0102.ILE0516.Is65{ILAB0102.net19796 ILAB0102.net16982} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.net16986 w=2.05 e=switch_sd=ILAB0102.ILE0516.Is69{ILAB0102.net19796 ILAB0102.net16986} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE0615.net2746 w=1.35 e=switch_ds=ILAB0102.ILE0615.Is44{ILAB0102.ILE0615.C ILAB0102.ILE0615.net2746} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0102.ILE0516.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0516.Is41{ILAB0102.ILE0516.A ILAB0102.ILE0516.net2749} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0102.ILE0416.net0562 w=2.25 e=inv_4_UCCLAB=ILAB0102.ILE0416.I712{ILAB0102.net16982 ILAB0102.ILE0416.net0562} prev=[10] elemInv=1 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0102.ILE0416.net0558 w=2.25 e=inv_4_UCCLAB=ILAB0102.ILE0416.I710{ILAB0102.net16986 ILAB0102.ILE0416.net0558} prev=[11] elemInv=1 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB0102.ILE0416.C w=2.85 e=switch1_sd=ILAB0102.ILE0416.Is78{ILAB0102.ILE0416.net0558 ILAB0102.ILE0416.C} prev=[15] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0102.ILE0416.A w=2.85 e=switch1_sd=ILAB0102.ILE0416.Is94{ILAB0102.ILE0416.net0562 ILAB0102.ILE0416.A} prev=[14] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0102.ILE0416.net2746 w=2.95 e=switch_ds=ILAB0102.ILE0416.Is44{ILAB0102.ILE0416.C ILAB0102.ILE0416.net2746} prev=[16] elemInv=0 pathInv=0 v.w=0.1
	 [19] xc_tree ILAB0102.ILE0416.net2749 w=2.95 e=switch_ds=ILAB0102.ILE0416.Is41{ILAB0102.ILE0416.A ILAB0102.ILE0416.net2749} prev=[17] elemInv=0 pathInv=0 v.w=0.1
	 [20] xc_tree ILAB0102.ILE0516.net01328 w=3.85 e=switch1_ds=ILAB0102.ILE0516.Is81{ILAB0102.net19796 ILAB0102.ILE0516.net01328} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0102.ILE0516.net2680 w=4.7 e=switch2=ILAB0102.ILE0516.Is63{ILAB0102.ILE0516.net01328 ILAB0102.ILE0516.net2680} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree net10357<1> w=5 e=inv_8_UCCLAB=ILAB0102.ILE0516.I666{ILAB0102.ILE0516.net2680 net10357<1>} prev=[21] elemInv=1 pathInv=0 v.w=0.1
	 [23] xc_tree ILAB0102.net27339 w=6.35 e=buf4_12_UCCLAB=ILAB0102.I4380{net10357<1> ILAB0102.net27339} prev=[22] elemInv=0 pathInv=0 v.w=0.1
	 [24] xc_tree ILAB0102.net38005 w=6.55 e=switch1=ILAB0102.I4221{ILAB0102.net38005 ILAB0102.net27339} prev=[23] elemInv=0 pathInv=0 v.w=0.1
	 [25] xc_tree LongBus_72<1> w=6.725 e=buftid52C_UCCLAB=ILAB0102.I4466{ILAB0102.net38005 LongBus_72<1>} prev=[24] elemInv=0 pathInv=0 v.w=0.1
	 [26] xc_tree LongBus_3<1> w=7.125 e=buftd52_UCCLAB=ILAB0202.I4801.I5{LongBus_72<1> LongBus_3<1>} prev=[25] elemInv=0 pathInv=0 v.w=0.1
	 [27] xc_tree LongBus_70<1> w=7.375 e=buftd52_UCCLAB=ILAB0203.I4801.I4{LongBus_3<1> LongBus_70<1>} prev=[26] elemInv=0 pathInv=0 v.w=0.1
	 [28] xc_tree IIO12.I6.net197 w=7.487 e=mux2i_P_UCCLAB=IIO12.I6.I16{LongBus_70<1> IIO12.I6.net197} prev=[27] elemInv=1 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[23] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0813.net2656 ILAB0102.ILE0813.net0541 }
	 xc_pin xci2_ob a i [26] pinInv=0 { IIO12.I5.net197 }
	 xc_pin xci2_mux2h b i [5] pinInv=0 { ILAB0102.ILE0812.net2746 }
	 xc_pin xci2_xnor2 a i [11] pinInv=0 { ILAB0102.ILE0414.net2746 }
	 xc_pin xci2_xnor2 a i [10] pinInv=0 { ILAB0102.ILE0414.net2749 }
	 xc_pin xci2_dffcl d i [31] pinInv=0 { ILAB0102.ILE0514.net2749 }
	 [0] xc_tree ILAB0102.ILE0813.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0813.net1859 w=0.7 e=switch2=ILAB0102.ILE0813.Is119{ILAB0102.ILE0813.net2656 ILAB0102.ILE0813.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE0813.net1844 w=0.55 e=switch2=ILAB0102.ILE0813.Is31{ILAB0102.ILE0813.net2656 ILAB0102.ILE0813.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.net17617 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0813.Ihi7{ILAB0102.ILE0813.net1844 ILAB0102.net17617} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0812.C w=1.6 e=switch=ILAB0102.ILE0812.Is13{ILAB0102.net17617 ILAB0102.ILE0812.C} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0812.net2746 w=1.7 e=switch_ds=ILAB0102.ILE0812.Is44{ILAB0102.ILE0812.C ILAB0102.ILE0812.net2746} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.net22549 w=3.006 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0813.Ivi7{ILAB0102.ILE0813.net1859 ILAB0102.net22549} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.net26078 w=4.606 e=switch=ILAB0102.ILE0413.Is37{ILAB0102.net26078 ILAB0102.net22549} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0414.C w=5.118 e=switch_sd=ILAB0102.ILE0414.Is28{ILAB0102.net26078 ILAB0102.ILE0414.C} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0414.A w=5.118 e=switch_sd=ILAB0102.ILE0414.Is24{ILAB0102.net26078 ILAB0102.ILE0414.A} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0414.net2749 w=5.23 e=switch_ds=ILAB0102.ILE0414.Is41{ILAB0102.ILE0414.A ILAB0102.ILE0414.net2749} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0414.net2746 w=5.23 e=switch_ds=ILAB0102.ILE0414.Is44{ILAB0102.ILE0414.C ILAB0102.ILE0414.net2746} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE0813.net2660 w=1 e=switch2=ILAB0102.ILE0813.Is23{ILAB0102.ILE0813.net2656 ILAB0102.ILE0813.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0102.net21109 w=1.35 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0813.Ivo1{ILAB0102.ILE0813.net2660 ILAB0102.net21109} prev=[12] elemInv=1 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0102.ILE1213.net2660 w=2.35 e=switch2=ILAB0102.ILE1213.Is23{ILAB0102.net21109 ILAB0102.ILE1213.net2660} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree net10337<4> w=2.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1213.Ivo1{ILAB0102.ILE1213.net2660 net10337<4>} prev=[14] elemInv=1 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB0102.ILE1613.net2660 w=3.75 e=switch2=ILAB0102.ILE1613.Is23{net10337<4> ILAB0102.ILE1613.net2660} prev=[15] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree net18544<6> w=4.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1613.Ivo1{ILAB0102.ILE1613.net2660 net18544<6>} prev=[16] elemInv=1 pathInv=1 v.w=0.1
	 [18] xc_tree ILAB0202.ILE0113.C w=6.65 e=switch_sd=ILAB0202.ILE0113.Is125{net18544<6> ILAB0202.ILE0113.C} prev=[17] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0202.ILE0113.net01328 w=9.15 e=switch_ds=ILAB0202.ILE0113.Is60{ILAB0202.ILE0113.C ILAB0202.ILE0113.net01328} prev=[18] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0202.ILE0113.net2680 w=10.15 e=switch2=ILAB0202.ILE0113.Is63{ILAB0202.ILE0113.net01328 ILAB0202.ILE0113.net2680} prev=[19] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0202.net21911 w=10.5 e=inv_8_UCCLAB=ILAB0202.ILE0113.I666{ILAB0202.ILE0113.net2680 ILAB0202.net21911} prev=[20] elemInv=1 pathInv=0 v.w=0.1
	 [22] xc_tree ILAB0202.net38625 w=11.6 e=buf4_12_UCCLAB=ILAB0202.I4366{ILAB0202.net21911 ILAB0202.net38625} prev=[21] elemInv=0 pathInv=0 v.w=0.1
	 [23] xc_tree ILAB0202.net39625 w=11.775 e=switch1=ILAB0202.I3746{ILAB0202.net39625 ILAB0202.net38625} prev=[22] elemInv=0 pathInv=0 v.w=0.1
	 [24] xc_tree LongBus_2<2> w=12.175 e=buftd52C_UCCLAB=ILAB0202.I4437{ILAB0202.net39625 LongBus_2<2>} prev=[23] elemInv=0 pathInv=0 v.w=0.1
	 [25] xc_tree LongBus_70<2> w=12.425 e=buftd52_UCCLAB=ILAB0203.I4773.I6{LongBus_2<2> LongBus_70<2>} prev=[24] elemInv=0 pathInv=0 v.w=0.1
	 [26] xc_tree IIO12.I5.net197 w=12.549 e=mux2i_P_UCCLAB=IIO12.I5.I16{LongBus_70<2> IIO12.I5.net197} prev=[25] elemInv=1 pathInv=1 v.w=0.1
	 [27] xc_tree ILAB0102.ILE0811.B w=2.086 e=switch_sd=ILAB0102.ILE0811.Is18{ILAB0102.net17617 ILAB0102.ILE0811.B} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [28] xc_tree ILAB0102.net18994 w=4.436 e=switch=ILAB0102.ILE0811.Is131{ILAB0102.net18994 ILAB0102.ILE0811.B} prev=[27] elemInv=0 pathInv=1 v.w=0.1
	 [29] xc_tree ILAB0102.net20362 w=6.036 e=switch=ILAB0102.ILE0511.Is35{ILAB0102.net20362 ILAB0102.net18994} prev=[28] elemInv=0 pathInv=1 v.w=0.1
	 [30] xc_tree ILAB0102.ILE0514.A w=6.922 e=switch=ILAB0102.ILE0514.Is9{ILAB0102.net20362 ILAB0102.ILE0514.A} prev=[29] elemInv=0 pathInv=1 v.w=0.1
	 [31] xc_tree ILAB0102.ILE0514.net2749 w=7.058 e=switch_ds=ILAB0102.ILE0514.Is41{ILAB0102.ILE0514.A ILAB0102.ILE0514.net2749} prev=[30] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[22] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE1216.net2656 ILAB0102.ILE1216.net0541 }
	 xc_pin xci2_ob a i [21] pinInv=0 { IIO12.I4.net197 }
	 xc_pin xci2_mux2h b i [11] pinInv=0 { ILAB0102.ILE1215.net2746 }
	 xc_pin xci2_xnor2 a i [17] pinInv=0 { ILAB0102.ILE0616.net2746 }
	 xc_pin xci2_xnor2 a i [18] pinInv=0 { ILAB0102.ILE0616.net2749 }
	 xc_pin xci2_dffcl d i [23] pinInv=0 { ILAB0102.ILE0716.net2749 }
	 [0] xc_tree ILAB0102.ILE1216.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1216.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE1216.net1862 w=0.85 e=switch2=ILAB0102.ILE1216.Is111{ILAB0102.ILE1216.net2656 ILAB0102.ILE1216.net1862} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1216.net1844 w=0.55 e=switch2=ILAB0102.ILE1216.Is31{ILAB0102.ILE1216.net2656 ILAB0102.ILE1216.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1216.net2680 w=0.55 e=switch2=ILAB0102.ILE1216.Is63{ILAB0102.ILE1216.net0541 ILAB0102.ILE1216.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0102.net21352 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1216.Ihi7{ILAB0102.ILE1216.net1844 ILAB0102.net21352} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree net10350<1> w=0.75 e=inv_8_UCCLAB=ILAB0102.ILE1216.I666{ILAB0102.ILE1216.net2680 net10350<1>} prev=[4] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE1215.C w=1.6 e=switch=ILAB0102.ILE1215.Is13{ILAB0102.net21352 ILAB0102.ILE1215.C} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.net27291 w=2.1 e=buf4_12_UCCLAB=ILAB0102.I4404{net10350<1> ILAB0102.net27291} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.net20974 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1216.Ivi6{ILAB0102.ILE1216.net1862 ILAB0102.net20974} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0916.net1859 w=1.7 e=switch2=ILAB0102.ILE0916.Is119{ILAB0102.net20974 ILAB0102.ILE0916.net1859} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE1215.net2746 w=1.7 e=switch_ds=ILAB0102.ILE1215.Is44{ILAB0102.ILE1215.C ILAB0102.ILE1215.net2746} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.net17509 w=1.9 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0916.Ivi7{ILAB0102.ILE0916.net1859 ILAB0102.net17509} prev=[10] elemInv=1 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0102.ILE0616.C w=2.4 e=switch_sd=ILAB0102.ILE0616.Is125{ILAB0102.net17509 ILAB0102.ILE0616.C} prev=[12] elemInv=0 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0102.ILE0616.A w=2.4 e=switch_sd=ILAB0102.ILE0616.Is121{ILAB0102.net17509 ILAB0102.ILE0616.A} prev=[12] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0102.net39286 w=2.3 e=switch1=ILAB0102.I3353{ILAB0102.net39286 ILAB0102.net27291} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree LongBus_72<11> w=2.475 e=buftid52C_UCCLAB=ILAB0102.I4461{ILAB0102.net39286 LongBus_72<11>} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0102.ILE0616.net2746 w=2.5 e=switch_ds=ILAB0102.ILE0616.Is44{ILAB0102.ILE0616.C ILAB0102.ILE0616.net2746} prev=[13] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0102.ILE0616.net2749 w=2.5 e=switch_ds=ILAB0102.ILE0616.Is41{ILAB0102.ILE0616.A ILAB0102.ILE0616.net2749} prev=[14] elemInv=0 pathInv=0 v.w=0.1
	 [19] xc_tree LongBus_3<11> w=2.875 e=buftd52_UCCLAB=ILAB0202.I4801.I22{LongBus_72<11> LongBus_3<11>} prev=[16] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree LongBus_71<11> w=3.125 e=buftd52_UCCLAB=ILAB0203.I4775.I23{LongBus_3<11> LongBus_71<11>} prev=[19] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree IIO12.I4.net197 w=3.225 e=mux2i_P_UCCLAB=IIO12.I4.I16{LongBus_71<11> IIO12.I4.net197} prev=[20] elemInv=1 pathInv=0 v.w=0.1
	 [22] xc_tree ILAB0102.ILE0716.A w=5.512 e=switch_sd=ILAB0102.ILE0716.Is120{ILAB0102.net17509 ILAB0102.ILE0716.A} prev=[12] elemInv=0 pathInv=0 v.w=0.1
	 [23] xc_tree ILAB0102.ILE0716.net2749 w=5.636 e=switch_ds=ILAB0102.ILE0716.Is41{ILAB0102.ILE0716.A ILAB0102.ILE0716.net2749} prev=[22] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[21] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0103.ILE1103.net2656 ILAB0103.ILE1103.net0541 }
	 xc_pin xci2_ob a i [34] pinInv=0 { IIO12.I3.net197 }
	 xc_pin xci2_mux2h b i [16] pinInv=0 { ILAB0103.ILE1102.net2746 }
	 xc_pin xci2_xnor2 a i [12] pinInv=0 { ILAB0102.ILE0216.net2746 }
	 xc_pin xci2_xnor2 a i [11] pinInv=0 { ILAB0102.ILE0216.net2749 }
	 xc_pin xci2_dffcl d i [30] pinInv=0 { ILAB0102.ILE0316.net2749 }
	 [0] xc_tree ILAB0103.ILE1103.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE1103.net1859 w=0.85 e=switch2=ILAB0103.ILE1103.Is119{ILAB0103.ILE1103.net2656 ILAB0103.ILE1103.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net16924 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1103.Ivi7{ILAB0103.ILE1103.net1859 ILAB0103.net16924} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE0703.net1859 w=2.15 e=switch2=ILAB0103.ILE0703.Is119{ILAB0103.net16924 ILAB0103.ILE0703.net1859} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.net15709 w=2.5 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0703.Ivi7{ILAB0103.ILE0703.net1859 ILAB0103.net15709} prev=[3] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0103.ILE0303.net1859 w=3.35 e=switch2=ILAB0103.ILE0303.Is119{ILAB0103.net15709 ILAB0103.ILE0303.net1859} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree net11487<3> w=3.65 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0303.Ivi7{ILAB0103.ILE0303.net1859 net11487<3>} prev=[5] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0103.ILE0203.B w=6 e=switch=ILAB0103.ILE0203.Is131{net11487<3> ILAB0103.ILE0203.B} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree net10435<3> w=7.6 e=switch=ILAB0103.ILE0203.Is10{net10435<3> ILAB0103.ILE0203.B} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0216.A w=8.1 e=switch_sd=ILAB0102.ILE0216.Is17{net10435<3> ILAB0102.ILE0216.A} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0216.C w=8.1 e=switch_sd=ILAB0102.ILE0216.Is21{net10435<3> ILAB0102.ILE0216.C} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0216.net2749 w=8.2 e=switch_ds=ILAB0102.ILE0216.Is41{ILAB0102.ILE0216.A ILAB0102.ILE0216.net2749} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE0216.net2746 w=8.2 e=switch_ds=ILAB0102.ILE0216.Is44{ILAB0102.ILE0216.C ILAB0102.ILE0216.net2746} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0103.ILE1103.net1838 w=0.55 e=switch2=ILAB0103.ILE1103.Is47{ILAB0103.ILE1103.net2656 ILAB0103.ILE1103.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0103.net16583 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1103.Ihi5{ILAB0103.ILE1103.net1838 ILAB0103.net16583} prev=[13] elemInv=1 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0103.ILE1102.C w=1.262 e=switch_sd=ILAB0103.ILE1102.Is28{ILAB0103.net16583 ILAB0103.ILE1102.C} prev=[14] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0103.ILE1102.net2746 w=1.374 e=switch_ds=ILAB0103.ILE1102.Is44{ILAB0103.ILE1102.C ILAB0103.ILE1102.net2746} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0103.ILE1103.net2660 w=1 e=switch2=ILAB0103.ILE1103.Is23{ILAB0103.ILE1103.net2656 ILAB0103.ILE1103.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0103.net17734 w=1.35 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1103.Ivo1{ILAB0103.ILE1103.net2660 ILAB0103.net17734} prev=[17] elemInv=1 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0103.ILE1503.net2660 w=2.35 e=switch2=ILAB0103.ILE1503.Is23{ILAB0103.net17734 ILAB0103.ILE1503.net2660} prev=[18] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree net18735<3> w=2.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1503.Ivo1{ILAB0103.ILE1503.net2660 net18735<3>} prev=[19] elemInv=1 pathInv=0 v.w=0.1
	 [21] xc_tree ILAB0103.ILE1603.C w=5.25 e=switch_sd=ILAB0103.ILE1603.Is125{net18735<3> ILAB0103.ILE1603.C} prev=[20] elemInv=0 pathInv=0 v.w=0.1
	 [22] xc_tree ILAB0103.ILE0103.B w=5.35 e=switch_sd=ILAB0103.ILE0103.Is122{net11487<3> ILAB0103.ILE0103.B} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [23] xc_tree ILAB0103.ILE1603.net01328 w=7.75 e=switch_ds=ILAB0103.ILE1603.Is60{ILAB0103.ILE1603.C ILAB0103.ILE1603.net01328} prev=[21] elemInv=0 pathInv=0 v.w=0.1
	 [24] xc_tree net10439<6> w=7.7 e=switch=ILAB0103.ILE0103.Is11{net10439<6> ILAB0103.ILE0103.B} prev=[22] elemInv=0 pathInv=1 v.w=0.1
	 [25] xc_tree ILAB0102.net22502 w=9.3 e=switch=ILAB0102.ILE0116.Is51{net10439<6> ILAB0102.net22502} prev=[24] elemInv=0 pathInv=1 v.w=0.1
	 [26] xc_tree ILAB0103.ILE1603.net2680 w=8.75 e=switch2=ILAB0103.ILE1603.Is63{ILAB0103.ILE1603.net01328 ILAB0103.ILE1603.net2680} prev=[23] elemInv=0 pathInv=0 v.w=0.1
	 [27] xc_tree ILAB0103.net26501 w=9.1 e=inv_8_UCCLAB=ILAB0103.ILE1603.I666{ILAB0103.ILE1603.net2680 ILAB0103.net26501} prev=[26] elemInv=1 pathInv=1 v.w=0.1
	 [28] xc_tree ILAB0103.net39588 w=10.2 e=buf4_12_UCCLAB=ILAB0103.I4358{ILAB0103.net26501 ILAB0103.net39588} prev=[27] elemInv=0 pathInv=1 v.w=0.1
	 [29] xc_tree ILAB0102.ILE0316.A w=10.174 e=switch=ILAB0102.ILE0316.Is113{ILAB0102.net22502 ILAB0102.ILE0316.A} prev=[25] elemInv=0 pathInv=1 v.w=0.1
	 [30] xc_tree ILAB0102.ILE0316.net2749 w=10.298 e=switch_ds=ILAB0102.ILE0316.Is41{ILAB0102.ILE0316.A ILAB0102.ILE0316.net2749} prev=[29] elemInv=0 pathInv=1 v.w=0.1
	 [31] xc_tree ILAB0103.net27495 w=10.375 e=switch1=ILAB0103.I4059{ILAB0103.net27495 ILAB0103.net39588} prev=[28] elemInv=0 pathInv=1 v.w=0.1
	 [32] xc_tree LongBus_1<4> w=10.775 e=buftd52C_UCCLAB=ILAB0103.I4415{ILAB0103.net27495 LongBus_1<4>} prev=[31] elemInv=0 pathInv=1 v.w=0.1
	 [33] xc_tree LongBus_70<4> w=11.025 e=buftd52_UCCLAB=ILAB0103.I4801.I40{LongBus_1<4> LongBus_70<4>} prev=[32] elemInv=0 pathInv=1 v.w=0.1
	 [34] xc_tree IIO12.I3.net197 w=11.149 e=mux2i_P_UCCLAB=IIO12.I3.I16{LongBus_70<4> IIO12.I3.net197} prev=[33] elemInv=1 pathInv=0 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[20] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0103.ILE1204.net2656 ILAB0103.ILE1204.net0541 }
	 xc_pin xci2_ob a i [28] pinInv=0 { IIO12.I2.net197 }
	 xc_pin xci2_mux2h b i [5] pinInv=0 { ILAB0103.ILE1203.net2746 }
	 xc_pin xci2_xnor2 a i [15] pinInv=0 { ILAB0103.ILE0302.net2746 }
	 xc_pin xci2_xnor2 a i [16] pinInv=0 { ILAB0103.ILE0302.net2749 }
	 xc_pin xci2_dffcl d i [12] pinInv=0 { ILAB0103.ILE0303.net2749 }
	 [0] xc_tree ILAB0103.ILE1204.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0103.ILE1204.net1838 w=0.55 e=switch2=ILAB0103.ILE1204.Is47{ILAB0103.ILE1204.net2656 ILAB0103.ILE1204.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0103.net26573 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1204.Ihi5{ILAB0103.ILE1204.net1838 ILAB0103.net26573} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0103.ILE1203.C w=1.262 e=switch_sd=ILAB0103.ILE1203.Is28{ILAB0103.net26573 ILAB0103.ILE1203.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0103.net15619 w=2.874 e=switch=ILAB0103.ILE1203.Is132{ILAB0103.net15619 ILAB0103.ILE1203.C} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0103.ILE1203.net2746 w=1.374 e=switch_ds=ILAB0103.ILE1203.Is44{ILAB0103.ILE1203.C ILAB0103.ILE1203.net2746} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0103.ILE0803.net1859 w=3.736 e=switch2=ILAB0103.ILE0803.Is119{ILAB0103.net15619 ILAB0103.ILE0803.net1859} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0103.net20344 w=4.048 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0803.Ivi7{ILAB0103.ILE0803.net1859 ILAB0103.net20344} prev=[6] elemInv=1 pathInv=0 v.w=0.1
	 [8] xc_tree ILAB0103.ILE0403.net1859 w=4.61 e=switch2=ILAB0103.ILE0403.Is119{ILAB0103.net20344 ILAB0103.ILE0403.net1859} prev=[7] elemInv=0 pathInv=0 v.w=0.1
	 [9] xc_tree net11487<6> w=4.822 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0403.Ivi7{ILAB0103.ILE0403.net1859 net11487<6>} prev=[8] elemInv=1 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0103.ILE0303.A w=6.804 e=switch=ILAB0103.ILE0303.Is129{net11487<6> ILAB0103.ILE0303.A} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0103.net17843 w=8.404 e=switch=ILAB0103.ILE0303.Is25{ILAB0103.net17843 ILAB0103.ILE0303.A} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0103.ILE0303.net2749 w=6.916 e=switch_ds=ILAB0103.ILE0303.Is41{ILAB0103.ILE0303.A ILAB0103.ILE0303.net2749} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0103.ILE0302.C w=8.916 e=switch_sd=ILAB0103.ILE0302.Is28{ILAB0103.net17843 ILAB0103.ILE0302.C} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0103.ILE0302.A w=8.916 e=switch_sd=ILAB0103.ILE0302.Is24{ILAB0103.net17843 ILAB0103.ILE0302.A} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0103.ILE0302.net2746 w=9.028 e=switch_ds=ILAB0103.ILE0302.Is44{ILAB0103.ILE0302.C ILAB0103.ILE0302.net2746} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0103.ILE0302.net2749 w=9.028 e=switch_ds=ILAB0103.ILE0302.Is41{ILAB0103.ILE0302.A ILAB0103.ILE0302.net2749} prev=[14] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0103.net15503 w=2.862 e=switch=ILAB0103.ILE1203.Is29{ILAB0103.net15503 ILAB0103.ILE1203.C} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [18] xc_tree ILAB0103.net20569 w=5.212 e=switch=ILAB0103.ILE1201.Is37{ILAB0103.net15503 ILAB0103.net20569} prev=[17] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0103.ILE1401.B w=6.912 e=switch_sd=ILAB0103.ILE1401.Is122{ILAB0103.net20569 ILAB0103.ILE1401.B} prev=[18] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0103.ILE1401.net01328 w=9.412 e=switch_ds=ILAB0103.ILE1401.Is58{ILAB0103.ILE1401.B ILAB0103.ILE1401.net01328} prev=[19] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0103.ILE1401.net2680 w=10.262 e=switch2=ILAB0103.ILE1401.Is63{ILAB0103.ILE1401.net01328 ILAB0103.ILE1401.net2680} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree net10348<0> w=10.562 e=inv_8_UCCLAB=ILAB0103.ILE1401.I666{ILAB0103.ILE1401.net2680 net10348<0>} prev=[21] elemInv=1 pathInv=0 v.w=0.1
	 [23] xc_tree ILAB0103.net39060 w=11.412 e=buf4_12_UCCLAB=ILAB0103.I4355{net10348<0> ILAB0103.net39060} prev=[22] elemInv=0 pathInv=0 v.w=0.1
	 [24] xc_tree ILAB0103.net27517 w=11.636 e=switch1=ILAB0103.I4341{ILAB0103.net27517 ILAB0103.net39060} prev=[23] elemInv=0 pathInv=0 v.w=0.1
	 [25] xc_tree LongBus_71<5> w=11.835 e=buftid52C_UCCLAB=ILAB0103.I4475{ILAB0103.net27517 LongBus_71<5>} prev=[24] elemInv=0 pathInv=0 v.w=0.1
	 [26] xc_tree LongBus_3<5> w=12.235 e=buftd52_UCCLAB=ILAB0203.I4775.I38{LongBus_71<5> LongBus_3<5>} prev=[25] elemInv=0 pathInv=0 v.w=0.1
	 [27] xc_tree LongBus_70<5> w=12.509 e=buftd52_UCCLAB=ILAB0203.I4801.I39{LongBus_3<5> LongBus_70<5>} prev=[26] elemInv=0 pathInv=0 v.w=0.1
	 [28] xc_tree IIO12.I2.net197 w=12.633 e=mux2i_P_UCCLAB=IIO12.I2.I16{LongBus_70<5> IIO12.I2.net197} prev=[27] elemInv=1 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[1] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0714.net2656 ILAB0102.ILE0714.net0541 }
	 xc_pin xci2_ob a i [30] pinInv=0 { IIO12.I1.net197 }
	 xc_pin xci2_mux2h b i [18] pinInv=0 { ILAB0102.ILE0713.net2746 }
	 xc_pin xci2_xnor2 a i [12] pinInv=0 { ILAB0102.ILE0613.net2746 }
	 xc_pin xci2_xnor2 a i [13] pinInv=0 { ILAB0102.ILE0613.net2749 }
	 xc_pin xci2_dffcl d i [20] pinInv=0 { ILAB0102.ILE0513.net2749 }
	 [0] xc_tree ILAB0102.ILE0714.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0714.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE0714.net2635 w=0.85 e=switch2=ILAB0102.ILE0714.Is135{ILAB0102.ILE0714.net2656 ILAB0102.ILE0714.net2635} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0714.net2680 w=0.55 e=switch2=ILAB0102.ILE0714.Is63{ILAB0102.ILE0714.net0541 ILAB0102.ILE0714.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0102.net19976 w=0.75 e=inv_8_UCCLAB=ILAB0102.ILE0714.I666{ILAB0102.ILE0714.net2680 ILAB0102.net19976} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.net19952 w=2.05 e=switch_sd=ILAB0102.ILE0713.Is89{ILAB0102.net19976 ILAB0102.net19952} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.net19956 w=2.05 e=switch_sd=ILAB0102.ILE0713.Is93{ILAB0102.net19976 ILAB0102.net19956} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.net22388 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0714.Iho2{ILAB0102.ILE0714.net2635 ILAB0102.net22388} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0613.net0558 w=2.25 e=inv_4_UCCLAB=ILAB0102.ILE0613.I710{ILAB0102.net19956 ILAB0102.ILE0613.net0558} prev=[6] elemInv=1 pathInv=0 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0613.net0562 w=2.25 e=inv_4_UCCLAB=ILAB0102.ILE0613.I712{ILAB0102.net19952 ILAB0102.ILE0613.net0562} prev=[5] elemInv=1 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0613.A w=2.85 e=switch1_sd=ILAB0102.ILE0613.Is94{ILAB0102.ILE0613.net0562 ILAB0102.ILE0613.A} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0613.C w=2.85 e=switch1_sd=ILAB0102.ILE0613.Is78{ILAB0102.ILE0613.net0558 ILAB0102.ILE0613.C} prev=[8] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0102.ILE0613.net2746 w=2.95 e=switch_ds=ILAB0102.ILE0613.Is44{ILAB0102.ILE0613.C ILAB0102.ILE0613.net2746} prev=[11] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0102.ILE0613.net2749 w=2.95 e=switch_ds=ILAB0102.ILE0613.Is41{ILAB0102.ILE0613.A ILAB0102.ILE0613.net2749} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0102.ILE0714.net1838 w=0.55 e=switch2=ILAB0102.ILE0714.Is47{ILAB0102.ILE0714.net2656 ILAB0102.ILE0714.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0102.net19913 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0714.Ihi5{ILAB0102.ILE0714.net1838 ILAB0102.net19913} prev=[14] elemInv=1 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0102.ILE0713.C w=1.262 e=switch_sd=ILAB0102.ILE0713.Is28{ILAB0102.net19913 ILAB0102.ILE0713.C} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0102.net19984 w=2.862 e=switch=ILAB0102.ILE0713.Is132{ILAB0102.net19984 ILAB0102.ILE0713.C} prev=[16] elemInv=0 pathInv=1 v.w=0.1
	 [18] xc_tree ILAB0102.ILE0713.net2746 w=1.374 e=switch_ds=ILAB0102.ILE0713.Is44{ILAB0102.ILE0713.C ILAB0102.ILE0713.net2746} prev=[16] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0102.ILE0513.A w=3.374 e=switch_sd=ILAB0102.ILE0513.Is120{ILAB0102.net19984 ILAB0102.ILE0513.A} prev=[17] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0102.ILE0513.net2749 w=3.486 e=switch_ds=ILAB0102.ILE0513.Is41{ILAB0102.ILE0513.A ILAB0102.ILE0513.net2749} prev=[19] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0102.ILE0716.B w=5.9 e=switch=ILAB0102.ILE0716.Is27{ILAB0102.net22388 ILAB0102.ILE0716.B} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0102.ILE0716.net01328 w=8.424 e=switch_ds=ILAB0102.ILE0716.Is58{ILAB0102.ILE0716.B ILAB0102.ILE0716.net01328} prev=[21] elemInv=0 pathInv=1 v.w=0.1
	 [23] xc_tree ILAB0102.ILE0716.net2680 w=9.298 e=switch2=ILAB0102.ILE0716.Is63{ILAB0102.ILE0716.net01328 ILAB0102.ILE0716.net2680} prev=[22] elemInv=0 pathInv=1 v.w=0.1
	 [24] xc_tree net10355<1> w=9.622 e=inv_8_UCCLAB=ILAB0102.ILE0716.I666{ILAB0102.ILE0716.net2680 net10355<1>} prev=[23] elemInv=1 pathInv=0 v.w=0.1
	 [25] xc_tree ILAB0102.net27305 w=10.996 e=buf4_12_UCCLAB=ILAB0102.I4397{net10355<1> ILAB0102.net27305} prev=[24] elemInv=0 pathInv=0 v.w=0.1
	 [26] xc_tree ILAB0102.net39976 w=11.196 e=switch1=ILAB0102.I3825{ILAB0102.net39976 ILAB0102.net27305} prev=[25] elemInv=0 pathInv=0 v.w=0.1
	 [27] xc_tree LongBus_72<14> w=11.371 e=buftid52C_UCCLAB=ILAB0102.I4458{ILAB0102.net39976 LongBus_72<14>} prev=[26] elemInv=0 pathInv=0 v.w=0.1
	 [28] xc_tree LongBus_5<14> w=11.771 e=buftd52_UCCLAB=ILAB0302.I4801.I26{LongBus_72<14> LongBus_5<14>} prev=[27] elemInv=0 pathInv=0 v.w=0.1
	 [29] xc_tree LongBus_71<14> w=12.021 e=buftd52_UCCLAB=ILAB0303.I4775.I27{LongBus_5<14> LongBus_71<14>} prev=[28] elemInv=0 pathInv=0 v.w=0.1
	 [30] xc_tree IIO12.I1.net197 w=12.145 e=mux2i_P_UCCLAB=IIO12.I1.I16{LongBus_71<14> IIO12.I1.net197} prev=[29] elemInv=1 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[19] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE1212.net2656 ILAB0102.ILE1212.net0541 }
	 xc_pin xci2_ob a i [27] pinInv=0 { IIO12.I0.net197 }
	 xc_pin xci2_mux2h b i [8] pinInv=0 { ILAB0102.ILE1312.net2746 }
	 xc_pin xci2_xnor2 a i [17] pinInv=0 { ILAB0102.ILE0313.net2746 }
	 xc_pin xci2_xnor2 a i [16] pinInv=0 { ILAB0102.ILE0313.net2749 }
	 xc_pin xci2_dffcl d i [23] pinInv=0 { ILAB0102.ILE0213.net2749 }
	 [0] xc_tree ILAB0102.ILE1212.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1212.net1850 w=0.85 e=switch2=ILAB0102.ILE1212.Is103{ILAB0102.ILE1212.net2656 ILAB0102.ILE1212.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE1212.net2660 w=0.55 e=switch2=ILAB0102.ILE1212.Is23{ILAB0102.ILE1212.net2656 ILAB0102.ILE1212.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree net10337<3> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1212.Ivo1{ILAB0102.ILE1212.net2660 net10337<3>} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1312.C w=1.25 e=switch_sd=ILAB0102.ILE1312.Is125{net10337<3> ILAB0102.ILE1312.C} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE1612.C w=3.1 e=switch=ILAB0102.ILE1612.Is132{net10337<3> ILAB0102.ILE1612.C} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.net21377 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1212.Ivi5{ILAB0102.ILE1212.net1850 ILAB0102.net21377} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE1012.net1862 w=2 e=switch2=ILAB0102.ILE1012.Is111{ILAB0102.net21377 ILAB0102.ILE1012.net1862} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE1312.net2746 w=1.35 e=switch_ds=ILAB0102.ILE1312.Is44{ILAB0102.ILE1312.C ILAB0102.ILE1312.net2746} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.net21784 w=2.3 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1012.Ivi6{ILAB0102.ILE1012.net1862 ILAB0102.net21784} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0712.net1859 w=3 e=switch2=ILAB0102.ILE0712.Is119{ILAB0102.net21784 ILAB0102.ILE0712.net1859} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0102.net19939 w=3.25 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0712.Ivi7{ILAB0102.ILE0712.net1859 ILAB0102.net19939} prev=[10] elemInv=1 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE1612.net01328 w=5.6 e=switch_ds=ILAB0102.ILE1612.Is60{ILAB0102.ILE1612.C ILAB0102.ILE1612.net01328} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0102.net24907 w=4.85 e=switch=ILAB0102.ILE0312.Is35{ILAB0102.net24907 ILAB0102.net19939} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0102.ILE0313.A w=5.35 e=switch_sd=ILAB0102.ILE0313.Is17{ILAB0102.net24907 ILAB0102.ILE0313.A} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0102.ILE0313.C w=5.35 e=switch_sd=ILAB0102.ILE0313.Is21{ILAB0102.net24907 ILAB0102.ILE0313.C} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0102.ILE0313.net2749 w=5.45 e=switch_ds=ILAB0102.ILE0313.Is41{ILAB0102.ILE0313.A ILAB0102.ILE0313.net2749} prev=[14] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0102.ILE0313.net2746 w=5.45 e=switch_ds=ILAB0102.ILE0313.Is44{ILAB0102.ILE0313.C ILAB0102.ILE0313.net2746} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [18] xc_tree ILAB0102.ILE1612.net2680 w=6.6 e=switch2=ILAB0102.ILE1612.Is63{ILAB0102.ILE1612.net01328 ILAB0102.ILE1612.net2680} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0102.net22001 w=6.95 e=inv_8_UCCLAB=ILAB0102.ILE1612.I666{ILAB0102.ILE1612.net2680 ILAB0102.net22001} prev=[18] elemInv=1 pathInv=0 v.w=0.1
	 [20] xc_tree ILAB0102.net39579 w=8.05 e=buf4_12_UCCLAB=ILAB0102.I4365{ILAB0102.net22001 ILAB0102.net39579} prev=[19] elemInv=0 pathInv=0 v.w=0.1
	 [21] xc_tree ELLR12_28<3> w=6.95 e=switch=ILAB0102.ILE0313.Is132{ELLR12_28<3> ILAB0102.ILE0313.C} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0102.ILE0213.A w=7.812 e=switch=ILAB0102.ILE0213.Is129{ELLR12_28<3> ILAB0102.ILE0213.A} prev=[21] elemInv=0 pathInv=1 v.w=0.1
	 [23] xc_tree ILAB0102.ILE0213.net2749 w=7.924 e=switch_ds=ILAB0102.ILE0213.Is41{ILAB0102.ILE0213.A ILAB0102.ILE0213.net2749} prev=[22] elemInv=0 pathInv=1 v.w=0.1
	 [24] xc_tree ILAB0102.net27477 w=8.225 e=switch1=ILAB0102.I3603{ILAB0102.net27477 ILAB0102.net39579} prev=[20] elemInv=0 pathInv=0 v.w=0.1
	 [25] xc_tree LongBus_1<7> w=8.625 e=buftd52C_UCCLAB=ILAB0102.I4424{ILAB0102.net27477 LongBus_1<7>} prev=[24] elemInv=0 pathInv=0 v.w=0.1
	 [26] xc_tree LongBus_70<7> w=8.875 e=buftd52_UCCLAB=ILAB0103.I4801.I36{LongBus_1<7> LongBus_70<7>} prev=[25] elemInv=0 pathInv=0 v.w=0.1
	 [27] xc_tree IIO12.I0.net197 w=8.987 e=mux2i_P_UCCLAB=IIO12.I0.I16{LongBus_70<7> IIO12.I0.net197} prev=[26] elemInv=1 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[18] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE1307.net2656 ILAB0102.ILE1307.net0541 }
	 xc_pin xci2_ob a i [25] pinInv=0 { IIO11.I7.net197 }
	 xc_pin xci2_mux2h b i [6] pinInv=0 { ILAB0102.ILE1306.net2746 }
	 xc_pin xci2_xnor2 a i [13] pinInv=0 { ILAB0102.ILE0607.net2746 }
	 xc_pin xci2_xnor2 a i [14] pinInv=0 { ILAB0102.ILE0607.net2749 }
	 xc_pin xci2_dffcl d i [12] pinInv=0 { ILAB0102.ILE0707.net2749 }
	 [0] xc_tree ILAB0102.ILE1307.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1307.net1859 w=0.85 e=switch2=ILAB0102.ILE1307.Is119{ILAB0102.ILE1307.net2656 ILAB0102.ILE1307.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE1307.net1838 w=0.55 e=switch2=ILAB0102.ILE1307.Is47{ILAB0102.ILE1307.net2656 ILAB0102.ILE1307.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.net15908 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1307.Ihi5{ILAB0102.ILE1307.net1838 ILAB0102.net15908} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE1306.C w=1.262 e=switch_sd=ILAB0102.ILE1306.Is28{ILAB0102.net15908 ILAB0102.ILE1306.C} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.net17149 w=3.206 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1307.Ivi7{ILAB0102.ILE1307.net1859 ILAB0102.net17149} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.ILE1306.net2746 w=1.374 e=switch_ds=ILAB0102.ILE1306.Is44{ILAB0102.ILE1306.C ILAB0102.ILE1306.net2746} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE0907.net1859 w=3.768 e=switch2=ILAB0102.ILE0907.Is119{ILAB0102.net17149 ILAB0102.ILE0907.net1859} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.net25969 w=3.98 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0907.Ivi7{ILAB0102.ILE0907.net1859 ILAB0102.net25969} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0707.A w=4.492 e=switch_sd=ILAB0102.ILE0707.Is120{ILAB0102.net25969 ILAB0102.ILE0707.A} prev=[8] elemInv=0 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0607.C w=4.492 e=switch_sd=ILAB0102.ILE0607.Is125{ILAB0102.net25969 ILAB0102.ILE0607.C} prev=[8] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0607.A w=4.492 e=switch_sd=ILAB0102.ILE0607.Is121{ILAB0102.net25969 ILAB0102.ILE0607.A} prev=[8] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0102.ILE0707.net2749 w=4.604 e=switch_ds=ILAB0102.ILE0707.Is41{ILAB0102.ILE0707.A ILAB0102.ILE0707.net2749} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0102.ILE0607.net2746 w=4.604 e=switch_ds=ILAB0102.ILE0607.Is44{ILAB0102.ILE0607.C ILAB0102.ILE0607.net2746} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0102.ILE0607.net2749 w=4.604 e=switch_ds=ILAB0102.ILE0607.Is41{ILAB0102.ILE0607.A ILAB0102.ILE0607.net2749} prev=[11] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0102.ILE1307.net2660 w=1 e=switch2=ILAB0102.ILE1307.Is23{ILAB0102.ILE1307.net2656 ILAB0102.ILE1307.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [16] xc_tree net18568<0> w=1.35 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1307.Ivo1{ILAB0102.ILE1307.net2660 net18568<0>} prev=[15] elemInv=1 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0102.ILE1607.C w=5.2 e=switch=ILAB0102.ILE1607.Is133{net18568<0> ILAB0102.ILE1607.C} prev=[16] elemInv=0 pathInv=1 v.w=0.1
	 [18] xc_tree ILAB0102.ILE1607.net01328 w=7.7 e=switch_ds=ILAB0102.ILE1607.Is60{ILAB0102.ILE1607.C ILAB0102.ILE1607.net01328} prev=[17] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0102.ILE1607.net2680 w=8.55 e=switch2=ILAB0102.ILE1607.Is63{ILAB0102.ILE1607.net01328 ILAB0102.ILE1607.net2680} prev=[18] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0102.net18266 w=8.85 e=inv_8_UCCLAB=ILAB0102.ILE1607.I666{ILAB0102.ILE1607.net2680 ILAB0102.net18266} prev=[19] elemInv=1 pathInv=0 v.w=0.1
	 [21] xc_tree ILAB0102.net38148 w=9.95 e=buf4_12_UCCLAB=ILAB0102.I4357{ILAB0102.net18266 ILAB0102.net38148} prev=[20] elemInv=0 pathInv=0 v.w=0.1
	 [22] xc_tree ILAB0102.net27474 w=10.125 e=switch1=ILAB0102.I4049{ILAB0102.net27474 ILAB0102.net38148} prev=[21] elemInv=0 pathInv=0 v.w=0.1
	 [23] xc_tree LongBus_1<8> w=10.525 e=buftd52C_UCCLAB=ILAB0102.I4425{ILAB0102.net27474 LongBus_1<8>} prev=[22] elemInv=0 pathInv=0 v.w=0.1
	 [24] xc_tree LongBus_73<8> w=10.811 e=buftd52_UCCLAB=ILAB0102.I4775.I19{LongBus_1<8> LongBus_73<8>} prev=[23] elemInv=0 pathInv=0 v.w=0.1
	 [25] xc_tree IIO11.I7.net197 w=10.947 e=mux2i_P_UCCLAB=IIO11.I7.I16{LongBus_73<8> IIO11.I7.net197} prev=[24] elemInv=1 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[17] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE1012.net2656 ILAB0102.ILE1012.net0541 }
	 xc_pin xci2_ob a i [25] pinInv=0 { IIO11.I6.net197 }
	 xc_pin xci2_mux2h b i [29] pinInv=0 { ILAB0102.ILE1011.net2746 }
	 xc_pin xci2_xnor2 a i [15] pinInv=0 { ILAB0102.ILE0712.net2746 }
	 xc_pin xci2_xnor2 a i [16] pinInv=0 { ILAB0102.ILE0712.net2749 }
	 xc_pin xci2_dffcl d i [17] pinInv=0 { ILAB0102.ILE0612.net2749 }
	 [0] xc_tree ILAB0102.ILE1012.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE1012.net1859 w=0.55 e=switch2=ILAB0102.ILE1012.Is119{ILAB0102.ILE1012.net2656 ILAB0102.ILE1012.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE1012.net1850 w=0.85 e=switch2=ILAB0102.ILE1012.Is103{ILAB0102.ILE1012.net2656 ILAB0102.ILE1012.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.ILE1012.net2660 w=0.85 e=switch2=ILAB0102.ILE1012.Is23{ILAB0102.ILE1012.net2656 ILAB0102.ILE1012.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0102.net21694 w=2.806 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1012.Ivi7{ILAB0102.ILE1012.net1859 ILAB0102.net21694} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.net21692 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1012.Ivi5{ILAB0102.ILE1012.net1850 ILAB0102.net21692} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.net19399 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1012.Ivo1{ILAB0102.ILE1012.net2660 ILAB0102.net19399} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE0812.net1862 w=1.7 e=switch2=ILAB0102.ILE0812.Is111{ILAB0102.net21692 ILAB0102.ILE0812.net1862} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE1412.net2660 w=2.15 e=switch2=ILAB0102.ILE1412.Is23{ILAB0102.net19399 ILAB0102.ILE1412.net2660} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.net18949 w=3.032 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0812.Ivi6{ILAB0102.ILE0812.net1862 ILAB0102.net18949} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [10] xc_tree net18548<1> w=2.55 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1412.Ivo1{ILAB0102.ILE1412.net2660 net18548<1>} prev=[8] elemInv=1 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0202.ILE0112.A w=7.15 e=switch=ILAB0202.ILE0112.Is129{net18548<1> ILAB0202.ILE0112.A} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0102.ILE0712.C w=3.318 e=switch_sd=ILAB0102.ILE0712.Is125{ILAB0102.net21694 ILAB0102.ILE0712.C} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0102.ILE0712.A w=3.318 e=switch_sd=ILAB0102.ILE0712.Is121{ILAB0102.net21694 ILAB0102.ILE0712.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0102.ILE0612.A w=3.544 e=switch_sd=ILAB0102.ILE0612.Is121{ILAB0102.net18949 ILAB0102.ILE0612.A} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0102.ILE0712.net2746 w=3.43 e=switch_ds=ILAB0102.ILE0712.Is44{ILAB0102.ILE0712.C ILAB0102.ILE0712.net2746} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0102.ILE0712.net2749 w=3.43 e=switch_ds=ILAB0102.ILE0712.Is41{ILAB0102.ILE0712.A ILAB0102.ILE0712.net2749} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0102.ILE0612.net2749 w=3.656 e=switch_ds=ILAB0102.ILE0612.Is41{ILAB0102.ILE0612.A ILAB0102.ILE0612.net2749} prev=[14] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0202.ILE0112.net01328 w=9.65 e=switch_ds=ILAB0202.ILE0112.Is56{ILAB0202.ILE0112.A ILAB0202.ILE0112.net01328} prev=[11] elemInv=0 pathInv=0 v.w=0.1
	 [19] xc_tree ILAB0202.ILE0112.net2680 w=10.65 e=switch2=ILAB0202.ILE0112.Is63{ILAB0202.ILE0112.net01328 ILAB0202.ILE0112.net2680} prev=[18] elemInv=0 pathInv=0 v.w=0.1
	 [20] xc_tree ILAB0202.net23216 w=11 e=inv_8_UCCLAB=ILAB0202.ILE0112.I666{ILAB0202.ILE0112.net2680 ILAB0202.net23216} prev=[19] elemInv=1 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0202.net40041 w=12.1 e=buf4_12_UCCLAB=ILAB0202.I4371{ILAB0202.net23216 ILAB0202.net40041} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0202.net39310 w=12.275 e=switch1=ILAB0202.I3739{ILAB0202.net39310 ILAB0202.net40041} prev=[21] elemInv=0 pathInv=1 v.w=0.1
	 [23] xc_tree LongBus_2<9> w=12.675 e=buftd52C_UCCLAB=ILAB0202.I4436{ILAB0202.net39310 LongBus_2<9>} prev=[22] elemInv=0 pathInv=1 v.w=0.1
	 [24] xc_tree LongBus_73<9> w=12.925 e=buftd52_UCCLAB=ILAB0202.I4772.I20{LongBus_2<9> LongBus_73<9>} prev=[23] elemInv=0 pathInv=1 v.w=0.1
	 [25] xc_tree IIO11.I6.net197 w=13.037 e=mux2i_P_UCCLAB=IIO11.I6.I16{LongBus_73<9> IIO11.I6.net197} prev=[24] elemInv=1 pathInv=0 v.w=0.1
	 [26] xc_tree ILAB0102.ILE1012.net1838 w=0.55 e=switch2=ILAB0102.ILE1012.Is47{ILAB0102.ILE1012.net2656 ILAB0102.ILE1012.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [27] xc_tree ILAB0102.net24863 w=1.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1012.Ihi5{ILAB0102.ILE1012.net1838 ILAB0102.net24863} prev=[26] elemInv=1 pathInv=1 v.w=0.1
	 [28] xc_tree ILAB0102.ILE1011.C w=2.442 e=switch_sd=ILAB0102.ILE1011.Is28{ILAB0102.net24863 ILAB0102.ILE1011.C} prev=[27] elemInv=0 pathInv=1 v.w=0.1
	 [29] xc_tree ILAB0102.ILE1011.net2746 w=2.566 e=switch_ds=ILAB0102.ILE1011.Is44{ILAB0102.ILE1011.C ILAB0102.ILE1011.net2746} prev=[28] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[16] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0610.net2656 ILAB0102.ILE0610.net0541 }
	 xc_pin xci2_ob a i [23] pinInv=0 { IIO11.I5.net197 }
	 xc_pin xci2_mux2h b i [10] pinInv=0 { ILAB0102.ILE0710.net2746 }
	 xc_pin xci2_xnor2 a i [13] pinInv=0 { ILAB0102.ILE0410.net2746 }
	 xc_pin xci2_xnor2 a i [12] pinInv=0 { ILAB0102.ILE0410.net2749 }
	 xc_pin xci2_dffcl d i [11] pinInv=0 { ILAB0102.ILE0310.net2749 }
	 [0] xc_tree ILAB0102.ILE0610.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0610.net1859 w=0.55 e=switch2=ILAB0102.ILE0610.Is119{ILAB0102.ILE0610.net2656 ILAB0102.ILE0610.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE0610.net2670 w=0.55 e=switch2=ILAB0102.ILE0610.Is7{ILAB0102.ILE0610.net2656 ILAB0102.ILE0610.net2670} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.net24165 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0610.Ivo3{ILAB0102.ILE0610.net2670 ILAB0102.net24165} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net24124 w=0.846 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0610.Ivi7{ILAB0102.ILE0610.net1859 ILAB0102.net24124} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0710.C w=1.262 e=switch_sd=ILAB0102.ILE0710.Is108{ILAB0102.net24165 ILAB0102.ILE0710.C} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.ILE0310.A w=1.358 e=switch_sd=ILAB0102.ILE0310.Is121{ILAB0102.net24124 ILAB0102.ILE0310.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE0210.net1859 w=1.696 e=switch2=ILAB0102.ILE0210.Is119{ILAB0102.net24124 ILAB0102.ILE0210.net1859} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0410.A w=1.358 e=switch_sd=ILAB0102.ILE0410.Is120{ILAB0102.net24124 ILAB0102.ILE0410.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0410.C w=1.358 e=switch_sd=ILAB0102.ILE0410.Is124{ILAB0102.net24124 ILAB0102.ILE0410.C} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0710.net2746 w=1.374 e=switch_ds=ILAB0102.ILE0710.Is44{ILAB0102.ILE0710.C ILAB0102.ILE0710.net2746} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0310.net2749 w=1.47 e=switch_ds=ILAB0102.ILE0310.Is41{ILAB0102.ILE0310.A ILAB0102.ILE0310.net2749} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE0410.net2749 w=1.47 e=switch_ds=ILAB0102.ILE0410.Is41{ILAB0102.ILE0410.A ILAB0102.ILE0410.net2749} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0102.ILE0410.net2746 w=1.47 e=switch_ds=ILAB0102.ILE0410.Is44{ILAB0102.ILE0410.C ILAB0102.ILE0410.net2746} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ELLR9_28<5> w=1.996 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0210.Ivi7{ILAB0102.ILE0210.net1859 ELLR9_28<5>} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0102.ILE0110.B w=5.846 e=switch=ILAB0102.ILE0110.Is131{ELLR9_28<5> ILAB0102.ILE0110.B} prev=[14] elemInv=0 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB0102.ILE0110.net01328 w=8.346 e=switch_ds=ILAB0102.ILE0110.Is58{ILAB0102.ILE0110.B ILAB0102.ILE0110.net01328} prev=[15] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0102.ILE0110.net2680 w=9.346 e=switch2=ILAB0102.ILE0110.Is63{ILAB0102.ILE0110.net01328 ILAB0102.ILE0110.net2680} prev=[16] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0102.net16421 w=9.696 e=inv_8_UCCLAB=ILAB0102.ILE0110.I666{ILAB0102.ILE0110.net2680 ILAB0102.net16421} prev=[17] elemInv=1 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0102.net40197 w=10.796 e=buf4_12_UCCLAB=ILAB0102.I4363{ILAB0102.net16421 ILAB0102.net40197} prev=[18] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0102.net39625 w=10.983 e=switch1=ILAB0102.I3658{ILAB0102.net39625 ILAB0102.net40197} prev=[19] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree LongBus_0<2> w=11.395 e=buftd52C_UCCLAB=ILAB0102.I4437{ILAB0102.net39625 LongBus_0<2>} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree LongBus_72<2> w=11.657 e=buftd52_UCCLAB=ILAB0102.I4773.I6{LongBus_0<2> LongBus_72<2>} prev=[21] elemInv=0 pathInv=1 v.w=0.1
	 [23] xc_tree IIO11.I5.net197 w=11.769 e=mux2i_P_UCCLAB=IIO11.I5.I16{LongBus_72<2> IIO11.I5.net197} prev=[22] elemInv=1 pathInv=0 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[15] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0508.net2656 ILAB0102.ILE0508.net0541 }
	 xc_pin xci2_ob a i [24] pinInv=0 { IIO11.I4.net197 }
	 xc_pin xci2_mux2h b i [16] pinInv=0 { ILAB0102.ILE0608.net2746 }
	 xc_pin xci2_xnor2 a i [10] pinInv=0 { ILAB0102.ILE0408.net2746 }
	 xc_pin xci2_xnor2 a i [11] pinInv=0 { ILAB0102.ILE0408.net2749 }
	 xc_pin xci2_dffcl d i [9] pinInv=0 { ILAB0102.ILE0308.net2749 }
	 [0] xc_tree ILAB0102.ILE0508.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0508.net1859 w=0.55 e=switch2=ILAB0102.ILE0508.Is119{ILAB0102.ILE0508.net2656 ILAB0102.ILE0508.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE0508.net1844 w=0.85 e=switch2=ILAB0102.ILE0508.Is31{ILAB0102.ILE0508.net2656 ILAB0102.ILE0508.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree Fast_out_28<0> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0508.Ivi7{ILAB0102.ILE0508.net1859 Fast_out_28<0>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0408.C w=1.6 e=switch=ILAB0102.ILE0408.Is133{Fast_out_28<0> ILAB0102.ILE0408.C} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0408.A w=1.6 e=switch=ILAB0102.ILE0408.Is129{Fast_out_28<0> ILAB0102.ILE0408.A} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.ILE0308.A w=1.25 e=switch_sd=ILAB0102.ILE0308.Is120{Fast_out_28<0> ILAB0102.ILE0308.A} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.net24997 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0508.Ihi7{ILAB0102.ILE0508.net1844 ILAB0102.net24997} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0504.net1844 w=2.15 e=switch2=ILAB0102.ILE0504.Is31{ILAB0102.net24997 ILAB0102.ILE0504.net1844} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0308.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0308.Is41{ILAB0102.ILE0308.A ILAB0102.ILE0308.net2749} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0408.net2746 w=1.7 e=switch_ds=ILAB0102.ILE0408.Is44{ILAB0102.ILE0408.C ILAB0102.ILE0408.net2746} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0408.net2749 w=1.7 e=switch_ds=ILAB0102.ILE0408.Is41{ILAB0102.ILE0408.A ILAB0102.ILE0408.net2749} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree net17218<6> w=2.5 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0504.Ihi7{ILAB0102.ILE0504.net1844 net17218<6>} prev=[8] elemInv=1 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0102.ILE0508.net2670 w=0.55 e=switch2=ILAB0102.ILE0508.Is7{ILAB0102.ILE0508.net2656 ILAB0102.ILE0508.net2670} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0102.net19620 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0508.Ivo3{ILAB0102.ILE0508.net2670 ILAB0102.net19620} prev=[13] elemInv=1 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0102.ILE0608.C w=1.262 e=switch_sd=ILAB0102.ILE0608.Is108{ILAB0102.net19620 ILAB0102.ILE0608.C} prev=[14] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0102.ILE0608.net2746 w=1.374 e=switch_ds=ILAB0102.ILE0608.Is44{ILAB0102.ILE0608.C ILAB0102.ILE0608.net2746} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0102.ILE0501.B w=5 e=switch_sd=ILAB0102.ILE0501.Is19{net17218<6> ILAB0102.ILE0501.B} prev=[12] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0102.ILE0501.net01328 w=7.524 e=switch_ds=ILAB0102.ILE0501.Is58{ILAB0102.ILE0501.B ILAB0102.ILE0501.net01328} prev=[17] elemInv=0 pathInv=0 v.w=0.1
	 [19] xc_tree ILAB0102.ILE0501.net2680 w=8.398 e=switch2=ILAB0102.ILE0501.Is63{ILAB0102.ILE0501.net01328 ILAB0102.ILE0501.net2680} prev=[18] elemInv=0 pathInv=0 v.w=0.1
	 [20] xc_tree net17152<0> w=8.722 e=inv_8_UCCLAB=ILAB0102.ILE0501.I666{ILAB0102.ILE0501.net2680 net17152<0>} prev=[19] elemInv=1 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0102.net39858 w=9.596 e=buf4_12_UCCLAB=ILAB0102.I4367{net17152<0> ILAB0102.net39858} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0102.net27532 w=9.77 e=switch1=ILAB0102.I3551{ILAB0102.net27532 ILAB0102.net39858} prev=[21] elemInv=0 pathInv=1 v.w=0.1
	 [23] xc_tree LongBus_73<11> w=9.919 e=buftid52C_UCCLAB=ILAB0102.I4470{ILAB0102.net27532 LongBus_73<11>} prev=[22] elemInv=0 pathInv=1 v.w=0.1
	 [24] xc_tree IIO11.I4.net197 w=10.043 e=mux2i_P_UCCLAB=IIO11.I4.I16{LongBus_73<11> IIO11.I4.net197} prev=[23] elemInv=1 pathInv=0 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[14] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0606.net2656 ILAB0102.ILE0606.net0541 }
	 xc_pin xci2_ob a i [23] pinInv=0 { IIO11.I3.net197 }
	 xc_pin xci2_mux2h b i [10] pinInv=0 { ILAB0102.ILE0706.net2746 }
	 xc_pin xci2_xnor2 a i [11] pinInv=0 { ILAB0102.ILE0506.net2746 }
	 xc_pin xci2_xnor2 a i [12] pinInv=0 { ILAB0102.ILE0506.net2749 }
	 xc_pin xci2_dffcl d i [9] pinInv=0 { ILAB0102.ILE0406.net2749 }
	 [0] xc_tree ILAB0102.ILE0606.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0606.net1859 w=0.55 e=switch2=ILAB0102.ILE0606.Is119{ILAB0102.ILE0606.net2656 ILAB0102.ILE0606.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE0606.net2660 w=0.55 e=switch2=ILAB0102.ILE0606.Is23{ILAB0102.ILE0606.net2656 ILAB0102.ILE0606.net2660} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.net18229 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0606.Ivo1{ILAB0102.ILE0606.net2660 ILAB0102.net18229} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net18589 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0606.Ivi7{ILAB0102.ILE0606.net1859 ILAB0102.net18589} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0706.C w=1.25 e=switch_sd=ILAB0102.ILE0706.Is125{ILAB0102.net18229 ILAB0102.ILE0706.C} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.ILE0506.C w=1.6 e=switch=ILAB0102.ILE0506.Is133{ILAB0102.net18589 ILAB0102.ILE0506.C} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE0506.A w=1.6 e=switch=ILAB0102.ILE0506.Is129{ILAB0102.net18589 ILAB0102.ILE0506.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0406.A w=1.25 e=switch_sd=ILAB0102.ILE0406.Is120{ILAB0102.net18589 ILAB0102.ILE0406.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0406.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0406.Is41{ILAB0102.ILE0406.A ILAB0102.ILE0406.net2749} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0706.net2746 w=1.35 e=switch_ds=ILAB0102.ILE0706.Is44{ILAB0102.ILE0706.C ILAB0102.ILE0706.net2746} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0506.net2746 w=1.7 e=switch_ds=ILAB0102.ILE0506.Is44{ILAB0102.ILE0506.C ILAB0102.ILE0506.net2746} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE0506.net2749 w=1.7 e=switch_ds=ILAB0102.ILE0506.Is41{ILAB0102.ILE0506.A ILAB0102.ILE0506.net2749} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0102.net15682 w=2.85 e=switch=ILAB0102.ILE0706.Is13{ILAB0102.net15682 ILAB0102.ILE0706.C} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0102.ILE0703.net1844 w=3.7 e=switch2=ILAB0102.ILE0703.Is31{ILAB0102.net15682 ILAB0102.ILE0703.net1844} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree net17210<3> w=4 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0703.Ihi7{ILAB0102.ILE0703.net1844 net17210<3>} prev=[14] elemInv=1 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB0102.ILE0701.A w=6.1 e=switch_sd=ILAB0102.ILE0701.Is16{net17210<3> ILAB0102.ILE0701.A} prev=[15] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0102.ILE0701.net01328 w=8.6 e=switch_ds=ILAB0102.ILE0701.Is56{ILAB0102.ILE0701.A ILAB0102.ILE0701.net01328} prev=[16] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0102.ILE0701.net2680 w=9.45 e=switch2=ILAB0102.ILE0701.Is63{ILAB0102.ILE0701.net01328 ILAB0102.ILE0701.net2680} prev=[17] elemInv=0 pathInv=0 v.w=0.1
	 [19] xc_tree net17150<0> w=9.75 e=inv_8_UCCLAB=ILAB0102.ILE0701.I666{ILAB0102.ILE0701.net2680 net17150<0>} prev=[18] elemInv=1 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0102.net39618 w=10.6 e=buf4_12_UCCLAB=ILAB0102.I4395{net17150<0> ILAB0102.net39618} prev=[19] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0102.net27577 w=10.774 e=switch1=ILAB0102.I3482{ILAB0102.net27577 ILAB0102.net39618} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree LongBus_73<12> w=10.923 e=buftid52C_UCCLAB=ILAB0102.I4455{ILAB0102.net27577 LongBus_73<12>} prev=[21] elemInv=0 pathInv=1 v.w=0.1
	 [23] xc_tree IIO11.I3.net197 w=11.047 e=mux2i_P_UCCLAB=IIO11.I3.I16{LongBus_73<12> IIO11.I3.net197} prev=[22] elemInv=1 pathInv=0 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[13] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0605.net2656 ILAB0102.ILE0605.net0541 }
	 xc_pin xci2_ob a i [23] pinInv=0 { IIO11.I2.net197 }
	 xc_pin xci2_mux2h b i [12] pinInv=0 { ILAB0102.ILE0604.net2746 }
	 xc_pin xci2_xnor2 a i [9] pinInv=0 { ILAB0102.ILE0405.net2746 }
	 xc_pin xci2_xnor2 a i [11] pinInv=0 { ILAB0102.ILE0405.net2749 }
	 xc_pin xci2_dffcl d i [10] pinInv=0 { ILAB0102.ILE0305.net2749 }
	 [0] xc_tree ILAB0102.ILE0605.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0605.net1859 w=0.55 e=switch2=ILAB0102.ILE0605.Is119{ILAB0102.ILE0605.net2656 ILAB0102.ILE0605.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE0605.net1838 w=0.55 e=switch2=ILAB0102.ILE0605.Is47{ILAB0102.ILE0605.net2656 ILAB0102.ILE0605.net1838} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.net17663 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0605.Ihi5{ILAB0102.ILE0605.net1838 ILAB0102.net17663} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.net15799 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0605.Ivi7{ILAB0102.ILE0605.net1859 ILAB0102.net15799} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0604.C w=1.25 e=switch_sd=ILAB0102.ILE0604.Is28{ILAB0102.net17663 ILAB0102.ILE0604.C} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.ILE0305.A w=1.25 e=switch_sd=ILAB0102.ILE0305.Is121{ILAB0102.net15799 ILAB0102.ILE0305.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE0405.A w=1.25 e=switch_sd=ILAB0102.ILE0405.Is120{ILAB0102.net15799 ILAB0102.ILE0405.A} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0405.C w=1.25 e=switch_sd=ILAB0102.ILE0405.Is124{ILAB0102.net15799 ILAB0102.ILE0405.C} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0405.net2746 w=1.35 e=switch_ds=ILAB0102.ILE0405.Is44{ILAB0102.ILE0405.C ILAB0102.ILE0405.net2746} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0305.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0305.Is41{ILAB0102.ILE0305.A ILAB0102.ILE0305.net2749} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0405.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0405.Is41{ILAB0102.ILE0405.A ILAB0102.ILE0405.net2749} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE0604.net2746 w=1.35 e=switch_ds=ILAB0102.ILE0604.Is44{ILAB0102.ILE0604.C ILAB0102.ILE0604.net2746} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0102.net23558 w=2.85 e=switch=ILAB0102.ILE0305.Is25{ILAB0102.net23558 ILAB0102.ILE0305.A} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0102.ILE0303.net1832 w=3.7 e=switch2=ILAB0102.ILE0303.Is39{ILAB0102.net23558 ILAB0102.ILE0303.net1832} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree net17226<6> w=4 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0303.Ihi6{ILAB0102.ILE0303.net1832 net17226<6>} prev=[14] elemInv=1 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB0102.ILE0301.B w=6.1 e=switch_sd=ILAB0102.ILE0301.Is19{net17226<6> ILAB0102.ILE0301.B} prev=[15] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB0102.ILE0301.net01328 w=8.6 e=switch_ds=ILAB0102.ILE0301.Is58{ILAB0102.ILE0301.B ILAB0102.ILE0301.net01328} prev=[16] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0102.ILE0301.net2680 w=9.45 e=switch2=ILAB0102.ILE0301.Is63{ILAB0102.ILE0301.net01328 ILAB0102.ILE0301.net2680} prev=[17] elemInv=0 pathInv=0 v.w=0.1
	 [19] xc_tree net17154<0> w=9.75 e=inv_8_UCCLAB=ILAB0102.ILE0301.I666{ILAB0102.ILE0301.net2680 net17154<0>} prev=[18] elemInv=1 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0102.net38964 w=10.6 e=buf4_12_UCCLAB=ILAB0102.I4394{net17154<0> ILAB0102.net38964} prev=[19] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0102.net27580 w=10.774 e=switch1=ILAB0102.I3489{ILAB0102.net27580 ILAB0102.net38964} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree LongBus_73<13> w=10.923 e=buftid52C_UCCLAB=ILAB0102.I4454{ILAB0102.net27580 LongBus_73<13>} prev=[21] elemInv=0 pathInv=1 v.w=0.1
	 [23] xc_tree IIO11.I2.net197 w=11.047 e=mux2i_P_UCCLAB=IIO11.I2.I16{LongBus_73<13> IIO11.I2.net197} prev=[22] elemInv=1 pathInv=0 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[12] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0601.net2656 ILAB0102.ILE0601.net0541 }
	 xc_pin xci2_ob a i [22] pinInv=0 { IIO11.I1.net197 }
	 xc_pin xci2_mux2h b i [10] pinInv=0 { ILAB0102.ILE0602.net2746 }
	 xc_pin xci2_xnor2 a i [13] pinInv=0 { ILAB0102.ILE0402.net2746 }
	 xc_pin xci2_xnor2 a i [14] pinInv=0 { ILAB0102.ILE0402.net2749 }
	 xc_pin xci2_dffcl d i [19] pinInv=0 { ILAB0102.ILE0401.net2749 }
	 [0] xc_tree ILAB0102.ILE0601.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0601.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE0601.net1859 w=0.55 e=switch2=ILAB0102.ILE0601.Is119{ILAB0102.ILE0601.net2656 ILAB0102.ILE0601.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0601.net1850 w=0.7 e=switch2=ILAB0102.ILE0601.Is103{ILAB0102.ILE0601.net2656 ILAB0102.ILE0601.net1850} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0601.net2635 w=0.55 e=switch2=ILAB0102.ILE0601.Is135{ILAB0102.ILE0601.net2656 ILAB0102.ILE0601.net2635} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0102.net20614 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0601.Ivi7{ILAB0102.ILE0601.net1859 ILAB0102.net20614} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.net20588 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0601.Iho2{ILAB0102.ILE0601.net2635 ILAB0102.net20588} prev=[4] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.net20612 w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0601.Ivi5{ILAB0102.ILE0601.net1850 ILAB0102.net20612} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0602.C w=1.25 e=switch_sd=ILAB0102.ILE0602.Is28{ILAB0102.net20588 ILAB0102.ILE0602.C} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.net20723 w=2.55 e=switch=ILAB0102.ILE0401.Is52{ILAB0102.net20723 ILAB0102.net20612} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0602.net2746 w=1.35 e=switch_ds=ILAB0102.ILE0602.Is44{ILAB0102.ILE0602.C ILAB0102.ILE0602.net2746} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0402.C w=3.05 e=switch_sd=ILAB0102.ILE0402.Is28{ILAB0102.net20723 ILAB0102.ILE0402.C} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE0402.A w=3.05 e=switch_sd=ILAB0102.ILE0402.Is24{ILAB0102.net20723 ILAB0102.ILE0402.A} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0102.ILE0402.net2746 w=3.15 e=switch_ds=ILAB0102.ILE0402.Is44{ILAB0102.ILE0402.C ILAB0102.ILE0402.net2746} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0102.ILE0402.net2749 w=3.15 e=switch_ds=ILAB0102.ILE0402.Is41{ILAB0102.ILE0402.A ILAB0102.ILE0402.net2749} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0102.ILE0601.net2680 w=0.646 e=switch2=ILAB0102.ILE0601.Is63{ILAB0102.ILE0601.net0541 ILAB0102.ILE0601.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [16] xc_tree net17151<0> w=0.942 e=inv_8_UCCLAB=ILAB0102.ILE0601.I666{ILAB0102.ILE0601.net2680 net17151<0>} prev=[15] elemInv=1 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0102.ILE0401.A w=1.346 e=switch_sd=ILAB0102.ILE0401.Is120{ILAB0102.net20614 ILAB0102.ILE0401.A} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [18] xc_tree ILAB0102.net38382 w=1.888 e=buf4_12_UCCLAB=ILAB0102.I4412{net17151<0> ILAB0102.net38382} prev=[16] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0102.ILE0401.net2749 w=1.458 e=switch_ds=ILAB0102.ILE0401.Is41{ILAB0102.ILE0401.A ILAB0102.ILE0401.net2749} prev=[17] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0102.net27574 w=2.05 e=switch1=ILAB0102.I3844{ILAB0102.net27574 ILAB0102.net38382} prev=[18] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree LongBus_73<14> w=2.271 e=buftid52C_UCCLAB=ILAB0102.I4456{ILAB0102.net27574 LongBus_73<14>} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree IIO11.I1.net197 w=2.383 e=mux2i_P_UCCLAB=IIO11.I1.I16{LongBus_73<14> IIO11.I1.net197} prev=[21] elemInv=1 pathInv=0 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[11] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0801.net2656 ILAB0102.ILE0801.net0541 }
	 xc_pin xci2_ob a i [10] pinInv=0 { IIO11.I0.net197 }
	 xc_pin xci2_mux2h b i [17] pinInv=0 { ILAB0102.ILE0802.net2746 }
	 xc_pin xci2_xnor2 a i [21] pinInv=0 { ILAB0102.ILE0502.net2746 }
	 xc_pin xci2_xnor2 a i [22] pinInv=0 { ILAB0102.ILE0502.net2749 }
	 xc_pin xci2_dffcl d i [18] pinInv=0 { ILAB0102.ILE0501.net2749 }
	 [0] xc_tree ILAB0102.ILE0801.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0801.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0102.ILE0801.net1862 w=0.7 e=switch2=ILAB0102.ILE0801.Is111{ILAB0102.ILE0801.net2656 ILAB0102.ILE0801.net1862} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0801.net1859 w=0.55 e=switch2=ILAB0102.ILE0801.Is119{ILAB0102.ILE0801.net2656 ILAB0102.ILE0801.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0801.net2680 w=0.55 e=switch2=ILAB0102.ILE0801.Is63{ILAB0102.ILE0801.net0541 ILAB0102.ILE0801.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [5] xc_tree net17149<0> w=0.75 e=inv_8_UCCLAB=ILAB0102.ILE0801.I666{ILAB0102.ILE0801.net2680 net17149<0>} prev=[4] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.net20929 w=0.95 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0801.Ivi6{ILAB0102.ILE0801.net1862 ILAB0102.net20929} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.net39222 w=1.6 e=buf4_12_UCCLAB=ILAB0102.I4374{net17149<0> ILAB0102.net39222} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.net27514 w=1.75 e=switch1=ILAB0102.I3702{ILAB0102.net27514 ILAB0102.net39222} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree LongBus_73<15> w=1.875 e=buftid52C_UCCLAB=ILAB0102.I4476{ILAB0102.net27514 LongBus_73<15>} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree IIO11.I0.net197 w=1.975 e=mux2i_P_UCCLAB=IIO11.I0.I16{LongBus_73<15> IIO11.I0.net197} prev=[9] elemInv=1 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0801.net2635 w=0.55 e=switch2=ILAB0102.ILE0801.Is135{ILAB0102.ILE0801.net2656 ILAB0102.ILE0801.net2635} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0102.net20704 w=0.846 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0801.Ivi7{ILAB0102.ILE0801.net1859 ILAB0102.net20704} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0102.net20678 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0801.Iho2{ILAB0102.ILE0801.net2635 ILAB0102.net20678} prev=[11] elemInv=1 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0102.ILE0802.C w=1.262 e=switch_sd=ILAB0102.ILE0802.Is28{ILAB0102.net20678 ILAB0102.ILE0802.C} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0102.ILE0501.A w=1.442 e=switch_sd=ILAB0102.ILE0501.Is121{ILAB0102.net20704 ILAB0102.ILE0501.A} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0102.net20633 w=2.55 e=switch=ILAB0102.ILE0501.Is37{ILAB0102.net20633 ILAB0102.net20929} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0102.ILE0802.net2746 w=1.374 e=switch_ds=ILAB0102.ILE0802.Is44{ILAB0102.ILE0802.C ILAB0102.ILE0802.net2746} prev=[14] elemInv=0 pathInv=1 v.w=0.1
	 [18] xc_tree ILAB0102.ILE0501.net2749 w=1.554 e=switch_ds=ILAB0102.ILE0501.Is41{ILAB0102.ILE0501.A ILAB0102.ILE0501.net2749} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0102.ILE0502.C w=3.062 e=switch_sd=ILAB0102.ILE0502.Is28{ILAB0102.net20633 ILAB0102.ILE0502.C} prev=[16] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0102.ILE0502.A w=3.062 e=switch_sd=ILAB0102.ILE0502.Is24{ILAB0102.net20633 ILAB0102.ILE0502.A} prev=[16] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0102.ILE0502.net2746 w=3.174 e=switch_ds=ILAB0102.ILE0502.Is44{ILAB0102.ILE0502.C ILAB0102.ILE0502.net2746} prev=[19] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0102.ILE0502.net2749 w=3.174 e=switch_ds=ILAB0102.ILE0502.Is41{ILAB0102.ILE0502.A ILAB0102.ILE0502.net2749} prev=[20] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[10] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0404.net2656 ILAB0102.ILE0404.net0541 }
	 xc_pin xci2_ob a i [17] pinInv=0 { IIO10.I7.net197 }
	 xc_pin xci2_mux2h b i [21] pinInv=0 { ILAB0102.ILE0504.net2746 }
	 xc_pin xci2_xnor2 a i [8] pinInv=0 { ILAB0102.ILE0304.net2746 }
	 xc_pin xci2_xnor2 a i [9] pinInv=0 { ILAB0102.ILE0304.net2749 }
	 xc_pin xci2_dffcl d i [7] pinInv=0 { ILAB0102.ILE0204.net2749 }
	 [0] xc_tree ILAB0102.ILE0404.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0404.net1859 w=0.55 e=switch2=ILAB0102.ILE0404.Is119{ILAB0102.ILE0404.net2656 ILAB0102.ILE0404.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net10426<6> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0404.Ivi7{ILAB0102.ILE0404.net1859 net10426<6>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0104.C w=2.05 e=switch_sd=ILAB0102.ILE0104.Is125{net10426<6> ILAB0102.ILE0104.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0204.A w=1.25 e=switch_sd=ILAB0102.ILE0204.Is120{net10426<6> ILAB0102.ILE0204.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0304.C w=1.6 e=switch=ILAB0102.ILE0304.Is133{net10426<6> ILAB0102.ILE0304.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.ILE0304.A w=1.6 e=switch=ILAB0102.ILE0304.Is129{net10426<6> ILAB0102.ILE0304.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE0204.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0204.Is41{ILAB0102.ILE0204.A ILAB0102.ILE0204.net2749} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0304.net2746 w=1.7 e=switch_ds=ILAB0102.ILE0304.Is44{ILAB0102.ILE0304.C ILAB0102.ILE0304.net2746} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0304.net2749 w=1.7 e=switch_ds=ILAB0102.ILE0304.Is41{ILAB0102.ILE0304.A ILAB0102.ILE0304.net2749} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0104.net01328 w=4.55 e=switch_ds=ILAB0102.ILE0104.Is60{ILAB0102.ILE0104.C ILAB0102.ILE0104.net01328} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0104.net2680 w=5.55 e=switch2=ILAB0102.ILE0104.Is63{ILAB0102.ILE0104.net01328 ILAB0102.ILE0104.net2680} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.net22856 w=5.9 e=inv_8_UCCLAB=ILAB0102.ILE0104.I666{ILAB0102.ILE0104.net2680 ILAB0102.net22856} prev=[11] elemInv=1 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0102.net37425 w=7 e=buf4_12_UCCLAB=ILAB0102.I4378{ILAB0102.net22856 ILAB0102.net37425} prev=[12] elemInv=0 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0102.net40048 w=7.175 e=switch1=ILAB0102.I4301{ILAB0102.net40048 ILAB0102.net37425} prev=[13] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree LongBus_0<0> w=7.575 e=buftd52C_UCCLAB=ILAB0102.I4435{ILAB0102.net40048 LongBus_0<0>} prev=[14] elemInv=0 pathInv=0 v.w=0.1
	 [16] xc_tree LongBus_78<0> w=7.825 e=buftd52_UCCLAB=ILAB0101.I4773.I1{LongBus_0<0> LongBus_78<0>} prev=[15] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree IIO10.I7.net197 w=7.925 e=mux2i_P_UCCLAB=IIO10.I7.I16{LongBus_78<0> IIO10.I7.net197} prev=[16] elemInv=1 pathInv=1 v.w=0.1
	 [18] xc_tree ILAB0102.ILE0404.net2670 w=0.55 e=switch2=ILAB0102.ILE0404.Is7{ILAB0102.ILE0404.net2656 ILAB0102.ILE0404.net2670} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [19] xc_tree ILAB0102.net25020 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0404.Ivo3{ILAB0102.ILE0404.net2670 ILAB0102.net25020} prev=[18] elemInv=1 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0102.ILE0504.C w=1.286 e=switch_sd=ILAB0102.ILE0504.Is108{ILAB0102.net25020 ILAB0102.ILE0504.C} prev=[19] elemInv=0 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0102.ILE0504.net2746 w=1.422 e=switch_ds=ILAB0102.ILE0504.Is44{ILAB0102.ILE0504.C ILAB0102.ILE0504.net2746} prev=[20] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree adc_rd.ch1_acc[0] {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0102.ILE0403.net2656 ILAB0102.ILE0403.net0541 }
	 xc_pin xci2_ob a i [18] pinInv=0 { IIO10.I6.net197 }
	 xc_pin xci2_mux2h b i [22] pinInv=0 { ILAB0102.ILE0503.net2746 }
	 xc_pin xci2_xnor2 a i [8] pinInv=0 { ILAB0102.ILE0203.net2746 }
	 xc_pin xci2_xnor2 a i [7] pinInv=0 { ILAB0102.ILE0203.net2749 }
	 xc_pin xci2_dffcl d i [11] pinInv=0 { ILAB0102.ILE0202.net2749 }
	 [0] xc_tree ILAB0102.ILE0403.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0102.ILE0403.net1859 w=0.55 e=switch2=ILAB0102.ILE0403.Is119{ILAB0102.ILE0403.net2656 ILAB0102.ILE0403.net1859} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree net10430<6> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0403.Ivi7{ILAB0102.ILE0403.net1859 net10430<6>} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0102.ILE0203.A w=1.25 e=switch_sd=ILAB0102.ILE0203.Is120{net10430<6> ILAB0102.ILE0203.A} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0102.ILE0203.C w=1.25 e=switch_sd=ILAB0102.ILE0203.Is124{net10430<6> ILAB0102.ILE0203.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB0102.ILE0103.C w=2.05 e=switch_sd=ILAB0102.ILE0103.Is125{net10430<6> ILAB0102.ILE0103.C} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0102.net16943 w=2.85 e=switch=ILAB0102.ILE0203.Is25{ILAB0102.net16943 ILAB0102.ILE0203.A} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0102.ILE0203.net2749 w=1.35 e=switch_ds=ILAB0102.ILE0203.Is41{ILAB0102.ILE0203.A ILAB0102.ILE0203.net2749} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0102.ILE0203.net2746 w=1.35 e=switch_ds=ILAB0102.ILE0203.Is44{ILAB0102.ILE0203.C ILAB0102.ILE0203.net2746} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0102.ILE0103.net01328 w=4.55 e=switch_ds=ILAB0102.ILE0103.Is60{ILAB0102.ILE0103.C ILAB0102.ILE0103.net01328} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0202.A w=3.35 e=switch_sd=ILAB0102.ILE0202.Is24{ILAB0102.net16943 ILAB0102.ILE0202.A} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0202.net2749 w=3.45 e=switch_ds=ILAB0102.ILE0202.Is41{ILAB0102.ILE0202.A ILAB0102.ILE0202.net2749} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE0103.net2680 w=5.4 e=switch2=ILAB0102.ILE0103.Is63{ILAB0102.ILE0103.net01328 ILAB0102.ILE0103.net2680} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0102.net26726 w=5.7 e=inv_8_UCCLAB=ILAB0102.ILE0103.I666{ILAB0102.ILE0103.net2680 ILAB0102.net26726} prev=[12] elemInv=1 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0102.net40017 w=6.8 e=buf4_12_UCCLAB=ILAB0102.I4362{ILAB0102.net26726 ILAB0102.net40017} prev=[13] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0102.net37363 w=6.975 e=switch1=ILAB0102.I3768{ILAB0102.net37363 ILAB0102.net40017} prev=[14] elemInv=0 pathInv=0 v.w=0.1
	 [16] xc_tree LongBus_0<1> w=7.375 e=buftd52C_UCCLAB=ILAB0102.I4442{ILAB0102.net37363 LongBus_0<1>} prev=[15] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree LongBus_78<1> w=7.625 e=buftd52_UCCLAB=ILAB0101.I4773.I4{LongBus_0<1> LongBus_78<1>} prev=[16] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree IIO10.I6.net197 w=7.725 e=mux2i_P_UCCLAB=IIO10.I6.I16{LongBus_78<1> IIO10.I6.net197} prev=[17] elemInv=1 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0102.ILE0403.net2695 w=0.55 e=switch2=ILAB0102.ILE0403.Is15{ILAB0102.ILE0403.net2656 ILAB0102.ILE0403.net2695} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [20] xc_tree ILAB0102.net17687 w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0403.Ivo2{ILAB0102.ILE0403.net2695 ILAB0102.net17687} prev=[19] elemInv=1 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB0102.ILE0503.C w=1.262 e=switch_sd=ILAB0102.ILE0503.Is116{ILAB0102.net17687 ILAB0102.ILE0503.C} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0102.ILE0503.net2746 w=1.374 e=switch_ds=ILAB0102.ILE0503.Is44{ILAB0102.ILE0503.C ILAB0102.ILE0503.net2746} prev=[21] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree XC_O_sclk {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB1001.ILE1410.net2656 ILAB1001.ILE1410.net0541 }
	 xc_pin xci2_ob a i [66] pinInv=0 { IIO10.I4.net197 }
	 xc_pin xci2_inv a i [11] pinInv=0 { ILAB1001.ILE1403.net2749 }
	 xc_pin xci2_dffcl clk i [137] pinInv=0 { ILAB0102.ILE1502.net2743 }
	 xc_pin xci2_dffcl clk i [174] pinInv=0 { ILAB0102.ILE0806.net2743 }
	 xc_pin xci2_dffcl clk i [147] pinInv=0 { ILAB0102.ILE1014.net2743 }
	 xc_pin xci2_dffcl clk i [115] pinInv=0 { ILAB0103.ILE1002.net2743 }
	 xc_pin xci2_dffcl clk i [116] pinInv=0 { ILAB0103.ILE1202.net2743 }
	 xc_pin xci2_dffcl clk i [120] pinInv=0 { ILAB0103.ILE0802.net2743 }
	 xc_pin xci2_dffcl clk i [142] pinInv=0 { ILAB0102.ILE1015.net2743 }
	 xc_pin xci2_dffcl clk i [119] pinInv=0 { ILAB0103.ILE0902.net2743 }
	 xc_pin xci2_dffcl clk i [143] pinInv=0 { ILAB0102.ILE0715.net2743 }
	 xc_pin xci2_dffcl clk i [146] pinInv=0 { ILAB0102.ILE0810.net2743 }
	 xc_pin xci2_dffcl clk i [140] pinInv=0 { ILAB0102.ILE1007.net2743 }
	 xc_pin xci2_dffcl clk i [136] pinInv=0 { ILAB0102.ILE1102.net2743 }
	 xc_pin xci2_dffcl clk i [138] pinInv=0 { ILAB0102.ILE0902.net2743 }
	 xc_pin xci2_dffcl clk i [184] pinInv=0 { ILAB0102.ILE0703.net2743 }
	 xc_pin xci2_dffcl clk i [182] pinInv=0 { ILAB0102.ILE0705.net2743 }
	 xc_pin xci2_dffcl clk i [160] pinInv=0 { ILAB0102.ILE0708.net2743 }
	 xc_pin xci2_dffcl clk i [145] pinInv=0 { ILAB0102.ILE0910.net2743 }
	 xc_pin xci2_dffcl clk i [141] pinInv=0 { ILAB0102.ILE1210.net2743 }
	 xc_pin xci2_dffcl clk i [159] pinInv=0 { ILAB0102.ILE1406.net2743 }
	 xc_pin xci2_dffcl clk i [171] pinInv=0 { ILAB0102.ILE1408.net2743 }
	 xc_pin xci2_dffcl clk i [178] pinInv=0 { ILAB0102.ILE1416.net2743 }
	 xc_pin xci2_dffcl clk i [117] pinInv=0 { ILAB0103.ILE1302.net2743 }
	 xc_pin xci2_dffcl clk i [168] pinInv=0 { ILAB0102.ILE1414.net2743 }
	 xc_pin xci2_dffcl clk i [149] pinInv=0 { ILAB0102.ILE1004.net2743 }
	 xc_pin xci2_dffcl clk i [77] pinInv=0 { ILAB0401.ILE0113.net2743 }
	 xc_pin xci2_dffcl clk i [73] pinInv=0 { ILAB0401.ILE0312.net2743 }
	 xc_pin xci2_dffcl clk i [76] pinInv=0 { ILAB0401.ILE0313.net2743 }
	 xc_pin xci2_dffcl clk i [78] pinInv=0 { ILAB0401.ILE0716.net2743 }
	 xc_pin xci2_dffcl clk i [82] pinInv=0 { ILAB0402.ILE0502.net2743 }
	 xc_pin xci2_dffcl clk i [80] pinInv=0 { ILAB0402.ILE0202.net2743 }
	 xc_pin xci2_dffcl clk i [81] pinInv=0 { ILAB0402.ILE0102.net2743 }
	 xc_pin xci2_dff clk i [113] pinInv=0 { ILAB0101.ILE0916.net2743 }
	 xc_pin xci2_dffcl clk i [79] pinInv=0 { ILAB0401.ILE0814.net2743 }
	 xc_pin xci2_dffcl clk i [75] pinInv=0 { ILAB0401.ILE1014.net2743 }
	 xc_pin xci2_dffcl clk i [74] pinInv=0 { ILAB0401.ILE0710.net2743 }
	 xc_pin xci2_dffcl clk i [114] pinInv=0 { ILAB0201.ILE0314.net2743 }
	 xc_pin xci2_dffcl clk i [167] pinInv=0 { ILAB0102.ILE0403.net2743 }
	 xc_pin xci2_dffcl clk i [154] pinInv=0 { ILAB0102.ILE0714.net2743 }
	 xc_pin xci2_dffcl clk i [153] pinInv=0 { ILAB0102.ILE0515.net2743 }
	 xc_pin xci2_dffcl clk i [125] pinInv=0 { ILAB0103.ILE1004.net2743 }
	 xc_pin xci2_dffcl clk i [118] pinInv=0 { ILAB0103.ILE0602.net2743 }
	 xc_pin xci2_dffcl clk i [130] pinInv=0 { ILAB0103.ILE0503.net2743 }
	 xc_pin xci2_dffcl clk i [123] pinInv=0 { ILAB0103.ILE0904.net2743 }
	 xc_pin xci2_dffcl clk i [133] pinInv=0 { ILAB0103.ILE0704.net2743 }
	 xc_pin xci2_dffcl clk i [127] pinInv=0 { ILAB0103.ILE0401.net2743 }
	 xc_pin xci2_dffcl clk i [156] pinInv=0 { ILAB0102.ILE0611.net2743 }
	 xc_pin xci2_dffcl clk i [185] pinInv=0 { ILAB0102.ILE0404.net2743 }
	 xc_pin xci2_dffcl clk i [162] pinInv=0 { ILAB0102.ILE0801.net2743 }
	 xc_pin xci2_dffcl clk i [164] pinInv=0 { ILAB0102.ILE0601.net2743 }
	 xc_pin xci2_dffcl clk i [183] pinInv=0 { ILAB0102.ILE0605.net2743 }
	 xc_pin xci2_dffcl clk i [175] pinInv=0 { ILAB0102.ILE0606.net2743 }
	 xc_pin xci2_dffcl clk i [172] pinInv=0 { ILAB0102.ILE0508.net2743 }
	 xc_pin xci2_dffcl clk i [144] pinInv=0 { ILAB0102.ILE0610.net2743 }
	 xc_pin xci2_dffcl clk i [155] pinInv=0 { ILAB0102.ILE1012.net2743 }
	 xc_pin xci2_dffcl clk i [180] pinInv=0 { ILAB0102.ILE1307.net2743 }
	 xc_pin xci2_dffcl clk i [157] pinInv=0 { ILAB0102.ILE1212.net2743 }
	 xc_pin xci2_dffcl clk i [126] pinInv=0 { ILAB0103.ILE1204.net2743 }
	 xc_pin xci2_dffcl clk i [132] pinInv=0 { ILAB0103.ILE1103.net2743 }
	 xc_pin xci2_dffcl clk i [158] pinInv=0 { ILAB0102.ILE1216.net2743 }
	 xc_pin xci2_dffcl clk i [151] pinInv=0 { ILAB0102.ILE0813.net2743 }
	 xc_pin xci2_dffcl clk i [83] pinInv=0 { ILAB0302.ILE1501.net2743 }
	 xc_pin xci2_dffcl clk i [112] pinInv=0 { ILAB0101.ILE0215.net2743 }
	 xc_pin xci2_dffcl clk i [135] pinInv=0 { ILAB0102.ILE0202.net2743 }
	 xc_pin xci2_dffcl clk i [176] pinInv=0 { ILAB0102.ILE0513.net2743 }
	 xc_pin xci2_dffcl clk i [181] pinInv=0 { ILAB0102.ILE0516.net2743 }
	 xc_pin xci2_dffcl clk i [122] pinInv=0 { ILAB0103.ILE0804.net2743 }
	 xc_pin xci2_dffcl clk i [128] pinInv=0 { ILAB0103.ILE0701.net2743 }
	 xc_pin xci2_dffcl clk i [129] pinInv=0 { ILAB0103.ILE0403.net2743 }
	 xc_pin xci2_dffcl clk i [121] pinInv=0 { ILAB0103.ILE0604.net2743 }
	 xc_pin xci2_dffcl clk i [134] pinInv=0 { ILAB0103.ILE0404.net2743 }
	 xc_pin xci2_dffcl clk i [131] pinInv=0 { ILAB0103.ILE0201.net2743 }
	 xc_pin xci2_dffcl clk i [165] pinInv=0 { ILAB0102.ILE0511.net2743 }
	 xc_pin xci2_dffcl clk i [166] pinInv=0 { ILAB0102.ILE0204.net2743 }
	 xc_pin xci2_dffcl clk i [163] pinInv=0 { ILAB0102.ILE0501.net2743 }
	 xc_pin xci2_dffcl clk i [161] pinInv=0 { ILAB0102.ILE0401.net2743 }
	 xc_pin xci2_dffcl clk i [148] pinInv=0 { ILAB0102.ILE0305.net2743 }
	 xc_pin xci2_dffcl clk i [177] pinInv=0 { ILAB0102.ILE0406.net2743 }
	 xc_pin xci2_dffcl clk i [186] pinInv=0 { ILAB0102.ILE0308.net2743 }
	 xc_pin xci2_dffcl clk i [139] pinInv=0 { ILAB0102.ILE0310.net2743 }
	 xc_pin xci2_dffcl clk i [170] pinInv=0 { ILAB0102.ILE0612.net2743 }
	 xc_pin xci2_dffcl clk i [179] pinInv=0 { ILAB0102.ILE0707.net2743 }
	 xc_pin xci2_dffcl clk i [150] pinInv=0 { ILAB0102.ILE0213.net2743 }
	 xc_pin xci2_dffcl clk i [124] pinInv=0 { ILAB0103.ILE0303.net2743 }
	 xc_pin xci2_dffcl clk i [152] pinInv=0 { ILAB0102.ILE0316.net2743 }
	 xc_pin xci2_dffcl clk i [173] pinInv=0 { ILAB0102.ILE0716.net2743 }
	 xc_pin xci2_dffcl clk i [169] pinInv=0 { ILAB0102.ILE0514.net2743 }
	 [0] xc_tree ILAB1001.ILE1410.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB1001.ILE1410.net2685 w=1 e=switch2=ILAB1001.ILE1410.Is127{ILAB1001.ILE1410.net2656 ILAB1001.ILE1410.net2685} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB1001.ILE1410.net1844 w=0.85 e=switch2=ILAB1001.ILE1410.Is31{ILAB1001.ILE1410.net2656 ILAB1001.ILE1410.net1844} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB1001.net21127 w=1.15 e=sw_b_v2_inv_UCCLAB=ILAB1001.ILE1410.Ihi7{ILAB1001.ILE1410.net1844 ILAB1001.net21127} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB1001.net24007 w=1.4 e=sw_b_v2_inv_UCCLAB=ILAB1001.ILE1410.Iho1{ILAB1001.ILE1410.net2685 ILAB1001.net24007} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree ILAB1001.ILE1406.net1844 w=1.7 e=switch2=ILAB1001.ILE1406.Is31{ILAB1001.net21127 ILAB1001.ILE1406.net1844} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB1001.ILE1414.net2685 w=2.4 e=switch2=ILAB1001.ILE1414.Is127{ILAB1001.net24007 ILAB1001.ILE1414.net2685} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB1001.net26302 w=1.9 e=sw_b_v2_inv_UCCLAB=ILAB1001.ILE1406.Ihi7{ILAB1001.ILE1406.net1844 ILAB1001.net26302} prev=[5] elemInv=1 pathInv=0 v.w=0.1
	 [8] xc_tree ELLR1_9<5> w=4.25 e=switch=ILAB1001.ILE1402.Is35{ILAB1001.net26302 ELLR1_9<5>} prev=[7] elemInv=0 pathInv=0 v.w=0.1
	 [9] xc_tree ILAB1001.ILE1403.A w=2.4 e=switch_sd=ILAB1001.ILE1403.Is17{ILAB1001.net26302 ILAB1001.ILE1403.A} prev=[7] elemInv=0 pathInv=0 v.w=0.1
	 [10] xc_tree net16578<1> w=2.8 e=sw_b_v2_inv_UCCLAB=ILAB1001.ILE1414.Iho1{ILAB1001.ILE1414.net2685 net16578<1>} prev=[6] elemInv=1 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB1001.ILE1403.net2749 w=2.5 e=switch_ds=ILAB1001.ILE1403.Is41{ILAB1001.ILE1403.A ILAB1001.ILE1403.net2749} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB1001.ILE1416.A w=5.3 e=switch_sd=ILAB1001.ILE1416.Is16{net16578<1> ILAB1001.ILE1416.A} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB1001.ILE1602.B w=5.95 e=switch_sd=ILAB1001.ILE1602.Is122{ELLR1_9<5> ILAB1001.ILE1602.B} prev=[8] elemInv=0 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB1001.ILE1416.net01328 w=7.8 e=switch_ds=ILAB1001.ILE1416.Is56{ILAB1001.ILE1416.A ILAB1001.ILE1416.net01328} prev=[12] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB1001.ILE1602.net01328 w=8.45 e=switch_ds=ILAB1001.ILE1602.Is58{ILAB1001.ILE1602.B ILAB1001.ILE1602.net01328} prev=[13] elemInv=0 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB1001.ILE1416.net2680 w=8.8 e=switch2=ILAB1001.ILE1416.Is63{ILAB1001.ILE1416.net01328 ILAB1001.ILE1416.net2680} prev=[14] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree ILAB1001.ILE1602.net2680 w=9.3 e=switch2=ILAB1001.ILE1602.Is63{ILAB1001.ILE1602.net01328 ILAB1001.ILE1602.net2680} prev=[15] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree net16539<1> w=9.2 e=inv_8_UCCLAB=ILAB1001.ILE1416.I666{ILAB1001.ILE1416.net2680 net16539<1>} prev=[16] elemInv=1 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB1001.net27361 w=10.55 e=buf4_12_UCCLAB=ILAB1001.I4369{net16539<1> ILAB1001.net27361} prev=[18] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB1001.net20561 w=9.6 e=inv_8_UCCLAB=ILAB1001.ILE1602.I666{ILAB1001.ILE1602.net2680 ILAB1001.net20561} prev=[17] elemInv=1 pathInv=1 v.w=0.1
	 [21] xc_tree ILAB1001.net027166 w=9.76 e=buftd4_UCCLAB=ILAB1001.I231{ILAB1001.net20561 ILAB1001.net027166} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB1001.net027160 w=9.76 e=buftd4_UCCLAB=ILAB1001.I233{ILAB1001.net20561 ILAB1001.net027160} prev=[20] elemInv=0 pathInv=1 v.w=0.1
	 [23] xc_tree ILAB1001.I5605.net25 w=9.8625 e=mux2p_2_UCCLAB=ILAB1001.I5605.I4{ILAB1001.net027166 ILAB1001.I5605.net25} prev=[21] elemInv=0 pathInv=1 v.w=0.1
	 [24] xc_tree ILAB1001.I5605.net21 w=9.8625 e=mux2p_2_UCCLAB=ILAB1001.I5605.I7{ILAB1001.net027160 ILAB1001.I5605.net21} prev=[22] elemInv=0 pathInv=1 v.w=0.1
	 [25] xc_tree ILAB1001.Clk_int<0> w=9.9645 e=invd16_seth_UCCLAB=ILAB1001.I5605.I6{ILAB1001.I5605.net21 ILAB1001.Clk_int<0>} prev=[24] elemInv=1 pathInv=0 v.w=0.1
	 [26] xc_tree ILAB1001.Clk_int<1> w=9.9645 e=invd16_seth_UCCLAB=ILAB1001.I5605.I5{ILAB1001.I5605.net25 ILAB1001.Clk_int<1>} prev=[23] elemInv=1 pathInv=0 v.w=0.1
	 [27] xc_tree ILAB1001.I5366.net0119 w=10.0675 e=mux2p_2_UCCLAB=ILAB1001.I5366.I82{ILAB1001.Clk_int<0> ILAB1001.I5366.net0119} prev=[25] elemInv=0 pathInv=0 v.w=0.1
	 [28] xc_tree ILAB1001.I5366.net0122 w=10.0675 e=mux2p_2_UCCLAB=ILAB1001.I5366.I83{ILAB1001.Clk_int<1> ILAB1001.I5366.net0122} prev=[26] elemInv=0 pathInv=0 v.w=0.1
	 [29] xc_tree net16523<1> w=10.1705 e=invtd56_clk_UCCLAB=ILAB1001.I5366.I6{ILAB1001.I5366.net0119 net16523<1>} prev=[27] elemInv=1 pathInv=1 v.w=0.1
	 [30] xc_tree net16523<0> w=10.1705 e=invtd56_clk_UCCLAB=ILAB1001.I5366.I8{ILAB1001.I5366.net0122 net16523<0>} prev=[28] elemInv=1 pathInv=1 v.w=0.1
	 [31] xc_tree net10305<1> w=10.2735 e=invtd56_UCCLAB=I3706.I4{net16523<1> net10305<1>} prev=[29] elemInv=1 pathInv=0 v.w=0.1
	 [32] xc_tree net10305<0> w=10.2735 e=invtd56_UCCLAB=I3706.I3{net16523<0> net10305<0>} prev=[30] elemInv=1 pathInv=0 v.w=0.1
	 [33] xc_tree I3590.net052 w=10.4035 e=mux2_1_clk_P_UCCLAB=I3590.I21{net10305<1> I3590.net052} prev=[31] elemInv=0 pathInv=0 v.w=0.1
	 [34] xc_tree I3590.net073 w=10.4035 e=mux2_1_clk_P_UCCLAB=I3590.I16{net10305<0> I3590.net073} prev=[32] elemInv=0 pathInv=0 v.w=0.1
	 [35] xc_tree I3590.net059 w=10.4035 e=mux2_1_clk_P_UCCLAB=I3590.I20{net10305<0> I3590.net059} prev=[32] elemInv=0 pathInv=0 v.w=0.1
	 [36] xc_tree I3590.net84 w=10.5065 e=mux4p_0_UCCLAB=I3590.I12{I3590.net073 I3590.net84} prev=[34] elemInv=0 pathInv=0 v.w=0.1
	 [37] xc_tree I3590.net72 w=10.5065 e=mux4p_0_UCCLAB=I3590.I14{I3590.net059 I3590.net72} prev=[35] elemInv=0 pathInv=0 v.w=0.1
	 [38] xc_tree I3590.net66 w=10.5065 e=mux4p_0_UCCLAB=I3590.I15{I3590.net052 I3590.net66} prev=[33] elemInv=0 pathInv=0 v.w=0.1
	 [39] xc_tree net10262<0> w=10.6365 e=invtd56_pd_clk_UCCLAB=I3590.I0{I3590.net84 net10262<0>} prev=[36] elemInv=1 pathInv=1 v.w=0.1
	 [40] xc_tree net10262<2> w=10.6365 e=invtd56_pd_clk_UCCLAB=I3590.I7{I3590.net72 net10262<2>} prev=[37] elemInv=1 pathInv=1 v.w=0.1
	 [41] xc_tree net10262<3> w=10.6365 e=invtd56_pd_clk_UCCLAB=I3590.I9{I3590.net66 net10262<3>} prev=[38] elemInv=1 pathInv=1 v.w=0.1
	 [42] xc_tree ILAB1001.net39433 w=10.75 e=switch1=ILAB1001.I4263{ILAB1001.net39433 ILAB1001.net27361} prev=[19] elemInv=0 pathInv=1 v.w=0.1
	 [43] xc_tree I3689.net39 w=10.7395 e=mux2p_2_UCCLAB=I3689.I3{net10262<2> I3689.net39} prev=[40] elemInv=0 pathInv=1 v.w=0.1
	 [44] xc_tree I3690.net47 w=10.7395 e=mux2p_2_UCCLAB=I3690.I6{net10262<0> I3690.net47} prev=[39] elemInv=0 pathInv=1 v.w=0.1
	 [45] xc_tree I3689.net35 w=10.7395 e=mux2p_2_UCCLAB=I3689.I2{net10262<3> I3689.net35} prev=[41] elemInv=0 pathInv=1 v.w=0.1
	 [46] xc_tree net20977<2> w=10.8695 e=invtd56_pd_clk_UCCLAB=I3689.I7{I3689.net39 net20977<2>} prev=[43] elemInv=1 pathInv=0 v.w=0.1
	 [47] xc_tree net20974<0> w=10.8695 e=invtd56_pd_clk_UCCLAB=I3690.I0{I3690.net47 net20974<0>} prev=[44] elemInv=1 pathInv=0 v.w=0.1
	 [48] xc_tree net20977<3> w=10.8695 e=invtd56_pd_clk_UCCLAB=I3689.I9{I3689.net35 net20977<3>} prev=[45] elemInv=1 pathInv=0 v.w=0.1
	 [49] xc_tree LongBus_21<3> w=10.925 e=buftid52C_UCCLAB=ILAB1001.I4419{ILAB1001.net39433 LongBus_21<3>} prev=[42] elemInv=0 pathInv=1 v.w=0.1
	 [50] xc_tree net16222<2> w=10.9995 e=invtd56_pd_clk_UCCLAB=I3648.I3{net20977<2> net16222<2>} prev=[46] elemInv=1 pathInv=1 v.w=0.1
	 [51] xc_tree net16222<3> w=10.9995 e=invtd56_pd_clk_UCCLAB=I3648.I4{net20977<3> net16222<3>} prev=[48] elemInv=1 pathInv=1 v.w=0.1
	 [52] xc_tree net8320<12> w=11.325 e=buftd52C_UCCLAB=I1803.I9{LongBus_21<3> net8320<12>} prev=[49] elemInv=0 pathInv=1 v.w=0.1
	 [53] xc_tree ILAB0402.I5366.net70 w=11.1295 e=nand2_1_UCCLAB=ILAB0402.I5366.I71{net16222<2> ILAB0402.I5366.net70} prev=[50] elemInv=1 pathInv=0 v.w=0.1
	 [54] xc_tree ILAB0302.I5366.net70 w=11.1295 e=nand2_1_UCCLAB=ILAB0302.I5366.I71{net16222<2> ILAB0302.I5366.net70} prev=[50] elemInv=1 pathInv=0 v.w=0.1
	 [55] xc_tree ILAB0401.I5366.net64 w=11.1295 e=nand2_1_UCCLAB=ILAB0401.I5366.I0{net16222<3> ILAB0401.I5366.net64} prev=[51] elemInv=1 pathInv=0 v.w=0.1
	 [56] xc_tree ILAB0302.I5366.net0130 w=11.2545 e=switch2_clk=ILAB0302.I5366.I65{ILAB0302.I5366.net70 ILAB0302.I5366.net0130} prev=[54] elemInv=0 pathInv=0 v.w=0.1
	 [57] xc_tree ILAB0402.I5366.net0130 w=11.2545 e=switch2_clk=ILAB0402.I5366.I65{ILAB0402.I5366.net70 ILAB0402.I5366.net0130} prev=[53] elemInv=0 pathInv=0 v.w=0.1
	 [58] xc_tree ILAB0401.I5366.net0127 w=11.2545 e=switch2_clk=ILAB0401.I5366.I63{ILAB0401.I5366.net64 ILAB0401.I5366.net0127} prev=[55] elemInv=0 pathInv=0 v.w=0.1
	 [59] xc_tree ILAB0302.I5366.net0133 w=11.3745 e=switch2_clk=ILAB0302.I5366.I68{ILAB0302.I5366.net0130 ILAB0302.I5366.net0133} prev=[56] elemInv=0 pathInv=0 v.w=0.1
	 [60] xc_tree ILAB0401.I5366.net0124 w=11.3745 e=switch2_clk=ILAB0401.I5366.I64{ILAB0401.I5366.net0127 ILAB0401.I5366.net0124} prev=[58] elemInv=0 pathInv=0 v.w=0.1
	 [61] xc_tree ILAB0402.I5366.net0133 w=11.3745 e=switch2_clk=ILAB0402.I5366.I68{ILAB0402.I5366.net0130 ILAB0402.I5366.net0133} prev=[57] elemInv=0 pathInv=0 v.w=0.1
	 [62] xc_tree LongBus_78<3> w=11.575 e=buftd52C_UCCLAB=I3740.I9{net8320<12> LongBus_78<3>} prev=[52] elemInv=0 pathInv=1 v.w=0.1
	 [63] xc_tree ILAB0302.I5366.net0110 w=11.6245 e=mux2d1i_1_P_UCCLAB=ILAB0302.I5366.I79{ILAB0302.I5366.net0133 ILAB0302.I5366.net0110} prev=[59] elemInv=1 pathInv=1 v.w=0.1
	 [64] xc_tree ILAB0401.I5366.net0114 w=11.6245 e=mux2d1i_1_P_UCCLAB=ILAB0401.I5366.I78{ILAB0401.I5366.net0124 ILAB0401.I5366.net0114} prev=[60] elemInv=1 pathInv=1 v.w=0.1
	 [65] xc_tree ILAB0402.I5366.net0110 w=11.6245 e=mux2d1i_1_P_UCCLAB=ILAB0402.I5366.I79{ILAB0402.I5366.net0133 ILAB0402.I5366.net0110} prev=[61] elemInv=1 pathInv=1 v.w=0.1
	 [66] xc_tree IIO10.I4.net197 w=11.675 e=mux2i_P_UCCLAB=IIO10.I4.I16{LongBus_78<3> IIO10.I4.net197} prev=[62] elemInv=1 pathInv=0 v.w=0.1
	 [67] xc_tree ILAB0402.net15299<2> w=11.7345 e=invd52_UCCLAB=ILAB0402.I5366.I75{ILAB0402.I5366.net0110 ILAB0402.net15299<2>} prev=[65] elemInv=1 pathInv=0 v.w=0.1
	 [68] xc_tree ILAB0302.net15299<2> w=11.7345 e=invd52_UCCLAB=ILAB0302.I5366.I75{ILAB0302.I5366.net0110 ILAB0302.net15299<2>} prev=[63] elemInv=1 pathInv=0 v.w=0.1
	 [69] xc_tree ILAB0401.net15299<3> w=11.7345 e=invd52_UCCLAB=ILAB0401.I5366.I74{ILAB0401.I5366.net0114 ILAB0401.net15299<3>} prev=[64] elemInv=1 pathInv=0 v.w=0.1
	 [70] xc_tree ILAB0402.Clk_LAB<1> w=11.835 e=invd32_UCCLAB=ILAB0402.I5591.I2{ILAB0402.net15299<2> ILAB0402.Clk_LAB<1>} prev=[67] elemInv=1 pathInv=1 v.w=0.1
	 [71] xc_tree ILAB0302.Clk_LAB<1> w=11.835 e=invd32_UCCLAB=ILAB0302.I5591.I2{ILAB0302.net15299<2> ILAB0302.Clk_LAB<1>} prev=[68] elemInv=1 pathInv=1 v.w=0.1
	 [72] xc_tree ILAB0401.Clk_LAB<0> w=11.835 e=invd32_UCCLAB=ILAB0401.I5591.I3{ILAB0401.net15299<3> ILAB0401.Clk_LAB<0>} prev=[69] elemInv=1 pathInv=1 v.w=0.1
	 [73] xc_tree ILAB0401.ILE0312.net2743 w=11.935 e=switch_sd_clk0=ILAB0401.ILE0312.Is3{ILAB0401.Clk_LAB<0> ILAB0401.ILE0312.net2743} prev=[72] elemInv=0 pathInv=1 v.w=0.1
	 [74] xc_tree ILAB0401.ILE0710.net2743 w=11.935 e=switch_sd_clk0=ILAB0401.ILE0710.Is3{ILAB0401.Clk_LAB<0> ILAB0401.ILE0710.net2743} prev=[72] elemInv=0 pathInv=1 v.w=0.1
	 [75] xc_tree ILAB0401.ILE1014.net2743 w=11.935 e=switch_sd_clk0=ILAB0401.ILE1014.Is3{ILAB0401.Clk_LAB<0> ILAB0401.ILE1014.net2743} prev=[72] elemInv=0 pathInv=1 v.w=0.1
	 [76] xc_tree ILAB0401.ILE0313.net2743 w=11.935 e=switch_sd_clk0=ILAB0401.ILE0313.Is3{ILAB0401.Clk_LAB<0> ILAB0401.ILE0313.net2743} prev=[72] elemInv=0 pathInv=1 v.w=0.1
	 [77] xc_tree ILAB0401.ILE0113.net2743 w=11.935 e=switch_sd_clk0=ILAB0401.ILE0113.Is3{ILAB0401.Clk_LAB<0> ILAB0401.ILE0113.net2743} prev=[72] elemInv=0 pathInv=1 v.w=0.1
	 [78] xc_tree ILAB0401.ILE0716.net2743 w=11.935 e=switch_sd_clk0=ILAB0401.ILE0716.Is3{ILAB0401.Clk_LAB<0> ILAB0401.ILE0716.net2743} prev=[72] elemInv=0 pathInv=1 v.w=0.1
	 [79] xc_tree ILAB0401.ILE0814.net2743 w=11.935 e=switch_sd_clk0=ILAB0401.ILE0814.Is3{ILAB0401.Clk_LAB<0> ILAB0401.ILE0814.net2743} prev=[72] elemInv=0 pathInv=1 v.w=0.1
	 [80] xc_tree ILAB0402.ILE0202.net2743 w=11.935 e=switch_sd_clk1=ILAB0402.ILE0202.Is2{ILAB0402.Clk_LAB<1> ILAB0402.ILE0202.net2743} prev=[70] elemInv=0 pathInv=1 v.w=0.1
	 [81] xc_tree ILAB0402.ILE0102.net2743 w=11.935 e=switch_sd_clk1=ILAB0402.ILE0102.Is2{ILAB0402.Clk_LAB<1> ILAB0402.ILE0102.net2743} prev=[70] elemInv=0 pathInv=1 v.w=0.1
	 [82] xc_tree ILAB0402.ILE0502.net2743 w=11.935 e=switch_sd_clk1=ILAB0402.ILE0502.Is2{ILAB0402.Clk_LAB<1> ILAB0402.ILE0502.net2743} prev=[70] elemInv=0 pathInv=1 v.w=0.1
	 [83] xc_tree ILAB0302.ILE1501.net2743 w=11.935 e=switch_sd_clk1=ILAB0302.ILE1501.Is2{ILAB0302.Clk_LAB<1> ILAB0302.ILE1501.net2743} prev=[71] elemInv=0 pathInv=1 v.w=0.1
	 [84] xc_tree I3690.net35 w=10.7395 e=mux2p_2_UCCLAB=I3690.I2{net10262<3> I3690.net35} prev=[41] elemInv=0 pathInv=1 v.w=0.1
	 [85] xc_tree net20974<3> w=10.8695 e=invtd56_pd_clk_UCCLAB=I3690.I9{I3690.net35 net20974<3>} prev=[84] elemInv=1 pathInv=0 v.w=0.1
	 [86] xc_tree GCLK_s1<0> w=10.9995 e=invtd56_pd_clk_UCCLAB=I3651.I4{net20974<3> GCLK_s1<0>} prev=[85] elemInv=1 pathInv=1 v.w=0.1
	 [87] xc_tree net20955<0> w=10.9995 e=invtd56_pd_clk_UCCLAB=I3652.I1{net20974<0> net20955<0>} prev=[47] elemInv=1 pathInv=1 v.w=0.1
	 [88] xc_tree ILAB0103.I5366.net66 w=11.1295 e=nand2_1_UCCLAB=ILAB0103.I5366.I73{net20955<0> ILAB0103.I5366.net66} prev=[87] elemInv=1 pathInv=0 v.w=0.1
	 [89] xc_tree ILAB0201.I5366.net64 w=11.1295 e=nand2_1_UCCLAB=ILAB0201.I5366.I0{GCLK_s1<0> ILAB0201.I5366.net64} prev=[86] elemInv=1 pathInv=0 v.w=0.1
	 [90] xc_tree ILAB0101.I5366.net64 w=11.1295 e=nand2_1_UCCLAB=ILAB0101.I5366.I0{GCLK_s1<0> ILAB0101.I5366.net64} prev=[86] elemInv=1 pathInv=0 v.w=0.1
	 [91] xc_tree ILAB0102.I5366.net64 w=11.1295 e=nand2_1_UCCLAB=ILAB0102.I5366.I0{GCLK_s1<0> ILAB0102.I5366.net64} prev=[86] elemInv=1 pathInv=0 v.w=0.1
	 [92] xc_tree ILAB0103.I5366.net0112 w=11.2545 e=switch2_clk=ILAB0103.I5366.I67{ILAB0103.I5366.net66 ILAB0103.I5366.net0112} prev=[88] elemInv=0 pathInv=0 v.w=0.1
	 [93] xc_tree ILAB0201.I5366.net0127 w=11.2545 e=switch2_clk=ILAB0201.I5366.I63{ILAB0201.I5366.net64 ILAB0201.I5366.net0127} prev=[89] elemInv=0 pathInv=0 v.w=0.1
	 [94] xc_tree ILAB0101.I5366.net0127 w=11.2545 e=switch2_clk=ILAB0101.I5366.I63{ILAB0101.I5366.net64 ILAB0101.I5366.net0127} prev=[90] elemInv=0 pathInv=0 v.w=0.1
	 [95] xc_tree ILAB0102.I5366.net0127 w=11.2545 e=switch2_clk=ILAB0102.I5366.I63{ILAB0102.I5366.net64 ILAB0102.I5366.net0127} prev=[91] elemInv=0 pathInv=0 v.w=0.1
	 [96] xc_tree ILAB0103.I5366.net0111 w=11.3745 e=switch2_clk=ILAB0103.I5366.I70{ILAB0103.I5366.net0112 ILAB0103.I5366.net0111} prev=[92] elemInv=0 pathInv=0 v.w=0.1
	 [97] xc_tree ILAB0201.I5366.net0124 w=11.3745 e=switch2_clk=ILAB0201.I5366.I64{ILAB0201.I5366.net0127 ILAB0201.I5366.net0124} prev=[93] elemInv=0 pathInv=0 v.w=0.1
	 [98] xc_tree ILAB0101.I5366.net0124 w=11.3745 e=switch2_clk=ILAB0101.I5366.I64{ILAB0101.I5366.net0127 ILAB0101.I5366.net0124} prev=[94] elemInv=0 pathInv=0 v.w=0.1
	 [99] xc_tree ILAB0102.I5366.net0124 w=11.3745 e=switch2_clk=ILAB0102.I5366.I64{ILAB0102.I5366.net0127 ILAB0102.I5366.net0124} prev=[95] elemInv=0 pathInv=0 v.w=0.1
	 [100] xc_tree ILAB0103.I5366.net0102 w=11.6245 e=mux2d1i_1_P_UCCLAB=ILAB0103.I5366.I81{ILAB0103.I5366.net0111 ILAB0103.I5366.net0102} prev=[96] elemInv=1 pathInv=1 v.w=0.1
	 [101] xc_tree ILAB0201.I5366.net0114 w=11.6245 e=mux2d1i_1_P_UCCLAB=ILAB0201.I5366.I78{ILAB0201.I5366.net0124 ILAB0201.I5366.net0114} prev=[97] elemInv=1 pathInv=1 v.w=0.1
	 [102] xc_tree ILAB0101.I5366.net0114 w=11.6245 e=mux2d1i_1_P_UCCLAB=ILAB0101.I5366.I78{ILAB0101.I5366.net0124 ILAB0101.I5366.net0114} prev=[98] elemInv=1 pathInv=1 v.w=0.1
	 [103] xc_tree ILAB0102.I5366.net0114 w=11.6245 e=mux2d1i_1_P_UCCLAB=ILAB0102.I5366.I78{ILAB0102.I5366.net0124 ILAB0102.I5366.net0114} prev=[99] elemInv=1 pathInv=1 v.w=0.1
	 [104] xc_tree ILAB0101.net15299<3> w=11.7345 e=invd52_UCCLAB=ILAB0101.I5366.I74{ILAB0101.I5366.net0114 ILAB0101.net15299<3>} prev=[102] elemInv=1 pathInv=0 v.w=0.1
	 [105] xc_tree ILAB0201.net15299<3> w=11.7345 e=invd52_UCCLAB=ILAB0201.I5366.I74{ILAB0201.I5366.net0114 ILAB0201.net15299<3>} prev=[101] elemInv=1 pathInv=0 v.w=0.1
	 [106] xc_tree ILAB0103.net15299<0> w=11.7345 e=invd52_UCCLAB=ILAB0103.I5366.I77{ILAB0103.I5366.net0102 ILAB0103.net15299<0>} prev=[100] elemInv=1 pathInv=0 v.w=0.1
	 [107] xc_tree ILAB0102.net15299<3> w=11.7345 e=invd52_UCCLAB=ILAB0102.I5366.I74{ILAB0102.I5366.net0114 ILAB0102.net15299<3>} prev=[103] elemInv=1 pathInv=0 v.w=0.1
	 [108] xc_tree ILAB0101.Clk_LAB<0> w=11.835 e=invd32_UCCLAB=ILAB0101.I5591.I3{ILAB0101.net15299<3> ILAB0101.Clk_LAB<0>} prev=[104] elemInv=1 pathInv=1 v.w=0.1
	 [109] xc_tree ILAB0201.Clk_LAB<0> w=11.835 e=invd32_UCCLAB=ILAB0201.I5591.I3{ILAB0201.net15299<3> ILAB0201.Clk_LAB<0>} prev=[105] elemInv=1 pathInv=1 v.w=0.1
	 [110] xc_tree ILAB0102.Clk_LAB<0> w=11.835 e=invd32_UCCLAB=ILAB0102.I5591.I3{ILAB0102.net15299<3> ILAB0102.Clk_LAB<0>} prev=[107] elemInv=1 pathInv=1 v.w=0.1
	 [111] xc_tree ILAB0103.Clk_LAB<3> w=11.835 e=invd32_UCCLAB=ILAB0103.I5591.I0{ILAB0103.net15299<0> ILAB0103.Clk_LAB<3>} prev=[106] elemInv=1 pathInv=1 v.w=0.1
	 [112] xc_tree ILAB0101.ILE0215.net2743 w=11.947 e=switch_sd_clk0=ILAB0101.ILE0215.Is3{ILAB0101.Clk_LAB<0> ILAB0101.ILE0215.net2743} prev=[108] elemInv=0 pathInv=1 v.w=0.1
	 [113] xc_tree ILAB0101.ILE0916.net2743 w=11.947 e=switch_sd_clk0=ILAB0101.ILE0916.Is3{ILAB0101.Clk_LAB<0> ILAB0101.ILE0916.net2743} prev=[108] elemInv=0 pathInv=1 v.w=0.1
	 [114] xc_tree ILAB0201.ILE0314.net2743 w=11.947 e=switch_sd_clk0=ILAB0201.ILE0314.Is3{ILAB0201.Clk_LAB<0> ILAB0201.ILE0314.net2743} prev=[109] elemInv=0 pathInv=1 v.w=0.1
	 [115] xc_tree ILAB0103.ILE1002.net2743 w=11.947 e=switch_sd_clk3=ILAB0103.ILE1002.Is139{ILAB0103.Clk_LAB<3> ILAB0103.ILE1002.net2743} prev=[111] elemInv=0 pathInv=1 v.w=0.1
	 [116] xc_tree ILAB0103.ILE1202.net2743 w=11.947 e=switch_sd_clk3=ILAB0103.ILE1202.Is139{ILAB0103.Clk_LAB<3> ILAB0103.ILE1202.net2743} prev=[111] elemInv=0 pathInv=1 v.w=0.1
	 [117] xc_tree ILAB0103.ILE1302.net2743 w=11.947 e=switch_sd_clk3=ILAB0103.ILE1302.Is139{ILAB0103.Clk_LAB<3> ILAB0103.ILE1302.net2743} prev=[111] elemInv=0 pathInv=1 v.w=0.1
	 [118] xc_tree ILAB0103.ILE0602.net2743 w=11.947 e=switch_sd_clk3=ILAB0103.ILE0602.Is139{ILAB0103.Clk_LAB<3> ILAB0103.ILE0602.net2743} prev=[111] elemInv=0 pathInv=1 v.w=0.1
	 [119] xc_tree ILAB0103.ILE0902.net2743 w=11.947 e=switch_sd_clk3=ILAB0103.ILE0902.Is139{ILAB0103.Clk_LAB<3> ILAB0103.ILE0902.net2743} prev=[111] elemInv=0 pathInv=1 v.w=0.1
	 [120] xc_tree ILAB0103.ILE0802.net2743 w=11.947 e=switch_sd_clk3=ILAB0103.ILE0802.Is139{ILAB0103.Clk_LAB<3> ILAB0103.ILE0802.net2743} prev=[111] elemInv=0 pathInv=1 v.w=0.1
	 [121] xc_tree ILAB0103.ILE0604.net2743 w=11.947 e=switch_sd_clk3=ILAB0103.ILE0604.Is139{ILAB0103.Clk_LAB<3> ILAB0103.ILE0604.net2743} prev=[111] elemInv=0 pathInv=1 v.w=0.1
	 [122] xc_tree ILAB0103.ILE0804.net2743 w=11.947 e=switch_sd_clk3=ILAB0103.ILE0804.Is139{ILAB0103.Clk_LAB<3> ILAB0103.ILE0804.net2743} prev=[111] elemInv=0 pathInv=1 v.w=0.1
	 [123] xc_tree ILAB0103.ILE0904.net2743 w=11.947 e=switch_sd_clk3=ILAB0103.ILE0904.Is139{ILAB0103.Clk_LAB<3> ILAB0103.ILE0904.net2743} prev=[111] elemInv=0 pathInv=1 v.w=0.1
	 [124] xc_tree ILAB0103.ILE0303.net2743 w=11.947 e=switch_sd_clk3=ILAB0103.ILE0303.Is139{ILAB0103.Clk_LAB<3> ILAB0103.ILE0303.net2743} prev=[111] elemInv=0 pathInv=1 v.w=0.1
	 [125] xc_tree ILAB0103.ILE1004.net2743 w=11.947 e=switch_sd_clk3=ILAB0103.ILE1004.Is139{ILAB0103.Clk_LAB<3> ILAB0103.ILE1004.net2743} prev=[111] elemInv=0 pathInv=1 v.w=0.1
	 [126] xc_tree ILAB0103.ILE1204.net2743 w=11.947 e=switch_sd_clk3=ILAB0103.ILE1204.Is139{ILAB0103.Clk_LAB<3> ILAB0103.ILE1204.net2743} prev=[111] elemInv=0 pathInv=1 v.w=0.1
	 [127] xc_tree ILAB0103.ILE0401.net2743 w=11.947 e=switch_sd_clk3=ILAB0103.ILE0401.Is139{ILAB0103.Clk_LAB<3> ILAB0103.ILE0401.net2743} prev=[111] elemInv=0 pathInv=1 v.w=0.1
	 [128] xc_tree ILAB0103.ILE0701.net2743 w=11.947 e=switch_sd_clk3=ILAB0103.ILE0701.Is139{ILAB0103.Clk_LAB<3> ILAB0103.ILE0701.net2743} prev=[111] elemInv=0 pathInv=1 v.w=0.1
	 [129] xc_tree ILAB0103.ILE0403.net2743 w=11.947 e=switch_sd_clk3=ILAB0103.ILE0403.Is139{ILAB0103.Clk_LAB<3> ILAB0103.ILE0403.net2743} prev=[111] elemInv=0 pathInv=1 v.w=0.1
	 [130] xc_tree ILAB0103.ILE0503.net2743 w=11.947 e=switch_sd_clk3=ILAB0103.ILE0503.Is139{ILAB0103.Clk_LAB<3> ILAB0103.ILE0503.net2743} prev=[111] elemInv=0 pathInv=1 v.w=0.1
	 [131] xc_tree ILAB0103.ILE0201.net2743 w=11.947 e=switch_sd_clk3=ILAB0103.ILE0201.Is139{ILAB0103.Clk_LAB<3> ILAB0103.ILE0201.net2743} prev=[111] elemInv=0 pathInv=1 v.w=0.1
	 [132] xc_tree ILAB0103.ILE1103.net2743 w=11.947 e=switch_sd_clk3=ILAB0103.ILE1103.Is139{ILAB0103.Clk_LAB<3> ILAB0103.ILE1103.net2743} prev=[111] elemInv=0 pathInv=1 v.w=0.1
	 [133] xc_tree ILAB0103.ILE0704.net2743 w=11.947 e=switch_sd_clk3=ILAB0103.ILE0704.Is139{ILAB0103.Clk_LAB<3> ILAB0103.ILE0704.net2743} prev=[111] elemInv=0 pathInv=1 v.w=0.1
	 [134] xc_tree ILAB0103.ILE0404.net2743 w=11.947 e=switch_sd_clk3=ILAB0103.ILE0404.Is139{ILAB0103.Clk_LAB<3> ILAB0103.ILE0404.net2743} prev=[111] elemInv=0 pathInv=1 v.w=0.1
	 [135] xc_tree ILAB0102.ILE0202.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0202.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0202.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [136] xc_tree ILAB0102.ILE1102.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE1102.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE1102.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [137] xc_tree ILAB0102.ILE1502.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE1502.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE1502.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [138] xc_tree ILAB0102.ILE0902.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0902.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0902.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [139] xc_tree ILAB0102.ILE0310.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0310.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0310.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [140] xc_tree ILAB0102.ILE1007.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE1007.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE1007.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [141] xc_tree ILAB0102.ILE1210.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE1210.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE1210.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [142] xc_tree ILAB0102.ILE1015.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE1015.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE1015.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [143] xc_tree ILAB0102.ILE0715.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0715.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0715.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [144] xc_tree ILAB0102.ILE0610.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0610.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0610.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [145] xc_tree ILAB0102.ILE0910.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0910.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0910.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [146] xc_tree ILAB0102.ILE0810.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0810.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0810.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [147] xc_tree ILAB0102.ILE1014.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE1014.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE1014.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [148] xc_tree ILAB0102.ILE0305.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0305.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0305.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [149] xc_tree ILAB0102.ILE1004.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE1004.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE1004.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [150] xc_tree ILAB0102.ILE0213.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0213.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0213.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [151] xc_tree ILAB0102.ILE0813.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0813.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0813.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [152] xc_tree ILAB0102.ILE0316.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0316.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0316.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [153] xc_tree ILAB0102.ILE0515.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0515.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0515.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [154] xc_tree ILAB0102.ILE0714.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0714.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0714.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [155] xc_tree ILAB0102.ILE1012.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE1012.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE1012.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [156] xc_tree ILAB0102.ILE0611.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0611.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0611.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [157] xc_tree ILAB0102.ILE1212.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE1212.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE1212.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [158] xc_tree ILAB0102.ILE1216.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE1216.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE1216.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [159] xc_tree ILAB0102.ILE1406.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE1406.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE1406.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [160] xc_tree ILAB0102.ILE0708.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0708.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0708.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [161] xc_tree ILAB0102.ILE0401.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0401.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0401.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [162] xc_tree ILAB0102.ILE0801.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0801.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0801.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [163] xc_tree ILAB0102.ILE0501.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0501.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0501.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [164] xc_tree ILAB0102.ILE0601.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0601.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0601.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [165] xc_tree ILAB0102.ILE0511.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0511.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0511.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [166] xc_tree ILAB0102.ILE0204.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0204.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0204.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [167] xc_tree ILAB0102.ILE0403.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0403.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0403.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [168] xc_tree ILAB0102.ILE1414.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE1414.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE1414.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [169] xc_tree ILAB0102.ILE0514.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0514.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0514.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [170] xc_tree ILAB0102.ILE0612.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0612.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0612.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [171] xc_tree ILAB0102.ILE1408.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE1408.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE1408.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [172] xc_tree ILAB0102.ILE0508.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0508.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0508.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [173] xc_tree ILAB0102.ILE0716.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0716.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0716.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [174] xc_tree ILAB0102.ILE0806.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0806.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0806.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [175] xc_tree ILAB0102.ILE0606.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0606.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0606.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [176] xc_tree ILAB0102.ILE0513.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0513.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0513.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [177] xc_tree ILAB0102.ILE0406.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0406.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0406.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [178] xc_tree ILAB0102.ILE1416.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE1416.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE1416.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [179] xc_tree ILAB0102.ILE0707.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0707.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0707.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [180] xc_tree ILAB0102.ILE1307.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE1307.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE1307.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [181] xc_tree ILAB0102.ILE0516.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0516.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0516.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [182] xc_tree ILAB0102.ILE0705.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0705.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0705.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [183] xc_tree ILAB0102.ILE0605.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0605.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0605.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [184] xc_tree ILAB0102.ILE0703.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0703.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0703.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [185] xc_tree ILAB0102.ILE0404.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0404.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0404.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [186] xc_tree ILAB0102.ILE0308.net2743 w=11.947 e=switch_sd_clk0=ILAB0102.ILE0308.Is3{ILAB0102.Clk_LAB<0> ILAB0102.ILE0308.net2743} prev=[110] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree XC_O_ready_sample {
	 xc_pin xci2_dffcl q o [-1] pinInv=0 { ILAB0101.ILE0215.net2656 ILAB0101.ILE0215.net0541 }
	 xc_pin xci2_ob a i [9] pinInv=0 { IIO10.I3.net197 }
	 [0] xc_tree ILAB0101.ILE0215.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0101.ILE0215.net2680 w=1 e=switch2=ILAB0101.ILE0215.Is63{ILAB0101.ILE0215.net0541 ILAB0101.ILE0215.net2680} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0101.net23756 w=1.4 e=inv_8_UCCLAB=ILAB0101.ILE0215.I666{ILAB0101.ILE0215.net2680 ILAB0101.net23756} prev=[1] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree ILAB0101.ILE0216.net01328 w=4.5 e=switch1_ds=ILAB0101.ILE0216.Is81{ILAB0101.net23756 ILAB0101.ILE0216.net01328} prev=[2] elemInv=0 pathInv=1 v.w=0.1
	 [4] xc_tree ILAB0101.ILE0216.net2680 w=5.35 e=switch2=ILAB0101.ILE0216.Is63{ILAB0101.ILE0216.net01328 ILAB0101.ILE0216.net2680} prev=[3] elemInv=0 pathInv=1 v.w=0.1
	 [5] xc_tree net17155<1> w=5.65 e=inv_8_UCCLAB=ILAB0101.ILE0216.I666{ILAB0101.ILE0216.net2680 net17155<1>} prev=[4] elemInv=1 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0101.net27295 w=6.5 e=buf4_12_UCCLAB=ILAB0101.I4402{net17155<1> ILAB0101.net27295} prev=[5] elemInv=0 pathInv=0 v.w=0.1
	 [7] xc_tree ILAB0101.net40165 w=6.65 e=switch1=ILAB0101.I3638{ILAB0101.net40165 ILAB0101.net27295} prev=[6] elemInv=0 pathInv=0 v.w=0.1
	 [8] xc_tree LongBus_78<4> w=6.775 e=buftid52C_UCCLAB=ILAB0101.I4432{ILAB0101.net40165 LongBus_78<4>} prev=[7] elemInv=0 pathInv=0 v.w=0.1
	 [9] xc_tree IIO10.I3.net197 w=6.875 e=mux2i_P_UCCLAB=IIO10.I3.I16{LongBus_78<4> IIO10.I3.net197} prev=[8] elemInv=1 pathInv=1 v.w=0.1
}
xc_net_tree XC_O_din {
	 xc_pin xci2_dff q o [-1] pinInv=0 { ILAB0101.ILE0916.net2656 ILAB0101.ILE0916.net0541 }
	 xc_pin xci2_ob a i [9] pinInv=0 { IIO10.I1.net197 }
	 xc_pin xci2_mux2h b i [11] pinInv=0 { ILAB0102.ILE0901.net2746 }
	 [0] xc_tree ILAB0101.ILE0916.net2656 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree ILAB0101.ILE0916.net0541 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [2] xc_tree ILAB0101.ILE0916.net2650 w=0.55 e=switch2=ILAB0101.ILE0916.Is143{ILAB0101.ILE0916.net2656 ILAB0101.ILE0916.net2650} prev=[0] elemInv=0 pathInv=0 v.w=0.1
	 [3] xc_tree ILAB0101.ILE0916.net2680 w=0.55 e=switch2=ILAB0101.ILE0916.Is63{ILAB0101.ILE0916.net0541 ILAB0101.ILE0916.net2680} prev=[1] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree net17202<4> w=0.75 e=sw_b_v2_inv_UCCLAB=ILAB0101.ILE0916.Iho3{ILAB0101.ILE0916.net2650 net17202<4>} prev=[2] elemInv=1 pathInv=1 v.w=0.1
	 [5] xc_tree net17148<1> w=0.75 e=inv_8_UCCLAB=ILAB0101.ILE0916.I666{ILAB0101.ILE0916.net2680 net17148<1>} prev=[3] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0101.net27297 w=1.6 e=buf4_12_UCCLAB=ILAB0101.I4401{net17148<1> ILAB0101.net27297} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0101.net38074 w=1.75 e=switch1=ILAB0101.I4231{ILAB0101.net38074 ILAB0101.net27297} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree LongBus_78<6> w=1.875 e=buftid52C_UCCLAB=ILAB0101.I4464{ILAB0101.net38074 LongBus_78<6>} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree IIO10.I1.net197 w=1.975 e=mux2i_P_UCCLAB=IIO10.I1.I16{LongBus_78<6> IIO10.I1.net197} prev=[8] elemInv=1 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0102.ILE0901.C w=1.442 e=switch_sd=ILAB0102.ILE0901.Is36{net17202<4> ILAB0102.ILE0901.C} prev=[4] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0102.ILE0901.net2746 w=1.566 e=switch_ds=ILAB0102.ILE0901.Is44{ILAB0102.ILE0901.C ILAB0102.ILE0901.net2746} prev=[10] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree XC_I_rst_l_adc {
	 xc_pin xci2_ib x o [-1] pinInv=0 { IIO33.I6.net209 }
	 xc_pin xci2_ob a i [23] pinInv=0 { IIO10.I2.net197 }
	 xc_pin xci2_and3 b i [30] pinInv=0 { ILAB0401.ILE0910.net2743 }
	 xc_pin xci2_mux2h b i [16] pinInv=0 { ILAB0201.ILE0313.net2746 }
	 [0] xc_tree IIO33.I6.net209 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree IIO33.I6.net0153 w=2.8 e=mux2i_P_UCCLAB=IIO33.I6.I25{IIO33.I6.net209 IIO33.I6.net0153} prev=[0] elemInv=1 pathInv=1 v.w=0.1
	 [2] xc_tree LongBus_21<9> w=3.8 e=invtd52_AVDD=IIO33.I6.I26{IIO33.I6.net0153 LongBus_21<9>} prev=[1] elemInv=1 pathInv=0 v.w=0.1
	 [3] xc_tree net8320<6> w=4.8 e=buftd52C_UCCLAB=I1803.I21{LongBus_21<9> net8320<6>} prev=[2] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree LongBus_78<9> w=5.8 e=buftd52C_UCCLAB=I3740.I21{net8320<6> LongBus_78<9>} prev=[3] elemInv=0 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0401.net20756 w=7.3 e=switch_ds=ILAB0401.I905{net8320<6> ILAB0401.net20756} prev=[3] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0201.net22463 w=7.9 e=switch_ds=ILAB0201.I800{LongBus_78<9> ILAB0201.net22463} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [7] xc_tree ILAB0401.ILE1616.net01345 w=7.7 e=inv_4_UCCLAB=ILAB0401.ILE1616.I714{ILAB0401.net20756 ILAB0401.ILE1616.net01345} prev=[5] elemInv=1 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.ILE1616.A w=10.8 e=switch1_sd=ILAB0401.ILE1616.Is54{ILAB0401.ILE1616.net01345 ILAB0401.ILE1616.A} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0201.ILE0316.net01339 w=8.2 e=inv_4_UCCLAB=ILAB0201.ILE0316.I715{ILAB0201.net22463 ILAB0201.ILE0316.net01339} prev=[6] elemInv=1 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0201.ILE0316.C w=9.8 e=switch1_sd=ILAB0201.ILE0316.Is70{ILAB0201.ILE0316.net01339 ILAB0201.ILE0316.C} prev=[9] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree ILAB0201.net24907 w=12.532 e=switch=ILAB0201.ILE0316.Is12{ILAB0201.net24907 ILAB0201.ILE0316.C} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0201.ILE0316.net01328 w=12.312 e=switch_ds=ILAB0201.ILE0316.Is60{ILAB0201.ILE0316.C ILAB0201.ILE0316.net01328} prev=[10] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0401.ILE1616.net01328 w=13.3 e=switch_ds=ILAB0401.ILE1616.Is56{ILAB0401.ILE1616.A ILAB0401.ILE1616.net01328} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0201.ILE0316.net2680 w=13.174 e=switch2=ILAB0201.ILE0316.Is63{ILAB0201.ILE0316.net01328 ILAB0201.ILE0316.net2680} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0201.ILE0313.C w=13.044 e=switch_sd=ILAB0201.ILE0313.Is21{ILAB0201.net24907 ILAB0201.ILE0313.C} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0201.ILE0313.net2746 w=13.156 e=switch_ds=ILAB0201.ILE0313.Is44{ILAB0201.ILE0313.C ILAB0201.ILE0313.net2746} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree net18362<1> w=13.486 e=inv_8_UCCLAB=ILAB0201.ILE0316.I666{ILAB0201.ILE0316.net2680 net18362<1>} prev=[14] elemInv=1 pathInv=0 v.w=0.1
	 [18] xc_tree ILAB0401.ILE1616.net2680 w=14.3 e=switch2=ILAB0401.ILE1616.Is63{ILAB0401.ILE1616.net01328 ILAB0401.ILE1616.net2680} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0201.net27303 w=14.348 e=buf4_12_UCCLAB=ILAB0201.I4398{net18362<1> ILAB0201.net27303} prev=[17] elemInv=0 pathInv=0 v.w=0.1
	 [20] xc_tree net16235<1> w=14.65 e=inv_8_UCCLAB=ILAB0401.ILE1616.I666{ILAB0401.ILE1616.net2680 net16235<1>} prev=[18] elemInv=1 pathInv=0 v.w=0.1
	 [21] xc_tree ILAB0201.net37993 w=14.51 e=switch1=ILAB0201.I4165{ILAB0201.net37993 ILAB0201.net27303} prev=[19] elemInv=0 pathInv=0 v.w=0.1
	 [22] xc_tree LongBus_78<5> w=14.647 e=buftid52C_UCCLAB=ILAB0201.I4420{ILAB0201.net37993 LongBus_78<5>} prev=[21] elemInv=0 pathInv=0 v.w=0.1
	 [23] xc_tree IIO10.I2.net197 w=14.759 e=mux2i_P_UCCLAB=IIO10.I2.I16{LongBus_78<5> IIO10.I2.net197} prev=[22] elemInv=1 pathInv=1 v.w=0.1
	 [24] xc_tree ILAB0401.net015238 w=14.81 e=buftd4_UCCLAB=ILAB0401.I178{net16235<1> ILAB0401.net015238} prev=[20] elemInv=0 pathInv=0 v.w=0.1
	 [25] xc_tree ILAB0401.I5605.net33 w=14.9125 e=mux2p_2_UCCLAB=ILAB0401.I5605.I2{ILAB0401.net015238 ILAB0401.I5605.net33} prev=[24] elemInv=0 pathInv=0 v.w=0.1
	 [26] xc_tree ILAB0401.Clk_int<2> w=15.0145 e=invd16_seth_UCCLAB=ILAB0401.I5605.I3{ILAB0401.I5605.net33 ILAB0401.Clk_int<2>} prev=[25] elemInv=1 pathInv=1 v.w=0.1
	 [27] xc_tree ILAB0401.I5366.net0106 w=15.2645 e=mux2d1i_1_P_UCCLAB=ILAB0401.I5366.I80{ILAB0401.Clk_int<2> ILAB0401.I5366.net0106} prev=[26] elemInv=0 pathInv=1 v.w=0.1
	 [28] xc_tree ILAB0401.net15299<1> w=15.3745 e=invd52_UCCLAB=ILAB0401.I5366.I76{ILAB0401.I5366.net0106 ILAB0401.net15299<1>} prev=[27] elemInv=1 pathInv=0 v.w=0.1
	 [29] xc_tree ILAB0401.Clk_LAB<2> w=15.475 e=invd32_UCCLAB=ILAB0401.I5591.I1{ILAB0401.net15299<1> ILAB0401.Clk_LAB<2>} prev=[28] elemInv=1 pathInv=1 v.w=0.1
	 [30] xc_tree ILAB0401.ILE0910.net2743 w=15.587 e=switch_sd_clk2=ILAB0401.ILE0910.Is138{ILAB0401.Clk_LAB<2> ILAB0401.ILE0910.net2743} prev=[29] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree XC_I_rst_l {
	 xc_pin xci2_ib x o [-1] pinInv=0 { IIO33.I5.net209 }
	 xc_pin xci2_nand3ftt c i [244] pinInv=0 { ILAB0102.ILE1302.net2746 }
	 xc_pin xci2_dffcl clr i [327] pinInv=0 { ILAB0102.ILE1502.net2746 }
	 xc_pin xci2_dffcl clr i [378] pinInv=0 { ILAB0102.ILE0806.net2746 }
	 xc_pin xci2_dffcl clr i [344] pinInv=0 { ILAB0102.ILE1014.net2746 }
	 xc_pin xci2_dffcl clr i [366] pinInv=0 { ILAB0103.ILE1002.net2746 }
	 xc_pin xci2_dffcl clr i [107] pinInv=0 { ILAB0103.ILE1202.net2746 }
	 xc_pin xci2_dffcl clr i [237] pinInv=0 { ILAB0103.ILE0802.net2746 }
	 xc_pin xci2_dffcl clr i [404] pinInv=0 { ILAB0102.ILE1015.net2746 }
	 xc_pin xci2_dffcl clr i [367] pinInv=0 { ILAB0103.ILE0902.net2746 }
	 xc_pin xci2_dffcl clr i [395] pinInv=0 { ILAB0102.ILE0715.net2746 }
	 xc_pin xci2_dffcl clr i [371] pinInv=0 { ILAB0102.ILE0810.net2746 }
	 xc_pin xci2_dffcl clr i [377] pinInv=0 { ILAB0102.ILE1007.net2746 }
	 xc_pin xci2_dffcl clr i [119] pinInv=0 { ILAB0102.ILE1102.net2746 }
	 xc_pin xci2_dffcl clr i [403] pinInv=0 { ILAB0102.ILE0902.net2746 }
	 xc_pin xci2_dffcl clr i [360] pinInv=0 { ILAB0102.ILE0703.net2746 }
	 xc_pin xci2_dffcl clr i [364] pinInv=0 { ILAB0102.ILE0705.net2746 }
	 xc_pin xci2_dffcl clr i [249] pinInv=0 { ILAB0102.ILE0708.net2746 }
	 xc_pin xci2_dffcl clr i [372] pinInv=0 { ILAB0102.ILE0910.net2746 }
	 xc_pin xci2_dffcl clr i [212] pinInv=0 { ILAB0102.ILE1210.net2746 }
	 xc_pin xci2_dffcl clr i [114] pinInv=0 { ILAB0102.ILE1406.net2746 }
	 xc_pin xci2_dffcl clr i [115] pinInv=0 { ILAB0102.ILE1408.net2746 }
	 xc_pin xci2_dffcl clr i [82] pinInv=0 { ILAB0102.ILE1416.net2746 }
	 xc_pin xci2_dffcl clr i [116] pinInv=0 { ILAB0103.ILE1302.net2746 }
	 xc_pin xci2_dffcl clr i [294] pinInv=0 { ILAB0102.ILE1414.net2746 }
	 xc_pin xci2_dffcl clr i [410] pinInv=0 { ILAB0102.ILE1004.net2746 }
	 xc_pin xci2_dffcl clr i [42] pinInv=0 { ILAB0401.ILE0113.net2746 }
	 xc_pin xci2_dffcl clr i [323] pinInv=0 { ILAB0401.ILE0312.net2746 }
	 xc_pin xci2_dffcl clr i [300] pinInv=0 { ILAB0401.ILE0313.net2746 }
	 xc_pin xci2_dffcl clr i [26] pinInv=0 { ILAB0401.ILE0716.net2746 }
	 xc_pin xci2_dffcl clr i [177] pinInv=0 { ILAB0402.ILE0502.net2746 }
	 xc_pin xci2_dffcl clr i [174] pinInv=0 { ILAB0402.ILE0202.net2746 }
	 xc_pin xci2_dffcl clr i [43] pinInv=0 { ILAB0402.ILE0102.net2746 }
	 xc_pin xci2_dffcl clr i [338] pinInv=0 { ILAB0401.ILE0814.net2746 }
	 xc_pin xci2_dffcl clr i [393] pinInv=0 { ILAB0401.ILE1014.net2746 }
	 xc_pin xci2_dffcl clr i [188] pinInv=0 { ILAB0401.ILE0710.net2746 }
	 xc_pin xci2_dffcl clr i [208] pinInv=0 { ILAB0201.ILE0314.net2746 }
	 xc_pin xci2_dffcl clr i [312] pinInv=0 { ILAB0102.ILE0403.net2746 }
	 xc_pin xci2_dffcl clr i [236] pinInv=0 { ILAB0102.ILE0714.net2746 }
	 xc_pin xci2_dffcl clr i [197] pinInv=0 { ILAB0102.ILE0515.net2746 }
	 xc_pin xci2_dffcl clr i [353] pinInv=0 { ILAB0103.ILE1004.net2746 }
	 xc_pin xci2_dffcl clr i [260] pinInv=0 { ILAB0103.ILE0602.net2746 }
	 xc_pin xci2_dffcl clr i [225] pinInv=0 { ILAB0103.ILE0503.net2746 }
	 xc_pin xci2_dffcl clr i [354] pinInv=0 { ILAB0103.ILE0904.net2746 }
	 xc_pin xci2_dffcl clr i [402] pinInv=0 { ILAB0103.ILE0704.net2746 }
	 xc_pin xci2_dffcl clr i [166] pinInv=0 { ILAB0103.ILE0401.net2746 }
	 xc_pin xci2_dffcl clr i [261] pinInv=0 { ILAB0102.ILE0611.net2746 }
	 xc_pin xci2_dffcl clr i [319] pinInv=0 { ILAB0102.ILE0404.net2746 }
	 xc_pin xci2_dffcl clr i [73] pinInv=0 { ILAB0102.ILE0801.net2746 }
	 xc_pin xci2_dffcl clr i [78] pinInv=0 { ILAB0102.ILE0601.net2746 }
	 xc_pin xci2_dffcl clr i [256] pinInv=0 { ILAB0102.ILE0605.net2746 }
	 xc_pin xci2_dffcl clr i [258] pinInv=0 { ILAB0102.ILE0606.net2746 }
	 xc_pin xci2_dffcl clr i [257] pinInv=0 { ILAB0102.ILE0508.net2746 }
	 xc_pin xci2_dffcl clr i [369] pinInv=0 { ILAB0102.ILE0610.net2746 }
	 xc_pin xci2_dffcl clr i [408] pinInv=0 { ILAB0102.ILE1012.net2746 }
	 xc_pin xci2_dffcl clr i [255] pinInv=0 { ILAB0102.ILE1307.net2746 }
	 xc_pin xci2_dffcl clr i [224] pinInv=0 { ILAB0102.ILE1212.net2746 }
	 xc_pin xci2_dffcl clr i [112] pinInv=0 { ILAB0103.ILE1204.net2746 }
	 xc_pin xci2_dffcl clr i [368] pinInv=0 { ILAB0103.ILE1103.net2746 }
	 xc_pin xci2_dffcl clr i [76] pinInv=0 { ILAB0102.ILE1216.net2746 }
	 xc_pin xci2_dffcl clr i [373] pinInv=0 { ILAB0102.ILE0813.net2746 }
	 xc_pin xci2_dffcl clr i [79] pinInv=0 { ILAB0302.ILE1501.net2746 }
	 xc_pin xci2_dffcl clr i [94] pinInv=0 { ILAB1001.ILE1410.net2746 }
	 xc_pin xci2_dffcl clr i [103] pinInv=0 { ILAB0101.ILE0215.net2746 }
	 xc_pin xci2_dffcl clr i [113] pinInv=0 { ILAB0102.ILE0202.net2746 }
	 xc_pin xci2_dffcl clr i [97] pinInv=0 { ILAB0102.ILE0513.net2746 }
	 xc_pin xci2_dffcl clr i [81] pinInv=0 { ILAB0102.ILE0516.net2746 }
	 xc_pin xci2_dffcl clr i [345] pinInv=0 { ILAB0103.ILE0804.net2746 }
	 xc_pin xci2_dffcl clr i [206] pinInv=0 { ILAB0103.ILE0701.net2746 }
	 xc_pin xci2_dffcl clr i [254] pinInv=0 { ILAB0103.ILE0403.net2746 }
	 xc_pin xci2_dffcl clr i [356] pinInv=0 { ILAB0103.ILE0604.net2746 }
	 xc_pin xci2_dffcl clr i [259] pinInv=0 { ILAB0103.ILE0404.net2746 }
	 xc_pin xci2_dffcl clr i [163] pinInv=0 { ILAB0103.ILE0201.net2746 }
	 xc_pin xci2_dffcl clr i [111] pinInv=0 { ILAB0102.ILE0511.net2746 }
	 xc_pin xci2_dffcl clr i [118] pinInv=0 { ILAB0102.ILE0204.net2746 }
	 xc_pin xci2_dffcl clr i [195] pinInv=0 { ILAB0102.ILE0501.net2746 }
	 xc_pin xci2_dffcl clr i [194] pinInv=0 { ILAB0102.ILE0401.net2746 }
	 xc_pin xci2_dffcl clr i [238] pinInv=0 { ILAB0102.ILE0305.net2746 }
	 xc_pin xci2_dffcl clr i [331] pinInv=0 { ILAB0102.ILE0406.net2746 }
	 xc_pin xci2_dffcl clr i [365] pinInv=0 { ILAB0102.ILE0308.net2746 }
	 xc_pin xci2_dffcl clr i [336] pinInv=0 { ILAB0102.ILE0310.net2746 }
	 xc_pin xci2_dffcl clr i [233] pinInv=0 { ILAB0102.ILE0612.net2746 }
	 xc_pin xci2_dffcl clr i [376] pinInv=0 { ILAB0102.ILE0707.net2746 }
	 xc_pin xci2_dffcl clr i [228] pinInv=0 { ILAB0102.ILE0213.net2746 }
	 xc_pin xci2_dffcl clr i [239] pinInv=0 { ILAB0103.ILE0303.net2746 }
	 xc_pin xci2_dffcl clr i [72] pinInv=0 { ILAB0102.ILE0316.net2746 }
	 xc_pin xci2_dffcl clr i [193] pinInv=0 { ILAB0102.ILE0716.net2746 }
	 xc_pin xci2_dffcl clr i [198] pinInv=0 { ILAB0102.ILE0514.net2746 }
	 [0] xc_tree IIO33.I5.net209 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree IIO33.I5.net0153 w=2.8 e=mux2i_P_UCCLAB=IIO33.I5.I25{IIO33.I5.net209 IIO33.I5.net0153} prev=[0] elemInv=1 pathInv=1 v.w=0.1
	 [2] xc_tree LongBus_21<10> w=3.65 e=invtd52_AVDD=IIO33.I5.I26{IIO33.I5.net0153 LongBus_21<10>} prev=[1] elemInv=1 pathInv=0 v.w=0.1
	 [3] xc_tree LongBus_19<10> w=4.65 e=buftd52_UCCLAB=ILAB1001.I4801.I25{LongBus_21<10> LongBus_19<10>} prev=[2] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree net8320<5> w=4.35 e=buftd52C_UCCLAB=I1803.I25{LongBus_21<10> net8320<5>} prev=[2] elemInv=0 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0401.net19268 w=5.65 e=switch_ds=ILAB0401.I710{net8320<5> ILAB0401.net19268} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree LongBus_6<10> w=5.05 e=buftd52_UCCLAB=ILAB0401.I4773.I25{net8320<5> LongBus_6<10>} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [7] xc_tree LongBus_78<10> w=5.2 e=buftd52C_UCCLAB=I3740.I25{net8320<5> LongBus_78<10>} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [8] xc_tree net16655<0> w=6.75 e=switch_ds=ILAB1001.I2642{LongBus_19<10> net16655<0>} prev=[3] elemInv=0 pathInv=0 v.w=0.1
	 [9] xc_tree net16334<5> w=6.35 e=switch_ds=ILAB0401.I2434{LongBus_6<10> net16334<5>} prev=[6] elemInv=0 pathInv=0 v.w=0.1
	 [10] xc_tree net11362<5> w=6.35 e=switch_ds=ILAB0402.I912{LongBus_6<10> net11362<5>} prev=[6] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree net8296<5> w=5.9 e=buftd52_UCCLAB=ILAB0402.I4772.I24{LongBus_6<10> net8296<5>} prev=[6] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree net8287<5> w=5.9 e=buftd52_UCCLAB=ILAB0402.I4773.I24{LongBus_6<10> net8287<5>} prev=[6] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree LongBus_2<10> w=6.05 e=buftd52_UCCLAB=ILAB0201.I4773.I25{LongBus_78<10> LongBus_2<10>} prev=[7] elemInv=0 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0101.net21923 w=7.3 e=switch_ds=ILAB0101.I1913{LongBus_78<10> ILAB0101.net21923} prev=[7] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree LongBus_1<10> w=6.05 e=buftd52_UCCLAB=ILAB0101.I4801.I25{LongBus_78<10> LongBus_1<10>} prev=[7] elemInv=0 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB0401.ILE0716.net01339 w=5.85 e=inv_4_UCCLAB=ILAB0401.ILE0716.I715{ILAB0401.net19268 ILAB0401.ILE0716.net01339} prev=[5] elemInv=1 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0401.ILE0716.C w=6.45 e=switch1_sd=ILAB0401.ILE0716.Is70{ILAB0401.ILE0716.net01339 ILAB0401.ILE0716.C} prev=[16] elemInv=0 pathInv=1 v.w=0.1
	 [18] xc_tree LongBus_72<10> w=6.6 e=buftd52C_UCCLAB=I3742.I25{net8287<5> LongBus_72<10>} prev=[12] elemInv=0 pathInv=0 v.w=0.1
	 [19] xc_tree LongBus_73<10> w=6.6 e=buftd52C_UCCLAB=I3741.I25{net8296<5> LongBus_73<10>} prev=[11] elemInv=0 pathInv=0 v.w=0.1
	 [20] xc_tree net18604<5> w=8.15 e=switch_ds=ILAB0202.I879{LongBus_2<10> net18604<5>} prev=[13] elemInv=0 pathInv=0 v.w=0.1
	 [21] xc_tree net18606<5> w=8.15 e=switch_ds=ILAB0202.I986{LongBus_2<10> net18606<5>} prev=[13] elemInv=0 pathInv=0 v.w=0.1
	 [22] xc_tree net18761<1> w=8.15 e=switch_ds=ILAB0103.I1989{LongBus_1<10> net18761<1>} prev=[15] elemInv=0 pathInv=0 v.w=0.1
	 [23] xc_tree net18605<0> w=8.15 e=switch_ds=ILAB0102.I2582{LongBus_1<10> net18605<0>} prev=[15] elemInv=0 pathInv=0 v.w=0.1
	 [24] xc_tree ILAB0401.ILE0113.net01339 w=6.55 e=inv_4_UCCLAB=ILAB0401.ILE0113.I715{net16334<5> ILAB0401.ILE0113.net01339} prev=[9] elemInv=1 pathInv=1 v.w=0.1
	 [25] xc_tree ILAB0402.ILE0102.net01339 w=6.55 e=inv_4_UCCLAB=ILAB0402.ILE0102.I715{net11362<5> ILAB0402.ILE0102.net01339} prev=[10] elemInv=1 pathInv=1 v.w=0.1
	 [26] xc_tree ILAB0401.ILE0716.net2746 w=6.55 e=switch_ds=ILAB0401.ILE0716.Is44{ILAB0401.ILE0716.C ILAB0401.ILE0716.net2746} prev=[17] elemInv=0 pathInv=1 v.w=0.1
	 [27] xc_tree ILAB0401.ILE0113.C w=7.15 e=switch1_sd=ILAB0401.ILE0113.Is70{ILAB0401.ILE0113.net01339 ILAB0401.ILE0113.C} prev=[24] elemInv=0 pathInv=1 v.w=0.1
	 [28] xc_tree ILAB0402.ILE0102.C w=7.15 e=switch1_sd=ILAB0402.ILE0102.Is70{ILAB0402.ILE0102.net01339 ILAB0402.ILE0102.C} prev=[25] elemInv=0 pathInv=1 v.w=0.1
	 [29] xc_tree ILAB0102.net17873 w=7.9 e=switch_ds=ILAB0102.I429{LongBus_72<10> ILAB0102.net17873} prev=[18] elemInv=0 pathInv=0 v.w=0.1
	 [30] xc_tree ILAB0102.net16973 w=7.9 e=switch_ds=ILAB0102.I688{LongBus_72<10> ILAB0102.net16973} prev=[18] elemInv=0 pathInv=0 v.w=0.1
	 [31] xc_tree ILAB0102.net19268 w=7.9 e=switch_ds=ILAB0102.I710{LongBus_72<10> ILAB0102.net19268} prev=[18] elemInv=0 pathInv=0 v.w=0.1
	 [32] xc_tree ILAB0102.net22463 w=7.9 e=switch_ds=ILAB0102.I2541{LongBus_72<10> ILAB0102.net22463} prev=[18] elemInv=0 pathInv=0 v.w=0.1
	 [33] xc_tree ILAB0102.net21158 w=7.9 e=switch_ds=ILAB0102.I3194{LongBus_72<10> ILAB0102.net21158} prev=[18] elemInv=0 pathInv=0 v.w=0.1
	 [34] xc_tree ILAB0302.net36815 w=7.9 e=switch_ds=ILAB0302.I1909{LongBus_73<10> ILAB0302.net36815} prev=[19] elemInv=0 pathInv=0 v.w=0.1
	 [35] xc_tree ILAB0102.net35669 w=7.9 e=switch_ds=ILAB0102.I302{LongBus_73<10> ILAB0102.net35669} prev=[19] elemInv=0 pathInv=0 v.w=0.1
	 [36] xc_tree ILAB0102.net29558 w=7.9 e=switch_ds=ILAB0102.I494{LongBus_73<10> ILAB0102.net29558} prev=[19] elemInv=0 pathInv=0 v.w=0.1
	 [37] xc_tree ILAB0102.net29663 w=8.7 e=switch_ds=ILAB0102.I849{LongBus_73<10> ILAB0102.net29663} prev=[19] elemInv=0 pathInv=0 v.w=0.1
	 [38] xc_tree ILAB0102.net28388 w=7.9 e=switch_ds=ILAB0102.I1364{LongBus_73<10> ILAB0102.net28388} prev=[19] elemInv=0 pathInv=0 v.w=0.1
	 [39] xc_tree ILAB0102.net33446 w=7.9 e=switch_ds=ILAB0102.I1682{LongBus_73<10> ILAB0102.net33446} prev=[19] elemInv=0 pathInv=0 v.w=0.1
	 [40] xc_tree ILAB1001.ILE1610.net0562 w=7.05 e=inv_4_UCCLAB=ILAB1001.ILE1610.I712{net16655<0> ILAB1001.ILE1610.net0562} prev=[8] elemInv=1 pathInv=1 v.w=0.1
	 [41] xc_tree ILAB1001.ILE1610.A w=8.65 e=switch1_sd=ILAB1001.ILE1610.Is94{ILAB1001.ILE1610.net0562 ILAB1001.ILE1610.A} prev=[40] elemInv=0 pathInv=1 v.w=0.1
	 [42] xc_tree ILAB0401.ILE0113.net2746 w=7.25 e=switch_ds=ILAB0401.ILE0113.Is44{ILAB0401.ILE0113.C ILAB0401.ILE0113.net2746} prev=[27] elemInv=0 pathInv=1 v.w=0.1
	 [43] xc_tree ILAB0402.ILE0102.net2746 w=7.25 e=switch_ds=ILAB0402.ILE0102.Is44{ILAB0402.ILE0102.C ILAB0402.ILE0102.net2746} prev=[28] elemInv=0 pathInv=1 v.w=0.1
	 [44] xc_tree ILAB0101.ILE0216.net01339 w=7.6 e=inv_4_UCCLAB=ILAB0101.ILE0216.I715{ILAB0101.net21923 ILAB0101.ILE0216.net01339} prev=[14] elemInv=1 pathInv=1 v.w=0.1
	 [45] xc_tree ILAB0101.ILE0216.C w=9.2 e=switch1_sd=ILAB0101.ILE0216.Is70{ILAB0101.ILE0216.net01339 ILAB0101.ILE0216.C} prev=[44] elemInv=0 pathInv=1 v.w=0.1
	 [46] xc_tree ILAB0102.ILE1416.net01339 w=8.1 e=inv_4_UCCLAB=ILAB0102.ILE1416.I715{ILAB0102.net17873 ILAB0102.ILE1416.net01339} prev=[29] elemInv=1 pathInv=1 v.w=0.1
	 [47] xc_tree ILAB0102.ILE0516.net01339 w=8.1 e=inv_4_UCCLAB=ILAB0102.ILE0516.I715{ILAB0102.net16973 ILAB0102.ILE0516.net01339} prev=[30] elemInv=1 pathInv=1 v.w=0.1
	 [48] xc_tree ILAB0102.ILE0716.net01339 w=8.1 e=inv_4_UCCLAB=ILAB0102.ILE0716.I715{ILAB0102.net19268 ILAB0102.ILE0716.net01339} prev=[31] elemInv=1 pathInv=1 v.w=0.1
	 [49] xc_tree ILAB0102.ILE0316.net01339 w=8.1 e=inv_4_UCCLAB=ILAB0102.ILE0316.I715{ILAB0102.net22463 ILAB0102.ILE0316.net01339} prev=[32] elemInv=1 pathInv=1 v.w=0.1
	 [50] xc_tree ILAB0102.ILE1216.net01339 w=8.1 e=inv_4_UCCLAB=ILAB0102.ILE1216.I715{ILAB0102.net21158 ILAB0102.ILE1216.net01339} prev=[33] elemInv=1 pathInv=1 v.w=0.1
	 [51] xc_tree ILAB0302.ILE1501.net01339 w=8.1 e=inv_4_UCCLAB=ILAB0302.ILE1501.I715{ILAB0302.net36815 ILAB0302.ILE1501.net01339} prev=[34] elemInv=1 pathInv=1 v.w=0.1
	 [52] xc_tree ILAB0102.ILE0801.net01339 w=8.1 e=inv_4_UCCLAB=ILAB0102.ILE0801.I715{ILAB0102.net35669 ILAB0102.ILE0801.net01339} prev=[35] elemInv=1 pathInv=1 v.w=0.1
	 [53] xc_tree ILAB0102.ILE0601.net01339 w=8.1 e=inv_4_UCCLAB=ILAB0102.ILE0601.I715{ILAB0102.net29558 ILAB0102.ILE0601.net01339} prev=[36] elemInv=1 pathInv=1 v.w=0.1
	 [54] xc_tree ILAB0102.ILE0501.net01339 w=8.1 e=inv_4_UCCLAB=ILAB0102.ILE0501.I715{ILAB0102.net28388 ILAB0102.ILE0501.net01339} prev=[38] elemInv=1 pathInv=1 v.w=0.1
	 [55] xc_tree ILAB0102.ILE0401.net01339 w=8.1 e=inv_4_UCCLAB=ILAB0102.ILE0401.I715{ILAB0102.net33446 ILAB0102.ILE0401.net01339} prev=[39] elemInv=1 pathInv=1 v.w=0.1
	 [56] xc_tree ILAB0102.ILE0601.C w=8.7 e=switch1_sd=ILAB0102.ILE0601.Is70{ILAB0102.ILE0601.net01339 ILAB0102.ILE0601.C} prev=[53] elemInv=0 pathInv=1 v.w=0.1
	 [57] xc_tree ILAB0102.ILE1216.C w=8.7 e=switch1_sd=ILAB0102.ILE1216.Is70{ILAB0102.ILE1216.net01339 ILAB0102.ILE1216.C} prev=[50] elemInv=0 pathInv=1 v.w=0.1
	 [58] xc_tree ILAB0302.ILE1501.C w=8.7 e=switch1_sd=ILAB0302.ILE1501.Is70{ILAB0302.ILE1501.net01339 ILAB0302.ILE1501.C} prev=[51] elemInv=0 pathInv=1 v.w=0.1
	 [59] xc_tree ILAB0102.ILE0801.C w=8.7 e=switch1_sd=ILAB0102.ILE0801.Is70{ILAB0102.ILE0801.net01339 ILAB0102.ILE0801.C} prev=[52] elemInv=0 pathInv=1 v.w=0.1
	 [60] xc_tree ILAB0102.ILE1416.C w=8.7 e=switch1_sd=ILAB0102.ILE1416.Is70{ILAB0102.ILE1416.net01339 ILAB0102.ILE1416.C} prev=[46] elemInv=0 pathInv=1 v.w=0.1
	 [61] xc_tree ILAB0102.ILE0516.C w=8.7 e=switch1_sd=ILAB0102.ILE0516.Is70{ILAB0102.ILE0516.net01339 ILAB0102.ILE0516.C} prev=[47] elemInv=0 pathInv=1 v.w=0.1
	 [62] xc_tree ILAB0102.ILE0316.C w=8.7 e=switch1_sd=ILAB0102.ILE0316.Is70{ILAB0102.ILE0316.net01339 ILAB0102.ILE0316.C} prev=[49] elemInv=0 pathInv=1 v.w=0.1
	 [63] xc_tree ILAB0202.ILE0108.net01339 w=8.45 e=inv_4_UCCLAB=ILAB0202.ILE0108.I715{net18604<5> ILAB0202.ILE0108.net01339} prev=[20] elemInv=1 pathInv=1 v.w=0.1
	 [64] xc_tree ILAB0202.ILE0106.net01339 w=8.45 e=inv_4_UCCLAB=ILAB0202.ILE0106.I715{net18606<5> ILAB0202.ILE0106.net01339} prev=[21] elemInv=1 pathInv=1 v.w=0.1
	 [65] xc_tree ILAB0103.ILE1602.net0560 w=8.45 e=inv_4_UCCLAB=ILAB0103.ILE1602.I711{net18761<1> ILAB0103.ILE1602.net0560} prev=[22] elemInv=1 pathInv=1 v.w=0.1
	 [66] xc_tree ILAB0102.ILE1607.net0562 w=8.45 e=inv_4_UCCLAB=ILAB0102.ILE1607.I712{net18605<0> ILAB0102.ILE1607.net0562} prev=[23] elemInv=1 pathInv=1 v.w=0.1
	 [67] xc_tree ILAB0202.ILE0108.C w=10.05 e=switch1_sd=ILAB0202.ILE0108.Is70{ILAB0202.ILE0108.net01339 ILAB0202.ILE0108.C} prev=[63] elemInv=0 pathInv=1 v.w=0.1
	 [68] xc_tree ILAB0202.ILE0106.C w=10.05 e=switch1_sd=ILAB0202.ILE0106.Is70{ILAB0202.ILE0106.net01339 ILAB0202.ILE0106.C} prev=[64] elemInv=0 pathInv=1 v.w=0.1
	 [69] xc_tree ILAB0103.ILE1602.B w=10.05 e=switch1_sd=ILAB0103.ILE1602.Is86{ILAB0103.ILE1602.net0560 ILAB0103.ILE1602.B} prev=[65] elemInv=0 pathInv=1 v.w=0.1
	 [70] xc_tree ILAB0102.ILE1607.A w=10.05 e=switch1_sd=ILAB0102.ILE1607.Is94{ILAB0102.ILE1607.net0562 ILAB0102.ILE1607.A} prev=[66] elemInv=0 pathInv=1 v.w=0.1
	 [71] xc_tree net16596<0> w=10.25 e=switch=ILAB1001.ILE1610.Is129{net16596<0> ILAB1001.ILE1610.A} prev=[41] elemInv=0 pathInv=1 v.w=0.1
	 [72] xc_tree ILAB0102.ILE0316.net2746 w=8.8 e=switch_ds=ILAB0102.ILE0316.Is44{ILAB0102.ILE0316.C ILAB0102.ILE0316.net2746} prev=[62] elemInv=0 pathInv=1 v.w=0.1
	 [73] xc_tree ILAB0102.ILE0801.net2746 w=8.8 e=switch_ds=ILAB0102.ILE0801.Is44{ILAB0102.ILE0801.C ILAB0102.ILE0801.net2746} prev=[59] elemInv=0 pathInv=1 v.w=0.1
	 [74] xc_tree net10395<0> w=10.3 e=switch=ILAB0102.ILE1216.Is13{net10395<0> ILAB0102.ILE1216.C} prev=[57] elemInv=0 pathInv=1 v.w=0.1
	 [75] xc_tree ILAB0102.net21199 w=10.3 e=switch=ILAB0102.ILE1216.Is132{ILAB0102.net21199 ILAB0102.ILE1216.C} prev=[57] elemInv=0 pathInv=1 v.w=0.1
	 [76] xc_tree ILAB0102.ILE1216.net2746 w=8.8 e=switch_ds=ILAB0102.ILE1216.Is44{ILAB0102.ILE1216.C ILAB0102.ILE1216.net2746} prev=[57] elemInv=0 pathInv=1 v.w=0.1
	 [77] xc_tree ILAB0102.ILE1101.net01339 w=9 e=inv_4_UCCLAB=ILAB0102.ILE1101.I715{ILAB0102.net29663 ILAB0102.ILE1101.net01339} prev=[37] elemInv=1 pathInv=1 v.w=0.1
	 [78] xc_tree ILAB0102.ILE0601.net2746 w=8.8 e=switch_ds=ILAB0102.ILE0601.Is44{ILAB0102.ILE0601.C ILAB0102.ILE0601.net2746} prev=[56] elemInv=0 pathInv=1 v.w=0.1
	 [79] xc_tree ILAB0302.ILE1501.net2746 w=8.8 e=switch_ds=ILAB0302.ILE1501.Is44{ILAB0302.ILE1501.C ILAB0302.ILE1501.net2746} prev=[58] elemInv=0 pathInv=1 v.w=0.1
	 [80] xc_tree ILAB0102.net19057 w=10.3 e=switch=ILAB0102.ILE0516.Is12{ILAB0102.net19057 ILAB0102.ILE0516.C} prev=[61] elemInv=0 pathInv=1 v.w=0.1
	 [81] xc_tree ILAB0102.ILE0516.net2746 w=8.8 e=switch_ds=ILAB0102.ILE0516.Is44{ILAB0102.ILE0516.C ILAB0102.ILE0516.net2746} prev=[61] elemInv=0 pathInv=1 v.w=0.1
	 [82] xc_tree ILAB0102.ILE1416.net2746 w=8.8 e=switch_ds=ILAB0102.ILE1416.Is44{ILAB0102.ILE1416.C ILAB0102.ILE1416.net2746} prev=[60] elemInv=0 pathInv=1 v.w=0.1
	 [83] xc_tree ILAB0102.ILE1101.C w=10.6 e=switch1_sd=ILAB0102.ILE1101.Is70{ILAB0102.ILE1101.net01339 ILAB0102.ILE1101.C} prev=[77] elemInv=0 pathInv=1 v.w=0.1
	 [84] xc_tree ILAB0101.net23738 w=10.8 e=switch=ILAB0101.ILE0216.Is29{ILAB0101.net23738 ILAB0101.ILE0216.C} prev=[45] elemInv=0 pathInv=1 v.w=0.1
	 [85] xc_tree ILAB0101.net22297 w=10.8 e=switch=ILAB0101.ILE0216.Is12{ILAB0101.net22297 ILAB0101.ILE0216.C} prev=[45] elemInv=0 pathInv=1 v.w=0.1
	 [86] xc_tree net18572<0> w=11.65 e=switch=ILAB0202.ILE0106.Is132{net18572<0> ILAB0202.ILE0106.C} prev=[68] elemInv=0 pathInv=1 v.w=0.1
	 [87] xc_tree net18564<0> w=11.65 e=switch=ILAB0202.ILE0108.Is132{net18564<0> ILAB0202.ILE0108.C} prev=[67] elemInv=0 pathInv=1 v.w=0.1
	 [88] xc_tree ILAB0103.net26509 w=11.65 e=switch=ILAB0103.ILE1602.Is130{ILAB0103.net26509 ILAB0103.ILE1602.B} prev=[69] elemInv=0 pathInv=1 v.w=0.1
	 [89] xc_tree ILAB1001.ILE1410.C w=10.75 e=switch_sd=ILAB1001.ILE1410.Is125{net16596<0> ILAB1001.ILE1410.C} prev=[71] elemInv=0 pathInv=1 v.w=0.1
	 [90] xc_tree ILAB0103.ILE1201.net2685 w=10.85 e=switch2=ILAB0103.ILE1201.Is127{net10395<0> ILAB0103.ILE1201.net2685} prev=[74] elemInv=0 pathInv=1 v.w=0.1
	 [91] xc_tree ILAB0102.ILE0512.net1844 w=10.85 e=switch2=ILAB0102.ILE0512.Is31{ILAB0102.net19057 ILAB0102.ILE0512.net1844} prev=[80] elemInv=0 pathInv=1 v.w=0.1
	 [92] xc_tree ILAB0102.ILE0513.C w=10.8 e=switch_sd=ILAB0102.ILE0513.Is21{ILAB0102.net19057 ILAB0102.ILE0513.C} prev=[80] elemInv=0 pathInv=1 v.w=0.1
	 [93] xc_tree net17194<1> w=12.2 e=switch=ILAB0102.ILE1101.Is13{net17194<1> ILAB0102.ILE1101.C} prev=[83] elemInv=0 pathInv=1 v.w=0.1
	 [94] xc_tree ILAB1001.ILE1410.net2746 w=10.85 e=switch_ds=ILAB1001.ILE1410.Is44{ILAB1001.ILE1410.C ILAB1001.ILE1410.net2746} prev=[89] elemInv=0 pathInv=1 v.w=0.1
	 [95] xc_tree ILAB0101.ILE0215.C w=11.3 e=switch_sd=ILAB0101.ILE0215.Is28{ILAB0101.net23738 ILAB0101.ILE0215.C} prev=[84] elemInv=0 pathInv=1 v.w=0.1
	 [96] xc_tree ILAB0101.ILE0216.net2685 w=11.35 e=switch2=ILAB0101.ILE0216.Is127{ILAB0101.net22297 ILAB0101.ILE0216.net2685} prev=[85] elemInv=0 pathInv=1 v.w=0.1
	 [97] xc_tree ILAB0102.ILE0513.net2746 w=10.9 e=switch_ds=ILAB0102.ILE0513.Is44{ILAB0102.ILE0513.C ILAB0102.ILE0513.net2746} prev=[92] elemInv=0 pathInv=1 v.w=0.1
	 [98] xc_tree ILAB0103.net15502 w=11.05 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE1201.Iho1{ILAB0103.ILE1201.net2685 ILAB0103.net15502} prev=[90] elemInv=1 pathInv=0 v.w=0.1
	 [99] xc_tree ILAB0102.net19462 w=11.05 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0512.Ihi7{ILAB0102.ILE0512.net1844 ILAB0102.net19462} prev=[91] elemInv=1 pathInv=0 v.w=0.1
	 [100] xc_tree ILAB0102.ILE0511.C w=11.9 e=switch=ILAB0102.ILE0511.Is13{ILAB0102.net19462 ILAB0102.ILE0511.C} prev=[99] elemInv=0 pathInv=0 v.w=0.1
	 [101] xc_tree ILAB0103.ILE1202.C w=11.55 e=switch_sd=ILAB0103.ILE1202.Is21{ILAB0103.net15502 ILAB0103.ILE1202.C} prev=[98] elemInv=0 pathInv=0 v.w=0.1
	 [102] xc_tree ILAB0103.ILE1204.C w=11.9 e=switch=ILAB0103.ILE1204.Is13{ILAB0103.net15502 ILAB0103.ILE1204.C} prev=[98] elemInv=0 pathInv=0 v.w=0.1
	 [103] xc_tree ILAB0101.ILE0215.net2746 w=11.4 e=switch_ds=ILAB0101.ILE0215.Is44{ILAB0101.ILE0215.C ILAB0101.ILE0215.net2746} prev=[95] elemInv=0 pathInv=1 v.w=0.1
	 [104] xc_tree net17230<6> w=11.55 e=sw_b_v2_inv_UCCLAB=ILAB0101.ILE0216.Iho1{ILAB0101.ILE0216.net2685 net17230<6>} prev=[96] elemInv=1 pathInv=0 v.w=0.1
	 [105] xc_tree ILAB0102.ILE0202.C w=12.05 e=switch_sd=ILAB0102.ILE0202.Is20{net17230<6> ILAB0102.ILE0202.C} prev=[104] elemInv=0 pathInv=0 v.w=0.1
	 [106] xc_tree ILAB0102.ILE0204.C w=12.4 e=switch=ILAB0102.ILE0204.Is12{net17230<6> ILAB0102.ILE0204.C} prev=[104] elemInv=0 pathInv=0 v.w=0.1
	 [107] xc_tree ILAB0103.ILE1202.net2746 w=11.65 e=switch_ds=ILAB0103.ILE1202.Is44{ILAB0103.ILE1202.C ILAB0103.ILE1202.net2746} prev=[101] elemInv=0 pathInv=0 v.w=0.1
	 [108] xc_tree ILAB0102.ILE1406.C w=12.15 e=switch_sd=ILAB0102.ILE1406.Is125{net18572<0> ILAB0102.ILE1406.C} prev=[86] elemInv=0 pathInv=1 v.w=0.1
	 [109] xc_tree ILAB0102.ILE1408.C w=12.15 e=switch_sd=ILAB0102.ILE1408.Is125{net18564<0> ILAB0102.ILE1408.C} prev=[87] elemInv=0 pathInv=1 v.w=0.1
	 [110] xc_tree ILAB0103.ILE1302.C w=12.15 e=switch_sd=ILAB0103.ILE1302.Is125{ILAB0103.net26509 ILAB0103.ILE1302.C} prev=[88] elemInv=0 pathInv=1 v.w=0.1
	 [111] xc_tree ILAB0102.ILE0511.net2746 w=12 e=switch_ds=ILAB0102.ILE0511.Is44{ILAB0102.ILE0511.C ILAB0102.ILE0511.net2746} prev=[100] elemInv=0 pathInv=0 v.w=0.1
	 [112] xc_tree ILAB0103.ILE1204.net2746 w=12 e=switch_ds=ILAB0103.ILE1204.Is44{ILAB0103.ILE1204.C ILAB0103.ILE1204.net2746} prev=[102] elemInv=0 pathInv=0 v.w=0.1
	 [113] xc_tree ILAB0102.ILE0202.net2746 w=12.15 e=switch_ds=ILAB0102.ILE0202.Is44{ILAB0102.ILE0202.C ILAB0102.ILE0202.net2746} prev=[105] elemInv=0 pathInv=0 v.w=0.1
	 [114] xc_tree ILAB0102.ILE1406.net2746 w=12.25 e=switch_ds=ILAB0102.ILE1406.Is44{ILAB0102.ILE1406.C ILAB0102.ILE1406.net2746} prev=[108] elemInv=0 pathInv=1 v.w=0.1
	 [115] xc_tree ILAB0102.ILE1408.net2746 w=12.25 e=switch_ds=ILAB0102.ILE1408.Is44{ILAB0102.ILE1408.C ILAB0102.ILE1408.net2746} prev=[109] elemInv=0 pathInv=1 v.w=0.1
	 [116] xc_tree ILAB0103.ILE1302.net2746 w=12.25 e=switch_ds=ILAB0103.ILE1302.Is44{ILAB0103.ILE1302.C ILAB0103.ILE1302.net2746} prev=[110] elemInv=0 pathInv=1 v.w=0.1
	 [117] xc_tree ILAB0102.ILE1102.C w=13.05 e=switch=ILAB0102.ILE1102.Is12{net17194<1> ILAB0102.ILE1102.C} prev=[93] elemInv=0 pathInv=1 v.w=0.1
	 [118] xc_tree ILAB0102.ILE0204.net2746 w=12.5 e=switch_ds=ILAB0102.ILE0204.Is44{ILAB0102.ILE0204.C ILAB0102.ILE0204.net2746} prev=[106] elemInv=0 pathInv=0 v.w=0.1
	 [119] xc_tree ILAB0102.ILE1102.net2746 w=13.15 e=switch_ds=ILAB0102.ILE1102.Is44{ILAB0102.ILE1102.C ILAB0102.ILE1102.net2746} prev=[117] elemInv=0 pathInv=1 v.w=0.1
	 [120] xc_tree IIO33.I5.net0151 w=2.8 e=mux2i_P_UCCLAB=IIO33.I5.I27{IIO33.I5.net209 IIO33.I5.net0151} prev=[0] elemInv=1 pathInv=1 v.w=0.1
	 [121] xc_tree LongBus_20<2> w=3.8 e=invtd52_AVDD=IIO33.I5.I8{IIO33.I5.net0151 LongBus_20<2>} prev=[120] elemInv=1 pathInv=0 v.w=0.1
	 [122] xc_tree net8311<13> w=4.65 e=buftd52C_UCCLAB=I1804.I7{LongBus_20<2> net8311<13>} prev=[121] elemInv=0 pathInv=0 v.w=0.1
	 [123] xc_tree ILAB0401.net17425 w=6.45 e=switch_ds=ILAB0401.I697{net8320<5> ILAB0401.net17425} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [124] xc_tree LongBus_6<2> w=5.35 e=buftd52_UCCLAB=ILAB0401.I4772.I7{net8311<13> LongBus_6<2>} prev=[122] elemInv=0 pathInv=0 v.w=0.1
	 [125] xc_tree ILAB0201.net22466 w=7.3 e=switch_ds=ILAB0201.I558{LongBus_78<10> ILAB0201.net22466} prev=[7] elemInv=0 pathInv=0 v.w=0.1
	 [126] xc_tree net8299<13> w=6.2 e=buftd52_UCCLAB=ILAB0403.I4772.I6{LongBus_6<2> net8299<13>} prev=[124] elemInv=0 pathInv=0 v.w=0.1
	 [127] xc_tree net18604<0> w=8.15 e=switch_ds=ILAB0102.I1316{LongBus_1<10> net18604<0>} prev=[15] elemInv=0 pathInv=0 v.w=0.1
	 [128] xc_tree LongBus_71<2> w=6.9 e=buftd52C_UCCLAB=I3743.I7{net8299<13> LongBus_71<2>} prev=[126] elemInv=0 pathInv=0 v.w=0.1
	 [129] xc_tree ILAB0401.ILE0816.net01342 w=6.75 e=inv_4_UCCLAB=ILAB0401.ILE0816.I713{ILAB0401.net17425 ILAB0401.ILE0816.net01342} prev=[123] elemInv=1 pathInv=1 v.w=0.1
	 [130] xc_tree ILAB0401.net19912 w=9.05 e=switch=ILAB0401.ILE0716.Is12{ILAB0401.net19912 ILAB0401.ILE0716.C} prev=[17] elemInv=0 pathInv=1 v.w=0.1
	 [131] xc_tree ILAB0401.net19307 w=8.05 e=switch=ILAB0401.ILE0716.Is117{ILAB0401.net19307 ILAB0401.ILE0716.C} prev=[17] elemInv=0 pathInv=1 v.w=0.1
	 [132] xc_tree ILAB0102.net30917 w=8.7 e=switch_ds=ILAB0102.I370{LongBus_73<10> ILAB0102.net30917} prev=[19] elemInv=0 pathInv=0 v.w=0.1
	 [133] xc_tree ILAB0401.ILE0816.B w=8.35 e=switch1_sd=ILAB0401.ILE0816.Is62{ILAB0401.ILE0816.net01342 ILAB0401.ILE0816.B} prev=[129] elemInv=0 pathInv=1 v.w=0.1
	 [134] xc_tree ILAB0103.net33446 w=8.212 e=switch_ds=ILAB0103.I772{LongBus_71<2> ILAB0103.net33446} prev=[128] elemInv=0 pathInv=0 v.w=0.1
	 [135] xc_tree ILAB0103.net34814 w=8.212 e=switch_ds=ILAB0103.I969{LongBus_71<2> ILAB0103.net34814} prev=[128] elemInv=0 pathInv=0 v.w=0.1
	 [136] xc_tree ILAB0103.net30740 w=8.212 e=switch_ds=ILAB0103.I1185{LongBus_71<2> ILAB0103.net30740} prev=[128] elemInv=0 pathInv=0 v.w=0.1
	 [137] xc_tree net11340<2> w=8.75 e=switch=ILAB0402.ILE0102.Is117{net11340<2> ILAB0402.ILE0102.C} prev=[28] elemInv=0 pathInv=1 v.w=0.1
	 [138] xc_tree ILAB0201.ILE0316.net01345 w=7.6 e=inv_4_UCCLAB=ILAB0201.ILE0316.I714{ILAB0201.net22466 ILAB0201.ILE0316.net01345} prev=[125] elemInv=1 pathInv=1 v.w=0.1
	 [139] xc_tree ILAB0201.ILE0316.A w=9.2 e=switch1_sd=ILAB0201.ILE0316.Is54{ILAB0201.ILE0316.net01345 ILAB0201.ILE0316.A} prev=[138] elemInv=0 pathInv=1 v.w=0.1
	 [140] xc_tree net16312<6> w=9.65 e=switch=ILAB0401.ILE0516.Is51{net16312<6> ILAB0401.net19307} prev=[131] elemInv=0 pathInv=1 v.w=0.1
	 [141] xc_tree ILAB0102.ILE0501.C w=10.756 e=switch1_sd=ILAB0102.ILE0501.Is70{ILAB0102.ILE0501.net01339 ILAB0102.ILE0501.C} prev=[54] elemInv=0 pathInv=1 v.w=0.1
	 [142] xc_tree ILAB0102.ILE0401.C w=10.756 e=switch1_sd=ILAB0102.ILE0401.Is70{ILAB0102.ILE0401.net01339 ILAB0102.ILE0401.C} prev=[55] elemInv=0 pathInv=1 v.w=0.1
	 [143] xc_tree ILAB0102.ILE0716.C w=10.756 e=switch1_sd=ILAB0102.ILE0716.Is70{ILAB0102.ILE0716.net01339 ILAB0102.ILE0716.C} prev=[48] elemInv=0 pathInv=1 v.w=0.1
	 [144] xc_tree ILAB0102.ILE1608.net0562 w=8.45 e=inv_4_UCCLAB=ILAB0102.ILE1608.I712{net18604<0> ILAB0102.ILE1608.net0562} prev=[127] elemInv=1 pathInv=1 v.w=0.1
	 [145] xc_tree ILAB0103.ILE0401.net01339 w=8.424 e=inv_4_UCCLAB=ILAB0103.ILE0401.I715{ILAB0103.net33446 ILAB0103.ILE0401.net01339} prev=[134] elemInv=1 pathInv=1 v.w=0.1
	 [146] xc_tree ILAB0103.ILE0701.net01339 w=8.424 e=inv_4_UCCLAB=ILAB0103.ILE0701.I715{ILAB0103.net34814 ILAB0103.ILE0701.net01339} prev=[135] elemInv=1 pathInv=1 v.w=0.1
	 [147] xc_tree ILAB0103.ILE0201.net01339 w=8.424 e=inv_4_UCCLAB=ILAB0103.ILE0201.I715{ILAB0103.net30740 ILAB0103.ILE0201.net01339} prev=[136] elemInv=1 pathInv=1 v.w=0.1
	 [148] xc_tree ILAB0103.ILE0401.C w=9.036 e=switch1_sd=ILAB0103.ILE0401.Is70{ILAB0103.ILE0401.net01339 ILAB0103.ILE0401.C} prev=[145] elemInv=0 pathInv=1 v.w=0.1
	 [149] xc_tree ILAB0103.ILE0701.C w=11.08 e=switch1_sd=ILAB0103.ILE0701.Is70{ILAB0103.ILE0701.net01339 ILAB0103.ILE0701.C} prev=[146] elemInv=0 pathInv=1 v.w=0.1
	 [150] xc_tree ILAB0103.ILE0201.C w=9.036 e=switch1_sd=ILAB0103.ILE0201.Is70{ILAB0103.ILE0201.net01339 ILAB0103.ILE0201.C} prev=[147] elemInv=0 pathInv=1 v.w=0.1
	 [151] xc_tree ILAB0102.ILE1608.A w=10.05 e=switch1_sd=ILAB0102.ILE1608.Is94{ILAB0102.ILE1608.net0562 ILAB0102.ILE1608.A} prev=[144] elemInv=0 pathInv=1 v.w=0.1
	 [152] xc_tree ILAB0102.ILE1301.net01342 w=9 e=inv_4_UCCLAB=ILAB0102.ILE1301.I713{ILAB0102.net30917 ILAB0102.ILE1301.net01342} prev=[132] elemInv=1 pathInv=1 v.w=0.1
	 [153] xc_tree net17214<1> w=12.356 e=switch=ILAB0102.ILE0601.Is13{net17214<1> ILAB0102.ILE0601.C} prev=[56] elemInv=0 pathInv=1 v.w=0.1
	 [154] xc_tree ILAB0102.net20524 w=10.3 e=switch=ILAB0102.ILE0601.Is133{ILAB0102.net20524 ILAB0102.ILE0601.C} prev=[56] elemInv=0 pathInv=1 v.w=0.1
	 [155] xc_tree net17206<0> w=10.3 e=switch=ILAB0102.ILE0801.Is12{net17206<0> ILAB0102.ILE0801.C} prev=[59] elemInv=0 pathInv=1 v.w=0.1
	 [156] xc_tree ILAB0102.net20702 w=10.3 e=switch=ILAB0102.ILE0801.Is117{ILAB0102.net20702 ILAB0102.ILE0801.C} prev=[59] elemInv=0 pathInv=1 v.w=0.1
	 [157] xc_tree ILAB0102.net19778 w=10.3 e=switch=ILAB0102.ILE0516.Is29{ILAB0102.net19778 ILAB0102.ILE0516.C} prev=[61] elemInv=0 pathInv=1 v.w=0.1
	 [158] xc_tree ILAB0102.net17012 w=10.3 e=switch=ILAB0102.ILE0516.Is117{ILAB0102.net17012 ILAB0102.ILE0516.C} prev=[61] elemInv=0 pathInv=1 v.w=0.1
	 [159] xc_tree ILAB0102.net23783 w=10.3 e=switch=ILAB0102.ILE0316.Is29{ILAB0102.net23783 ILAB0102.ILE0316.C} prev=[62] elemInv=0 pathInv=1 v.w=0.1
	 [160] xc_tree ILAB0402.ILE0102.net2670 w=9.3 e=switch2=ILAB0402.ILE0102.Is7{net11340<2> ILAB0402.ILE0102.net2670} prev=[137] elemInv=0 pathInv=1 v.w=0.1
	 [161] xc_tree ILAB0102.ILE1301.B w=10.6 e=switch1_sd=ILAB0102.ILE1301.Is62{ILAB0102.ILE1301.net01342 ILAB0102.ILE1301.B} prev=[152] elemInv=0 pathInv=1 v.w=0.1
	 [162] xc_tree net10435<1> w=10.636 e=switch=ILAB0103.ILE0201.Is13{net10435<1> ILAB0103.ILE0201.C} prev=[150] elemInv=0 pathInv=1 v.w=0.1
	 [163] xc_tree ILAB0103.ILE0201.net2746 w=9.148 e=switch_ds=ILAB0103.ILE0201.Is44{ILAB0103.ILE0201.C ILAB0103.ILE0201.net2746} prev=[150] elemInv=0 pathInv=1 v.w=0.1
	 [164] xc_tree net10427<0> w=11.636 e=switch=ILAB0103.ILE0401.Is12{net10427<0> ILAB0103.ILE0401.C} prev=[148] elemInv=0 pathInv=1 v.w=0.1
	 [165] xc_tree ILAB0103.net20747 w=10.636 e=switch=ILAB0103.ILE0401.Is117{ILAB0103.net20747 ILAB0103.ILE0401.C} prev=[148] elemInv=0 pathInv=1 v.w=0.1
	 [166] xc_tree ILAB0103.ILE0401.net2746 w=9.148 e=switch_ds=ILAB0103.ILE0401.Is44{ILAB0103.ILE0401.C ILAB0103.ILE0401.net2746} prev=[148] elemInv=0 pathInv=1 v.w=0.1
	 [167] xc_tree ILAB0401.ILE0712.net1844 w=9.6 e=switch2=ILAB0401.ILE0712.Is31{ILAB0401.net19912 ILAB0401.ILE0712.net1844} prev=[130] elemInv=0 pathInv=1 v.w=0.1
	 [168] xc_tree net18434<0> w=10.8 e=switch=ILAB0201.ILE0316.Is9{net18434<0> ILAB0201.ILE0316.A} prev=[139] elemInv=0 pathInv=1 v.w=0.1
	 [169] xc_tree ILAB0402.net26775 w=9.5 e=sw_b_v2_inv_UCCLAB=ILAB0402.ILE0102.Ivo3{ILAB0402.ILE0102.net2670 ILAB0402.net26775} prev=[160] elemInv=1 pathInv=0 v.w=0.1
	 [170] xc_tree ILAB0402.ILE0202.C w=10.012 e=switch_sd=ILAB0402.ILE0202.Is108{ILAB0402.net26775 ILAB0402.ILE0202.C} prev=[169] elemInv=0 pathInv=0 v.w=0.1
	 [171] xc_tree ILAB0401.net21037 w=9.8 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0712.Ihi7{ILAB0401.ILE0712.net1844 ILAB0401.net21037} prev=[167] elemInv=1 pathInv=0 v.w=0.1
	 [172] xc_tree ILAB0402.ILE0502.C w=10.162 e=switch_sd=ILAB0402.ILE0502.Is20{net16312<6> ILAB0402.ILE0502.C} prev=[140] elemInv=0 pathInv=1 v.w=0.1
	 [173] xc_tree ILAB0401.ILE0710.C w=10.312 e=switch_sd=ILAB0401.ILE0710.Is20{ILAB0401.net21037 ILAB0401.ILE0710.C} prev=[171] elemInv=0 pathInv=0 v.w=0.1
	 [174] xc_tree ILAB0402.ILE0202.net2746 w=10.124 e=switch_ds=ILAB0402.ILE0202.Is44{ILAB0402.ILE0202.C ILAB0402.ILE0202.net2746} prev=[170] elemInv=0 pathInv=0 v.w=0.1
	 [175] xc_tree ILAB0102.net15347 w=12.4 e=switch=ILAB0102.ILE1607.Is113{ILAB0102.net15347 ILAB0102.ILE1607.A} prev=[70] elemInv=0 pathInv=1 v.w=0.1
	 [176] xc_tree ILAB0102.net21649 w=11.65 e=switch=ILAB0102.ILE1608.Is128{ILAB0102.net21649 ILAB0102.ILE1608.A} prev=[151] elemInv=0 pathInv=1 v.w=0.1
	 [177] xc_tree ILAB0402.ILE0502.net2746 w=10.274 e=switch_ds=ILAB0402.ILE0502.Is44{ILAB0402.ILE0502.C ILAB0402.ILE0502.net2746} prev=[172] elemInv=0 pathInv=1 v.w=0.1
	 [178] xc_tree ILAB0102.net22414 w=11.9 e=switch=ILAB0102.ILE0314.Is37{ILAB0102.net23783 ILAB0102.net22414} prev=[159] elemInv=0 pathInv=1 v.w=0.1
	 [179] xc_tree ILAB0102.ILE1213.net1844 w=10.85 e=switch2=ILAB0102.ILE1213.Is31{net10395<0> ILAB0102.ILE1213.net1844} prev=[74] elemInv=0 pathInv=1 v.w=0.1
	 [180] xc_tree net10411<5> w=11.9 e=switch=ILAB0102.ILE0816.Is37{net10411<5> ILAB0102.net21199} prev=[75] elemInv=0 pathInv=1 v.w=0.1
	 [181] xc_tree ILAB0102.ILE0515.C w=10.812 e=switch_sd=ILAB0102.ILE0515.Is28{ILAB0102.net19778 ILAB0102.ILE0515.C} prev=[157] elemInv=0 pathInv=1 v.w=0.1
	 [182] xc_tree ILAB0102.ILE0514.C w=10.812 e=switch_sd=ILAB0102.ILE0514.Is20{ILAB0102.net19057 ILAB0102.ILE0514.C} prev=[80] elemInv=0 pathInv=1 v.w=0.1
	 [183] xc_tree ILAB0102.net19937 w=11.9 e=switch=ILAB0102.ILE0512.Is51{ILAB0102.net19057 ILAB0102.net19937} prev=[80] elemInv=0 pathInv=1 v.w=0.1
	 [184] xc_tree ILAB0102.ILE0516.net2685 w=10.85 e=switch2=ILAB0102.ILE0516.Is127{ILAB0102.net19057 ILAB0102.ILE0516.net2685} prev=[80] elemInv=0 pathInv=1 v.w=0.1
	 [185] xc_tree ILAB0102.net17842 w=11.9 e=switch=ILAB0102.ILE0301.Is35{ILAB0102.net17842 ILAB0102.net20524} prev=[154] elemInv=0 pathInv=1 v.w=0.1
	 [186] xc_tree ILAB0102.net20587 w=12.9 e=switch=ILAB0102.ILE0601.Is51{ILAB0102.net20587 ILAB0102.net20702} prev=[156] elemInv=0 pathInv=1 v.w=0.1
	 [187] xc_tree net10431<6> w=11.9 e=switch=ILAB0102.ILE0316.Is51{net10431<6> ILAB0102.net17012} prev=[158] elemInv=0 pathInv=1 v.w=0.1
	 [188] xc_tree ILAB0401.ILE0710.net2746 w=10.424 e=switch_ds=ILAB0401.ILE0710.Is44{ILAB0401.ILE0710.C ILAB0401.ILE0710.net2746} prev=[173] elemInv=0 pathInv=0 v.w=0.1
	 [189] xc_tree net17186<1> w=12.2 e=switch=ILAB0102.ILE1301.Is11{net17186<1> ILAB0102.ILE1301.B} prev=[161] elemInv=0 pathInv=1 v.w=0.1
	 [190] xc_tree ILAB0103.ILE0202.net2685 w=11.336 e=switch2=ILAB0103.ILE0202.Is127{net10435<1> ILAB0103.ILE0202.net2685} prev=[162] elemInv=0 pathInv=1 v.w=0.1
	 [191] xc_tree ILAB0102.ILE0214.net1844 w=11.186 e=switch2=ILAB0102.ILE0214.Is31{net10435<1> ILAB0102.ILE0214.net1844} prev=[162] elemInv=0 pathInv=1 v.w=0.1
	 [192] xc_tree ILAB0103.ILE0401.net2670 w=11.336 e=switch2=ILAB0103.ILE0401.Is7{ILAB0103.net20747 ILAB0103.ILE0401.net2670} prev=[165] elemInv=0 pathInv=1 v.w=0.1
	 [193] xc_tree ILAB0102.ILE0716.net2746 w=10.868 e=switch_ds=ILAB0102.ILE0716.Is44{ILAB0102.ILE0716.C ILAB0102.ILE0716.net2746} prev=[143] elemInv=0 pathInv=1 v.w=0.1
	 [194] xc_tree ILAB0102.ILE0401.net2746 w=10.868 e=switch_ds=ILAB0102.ILE0401.Is44{ILAB0102.ILE0401.C ILAB0102.ILE0401.net2746} prev=[142] elemInv=0 pathInv=1 v.w=0.1
	 [195] xc_tree ILAB0102.ILE0501.net2746 w=10.868 e=switch_ds=ILAB0102.ILE0501.Is44{ILAB0102.ILE0501.C ILAB0102.ILE0501.net2746} prev=[141] elemInv=0 pathInv=1 v.w=0.1
	 [196] xc_tree ILAB0201.ILE0314.C w=11.312 e=switch_sd=ILAB0201.ILE0314.Is21{net18434<0> ILAB0201.ILE0314.C} prev=[168] elemInv=0 pathInv=1 v.w=0.1
	 [197] xc_tree ILAB0102.ILE0515.net2746 w=10.924 e=switch_ds=ILAB0102.ILE0515.Is44{ILAB0102.ILE0515.C ILAB0102.ILE0515.net2746} prev=[181] elemInv=0 pathInv=1 v.w=0.1
	 [198] xc_tree ILAB0102.ILE0514.net2746 w=10.924 e=switch_ds=ILAB0102.ILE0514.Is44{ILAB0102.ILE0514.C ILAB0102.ILE0514.net2746} prev=[182] elemInv=0 pathInv=1 v.w=0.1
	 [199] xc_tree ILAB0102.net16267 w=11.05 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1213.Ihi7{ILAB0102.ILE1213.net1844 ILAB0102.net16267} prev=[179] elemInv=1 pathInv=0 v.w=0.1
	 [200] xc_tree net10423<6> w=11.062 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0516.Iho1{ILAB0102.ILE0516.net2685 net10423<6>} prev=[184] elemInv=1 pathInv=0 v.w=0.1
	 [201] xc_tree ILAB0102.net18544 w=12.65 e=switch=ILAB0102.ILE0508.Is35{ILAB0102.net19462 ILAB0102.net18544} prev=[99] elemInv=0 pathInv=0 v.w=0.1
	 [202] xc_tree ILAB0102.ILE1210.C w=11.562 e=switch_sd=ILAB0102.ILE1210.Is21{ILAB0102.net16267 ILAB0102.ILE1210.C} prev=[199] elemInv=0 pathInv=0 v.w=0.1
	 [203] xc_tree ILAB0102.ILE1212.C w=11.912 e=switch=ILAB0102.ILE1212.Is13{ILAB0102.net16267 ILAB0102.ILE1212.C} prev=[199] elemInv=0 pathInv=0 v.w=0.1
	 [204] xc_tree ILAB0103.ILE0504.net2685 w=11.762 e=switch2=ILAB0103.ILE0504.Is127{net10423<6> ILAB0103.ILE0504.net2685} prev=[200] elemInv=0 pathInv=0 v.w=0.1
	 [205] xc_tree ILAB0103.ILE0503.C w=11.924 e=switch=ILAB0103.ILE0503.Is13{net10423<6> ILAB0103.ILE0503.C} prev=[200] elemInv=0 pathInv=0 v.w=0.1
	 [206] xc_tree ILAB0103.ILE0701.net2746 w=11.192 e=switch_ds=ILAB0103.ILE0701.Is44{ILAB0103.ILE0701.C ILAB0103.ILE0701.net2746} prev=[149] elemInv=0 pathInv=1 v.w=0.1
	 [207] xc_tree ILAB0102.net25537 w=11.386 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0214.Ihi7{ILAB0102.ILE0214.net1844 ILAB0102.net25537} prev=[191] elemInv=1 pathInv=0 v.w=0.1
	 [208] xc_tree ILAB0201.ILE0314.net2746 w=11.424 e=switch_ds=ILAB0201.ILE0314.Is44{ILAB0201.ILE0314.C ILAB0201.ILE0314.net2746} prev=[196] elemInv=0 pathInv=1 v.w=0.1
	 [209] xc_tree ILAB0103.net26752 w=11.586 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0202.Iho1{ILAB0103.ILE0202.net2685 ILAB0103.net26752} prev=[190] elemInv=1 pathInv=0 v.w=0.1
	 [210] xc_tree ILAB0103.net20655 w=11.586 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0401.Ivo3{ILAB0103.ILE0401.net2670 ILAB0103.net20655} prev=[192] elemInv=1 pathInv=0 v.w=0.1
	 [211] xc_tree ILAB0102.ILE0213.C w=12.248 e=switch=ILAB0102.ILE0213.Is13{ILAB0102.net25537 ILAB0102.ILE0213.C} prev=[207] elemInv=0 pathInv=0 v.w=0.1
	 [212] xc_tree ILAB0102.ILE1210.net2746 w=11.674 e=switch_ds=ILAB0102.ILE1210.Is44{ILAB0102.ILE1210.C ILAB0102.ILE1210.net2746} prev=[202] elemInv=0 pathInv=0 v.w=0.1
	 [213] xc_tree ILAB0103.net26419 w=13.186 e=switch=ILAB0103.ILE0202.Is35{ILAB0103.net26752 ILAB0103.net26419} prev=[209] elemInv=0 pathInv=0 v.w=0.1
	 [214] xc_tree ILAB0103.net20722 w=13.186 e=switch=ILAB0103.ILE0401.Is48{ILAB0103.net20722 ILAB0103.net20655} prev=[210] elemInv=0 pathInv=0 v.w=0.1
	 [215] xc_tree ILAB0102.ILE0416.net2635 w=12.186 e=switch2=ILAB0102.ILE0416.Is135{net10427<0> ILAB0102.ILE0416.net2635} prev=[164] elemInv=0 pathInv=1 v.w=0.1
	 [216] xc_tree ILAB0102.ILE1208.net1859 w=12.35 e=switch2=ILAB0102.ILE1208.Is119{ILAB0102.net21649 ILAB0102.ILE1208.net1859} prev=[176] elemInv=0 pathInv=1 v.w=0.1
	 [217] xc_tree ILAB0103.net24997 w=12.012 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0504.Iho1{ILAB0103.ILE0504.net2685 ILAB0103.net24997} prev=[204] elemInv=1 pathInv=1 v.w=0.1
	 [218] xc_tree ILAB0102.ILE0714.C w=12.762 e=switch=ILAB0102.ILE0714.Is132{ILAB0102.net22414 ILAB0102.ILE0714.C} prev=[178] elemInv=0 pathInv=1 v.w=0.1
	 [219] xc_tree ILAB0103.ILE0802.C w=12.762 e=switch=ILAB0103.ILE0802.Is29{net10411<5> ILAB0103.ILE0802.C} prev=[180] elemInv=0 pathInv=1 v.w=0.1
	 [220] xc_tree ILAB0102.ILE0612.C w=12.412 e=switch_sd=ILAB0102.ILE0612.Is116{ILAB0102.net19937 ILAB0102.ILE0612.C} prev=[183] elemInv=0 pathInv=1 v.w=0.1
	 [221] xc_tree ILAB0102.ILE0305.C w=12.762 e=switch=ILAB0102.ILE0305.Is12{ILAB0102.net17842 ILAB0102.ILE0305.C} prev=[185] elemInv=0 pathInv=1 v.w=0.1
	 [222] xc_tree ILAB0103.ILE0303.C w=12.762 e=switch=ILAB0103.ILE0303.Is13{net10431<6> ILAB0103.ILE0303.C} prev=[187] elemInv=0 pathInv=1 v.w=0.1
	 [223] xc_tree ILAB0102.net21469 w=13.5 e=switch=ILAB0102.ILE0511.Is133{ILAB0102.net21469 ILAB0102.ILE0511.C} prev=[100] elemInv=0 pathInv=0 v.w=0.1
	 [224] xc_tree ILAB0102.ILE1212.net2746 w=12.024 e=switch_ds=ILAB0102.ILE1212.Is44{ILAB0102.ILE1212.C ILAB0102.ILE1212.net2746} prev=[203] elemInv=0 pathInv=0 v.w=0.1
	 [225] xc_tree ILAB0103.ILE0503.net2746 w=12.036 e=switch_ds=ILAB0103.ILE0503.Is44{ILAB0103.ILE0503.C ILAB0103.ILE0503.net2746} prev=[205] elemInv=0 pathInv=0 v.w=0.1
	 [226] xc_tree net10427<5> w=12.386 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0416.Iho2{ILAB0102.ILE0416.net2635 net10427<5>} prev=[215] elemInv=1 pathInv=0 v.w=0.1
	 [227] xc_tree ILAB0102.ILE1302.C w=13.062 e=switch=ILAB0102.ILE1302.Is12{net17186<1> ILAB0102.ILE1302.C} prev=[189] elemInv=0 pathInv=1 v.w=0.1
	 [228] xc_tree ILAB0102.ILE0213.net2746 w=12.36 e=switch_ds=ILAB0102.ILE0213.Is44{ILAB0102.ILE0213.C ILAB0102.ILE0213.net2746} prev=[211] elemInv=0 pathInv=0 v.w=0.1
	 [229] xc_tree ILAB0102.net22639 w=12.6 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1208.Ivi7{ILAB0102.ILE1208.net1859 ILAB0102.net22639} prev=[216] elemInv=1 pathInv=0 v.w=0.1
	 [230] xc_tree ILAB0102.ILE0602.net2685 w=12.918 e=switch2=ILAB0102.ILE0602.Is127{net17214<1> ILAB0102.ILE0602.net2685} prev=[153] elemInv=0 pathInv=1 v.w=0.1
	 [231] xc_tree ILAB0103.ILE0402.net2650 w=12.936 e=switch2=ILAB0103.ILE0402.Is143{net10427<5> ILAB0103.ILE0402.net2650} prev=[226] elemInv=0 pathInv=0 v.w=0.1
	 [232] xc_tree ILAB0102.ILE1407.net1862 w=12.95 e=switch2=ILAB0102.ILE1407.Is111{ILAB0102.net15347 ILAB0102.ILE1407.net1862} prev=[175] elemInv=0 pathInv=1 v.w=0.1
	 [233] xc_tree ILAB0102.ILE0612.net2746 w=12.524 e=switch_ds=ILAB0102.ILE0612.Is44{ILAB0102.ILE0612.C ILAB0102.ILE0612.net2746} prev=[220] elemInv=0 pathInv=1 v.w=0.1
	 [234] xc_tree ILAB0102.ILE0808.net1859 w=13.15 e=switch2=ILAB0102.ILE0808.Is119{ILAB0102.net22639 ILAB0102.ILE0808.net1859} prev=[229] elemInv=0 pathInv=0 v.w=0.1
	 [235] xc_tree ILAB0102.ILE0708.C w=13.162 e=switch_sd=ILAB0102.ILE0708.Is124{ILAB0102.net18544 ILAB0102.ILE0708.C} prev=[201] elemInv=0 pathInv=0 v.w=0.1
	 [236] xc_tree ILAB0102.ILE0714.net2746 w=12.874 e=switch_ds=ILAB0102.ILE0714.Is44{ILAB0102.ILE0714.C ILAB0102.ILE0714.net2746} prev=[218] elemInv=0 pathInv=1 v.w=0.1
	 [237] xc_tree ILAB0103.ILE0802.net2746 w=12.874 e=switch_ds=ILAB0103.ILE0802.Is44{ILAB0103.ILE0802.C ILAB0103.ILE0802.net2746} prev=[219] elemInv=0 pathInv=1 v.w=0.1
	 [238] xc_tree ILAB0102.ILE0305.net2746 w=12.874 e=switch_ds=ILAB0102.ILE0305.Is44{ILAB0102.ILE0305.C ILAB0102.ILE0305.net2746} prev=[221] elemInv=0 pathInv=1 v.w=0.1
	 [239] xc_tree ILAB0103.ILE0303.net2746 w=12.874 e=switch_ds=ILAB0103.ILE0303.Is44{ILAB0103.ILE0303.C ILAB0103.ILE0303.net2746} prev=[222] elemInv=0 pathInv=1 v.w=0.1
	 [240] xc_tree ILAB0102.ILE0605.C w=13.762 e=switch=ILAB0102.ILE0605.Is12{ILAB0102.net20587 ILAB0102.ILE0605.C} prev=[186] elemInv=0 pathInv=1 v.w=0.1
	 [241] xc_tree ILAB0102.net26392 w=13.13 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0602.Iho1{ILAB0102.ILE0602.net2685 ILAB0102.net26392} prev=[230] elemInv=1 pathInv=0 v.w=0.1
	 [242] xc_tree ILAB0103.net26214 w=13.136 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0402.Iho3{ILAB0103.ILE0402.net2650 ILAB0103.net26214} prev=[231] elemInv=1 pathInv=1 v.w=0.1
	 [243] xc_tree ILAB0102.net25744 w=13.15 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1407.Ivi6{ILAB0102.ILE1407.net1862 ILAB0102.net25744} prev=[232] elemInv=1 pathInv=0 v.w=0.1
	 [244] xc_tree ILAB0102.ILE1302.net2746 w=13.174 e=switch_ds=ILAB0102.ILE1302.Is44{ILAB0102.ILE1302.C ILAB0102.ILE1302.net2746} prev=[227] elemInv=0 pathInv=1 v.w=0.1
	 [245] xc_tree ILAB0102.ILE0606.C w=13.992 e=switch=ILAB0102.ILE0606.Is12{ILAB0102.net26392 ILAB0102.ILE0606.C} prev=[241] elemInv=0 pathInv=0 v.w=0.1
	 [246] xc_tree ILAB0103.ILE0403.C w=13.648 e=switch_sd=ILAB0103.ILE0403.Is36{ILAB0103.net26214 ILAB0103.ILE0403.C} prev=[242] elemInv=0 pathInv=1 v.w=0.1
	 [247] xc_tree ILAB0102.net18004 w=13.35 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0808.Ivi7{ILAB0102.ILE0808.net1859 ILAB0102.net18004} prev=[234] elemInv=1 pathInv=1 v.w=0.1
	 [248] xc_tree ILAB0102.ILE1307.C w=13.662 e=switch_sd=ILAB0102.ILE1307.Is124{ILAB0102.net25744 ILAB0102.ILE1307.C} prev=[243] elemInv=0 pathInv=0 v.w=0.1
	 [249] xc_tree ILAB0102.ILE0708.net2746 w=13.274 e=switch_ds=ILAB0102.ILE0708.Is44{ILAB0102.ILE0708.C ILAB0102.ILE0708.net2746} prev=[235] elemInv=0 pathInv=0 v.w=0.1
	 [250] xc_tree ILAB0103.ILE0602.C w=14.048 e=switch=ILAB0103.ILE0602.Is132{ILAB0103.net26419 ILAB0103.ILE0602.C} prev=[213] elemInv=0 pathInv=0 v.w=0.1
	 [251] xc_tree ILAB0103.ILE0404.C w=14.048 e=switch=ILAB0103.ILE0404.Is13{ILAB0103.net20722 ILAB0103.ILE0404.C} prev=[214] elemInv=0 pathInv=0 v.w=0.1
	 [252] xc_tree ILAB0102.ILE0508.C w=13.862 e=switch_sd=ILAB0102.ILE0508.Is125{ILAB0102.net18004 ILAB0102.ILE0508.C} prev=[247] elemInv=0 pathInv=1 v.w=0.1
	 [253] xc_tree ILAB0102.ILE0611.C w=14.362 e=switch=ILAB0102.ILE0611.Is132{ILAB0102.net21469 ILAB0102.ILE0611.C} prev=[223] elemInv=0 pathInv=0 v.w=0.1
	 [254] xc_tree ILAB0103.ILE0403.net2746 w=13.76 e=switch_ds=ILAB0103.ILE0403.Is44{ILAB0103.ILE0403.C ILAB0103.ILE0403.net2746} prev=[246] elemInv=0 pathInv=1 v.w=0.1
	 [255] xc_tree ILAB0102.ILE1307.net2746 w=13.774 e=switch_ds=ILAB0102.ILE1307.Is44{ILAB0102.ILE1307.C ILAB0102.ILE1307.net2746} prev=[248] elemInv=0 pathInv=0 v.w=0.1
	 [256] xc_tree ILAB0102.ILE0605.net2746 w=13.874 e=switch_ds=ILAB0102.ILE0605.Is44{ILAB0102.ILE0605.C ILAB0102.ILE0605.net2746} prev=[240] elemInv=0 pathInv=1 v.w=0.1
	 [257] xc_tree ILAB0102.ILE0508.net2746 w=13.974 e=switch_ds=ILAB0102.ILE0508.Is44{ILAB0102.ILE0508.C ILAB0102.ILE0508.net2746} prev=[252] elemInv=0 pathInv=1 v.w=0.1
	 [258] xc_tree ILAB0102.ILE0606.net2746 w=14.104 e=switch_ds=ILAB0102.ILE0606.Is44{ILAB0102.ILE0606.C ILAB0102.ILE0606.net2746} prev=[245] elemInv=0 pathInv=0 v.w=0.1
	 [259] xc_tree ILAB0103.ILE0404.net2746 w=14.16 e=switch_ds=ILAB0103.ILE0404.Is44{ILAB0103.ILE0404.C ILAB0103.ILE0404.net2746} prev=[251] elemInv=0 pathInv=0 v.w=0.1
	 [260] xc_tree ILAB0103.ILE0602.net2746 w=14.16 e=switch_ds=ILAB0103.ILE0602.Is44{ILAB0103.ILE0602.C ILAB0103.ILE0602.net2746} prev=[250] elemInv=0 pathInv=0 v.w=0.1
	 [261] xc_tree ILAB0102.ILE0611.net2746 w=14.474 e=switch_ds=ILAB0102.ILE0611.Is44{ILAB0102.ILE0611.C ILAB0102.ILE0611.net2746} prev=[253] elemInv=0 pathInv=0 v.w=0.1
	 [262] xc_tree ILAB0401.net22465 w=6.45 e=switch_ds=ILAB0401.I2783{net8320<5> ILAB0401.net22465} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [263] xc_tree ILAB0101.net17290 w=7.3 e=switch_ds=ILAB0101.I1956{LongBus_78<10> ILAB0101.net17290} prev=[7] elemInv=0 pathInv=0 v.w=0.1
	 [264] xc_tree ILAB0401.ILE0316.net01342 w=6.75 e=inv_4_UCCLAB=ILAB0401.ILE0316.I713{ILAB0401.net22465 ILAB0401.ILE0316.net01342} prev=[262] elemInv=1 pathInv=1 v.w=0.1
	 [265] xc_tree ILAB0102.net28301 w=8.7 e=switch_ds=ILAB0102.I1836{LongBus_73<10> ILAB0102.net28301} prev=[19] elemInv=0 pathInv=0 v.w=0.1
	 [266] xc_tree ILAB0102.net36815 w=8.7 e=switch_ds=ILAB0102.I1909{LongBus_73<10> ILAB0102.net36815} prev=[19] elemInv=0 pathInv=0 v.w=0.1
	 [267] xc_tree ILAB0401.ILE0316.B w=8.35 e=switch1_sd=ILAB0401.ILE0316.Is62{ILAB0401.ILE0316.net01342 ILAB0401.ILE0316.B} prev=[264] elemInv=0 pathInv=1 v.w=0.1
	 [268] xc_tree net16279<2> w=8.75 e=switch=ILAB0401.ILE0113.Is117{net16279<2> ILAB0401.ILE0113.C} prev=[27] elemInv=0 pathInv=1 v.w=0.1
	 [269] xc_tree ILAB0101.ILE0416.net01342 w=7.6 e=inv_4_UCCLAB=ILAB0101.ILE0416.I713{ILAB0101.net17290 ILAB0101.ILE0416.net01342} prev=[263] elemInv=1 pathInv=1 v.w=0.1
	 [270] xc_tree ILAB0101.ILE0416.B w=9.2 e=switch1_sd=ILAB0101.ILE0416.Is62{ILAB0101.ILE0416.net01342 ILAB0101.ILE0416.B} prev=[269] elemInv=0 pathInv=1 v.w=0.1
	 [271] xc_tree net16300<0> w=13.062 e=switch=ILAB0401.ILE0816.Is11{net16300<0> ILAB0401.ILE0816.B} prev=[133] elemInv=0 pathInv=1 v.w=0.1
	 [272] xc_tree ILAB0401.net23783 w=11.45 e=switch=ILAB0401.ILE0316.Is27{ILAB0401.net23783 ILAB0401.ILE0316.B} prev=[267] elemInv=0 pathInv=1 v.w=0.1
	 [273] xc_tree ILAB0102.ILE1001.net01345 w=9 e=inv_4_UCCLAB=ILAB0102.ILE1001.I714{ILAB0102.net28301 ILAB0102.ILE1001.net01345} prev=[265] elemInv=1 pathInv=1 v.w=0.1
	 [274] xc_tree ILAB0102.ILE1501.net01339 w=9 e=inv_4_UCCLAB=ILAB0102.ILE1501.I715{ILAB0102.net36815 ILAB0102.ILE1501.net01339} prev=[266] elemInv=1 pathInv=1 v.w=0.1
	 [275] xc_tree net10387<0> w=10.3 e=switch=ILAB0102.ILE1416.Is13{net10387<0> ILAB0102.ILE1416.C} prev=[60] elemInv=0 pathInv=1 v.w=0.1
	 [276] xc_tree ILAB0301.ILE1513.net1862 w=9.6 e=switch2=ILAB0301.ILE1513.Is111{net16279<2> ILAB0301.ILE1513.net1862} prev=[268] elemInv=0 pathInv=1 v.w=0.1
	 [277] xc_tree ILAB0102.ILE1501.C w=10.6 e=switch1_sd=ILAB0102.ILE1501.Is70{ILAB0102.ILE1501.net01339 ILAB0102.ILE1501.C} prev=[274] elemInv=0 pathInv=1 v.w=0.1
	 [278] xc_tree ILAB0102.ILE1001.A w=10.6 e=switch1_sd=ILAB0102.ILE1001.Is54{ILAB0102.ILE1001.net01345 ILAB0102.ILE1001.A} prev=[273] elemInv=0 pathInv=1 v.w=0.1
	 [279] xc_tree net17222<0> w=10.8 e=switch=ILAB0101.ILE0416.Is11{net17222<0> ILAB0101.ILE0416.B} prev=[270] elemInv=0 pathInv=1 v.w=0.1
	 [280] xc_tree net16377<4> w=9.9 e=sw_b_v2_inv_UCCLAB=ILAB0301.ILE1513.Ivi6{ILAB0301.ILE1513.net1862 net16377<4>} prev=[276] elemInv=1 pathInv=0 v.w=0.1
	 [281] xc_tree ILAB0301.ILE1613.net2660 w=10.45 e=switch2=ILAB0301.ILE1613.Is23{net16377<4> ILAB0301.ILE1613.net2660} prev=[280] elemInv=0 pathInv=0 v.w=0.1
	 [282] xc_tree ILAB0103.ILE1602.net01328 w=12.55 e=switch_ds=ILAB0103.ILE1602.Is58{ILAB0103.ILE1602.B ILAB0103.ILE1602.net01328} prev=[69] elemInv=0 pathInv=1 v.w=0.1
	 [283] xc_tree ILAB0102.ILE1214.A w=11.6 e=switch_sd=ILAB0102.ILE1214.Is17{net10395<0> ILAB0102.ILE1214.A} prev=[74] elemInv=0 pathInv=1 v.w=0.1
	 [284] xc_tree ILAB0102.net21015 w=12.65 e=switch=ILAB0102.ILE1213.Is48{net10395<0> ILAB0102.net21015} prev=[74] elemInv=0 pathInv=1 v.w=0.1
	 [285] xc_tree net10411<6> w=12.9 e=switch=ILAB0102.ILE0816.Is35{net10411<6> ILAB0102.net21199} prev=[75] elemInv=0 pathInv=1 v.w=0.1
	 [286] xc_tree ILAB0101.ILE0816.net2635 w=10.85 e=switch2=ILAB0101.ILE0816.Is135{net17206<0> ILAB0101.ILE0816.net2635} prev=[155] elemInv=0 pathInv=1 v.w=0.1
	 [287] xc_tree ILAB0102.ILE1414.C w=10.824 e=switch_sd=ILAB0102.ILE1414.Is21{net10387<0> ILAB0102.ILE1414.C} prev=[275] elemInv=0 pathInv=1 v.w=0.1
	 [288] xc_tree net16279<6> w=10.65 e=sw_b_v2_inv_UCCLAB=ILAB0301.ILE1613.Ivo1{ILAB0301.ILE1613.net2660 net16279<6>} prev=[281] elemInv=1 pathInv=1 v.w=0.1
	 [289] xc_tree ILAB0102.net16609 w=12.2 e=switch=ILAB0102.ILE1001.Is129{ILAB0102.net16609 ILAB0102.ILE1001.A} prev=[278] elemInv=0 pathInv=1 v.w=0.1
	 [290] xc_tree net17178<1> w=12.2 e=switch=ILAB0102.ILE1501.Is13{net17178<1> ILAB0102.ILE1501.C} prev=[277] elemInv=0 pathInv=1 v.w=0.1
	 [291] xc_tree ILAB0401.ILE0313.C w=11.524 e=switch=ILAB0401.ILE0313.Is133{net16279<6> ILAB0401.ILE0313.C} prev=[288] elemInv=0 pathInv=1 v.w=0.1
	 [292] xc_tree ILAB0102.net23917 w=12.4 e=switch=ILAB0102.ILE0513.Is13{ILAB0102.net23917 ILAB0102.ILE0513.C} prev=[92] elemInv=0 pathInv=1 v.w=0.1
	 [293] xc_tree ILAB0102.ILE0401.net2685 w=11.35 e=switch2=ILAB0102.ILE0401.Is127{net17222<0> ILAB0102.ILE0401.net2685} prev=[279] elemInv=0 pathInv=1 v.w=0.1
	 [294] xc_tree ILAB0102.ILE1414.net2746 w=10.948 e=switch_ds=ILAB0102.ILE1414.Is44{ILAB0102.ILE1414.C ILAB0102.ILE1414.net2746} prev=[287] elemInv=0 pathInv=1 v.w=0.1
	 [295] xc_tree net17206<5> w=11.05 e=sw_b_v2_inv_UCCLAB=ILAB0101.ILE0816.Iho2{ILAB0101.ILE0816.net2635 net17206<5>} prev=[286] elemInv=1 pathInv=0 v.w=0.1
	 [296] xc_tree ILAB0102.ILE0802.net2650 w=11.75 e=switch2=ILAB0102.ILE0802.Is143{net17206<5> ILAB0102.ILE0802.net2650} prev=[295] elemInv=0 pathInv=0 v.w=0.1
	 [297] xc_tree ILAB0102.net20722 w=11.574 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0401.Iho1{ILAB0102.ILE0401.net2685 ILAB0102.net20722} prev=[293] elemInv=1 pathInv=0 v.w=0.1
	 [298] xc_tree ILAB0102.net25920 w=12.986 e=switch=ILAB0102.ILE0210.Is48{ILAB0102.net25537 ILAB0102.net25920} prev=[207] elemInv=0 pathInv=0 v.w=0.1
	 [299] xc_tree ILAB0401.ILE0314.net1832 w=12 e=switch2=ILAB0401.ILE0314.Is39{ILAB0401.net23783 ILAB0401.ILE0314.net1832} prev=[272] elemInv=0 pathInv=1 v.w=0.1
	 [300] xc_tree ILAB0401.ILE0313.net2746 w=11.648 e=switch_ds=ILAB0401.ILE0313.Is44{ILAB0401.ILE0313.C ILAB0401.ILE0313.net2746} prev=[291] elemInv=0 pathInv=1 v.w=0.1
	 [301] xc_tree ILAB0102.ILE0403.C w=12.098 e=switch_sd=ILAB0102.ILE0403.Is20{ILAB0102.net20722 ILAB0102.ILE0403.C} prev=[297] elemInv=0 pathInv=0 v.w=0.1
	 [302] xc_tree ILAB0102.ILE0404.C w=12.448 e=switch=ILAB0102.ILE0404.Is13{ILAB0102.net20722 ILAB0102.ILE0404.C} prev=[297] elemInv=0 pathInv=0 v.w=0.1
	 [303] xc_tree ILAB0102.ILE0404.net2635 w=12.124 e=switch2=ILAB0102.ILE0404.Is135{ILAB0102.net20722 ILAB0102.ILE0404.net2635} prev=[297] elemInv=0 pathInv=0 v.w=0.1
	 [304] xc_tree ILAB0102.net23449 w=13.2 e=switch=ILAB0102.ILE1214.Is128{ILAB0102.net23449 ILAB0102.ILE1214.A} prev=[283] elemInv=0 pathInv=1 v.w=0.1
	 [305] xc_tree ILAB0102.net26124 w=12 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0802.Iho3{ILAB0102.ILE0802.net2650 ILAB0102.net26124} prev=[296] elemInv=1 pathInv=1 v.w=0.1
	 [306] xc_tree ILAB0102.ILE0305.net2685 w=12.45 e=switch2=ILAB0102.ILE0305.Is127{ILAB0102.net17842 ILAB0102.ILE0305.net2685} prev=[185] elemInv=0 pathInv=1 v.w=0.1
	 [307] xc_tree ILAB0103.net25159 w=13.5 e=switch=ILAB0103.ILE1204.Is133{ILAB0103.net25159 ILAB0103.ILE1204.C} prev=[102] elemInv=0 pathInv=0 v.w=0.1
	 [308] xc_tree ILAB0103.net22909 w=13.5 e=switch=ILAB0103.ILE1204.Is132{ILAB0103.net22909 ILAB0103.ILE1204.C} prev=[102] elemInv=0 pathInv=0 v.w=0.1
	 [309] xc_tree ILAB0401.net23377 w=12.2 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0314.Ihi6{ILAB0401.ILE0314.net1832 ILAB0401.net23377} prev=[299] elemInv=1 pathInv=0 v.w=0.1
	 [310] xc_tree ILAB0102.net26642 w=13.6 e=switch=ILAB0102.ILE0802.Is53{ILAB0102.net26124 ILAB0102.net26642} prev=[305] elemInv=0 pathInv=1 v.w=0.1
	 [311] xc_tree ILAB0103.net26010 w=13.612 e=switch=ILAB0103.ILE0504.Is48{ILAB0103.net24997 ILAB0103.net26010} prev=[217] elemInv=0 pathInv=1 v.w=0.1
	 [312] xc_tree ILAB0102.ILE0403.net2746 w=12.222 e=switch_ds=ILAB0102.ILE0403.Is44{ILAB0102.ILE0403.C ILAB0102.ILE0403.net2746} prev=[301] elemInv=0 pathInv=0 v.w=0.1
	 [313] xc_tree ILAB0102.net15548 w=12.324 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0404.Iho2{ILAB0102.ILE0404.net2635 ILAB0102.net15548} prev=[303] elemInv=1 pathInv=1 v.w=0.1
	 [314] xc_tree ILAB0401.ILE0312.C w=12.724 e=switch_sd=ILAB0401.ILE0312.Is21{ILAB0401.net23377 ILAB0401.ILE0312.C} prev=[309] elemInv=0 pathInv=0 v.w=0.1
	 [315] xc_tree ILAB0102.net20497 w=13.824 e=switch=ILAB0102.ILE0701.Is35{ILAB0102.net20497 ILAB0102.net16609} prev=[289] elemInv=0 pathInv=1 v.w=0.1
	 [316] xc_tree ILAB0102.ILE1502.C w=13.074 e=switch=ILAB0102.ILE1502.Is12{net17178<1> ILAB0102.ILE1502.C} prev=[290] elemInv=0 pathInv=1 v.w=0.1
	 [317] xc_tree ILAB0102.ILE0406.C w=13.198 e=switch=ILAB0102.ILE0406.Is29{ILAB0102.net15548 ILAB0102.ILE0406.C} prev=[313] elemInv=0 pathInv=1 v.w=0.1
	 [318] xc_tree ILAB0102.net23719 w=14 e=switch=ILAB0102.ILE0510.Is35{ILAB0102.net23917 ILAB0102.net23719} prev=[292] elemInv=0 pathInv=1 v.w=0.1
	 [319] xc_tree ILAB0102.ILE0404.net2746 w=12.572 e=switch_ds=ILAB0102.ILE0404.Is44{ILAB0102.ILE0404.C ILAB0102.ILE0404.net2746} prev=[302] elemInv=0 pathInv=0 v.w=0.1
	 [320] xc_tree ILAB0102.net23332 w=13.85 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0305.Iho1{ILAB0102.ILE0305.net2685 ILAB0102.net23332} prev=[306] elemInv=1 pathInv=0 v.w=0.1
	 [321] xc_tree ILAB0103.ILE1602.net2680 w=13.55 e=switch2=ILAB0103.ILE1602.Is63{ILAB0103.ILE1602.net01328 ILAB0103.ILE1602.net2680} prev=[282] elemInv=0 pathInv=1 v.w=0.1
	 [322] xc_tree ILAB0102.ILE1213.net1850 w=13.35 e=switch2=ILAB0102.ILE1213.Is103{ILAB0102.net21015 ILAB0102.ILE1213.net1850} prev=[284] elemInv=0 pathInv=1 v.w=0.1
	 [323] xc_tree ILAB0401.ILE0312.net2746 w=12.848 e=switch_ds=ILAB0401.ILE0312.Is44{ILAB0401.ILE0312.C ILAB0401.ILE0312.net2746} prev=[314] elemInv=0 pathInv=0 v.w=0.1
	 [324] xc_tree ILAB0103.ILE0804.C w=13.774 e=switch=ILAB0103.ILE0804.Is12{net10411<6> ILAB0103.ILE0804.C} prev=[285] elemInv=0 pathInv=1 v.w=0.1
	 [325] xc_tree ILAB0102.ILE0310.C w=13.51 e=switch_sd=ILAB0102.ILE0310.Is108{ILAB0102.net25920 ILAB0102.ILE0310.C} prev=[298] elemInv=0 pathInv=0 v.w=0.1
	 [326] xc_tree ILAB0401.ILE0814.C w=13.586 e=switch_sd=ILAB0401.ILE0814.Is21{net16300<0> ILAB0401.ILE0814.C} prev=[271] elemInv=0 pathInv=1 v.w=0.1
	 [327] xc_tree ILAB0102.ILE1502.net2746 w=13.198 e=switch_ds=ILAB0102.ILE1502.Is44{ILAB0102.ILE1502.C ILAB0102.ILE1502.net2746} prev=[316] elemInv=0 pathInv=1 v.w=0.1
	 [328] xc_tree ILAB0102.ILE0606.net2685 w=13.68 e=switch2=ILAB0102.ILE0606.Is127{ILAB0102.net26392 ILAB0102.ILE0606.net2685} prev=[241] elemInv=0 pathInv=0 v.w=0.1
	 [329] xc_tree ILAB0102.ILE1107.net1859 w=13.7 e=switch2=ILAB0102.ILE1107.Is119{ILAB0102.net25744 ILAB0102.ILE1107.net1859} prev=[243] elemInv=0 pathInv=0 v.w=0.1
	 [330] xc_tree ILAB0102.net16087 w=14.762 e=switch=ILAB0102.ILE0708.Is12{ILAB0102.net16087 ILAB0102.ILE0708.C} prev=[235] elemInv=0 pathInv=0 v.w=0.1
	 [331] xc_tree ILAB0102.ILE0406.net2746 w=13.322 e=switch_ds=ILAB0102.ILE0406.Is44{ILAB0102.ILE0406.C ILAB0102.ILE0406.net2746} prev=[317] elemInv=0 pathInv=1 v.w=0.1
	 [332] xc_tree ILAB0102.ILE1014.C w=13.724 e=switch_sd=ILAB0102.ILE1014.Is124{ILAB0102.net23449 ILAB0102.ILE1014.C} prev=[304] elemInv=0 pathInv=1 v.w=0.1
	 [333] xc_tree ILAB0102.net21107 w=13.6 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1213.Ivi5{ILAB0102.ILE1213.net1850 ILAB0102.net21107} prev=[322] elemInv=1 pathInv=0 v.w=0.1
	 [334] xc_tree ILAB0103.ILE1004.C w=14.024 e=switch_sd=ILAB0103.ILE1004.Is125{ILAB0103.net25159 ILAB0103.ILE1004.C} prev=[307] elemInv=0 pathInv=0 v.w=0.1
	 [335] xc_tree ILAB0103.ILE0904.C w=14.024 e=switch_sd=ILAB0103.ILE0904.Is125{ILAB0103.net22909 ILAB0103.ILE0904.C} prev=[308] elemInv=0 pathInv=0 v.w=0.1
	 [336] xc_tree ILAB0102.ILE0310.net2746 w=13.634 e=switch_ds=ILAB0102.ILE0310.Is44{ILAB0102.ILE0310.C ILAB0102.ILE0310.net2746} prev=[325] elemInv=0 pathInv=0 v.w=0.1
	 [337] xc_tree ILAB0103.net20561 w=13.9 e=inv_8_UCCLAB=ILAB0103.ILE1602.I666{ILAB0103.ILE1602.net2680 ILAB0103.net20561} prev=[321] elemInv=1 pathInv=0 v.w=0.1
	 [338] xc_tree ILAB0401.ILE0814.net2746 w=13.71 e=switch_ds=ILAB0401.ILE0814.Is44{ILAB0401.ILE0814.C ILAB0401.ILE0814.net2746} prev=[326] elemInv=0 pathInv=1 v.w=0.1
	 [339] xc_tree ILAB0102.ILE1013.net1862 w=14.15 e=switch2=ILAB0102.ILE1013.Is111{ILAB0102.net21107 ILAB0102.ILE1013.net1862} prev=[333] elemInv=0 pathInv=0 v.w=0.1
	 [340] xc_tree ILAB0102.net26122 w=15.2 e=switch=ILAB0102.ILE0802.Is51{ILAB0102.net26122 ILAB0102.net26642} prev=[310] elemInv=0 pathInv=1 v.w=0.1
	 [341] xc_tree ILAB0103.ILE0604.C w=14.136 e=switch_sd=ILAB0103.ILE0604.Is108{ILAB0103.net26010 ILAB0103.ILE0604.C} prev=[311] elemInv=0 pathInv=1 v.w=0.1
	 [342] xc_tree ILAB0102.net18562 w=13.88 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0606.Iho1{ILAB0102.ILE0606.net2685 ILAB0102.net18562} prev=[328] elemInv=1 pathInv=1 v.w=0.1
	 [343] xc_tree ILAB0102.net17194 w=15.1 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1107.Ivi7{ILAB0102.ILE1107.net1859 ILAB0102.net17194} prev=[329] elemInv=1 pathInv=1 v.w=0.1
	 [344] xc_tree ILAB0102.ILE1014.net2746 w=13.848 e=switch_ds=ILAB0102.ILE1014.Is44{ILAB0102.ILE1014.C ILAB0102.ILE1014.net2746} prev=[332] elemInv=0 pathInv=1 v.w=0.1
	 [345] xc_tree ILAB0103.ILE0804.net2746 w=13.898 e=switch_ds=ILAB0103.ILE0804.Is44{ILAB0103.ILE0804.C ILAB0103.ILE0804.net2746} prev=[324] elemInv=0 pathInv=1 v.w=0.1
	 [346] xc_tree ILAB0102.ILE0705.C w=14.698 e=switch=ILAB0102.ILE0705.Is12{ILAB0102.net20497 ILAB0102.ILE0705.C} prev=[315] elemInv=0 pathInv=1 v.w=0.1
	 [347] xc_tree ILAB0102.ILE0703.C w=14.348 e=switch_sd=ILAB0102.ILE0703.Is20{ILAB0102.net20497 ILAB0102.ILE0703.C} prev=[315] elemInv=0 pathInv=1 v.w=0.1
	 [348] xc_tree ILAB0102.ILE0308.C w=14.724 e=switch=ILAB0102.ILE0308.Is13{ILAB0102.net23332 ILAB0102.ILE0308.C} prev=[320] elemInv=0 pathInv=0 v.w=0.1
	 [349] xc_tree ILAB0102.ILE0610.C w=14.754 e=switch=ILAB0102.ILE0610.Is12{ILAB0102.net18562 ILAB0102.ILE0610.C} prev=[342] elemInv=0 pathInv=1 v.w=0.1
	 [350] xc_tree ILAB0103.net027166 w=14.06 e=buftd4_UCCLAB=ILAB0103.I231{ILAB0103.net20561 ILAB0103.net027166} prev=[337] elemInv=0 pathInv=0 v.w=0.1
	 [351] xc_tree ILAB0102.ILE0910.C w=14.874 e=switch=ILAB0102.ILE0910.Is132{ILAB0102.net23719 ILAB0102.ILE0910.C} prev=[318] elemInv=0 pathInv=1 v.w=0.1
	 [352] xc_tree ILAB0102.ILE0810.C w=14.874 e=switch=ILAB0102.ILE0810.Is133{ILAB0102.net23719 ILAB0102.ILE0810.C} prev=[318] elemInv=0 pathInv=1 v.w=0.1
	 [353] xc_tree ILAB0103.ILE1004.net2746 w=14.148 e=switch_ds=ILAB0103.ILE1004.Is44{ILAB0103.ILE1004.C ILAB0103.ILE1004.net2746} prev=[334] elemInv=0 pathInv=0 v.w=0.1
	 [354] xc_tree ILAB0103.ILE0904.net2746 w=14.148 e=switch_ds=ILAB0103.ILE0904.Is44{ILAB0103.ILE0904.C ILAB0103.ILE0904.net2746} prev=[335] elemInv=0 pathInv=0 v.w=0.1
	 [355] xc_tree ILAB0103.I5605.net25 w=14.1625 e=mux2p_2_UCCLAB=ILAB0103.I5605.I4{ILAB0103.net027166 ILAB0103.I5605.net25} prev=[350] elemInv=0 pathInv=0 v.w=0.1
	 [356] xc_tree ILAB0103.ILE0604.net2746 w=14.26 e=switch_ds=ILAB0103.ILE0604.Is44{ILAB0103.ILE0604.C ILAB0103.ILE0604.net2746} prev=[341] elemInv=0 pathInv=1 v.w=0.1
	 [357] xc_tree ILAB0102.net21559 w=14.35 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1013.Ivi6{ILAB0102.ILE1013.net1862 ILAB0102.net21559} prev=[339] elemInv=1 pathInv=1 v.w=0.1
	 [358] xc_tree ILAB0103.Clk_int<1> w=14.2645 e=invd16_seth_UCCLAB=ILAB0103.I5605.I5{ILAB0103.I5605.net25 ILAB0103.Clk_int<1>} prev=[355] elemInv=1 pathInv=1 v.w=0.1
	 [359] xc_tree ILAB0103.I5366.net0110 w=14.5145 e=mux2d1i_1_P_UCCLAB=ILAB0103.I5366.I79{ILAB0103.Clk_int<1> ILAB0103.I5366.net0110} prev=[358] elemInv=0 pathInv=1 v.w=0.1
	 [360] xc_tree ILAB0102.ILE0703.net2746 w=14.472 e=switch_ds=ILAB0102.ILE0703.Is44{ILAB0102.ILE0703.C ILAB0102.ILE0703.net2746} prev=[347] elemInv=0 pathInv=1 v.w=0.1
	 [361] xc_tree ILAB0102.ILE0813.C w=14.874 e=switch_sd=ILAB0102.ILE0813.Is125{ILAB0102.net21559 ILAB0102.ILE0813.C} prev=[357] elemInv=0 pathInv=1 v.w=0.1
	 [362] xc_tree ILAB0103.net15299<2> w=14.6245 e=invd52_UCCLAB=ILAB0103.I5366.I75{ILAB0103.I5366.net0110 ILAB0103.net15299<2>} prev=[359] elemInv=1 pathInv=0 v.w=0.1
	 [363] xc_tree ILAB0103.Clk_LAB<1> w=14.725 e=invd32_UCCLAB=ILAB0103.I5591.I2{ILAB0103.net15299<2> ILAB0103.Clk_LAB<1>} prev=[362] elemInv=1 pathInv=1 v.w=0.1
	 [364] xc_tree ILAB0102.ILE0705.net2746 w=14.822 e=switch_ds=ILAB0102.ILE0705.Is44{ILAB0102.ILE0705.C ILAB0102.ILE0705.net2746} prev=[346] elemInv=0 pathInv=1 v.w=0.1
	 [365] xc_tree ILAB0102.ILE0308.net2746 w=14.848 e=switch_ds=ILAB0102.ILE0308.Is44{ILAB0102.ILE0308.C ILAB0102.ILE0308.net2746} prev=[348] elemInv=0 pathInv=0 v.w=0.1
	 [366] xc_tree ILAB0103.ILE1002.net2746 w=14.849 e=switch_sd_clk1=ILAB0103.ILE1002.Is4{ILAB0103.Clk_LAB<1> ILAB0103.ILE1002.net2746} prev=[363] elemInv=0 pathInv=1 v.w=0.1
	 [367] xc_tree ILAB0103.ILE0902.net2746 w=14.849 e=switch_sd_clk1=ILAB0103.ILE0902.Is4{ILAB0103.Clk_LAB<1> ILAB0103.ILE0902.net2746} prev=[363] elemInv=0 pathInv=1 v.w=0.1
	 [368] xc_tree ILAB0103.ILE1103.net2746 w=14.849 e=switch_sd_clk1=ILAB0103.ILE1103.Is4{ILAB0103.Clk_LAB<1> ILAB0103.ILE1103.net2746} prev=[363] elemInv=0 pathInv=1 v.w=0.1
	 [369] xc_tree ILAB0102.ILE0610.net2746 w=14.878 e=switch_ds=ILAB0102.ILE0610.Is44{ILAB0102.ILE0610.C ILAB0102.ILE0610.net2746} prev=[349] elemInv=0 pathInv=1 v.w=0.1
	 [370] xc_tree ILAB0102.ILE0707.C w=15.636 e=switch=ILAB0102.ILE0707.Is13{ILAB0102.net16087 ILAB0102.ILE0707.C} prev=[330] elemInv=0 pathInv=0 v.w=0.1
	 [371] xc_tree ILAB0102.ILE0810.net2746 w=14.998 e=switch_ds=ILAB0102.ILE0810.Is44{ILAB0102.ILE0810.C ILAB0102.ILE0810.net2746} prev=[352] elemInv=0 pathInv=1 v.w=0.1
	 [372] xc_tree ILAB0102.ILE0910.net2746 w=14.998 e=switch_ds=ILAB0102.ILE0910.Is44{ILAB0102.ILE0910.C ILAB0102.ILE0910.net2746} prev=[351] elemInv=0 pathInv=1 v.w=0.1
	 [373] xc_tree ILAB0102.ILE0813.net2746 w=14.998 e=switch_ds=ILAB0102.ILE0813.Is44{ILAB0102.ILE0813.C ILAB0102.ILE0813.net2746} prev=[361] elemInv=0 pathInv=1 v.w=0.1
	 [374] xc_tree ILAB0102.ILE1007.C w=15.974 e=switch=ILAB0102.ILE1007.Is133{ILAB0102.net17194 ILAB0102.ILE1007.C} prev=[343] elemInv=0 pathInv=1 v.w=0.1
	 [375] xc_tree ILAB0102.ILE0806.C w=16.074 e=switch=ILAB0102.ILE0806.Is12{ILAB0102.net26122 ILAB0102.ILE0806.C} prev=[340] elemInv=0 pathInv=1 v.w=0.1
	 [376] xc_tree ILAB0102.ILE0707.net2746 w=15.76 e=switch_ds=ILAB0102.ILE0707.Is44{ILAB0102.ILE0707.C ILAB0102.ILE0707.net2746} prev=[370] elemInv=0 pathInv=0 v.w=0.1
	 [377] xc_tree ILAB0102.ILE1007.net2746 w=16.098 e=switch_ds=ILAB0102.ILE1007.Is44{ILAB0102.ILE1007.C ILAB0102.ILE1007.net2746} prev=[374] elemInv=0 pathInv=1 v.w=0.1
	 [378] xc_tree ILAB0102.ILE0806.net2746 w=16.198 e=switch_ds=ILAB0102.ILE0806.Is44{ILAB0102.ILE0806.C ILAB0102.ILE0806.net2746} prev=[375] elemInv=0 pathInv=1 v.w=0.1
	 [379] xc_tree ILAB0401.net17468 w=6.45 e=switch_ds=ILAB0401.I677{net8320<5> ILAB0401.net17468} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [380] xc_tree ILAB0401.ILE0916.net01339 w=6.75 e=inv_4_UCCLAB=ILAB0401.ILE0916.I715{ILAB0401.net17468 ILAB0401.ILE0916.net01339} prev=[379] elemInv=1 pathInv=1 v.w=0.1
	 [381] xc_tree ILAB0401.ILE0916.C w=8.35 e=switch1_sd=ILAB0401.ILE0916.Is70{ILAB0401.ILE0916.net01339 ILAB0401.ILE0916.C} prev=[380] elemInv=0 pathInv=1 v.w=0.1
	 [382] xc_tree ILAB0401.net19148 w=10.7 e=switch=ILAB0401.ILE0916.Is29{ILAB0401.net19148 ILAB0401.ILE0916.C} prev=[381] elemInv=0 pathInv=1 v.w=0.1
	 [383] xc_tree ILAB0401.net23537 w=12.3 e=switch=ILAB0401.ILE0914.Is52{ILAB0401.net19148 ILAB0401.net23537} prev=[382] elemInv=0 pathInv=1 v.w=0.1
	 [384] xc_tree ILAB0102.net19912 w=12.392 e=switch=ILAB0102.ILE0716.Is12{ILAB0102.net19912 ILAB0102.ILE0716.C} prev=[143] elemInv=0 pathInv=1 v.w=0.1
	 [385] xc_tree ILAB0102.net19849 w=12.424 e=switch=ILAB0102.ILE1414.Is132{ILAB0102.net19849 ILAB0102.ILE1414.C} prev=[287] elemInv=0 pathInv=1 v.w=0.1
	 [386] xc_tree net10415<1> w=12.716 e=switch=ILAB0103.ILE0701.Is13{net10415<1> ILAB0103.ILE0701.C} prev=[149] elemInv=0 pathInv=1 v.w=0.1
	 [387] xc_tree ILAB0102.net26190 w=13.6 e=switch=ILAB0102.ILE0802.Is50{ILAB0102.net26124 ILAB0102.net26190} prev=[305] elemInv=0 pathInv=1 v.w=0.1
	 [388] xc_tree ILAB0401.ILE1014.C w=12.836 e=switch_sd=ILAB0401.ILE1014.Is116{ILAB0401.net23537 ILAB0401.ILE1014.C} prev=[383] elemInv=0 pathInv=1 v.w=0.1
	 [389] xc_tree ILAB0102.ILE0715.C w=13.278 e=switch=ILAB0102.ILE0715.Is13{ILAB0102.net19912 ILAB0102.ILE0715.C} prev=[384] elemInv=0 pathInv=1 v.w=0.1
	 [390] xc_tree ILAB0102.net18947 w=14.742 e=switch=ILAB0102.ILE0712.Is51{ILAB0102.net19912 ILAB0102.net18947} prev=[384] elemInv=0 pathInv=1 v.w=0.1
	 [391] xc_tree ILAB0102.net23469 w=14.024 e=switch=ILAB0102.ILE1014.Is45{ILAB0102.net23469 ILAB0102.net19849} prev=[385] elemInv=0 pathInv=1 v.w=0.1
	 [392] xc_tree ILAB0103.ILE0702.net2685 w=13.302 e=switch2=ILAB0103.ILE0702.Is127{net10415<1> ILAB0103.ILE0702.net2685} prev=[386] elemInv=0 pathInv=1 v.w=0.1
	 [393] xc_tree ILAB0401.ILE1014.net2746 w=12.972 e=switch_ds=ILAB0401.ILE1014.Is44{ILAB0401.ILE1014.C ILAB0401.ILE1014.net2746} prev=[388] elemInv=0 pathInv=1 v.w=0.1
	 [394] xc_tree ILAB0102.ILE0604.net2635 w=13.45 e=switch2=ILAB0102.ILE0604.Is135{ILAB0102.net20587 ILAB0102.ILE0604.net2635} prev=[186] elemInv=0 pathInv=1 v.w=0.1
	 [395] xc_tree ILAB0102.ILE0715.net2746 w=13.414 e=switch_ds=ILAB0102.ILE0715.Is44{ILAB0102.ILE0715.C ILAB0102.ILE0715.net2746} prev=[389] elemInv=0 pathInv=1 v.w=0.1
	 [396] xc_tree ILAB0103.net26437 w=13.538 e=sw_b_v2_inv_UCCLAB=ILAB0103.ILE0702.Iho1{ILAB0103.ILE0702.net2685 ILAB0103.net26437} prev=[392] elemInv=1 pathInv=0 v.w=0.1
	 [397] xc_tree ILAB0102.net25988 w=13.65 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0604.Iho2{ILAB0102.ILE0604.net2635 ILAB0102.net25988} prev=[394] elemInv=1 pathInv=0 v.w=0.1
	 [398] xc_tree ILAB0103.ILE0704.C w=14.074 e=switch_sd=ILAB0103.ILE0704.Is20{ILAB0103.net26437 ILAB0103.ILE0704.C} prev=[396] elemInv=0 pathInv=0 v.w=0.1
	 [399] xc_tree ILAB0102.ILE0902.C w=14.136 e=switch_sd=ILAB0102.ILE0902.Is108{ILAB0102.net26190 ILAB0102.ILE0902.C} prev=[387] elemInv=0 pathInv=1 v.w=0.1
	 [400] xc_tree ILAB0102.net23134 w=16.25 e=switch=ILAB0102.ILE0604.Is37{ILAB0102.net25988 ILAB0102.net23134} prev=[397] elemInv=0 pathInv=0 v.w=0.1
	 [401] xc_tree ILAB0102.ILE1015.C w=14.56 e=switch_sd=ILAB0102.ILE1015.Is36{ILAB0102.net23469 ILAB0102.ILE1015.C} prev=[391] elemInv=0 pathInv=1 v.w=0.1
	 [402] xc_tree ILAB0103.ILE0704.net2746 w=14.21 e=switch_ds=ILAB0103.ILE0704.Is44{ILAB0103.ILE0704.C ILAB0103.ILE0704.net2746} prev=[398] elemInv=0 pathInv=0 v.w=0.1
	 [403] xc_tree ILAB0102.ILE0902.net2746 w=14.272 e=switch_ds=ILAB0102.ILE0902.Is44{ILAB0102.ILE0902.C ILAB0102.ILE0902.net2746} prev=[399] elemInv=0 pathInv=1 v.w=0.1
	 [404] xc_tree ILAB0102.ILE1015.net2746 w=14.696 e=switch_ds=ILAB0102.ILE1015.Is44{ILAB0102.ILE1015.C ILAB0102.ILE1015.net2746} prev=[401] elemInv=0 pathInv=1 v.w=0.1
	 [405] xc_tree ILAB0102.ILE0912.net2670 w=15.292 e=switch2=ILAB0102.ILE0912.Is7{ILAB0102.net18947 ILAB0102.ILE0912.net2670} prev=[390] elemInv=0 pathInv=1 v.w=0.1
	 [406] xc_tree ILAB0102.net21690 w=15.492 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE0912.Ivo3{ILAB0102.ILE0912.net2670 ILAB0102.net21690} prev=[405] elemInv=1 pathInv=0 v.w=0.1
	 [407] xc_tree ILAB0102.ILE1012.C w=16.028 e=switch_sd=ILAB0102.ILE1012.Is108{ILAB0102.net21690 ILAB0102.ILE1012.C} prev=[406] elemInv=0 pathInv=0 v.w=0.1
	 [408] xc_tree ILAB0102.ILE1012.net2746 w=16.164 e=switch_ds=ILAB0102.ILE1012.Is44{ILAB0102.ILE1012.C ILAB0102.ILE1012.net2746} prev=[407] elemInv=0 pathInv=0 v.w=0.1
	 [409] xc_tree ILAB0102.ILE1004.C w=18.496 e=switch=ILAB0102.ILE1004.Is132{ILAB0102.net23134 ILAB0102.ILE1004.C} prev=[400] elemInv=0 pathInv=0 v.w=0.1
	 [410] xc_tree ILAB0102.ILE1004.net2746 w=18.632 e=switch_ds=ILAB0102.ILE1004.Is44{ILAB0102.ILE1004.C ILAB0102.ILE1004.net2746} prev=[409] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree XC_I_hard_wreg {
	 xc_pin xci2_ib x o [-1] pinInv=0 { IIO33.I4.net209 }
	 xc_pin xci2_and3fft b i [12] pinInv=0 { ILAB0401.ILE1010.net2746 }
	 xc_pin xci2_and3ftt b i [13] pinInv=0 { ILAB0401.ILE1011.net2746 }
	 [0] xc_tree IIO33.I4.net209 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree IIO33.I4.net0153 w=2.8 e=mux2i_P_UCCLAB=IIO33.I4.I25{IIO33.I4.net209 IIO33.I4.net0153} prev=[0] elemInv=1 pathInv=1 v.w=0.1
	 [2] xc_tree LongBus_21<11> w=3.8 e=invtd52_AVDD=IIO33.I4.I26{IIO33.I4.net0153 LongBus_21<11>} prev=[1] elemInv=1 pathInv=0 v.w=0.1
	 [3] xc_tree net8320<4> w=4.8 e=buftd52C_UCCLAB=I1803.I22{LongBus_21<11> net8320<4>} prev=[2] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0401.net21566 w=7.3 e=switch_ds=ILAB0401.I811{net8320<4> ILAB0401.net21566} prev=[3] elemInv=0 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0401.ILE1016.net01345 w=7.7 e=inv_4_UCCLAB=ILAB0401.ILE1016.I714{ILAB0401.net21566 ILAB0401.ILE1016.net01345} prev=[4] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.ILE1016.A w=10.3 e=switch1_sd=ILAB0401.ILE1016.Is54{ILAB0401.ILE1016.net01345 ILAB0401.ILE1016.A} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0401.net21667 w=13.496 e=switch=ILAB0401.ILE1016.Is8{ILAB0401.net21667 ILAB0401.ILE1016.A} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.ILE1012.net1844 w=14.058 e=switch2=ILAB0401.ILE1012.Is31{ILAB0401.net21667 ILAB0401.ILE1012.net1844} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0401.net24322 w=14.27 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE1012.Ihi7{ILAB0401.ILE1012.net1844 ILAB0401.net24322} prev=[8] elemInv=1 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0401.ILE1010.C w=14.782 e=switch_sd=ILAB0401.ILE1010.Is20{ILAB0401.net24322 ILAB0401.ILE1010.C} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0401.ILE1011.C w=15.216 e=switch=ILAB0401.ILE1011.Is13{ILAB0401.net24322 ILAB0401.ILE1011.C} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0401.ILE1010.net2746 w=14.894 e=switch_ds=ILAB0401.ILE1010.Is44{ILAB0401.ILE1010.C ILAB0401.ILE1010.net2746} prev=[10] elemInv=0 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0401.ILE1011.net2746 w=15.328 e=switch_ds=ILAB0401.ILE1011.Is44{ILAB0401.ILE1011.C ILAB0401.ILE1011.net2746} prev=[11] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree XC_I_hard_start {
	 xc_pin xci2_ib x o [-1] pinInv=0 { IIO33.I3.net209 }
	 xc_pin xci2_ob a i [19] pinInv=0 { IIO10.I5.net197 }
	 xc_pin xci2_aoi21 a i [15] pinInv=0 { ILAB0401.ILE0810.net2749 }
	 [0] xc_tree IIO33.I3.net209 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree IIO33.I3.net0153 w=2.8 e=mux2i_P_UCCLAB=IIO33.I3.I25{IIO33.I3.net209 IIO33.I3.net0153} prev=[0] elemInv=1 pathInv=1 v.w=0.1
	 [2] xc_tree LongBus_21<12> w=3.8 e=invtd52_AVDD=IIO33.I3.I26{IIO33.I3.net0153 LongBus_21<12>} prev=[1] elemInv=1 pathInv=0 v.w=0.1
	 [3] xc_tree net8320<3> w=4.8 e=buftd52C_UCCLAB=I1803.I33{LongBus_21<12> net8320<3>} prev=[2] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0401.net17423 w=7.3 e=switch_ds=ILAB0401.I294{net8320<3> ILAB0401.net17423} prev=[3] elemInv=0 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0401.ILE0816.net01339 w=7.7 e=inv_4_UCCLAB=ILAB0401.ILE0816.I715{ILAB0401.net17423 ILAB0401.ILE0816.net01339} prev=[4] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.ILE0816.C w=10.3 e=switch1_sd=ILAB0401.ILE0816.Is70{ILAB0401.ILE0816.net01339 ILAB0401.ILE0816.C} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0401.net18652 w=13.4 e=switch=ILAB0401.ILE0816.Is12{ILAB0401.net18652 ILAB0401.ILE0816.C} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0401.ILE0816.net01328 w=12.8 e=switch_ds=ILAB0401.ILE0816.Is60{ILAB0401.ILE0816.C ILAB0401.ILE0816.net01328} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0401.ILE0816.net2680 w=13.8 e=switch2=ILAB0401.ILE0816.Is63{ILAB0401.ILE0816.net01328 ILAB0401.ILE0816.net2680} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0401.ILE0812.net1844 w=13.95 e=switch2=ILAB0401.ILE0812.Is31{ILAB0401.net18652 ILAB0401.ILE0812.net1844} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [11] xc_tree net16243<1> w=14.15 e=inv_8_UCCLAB=ILAB0401.ILE0816.I666{ILAB0401.ILE0816.net2680 net16243<1>} prev=[9] elemInv=1 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0401.net17977 w=14.15 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0812.Ihi7{ILAB0401.ILE0812.net1844 ILAB0401.net17977} prev=[10] elemInv=1 pathInv=0 v.w=0.1
	 [13] xc_tree ILAB0401.net27353 w=15.25 e=buf4_12_UCCLAB=ILAB0401.I4373{net16243<1> ILAB0401.net27353} prev=[11] elemInv=0 pathInv=0 v.w=0.1
	 [14] xc_tree ILAB0401.ILE0810.A w=14.65 e=switch_sd=ILAB0401.ILE0810.Is16{ILAB0401.net17977 ILAB0401.ILE0810.A} prev=[12] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0401.ILE0810.net2749 w=14.75 e=switch_ds=ILAB0401.ILE0810.Is41{ILAB0401.ILE0810.A ILAB0401.ILE0810.net2749} prev=[14] elemInv=0 pathInv=0 v.w=0.1
	 [16] xc_tree ILAB0401.net37846 w=15.425 e=switch1=ILAB0401.I4291{ILAB0401.net37846 ILAB0401.net27353} prev=[13] elemInv=0 pathInv=0 v.w=0.1
	 [17] xc_tree net8320<13> w=15.575 e=buftid52C_UCCLAB=ILAB0401.I4431{ILAB0401.net37846 net8320<13>} prev=[16] elemInv=0 pathInv=0 v.w=0.1
	 [18] xc_tree LongBus_78<2> w=15.825 e=buftd52C_UCCLAB=I3740.I7{net8320<13> LongBus_78<2>} prev=[17] elemInv=0 pathInv=0 v.w=0.1
	 [19] xc_tree IIO10.I5.net197 w=15.925 e=mux2i_P_UCCLAB=IIO10.I5.I16{LongBus_78<2> IIO10.I5.net197} prev=[18] elemInv=1 pathInv=1 v.w=0.1
}
xc_net_tree XC_I_drdy {
	 xc_pin xci2_ib x o [-1] pinInv=0 { IIO33.I2.net209 }
	 xc_pin xci2_and2ft a i [30] pinInv=0 { ILAB0202.ILE0205.net2749 }
	 xc_pin xci2_and3ftt a i [19] pinInv=0 { ILAB0101.ILE1513.net2749 }
	 xc_pin xci2_nand2 b i [35] pinInv=0 { ILAB0102.ILE1304.net2746 }
	 xc_pin xci2_and3ftt a i [13] pinInv=0 { ILAB0102.ILE1605.net2749 }
	 xc_pin xci2_and3ftt a i [36] pinInv=0 { ILAB0102.ILE1305.net2749 }
	 [0] xc_tree IIO33.I2.net209 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree IIO33.I2.net0151 w=2.8 e=mux2i_P_UCCLAB=IIO33.I2.I27{IIO33.I2.net209 IIO33.I2.net0151} prev=[0] elemInv=1 pathInv=1 v.w=0.1
	 [2] xc_tree IIO33.I2.net0153 w=2.8 e=mux2i_P_UCCLAB=IIO33.I2.I25{IIO33.I2.net209 IIO33.I2.net0153} prev=[0] elemInv=1 pathInv=1 v.w=0.1
	 [3] xc_tree LongBus_20<5> w=3.8 e=invtd52_AVDD=IIO33.I2.I8{IIO33.I2.net0151 LongBus_20<5>} prev=[1] elemInv=1 pathInv=0 v.w=0.1
	 [4] xc_tree LongBus_21<13> w=3.8 e=invtd52_AVDD=IIO33.I2.I26{IIO33.I2.net0153 LongBus_21<13>} prev=[2] elemInv=1 pathInv=0 v.w=0.1
	 [5] xc_tree net8311<10> w=4.8 e=buftd52C_UCCLAB=I1804.I38{LongBus_20<5> net8311<10>} prev=[3] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree net8320<2> w=4.8 e=buftd52C_UCCLAB=I1803.I30{LongBus_21<13> net8320<2>} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [7] xc_tree LongBus_79<5> w=5.65 e=buftd52C_UCCLAB=I3739.I38{net8311<10> LongBus_79<5>} prev=[5] elemInv=0 pathInv=0 v.w=0.1
	 [8] xc_tree LongBus_78<13> w=5.65 e=buftd52C_UCCLAB=I3740.I30{net8320<2> LongBus_78<13>} prev=[6] elemInv=0 pathInv=0 v.w=0.1
	 [9] xc_tree LongBus_1<5> w=6.35 e=buftd52_UCCLAB=ILAB0101.I4775.I38{LongBus_79<5> LongBus_1<5>} prev=[7] elemInv=0 pathInv=0 v.w=0.1
	 [10] xc_tree net18607<0> w=7.65 e=switch_ds=ILAB0102.I714{LongBus_1<5> net18607<0>} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0102.ILE1605.net0562 w=7.85 e=inv_4_UCCLAB=ILAB0102.ILE1605.I712{net18607<0> ILAB0102.ILE1605.net0562} prev=[10] elemInv=1 pathInv=1 v.w=0.1
	 [12] xc_tree ILAB0102.ILE1605.A w=8.45 e=switch1_sd=ILAB0102.ILE1605.Is94{ILAB0102.ILE1605.net0562 ILAB0102.ILE1605.A} prev=[11] elemInv=0 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0102.ILE1605.net2749 w=8.55 e=switch_ds=ILAB0102.ILE1605.Is41{ILAB0102.ILE1605.A ILAB0102.ILE1605.net2749} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [14] xc_tree net18448<0> w=8.45 e=switch_ds=ILAB0101.I1025{LongBus_1<5> net18448<0>} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [15] xc_tree ILAB0101.ILE1613.net0562 w=8.75 e=inv_4_UCCLAB=ILAB0101.ILE1613.I712{net18448<0> ILAB0101.ILE1613.net0562} prev=[14] elemInv=1 pathInv=1 v.w=0.1
	 [16] xc_tree ILAB0101.ILE1613.A w=10.35 e=switch1_sd=ILAB0101.ILE1613.Is94{ILAB0101.ILE1613.net0562 ILAB0101.ILE1613.A} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0101.net20072 w=11.95 e=switch=ILAB0101.ILE1613.Is113{ILAB0101.net20072 ILAB0101.ILE1613.A} prev=[16] elemInv=0 pathInv=1 v.w=0.1
	 [18] xc_tree ILAB0101.ILE1513.A w=12.462 e=switch_sd=ILAB0101.ILE1513.Is112{ILAB0101.net20072 ILAB0101.ILE1513.A} prev=[17] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0101.ILE1513.net2749 w=12.574 e=switch_ds=ILAB0101.ILE1513.Is41{ILAB0101.ILE1513.A ILAB0101.ILE1513.net2749} prev=[18] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0101.net18775 w=7.75 e=switch_ds=ILAB0101.I992{LongBus_78<13> ILAB0101.net18775} prev=[8] elemInv=0 pathInv=0 v.w=0.1
	 [21] xc_tree ILAB0101.ILE1516.net01342 w=8.05 e=inv_4_UCCLAB=ILAB0101.ILE1516.I713{ILAB0101.net18775 ILAB0101.ILE1516.net01342} prev=[20] elemInv=1 pathInv=1 v.w=0.1
	 [22] xc_tree ILAB0101.ILE1516.B w=9.65 e=switch1_sd=ILAB0101.ILE1516.Is62{ILAB0101.ILE1516.net01342 ILAB0101.ILE1516.B} prev=[21] elemInv=0 pathInv=1 v.w=0.1
	 [23] xc_tree ILAB0102.net15458 w=10.05 e=switch=ILAB0102.ILE1605.Is25{ILAB0102.net15458 ILAB0102.ILE1605.A} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [24] xc_tree ILAB0101.net18812 w=12 e=switch=ILAB0101.ILE1516.Is115{ILAB0101.net18812 ILAB0101.ILE1516.B} prev=[22] elemInv=0 pathInv=1 v.w=0.1
	 [25] xc_tree ILAB0102.ILE1605.net2650 w=10.75 e=switch2=ILAB0102.ILE1605.Is143{ILAB0102.net15458 ILAB0102.ILE1605.net2650} prev=[23] elemInv=0 pathInv=1 v.w=0.1
	 [26] xc_tree ILAB0102.net15864 w=11 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1605.Iho3{ILAB0102.ILE1605.net2650 ILAB0102.net15864} prev=[25] elemInv=1 pathInv=0 v.w=0.1
	 [27] xc_tree net18576<5> w=12.6 e=switch=ILAB0102.ILE1605.Is53{ILAB0102.net15864 net18576<5>} prev=[26] elemInv=0 pathInv=0 v.w=0.1
	 [28] xc_tree net17186<6> w=13.792 e=switch=ILAB0101.ILE1316.Is51{net17186<6> ILAB0101.net18812} prev=[24] elemInv=0 pathInv=1 v.w=0.1
	 [29] xc_tree ILAB0202.ILE0205.A w=13.474 e=switch=ILAB0202.ILE0205.Is113{net18576<5> ILAB0202.ILE0205.A} prev=[27] elemInv=0 pathInv=0 v.w=0.1
	 [30] xc_tree ILAB0202.ILE0205.net2749 w=13.598 e=switch_ds=ILAB0202.ILE0205.Is41{ILAB0202.ILE0205.A ILAB0202.ILE0205.net2749} prev=[29] elemInv=0 pathInv=0 v.w=0.1
	 [31] xc_tree ILAB0102.ILE1304.C w=14.666 e=switch=ILAB0102.ILE1304.Is12{net17186<6> ILAB0102.ILE1304.C} prev=[28] elemInv=0 pathInv=1 v.w=0.1
	 [32] xc_tree ILAB0102.ILE1303.net2635 w=14.342 e=switch2=ILAB0102.ILE1303.Is135{net17186<6> ILAB0102.ILE1303.net2635} prev=[28] elemInv=0 pathInv=1 v.w=0.1
	 [33] xc_tree ILAB0102.net16628 w=14.566 e=sw_b_v2_inv_UCCLAB=ILAB0102.ILE1303.Iho2{ILAB0102.ILE1303.net2635 ILAB0102.net16628} prev=[32] elemInv=1 pathInv=0 v.w=0.1
	 [34] xc_tree ILAB0102.ILE1305.A w=15.44 e=switch=ILAB0102.ILE1305.Is25{ILAB0102.net16628 ILAB0102.ILE1305.A} prev=[33] elemInv=0 pathInv=0 v.w=0.1
	 [35] xc_tree ILAB0102.ILE1304.net2746 w=14.79 e=switch_ds=ILAB0102.ILE1304.Is44{ILAB0102.ILE1304.C ILAB0102.ILE1304.net2746} prev=[31] elemInv=0 pathInv=1 v.w=0.1
	 [36] xc_tree ILAB0102.ILE1305.net2749 w=15.564 e=switch_ds=ILAB0102.ILE1305.Is41{ILAB0102.ILE1305.A ILAB0102.ILE1305.net2749} prev=[34] elemInv=0 pathInv=0 v.w=0.1
}
xc_net_tree XC_I_dout {
	 xc_pin xci2_ib x o [-1] pinInv=0 { IIO33.I1.net209 }
	 xc_pin xci2_and3ftt b i [10] pinInv=0 { ILAB0101.ILE1513.net2746 }
	 [0] xc_tree IIO33.I1.net209 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree IIO33.I1.net0153 w=2.8 e=mux2i_P_UCCLAB=IIO33.I1.I25{IIO33.I1.net209 IIO33.I1.net0153} prev=[0] elemInv=1 pathInv=1 v.w=0.1
	 [2] xc_tree LongBus_21<14> w=3.8 e=invtd52_AVDD=IIO33.I1.I26{IIO33.I1.net0153 LongBus_21<14>} prev=[1] elemInv=1 pathInv=0 v.w=0.1
	 [3] xc_tree net8320<1> w=4.8 e=buftd52C_UCCLAB=I1803.I26{LongBus_21<14> net8320<1>} prev=[2] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree LongBus_78<14> w=5.8 e=buftd52C_UCCLAB=I3740.I26{net8320<1> LongBus_78<14>} prev=[3] elemInv=0 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0101.net18776 w=7.9 e=switch_ds=ILAB0101.I2576{LongBus_78<14> ILAB0101.net18776} prev=[4] elemInv=0 pathInv=0 v.w=0.1
	 [6] xc_tree ILAB0101.ILE1516.net01345 w=8.2 e=inv_4_UCCLAB=ILAB0101.ILE1516.I714{ILAB0101.net18776 ILAB0101.ILE1516.net01345} prev=[5] elemInv=1 pathInv=1 v.w=0.1
	 [7] xc_tree ILAB0101.ILE1516.A w=9.8 e=switch1_sd=ILAB0101.ILE1516.Is54{ILAB0101.ILE1516.net01345 ILAB0101.ILE1516.A} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [8] xc_tree ILAB0101.net19642 w=11.4 e=switch=ILAB0101.ILE1516.Is8{ILAB0101.net19642 ILAB0101.ILE1516.A} prev=[7] elemInv=0 pathInv=1 v.w=0.1
	 [9] xc_tree ILAB0101.ILE1513.C w=11.9 e=switch_sd=ILAB0101.ILE1513.Is21{ILAB0101.net19642 ILAB0101.ILE1513.C} prev=[8] elemInv=0 pathInv=1 v.w=0.1
	 [10] xc_tree ILAB0101.ILE1513.net2746 w=12 e=switch_ds=ILAB0101.ILE1513.Is44{ILAB0101.ILE1513.C ILAB0101.ILE1513.net2746} prev=[9] elemInv=0 pathInv=1 v.w=0.1
}
xc_net_tree XC_I_cs {
	 xc_pin xci2_ib x o [-1] pinInv=0 { IIO33.I0.net209 }
	 xc_pin xci2_and3fft b i [42] pinInv=0 { ILAB0401.ILE0811.net2746 }
	 xc_pin xci2_nand3fft b i [30] pinInv=0 { ILAB0401.ILE0812.net2743 }
	 xc_pin xci2_nor2 b i [39] pinInv=0 { ILAB0401.ILE1012.net2746 }
	 xc_pin xci2_and3fft b i [22] pinInv=0 { ILAB0401.ILE0911.net2746 }
	 [0] xc_tree IIO33.I0.net209 w=0 e=={_NULL _NULL} prev=[-1] elemInv=0 pathInv=0 v.w=0.1
	 [1] xc_tree IIO33.I0.net0153 w=2.8 e=mux2i_P_UCCLAB=IIO33.I0.I25{IIO33.I0.net209 IIO33.I0.net0153} prev=[0] elemInv=1 pathInv=1 v.w=0.1
	 [2] xc_tree LongBus_21<15> w=3.8 e=invtd52_AVDD=IIO33.I0.I26{IIO33.I0.net0153 LongBus_21<15>} prev=[1] elemInv=1 pathInv=0 v.w=0.1
	 [3] xc_tree net8320<0> w=4.8 e=buftd52C_UCCLAB=I1803.I29{LongBus_21<15> net8320<0>} prev=[2] elemInv=0 pathInv=0 v.w=0.1
	 [4] xc_tree ILAB0401.net17471 w=7.3 e=switch_ds=ILAB0401.I671{net8320<0> ILAB0401.net17471} prev=[3] elemInv=0 pathInv=0 v.w=0.1
	 [5] xc_tree ILAB0401.ILE0916.net01345 w=7.65 e=inv_4_UCCLAB=ILAB0401.ILE0916.I714{ILAB0401.net17471 ILAB0401.ILE0916.net01345} prev=[4] elemInv=1 pathInv=1 v.w=0.1
	 [6] xc_tree ILAB0401.ILE0916.A w=9.75 e=switch1_sd=ILAB0401.ILE0916.Is54{ILAB0401.ILE0916.net01345 ILAB0401.ILE0916.A} prev=[5] elemInv=0 pathInv=1 v.w=0.1
	 [7] xc_tree IIO33.I0.net0151 w=2.8 e=mux2i_P_UCCLAB=IIO33.I0.I27{IIO33.I0.net209 IIO33.I0.net0151} prev=[0] elemInv=1 pathInv=1 v.w=0.1
	 [8] xc_tree LongBus_20<7> w=3.8 e=invtd52_AVDD=IIO33.I0.I8{IIO33.I0.net0151 LongBus_20<7>} prev=[7] elemInv=1 pathInv=0 v.w=0.1
	 [9] xc_tree net8311<8> w=4.8 e=buftd52C_UCCLAB=I1804.I37{LongBus_20<7> net8311<8>} prev=[8] elemInv=0 pathInv=0 v.w=0.1
	 [10] xc_tree ILAB0401.net21565 w=7.3 e=switch_ds=ILAB0401.I266{net8320<0> ILAB0401.net21565} prev=[3] elemInv=0 pathInv=0 v.w=0.1
	 [11] xc_tree ILAB0401.net30341 w=7.3 e=switch_ds=ILAB0401.I929{net8311<8> ILAB0401.net30341} prev=[9] elemInv=0 pathInv=0 v.w=0.1
	 [12] xc_tree ILAB0401.ILE1601.net01345 w=7.7 e=inv_4_UCCLAB=ILAB0401.ILE1601.I714{ILAB0401.net30341 ILAB0401.ILE1601.net01345} prev=[11] elemInv=1 pathInv=1 v.w=0.1
	 [13] xc_tree ILAB0401.ILE1016.net01342 w=7.7 e=inv_4_UCCLAB=ILAB0401.ILE1016.I713{ILAB0401.net21565 ILAB0401.ILE1016.net01342} prev=[10] elemInv=1 pathInv=1 v.w=0.1
	 [14] xc_tree ILAB0401.ILE1601.A w=10.8 e=switch1_sd=ILAB0401.ILE1601.Is54{ILAB0401.ILE1601.net01345 ILAB0401.ILE1601.A} prev=[12] elemInv=0 pathInv=1 v.w=0.1
	 [15] xc_tree ILAB0401.ILE1016.B w=10.3 e=switch1_sd=ILAB0401.ILE1016.Is62{ILAB0401.ILE1016.net01342 ILAB0401.ILE1016.B} prev=[13] elemInv=0 pathInv=1 v.w=0.1
	 [16] xc_tree net16296<0> w=12.85 e=switch=ILAB0401.ILE0916.Is9{net16296<0> ILAB0401.ILE0916.A} prev=[6] elemInv=0 pathInv=1 v.w=0.1
	 [17] xc_tree ILAB0401.ILE1601.net01328 w=13.3 e=switch_ds=ILAB0401.ILE1601.Is56{ILAB0401.ILE1601.A ILAB0401.ILE1601.net01328} prev=[14] elemInv=0 pathInv=1 v.w=0.1
	 [18] xc_tree ILAB0401.ILE0913.net1844 w=13.4 e=switch2=ILAB0401.ILE0913.Is31{net16296<0> ILAB0401.ILE0913.net1844} prev=[16] elemInv=0 pathInv=1 v.w=0.1
	 [19] xc_tree ILAB0401.ILE1601.net2680 w=14.3 e=switch2=ILAB0401.ILE1601.Is63{ILAB0401.ILE1601.net01328 ILAB0401.ILE1601.net2680} prev=[17] elemInv=0 pathInv=1 v.w=0.1
	 [20] xc_tree ILAB0401.net25312 w=13.6 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE0913.Ihi7{ILAB0401.ILE0913.net1844 ILAB0401.net25312} prev=[18] elemInv=1 pathInv=0 v.w=0.1
	 [21] xc_tree ILAB0401.ILE0911.C w=14.112 e=switch_sd=ILAB0401.ILE0911.Is20{ILAB0401.net25312 ILAB0401.ILE0911.C} prev=[20] elemInv=0 pathInv=0 v.w=0.1
	 [22] xc_tree ILAB0401.ILE0911.net2746 w=14.224 e=switch_ds=ILAB0401.ILE0911.Is44{ILAB0401.ILE0911.C ILAB0401.ILE0911.net2746} prev=[21] elemInv=0 pathInv=0 v.w=0.1
	 [23] xc_tree net21156<0> w=14.7 e=inv_8_UCCLAB=ILAB0401.ILE1601.I666{ILAB0401.ILE1601.net2680 net21156<0>} prev=[19] elemInv=1 pathInv=0 v.w=0.1
	 [24] xc_tree ILAB0401.net027166 w=14.86 e=buftd4_UCCLAB=ILAB0401.I236{net21156<0> ILAB0401.net027166} prev=[23] elemInv=0 pathInv=0 v.w=0.1
	 [25] xc_tree ILAB0401.I5605.net25 w=14.9625 e=mux2p_2_UCCLAB=ILAB0401.I5605.I4{ILAB0401.net027166 ILAB0401.I5605.net25} prev=[24] elemInv=0 pathInv=0 v.w=0.1
	 [26] xc_tree ILAB0401.Clk_int<1> w=15.0645 e=invd16_seth_UCCLAB=ILAB0401.I5605.I5{ILAB0401.I5605.net25 ILAB0401.Clk_int<1>} prev=[25] elemInv=1 pathInv=1 v.w=0.1
	 [27] xc_tree ILAB0401.I5366.net0110 w=15.3145 e=mux2d1i_1_P_UCCLAB=ILAB0401.I5366.I79{ILAB0401.Clk_int<1> ILAB0401.I5366.net0110} prev=[26] elemInv=0 pathInv=1 v.w=0.1
	 [28] xc_tree ILAB0401.net15299<2> w=15.4245 e=invd52_UCCLAB=ILAB0401.I5366.I75{ILAB0401.I5366.net0110 ILAB0401.net15299<2>} prev=[27] elemInv=1 pathInv=0 v.w=0.1
	 [29] xc_tree ILAB0401.Clk_LAB<1> w=15.525 e=invd32_UCCLAB=ILAB0401.I5591.I2{ILAB0401.net15299<2> ILAB0401.Clk_LAB<1>} prev=[28] elemInv=1 pathInv=1 v.w=0.1
	 [30] xc_tree ILAB0401.ILE0812.net2743 w=15.637 e=switch_sd_clk1=ILAB0401.ILE0812.Is2{ILAB0401.Clk_LAB<1> ILAB0401.ILE0812.net2743} prev=[29] elemInv=0 pathInv=1 v.w=0.1
	 [31] xc_tree net16292<0> w=13.592 e=switch=ILAB0401.ILE1016.Is11{net16292<0> ILAB0401.ILE1016.B} prev=[15] elemInv=0 pathInv=1 v.w=0.1
	 [32] xc_tree ILAB0401.ILE1013.net1844 w=14.166 e=switch2=ILAB0401.ILE1013.Is31{net16292<0> ILAB0401.ILE1013.net1844} prev=[31] elemInv=0 pathInv=1 v.w=0.1
	 [33] xc_tree ILAB0401.net16312 w=14.39 e=sw_b_v2_inv_UCCLAB=ILAB0401.ILE1013.Ihi7{ILAB0401.ILE1013.net1844 ILAB0401.net16312} prev=[32] elemInv=1 pathInv=0 v.w=0.1
	 [34] xc_tree ILAB0401.ILE1012.C w=15.264 e=switch=ILAB0401.ILE1012.Is13{ILAB0401.net16312 ILAB0401.ILE1012.C} prev=[33] elemInv=0 pathInv=0 v.w=0.1
	 [35] xc_tree ILAB0401.net27188 w=14.86 e=buftd4_UCCLAB=ILAB0401.I238{net21156<0> ILAB0401.net27188} prev=[23] elemInv=0 pathInv=0 v.w=0.1
	 [36] xc_tree ILAB0401.I5605.net29 w=14.9625 e=mux2p_2_UCCLAB=ILAB0401.I5605.I0{ILAB0401.net27188 ILAB0401.I5605.net29} prev=[35] elemInv=0 pathInv=0 v.w=0.1
	 [37] xc_tree ILAB0401.Clk_int<3> w=15.0645 e=invd16_seth_UCCLAB=ILAB0401.I5605.I1{ILAB0401.I5605.net29 ILAB0401.Clk_int<3>} prev=[36] elemInv=1 pathInv=1 v.w=0.1
	 [38] xc_tree ILAB0401.I5366.net0102 w=15.3145 e=mux2d1i_1_P_UCCLAB=ILAB0401.I5366.I81{ILAB0401.Clk_int<3> ILAB0401.I5366.net0102} prev=[37] elemInv=0 pathInv=1 v.w=0.1
	 [39] xc_tree ILAB0401.ILE1012.net2746 w=15.388 e=switch_ds=ILAB0401.ILE1012.Is44{ILAB0401.ILE1012.C ILAB0401.ILE1012.net2746} prev=[34] elemInv=0 pathInv=0 v.w=0.1
	 [40] xc_tree ILAB0401.net15299<0> w=15.4245 e=invd52_UCCLAB=ILAB0401.I5366.I77{ILAB0401.I5366.net0102 ILAB0401.net15299<0>} prev=[38] elemInv=1 pathInv=0 v.w=0.1
	 [41] xc_tree ILAB0401.Clk_LAB<3> w=15.525 e=invd32_UCCLAB=ILAB0401.I5591.I0{ILAB0401.net15299<0> ILAB0401.Clk_LAB<3>} prev=[40] elemInv=1 pathInv=1 v.w=0.1
	 [42] xc_tree ILAB0401.ILE0811.net2746 w=15.649 e=switch_sd_clk3=ILAB0401.ILE0811.Is141{ILAB0401.Clk_LAB<3> ILAB0401.ILE0811.net2746} prev=[41] elemInv=0 pathInv=1 v.w=0.1
}
###
