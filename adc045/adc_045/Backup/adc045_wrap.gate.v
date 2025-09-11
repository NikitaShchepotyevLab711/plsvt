///////////////////////////////////////////////////////
//	File Name: adc045_wrap.gate.v
//	Data:      25/04/09 13:21:54
//	Program:   xcore
///////////////////////////////////////////////////////
//
module adc045_wrap ( cs, dout, drdy, hard_start, hard_wreg, rst_l, rst_l_adc, din, nRST, ready_sample, sclk, start, clk,  adc045_data );
  input cs, dout, drdy, hard_start, hard_wreg, rst_l, rst_l_adc, clk;
  output din, nRST, ready_sample, sclk, start;
  output  [23:0] adc045_data;
  wire GND, VDD, XC_I_cs, XC_I_dout, XC_I_drdy, XC_I_hard_start, XC_I_hard_wreg, XC_I_rst_l, XC_I_rst_l_adc, XC_O_din, 
    XC_O_ready_sample, XC_O_sclk, \adc_rd.ch1_acc[0] , \adc_rd.ch1_acc[10] , \adc_rd.ch1_acc[11] , \adc_rd.ch1_acc[12] , \adc_rd.ch1_acc[13] , \adc_rd.ch1_acc[14] , \adc_rd.ch1_acc[15] , \adc_rd.ch1_acc[16] , 
    \adc_rd.ch1_acc[17] , \adc_rd.ch1_acc[18] , \adc_rd.ch1_acc[19] , \adc_rd.ch1_acc[1] , \adc_rd.ch1_acc[20] , \adc_rd.ch1_acc[21] , \adc_rd.ch1_acc[22] , \adc_rd.ch1_acc[23] , \adc_rd.ch1_acc[2] , \adc_rd.ch1_acc[3] , 
    \adc_rd.ch1_acc[4] , \adc_rd.ch1_acc[5] , \adc_rd.ch1_acc[6] , \adc_rd.ch1_acc[7] , \adc_rd.ch1_acc[8] , \adc_rd.ch1_acc[9] , XC_C_clk, _062_, \adc_rd.work_mode , _063_, 
    _064_, \adc_rd.bit_cnt[5] , \adc_rd.bit_cnt[2] , _065_, \adc_rd.bit_cnt[0] , \adc_rd.bit_cnt[1] , _066_, _067_, \adc_rd.bit_cnt[4] , \adc_rd.bit_cnt[3] , 
    _068_, _069_, \adc_rd.start_mode , _070_, \adc_rd.wreg_mode , _071_, _072_, _073_, \adc_rd.shift_reg[0] , _074_, 
    _000_, _075_, _076_, _077_, \adc_rd.shift_reg[1] , _001_, _078_, \adc_rd.shift_reg[2] , _002_, _079_, 
    \adc_rd.shift_reg[3] , _003_, _080_, \adc_rd.shift_reg[4] , _004_, _081_, \adc_rd.shift_reg[5] , _005_, _082_, \adc_rd.shift_reg[6] , 
    _006_, _083_, \adc_rd.shift_reg[7] , _007_, _084_, \adc_rd.shift_reg[8] , _008_, _085_, \adc_rd.shift_reg[9] , _009_, 
    _086_, \adc_rd.shift_reg[10] , _010_, _087_, \adc_rd.shift_reg[11] , _011_, _088_, \adc_rd.shift_reg[12] , _012_, _089_, 
    \adc_rd.shift_reg[13] , _013_, _090_, \adc_rd.shift_reg[14] , _014_, _091_, \adc_rd.shift_reg[15] , _015_, _092_, \adc_rd.shift_reg[16] , 
    _016_, _093_, \adc_rd.shift_reg[17] , _017_, _094_, _095_, _096_, \adc_rd.shift_reg[18] , _018_, _097_, 
    _098_, _099_, \adc_rd.shift_reg[19] , _019_, _100_, \adc_rd.shift_reg[20] , _020_, _101_, \adc_rd.shift_reg[21] , _021_, 
    _102_, \adc_rd.shift_reg[22] , _022_, _103_, _104_, _105_, \adc_rd.shift_reg[23] , _023_, \adc_rd.state[1] , \adc_rd.state[2] , 
    _106_, _107_, _108_, \adc_rd.state[0] , _109_, _110_, _111_, _112_, _113_, _114_, 
    _115_, _024_, _116_, _117_, _118_, _119_, _120_, _025_, _121_, _026_, 
    _122_, _123_, _124_, _125_, _126_, _127_, _128_, _129_, _130_, _027_, 
    _131_, _132_, _028_, _133_, _029_, _030_, _134_, _031_, _135_, _136_, 
    _137_, _138_, _139_, _140_, _141_, _032_, _142_, _033_, _143_, _144_, 
    _145_, _034_, _035_, _036_, _037_, _038_, _039_, _040_, _041_, _042_, 
    _043_, _044_, _045_, _046_, _047_, _048_, _049_, _050_, _051_, _052_, 
    _053_, _054_, _055_, _056_, _057_, _058_, _059_, _060_, \adc_rd.ch1_prev[15] , _146_, 
    \adc_rd.ch1_prev[22] , _147_, \adc_rd.ch1_prev[2] , _148_, \adc_rd.ch1_prev[0] , _149_, \adc_rd.ch1_prev[14] , _150_, \adc_rd.ch1_prev[13] , _151_, 
    \adc_rd.ch1_prev[5] , _152_, \adc_rd.ch1_prev[6] , _153_, \adc_rd.ch1_prev[12] , _154_, \adc_rd.ch1_prev[11] , _155_, \adc_rd.ch1_prev[10] , _156_, 
    \adc_rd.ch1_prev[20] , _157_, \adc_rd.ch1_prev[23] , _158_, \adc_rd.ch1_prev[16] , _159_, _160_, _161_, \adc_rd.ch1_prev[7] , _162_, 
    \adc_rd.ch1_prev[3] , _163_, \adc_rd.ch1_prev[17] , _164_, _165_, _166_, \adc_rd.ch1_prev[9] , _167_, \adc_rd.ch1_prev[18] , _168_, 
    _169_, _170_, _171_, \adc_rd.ch1_prev[19] , _172_, _173_, _174_, \adc_rd.ch1_prev[21] , _175_, _176_, 
    \adc_rd.ch1_prev[8] , _177_, _178_, \adc_rd.ch1_prev[1] , _179_, \adc_rd.ch1_prev[4] , _180_, _181_, _182_, _183_, 
    _061_;
  assign GND = 1'b0;
  assign VDD = 1'b1;

  //initial $sdf_annotate("C:/Users/Admin-PC/Desktop/sny/adc1_plasvet/adc_045/adc045_wrap.STA.reports/adc045_wrap.gate.sdf");

  xci2_ib XC_BUF_cs ( .a(cs), .x(XC_I_cs));
  xci2_ib XC_BUF_dout ( .a(dout), .x(XC_I_dout));
  xci2_ib XC_BUF_drdy ( .a(drdy), .x(XC_I_drdy));
  xci2_ib XC_BUF_hard_start ( .a(hard_start), .x(XC_I_hard_start));
  xci2_ib XC_BUF_hard_wreg ( .a(hard_wreg), .x(XC_I_hard_wreg));
  xci2_ib XC_BUF_rst_l ( .a(rst_l), .x(XC_I_rst_l));
  xci2_ib XC_BUF_rst_l_adc ( .a(rst_l_adc), .x(XC_I_rst_l_adc));
  xci2_ob XC_BUF_din ( .a(XC_O_din), .x(din));
  xci2_ob XC_BUF_nRST ( .a(XC_I_rst_l_adc), .x(nRST));
  xci2_ob XC_BUF_ready_sample ( .a(XC_O_ready_sample), .x(ready_sample));
  xci2_ob XC_BUF_sclk ( .a(XC_O_sclk), .x(sclk));
  xci2_ob XC_BUF_start ( .a(XC_I_hard_start), .x(start));
  xci2_ob \XC_BUF_adc045_data[0]  ( .a(\adc_rd.ch1_acc[0] ), .x(adc045_data[0]));
  xci2_ob \XC_BUF_adc045_data[10]  ( .a(\adc_rd.ch1_acc[10] ), .x(adc045_data[10]));
  xci2_ob \XC_BUF_adc045_data[11]  ( .a(\adc_rd.ch1_acc[11] ), .x(adc045_data[11]));
  xci2_ob \XC_BUF_adc045_data[12]  ( .a(\adc_rd.ch1_acc[12] ), .x(adc045_data[12]));
  xci2_ob \XC_BUF_adc045_data[13]  ( .a(\adc_rd.ch1_acc[13] ), .x(adc045_data[13]));
  xci2_ob \XC_BUF_adc045_data[14]  ( .a(\adc_rd.ch1_acc[14] ), .x(adc045_data[14]));
  xci2_ob \XC_BUF_adc045_data[15]  ( .a(\adc_rd.ch1_acc[15] ), .x(adc045_data[15]));
  xci2_ob \XC_BUF_adc045_data[16]  ( .a(\adc_rd.ch1_acc[16] ), .x(adc045_data[16]));
  xci2_ob \XC_BUF_adc045_data[17]  ( .a(\adc_rd.ch1_acc[17] ), .x(adc045_data[17]));
  xci2_ob \XC_BUF_adc045_data[18]  ( .a(\adc_rd.ch1_acc[18] ), .x(adc045_data[18]));
  xci2_ob \XC_BUF_adc045_data[19]  ( .a(\adc_rd.ch1_acc[19] ), .x(adc045_data[19]));
  xci2_ob \XC_BUF_adc045_data[1]  ( .a(\adc_rd.ch1_acc[1] ), .x(adc045_data[1]));
  xci2_ob \XC_BUF_adc045_data[20]  ( .a(\adc_rd.ch1_acc[20] ), .x(adc045_data[20]));
  xci2_ob \XC_BUF_adc045_data[21]  ( .a(\adc_rd.ch1_acc[21] ), .x(adc045_data[21]));
  xci2_ob \XC_BUF_adc045_data[22]  ( .a(\adc_rd.ch1_acc[22] ), .x(adc045_data[22]));
  xci2_ob \XC_BUF_adc045_data[23]  ( .a(\adc_rd.ch1_acc[23] ), .x(adc045_data[23]));
  xci2_ob \XC_BUF_adc045_data[2]  ( .a(\adc_rd.ch1_acc[2] ), .x(adc045_data[2]));
  xci2_ob \XC_BUF_adc045_data[3]  ( .a(\adc_rd.ch1_acc[3] ), .x(adc045_data[3]));
  xci2_ob \XC_BUF_adc045_data[4]  ( .a(\adc_rd.ch1_acc[4] ), .x(adc045_data[4]));
  xci2_ob \XC_BUF_adc045_data[5]  ( .a(\adc_rd.ch1_acc[5] ), .x(adc045_data[5]));
  xci2_ob \XC_BUF_adc045_data[6]  ( .a(\adc_rd.ch1_acc[6] ), .x(adc045_data[6]));
  xci2_ob \XC_BUF_adc045_data[7]  ( .a(\adc_rd.ch1_acc[7] ), .x(adc045_data[7]));
  xci2_ob \XC_BUF_adc045_data[8]  ( .a(\adc_rd.ch1_acc[8] ), .x(adc045_data[8]));
  xci2_ob \XC_BUF_adc045_data[9]  ( .a(\adc_rd.ch1_acc[9] ), .x(adc045_data[9]));
  xci2_ib_gclk XC_BUF_clk ( .a(clk), .x(XC_C_clk));
  xci2_inv _184_ ( .a(XC_O_sclk), .y(_062_));
  xci2_and2ft _185_ ( .a(XC_I_drdy), .b(\adc_rd.work_mode ), .y(_063_));
  xci2_and3ftt _186_ ( .a(XC_I_drdy), .b(XC_I_dout), .c(\adc_rd.work_mode ), .y(_064_));
  xci2_nor2 _187_ ( .a(\adc_rd.bit_cnt[2] ), .b(\adc_rd.bit_cnt[5] ), .y(_065_));
  xci2_and2ft _188_ ( .a(\adc_rd.bit_cnt[1] ), .b(\adc_rd.bit_cnt[0] ), .y(_066_));
  xci2_and3fft _189_ ( .a(\adc_rd.bit_cnt[1] ), .b(\adc_rd.bit_cnt[2] ), .c(\adc_rd.bit_cnt[0] ), .y(_067_));
  xci2_or3 _190_ ( .a(\adc_rd.bit_cnt[3] ), .b(\adc_rd.bit_cnt[4] ), .c(\adc_rd.bit_cnt[5] ), .y(_068_));
  xci2_nor2ft _191_ ( .a(_067_), .b(_068_), .y(_069_));
  xci2_or3fft _192_ ( .a(\adc_rd.start_mode ), .b(_067_), .c(_068_), .y(_070_));
  xci2_or2 _193_ ( .a(\adc_rd.wreg_mode ), .b(\adc_rd.start_mode ), .y(_071_));
  xci2_nor3 _194_ ( .a(\adc_rd.wreg_mode ), .b(\adc_rd.work_mode ), .c(\adc_rd.start_mode ), .y(_072_));
  xci2_oa21ttf _195_ ( .a(\adc_rd.wreg_mode ), .b(\adc_rd.start_mode ), .c(\adc_rd.work_mode ), .y(_073_));
  xci2_aoi21 _196_ ( .a(\adc_rd.shift_reg[0] ), .b(_072_), .c(_064_), .y(_074_));
  xci2_oai21 _197_ ( .a(\adc_rd.work_mode ), .b(_070_), .c(_074_), .y(_000_));
  xci2_ao21ftt _198_ ( .a(_069_), .b(_071_), .c(\adc_rd.work_mode ), .y(_075_));
  xci2_nand2 _199_ ( .a(\adc_rd.work_mode ), .b(XC_I_drdy), .y(_076_));
  xci2_and3 _200_ ( .a(\adc_rd.shift_reg[0] ), .b(_075_), .c(_076_), .y(_077_));
  xci2_ao21 _201_ ( .a(\adc_rd.shift_reg[1] ), .b(_072_), .c(_077_), .y(_001_));
  xci2_and3 _202_ ( .a(\adc_rd.shift_reg[1] ), .b(_075_), .c(_076_), .y(_078_));
  xci2_ao21 _203_ ( .a(\adc_rd.shift_reg[2] ), .b(_072_), .c(_078_), .y(_002_));
  xci2_and3 _204_ ( .a(\adc_rd.shift_reg[2] ), .b(_075_), .c(_076_), .y(_079_));
  xci2_ao21 _205_ ( .a(\adc_rd.shift_reg[3] ), .b(_072_), .c(_079_), .y(_003_));
  xci2_and3 _206_ ( .a(\adc_rd.shift_reg[3] ), .b(_075_), .c(_076_), .y(_080_));
  xci2_ao21 _207_ ( .a(\adc_rd.shift_reg[4] ), .b(_072_), .c(_080_), .y(_004_));
  xci2_and3 _208_ ( .a(\adc_rd.shift_reg[4] ), .b(_075_), .c(_076_), .y(_081_));
  xci2_ao21 _209_ ( .a(\adc_rd.shift_reg[5] ), .b(_072_), .c(_081_), .y(_005_));
  xci2_and3 _210_ ( .a(\adc_rd.shift_reg[5] ), .b(_075_), .c(_076_), .y(_082_));
  xci2_ao21 _211_ ( .a(\adc_rd.shift_reg[6] ), .b(_072_), .c(_082_), .y(_006_));
  xci2_and3 _212_ ( .a(\adc_rd.shift_reg[6] ), .b(_075_), .c(_076_), .y(_083_));
  xci2_ao21 _213_ ( .a(\adc_rd.shift_reg[7] ), .b(_072_), .c(_083_), .y(_007_));
  xci2_and3 _214_ ( .a(\adc_rd.shift_reg[7] ), .b(_075_), .c(_076_), .y(_084_));
  xci2_ao21 _215_ ( .a(\adc_rd.shift_reg[8] ), .b(_072_), .c(_084_), .y(_008_));
  xci2_and3 _216_ ( .a(\adc_rd.shift_reg[8] ), .b(_075_), .c(_076_), .y(_085_));
  xci2_ao21 _217_ ( .a(\adc_rd.shift_reg[9] ), .b(_072_), .c(_085_), .y(_009_));
  xci2_and3 _218_ ( .a(\adc_rd.shift_reg[9] ), .b(_075_), .c(_076_), .y(_086_));
  xci2_ao21 _219_ ( .a(\adc_rd.shift_reg[10] ), .b(_072_), .c(_086_), .y(_010_));
  xci2_and3 _220_ ( .a(\adc_rd.shift_reg[10] ), .b(_075_), .c(_076_), .y(_087_));
  xci2_ao21 _221_ ( .a(\adc_rd.shift_reg[11] ), .b(_072_), .c(_087_), .y(_011_));
  xci2_and3 _222_ ( .a(\adc_rd.shift_reg[11] ), .b(_075_), .c(_076_), .y(_088_));
  xci2_ao21 _223_ ( .a(\adc_rd.shift_reg[12] ), .b(_072_), .c(_088_), .y(_012_));
  xci2_and3 _224_ ( .a(\adc_rd.shift_reg[12] ), .b(_075_), .c(_076_), .y(_089_));
  xci2_ao21 _225_ ( .a(\adc_rd.shift_reg[13] ), .b(_072_), .c(_089_), .y(_013_));
  xci2_and3 _226_ ( .a(\adc_rd.shift_reg[13] ), .b(_075_), .c(_076_), .y(_090_));
  xci2_ao21 _227_ ( .a(\adc_rd.shift_reg[14] ), .b(_072_), .c(_090_), .y(_014_));
  xci2_and3 _228_ ( .a(\adc_rd.shift_reg[14] ), .b(_075_), .c(_076_), .y(_091_));
  xci2_ao21 _229_ ( .a(\adc_rd.shift_reg[15] ), .b(_072_), .c(_091_), .y(_015_));
  xci2_and3 _230_ ( .a(\adc_rd.shift_reg[15] ), .b(_075_), .c(_076_), .y(_092_));
  xci2_ao21 _231_ ( .a(\adc_rd.shift_reg[16] ), .b(_072_), .c(_092_), .y(_016_));
  xci2_and3 _232_ ( .a(\adc_rd.shift_reg[16] ), .b(_075_), .c(_076_), .y(_093_));
  xci2_ao21 _233_ ( .a(\adc_rd.shift_reg[17] ), .b(_072_), .c(_093_), .y(_017_));
  xci2_ao21 _234_ ( .a(_070_), .b(_073_), .c(_063_), .y(_094_));
  xci2_nand3ftt _235_ ( .a(\adc_rd.start_mode ), .b(_069_), .c(_073_), .y(_095_));
  xci2_ao21ttf _236_ ( .a(\adc_rd.shift_reg[17] ), .b(_094_), .c(_095_), .y(_096_));
  xci2_ao21 _237_ ( .a(\adc_rd.shift_reg[18] ), .b(_072_), .c(_096_), .y(_018_));
  xci2_and3ftt _238_ ( .a(XC_I_drdy), .b(\adc_rd.work_mode ), .c(\adc_rd.shift_reg[18] ), .y(_097_));
  xci2_mux2h _239_ ( .a(\adc_rd.shift_reg[18] ), .b(\adc_rd.start_mode ), .s(_069_), .y(_098_));
  xci2_ao21 _240_ ( .a(_073_), .b(_098_), .c(_097_), .y(_099_));
  xci2_ao21 _241_ ( .a(\adc_rd.shift_reg[19] ), .b(_072_), .c(_099_), .y(_019_));
  xci2_ao21ttf _242_ ( .a(\adc_rd.shift_reg[19] ), .b(_094_), .c(_095_), .y(_100_));
  xci2_ao21 _243_ ( .a(\adc_rd.shift_reg[20] ), .b(_072_), .c(_100_), .y(_020_));
  xci2_and3 _244_ ( .a(\adc_rd.shift_reg[20] ), .b(_075_), .c(_076_), .y(_101_));
  xci2_ao21 _245_ ( .a(\adc_rd.shift_reg[21] ), .b(_072_), .c(_101_), .y(_021_));
  xci2_and3 _246_ ( .a(\adc_rd.shift_reg[21] ), .b(_075_), .c(_076_), .y(_102_));
  xci2_ao21 _247_ ( .a(\adc_rd.shift_reg[22] ), .b(_072_), .c(_102_), .y(_022_));
  xci2_and3ftt _248_ ( .a(XC_I_drdy), .b(\adc_rd.work_mode ), .c(\adc_rd.shift_reg[22] ), .y(_103_));
  xci2_mux2h _249_ ( .a(\adc_rd.shift_reg[22] ), .b(\adc_rd.start_mode ), .s(_069_), .y(_104_));
  xci2_ao21 _250_ ( .a(_073_), .b(_104_), .c(_103_), .y(_105_));
  xci2_ao21 _251_ ( .a(\adc_rd.shift_reg[23] ), .b(_072_), .c(_105_), .y(_023_));
  xci2_and3fft _252_ ( .a(\adc_rd.state[2] ), .b(XC_I_cs), .c(\adc_rd.state[1] ), .y(_106_));
  xci2_nand3fft _253_ ( .a(\adc_rd.state[2] ), .b(XC_I_cs), .c(\adc_rd.state[1] ), .y(_107_));
  xci2_nor2 _254_ ( .a(\adc_rd.state[1] ), .b(XC_I_cs), .y(_108_));
  xci2_nand3ftt _255_ ( .a(\adc_rd.state[0] ), .b(\adc_rd.state[2] ), .c(_108_), .y(_109_));
  xci2_and2ft _256_ ( .a(\adc_rd.bit_cnt[0] ), .b(\adc_rd.bit_cnt[1] ), .y(_110_));
  xci2_and2 _257_ ( .a(\adc_rd.bit_cnt[3] ), .b(\adc_rd.bit_cnt[4] ), .y(_111_));
  xci2_nand3 _258_ ( .a(_065_), .b(_110_), .c(_111_), .y(_112_));
  xci2_nand2ft _259_ ( .a(_109_), .b(_112_), .y(_113_));
  xci2_ao21ftf _260_ ( .a(_109_), .b(_112_), .c(_107_), .y(_114_));
  xci2_and2 _261_ ( .a(_107_), .b(_109_), .y(_115_));
  xci2_mux2h _262_ ( .a(_114_), .b(_115_), .s(\adc_rd.bit_cnt[0] ), .y(_024_));
  xci2_xnor2 _263_ ( .a(\adc_rd.bit_cnt[0] ), .b(\adc_rd.bit_cnt[1] ), .y(_116_));
  xci2_and3 _264_ ( .a(_065_), .b(_066_), .c(_111_), .y(_117_));
  xci2_nand3fft _265_ ( .a(_117_), .b(_107_), .c(\adc_rd.state[0] ), .y(_118_));
  xci2_ao21 _266_ ( .a(\adc_rd.state[0] ), .b(_117_), .c(_107_), .y(_119_));
  xci2_aoi21 _267_ ( .a(_113_), .b(_119_), .c(_116_), .y(_120_));
  xci2_ao21 _268_ ( .a(\adc_rd.bit_cnt[1] ), .b(_115_), .c(_120_), .y(_025_));
  xci2_nand3ftt _269_ ( .a(_115_), .b(\adc_rd.bit_cnt[1] ), .c(\adc_rd.bit_cnt[0] ), .y(_121_));
  xci2_xnor2 _270_ ( .a(\adc_rd.bit_cnt[2] ), .b(_121_), .y(_026_));
  xci2_and3 _271_ ( .a(\adc_rd.bit_cnt[3] ), .b(_107_), .c(_109_), .y(_122_));
  xci2_and3 _272_ ( .a(\adc_rd.bit_cnt[0] ), .b(\adc_rd.bit_cnt[1] ), .c(\adc_rd.bit_cnt[2] ), .y(_123_));
  xci2_and3fft _273_ ( .a(\adc_rd.bit_cnt[3] ), .b(\adc_rd.bit_cnt[5] ), .c(\adc_rd.bit_cnt[4] ), .y(_124_));
  xci2_nand2 _274_ ( .a(_123_), .b(_124_), .y(_125_));
  xci2_nand3fft _275_ ( .a(\adc_rd.state[0] ), .b(_107_), .c(_125_), .y(_126_));
  xci2_nand2 _276_ ( .a(_118_), .b(_126_), .y(_127_));
  xci2_nand3 _277_ ( .a(_113_), .b(_118_), .c(_126_), .y(_128_));
  xci2_and2 _278_ ( .a(\adc_rd.bit_cnt[3] ), .b(_123_), .y(_129_));
  xci2_xnor2ft _279_ ( .a(\adc_rd.bit_cnt[3] ), .b(_123_), .y(_130_));
  xci2_ao21 _280_ ( .a(_128_), .b(_130_), .c(_122_), .y(_027_));
  xci2_and3 _281_ ( .a(\adc_rd.bit_cnt[4] ), .b(_107_), .c(_109_), .y(_131_));
  xci2_xnor2ft _282_ ( .a(\adc_rd.bit_cnt[4] ), .b(_129_), .y(_132_));
  xci2_ao21 _283_ ( .a(_128_), .b(_132_), .c(_131_), .y(_028_));
  xci2_nand3ftt _284_ ( .a(_115_), .b(_129_), .c(\adc_rd.bit_cnt[4] ), .y(_133_));
  xci2_xnor2 _285_ ( .a(\adc_rd.bit_cnt[5] ), .b(_133_), .y(_029_));
  xci2_ao21 _286_ ( .a(\adc_rd.wreg_mode ), .b(_107_), .c(_127_), .y(_030_));
  xci2_nand3ftt _287_ ( .a(_069_), .b(_071_), .c(XC_I_rst_l), .y(_134_));
  xci2_mux2h _288_ ( .a(\adc_rd.shift_reg[23] ), .b(XC_O_din), .s(_134_), .y(_031_));
  xci2_and3fft _289_ ( .a(\adc_rd.state[1] ), .b(XC_I_cs), .c(\adc_rd.state[0] ), .y(_135_));
  xci2_and2 _290_ ( .a(\adc_rd.state[2] ), .b(_135_), .y(_136_));
  xci2_and3fft _291_ ( .a(\adc_rd.state[2] ), .b(XC_I_hard_wreg), .c(_135_), .y(_137_));
  xci2_nand3fft _292_ ( .a(\adc_rd.state[0] ), .b(\adc_rd.state[2] ), .c(_108_), .y(_138_));
  xci2_and3fft _293_ ( .a(_136_), .b(_137_), .c(_138_), .y(_139_));
  xci2_nand3fft _294_ ( .a(_125_), .b(\adc_rd.state[0] ), .c(_106_), .y(_140_));
  xci2_oa21 _295_ ( .a(_109_), .b(_112_), .c(_118_), .y(_141_));
  xci2_nand3 _296_ ( .a(_139_), .b(_140_), .c(_141_), .y(_032_));
  xci2_and3ftt _297_ ( .a(\adc_rd.state[2] ), .b(XC_I_hard_wreg), .c(_135_), .y(_142_));
  xci2_nand3fft _298_ ( .a(_142_), .b(_127_), .c(_138_), .y(_033_));
  xci2_and3 _299_ ( .a(\adc_rd.state[2] ), .b(XC_I_rst_l_adc), .c(_135_), .y(_143_));
  xci2_nand3 _300_ ( .a(\adc_rd.state[0] ), .b(_106_), .c(_117_), .y(_144_));
  xci2_aoi21 _301_ ( .a(XC_I_hard_start), .b(_137_), .c(_143_), .y(_145_));
  xci2_nand3 _302_ ( .a(_109_), .b(_144_), .c(_145_), .y(_034_));
  xci2_mux2h _303_ ( .a(\adc_rd.work_mode ), .b(XC_I_rst_l_adc), .s(_136_), .y(_035_));
  xci2_mux2h _304_ ( .a(\adc_rd.shift_reg[0] ), .b(\adc_rd.ch1_acc[0] ), .s(_076_), .y(_036_));
  xci2_mux2h _305_ ( .a(\adc_rd.shift_reg[1] ), .b(\adc_rd.ch1_acc[1] ), .s(_076_), .y(_037_));
  xci2_mux2h _306_ ( .a(\adc_rd.shift_reg[2] ), .b(\adc_rd.ch1_acc[2] ), .s(_076_), .y(_038_));
  xci2_mux2h _307_ ( .a(\adc_rd.shift_reg[3] ), .b(\adc_rd.ch1_acc[3] ), .s(_076_), .y(_039_));
  xci2_mux2h _308_ ( .a(\adc_rd.shift_reg[4] ), .b(\adc_rd.ch1_acc[4] ), .s(_076_), .y(_040_));
  xci2_mux2h _309_ ( .a(\adc_rd.shift_reg[5] ), .b(\adc_rd.ch1_acc[5] ), .s(_076_), .y(_041_));
  xci2_mux2h _310_ ( .a(\adc_rd.shift_reg[6] ), .b(\adc_rd.ch1_acc[6] ), .s(_076_), .y(_042_));
  xci2_mux2h _311_ ( .a(\adc_rd.shift_reg[7] ), .b(\adc_rd.ch1_acc[7] ), .s(_076_), .y(_043_));
  xci2_mux2h _312_ ( .a(\adc_rd.shift_reg[8] ), .b(\adc_rd.ch1_acc[8] ), .s(_076_), .y(_044_));
  xci2_mux2h _313_ ( .a(\adc_rd.shift_reg[9] ), .b(\adc_rd.ch1_acc[9] ), .s(_076_), .y(_045_));
  xci2_mux2h _314_ ( .a(\adc_rd.shift_reg[10] ), .b(\adc_rd.ch1_acc[10] ), .s(_076_), .y(_046_));
  xci2_mux2h _315_ ( .a(\adc_rd.shift_reg[11] ), .b(\adc_rd.ch1_acc[11] ), .s(_076_), .y(_047_));
  xci2_mux2h _316_ ( .a(\adc_rd.shift_reg[12] ), .b(\adc_rd.ch1_acc[12] ), .s(_076_), .y(_048_));
  xci2_mux2h _317_ ( .a(\adc_rd.shift_reg[13] ), .b(\adc_rd.ch1_acc[13] ), .s(_076_), .y(_049_));
  xci2_mux2h _318_ ( .a(\adc_rd.shift_reg[14] ), .b(\adc_rd.ch1_acc[14] ), .s(_076_), .y(_050_));
  xci2_mux2h _319_ ( .a(\adc_rd.shift_reg[15] ), .b(\adc_rd.ch1_acc[15] ), .s(_076_), .y(_051_));
  xci2_mux2h _320_ ( .a(\adc_rd.shift_reg[16] ), .b(\adc_rd.ch1_acc[16] ), .s(_076_), .y(_052_));
  xci2_mux2h _321_ ( .a(\adc_rd.shift_reg[17] ), .b(\adc_rd.ch1_acc[17] ), .s(_076_), .y(_053_));
  xci2_mux2h _322_ ( .a(\adc_rd.shift_reg[18] ), .b(\adc_rd.ch1_acc[18] ), .s(_076_), .y(_054_));
  xci2_mux2h _323_ ( .a(\adc_rd.shift_reg[19] ), .b(\adc_rd.ch1_acc[19] ), .s(_076_), .y(_055_));
  xci2_mux2h _324_ ( .a(\adc_rd.shift_reg[20] ), .b(\adc_rd.ch1_acc[20] ), .s(_076_), .y(_056_));
  xci2_mux2h _325_ ( .a(\adc_rd.shift_reg[21] ), .b(\adc_rd.ch1_acc[21] ), .s(_076_), .y(_057_));
  xci2_mux2h _326_ ( .a(\adc_rd.shift_reg[22] ), .b(\adc_rd.ch1_acc[22] ), .s(_076_), .y(_058_));
  xci2_mux2h _327_ ( .a(\adc_rd.shift_reg[23] ), .b(\adc_rd.ch1_acc[23] ), .s(_076_), .y(_059_));
  xci2_mux2h _328_ ( .a(_112_), .b(\adc_rd.start_mode ), .s(_109_), .y(_060_));
  xci2_xnor2 _329_ ( .a(\adc_rd.ch1_acc[15] ), .b(\adc_rd.ch1_prev[15] ), .y(_146_));
  xci2_xnor2 _330_ ( .a(\adc_rd.ch1_acc[22] ), .b(\adc_rd.ch1_prev[22] ), .y(_147_));
  xci2_xnor2 _331_ ( .a(\adc_rd.ch1_acc[2] ), .b(\adc_rd.ch1_prev[2] ), .y(_148_));
  xci2_xnor2 _332_ ( .a(\adc_rd.ch1_acc[0] ), .b(\adc_rd.ch1_prev[0] ), .y(_149_));
  xci2_xnor2 _333_ ( .a(\adc_rd.ch1_acc[14] ), .b(\adc_rd.ch1_prev[14] ), .y(_150_));
  xci2_xnor2 _334_ ( .a(\adc_rd.ch1_acc[13] ), .b(\adc_rd.ch1_prev[13] ), .y(_151_));
  xci2_xnor2 _335_ ( .a(\adc_rd.ch1_acc[5] ), .b(\adc_rd.ch1_prev[5] ), .y(_152_));
  xci2_xnor2 _336_ ( .a(\adc_rd.ch1_acc[6] ), .b(\adc_rd.ch1_prev[6] ), .y(_153_));
  xci2_xnor2 _337_ ( .a(\adc_rd.ch1_acc[12] ), .b(\adc_rd.ch1_prev[12] ), .y(_154_));
  xci2_xnor2 _338_ ( .a(\adc_rd.ch1_acc[11] ), .b(\adc_rd.ch1_prev[11] ), .y(_155_));
  xci2_xnor2 _339_ ( .a(\adc_rd.ch1_acc[10] ), .b(\adc_rd.ch1_prev[10] ), .y(_156_));
  xci2_xnor2 _340_ ( .a(\adc_rd.ch1_acc[20] ), .b(\adc_rd.ch1_prev[20] ), .y(_157_));
  xci2_xnor2 _341_ ( .a(\adc_rd.ch1_acc[23] ), .b(\adc_rd.ch1_prev[23] ), .y(_158_));
  xci2_xnor2 _342_ ( .a(\adc_rd.ch1_acc[16] ), .b(\adc_rd.ch1_prev[16] ), .y(_159_));
  xci2_and2 _343_ ( .a(_152_), .b(_159_), .y(_160_));
  xci2_and3 _344_ ( .a(_151_), .b(_154_), .c(_160_), .y(_161_));
  xci2_xnor2 _345_ ( .a(\adc_rd.ch1_acc[7] ), .b(\adc_rd.ch1_prev[7] ), .y(_162_));
  xci2_xnor2 _346_ ( .a(\adc_rd.ch1_acc[3] ), .b(\adc_rd.ch1_prev[3] ), .y(_163_));
  xci2_xnor2 _347_ ( .a(\adc_rd.ch1_acc[17] ), .b(\adc_rd.ch1_prev[17] ), .y(_164_));
  xci2_and2 _348_ ( .a(_163_), .b(_164_), .y(_165_));
  xci2_and3 _349_ ( .a(_153_), .b(_162_), .c(_165_), .y(_166_));
  xci2_xnor2 _350_ ( .a(\adc_rd.ch1_acc[9] ), .b(\adc_rd.ch1_prev[9] ), .y(_167_));
  xci2_xnor2 _351_ ( .a(\adc_rd.ch1_acc[18] ), .b(\adc_rd.ch1_prev[18] ), .y(_168_));
  xci2_and3 _352_ ( .a(_150_), .b(_155_), .c(_168_), .y(_169_));
  xci2_and2 _353_ ( .a(_167_), .b(_169_), .y(_170_));
  xci2_and3 _354_ ( .a(_161_), .b(_166_), .c(_170_), .y(_171_));
  xci2_xnor2 _355_ ( .a(\adc_rd.ch1_acc[19] ), .b(\adc_rd.ch1_prev[19] ), .y(_172_));
  xci2_and2 _356_ ( .a(_158_), .b(_172_), .y(_173_));
  xci2_and3 _357_ ( .a(_146_), .b(_148_), .c(_173_), .y(_174_));
  xci2_xnor2 _358_ ( .a(\adc_rd.ch1_acc[21] ), .b(\adc_rd.ch1_prev[21] ), .y(_175_));
  xci2_and2 _359_ ( .a(_149_), .b(_175_), .y(_176_));
  xci2_xnor2 _360_ ( .a(\adc_rd.ch1_acc[8] ), .b(\adc_rd.ch1_prev[8] ), .y(_177_));
  xci2_and3 _361_ ( .a(_157_), .b(_176_), .c(_177_), .y(_178_));
  xci2_xnor2 _362_ ( .a(\adc_rd.ch1_acc[1] ), .b(\adc_rd.ch1_prev[1] ), .y(_179_));
  xci2_xnor2 _363_ ( .a(\adc_rd.ch1_acc[4] ), .b(\adc_rd.ch1_prev[4] ), .y(_180_));
  xci2_and3 _364_ ( .a(_147_), .b(_179_), .c(_180_), .y(_181_));
  xci2_and2 _365_ ( .a(_156_), .b(_181_), .y(_182_));
  xci2_and3 _366_ ( .a(_174_), .b(_178_), .c(_182_), .y(_183_));
  xci2_nand2 _367_ ( .a(_171_), .b(_183_), .y(_061_));
  xci2_dffcl _368_ ( .d(_000_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[0] ));
  xci2_dffcl _369_ ( .d(_001_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[1] ));
  xci2_dffcl _370_ ( .d(_002_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[2] ));
  xci2_dffcl _371_ ( .d(_003_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[3] ));
  xci2_dffcl _372_ ( .d(_004_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[4] ));
  xci2_dffcl _373_ ( .d(_005_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[5] ));
  xci2_dffcl _374_ ( .d(_006_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[6] ));
  xci2_dffcl _375_ ( .d(_007_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[7] ));
  xci2_dffcl _376_ ( .d(_008_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[8] ));
  xci2_dffcl _377_ ( .d(_009_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[9] ));
  xci2_dffcl _378_ ( .d(_010_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[10] ));
  xci2_dffcl _379_ ( .d(_011_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[11] ));
  xci2_dffcl _380_ ( .d(_012_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[12] ));
  xci2_dffcl _381_ ( .d(_013_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[13] ));
  xci2_dffcl _382_ ( .d(_014_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[14] ));
  xci2_dffcl _383_ ( .d(_015_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[15] ));
  xci2_dffcl _384_ ( .d(_016_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[16] ));
  xci2_dffcl _385_ ( .d(_017_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[17] ));
  xci2_dffcl _386_ ( .d(_018_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[18] ));
  xci2_dffcl _387_ ( .d(_019_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[19] ));
  xci2_dffcl _388_ ( .d(_020_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[20] ));
  xci2_dffcl _389_ ( .d(_021_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[21] ));
  xci2_dffcl _390_ ( .d(_022_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[22] ));
  xci2_dffcl _391_ ( .d(_023_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.shift_reg[23] ));
  xci2_dffcl _392_ ( .d(_024_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.bit_cnt[0] ));
  xci2_dffcl _393_ ( .d(_025_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.bit_cnt[1] ));
  xci2_dffcl _394_ ( .d(_026_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.bit_cnt[2] ));
  xci2_dffcl _395_ ( .d(_027_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.bit_cnt[3] ));
  xci2_dffcl _396_ ( .d(_028_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.bit_cnt[4] ));
  xci2_dffcl _397_ ( .d(_029_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.bit_cnt[5] ));
  xci2_dffcl _398_ ( .d(_030_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.wreg_mode ));
  xci2_dff _399_ ( .d(_031_), .clk(XC_O_sclk), .q(XC_O_din));
  xci2_dffcl _400_ ( .d(_032_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.state[0] ));
  xci2_dffcl _401_ ( .d(_033_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.state[1] ));
  xci2_dffcl _402_ ( .d(_034_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.state[2] ));
  xci2_dffcl _403_ ( .d(_035_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.work_mode ));
  xci2_dffcl _404_ ( .d(_036_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[0] ));
  xci2_dffcl _405_ ( .d(_037_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[1] ));
  xci2_dffcl _406_ ( .d(_038_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[2] ));
  xci2_dffcl _407_ ( .d(_039_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[3] ));
  xci2_dffcl _408_ ( .d(_040_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[4] ));
  xci2_dffcl _409_ ( .d(_041_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[5] ));
  xci2_dffcl _410_ ( .d(_042_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[6] ));
  xci2_dffcl _411_ ( .d(_043_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[7] ));
  xci2_dffcl _412_ ( .d(_044_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[8] ));
  xci2_dffcl _413_ ( .d(_045_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[9] ));
  xci2_dffcl _414_ ( .d(_046_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[10] ));
  xci2_dffcl _415_ ( .d(_047_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[11] ));
  xci2_dffcl _416_ ( .d(_048_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[12] ));
  xci2_dffcl _417_ ( .d(_049_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[13] ));
  xci2_dffcl _418_ ( .d(_050_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[14] ));
  xci2_dffcl _419_ ( .d(_051_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[15] ));
  xci2_dffcl _420_ ( .d(_052_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[16] ));
  xci2_dffcl _421_ ( .d(_053_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[17] ));
  xci2_dffcl _422_ ( .d(_054_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[18] ));
  xci2_dffcl _423_ ( .d(_055_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[19] ));
  xci2_dffcl _424_ ( .d(_056_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[20] ));
  xci2_dffcl _425_ ( .d(_057_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[21] ));
  xci2_dffcl _426_ ( .d(_058_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[22] ));
  xci2_dffcl _427_ ( .d(_059_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_acc[23] ));
  xci2_dffcl _428_ ( .d(_060_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.start_mode ));
  xci2_dffcl _429_ ( .d(_062_), .clk(XC_C_clk), .clr(XC_I_rst_l), .q(XC_O_sclk));
  xci2_dffcl _430_ ( .d(_061_), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(XC_O_ready_sample));
  xci2_dffcl _431_ ( .d(\adc_rd.ch1_acc[0] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[0] ));
  xci2_dffcl _432_ ( .d(\adc_rd.ch1_acc[1] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[1] ));
  xci2_dffcl _433_ ( .d(\adc_rd.ch1_acc[2] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[2] ));
  xci2_dffcl _434_ ( .d(\adc_rd.ch1_acc[3] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[3] ));
  xci2_dffcl _435_ ( .d(\adc_rd.ch1_acc[4] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[4] ));
  xci2_dffcl _436_ ( .d(\adc_rd.ch1_acc[5] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[5] ));
  xci2_dffcl _437_ ( .d(\adc_rd.ch1_acc[6] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[6] ));
  xci2_dffcl _438_ ( .d(\adc_rd.ch1_acc[7] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[7] ));
  xci2_dffcl _439_ ( .d(\adc_rd.ch1_acc[8] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[8] ));
  xci2_dffcl _440_ ( .d(\adc_rd.ch1_acc[9] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[9] ));
  xci2_dffcl _441_ ( .d(\adc_rd.ch1_acc[10] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[10] ));
  xci2_dffcl _442_ ( .d(\adc_rd.ch1_acc[11] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[11] ));
  xci2_dffcl _443_ ( .d(\adc_rd.ch1_acc[12] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[12] ));
  xci2_dffcl _444_ ( .d(\adc_rd.ch1_acc[13] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[13] ));
  xci2_dffcl _445_ ( .d(\adc_rd.ch1_acc[14] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[14] ));
  xci2_dffcl _446_ ( .d(\adc_rd.ch1_acc[15] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[15] ));
  xci2_dffcl _447_ ( .d(\adc_rd.ch1_acc[16] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[16] ));
  xci2_dffcl _448_ ( .d(\adc_rd.ch1_acc[17] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[17] ));
  xci2_dffcl _449_ ( .d(\adc_rd.ch1_acc[18] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[18] ));
  xci2_dffcl _450_ ( .d(\adc_rd.ch1_acc[19] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[19] ));
  xci2_dffcl _451_ ( .d(\adc_rd.ch1_acc[20] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[20] ));
  xci2_dffcl _452_ ( .d(\adc_rd.ch1_acc[21] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[21] ));
  xci2_dffcl _453_ ( .d(\adc_rd.ch1_acc[22] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[22] ));
  xci2_dffcl _454_ ( .d(\adc_rd.ch1_acc[23] ), .clk(XC_O_sclk), .clr(XC_I_rst_l), .q(\adc_rd.ch1_prev[23] ));
endmodule
///////////////////////////////////////////////////////
