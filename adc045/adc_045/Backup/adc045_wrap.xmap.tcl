############################################################
###                                                         
###    Generated     X-Map v0.51.20                                 
###    Date/Time     04.09.2025 / 13:21:42                    
###                                                         
############################################################
###                                                         
###    Type          Tcl netlist                            
###                                                         
############################################################
###                                                         
###    Module (adc045_wrap)                                          
###    |                                                    
###    + - Wires                   279                       
###    + - Connections             788                       
###    |                                                    
###    + - Ports                   37                       
###    |   |                                                
###    |   + - inputs              8                       
###    |   + - outputs             29                       
###    |                                                    
###    + - Elements                308                       
###        |                                                
###        + - IO                  37                       
###        |   |                                            
###        |   + - input           8                       
###        |   + - output          29                       
###        |                                                
###        + - Logic               271                       
###            |                                            
###            + - LUT-Only        184                       
###            + - REG-Only        87                       
###                                                         
############################################################
###                                                         
###    Description:                                         
###        Tcl netlist for X-Core.                          
###                                                         
############################################################


#INPUT LIST
set xc_input { cs dout drdy hard_start hard_wreg rst_l rst_l_adc }

#OUTPUT LIST
set xc_output { adc045_data[0] adc045_data[1] adc045_data[2] adc045_data[3] adc045_data[4] adc045_data[5] adc045_data[6] adc045_data[7] adc045_data[8] adc045_data[9] adc045_data[10] adc045_data[11] adc045_data[12] adc045_data[13] adc045_data[14] adc045_data[15] adc045_data[16] adc045_data[17] adc045_data[18] adc045_data[19] adc045_data[20] adc045_data[21] adc045_data[22] adc045_data[23] din nRST ready_sample sclk start }

#CLOCK LIST
set xc_clock { clk }

#INPUT IOs
xc_inst {XC_BUF_cs} xci2_ib {a=cs x=XC_I_cs} {inp_io=1}
xc_inst {XC_BUF_dout} xci2_ib {a=dout x=XC_I_dout} {inp_io=1}
xc_inst {XC_BUF_drdy} xci2_ib {a=drdy x=XC_I_drdy} {inp_io=1}
xc_inst {XC_BUF_hard_start} xci2_ib {a=hard_start x=XC_I_hard_start} {inp_io=1}
xc_inst {XC_BUF_hard_wreg} xci2_ib {a=hard_wreg x=XC_I_hard_wreg} {inp_io=1}
xc_inst {XC_BUF_rst_l} xci2_ib {a=rst_l x=XC_I_rst_l} {inp_io=1}
xc_inst {XC_BUF_rst_l_adc} xci2_ib {a=rst_l_adc x=XC_I_rst_l_adc} {inp_io=1}

#OUTPUT IOs
xc_inst {XC_BUF_din} xci2_ob {a=XC_O_din x=din} {out_io=1}
xc_inst {XC_BUF_nRST} xci2_ob {a=XC_I_rst_l_adc x=nRST} {out_io=1}
xc_inst {XC_BUF_ready_sample} xci2_ob {a=XC_O_ready_sample x=ready_sample} {out_io=1}
xc_inst {XC_BUF_sclk} xci2_ob {a=XC_O_sclk x=sclk} {out_io=1}
xc_inst {XC_BUF_start} xci2_ob {a=XC_I_hard_start x=start} {out_io=1}
xc_inst {XC_BUF_adc045_data[0]} xci2_ob {a=adc_rd.ch1_acc[0] x=adc045_data[0]} {out_io=1}
xc_inst {XC_BUF_adc045_data[10]} xci2_ob {a=adc_rd.ch1_acc[10] x=adc045_data[10]} {out_io=1}
xc_inst {XC_BUF_adc045_data[11]} xci2_ob {a=adc_rd.ch1_acc[11] x=adc045_data[11]} {out_io=1}
xc_inst {XC_BUF_adc045_data[12]} xci2_ob {a=adc_rd.ch1_acc[12] x=adc045_data[12]} {out_io=1}
xc_inst {XC_BUF_adc045_data[13]} xci2_ob {a=adc_rd.ch1_acc[13] x=adc045_data[13]} {out_io=1}
xc_inst {XC_BUF_adc045_data[14]} xci2_ob {a=adc_rd.ch1_acc[14] x=adc045_data[14]} {out_io=1}
xc_inst {XC_BUF_adc045_data[15]} xci2_ob {a=adc_rd.ch1_acc[15] x=adc045_data[15]} {out_io=1}
xc_inst {XC_BUF_adc045_data[16]} xci2_ob {a=adc_rd.ch1_acc[16] x=adc045_data[16]} {out_io=1}
xc_inst {XC_BUF_adc045_data[17]} xci2_ob {a=adc_rd.ch1_acc[17] x=adc045_data[17]} {out_io=1}
xc_inst {XC_BUF_adc045_data[18]} xci2_ob {a=adc_rd.ch1_acc[18] x=adc045_data[18]} {out_io=1}
xc_inst {XC_BUF_adc045_data[19]} xci2_ob {a=adc_rd.ch1_acc[19] x=adc045_data[19]} {out_io=1}
xc_inst {XC_BUF_adc045_data[1]} xci2_ob {a=adc_rd.ch1_acc[1] x=adc045_data[1]} {out_io=1}
xc_inst {XC_BUF_adc045_data[20]} xci2_ob {a=adc_rd.ch1_acc[20] x=adc045_data[20]} {out_io=1}
xc_inst {XC_BUF_adc045_data[21]} xci2_ob {a=adc_rd.ch1_acc[21] x=adc045_data[21]} {out_io=1}
xc_inst {XC_BUF_adc045_data[22]} xci2_ob {a=adc_rd.ch1_acc[22] x=adc045_data[22]} {out_io=1}
xc_inst {XC_BUF_adc045_data[23]} xci2_ob {a=adc_rd.ch1_acc[23] x=adc045_data[23]} {out_io=1}
xc_inst {XC_BUF_adc045_data[2]} xci2_ob {a=adc_rd.ch1_acc[2] x=adc045_data[2]} {out_io=1}
xc_inst {XC_BUF_adc045_data[3]} xci2_ob {a=adc_rd.ch1_acc[3] x=adc045_data[3]} {out_io=1}
xc_inst {XC_BUF_adc045_data[4]} xci2_ob {a=adc_rd.ch1_acc[4] x=adc045_data[4]} {out_io=1}
xc_inst {XC_BUF_adc045_data[5]} xci2_ob {a=adc_rd.ch1_acc[5] x=adc045_data[5]} {out_io=1}
xc_inst {XC_BUF_adc045_data[6]} xci2_ob {a=adc_rd.ch1_acc[6] x=adc045_data[6]} {out_io=1}
xc_inst {XC_BUF_adc045_data[7]} xci2_ob {a=adc_rd.ch1_acc[7] x=adc045_data[7]} {out_io=1}
xc_inst {XC_BUF_adc045_data[8]} xci2_ob {a=adc_rd.ch1_acc[8] x=adc045_data[8]} {out_io=1}
xc_inst {XC_BUF_adc045_data[9]} xci2_ob {a=adc_rd.ch1_acc[9] x=adc045_data[9]} {out_io=1}

#CLOCK IOs
xc_inst {XC_BUF_clk} xci2_ib_gclk {a=clk x=XC_C_clk} {clk_inp_io=1}

#LUTs
xc_inst {_184_} xci2_inv { a=XC_O_sclk y=_062_ }
xc_inst {_185_} xci2_and2ft { b=adc_rd.work_mode a=XC_I_drdy y=_063_ }
xc_inst {_186_} xci2_and3ftt { c=adc_rd.work_mode b=XC_I_dout a=XC_I_drdy y=_064_ }
xc_inst {_187_} xci2_nor2 { b=adc_rd.bit_cnt[5] a=adc_rd.bit_cnt[2] y=_065_ }
xc_inst {_188_} xci2_and2ft { b=adc_rd.bit_cnt[0] a=adc_rd.bit_cnt[1] y=_066_ }
xc_inst {_189_} xci2_and3fft { c=adc_rd.bit_cnt[0] b=adc_rd.bit_cnt[2] a=adc_rd.bit_cnt[1] y=_067_ }
xc_inst {_190_} xci2_or3 { c=adc_rd.bit_cnt[5] b=adc_rd.bit_cnt[4] a=adc_rd.bit_cnt[3] y=_068_ }
xc_inst {_191_} xci2_nor2ft { b=_068_ a=_067_ y=_069_ }
xc_inst {_192_} xci2_or3fft { c=_068_ b=_067_ a=adc_rd.start_mode y=_070_ }
xc_inst {_193_} xci2_or2 { b=adc_rd.start_mode a=adc_rd.wreg_mode y=_071_ }
xc_inst {_194_} xci2_nor3 { c=adc_rd.start_mode b=adc_rd.work_mode a=adc_rd.wreg_mode y=_072_ }
xc_inst {_195_} xci2_oa21ttf { c=adc_rd.work_mode b=adc_rd.start_mode a=adc_rd.wreg_mode y=_073_ }
xc_inst {_196_} xci2_aoi21 { c=_064_ b=_072_ a=adc_rd.shift_reg[0] y=_074_ }
xc_inst {_197_} xci2_oai21 { c=_074_ b=_070_ a=adc_rd.work_mode y=_000_ }
xc_inst {_198_} xci2_ao21ftt { c=adc_rd.work_mode b=_071_ a=_069_ y=_075_ }
xc_inst {_199_} xci2_nand2 { b=XC_I_drdy a=adc_rd.work_mode y=_076_ }
xc_inst {_200_} xci2_and3 { c=_076_ b=_075_ a=adc_rd.shift_reg[0] y=_077_ }
xc_inst {_201_} xci2_ao21 { c=_077_ b=_072_ a=adc_rd.shift_reg[1] y=_001_ }
xc_inst {_202_} xci2_and3 { c=_076_ b=_075_ a=adc_rd.shift_reg[1] y=_078_ }
xc_inst {_203_} xci2_ao21 { c=_078_ b=_072_ a=adc_rd.shift_reg[2] y=_002_ }
xc_inst {_204_} xci2_and3 { c=_076_ b=_075_ a=adc_rd.shift_reg[2] y=_079_ }
xc_inst {_205_} xci2_ao21 { c=_079_ b=_072_ a=adc_rd.shift_reg[3] y=_003_ }
xc_inst {_206_} xci2_and3 { c=_076_ b=_075_ a=adc_rd.shift_reg[3] y=_080_ }
xc_inst {_207_} xci2_ao21 { c=_080_ b=_072_ a=adc_rd.shift_reg[4] y=_004_ }
xc_inst {_208_} xci2_and3 { c=_076_ b=_075_ a=adc_rd.shift_reg[4] y=_081_ }
xc_inst {_209_} xci2_ao21 { c=_081_ b=_072_ a=adc_rd.shift_reg[5] y=_005_ }
xc_inst {_210_} xci2_and3 { c=_076_ b=_075_ a=adc_rd.shift_reg[5] y=_082_ }
xc_inst {_211_} xci2_ao21 { c=_082_ b=_072_ a=adc_rd.shift_reg[6] y=_006_ }
xc_inst {_212_} xci2_and3 { c=_076_ b=_075_ a=adc_rd.shift_reg[6] y=_083_ }
xc_inst {_213_} xci2_ao21 { c=_083_ b=_072_ a=adc_rd.shift_reg[7] y=_007_ }
xc_inst {_214_} xci2_and3 { c=_076_ b=_075_ a=adc_rd.shift_reg[7] y=_084_ }
xc_inst {_215_} xci2_ao21 { c=_084_ b=_072_ a=adc_rd.shift_reg[8] y=_008_ }
xc_inst {_216_} xci2_and3 { c=_076_ b=_075_ a=adc_rd.shift_reg[8] y=_085_ }
xc_inst {_217_} xci2_ao21 { c=_085_ b=_072_ a=adc_rd.shift_reg[9] y=_009_ }
xc_inst {_218_} xci2_and3 { c=_076_ b=_075_ a=adc_rd.shift_reg[9] y=_086_ }
xc_inst {_219_} xci2_ao21 { c=_086_ b=_072_ a=adc_rd.shift_reg[10] y=_010_ }
xc_inst {_220_} xci2_and3 { c=_076_ b=_075_ a=adc_rd.shift_reg[10] y=_087_ }
xc_inst {_221_} xci2_ao21 { c=_087_ b=_072_ a=adc_rd.shift_reg[11] y=_011_ }
xc_inst {_222_} xci2_and3 { c=_076_ b=_075_ a=adc_rd.shift_reg[11] y=_088_ }
xc_inst {_223_} xci2_ao21 { c=_088_ b=_072_ a=adc_rd.shift_reg[12] y=_012_ }
xc_inst {_224_} xci2_and3 { c=_076_ b=_075_ a=adc_rd.shift_reg[12] y=_089_ }
xc_inst {_225_} xci2_ao21 { c=_089_ b=_072_ a=adc_rd.shift_reg[13] y=_013_ }
xc_inst {_226_} xci2_and3 { c=_076_ b=_075_ a=adc_rd.shift_reg[13] y=_090_ }
xc_inst {_227_} xci2_ao21 { c=_090_ b=_072_ a=adc_rd.shift_reg[14] y=_014_ }
xc_inst {_228_} xci2_and3 { c=_076_ b=_075_ a=adc_rd.shift_reg[14] y=_091_ }
xc_inst {_229_} xci2_ao21 { c=_091_ b=_072_ a=adc_rd.shift_reg[15] y=_015_ }
xc_inst {_230_} xci2_and3 { c=_076_ b=_075_ a=adc_rd.shift_reg[15] y=_092_ }
xc_inst {_231_} xci2_ao21 { c=_092_ b=_072_ a=adc_rd.shift_reg[16] y=_016_ }
xc_inst {_232_} xci2_and3 { c=_076_ b=_075_ a=adc_rd.shift_reg[16] y=_093_ }
xc_inst {_233_} xci2_ao21 { c=_093_ b=_072_ a=adc_rd.shift_reg[17] y=_017_ }
xc_inst {_234_} xci2_ao21 { c=_063_ b=_073_ a=_070_ y=_094_ }
xc_inst {_235_} xci2_nand3ftt { c=_073_ b=_069_ a=adc_rd.start_mode y=_095_ }
xc_inst {_236_} xci2_ao21ttf { c=_095_ b=_094_ a=adc_rd.shift_reg[17] y=_096_ }
xc_inst {_237_} xci2_ao21 { c=_096_ b=_072_ a=adc_rd.shift_reg[18] y=_018_ }
xc_inst {_238_} xci2_and3ftt { c=adc_rd.shift_reg[18] b=adc_rd.work_mode a=XC_I_drdy y=_097_ }
xc_inst {_239_} xci2_mux2h { s=_069_ b=adc_rd.start_mode a=adc_rd.shift_reg[18] y=_098_ }
xc_inst {_240_} xci2_ao21 { c=_097_ b=_098_ a=_073_ y=_099_ }
xc_inst {_241_} xci2_ao21 { c=_099_ b=_072_ a=adc_rd.shift_reg[19] y=_019_ }
xc_inst {_242_} xci2_ao21ttf { c=_095_ b=_094_ a=adc_rd.shift_reg[19] y=_100_ }
xc_inst {_243_} xci2_ao21 { c=_100_ b=_072_ a=adc_rd.shift_reg[20] y=_020_ }
xc_inst {_244_} xci2_and3 { c=_076_ b=_075_ a=adc_rd.shift_reg[20] y=_101_ }
xc_inst {_245_} xci2_ao21 { c=_101_ b=_072_ a=adc_rd.shift_reg[21] y=_021_ }
xc_inst {_246_} xci2_and3 { c=_076_ b=_075_ a=adc_rd.shift_reg[21] y=_102_ }
xc_inst {_247_} xci2_ao21 { c=_102_ b=_072_ a=adc_rd.shift_reg[22] y=_022_ }
xc_inst {_248_} xci2_and3ftt { c=adc_rd.shift_reg[22] b=adc_rd.work_mode a=XC_I_drdy y=_103_ }
xc_inst {_249_} xci2_mux2h { s=_069_ b=adc_rd.start_mode a=adc_rd.shift_reg[22] y=_104_ }
xc_inst {_250_} xci2_ao21 { c=_103_ b=_104_ a=_073_ y=_105_ }
xc_inst {_251_} xci2_ao21 { c=_105_ b=_072_ a=adc_rd.shift_reg[23] y=_023_ }
xc_inst {_252_} xci2_and3fft { c=adc_rd.state[1] b=XC_I_cs a=adc_rd.state[2] y=_106_ }
xc_inst {_253_} xci2_nand3fft { c=adc_rd.state[1] b=XC_I_cs a=adc_rd.state[2] y=_107_ }
xc_inst {_254_} xci2_nor2 { b=XC_I_cs a=adc_rd.state[1] y=_108_ }
xc_inst {_255_} xci2_nand3ftt { c=_108_ b=adc_rd.state[2] a=adc_rd.state[0] y=_109_ }
xc_inst {_256_} xci2_and2ft { b=adc_rd.bit_cnt[1] a=adc_rd.bit_cnt[0] y=_110_ }
xc_inst {_257_} xci2_and2 { b=adc_rd.bit_cnt[4] a=adc_rd.bit_cnt[3] y=_111_ }
xc_inst {_258_} xci2_nand3 { c=_111_ b=_110_ a=_065_ y=_112_ }
xc_inst {_259_} xci2_nand2ft { b=_112_ a=_109_ y=_113_ }
xc_inst {_260_} xci2_ao21ftf { c=_107_ b=_112_ a=_109_ y=_114_ }
xc_inst {_261_} xci2_and2 { b=_109_ a=_107_ y=_115_ }
xc_inst {_262_} xci2_mux2h { s=adc_rd.bit_cnt[0] b=_115_ a=_114_ y=_024_ }
xc_inst {_263_} xci2_xnor2 { b=adc_rd.bit_cnt[1] a=adc_rd.bit_cnt[0] y=_116_ }
xc_inst {_264_} xci2_and3 { c=_111_ b=_066_ a=_065_ y=_117_ }
xc_inst {_265_} xci2_nand3fft { c=adc_rd.state[0] b=_107_ a=_117_ y=_118_ }
xc_inst {_266_} xci2_ao21 { c=_107_ b=_117_ a=adc_rd.state[0] y=_119_ }
xc_inst {_267_} xci2_aoi21 { c=_116_ b=_119_ a=_113_ y=_120_ }
xc_inst {_268_} xci2_ao21 { c=_120_ b=_115_ a=adc_rd.bit_cnt[1] y=_025_ }
xc_inst {_269_} xci2_nand3ftt { c=adc_rd.bit_cnt[0] b=adc_rd.bit_cnt[1] a=_115_ y=_121_ }
xc_inst {_270_} xci2_xnor2 { b=_121_ a=adc_rd.bit_cnt[2] y=_026_ }
xc_inst {_271_} xci2_and3 { c=_109_ b=_107_ a=adc_rd.bit_cnt[3] y=_122_ }
xc_inst {_272_} xci2_and3 { c=adc_rd.bit_cnt[2] b=adc_rd.bit_cnt[1] a=adc_rd.bit_cnt[0] y=_123_ }
xc_inst {_273_} xci2_and3fft { c=adc_rd.bit_cnt[4] b=adc_rd.bit_cnt[5] a=adc_rd.bit_cnt[3] y=_124_ }
xc_inst {_274_} xci2_nand2 { b=_124_ a=_123_ y=_125_ }
xc_inst {_275_} xci2_nand3fft { c=_125_ b=_107_ a=adc_rd.state[0] y=_126_ }
xc_inst {_276_} xci2_nand2 { b=_126_ a=_118_ y=_127_ }
xc_inst {_277_} xci2_nand3 { c=_126_ b=_118_ a=_113_ y=_128_ }
xc_inst {_278_} xci2_and2 { b=_123_ a=adc_rd.bit_cnt[3] y=_129_ }
xc_inst {_279_} xci2_xnor2ft { b=_123_ a=adc_rd.bit_cnt[3] y=_130_ }
xc_inst {_280_} xci2_ao21 { c=_122_ b=_130_ a=_128_ y=_027_ }
xc_inst {_281_} xci2_and3 { c=_109_ b=_107_ a=adc_rd.bit_cnt[4] y=_131_ }
xc_inst {_282_} xci2_xnor2ft { b=_129_ a=adc_rd.bit_cnt[4] y=_132_ }
xc_inst {_283_} xci2_ao21 { c=_131_ b=_132_ a=_128_ y=_028_ }
xc_inst {_284_} xci2_nand3ftt { c=adc_rd.bit_cnt[4] b=_129_ a=_115_ y=_133_ }
xc_inst {_285_} xci2_xnor2 { b=_133_ a=adc_rd.bit_cnt[5] y=_029_ }
xc_inst {_286_} xci2_ao21 { c=_127_ b=_107_ a=adc_rd.wreg_mode y=_030_ }
xc_inst {_287_} xci2_nand3ftt { c=XC_I_rst_l b=_071_ a=_069_ y=_134_ }
xc_inst {_288_} xci2_mux2h { s=_134_ b=XC_O_din a=adc_rd.shift_reg[23] y=_031_ }
xc_inst {_289_} xci2_and3fft { c=adc_rd.state[0] b=XC_I_cs a=adc_rd.state[1] y=_135_ }
xc_inst {_290_} xci2_and2 { b=_135_ a=adc_rd.state[2] y=_136_ }
xc_inst {_291_} xci2_and3fft { c=_135_ b=XC_I_hard_wreg a=adc_rd.state[2] y=_137_ }
xc_inst {_292_} xci2_nand3fft { c=_108_ b=adc_rd.state[2] a=adc_rd.state[0] y=_138_ }
xc_inst {_293_} xci2_and3fft { c=_138_ b=_137_ a=_136_ y=_139_ }
xc_inst {_294_} xci2_nand3fft { c=_106_ b=adc_rd.state[0] a=_125_ y=_140_ }
xc_inst {_295_} xci2_oa21 { c=_118_ b=_112_ a=_109_ y=_141_ }
xc_inst {_296_} xci2_nand3 { c=_141_ b=_140_ a=_139_ y=_032_ }
xc_inst {_297_} xci2_and3ftt { c=_135_ b=XC_I_hard_wreg a=adc_rd.state[2] y=_142_ }
xc_inst {_298_} xci2_nand3fft { c=_138_ b=_127_ a=_142_ y=_033_ }
xc_inst {_299_} xci2_and3 { c=_135_ b=XC_I_rst_l_adc a=adc_rd.state[2] y=_143_ }
xc_inst {_300_} xci2_nand3 { c=_117_ b=_106_ a=adc_rd.state[0] y=_144_ }
xc_inst {_301_} xci2_aoi21 { c=_143_ b=_137_ a=XC_I_hard_start y=_145_ }
xc_inst {_302_} xci2_nand3 { c=_145_ b=_144_ a=_109_ y=_034_ }
xc_inst {_303_} xci2_mux2h { s=_136_ b=XC_I_rst_l_adc a=adc_rd.work_mode y=_035_ }
xc_inst {_304_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[0] a=adc_rd.shift_reg[0] y=_036_ }
xc_inst {_305_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[1] a=adc_rd.shift_reg[1] y=_037_ }
xc_inst {_306_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[2] a=adc_rd.shift_reg[2] y=_038_ }
xc_inst {_307_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[3] a=adc_rd.shift_reg[3] y=_039_ }
xc_inst {_308_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[4] a=adc_rd.shift_reg[4] y=_040_ }
xc_inst {_309_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[5] a=adc_rd.shift_reg[5] y=_041_ }
xc_inst {_310_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[6] a=adc_rd.shift_reg[6] y=_042_ }
xc_inst {_311_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[7] a=adc_rd.shift_reg[7] y=_043_ }
xc_inst {_312_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[8] a=adc_rd.shift_reg[8] y=_044_ }
xc_inst {_313_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[9] a=adc_rd.shift_reg[9] y=_045_ }
xc_inst {_314_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[10] a=adc_rd.shift_reg[10] y=_046_ }
xc_inst {_315_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[11] a=adc_rd.shift_reg[11] y=_047_ }
xc_inst {_316_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[12] a=adc_rd.shift_reg[12] y=_048_ }
xc_inst {_317_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[13] a=adc_rd.shift_reg[13] y=_049_ }
xc_inst {_318_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[14] a=adc_rd.shift_reg[14] y=_050_ }
xc_inst {_319_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[15] a=adc_rd.shift_reg[15] y=_051_ }
xc_inst {_320_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[16] a=adc_rd.shift_reg[16] y=_052_ }
xc_inst {_321_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[17] a=adc_rd.shift_reg[17] y=_053_ }
xc_inst {_322_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[18] a=adc_rd.shift_reg[18] y=_054_ }
xc_inst {_323_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[19] a=adc_rd.shift_reg[19] y=_055_ }
xc_inst {_324_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[20] a=adc_rd.shift_reg[20] y=_056_ }
xc_inst {_325_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[21] a=adc_rd.shift_reg[21] y=_057_ }
xc_inst {_326_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[22] a=adc_rd.shift_reg[22] y=_058_ }
xc_inst {_327_} xci2_mux2h { s=_076_ b=adc_rd.ch1_acc[23] a=adc_rd.shift_reg[23] y=_059_ }
xc_inst {_328_} xci2_mux2h { s=_109_ b=adc_rd.start_mode a=_112_ y=_060_ }
xc_inst {_329_} xci2_xnor2 { b=adc_rd.ch1_prev[15] a=adc_rd.ch1_acc[15] y=_146_ }
xc_inst {_330_} xci2_xnor2 { b=adc_rd.ch1_prev[22] a=adc_rd.ch1_acc[22] y=_147_ }
xc_inst {_331_} xci2_xnor2 { b=adc_rd.ch1_prev[2] a=adc_rd.ch1_acc[2] y=_148_ }
xc_inst {_332_} xci2_xnor2 { b=adc_rd.ch1_prev[0] a=adc_rd.ch1_acc[0] y=_149_ }
xc_inst {_333_} xci2_xnor2 { b=adc_rd.ch1_prev[14] a=adc_rd.ch1_acc[14] y=_150_ }
xc_inst {_334_} xci2_xnor2 { b=adc_rd.ch1_prev[13] a=adc_rd.ch1_acc[13] y=_151_ }
xc_inst {_335_} xci2_xnor2 { b=adc_rd.ch1_prev[5] a=adc_rd.ch1_acc[5] y=_152_ }
xc_inst {_336_} xci2_xnor2 { b=adc_rd.ch1_prev[6] a=adc_rd.ch1_acc[6] y=_153_ }
xc_inst {_337_} xci2_xnor2 { b=adc_rd.ch1_prev[12] a=adc_rd.ch1_acc[12] y=_154_ }
xc_inst {_338_} xci2_xnor2 { b=adc_rd.ch1_prev[11] a=adc_rd.ch1_acc[11] y=_155_ }
xc_inst {_339_} xci2_xnor2 { b=adc_rd.ch1_prev[10] a=adc_rd.ch1_acc[10] y=_156_ }
xc_inst {_340_} xci2_xnor2 { b=adc_rd.ch1_prev[20] a=adc_rd.ch1_acc[20] y=_157_ }
xc_inst {_341_} xci2_xnor2 { b=adc_rd.ch1_prev[23] a=adc_rd.ch1_acc[23] y=_158_ }
xc_inst {_342_} xci2_xnor2 { b=adc_rd.ch1_prev[16] a=adc_rd.ch1_acc[16] y=_159_ }
xc_inst {_343_} xci2_and2 { b=_159_ a=_152_ y=_160_ }
xc_inst {_344_} xci2_and3 { c=_160_ b=_154_ a=_151_ y=_161_ }
xc_inst {_345_} xci2_xnor2 { b=adc_rd.ch1_prev[7] a=adc_rd.ch1_acc[7] y=_162_ }
xc_inst {_346_} xci2_xnor2 { b=adc_rd.ch1_prev[3] a=adc_rd.ch1_acc[3] y=_163_ }
xc_inst {_347_} xci2_xnor2 { b=adc_rd.ch1_prev[17] a=adc_rd.ch1_acc[17] y=_164_ }
xc_inst {_348_} xci2_and2 { b=_164_ a=_163_ y=_165_ }
xc_inst {_349_} xci2_and3 { c=_165_ b=_162_ a=_153_ y=_166_ }
xc_inst {_350_} xci2_xnor2 { b=adc_rd.ch1_prev[9] a=adc_rd.ch1_acc[9] y=_167_ }
xc_inst {_351_} xci2_xnor2 { b=adc_rd.ch1_prev[18] a=adc_rd.ch1_acc[18] y=_168_ }
xc_inst {_352_} xci2_and3 { c=_168_ b=_155_ a=_150_ y=_169_ }
xc_inst {_353_} xci2_and2 { b=_169_ a=_167_ y=_170_ }
xc_inst {_354_} xci2_and3 { c=_170_ b=_166_ a=_161_ y=_171_ }
xc_inst {_355_} xci2_xnor2 { b=adc_rd.ch1_prev[19] a=adc_rd.ch1_acc[19] y=_172_ }
xc_inst {_356_} xci2_and2 { b=_172_ a=_158_ y=_173_ }
xc_inst {_357_} xci2_and3 { c=_173_ b=_148_ a=_146_ y=_174_ }
xc_inst {_358_} xci2_xnor2 { b=adc_rd.ch1_prev[21] a=adc_rd.ch1_acc[21] y=_175_ }
xc_inst {_359_} xci2_and2 { b=_175_ a=_149_ y=_176_ }
xc_inst {_360_} xci2_xnor2 { b=adc_rd.ch1_prev[8] a=adc_rd.ch1_acc[8] y=_177_ }
xc_inst {_361_} xci2_and3 { c=_177_ b=_176_ a=_157_ y=_178_ }
xc_inst {_362_} xci2_xnor2 { b=adc_rd.ch1_prev[1] a=adc_rd.ch1_acc[1] y=_179_ }
xc_inst {_363_} xci2_xnor2 { b=adc_rd.ch1_prev[4] a=adc_rd.ch1_acc[4] y=_180_ }
xc_inst {_364_} xci2_and3 { c=_180_ b=_179_ a=_147_ y=_181_ }
xc_inst {_365_} xci2_and2 { b=_181_ a=_156_ y=_182_ }
xc_inst {_366_} xci2_and3 { c=_182_ b=_178_ a=_174_ y=_183_ }
xc_inst {_367_} xci2_nand2 { b=_183_ a=_171_ y=_061_ }
xc_inst {_368_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_000_ q=adc_rd.shift_reg[0] }
xc_inst {_369_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_001_ q=adc_rd.shift_reg[1] }
xc_inst {_370_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_002_ q=adc_rd.shift_reg[2] }
xc_inst {_371_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_003_ q=adc_rd.shift_reg[3] }
xc_inst {_372_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_004_ q=adc_rd.shift_reg[4] }
xc_inst {_373_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_005_ q=adc_rd.shift_reg[5] }
xc_inst {_374_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_006_ q=adc_rd.shift_reg[6] }
xc_inst {_375_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_007_ q=adc_rd.shift_reg[7] }
xc_inst {_376_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_008_ q=adc_rd.shift_reg[8] }
xc_inst {_377_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_009_ q=adc_rd.shift_reg[9] }
xc_inst {_378_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_010_ q=adc_rd.shift_reg[10] }
xc_inst {_379_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_011_ q=adc_rd.shift_reg[11] }
xc_inst {_380_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_012_ q=adc_rd.shift_reg[12] }
xc_inst {_381_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_013_ q=adc_rd.shift_reg[13] }
xc_inst {_382_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_014_ q=adc_rd.shift_reg[14] }
xc_inst {_383_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_015_ q=adc_rd.shift_reg[15] }
xc_inst {_384_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_016_ q=adc_rd.shift_reg[16] }
xc_inst {_385_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_017_ q=adc_rd.shift_reg[17] }
xc_inst {_386_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_018_ q=adc_rd.shift_reg[18] }
xc_inst {_387_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_019_ q=adc_rd.shift_reg[19] }
xc_inst {_388_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_020_ q=adc_rd.shift_reg[20] }
xc_inst {_389_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_021_ q=adc_rd.shift_reg[21] }
xc_inst {_390_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_022_ q=adc_rd.shift_reg[22] }
xc_inst {_391_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_023_ q=adc_rd.shift_reg[23] }
xc_inst {_392_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_024_ q=adc_rd.bit_cnt[0] }
xc_inst {_393_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_025_ q=adc_rd.bit_cnt[1] }
xc_inst {_394_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_026_ q=adc_rd.bit_cnt[2] }
xc_inst {_395_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_027_ q=adc_rd.bit_cnt[3] }
xc_inst {_396_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_028_ q=adc_rd.bit_cnt[4] }
xc_inst {_397_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_029_ q=adc_rd.bit_cnt[5] }
xc_inst {_398_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_030_ q=adc_rd.wreg_mode }
xc_inst {_399_} xci2_dff { clk=XC_O_sclk d=_031_ q=XC_O_din }
xc_inst {_400_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_032_ q=adc_rd.state[0] }
xc_inst {_401_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_033_ q=adc_rd.state[1] }
xc_inst {_402_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_034_ q=adc_rd.state[2] }
xc_inst {_403_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_035_ q=adc_rd.work_mode }
xc_inst {_404_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_036_ q=adc_rd.ch1_acc[0] }
xc_inst {_405_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_037_ q=adc_rd.ch1_acc[1] }
xc_inst {_406_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_038_ q=adc_rd.ch1_acc[2] }
xc_inst {_407_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_039_ q=adc_rd.ch1_acc[3] }
xc_inst {_408_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_040_ q=adc_rd.ch1_acc[4] }
xc_inst {_409_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_041_ q=adc_rd.ch1_acc[5] }
xc_inst {_410_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_042_ q=adc_rd.ch1_acc[6] }
xc_inst {_411_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_043_ q=adc_rd.ch1_acc[7] }
xc_inst {_412_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_044_ q=adc_rd.ch1_acc[8] }
xc_inst {_413_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_045_ q=adc_rd.ch1_acc[9] }
xc_inst {_414_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_046_ q=adc_rd.ch1_acc[10] }
xc_inst {_415_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_047_ q=adc_rd.ch1_acc[11] }
xc_inst {_416_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_048_ q=adc_rd.ch1_acc[12] }
xc_inst {_417_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_049_ q=adc_rd.ch1_acc[13] }
xc_inst {_418_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_050_ q=adc_rd.ch1_acc[14] }
xc_inst {_419_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_051_ q=adc_rd.ch1_acc[15] }
xc_inst {_420_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_052_ q=adc_rd.ch1_acc[16] }
xc_inst {_421_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_053_ q=adc_rd.ch1_acc[17] }
xc_inst {_422_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_054_ q=adc_rd.ch1_acc[18] }
xc_inst {_423_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_055_ q=adc_rd.ch1_acc[19] }
xc_inst {_424_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_056_ q=adc_rd.ch1_acc[20] }
xc_inst {_425_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_057_ q=adc_rd.ch1_acc[21] }
xc_inst {_426_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_058_ q=adc_rd.ch1_acc[22] }
xc_inst {_427_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_059_ q=adc_rd.ch1_acc[23] }
xc_inst {_428_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_060_ q=adc_rd.start_mode }
xc_inst {_429_} xci2_dffcl { clr=XC_I_rst_l clk=XC_C_clk d=_062_ q=XC_O_sclk }
xc_inst {_430_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=_061_ q=XC_O_ready_sample }
xc_inst {_431_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[0] q=adc_rd.ch1_prev[0] }
xc_inst {_432_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[1] q=adc_rd.ch1_prev[1] }
xc_inst {_433_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[2] q=adc_rd.ch1_prev[2] }
xc_inst {_434_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[3] q=adc_rd.ch1_prev[3] }
xc_inst {_435_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[4] q=adc_rd.ch1_prev[4] }
xc_inst {_436_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[5] q=adc_rd.ch1_prev[5] }
xc_inst {_437_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[6] q=adc_rd.ch1_prev[6] }
xc_inst {_438_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[7] q=adc_rd.ch1_prev[7] }
xc_inst {_439_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[8] q=adc_rd.ch1_prev[8] }
xc_inst {_440_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[9] q=adc_rd.ch1_prev[9] }
xc_inst {_441_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[10] q=adc_rd.ch1_prev[10] }
xc_inst {_442_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[11] q=adc_rd.ch1_prev[11] }
xc_inst {_443_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[12] q=adc_rd.ch1_prev[12] }
xc_inst {_444_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[13] q=adc_rd.ch1_prev[13] }
xc_inst {_445_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[14] q=adc_rd.ch1_prev[14] }
xc_inst {_446_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[15] q=adc_rd.ch1_prev[15] }
xc_inst {_447_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[16] q=adc_rd.ch1_prev[16] }
xc_inst {_448_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[17] q=adc_rd.ch1_prev[17] }
xc_inst {_449_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[18] q=adc_rd.ch1_prev[18] }
xc_inst {_450_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[19] q=adc_rd.ch1_prev[19] }
xc_inst {_451_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[20] q=adc_rd.ch1_prev[20] }
xc_inst {_452_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[21] q=adc_rd.ch1_prev[21] }
xc_inst {_453_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[22] q=adc_rd.ch1_prev[22] }
xc_inst {_454_} xci2_dffcl { clr=XC_I_rst_l clk=XC_O_sclk d=adc_rd.ch1_acc[23] q=adc_rd.ch1_prev[23] }
