/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Sun Nov 28 21:28:00 2021
/////////////////////////////////////////////////////////////


module FloorAndWrap_7 ( din, dout );
  input [11:0] din;
  output [7:0] dout;


  DEL025D1BWP7T35P140 U1 ( .I(din[3]), .Z(dout[0]) );
  DEL025D1BWP7T35P140 U2 ( .I(din[4]), .Z(dout[1]) );
  DEL025D1BWP7T35P140 U3 ( .I(din[5]), .Z(dout[2]) );
  DEL025D1BWP7T35P140 U4 ( .I(din[6]), .Z(dout[3]) );
  DEL025D1BWP7T35P140 U5 ( .I(din[7]), .Z(dout[4]) );
  DEL025D1BWP7T35P140 U6 ( .I(din[8]), .Z(dout[5]) );
  DEL025D1BWP7T35P140 U7 ( .I(din[9]), .Z(dout[6]) );
  DEL025D1BWP7T35P140 U8 ( .I(din[10]), .Z(dout[7]) );
endmodule


module FloorAndWrap_6 ( din, dout );
  input [11:0] din;
  output [7:0] dout;


  DEL025D1BWP7T35P140 U1 ( .I(din[5]), .Z(dout[2]) );
  DEL025D1BWP7T35P140 U2 ( .I(din[7]), .Z(dout[4]) );
  DEL025D1BWP7T35P140 U3 ( .I(din[4]), .Z(dout[1]) );
  DEL025D1BWP7T35P140 U4 ( .I(din[3]), .Z(dout[0]) );
  DEL025D1BWP7T35P140 U5 ( .I(din[6]), .Z(dout[3]) );
  DEL025D1BWP7T35P140 U6 ( .I(din[8]), .Z(dout[5]) );
  DEL025D1BWP7T35P140 U7 ( .I(din[9]), .Z(dout[6]) );
  DEL025D1BWP7T35P140 U8 ( .I(din[10]), .Z(dout[7]) );
endmodule


module FloorAndWrap_5 ( din, dout );
  input [11:0] din;
  output [7:0] dout;


  DEL025D1BWP7T35P140 U1 ( .I(din[10]), .Z(dout[7]) );
  DEL025D1BWP7T35P140 U2 ( .I(din[9]), .Z(dout[6]) );
  DEL025D1BWP7T35P140 U3 ( .I(din[8]), .Z(dout[5]) );
  DEL025D1BWP7T35P140 U4 ( .I(din[7]), .Z(dout[4]) );
  DEL025D1BWP7T35P140 U5 ( .I(din[6]), .Z(dout[3]) );
  DEL025D1BWP7T35P140 U6 ( .I(din[5]), .Z(dout[2]) );
  DEL025D1BWP7T35P140 U7 ( .I(din[4]), .Z(dout[1]) );
  DEL025D1BWP7T35P140 U8 ( .I(din[3]), .Z(dout[0]) );
endmodule


module FloorAndWrap_4 ( din, dout );
  input [11:0] din;
  output [7:0] dout;


  DEL025D1BWP7T35P140 U1 ( .I(din[10]), .Z(dout[7]) );
  DEL025D1BWP7T35P140 U2 ( .I(din[9]), .Z(dout[6]) );
  DEL025D1BWP7T35P140 U3 ( .I(din[8]), .Z(dout[5]) );
  DEL025D1BWP7T35P140 U4 ( .I(din[7]), .Z(dout[4]) );
  DEL025D1BWP7T35P140 U5 ( .I(din[6]), .Z(dout[3]) );
  DEL025D1BWP7T35P140 U6 ( .I(din[5]), .Z(dout[2]) );
  DEL025D1BWP7T35P140 U7 ( .I(din[4]), .Z(dout[1]) );
  DEL025D1BWP7T35P140 U8 ( .I(din[3]), .Z(dout[0]) );
endmodule


module FloorAndWrap_3 ( din, dout );
  input [11:0] din;
  output [7:0] dout;


  DEL025D1BWP7T35P140 U1 ( .I(din[10]), .Z(dout[7]) );
  DEL025D1BWP7T35P140 U2 ( .I(din[9]), .Z(dout[6]) );
  DEL025D1BWP7T35P140 U3 ( .I(din[8]), .Z(dout[5]) );
  DEL025D1BWP7T35P140 U4 ( .I(din[7]), .Z(dout[4]) );
  DEL025D1BWP7T35P140 U5 ( .I(din[6]), .Z(dout[3]) );
  DEL025D1BWP7T35P140 U6 ( .I(din[3]), .Z(dout[0]) );
  DEL025D1BWP7T35P140 U7 ( .I(din[4]), .Z(dout[1]) );
  DEL025D1BWP7T35P140 U8 ( .I(din[5]), .Z(dout[2]) );
endmodule


module FloorAndWrap_2 ( din, dout );
  input [11:0] din;
  output [7:0] dout;


  DEL025D1BWP7T35P140 U1 ( .I(din[3]), .Z(dout[0]) );
  DEL025D1BWP7T35P140 U2 ( .I(din[4]), .Z(dout[1]) );
  DEL025D1BWP7T35P140 U3 ( .I(din[5]), .Z(dout[2]) );
  DEL025D1BWP7T35P140 U4 ( .I(din[6]), .Z(dout[3]) );
  DEL025D1BWP7T35P140 U5 ( .I(din[7]), .Z(dout[4]) );
  DEL025D1BWP7T35P140 U6 ( .I(din[8]), .Z(dout[5]) );
  DEL025D1BWP7T35P140 U7 ( .I(din[9]), .Z(dout[6]) );
  DEL025D1BWP7T35P140 U8 ( .I(din[10]), .Z(dout[7]) );
endmodule


module FloorAndWrap_1 ( din, dout );
  input [11:0] din;
  output [7:0] dout;


  DEL025D1BWP7T35P140 U1 ( .I(din[7]), .Z(dout[4]) );
  DEL025D1BWP7T35P140 U2 ( .I(din[3]), .Z(dout[0]) );
  DEL025D1BWP7T35P140 U3 ( .I(din[4]), .Z(dout[1]) );
  DEL025D1BWP7T35P140 U4 ( .I(din[5]), .Z(dout[2]) );
  DEL025D1BWP7T35P140 U5 ( .I(din[6]), .Z(dout[3]) );
  DEL025D1BWP7T35P140 U6 ( .I(din[8]), .Z(dout[5]) );
  DEL025D1BWP7T35P140 U7 ( .I(din[9]), .Z(dout[6]) );
  DEL025D1BWP7T35P140 U8 ( .I(din[10]), .Z(dout[7]) );
endmodule


module FloorAndWrap_0 ( din, dout );
  input [11:0] din;
  output [7:0] dout;


  DEL025D1BWP7T35P140 U1 ( .I(din[9]), .Z(dout[6]) );
  DEL025D1BWP7T35P140 U2 ( .I(din[3]), .Z(dout[0]) );
  DEL025D1BWP7T35P140 U3 ( .I(din[4]), .Z(dout[1]) );
  DEL025D1BWP7T35P140 U4 ( .I(din[5]), .Z(dout[2]) );
  DEL025D1BWP7T35P140 U5 ( .I(din[6]), .Z(dout[3]) );
  DEL025D1BWP7T35P140 U6 ( .I(din[7]), .Z(dout[4]) );
  DEL025D1BWP7T35P140 U7 ( .I(din[8]), .Z(dout[5]) );
  DEL025D1BWP7T35P140 U8 ( .I(din[10]), .Z(dout[7]) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_0 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWP7T35P140 latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_2 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWP7T35P140 latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_1 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWP7T35P140 latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module cal_vn ( en, vin_vld, v_in_0, v_in_1, v_in_2, v_in_3, v_in_4, v_in_5, 
        v_in_6, v_in_7, vn_0, vn_1, vn_2, vn_3, vn_4, vn_5, vn_6, vn_7, vn_vld, 
        clk, resetn );
  input [7:0] v_in_0;
  input [7:0] v_in_1;
  input [7:0] v_in_2;
  input [7:0] v_in_3;
  input [7:0] v_in_4;
  input [7:0] v_in_5;
  input [7:0] v_in_6;
  input [7:0] v_in_7;
  output [7:0] vn_0;
  output [7:0] vn_1;
  output [7:0] vn_2;
  output [7:0] vn_3;
  output [7:0] vn_4;
  output [7:0] vn_5;
  output [7:0] vn_6;
  output [7:0] vn_7;
  input en, vin_vld, clk, resetn;
  output vn_vld;
  wire   n_Logic0_, n_zz_30_11, in_vld_dly1, N4, N5, net6009, net6015, net6020,
         intadd_0_A_8_, intadd_0_A_7_, intadd_0_A_6_, intadd_0_A_5_,
         intadd_0_A_4_, intadd_0_A_3_, intadd_0_A_2_, intadd_0_A_1_,
         intadd_0_A_0_, intadd_0_B_2_, intadd_0_B_1_, intadd_0_B_0_,
         intadd_0_CI, intadd_0_n10, intadd_0_n9, intadd_0_n8, intadd_0_n7,
         intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2,
         intadd_0_n1, intadd_1_A_5_, intadd_1_A_4_, intadd_1_A_3_,
         intadd_1_A_2_, intadd_1_A_1_, intadd_1_A_0_, intadd_1_B_6_,
         intadd_1_CI, intadd_1_SUM_6_, intadd_1_SUM_5_, intadd_1_SUM_4_,
         intadd_1_SUM_3_, intadd_1_SUM_2_, intadd_1_SUM_1_, intadd_1_SUM_0_,
         intadd_1_n7, intadd_1_n6, intadd_1_n5, intadd_1_n4, intadd_1_n3,
         intadd_1_n2, intadd_1_n1, intadd_2_A_5_, intadd_2_A_4_, intadd_2_A_3_,
         intadd_2_A_2_, intadd_2_A_1_, intadd_2_A_0_, intadd_2_CI,
         intadd_2_SUM_6_, intadd_2_SUM_5_, intadd_2_SUM_4_, intadd_2_SUM_3_,
         intadd_2_SUM_2_, intadd_2_SUM_1_, intadd_2_SUM_0_, intadd_2_n7,
         intadd_2_n6, intadd_2_n5, intadd_2_n4, intadd_2_n3, intadd_2_n2,
         intadd_2_n1, intadd_3_A_5_, intadd_3_A_4_, intadd_3_A_3_,
         intadd_3_A_2_, intadd_3_A_1_, intadd_3_A_0_, intadd_3_CI,
         intadd_3_SUM_6_, intadd_3_SUM_5_, intadd_3_SUM_4_, intadd_3_SUM_3_,
         intadd_3_SUM_2_, intadd_3_SUM_1_, intadd_3_SUM_0_, intadd_3_n7,
         intadd_3_n6, intadd_3_n5, intadd_3_n4, intadd_3_n3, intadd_3_n2,
         intadd_3_n1, intadd_4_A_5_, intadd_4_A_4_, intadd_4_A_3_,
         intadd_4_A_2_, intadd_4_A_1_, intadd_4_A_0_, intadd_4_CI,
         intadd_4_SUM_6_, intadd_4_SUM_5_, intadd_4_SUM_4_, intadd_4_SUM_3_,
         intadd_4_SUM_2_, intadd_4_SUM_1_, intadd_4_SUM_0_, intadd_4_n7,
         intadd_4_n6, intadd_4_n5, intadd_4_n4, intadd_4_n3, intadd_4_n2,
         intadd_4_n1, intadd_5_A_5_, intadd_5_A_4_, intadd_5_A_3_,
         intadd_5_A_2_, intadd_5_A_1_, intadd_5_A_0_, intadd_5_CI,
         intadd_5_SUM_6_, intadd_5_SUM_5_, intadd_5_SUM_4_, intadd_5_SUM_3_,
         intadd_5_SUM_2_, intadd_5_SUM_1_, intadd_5_SUM_0_, intadd_5_n7,
         intadd_5_n6, intadd_5_n5, intadd_5_n4, intadd_5_n3, intadd_5_n2,
         intadd_5_n1, intadd_6_A_5_, intadd_6_A_4_, intadd_6_A_3_,
         intadd_6_A_2_, intadd_6_A_1_, intadd_6_A_0_, intadd_6_CI,
         intadd_6_SUM_6_, intadd_6_SUM_5_, intadd_6_SUM_4_, intadd_6_SUM_3_,
         intadd_6_SUM_2_, intadd_6_SUM_1_, intadd_6_SUM_0_, intadd_6_n7,
         intadd_6_n6, intadd_6_n5, intadd_6_n4, intadd_6_n3, intadd_6_n2,
         intadd_6_n1, intadd_7_A_5_, intadd_7_A_4_, intadd_7_A_3_,
         intadd_7_A_2_, intadd_7_A_1_, intadd_7_A_0_, intadd_7_CI,
         intadd_7_SUM_6_, intadd_7_SUM_5_, intadd_7_SUM_4_, intadd_7_SUM_3_,
         intadd_7_SUM_2_, intadd_7_SUM_1_, intadd_7_SUM_0_, intadd_7_n7,
         intadd_7_n6, intadd_7_n5, intadd_7_n4, intadd_7_n3, intadd_7_n2,
         intadd_7_n1, intadd_8_B_5_, intadd_8_B_4_, intadd_8_B_3_,
         intadd_8_B_2_, intadd_8_B_1_, intadd_8_B_0_, intadd_8_CI,
         intadd_8_SUM_6_, intadd_8_SUM_5_, intadd_8_SUM_4_, intadd_8_SUM_3_,
         intadd_8_SUM_2_, intadd_8_SUM_1_, intadd_8_SUM_0_, intadd_8_n7,
         intadd_8_n6, intadd_8_n5, intadd_8_n4, intadd_8_n3, intadd_8_n2,
         intadd_8_n1, intadd_9_A_3_, intadd_9_A_2_, intadd_9_A_1_,
         intadd_9_B_3_, intadd_9_B_2_, intadd_9_B_1_, intadd_9_SUM_2_,
         intadd_9_SUM_1_, intadd_9_SUM_0_, intadd_9_n4, intadd_9_n3,
         intadd_9_n2, intadd_9_n1, intadd_10_A_3_, intadd_10_A_2_,
         intadd_10_B_2_, intadd_10_B_1_, intadd_10_SUM_2_, intadd_10_SUM_1_,
         intadd_10_SUM_0_, intadd_10_n4, intadd_10_n3, intadd_10_n2,
         intadd_10_n1, intadd_11_A_2_, intadd_11_A_1_, intadd_11_B_2_,
         intadd_11_CI, intadd_11_SUM_2_, intadd_11_SUM_1_, intadd_11_SUM_0_,
         intadd_11_n4, intadd_11_n3, intadd_11_n2, intadd_11_n1,
         intadd_12_A_2_, intadd_12_A_1_, intadd_12_B_2_, intadd_12_B_1_,
         intadd_12_SUM_2_, intadd_12_SUM_1_, intadd_12_SUM_0_, intadd_12_n4,
         intadd_12_n3, intadd_12_n2, intadd_12_n1, intadd_13_A_1_,
         intadd_13_B_2_, intadd_13_B_1_, intadd_13_SUM_2_, intadd_13_SUM_1_,
         intadd_13_SUM_0_, intadd_13_n4, intadd_13_n3, intadd_13_n2,
         intadd_13_n1, intadd_14_A_2_, intadd_14_A_1_, intadd_14_B_2_,
         intadd_14_B_1_, intadd_14_n3, intadd_14_n2, intadd_14_n1,
         intadd_15_A_1_, intadd_15_SUM_0_, intadd_15_n3, intadd_15_n2,
         intadd_15_n1, intadd_16_B_2_, intadd_16_n3, intadd_16_n2,
         intadd_16_n1, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [9:1] n_zz_30;
  wire   [7:0] FloorWrapVn_0_dout;
  wire   [7:0] FloorWrapVn_1_dout;
  wire   [7:0] FloorWrapVn_2_dout;
  wire   [7:0] FloorWrapVn_3_dout;
  wire   [7:0] FloorWrapVn_4_dout;
  wire   [7:0] FloorWrapVn_5_dout;
  wire   [7:0] FloorWrapVn_6_dout;
  wire   [7:0] FloorWrapVn_7_dout;
  wire   [10:0] SumXin;
  wire   [10:0] VinMinusMean_0;
  wire   [10:3] VinMinusMean_1;
  wire   [10:3] VinMinusMean_2;
  wire   [10:3] VinMinusMean_3;
  wire   [10:3] VinMinusMean_4;
  wire   [10:3] VinMinusMean_5;
  wire   [10:3] VinMinusMean_6;
  wire   [10:3] VinMinusMean_7;

  FloorAndWrap_7 FloorWrapVn_0 ( .din({intadd_8_n1, VinMinusMean_0}), .dout(
        FloorWrapVn_0_dout) );
  FloorAndWrap_6 FloorWrapVn_1 ( .din({intadd_7_n1, VinMinusMean_1, 
        VinMinusMean_0[2:0]}), .dout(FloorWrapVn_1_dout) );
  FloorAndWrap_5 FloorWrapVn_2 ( .din({intadd_6_n1, VinMinusMean_2, 
        VinMinusMean_0[2:0]}), .dout(FloorWrapVn_2_dout) );
  FloorAndWrap_4 FloorWrapVn_3 ( .din({intadd_5_n1, VinMinusMean_3, 
        VinMinusMean_0[2:0]}), .dout(FloorWrapVn_3_dout) );
  FloorAndWrap_3 FloorWrapVn_4 ( .din({intadd_4_n1, VinMinusMean_4, 
        VinMinusMean_0[2:0]}), .dout(FloorWrapVn_4_dout) );
  FloorAndWrap_2 FloorWrapVn_5 ( .din({intadd_3_n1, VinMinusMean_5, 
        VinMinusMean_0[2:0]}), .dout(FloorWrapVn_5_dout) );
  FloorAndWrap_1 FloorWrapVn_6 ( .din({intadd_2_n1, VinMinusMean_6, 
        VinMinusMean_0[2:0]}), .dout(FloorWrapVn_6_dout) );
  FloorAndWrap_0 FloorWrapVn_7 ( .din({intadd_1_n1, VinMinusMean_7, 
        VinMinusMean_0[2:0]}), .dout(FloorWrapVn_7_dout) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_0 clk_gate_VnReg_4_reg ( .CLK(clk), .EN(
        in_vld_dly1), .ENCLK(net6009), .TE(n_Logic0_) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_2 clk_gate_VnReg_0_reg ( .CLK(clk), .EN(
        in_vld_dly1), .ENCLK(net6015), .TE(n_Logic0_) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_1 clk_gate_SumXinReg_reg ( .CLK(clk), .EN(N4), 
        .ENCLK(net6020), .TE(n_Logic0_) );
  DFCNQD1BWP7T35P140 in_vld_dly1_reg ( .D(N4), .CP(clk), .CDN(n26), .Q(
        in_vld_dly1) );
  DFCNQD1BWP7T35P140 VnReg_4_reg_7_ ( .D(FloorWrapVn_4_dout[7]), .CP(net6009), 
        .CDN(n26), .Q(vn_4[7]) );
  DFCNQD1BWP7T35P140 VnReg_4_reg_6_ ( .D(FloorWrapVn_4_dout[6]), .CP(net6009), 
        .CDN(n26), .Q(vn_4[6]) );
  DFCNQD1BWP7T35P140 VnReg_4_reg_5_ ( .D(FloorWrapVn_4_dout[5]), .CP(net6009), 
        .CDN(n26), .Q(vn_4[5]) );
  DFCNQD1BWP7T35P140 VnReg_4_reg_4_ ( .D(FloorWrapVn_4_dout[4]), .CP(net6009), 
        .CDN(n26), .Q(vn_4[4]) );
  DFCNQD1BWP7T35P140 VnReg_4_reg_3_ ( .D(FloorWrapVn_4_dout[3]), .CP(net6009), 
        .CDN(n26), .Q(vn_4[3]) );
  DFCNQD1BWP7T35P140 VnReg_4_reg_2_ ( .D(FloorWrapVn_4_dout[2]), .CP(net6009), 
        .CDN(n26), .Q(vn_4[2]) );
  DFCNQD1BWP7T35P140 VnReg_4_reg_1_ ( .D(FloorWrapVn_4_dout[1]), .CP(net6009), 
        .CDN(n26), .Q(vn_4[1]) );
  DFCNQD1BWP7T35P140 VnReg_4_reg_0_ ( .D(FloorWrapVn_4_dout[0]), .CP(net6009), 
        .CDN(n26), .Q(vn_4[0]) );
  DFCNQD1BWP7T35P140 VnReg_6_reg_7_ ( .D(FloorWrapVn_6_dout[7]), .CP(net6009), 
        .CDN(n26), .Q(vn_6[7]) );
  DFCNQD1BWP7T35P140 VnReg_6_reg_6_ ( .D(FloorWrapVn_6_dout[6]), .CP(net6009), 
        .CDN(n26), .Q(vn_6[6]) );
  DFCNQD1BWP7T35P140 VnReg_6_reg_5_ ( .D(FloorWrapVn_6_dout[5]), .CP(net6009), 
        .CDN(n25), .Q(vn_6[5]) );
  DFCNQD1BWP7T35P140 VnReg_6_reg_4_ ( .D(FloorWrapVn_6_dout[4]), .CP(net6009), 
        .CDN(n25), .Q(vn_6[4]) );
  DFCNQD1BWP7T35P140 VnReg_6_reg_3_ ( .D(FloorWrapVn_6_dout[3]), .CP(net6009), 
        .CDN(n25), .Q(vn_6[3]) );
  DFCNQD1BWP7T35P140 VnReg_6_reg_2_ ( .D(FloorWrapVn_6_dout[2]), .CP(net6009), 
        .CDN(n25), .Q(vn_6[2]) );
  DFCNQD1BWP7T35P140 VnReg_6_reg_1_ ( .D(FloorWrapVn_6_dout[1]), .CP(net6009), 
        .CDN(n25), .Q(vn_6[1]) );
  DFCNQD1BWP7T35P140 VnReg_6_reg_0_ ( .D(FloorWrapVn_6_dout[0]), .CP(net6009), 
        .CDN(n25), .Q(vn_6[0]) );
  DFCNQD1BWP7T35P140 VnReg_5_reg_7_ ( .D(FloorWrapVn_5_dout[7]), .CP(net6009), 
        .CDN(n25), .Q(vn_5[7]) );
  DFCNQD1BWP7T35P140 VnReg_5_reg_6_ ( .D(FloorWrapVn_5_dout[6]), .CP(net6009), 
        .CDN(n25), .Q(vn_5[6]) );
  DFCNQD1BWP7T35P140 VnReg_5_reg_5_ ( .D(FloorWrapVn_5_dout[5]), .CP(net6009), 
        .CDN(n25), .Q(vn_5[5]) );
  DFCNQD1BWP7T35P140 VnReg_5_reg_4_ ( .D(FloorWrapVn_5_dout[4]), .CP(net6009), 
        .CDN(n25), .Q(vn_5[4]) );
  DFCNQD1BWP7T35P140 VnReg_5_reg_3_ ( .D(FloorWrapVn_5_dout[3]), .CP(net6009), 
        .CDN(n25), .Q(vn_5[3]) );
  DFCNQD1BWP7T35P140 VnReg_5_reg_2_ ( .D(FloorWrapVn_5_dout[2]), .CP(net6009), 
        .CDN(n25), .Q(vn_5[2]) );
  DFCNQD1BWP7T35P140 VnReg_5_reg_1_ ( .D(FloorWrapVn_5_dout[1]), .CP(net6009), 
        .CDN(n25), .Q(vn_5[1]) );
  DFCNQD1BWP7T35P140 VnReg_5_reg_0_ ( .D(FloorWrapVn_5_dout[0]), .CP(net6009), 
        .CDN(n24), .Q(vn_5[0]) );
  DFCNQD1BWP7T35P140 VnReg_7_reg_7_ ( .D(FloorWrapVn_7_dout[7]), .CP(net6009), 
        .CDN(n24), .Q(vn_7[7]) );
  DFCNQD1BWP7T35P140 VnReg_7_reg_6_ ( .D(FloorWrapVn_7_dout[6]), .CP(net6009), 
        .CDN(n24), .Q(vn_7[6]) );
  DFCNQD1BWP7T35P140 VnReg_7_reg_5_ ( .D(FloorWrapVn_7_dout[5]), .CP(net6009), 
        .CDN(n24), .Q(vn_7[5]) );
  DFCNQD1BWP7T35P140 VnReg_7_reg_4_ ( .D(FloorWrapVn_7_dout[4]), .CP(net6009), 
        .CDN(n24), .Q(vn_7[4]) );
  DFCNQD1BWP7T35P140 VnReg_7_reg_3_ ( .D(FloorWrapVn_7_dout[3]), .CP(net6009), 
        .CDN(n24), .Q(vn_7[3]) );
  DFCNQD1BWP7T35P140 VnReg_7_reg_2_ ( .D(FloorWrapVn_7_dout[2]), .CP(net6009), 
        .CDN(n24), .Q(vn_7[2]) );
  DFCNQD1BWP7T35P140 VnReg_7_reg_1_ ( .D(FloorWrapVn_7_dout[1]), .CP(net6009), 
        .CDN(n24), .Q(vn_7[1]) );
  DFCNQD1BWP7T35P140 VnReg_7_reg_0_ ( .D(FloorWrapVn_7_dout[0]), .CP(net6009), 
        .CDN(n24), .Q(vn_7[0]) );
  DFCNQD1BWP7T35P140 in_vld_dly2_reg ( .D(N5), .CP(clk), .CDN(n24), .Q(vn_vld)
         );
  DFCNQD1BWP7T35P140 SumXinReg_reg_10_ ( .D(SumXin[10]), .CP(net6020), .CDN(
        n24), .Q(n_zz_30_11) );
  DFCNQD1BWP7T35P140 SumXinReg_reg_9_ ( .D(SumXin[9]), .CP(net6020), .CDN(n24), 
        .Q(n_zz_30[9]) );
  DFCNQD1BWP7T35P140 SumXinReg_reg_8_ ( .D(SumXin[8]), .CP(net6020), .CDN(n24), 
        .Q(n_zz_30[8]) );
  DFCNQD1BWP7T35P140 SumXinReg_reg_7_ ( .D(SumXin[7]), .CP(net6020), .CDN(n23), 
        .Q(n_zz_30[7]) );
  DFCNQD1BWP7T35P140 SumXinReg_reg_6_ ( .D(SumXin[6]), .CP(net6020), .CDN(n23), 
        .Q(n_zz_30[6]) );
  DFCNQD1BWP7T35P140 SumXinReg_reg_5_ ( .D(SumXin[5]), .CP(net6020), .CDN(n23), 
        .Q(n_zz_30[5]) );
  DFCNQD1BWP7T35P140 SumXinReg_reg_4_ ( .D(SumXin[4]), .CP(net6020), .CDN(n23), 
        .Q(n_zz_30[4]) );
  DFCNQD1BWP7T35P140 SumXinReg_reg_3_ ( .D(SumXin[3]), .CP(net6020), .CDN(n23), 
        .Q(n_zz_30[3]) );
  DFCNQD1BWP7T35P140 SumXinReg_reg_2_ ( .D(SumXin[2]), .CP(net6020), .CDN(n23), 
        .Q(n_zz_30[2]) );
  DFCNQD1BWP7T35P140 SumXinReg_reg_1_ ( .D(SumXin[1]), .CP(net6020), .CDN(n23), 
        .Q(n_zz_30[1]) );
  DFCNQD1BWP7T35P140 VnReg_0_reg_7_ ( .D(FloorWrapVn_0_dout[7]), .CP(net6015), 
        .CDN(n23), .Q(vn_0[7]) );
  DFCNQD1BWP7T35P140 VnReg_0_reg_6_ ( .D(FloorWrapVn_0_dout[6]), .CP(net6015), 
        .CDN(n23), .Q(vn_0[6]) );
  DFCNQD1BWP7T35P140 VnReg_0_reg_5_ ( .D(FloorWrapVn_0_dout[5]), .CP(net6015), 
        .CDN(n23), .Q(vn_0[5]) );
  DFCNQD1BWP7T35P140 VnReg_0_reg_4_ ( .D(FloorWrapVn_0_dout[4]), .CP(net6015), 
        .CDN(n23), .Q(vn_0[4]) );
  DFCNQD1BWP7T35P140 VnReg_0_reg_3_ ( .D(FloorWrapVn_0_dout[3]), .CP(net6015), 
        .CDN(n23), .Q(vn_0[3]) );
  DFCNQD1BWP7T35P140 VnReg_0_reg_2_ ( .D(FloorWrapVn_0_dout[2]), .CP(net6015), 
        .CDN(n23), .Q(vn_0[2]) );
  DFCNQD1BWP7T35P140 VnReg_0_reg_1_ ( .D(FloorWrapVn_0_dout[1]), .CP(net6015), 
        .CDN(n24), .Q(vn_0[1]) );
  DFCNQD1BWP7T35P140 VnReg_0_reg_0_ ( .D(FloorWrapVn_0_dout[0]), .CP(net6015), 
        .CDN(n23), .Q(vn_0[0]) );
  DFCNQD1BWP7T35P140 VnReg_1_reg_7_ ( .D(FloorWrapVn_1_dout[7]), .CP(net6015), 
        .CDN(n25), .Q(vn_1[7]) );
  DFCNQD1BWP7T35P140 VnReg_1_reg_6_ ( .D(FloorWrapVn_1_dout[6]), .CP(net6015), 
        .CDN(n24), .Q(vn_1[6]) );
  DFCNQD1BWP7T35P140 VnReg_1_reg_5_ ( .D(FloorWrapVn_1_dout[5]), .CP(net6015), 
        .CDN(n23), .Q(vn_1[5]) );
  DFCNQD1BWP7T35P140 VnReg_1_reg_4_ ( .D(FloorWrapVn_1_dout[4]), .CP(net6015), 
        .CDN(n26), .Q(vn_1[4]) );
  DFCNQD1BWP7T35P140 VnReg_1_reg_3_ ( .D(FloorWrapVn_1_dout[3]), .CP(net6015), 
        .CDN(n25), .Q(vn_1[3]) );
  DFCNQD1BWP7T35P140 VnReg_1_reg_2_ ( .D(FloorWrapVn_1_dout[2]), .CP(net6015), 
        .CDN(n24), .Q(vn_1[2]) );
  DFCNQD1BWP7T35P140 VnReg_1_reg_1_ ( .D(FloorWrapVn_1_dout[1]), .CP(net6015), 
        .CDN(n23), .Q(vn_1[1]) );
  DFCNQD1BWP7T35P140 VnReg_1_reg_0_ ( .D(FloorWrapVn_1_dout[0]), .CP(net6015), 
        .CDN(n26), .Q(vn_1[0]) );
  DFCNQD1BWP7T35P140 VnReg_2_reg_7_ ( .D(FloorWrapVn_2_dout[7]), .CP(net6015), 
        .CDN(n25), .Q(vn_2[7]) );
  DFCNQD1BWP7T35P140 VnReg_2_reg_6_ ( .D(FloorWrapVn_2_dout[6]), .CP(net6015), 
        .CDN(n24), .Q(vn_2[6]) );
  DFCNQD1BWP7T35P140 VnReg_2_reg_5_ ( .D(FloorWrapVn_2_dout[5]), .CP(net6015), 
        .CDN(n23), .Q(vn_2[5]) );
  DFCNQD1BWP7T35P140 VnReg_2_reg_4_ ( .D(FloorWrapVn_2_dout[4]), .CP(net6015), 
        .CDN(resetn), .Q(vn_2[4]) );
  DFCNQD1BWP7T35P140 VnReg_2_reg_3_ ( .D(FloorWrapVn_2_dout[3]), .CP(net6015), 
        .CDN(n26), .Q(vn_2[3]) );
  DFCNQD1BWP7T35P140 VnReg_2_reg_2_ ( .D(FloorWrapVn_2_dout[2]), .CP(net6015), 
        .CDN(n26), .Q(vn_2[2]) );
  DFCNQD1BWP7T35P140 VnReg_2_reg_1_ ( .D(FloorWrapVn_2_dout[1]), .CP(net6015), 
        .CDN(n25), .Q(vn_2[1]) );
  DFCNQD1BWP7T35P140 VnReg_2_reg_0_ ( .D(FloorWrapVn_2_dout[0]), .CP(net6015), 
        .CDN(n24), .Q(vn_2[0]) );
  DFCNQD1BWP7T35P140 VnReg_3_reg_7_ ( .D(FloorWrapVn_3_dout[7]), .CP(net6015), 
        .CDN(n23), .Q(vn_3[7]) );
  DFCNQD1BWP7T35P140 VnReg_3_reg_6_ ( .D(FloorWrapVn_3_dout[6]), .CP(net6015), 
        .CDN(resetn), .Q(vn_3[6]) );
  DFCNQD1BWP7T35P140 VnReg_3_reg_5_ ( .D(FloorWrapVn_3_dout[5]), .CP(net6015), 
        .CDN(n26), .Q(vn_3[5]) );
  DFCNQD1BWP7T35P140 VnReg_3_reg_4_ ( .D(FloorWrapVn_3_dout[4]), .CP(net6015), 
        .CDN(n25), .Q(vn_3[4]) );
  DFCNQD1BWP7T35P140 VnReg_3_reg_3_ ( .D(FloorWrapVn_3_dout[3]), .CP(net6015), 
        .CDN(n24), .Q(vn_3[3]) );
  DFCNQD1BWP7T35P140 VnReg_3_reg_2_ ( .D(FloorWrapVn_3_dout[2]), .CP(net6015), 
        .CDN(n23), .Q(vn_3[2]) );
  DFCNQD1BWP7T35P140 VnReg_3_reg_1_ ( .D(FloorWrapVn_3_dout[1]), .CP(net6015), 
        .CDN(n25), .Q(vn_3[1]) );
  DFCNQD1BWP7T35P140 VnReg_3_reg_0_ ( .D(FloorWrapVn_3_dout[0]), .CP(net6015), 
        .CDN(n26), .Q(vn_3[0]) );
  FA1D1BWP7T35P140 intadd_0_U11 ( .A(intadd_0_B_0_), .B(intadd_0_A_0_), .CI(
        intadd_0_CI), .CO(intadd_0_n10), .S(SumXin[0]) );
  FA1D1BWP7T35P140 intadd_0_U10 ( .A(intadd_0_B_1_), .B(intadd_0_A_1_), .CI(
        intadd_0_n10), .CO(intadd_0_n9), .S(SumXin[1]) );
  FA1D1BWP7T35P140 intadd_0_U9 ( .A(intadd_0_B_2_), .B(intadd_0_A_2_), .CI(
        intadd_0_n9), .CO(intadd_0_n8), .S(SumXin[2]) );
  FA1D1BWP7T35P140 intadd_0_U8 ( .A(intadd_16_n1), .B(intadd_0_A_3_), .CI(
        intadd_0_n8), .CO(intadd_0_n7), .S(SumXin[3]) );
  FA1D1BWP7T35P140 intadd_0_U7 ( .A(intadd_15_n1), .B(intadd_0_A_4_), .CI(
        intadd_0_n7), .CO(intadd_0_n6), .S(SumXin[4]) );
  FA1D1BWP7T35P140 intadd_0_U6 ( .A(intadd_13_n1), .B(intadd_0_A_5_), .CI(
        intadd_0_n6), .CO(intadd_0_n5), .S(SumXin[5]) );
  FA1D1BWP7T35P140 intadd_0_U5 ( .A(intadd_12_n1), .B(intadd_0_A_6_), .CI(
        intadd_0_n5), .CO(intadd_0_n4), .S(SumXin[6]) );
  FA1D1BWP7T35P140 intadd_0_U4 ( .A(intadd_11_n1), .B(intadd_0_A_7_), .CI(
        intadd_0_n4), .CO(intadd_0_n3), .S(SumXin[7]) );
  FA1D1BWP7T35P140 intadd_0_U3 ( .A(intadd_10_n1), .B(intadd_0_A_8_), .CI(
        intadd_0_n3), .CO(intadd_0_n2), .S(SumXin[8]) );
  FA1D1BWP7T35P140 intadd_0_U2 ( .A(intadd_9_n1), .B(intadd_14_n1), .CI(
        intadd_0_n2), .CO(intadd_0_n1), .S(SumXin[9]) );
  FA1D1BWP7T35P140 intadd_1_U8 ( .A(n_zz_30[4]), .B(intadd_1_A_0_), .CI(
        intadd_1_CI), .CO(intadd_1_n7), .S(intadd_1_SUM_0_) );
  FA1D1BWP7T35P140 intadd_1_U7 ( .A(n_zz_30[5]), .B(intadd_1_A_1_), .CI(
        intadd_1_n7), .CO(intadd_1_n6), .S(intadd_1_SUM_1_) );
  FA1D1BWP7T35P140 intadd_1_U6 ( .A(n_zz_30[6]), .B(intadd_1_A_2_), .CI(
        intadd_1_n6), .CO(intadd_1_n5), .S(intadd_1_SUM_2_) );
  FA1D1BWP7T35P140 intadd_1_U5 ( .A(n_zz_30[7]), .B(intadd_1_A_3_), .CI(
        intadd_1_n5), .CO(intadd_1_n4), .S(intadd_1_SUM_3_) );
  FA1D1BWP7T35P140 intadd_1_U4 ( .A(n_zz_30[8]), .B(intadd_1_A_4_), .CI(
        intadd_1_n4), .CO(intadd_1_n3), .S(intadd_1_SUM_4_) );
  FA1D1BWP7T35P140 intadd_1_U3 ( .A(n_zz_30[9]), .B(intadd_1_A_5_), .CI(
        intadd_1_n3), .CO(intadd_1_n2), .S(intadd_1_SUM_5_) );
  FA1D1BWP7T35P140 intadd_1_U2 ( .A(intadd_1_B_6_), .B(v_in_7[7]), .CI(
        intadd_1_n2), .CO(intadd_1_n1), .S(intadd_1_SUM_6_) );
  FA1D1BWP7T35P140 intadd_2_U8 ( .A(n_zz_30[4]), .B(intadd_2_A_0_), .CI(
        intadd_2_CI), .CO(intadd_2_n7), .S(intadd_2_SUM_0_) );
  FA1D1BWP7T35P140 intadd_2_U7 ( .A(n_zz_30[5]), .B(intadd_2_A_1_), .CI(
        intadd_2_n7), .CO(intadd_2_n6), .S(intadd_2_SUM_1_) );
  FA1D1BWP7T35P140 intadd_2_U6 ( .A(n_zz_30[6]), .B(intadd_2_A_2_), .CI(
        intadd_2_n6), .CO(intadd_2_n5), .S(intadd_2_SUM_2_) );
  FA1D1BWP7T35P140 intadd_2_U5 ( .A(n_zz_30[7]), .B(intadd_2_A_3_), .CI(
        intadd_2_n5), .CO(intadd_2_n4), .S(intadd_2_SUM_3_) );
  FA1D1BWP7T35P140 intadd_2_U4 ( .A(n_zz_30[8]), .B(intadd_2_A_4_), .CI(
        intadd_2_n4), .CO(intadd_2_n3), .S(intadd_2_SUM_4_) );
  FA1D1BWP7T35P140 intadd_2_U3 ( .A(n_zz_30[9]), .B(intadd_2_A_5_), .CI(
        intadd_2_n3), .CO(intadd_2_n2), .S(intadd_2_SUM_5_) );
  FA1D1BWP7T35P140 intadd_2_U2 ( .A(intadd_1_B_6_), .B(v_in_6[7]), .CI(
        intadd_2_n2), .CO(intadd_2_n1), .S(intadd_2_SUM_6_) );
  FA1D1BWP7T35P140 intadd_3_U8 ( .A(n_zz_30[4]), .B(intadd_3_A_0_), .CI(
        intadd_3_CI), .CO(intadd_3_n7), .S(intadd_3_SUM_0_) );
  FA1D1BWP7T35P140 intadd_3_U7 ( .A(n_zz_30[5]), .B(intadd_3_A_1_), .CI(
        intadd_3_n7), .CO(intadd_3_n6), .S(intadd_3_SUM_1_) );
  FA1D1BWP7T35P140 intadd_3_U6 ( .A(n_zz_30[6]), .B(intadd_3_A_2_), .CI(
        intadd_3_n6), .CO(intadd_3_n5), .S(intadd_3_SUM_2_) );
  FA1D1BWP7T35P140 intadd_3_U5 ( .A(n_zz_30[7]), .B(intadd_3_A_3_), .CI(
        intadd_3_n5), .CO(intadd_3_n4), .S(intadd_3_SUM_3_) );
  FA1D1BWP7T35P140 intadd_3_U4 ( .A(n_zz_30[8]), .B(intadd_3_A_4_), .CI(
        intadd_3_n4), .CO(intadd_3_n3), .S(intadd_3_SUM_4_) );
  FA1D1BWP7T35P140 intadd_3_U3 ( .A(n_zz_30[9]), .B(intadd_3_A_5_), .CI(
        intadd_3_n3), .CO(intadd_3_n2), .S(intadd_3_SUM_5_) );
  FA1D1BWP7T35P140 intadd_3_U2 ( .A(intadd_1_B_6_), .B(v_in_5[7]), .CI(
        intadd_3_n2), .CO(intadd_3_n1), .S(intadd_3_SUM_6_) );
  FA1D1BWP7T35P140 intadd_4_U8 ( .A(n_zz_30[4]), .B(intadd_4_A_0_), .CI(
        intadd_4_CI), .CO(intadd_4_n7), .S(intadd_4_SUM_0_) );
  FA1D1BWP7T35P140 intadd_4_U7 ( .A(n_zz_30[5]), .B(intadd_4_A_1_), .CI(
        intadd_4_n7), .CO(intadd_4_n6), .S(intadd_4_SUM_1_) );
  FA1D1BWP7T35P140 intadd_4_U6 ( .A(n_zz_30[6]), .B(intadd_4_A_2_), .CI(
        intadd_4_n6), .CO(intadd_4_n5), .S(intadd_4_SUM_2_) );
  FA1D1BWP7T35P140 intadd_4_U5 ( .A(n_zz_30[7]), .B(intadd_4_A_3_), .CI(
        intadd_4_n5), .CO(intadd_4_n4), .S(intadd_4_SUM_3_) );
  FA1D1BWP7T35P140 intadd_4_U4 ( .A(n_zz_30[8]), .B(intadd_4_A_4_), .CI(
        intadd_4_n4), .CO(intadd_4_n3), .S(intadd_4_SUM_4_) );
  FA1D1BWP7T35P140 intadd_4_U3 ( .A(n_zz_30[9]), .B(intadd_4_A_5_), .CI(
        intadd_4_n3), .CO(intadd_4_n2), .S(intadd_4_SUM_5_) );
  FA1D1BWP7T35P140 intadd_4_U2 ( .A(intadd_1_B_6_), .B(v_in_4[7]), .CI(
        intadd_4_n2), .CO(intadd_4_n1), .S(intadd_4_SUM_6_) );
  FA1D1BWP7T35P140 intadd_5_U8 ( .A(n_zz_30[4]), .B(intadd_5_A_0_), .CI(
        intadd_5_CI), .CO(intadd_5_n7), .S(intadd_5_SUM_0_) );
  FA1D1BWP7T35P140 intadd_5_U7 ( .A(n_zz_30[5]), .B(intadd_5_A_1_), .CI(
        intadd_5_n7), .CO(intadd_5_n6), .S(intadd_5_SUM_1_) );
  FA1D1BWP7T35P140 intadd_5_U6 ( .A(n_zz_30[6]), .B(intadd_5_A_2_), .CI(
        intadd_5_n6), .CO(intadd_5_n5), .S(intadd_5_SUM_2_) );
  FA1D1BWP7T35P140 intadd_5_U5 ( .A(n_zz_30[7]), .B(intadd_5_A_3_), .CI(
        intadd_5_n5), .CO(intadd_5_n4), .S(intadd_5_SUM_3_) );
  FA1D1BWP7T35P140 intadd_5_U4 ( .A(n_zz_30[8]), .B(intadd_5_A_4_), .CI(
        intadd_5_n4), .CO(intadd_5_n3), .S(intadd_5_SUM_4_) );
  FA1D1BWP7T35P140 intadd_5_U3 ( .A(n_zz_30[9]), .B(intadd_5_A_5_), .CI(
        intadd_5_n3), .CO(intadd_5_n2), .S(intadd_5_SUM_5_) );
  FA1D1BWP7T35P140 intadd_5_U2 ( .A(intadd_1_B_6_), .B(v_in_3[7]), .CI(
        intadd_5_n2), .CO(intadd_5_n1), .S(intadd_5_SUM_6_) );
  FA1D1BWP7T35P140 intadd_6_U8 ( .A(n_zz_30[4]), .B(intadd_6_A_0_), .CI(
        intadd_6_CI), .CO(intadd_6_n7), .S(intadd_6_SUM_0_) );
  FA1D1BWP7T35P140 intadd_6_U7 ( .A(n_zz_30[5]), .B(intadd_6_A_1_), .CI(
        intadd_6_n7), .CO(intadd_6_n6), .S(intadd_6_SUM_1_) );
  FA1D1BWP7T35P140 intadd_6_U6 ( .A(n_zz_30[6]), .B(intadd_6_A_2_), .CI(
        intadd_6_n6), .CO(intadd_6_n5), .S(intadd_6_SUM_2_) );
  FA1D1BWP7T35P140 intadd_6_U5 ( .A(n_zz_30[7]), .B(intadd_6_A_3_), .CI(
        intadd_6_n5), .CO(intadd_6_n4), .S(intadd_6_SUM_3_) );
  FA1D1BWP7T35P140 intadd_6_U4 ( .A(n_zz_30[8]), .B(intadd_6_A_4_), .CI(
        intadd_6_n4), .CO(intadd_6_n3), .S(intadd_6_SUM_4_) );
  FA1D1BWP7T35P140 intadd_6_U3 ( .A(n_zz_30[9]), .B(intadd_6_A_5_), .CI(
        intadd_6_n3), .CO(intadd_6_n2), .S(intadd_6_SUM_5_) );
  FA1D1BWP7T35P140 intadd_6_U2 ( .A(intadd_1_B_6_), .B(v_in_2[7]), .CI(
        intadd_6_n2), .CO(intadd_6_n1), .S(intadd_6_SUM_6_) );
  FA1D1BWP7T35P140 intadd_7_U8 ( .A(n_zz_30[4]), .B(intadd_7_A_0_), .CI(
        intadd_7_CI), .CO(intadd_7_n7), .S(intadd_7_SUM_0_) );
  FA1D1BWP7T35P140 intadd_7_U7 ( .A(n_zz_30[5]), .B(intadd_7_A_1_), .CI(
        intadd_7_n7), .CO(intadd_7_n6), .S(intadd_7_SUM_1_) );
  FA1D1BWP7T35P140 intadd_7_U6 ( .A(n_zz_30[6]), .B(intadd_7_A_2_), .CI(
        intadd_7_n6), .CO(intadd_7_n5), .S(intadd_7_SUM_2_) );
  FA1D1BWP7T35P140 intadd_7_U5 ( .A(n_zz_30[7]), .B(intadd_7_A_3_), .CI(
        intadd_7_n5), .CO(intadd_7_n4), .S(intadd_7_SUM_3_) );
  FA1D1BWP7T35P140 intadd_7_U4 ( .A(n_zz_30[8]), .B(intadd_7_A_4_), .CI(
        intadd_7_n4), .CO(intadd_7_n3), .S(intadd_7_SUM_4_) );
  FA1D1BWP7T35P140 intadd_7_U3 ( .A(n_zz_30[9]), .B(intadd_7_A_5_), .CI(
        intadd_7_n3), .CO(intadd_7_n2), .S(intadd_7_SUM_5_) );
  FA1D1BWP7T35P140 intadd_7_U2 ( .A(intadd_1_B_6_), .B(v_in_1[7]), .CI(
        intadd_7_n2), .CO(intadd_7_n1), .S(intadd_7_SUM_6_) );
  FA1D1BWP7T35P140 intadd_8_U8 ( .A(intadd_8_B_0_), .B(n_zz_30[4]), .CI(
        intadd_8_CI), .CO(intadd_8_n7), .S(intadd_8_SUM_0_) );
  FA1D1BWP7T35P140 intadd_8_U7 ( .A(intadd_8_B_1_), .B(n_zz_30[5]), .CI(
        intadd_8_n7), .CO(intadd_8_n6), .S(intadd_8_SUM_1_) );
  FA1D1BWP7T35P140 intadd_8_U6 ( .A(intadd_8_B_2_), .B(n_zz_30[6]), .CI(
        intadd_8_n6), .CO(intadd_8_n5), .S(intadd_8_SUM_2_) );
  FA1D1BWP7T35P140 intadd_8_U5 ( .A(intadd_8_B_3_), .B(n_zz_30[7]), .CI(
        intadd_8_n5), .CO(intadd_8_n4), .S(intadd_8_SUM_3_) );
  FA1D1BWP7T35P140 intadd_8_U4 ( .A(intadd_8_B_4_), .B(n_zz_30[8]), .CI(
        intadd_8_n4), .CO(intadd_8_n3), .S(intadd_8_SUM_4_) );
  FA1D1BWP7T35P140 intadd_8_U3 ( .A(intadd_8_B_5_), .B(n_zz_30[9]), .CI(
        intadd_8_n3), .CO(intadd_8_n2), .S(intadd_8_SUM_5_) );
  FA1D1BWP7T35P140 intadd_8_U2 ( .A(intadd_1_B_6_), .B(v_in_0[7]), .CI(
        intadd_8_n2), .CO(intadd_8_n1), .S(intadd_8_SUM_6_) );
  FA1D1BWP7T35P140 intadd_9_U5 ( .A(v_in_2[5]), .B(v_in_7[5]), .CI(v_in_0[5]), 
        .CO(intadd_9_n4), .S(intadd_9_SUM_0_) );
  FA1D1BWP7T35P140 intadd_9_U4 ( .A(intadd_9_B_1_), .B(intadd_9_A_1_), .CI(
        intadd_9_n4), .CO(intadd_9_n3), .S(intadd_9_SUM_1_) );
  FA1D1BWP7T35P140 intadd_9_U3 ( .A(intadd_9_B_2_), .B(intadd_9_A_2_), .CI(
        intadd_9_n3), .CO(intadd_9_n2), .S(intadd_9_SUM_2_) );
  FA1D1BWP7T35P140 intadd_9_U2 ( .A(intadd_9_B_3_), .B(intadd_9_A_3_), .CI(
        intadd_9_n2), .CO(intadd_9_n1), .S(intadd_0_A_8_) );
  FA1D1BWP7T35P140 intadd_10_U5 ( .A(v_in_6[4]), .B(v_in_7[4]), .CI(v_in_0[4]), 
        .CO(intadd_10_n4), .S(intadd_10_SUM_0_) );
  FA1D1BWP7T35P140 intadd_10_U4 ( .A(intadd_10_B_1_), .B(intadd_9_SUM_0_), 
        .CI(intadd_10_n4), .CO(intadd_10_n3), .S(intadd_10_SUM_1_) );
  FA1D1BWP7T35P140 intadd_10_U3 ( .A(intadd_10_B_2_), .B(intadd_10_A_2_), .CI(
        intadd_10_n3), .CO(intadd_10_n2), .S(intadd_10_SUM_2_) );
  FA1D1BWP7T35P140 intadd_10_U2 ( .A(intadd_9_SUM_2_), .B(intadd_10_A_3_), 
        .CI(intadd_10_n2), .CO(intadd_10_n1), .S(intadd_0_A_7_) );
  FA1D1BWP7T35P140 intadd_11_U5 ( .A(v_in_2[3]), .B(v_in_4[3]), .CI(
        intadd_11_CI), .CO(intadd_11_n4), .S(intadd_11_SUM_0_) );
  FA1D1BWP7T35P140 intadd_11_U4 ( .A(intadd_10_SUM_0_), .B(intadd_11_A_1_), 
        .CI(intadd_11_n4), .CO(intadd_11_n3), .S(intadd_11_SUM_1_) );
  FA1D1BWP7T35P140 intadd_11_U3 ( .A(intadd_11_B_2_), .B(intadd_11_A_2_), .CI(
        intadd_11_n3), .CO(intadd_11_n2), .S(intadd_11_SUM_2_) );
  FA1D1BWP7T35P140 intadd_11_U2 ( .A(intadd_10_SUM_2_), .B(intadd_9_SUM_1_), 
        .CI(intadd_11_n2), .CO(intadd_11_n1), .S(intadd_0_A_6_) );
  FA1D1BWP7T35P140 intadd_12_U4 ( .A(intadd_12_B_1_), .B(intadd_12_A_1_), .CI(
        intadd_12_n4), .CO(intadd_12_n3), .S(intadd_12_SUM_1_) );
  FA1D1BWP7T35P140 intadd_12_U3 ( .A(intadd_12_B_2_), .B(intadd_12_A_2_), .CI(
        intadd_12_n3), .CO(intadd_12_n2), .S(intadd_12_SUM_2_) );
  FA1D1BWP7T35P140 intadd_12_U2 ( .A(intadd_11_SUM_2_), .B(intadd_10_SUM_1_), 
        .CI(intadd_12_n2), .CO(intadd_12_n1), .S(intadd_0_A_5_) );
  FA1D1BWP7T35P140 intadd_13_U4 ( .A(intadd_13_B_1_), .B(intadd_13_A_1_), .CI(
        intadd_13_n4), .CO(intadd_13_n3), .S(intadd_13_SUM_1_) );
  FA1D1BWP7T35P140 intadd_13_U3 ( .A(intadd_13_B_2_), .B(intadd_11_SUM_0_), 
        .CI(intadd_13_n3), .CO(intadd_13_n2), .S(intadd_13_SUM_2_) );
  FA1D1BWP7T35P140 intadd_13_U2 ( .A(intadd_12_SUM_2_), .B(intadd_11_SUM_1_), 
        .CI(intadd_13_n2), .CO(intadd_13_n1), .S(intadd_0_A_4_) );
  FA1D1BWP7T35P140 intadd_14_U4 ( .A(v_in_3[6]), .B(v_in_5[6]), .CI(v_in_1[6]), 
        .CO(intadd_14_n3), .S(intadd_9_B_1_) );
  FA1D1BWP7T35P140 intadd_14_U3 ( .A(intadd_14_B_1_), .B(intadd_14_A_1_), .CI(
        intadd_14_n3), .CO(intadd_14_n2), .S(intadd_9_A_2_) );
  FA1D1BWP7T35P140 intadd_14_U2 ( .A(intadd_14_B_2_), .B(intadd_14_A_2_), .CI(
        intadd_14_n2), .CO(intadd_14_n1), .S(intadd_9_A_3_) );
  FA1D1BWP7T35P140 intadd_15_U3 ( .A(intadd_12_SUM_0_), .B(intadd_15_A_1_), 
        .CI(intadd_15_n3), .CO(intadd_15_n2), .S(intadd_0_A_2_) );
  FA1D1BWP7T35P140 intadd_15_U2 ( .A(intadd_13_SUM_2_), .B(intadd_12_SUM_1_), 
        .CI(intadd_15_n2), .CO(intadd_15_n1), .S(intadd_0_A_3_) );
  FA1D1BWP7T35P140 intadd_16_U3 ( .A(intadd_13_SUM_0_), .B(intadd_15_SUM_0_), 
        .CI(intadd_16_n3), .CO(intadd_16_n2), .S(intadd_0_B_1_) );
  FA1D1BWP7T35P140 intadd_16_U2 ( .A(intadd_16_B_2_), .B(intadd_13_SUM_1_), 
        .CI(intadd_16_n2), .CO(intadd_16_n1), .S(intadd_0_B_2_) );
  DFCNQD1BWP7T35P140 SumXinReg_reg_0_ ( .D(SumXin[0]), .CP(net6020), .CDN(n26), 
        .Q(VinMinusMean_0[0]) );
  FA1D1BWP7T35P140 intadd_12_U5 ( .A(v_in_5[2]), .B(v_in_7[2]), .CI(v_in_0[2]), 
        .CO(intadd_12_n4), .S(intadd_12_SUM_0_) );
  FA1D1BWP7T35P140 intadd_13_U5 ( .A(v_in_6[1]), .B(v_in_7[1]), .CI(v_in_5[1]), 
        .CO(intadd_13_n4), .S(intadd_13_SUM_0_) );
  FA1D1BWP7T35P140 intadd_15_U4 ( .A(v_in_2[1]), .B(v_in_4[1]), .CI(v_in_0[1]), 
        .CO(intadd_15_n3), .S(intadd_15_SUM_0_) );
  FA1D1BWP7T35P140 intadd_16_U4 ( .A(v_in_2[0]), .B(v_in_4[0]), .CI(v_in_0[0]), 
        .CO(intadd_16_n3), .S(intadd_0_B_0_) );
  INVD1BWP7T35P140 U3 ( .I(v_in_1[2]), .ZN(intadd_7_A_1_) );
  INVD1BWP7T35P140 U4 ( .I(v_in_1[1]), .ZN(intadd_7_A_0_) );
  INVD1BWP7T35P140 U5 ( .I(v_in_5[0]), .ZN(n10) );
  TIELBWP7T35P140 U6 ( .ZN(n_Logic0_) );
  DEL025D1BWP7T35P140 U7 ( .I(resetn), .Z(n23) );
  DEL025D1BWP7T35P140 U8 ( .I(resetn), .Z(n24) );
  DEL025D1BWP7T35P140 U9 ( .I(resetn), .Z(n25) );
  DEL025D1BWP7T35P140 U10 ( .I(resetn), .Z(n26) );
  AN2D0BWP7T35P140 U11 ( .A1(en), .A2(in_vld_dly1), .Z(N5) );
  INVD1BWP7T35P140 U12 ( .I(intadd_3_SUM_0_), .ZN(VinMinusMean_5[4]) );
  INVD1BWP7T35P140 U13 ( .I(intadd_4_SUM_0_), .ZN(VinMinusMean_4[4]) );
  INVD1BWP7T35P140 U14 ( .I(intadd_1_SUM_0_), .ZN(VinMinusMean_7[4]) );
  INVD1BWP7T35P140 U15 ( .I(intadd_2_SUM_0_), .ZN(VinMinusMean_6[4]) );
  INVD1BWP7T35P140 U16 ( .I(intadd_6_SUM_0_), .ZN(VinMinusMean_2[4]) );
  INVD1BWP7T35P140 U17 ( .I(intadd_8_SUM_0_), .ZN(VinMinusMean_0[4]) );
  INVD1BWP7T35P140 U18 ( .I(intadd_7_SUM_0_), .ZN(VinMinusMean_1[4]) );
  INVD1BWP7T35P140 U19 ( .I(intadd_5_SUM_0_), .ZN(VinMinusMean_3[4]) );
  INVD1BWP7T35P140 U20 ( .I(intadd_6_SUM_1_), .ZN(VinMinusMean_2[5]) );
  INVD1BWP7T35P140 U21 ( .I(intadd_3_SUM_1_), .ZN(VinMinusMean_5[5]) );
  INVD1BWP7T35P140 U22 ( .I(intadd_1_SUM_1_), .ZN(VinMinusMean_7[5]) );
  INVD1BWP7T35P140 U23 ( .I(intadd_4_SUM_1_), .ZN(VinMinusMean_4[5]) );
  INVD1BWP7T35P140 U24 ( .I(intadd_2_SUM_1_), .ZN(VinMinusMean_6[5]) );
  INVD1BWP7T35P140 U25 ( .I(intadd_8_SUM_1_), .ZN(VinMinusMean_0[5]) );
  INVD1BWP7T35P140 U26 ( .I(intadd_7_SUM_1_), .ZN(VinMinusMean_1[5]) );
  INVD1BWP7T35P140 U27 ( .I(intadd_5_SUM_1_), .ZN(VinMinusMean_3[5]) );
  INVD1BWP7T35P140 U28 ( .I(intadd_2_SUM_2_), .ZN(VinMinusMean_6[6]) );
  INVD1BWP7T35P140 U29 ( .I(intadd_3_SUM_2_), .ZN(VinMinusMean_5[6]) );
  INVD1BWP7T35P140 U30 ( .I(intadd_4_SUM_2_), .ZN(VinMinusMean_4[6]) );
  INVD1BWP7T35P140 U31 ( .I(intadd_1_SUM_2_), .ZN(VinMinusMean_7[6]) );
  INVD1BWP7T35P140 U32 ( .I(intadd_6_SUM_2_), .ZN(VinMinusMean_2[6]) );
  INVD1BWP7T35P140 U33 ( .I(intadd_8_SUM_2_), .ZN(VinMinusMean_0[6]) );
  INVD1BWP7T35P140 U34 ( .I(intadd_7_SUM_2_), .ZN(VinMinusMean_1[6]) );
  INVD1BWP7T35P140 U35 ( .I(intadd_5_SUM_2_), .ZN(VinMinusMean_3[6]) );
  INVD1BWP7T35P140 U36 ( .I(intadd_4_SUM_3_), .ZN(VinMinusMean_4[7]) );
  INVD1BWP7T35P140 U37 ( .I(intadd_1_SUM_3_), .ZN(VinMinusMean_7[7]) );
  INVD1BWP7T35P140 U38 ( .I(intadd_3_SUM_3_), .ZN(VinMinusMean_5[7]) );
  INVD1BWP7T35P140 U39 ( .I(intadd_2_SUM_3_), .ZN(VinMinusMean_6[7]) );
  INVD1BWP7T35P140 U40 ( .I(intadd_6_SUM_3_), .ZN(VinMinusMean_2[7]) );
  INVD1BWP7T35P140 U41 ( .I(intadd_8_SUM_3_), .ZN(VinMinusMean_0[7]) );
  INVD1BWP7T35P140 U42 ( .I(intadd_7_SUM_3_), .ZN(VinMinusMean_1[7]) );
  INVD1BWP7T35P140 U43 ( .I(intadd_5_SUM_3_), .ZN(VinMinusMean_3[7]) );
  AN2D0BWP7T35P140 U44 ( .A1(en), .A2(vin_vld), .Z(N4) );
  INVD1BWP7T35P140 U45 ( .I(intadd_2_SUM_4_), .ZN(VinMinusMean_6[8]) );
  INVD1BWP7T35P140 U46 ( .I(intadd_1_SUM_4_), .ZN(VinMinusMean_7[8]) );
  INVD1BWP7T35P140 U47 ( .I(intadd_4_SUM_4_), .ZN(VinMinusMean_4[8]) );
  INVD1BWP7T35P140 U48 ( .I(intadd_6_SUM_4_), .ZN(VinMinusMean_2[8]) );
  INVD1BWP7T35P140 U49 ( .I(intadd_3_SUM_4_), .ZN(VinMinusMean_5[8]) );
  INVD1BWP7T35P140 U50 ( .I(intadd_8_SUM_4_), .ZN(VinMinusMean_0[8]) );
  INVD1BWP7T35P140 U51 ( .I(intadd_7_SUM_4_), .ZN(VinMinusMean_1[8]) );
  INVD1BWP7T35P140 U52 ( .I(intadd_5_SUM_4_), .ZN(VinMinusMean_3[8]) );
  INVD1BWP7T35P140 U53 ( .I(intadd_3_SUM_5_), .ZN(VinMinusMean_5[9]) );
  INVD1BWP7T35P140 U54 ( .I(intadd_1_SUM_5_), .ZN(VinMinusMean_7[9]) );
  INVD1BWP7T35P140 U55 ( .I(intadd_6_SUM_5_), .ZN(VinMinusMean_2[9]) );
  INVD1BWP7T35P140 U56 ( .I(intadd_2_SUM_5_), .ZN(VinMinusMean_6[9]) );
  INVD1BWP7T35P140 U57 ( .I(intadd_4_SUM_5_), .ZN(VinMinusMean_4[9]) );
  INVD1BWP7T35P140 U58 ( .I(intadd_8_SUM_5_), .ZN(VinMinusMean_0[9]) );
  INVD1BWP7T35P140 U59 ( .I(intadd_7_SUM_5_), .ZN(VinMinusMean_1[9]) );
  INVD1BWP7T35P140 U60 ( .I(intadd_5_SUM_5_), .ZN(VinMinusMean_3[9]) );
  INVD1BWP7T35P140 U61 ( .I(intadd_1_SUM_6_), .ZN(VinMinusMean_7[10]) );
  OR3D1BWP7T35P140 U62 ( .A1(n_zz_30[1]), .A2(VinMinusMean_0[0]), .A3(
        n_zz_30[2]), .Z(n5) );
  ND2D1BWP7T35P140 U63 ( .A1(n_zz_30[3]), .A2(n5), .ZN(n3) );
  NR2D1BWP7T35P140 U64 ( .A1(n_zz_30[3]), .A2(n5), .ZN(n4) );
  AOI21D1BWP7T35P140 U65 ( .A1(v_in_7[0]), .A2(n3), .B(n4), .ZN(intadd_1_CI)
         );
  INVD1BWP7T35P140 U66 ( .I(v_in_7[1]), .ZN(intadd_1_A_0_) );
  INVD1BWP7T35P140 U67 ( .I(v_in_7[2]), .ZN(intadd_1_A_1_) );
  INVD1BWP7T35P140 U68 ( .I(v_in_7[3]), .ZN(intadd_1_A_2_) );
  INVD1BWP7T35P140 U69 ( .I(v_in_7[4]), .ZN(intadd_1_A_3_) );
  INVD1BWP7T35P140 U70 ( .I(v_in_7[5]), .ZN(intadd_1_A_4_) );
  INVD1BWP7T35P140 U71 ( .I(v_in_7[6]), .ZN(intadd_1_A_5_) );
  INVD1BWP7T35P140 U72 ( .I(intadd_3_SUM_6_), .ZN(VinMinusMean_5[10]) );
  AOI21D1BWP7T35P140 U73 ( .A1(v_in_5[0]), .A2(n3), .B(n4), .ZN(intadd_3_CI)
         );
  INVD1BWP7T35P140 U74 ( .I(v_in_5[1]), .ZN(intadd_3_A_0_) );
  INVD1BWP7T35P140 U75 ( .I(v_in_5[2]), .ZN(intadd_3_A_1_) );
  INVD1BWP7T35P140 U76 ( .I(v_in_5[3]), .ZN(intadd_3_A_2_) );
  INVD1BWP7T35P140 U77 ( .I(v_in_5[4]), .ZN(intadd_3_A_3_) );
  INVD1BWP7T35P140 U78 ( .I(v_in_5[5]), .ZN(intadd_3_A_4_) );
  INVD1BWP7T35P140 U79 ( .I(v_in_5[6]), .ZN(intadd_3_A_5_) );
  INVD1BWP7T35P140 U80 ( .I(intadd_4_SUM_6_), .ZN(VinMinusMean_4[10]) );
  AOI21D1BWP7T35P140 U81 ( .A1(v_in_4[0]), .A2(n3), .B(n4), .ZN(intadd_4_CI)
         );
  INVD1BWP7T35P140 U82 ( .I(v_in_4[1]), .ZN(intadd_4_A_0_) );
  INVD1BWP7T35P140 U83 ( .I(v_in_4[2]), .ZN(intadd_4_A_1_) );
  INVD1BWP7T35P140 U84 ( .I(v_in_4[3]), .ZN(intadd_4_A_2_) );
  INVD1BWP7T35P140 U85 ( .I(v_in_4[4]), .ZN(intadd_4_A_3_) );
  INVD1BWP7T35P140 U86 ( .I(v_in_4[5]), .ZN(intadd_4_A_4_) );
  INVD1BWP7T35P140 U87 ( .I(v_in_4[6]), .ZN(intadd_4_A_5_) );
  INVD1BWP7T35P140 U88 ( .I(intadd_2_SUM_6_), .ZN(VinMinusMean_6[10]) );
  AOI21D1BWP7T35P140 U89 ( .A1(v_in_6[0]), .A2(n3), .B(n4), .ZN(intadd_2_CI)
         );
  INVD1BWP7T35P140 U90 ( .I(v_in_6[1]), .ZN(intadd_2_A_0_) );
  INVD1BWP7T35P140 U91 ( .I(v_in_6[2]), .ZN(intadd_2_A_1_) );
  INVD1BWP7T35P140 U92 ( .I(v_in_6[3]), .ZN(intadd_2_A_2_) );
  INVD1BWP7T35P140 U93 ( .I(v_in_6[4]), .ZN(intadd_2_A_3_) );
  INVD1BWP7T35P140 U94 ( .I(v_in_6[5]), .ZN(intadd_2_A_4_) );
  INVD1BWP7T35P140 U95 ( .I(v_in_6[6]), .ZN(intadd_2_A_5_) );
  INVD1BWP7T35P140 U96 ( .I(intadd_6_SUM_6_), .ZN(VinMinusMean_2[10]) );
  AOI21D1BWP7T35P140 U97 ( .A1(v_in_2[0]), .A2(n3), .B(n4), .ZN(intadd_6_CI)
         );
  INVD1BWP7T35P140 U98 ( .I(v_in_2[1]), .ZN(intadd_6_A_0_) );
  INVD1BWP7T35P140 U99 ( .I(v_in_2[2]), .ZN(intadd_6_A_1_) );
  INVD1BWP7T35P140 U100 ( .I(v_in_2[3]), .ZN(intadd_6_A_2_) );
  INVD1BWP7T35P140 U101 ( .I(v_in_2[4]), .ZN(intadd_6_A_3_) );
  INVD1BWP7T35P140 U102 ( .I(v_in_2[5]), .ZN(intadd_6_A_4_) );
  INVD1BWP7T35P140 U103 ( .I(v_in_2[6]), .ZN(intadd_6_A_5_) );
  INVD1BWP7T35P140 U104 ( .I(intadd_8_SUM_6_), .ZN(VinMinusMean_0[10]) );
  AOI21D1BWP7T35P140 U105 ( .A1(v_in_0[0]), .A2(n3), .B(n4), .ZN(intadd_8_CI)
         );
  INVD1BWP7T35P140 U106 ( .I(v_in_0[1]), .ZN(intadd_8_B_0_) );
  INVD1BWP7T35P140 U107 ( .I(v_in_0[2]), .ZN(intadd_8_B_1_) );
  INVD1BWP7T35P140 U108 ( .I(v_in_0[3]), .ZN(intadd_8_B_2_) );
  INVD1BWP7T35P140 U109 ( .I(v_in_0[4]), .ZN(intadd_8_B_3_) );
  INVD1BWP7T35P140 U110 ( .I(v_in_0[5]), .ZN(intadd_8_B_4_) );
  INVD1BWP7T35P140 U111 ( .I(v_in_0[6]), .ZN(intadd_8_B_5_) );
  INVD1BWP7T35P140 U112 ( .I(intadd_7_SUM_6_), .ZN(VinMinusMean_1[10]) );
  AOI21D1BWP7T35P140 U113 ( .A1(v_in_1[0]), .A2(n3), .B(n4), .ZN(intadd_7_CI)
         );
  INVD1BWP7T35P140 U114 ( .I(v_in_1[3]), .ZN(intadd_7_A_2_) );
  INVD1BWP7T35P140 U115 ( .I(v_in_1[4]), .ZN(intadd_7_A_3_) );
  INVD1BWP7T35P140 U116 ( .I(v_in_1[5]), .ZN(intadd_7_A_4_) );
  INVD1BWP7T35P140 U117 ( .I(v_in_1[6]), .ZN(intadd_7_A_5_) );
  INVD1BWP7T35P140 U118 ( .I(intadd_5_SUM_6_), .ZN(VinMinusMean_3[10]) );
  AOI21D1BWP7T35P140 U119 ( .A1(v_in_3[0]), .A2(n3), .B(n4), .ZN(intadd_5_CI)
         );
  INVD1BWP7T35P140 U120 ( .I(v_in_3[3]), .ZN(intadd_5_A_2_) );
  INVD1BWP7T35P140 U121 ( .I(v_in_3[4]), .ZN(intadd_5_A_3_) );
  INVD1BWP7T35P140 U122 ( .I(v_in_3[5]), .ZN(intadd_5_A_4_) );
  INVD1BWP7T35P140 U123 ( .I(v_in_3[6]), .ZN(intadd_5_A_5_) );
  INVD1BWP7T35P140 U124 ( .I(n_zz_30_11), .ZN(intadd_1_B_6_) );
  INVD1BWP7T35P140 U125 ( .I(intadd_0_n1), .ZN(SumXin[10]) );
  INVD1BWP7T35P140 U126 ( .I(v_in_3[0]), .ZN(n8) );
  NR2D1BWP7T35P140 U127 ( .A1(n8), .A2(n10), .ZN(n20) );
  AOI21D1BWP7T35P140 U128 ( .A1(n8), .A2(n10), .B(n20), .ZN(intadd_0_A_0_) );
  INVD1BWP7T35P140 U129 ( .I(v_in_3[1]), .ZN(intadd_5_A_0_) );
  NR2D1BWP7T35P140 U130 ( .A1(intadd_5_A_0_), .A2(intadd_7_A_0_), .ZN(
        intadd_13_B_1_) );
  INVD1BWP7T35P140 U131 ( .I(v_in_3[2]), .ZN(intadd_5_A_1_) );
  NR2D1BWP7T35P140 U132 ( .A1(intadd_5_A_1_), .A2(intadd_7_A_1_), .ZN(
        intadd_11_CI) );
  AOI21D1BWP7T35P140 U133 ( .A1(intadd_5_A_1_), .A2(intadd_7_A_1_), .B(
        intadd_11_CI), .ZN(intadd_13_A_1_) );
  INVD1BWP7T35P140 U134 ( .I(v_in_6[7]), .ZN(intadd_14_A_1_) );
  INVD1BWP7T35P140 U135 ( .I(v_in_4[7]), .ZN(intadd_14_B_1_) );
  INVD1BWP7T35P140 U136 ( .I(n1), .ZN(intadd_14_A_2_) );
  INVD1BWP7T35P140 U137 ( .I(n2), .ZN(intadd_14_B_2_) );
  FA1D1BWP7T35P140 U138 ( .A(v_in_6[2]), .B(v_in_4[2]), .CI(v_in_2[2]), .CO(
        intadd_12_A_1_), .S(intadd_15_A_1_) );
  IND2D1BWP7T35P140 U139 ( .A1(n4), .B1(n3), .ZN(n9) );
  INVD1BWP7T35P140 U140 ( .I(n9), .ZN(n11) );
  MAOI22D1BWP7T35P140 U141 ( .A1(n11), .A2(v_in_0[0]), .B1(v_in_0[0]), .B2(n11), .ZN(VinMinusMean_0[3]) );
  INVD1BWP7T35P140 U142 ( .I(n_zz_30[2]), .ZN(n6) );
  NR2D1BWP7T35P140 U143 ( .A1(n_zz_30[1]), .A2(VinMinusMean_0[0]), .ZN(n7) );
  OA21D0BWP7T35P140 U144 ( .A1(n6), .A2(n7), .B(n5), .Z(VinMinusMean_0[2]) );
  AOI21D1BWP7T35P140 U145 ( .A1(VinMinusMean_0[0]), .A2(n_zz_30[1]), .B(n7), 
        .ZN(VinMinusMean_0[1]) );
  MAOI22D1BWP7T35P140 U146 ( .A1(n11), .A2(v_in_1[0]), .B1(v_in_1[0]), .B2(n11), .ZN(VinMinusMean_1[3]) );
  MAOI22D1BWP7T35P140 U147 ( .A1(n11), .A2(v_in_2[0]), .B1(v_in_2[0]), .B2(n11), .ZN(VinMinusMean_2[3]) );
  AOI22D1BWP7T35P140 U148 ( .A1(n11), .A2(v_in_3[0]), .B1(n8), .B2(n9), .ZN(
        VinMinusMean_3[3]) );
  MAOI22D1BWP7T35P140 U149 ( .A1(n11), .A2(v_in_4[0]), .B1(v_in_4[0]), .B2(n11), .ZN(VinMinusMean_4[3]) );
  AOI22D1BWP7T35P140 U150 ( .A1(n11), .A2(v_in_5[0]), .B1(n10), .B2(n9), .ZN(
        VinMinusMean_5[3]) );
  MAOI22D1BWP7T35P140 U151 ( .A1(n11), .A2(v_in_6[0]), .B1(v_in_6[0]), .B2(n11), .ZN(VinMinusMean_6[3]) );
  MAOI22D1BWP7T35P140 U152 ( .A1(n11), .A2(v_in_7[0]), .B1(v_in_7[0]), .B2(n11), .ZN(VinMinusMean_7[3]) );
  FA1D1BWP7T35P140 U153 ( .A(v_in_5[7]), .B(v_in_3[7]), .CI(v_in_1[7]), .CO(n1), .S(n12) );
  INVD1BWP7T35P140 U154 ( .I(n12), .ZN(n16) );
  FA1D1BWP7T35P140 U155 ( .A(v_in_7[6]), .B(v_in_2[6]), .CI(v_in_0[6]), .CO(
        n15), .S(intadd_9_A_1_) );
  FA1D1BWP7T35P140 U156 ( .A(v_in_7[7]), .B(v_in_2[7]), .CI(v_in_0[7]), .CO(n2), .S(n13) );
  INVD1BWP7T35P140 U157 ( .I(n13), .ZN(n14) );
  FA1D1BWP7T35P140 U158 ( .A(n16), .B(n15), .CI(n14), .CO(intadd_9_B_3_), .S(
        intadd_10_A_3_) );
  FA1D1BWP7T35P140 U159 ( .A(v_in_6[6]), .B(v_in_4[6]), .CI(n17), .CO(
        intadd_9_B_2_), .S(intadd_10_A_2_) );
  FA1D1BWP7T35P140 U160 ( .A(v_in_5[5]), .B(v_in_3[5]), .CI(v_in_1[5]), .CO(
        n17), .S(intadd_10_B_1_) );
  FA1D1BWP7T35P140 U161 ( .A(v_in_6[5]), .B(v_in_4[5]), .CI(n18), .CO(
        intadd_10_B_2_), .S(intadd_11_A_2_) );
  FA1D1BWP7T35P140 U162 ( .A(v_in_7[3]), .B(v_in_6[3]), .CI(v_in_0[3]), .CO(
        intadd_11_A_1_), .S(intadd_12_B_1_) );
  FA1D1BWP7T35P140 U163 ( .A(v_in_4[4]), .B(v_in_2[4]), .CI(n19), .CO(
        intadd_11_B_2_), .S(intadd_12_A_2_) );
  FA1D1BWP7T35P140 U164 ( .A(v_in_5[4]), .B(v_in_3[4]), .CI(v_in_1[4]), .CO(
        n18), .S(intadd_12_B_2_) );
  FA1D1BWP7T35P140 U165 ( .A(v_in_5[3]), .B(v_in_3[3]), .CI(v_in_1[3]), .CO(
        n19), .S(intadd_13_B_2_) );
  AOI21D1BWP7T35P140 U166 ( .A1(intadd_5_A_0_), .A2(intadd_7_A_0_), .B(
        intadd_13_B_1_), .ZN(n22) );
  FA1D1BWP7T35P140 U167 ( .A(v_in_7[0]), .B(v_in_6[0]), .CI(v_in_1[0]), .CO(
        n21), .S(intadd_0_CI) );
  FA1D1BWP7T35P140 U168 ( .A(n22), .B(n21), .CI(n20), .CO(intadd_16_B_2_), .S(
        intadd_0_A_1_) );
endmodule


module s_table ( index, din, s1, s2 );
  input [2:0] index;
  input [7:0] din;
  output [18:0] s1;
  output [18:0] s2;
  wire   intadd_19_B_8_, intadd_19_B_7_, intadd_19_B_6_, intadd_19_B_5_,
         intadd_19_B_4_, intadd_19_B_3_, intadd_19_B_2_, intadd_19_B_1_,
         intadd_19_B_0_, intadd_19_CI, intadd_19_SUM_8_, intadd_19_SUM_7_,
         intadd_19_SUM_6_, intadd_19_SUM_5_, intadd_19_SUM_4_,
         intadd_19_SUM_3_, intadd_19_SUM_2_, intadd_19_SUM_1_,
         intadd_19_SUM_0_, intadd_19_n9, intadd_19_n8, intadd_19_n7,
         intadd_19_n6, intadd_19_n5, intadd_19_n4, intadd_19_n3, intadd_19_n2,
         intadd_19_n1, intadd_20_A_8_, intadd_20_A_7_, intadd_20_A_6_,
         intadd_20_A_5_, intadd_20_A_4_, intadd_20_A_3_, intadd_20_A_2_,
         intadd_20_A_1_, intadd_20_A_0_, intadd_20_B_8_, intadd_20_B_7_,
         intadd_20_B_6_, intadd_20_B_5_, intadd_20_B_4_, intadd_20_B_3_,
         intadd_20_B_2_, intadd_20_B_1_, intadd_20_B_0_, intadd_20_CI,
         intadd_20_SUM_8_, intadd_20_SUM_7_, intadd_20_SUM_6_,
         intadd_20_SUM_5_, intadd_20_SUM_4_, intadd_20_SUM_3_,
         intadd_20_SUM_2_, intadd_20_SUM_1_, intadd_20_SUM_0_, intadd_20_n9,
         intadd_20_n8, intadd_20_n7, intadd_20_n6, intadd_20_n5, intadd_20_n4,
         intadd_20_n3, intadd_20_n2, intadd_20_n1, intadd_21_A_5_,
         intadd_21_A_4_, intadd_21_A_3_, intadd_21_A_2_, intadd_21_A_1_,
         intadd_21_B_6_, intadd_21_B_5_, intadd_21_B_4_, intadd_21_B_3_,
         intadd_21_B_2_, intadd_21_B_1_, intadd_21_CI, intadd_21_SUM_6_,
         intadd_21_SUM_5_, intadd_21_SUM_4_, intadd_21_SUM_3_,
         intadd_21_SUM_2_, intadd_21_SUM_1_, intadd_21_SUM_0_, intadd_21_n7,
         intadd_21_n6, intadd_21_n5, intadd_21_n4, intadd_21_n3, intadd_21_n2,
         intadd_21_n1, intadd_22_A_6_, intadd_22_A_0_, intadd_22_B_6_,
         intadd_22_B_5_, intadd_22_B_4_, intadd_22_B_3_, intadd_22_B_2_,
         intadd_22_B_1_, intadd_22_B_0_, intadd_22_CI, intadd_22_SUM_6_,
         intadd_22_SUM_5_, intadd_22_SUM_4_, intadd_22_SUM_3_,
         intadd_22_SUM_2_, intadd_22_SUM_1_, intadd_22_SUM_0_, intadd_22_n7,
         intadd_22_n6, intadd_22_n5, intadd_22_n4, intadd_22_n3, intadd_22_n2,
         intadd_22_n1, intadd_23_A_1_, intadd_23_B_2_, intadd_23_B_1_,
         intadd_23_SUM_3_, intadd_23_SUM_0_, intadd_23_n4, intadd_23_n3,
         intadd_23_n2, intadd_23_n1, intadd_24_A_3_, intadd_24_A_2_,
         intadd_24_A_1_, intadd_24_A_0_, intadd_24_B_3_, intadd_24_B_2_,
         intadd_24_B_1_, intadd_24_B_0_, intadd_24_CI, intadd_24_SUM_1_,
         intadd_24_SUM_0_, intadd_24_n4, intadd_24_n3, intadd_24_n2,
         intadd_24_n1, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233;

  FA1D1BWP7T35P140 intadd_19_U10 ( .A(intadd_19_B_0_), .B(din[4]), .CI(
        intadd_19_CI), .CO(intadd_19_n9), .S(intadd_19_SUM_0_) );
  FA1D1BWP7T35P140 intadd_19_U9 ( .A(intadd_19_B_1_), .B(din[5]), .CI(
        intadd_19_n9), .CO(intadd_19_n8), .S(intadd_19_SUM_1_) );
  FA1D1BWP7T35P140 intadd_19_U8 ( .A(intadd_19_B_2_), .B(din[6]), .CI(
        intadd_19_n8), .CO(intadd_19_n7), .S(intadd_19_SUM_2_) );
  FA1D1BWP7T35P140 intadd_19_U7 ( .A(intadd_19_B_3_), .B(din[7]), .CI(
        intadd_19_n7), .CO(intadd_19_n6), .S(intadd_19_SUM_3_) );
  FA1D1BWP7T35P140 intadd_19_U6 ( .A(intadd_19_B_4_), .B(din[7]), .CI(
        intadd_19_n6), .CO(intadd_19_n5), .S(intadd_19_SUM_4_) );
  FA1D1BWP7T35P140 intadd_19_U5 ( .A(intadd_19_B_5_), .B(din[7]), .CI(
        intadd_19_n5), .CO(intadd_19_n4), .S(intadd_19_SUM_5_) );
  FA1D1BWP7T35P140 intadd_19_U4 ( .A(intadd_19_B_6_), .B(din[7]), .CI(
        intadd_19_n4), .CO(intadd_19_n3), .S(intadd_19_SUM_6_) );
  FA1D1BWP7T35P140 intadd_19_U3 ( .A(intadd_19_B_7_), .B(din[7]), .CI(
        intadd_19_n3), .CO(intadd_19_n2), .S(intadd_19_SUM_7_) );
  FA1D1BWP7T35P140 intadd_19_U2 ( .A(intadd_19_B_8_), .B(din[7]), .CI(
        intadd_19_n2), .CO(intadd_19_n1), .S(intadd_19_SUM_8_) );
  FA1D1BWP7T35P140 intadd_20_U10 ( .A(intadd_20_B_0_), .B(intadd_20_A_0_), 
        .CI(intadd_20_CI), .CO(intadd_20_n9), .S(intadd_20_SUM_0_) );
  FA1D1BWP7T35P140 intadd_20_U9 ( .A(intadd_20_B_1_), .B(intadd_20_A_1_), .CI(
        intadd_20_n9), .CO(intadd_20_n8), .S(intadd_20_SUM_1_) );
  FA1D1BWP7T35P140 intadd_20_U8 ( .A(intadd_20_B_2_), .B(intadd_20_A_2_), .CI(
        intadd_20_n8), .CO(intadd_20_n7), .S(intadd_20_SUM_2_) );
  FA1D1BWP7T35P140 intadd_20_U7 ( .A(intadd_20_B_3_), .B(intadd_20_A_3_), .CI(
        intadd_20_n7), .CO(intadd_20_n6), .S(intadd_20_SUM_3_) );
  FA1D1BWP7T35P140 intadd_20_U6 ( .A(intadd_20_B_4_), .B(intadd_20_A_4_), .CI(
        intadd_20_n6), .CO(intadd_20_n5), .S(intadd_20_SUM_4_) );
  FA1D1BWP7T35P140 intadd_20_U5 ( .A(intadd_20_B_5_), .B(intadd_20_A_5_), .CI(
        intadd_20_n5), .CO(intadd_20_n4), .S(intadd_20_SUM_5_) );
  FA1D1BWP7T35P140 intadd_20_U4 ( .A(intadd_20_B_6_), .B(intadd_20_A_6_), .CI(
        intadd_20_n4), .CO(intadd_20_n3), .S(intadd_20_SUM_6_) );
  FA1D1BWP7T35P140 intadd_20_U3 ( .A(intadd_20_B_7_), .B(intadd_20_A_7_), .CI(
        intadd_20_n3), .CO(intadd_20_n2), .S(intadd_20_SUM_7_) );
  FA1D1BWP7T35P140 intadd_20_U2 ( .A(intadd_20_B_8_), .B(intadd_20_A_8_), .CI(
        intadd_20_n2), .CO(intadd_20_n1), .S(intadd_20_SUM_8_) );
  FA1D1BWP7T35P140 intadd_21_U8 ( .A(intadd_20_A_0_), .B(din[1]), .CI(
        intadd_21_CI), .CO(intadd_21_n7), .S(intadd_21_SUM_0_) );
  FA1D1BWP7T35P140 intadd_21_U7 ( .A(intadd_21_B_1_), .B(intadd_21_A_1_), .CI(
        intadd_21_n7), .CO(intadd_21_n6), .S(intadd_21_SUM_1_) );
  FA1D1BWP7T35P140 intadd_21_U6 ( .A(intadd_21_B_2_), .B(intadd_21_A_2_), .CI(
        intadd_21_n6), .CO(intadd_21_n5), .S(intadd_21_SUM_2_) );
  FA1D1BWP7T35P140 intadd_21_U5 ( .A(intadd_21_B_3_), .B(intadd_21_A_3_), .CI(
        intadd_21_n5), .CO(intadd_21_n4), .S(intadd_21_SUM_3_) );
  FA1D1BWP7T35P140 intadd_21_U4 ( .A(intadd_21_B_4_), .B(intadd_21_A_4_), .CI(
        intadd_21_n4), .CO(intadd_21_n3), .S(intadd_21_SUM_4_) );
  FA1D1BWP7T35P140 intadd_21_U3 ( .A(intadd_21_B_5_), .B(intadd_21_A_5_), .CI(
        intadd_21_n3), .CO(intadd_21_n2), .S(intadd_21_SUM_5_) );
  FA1D1BWP7T35P140 intadd_21_U2 ( .A(intadd_21_B_6_), .B(din[6]), .CI(
        intadd_21_n2), .CO(intadd_21_n1), .S(intadd_21_SUM_6_) );
  FA1D1BWP7T35P140 intadd_22_U8 ( .A(intadd_22_B_0_), .B(intadd_22_A_0_), .CI(
        intadd_22_CI), .CO(intadd_22_n7), .S(intadd_22_SUM_0_) );
  FA1D1BWP7T35P140 intadd_22_U7 ( .A(intadd_22_B_1_), .B(intadd_20_CI), .CI(
        intadd_22_n7), .CO(intadd_22_n6), .S(intadd_22_SUM_1_) );
  FA1D1BWP7T35P140 intadd_22_U6 ( .A(intadd_22_B_2_), .B(intadd_20_A_1_), .CI(
        intadd_22_n6), .CO(intadd_22_n5), .S(intadd_22_SUM_2_) );
  FA1D1BWP7T35P140 intadd_22_U5 ( .A(intadd_22_B_3_), .B(intadd_20_A_2_), .CI(
        intadd_22_n5), .CO(intadd_22_n4), .S(intadd_22_SUM_3_) );
  FA1D1BWP7T35P140 intadd_22_U4 ( .A(intadd_22_B_4_), .B(intadd_20_A_3_), .CI(
        intadd_22_n4), .CO(intadd_22_n3), .S(intadd_22_SUM_4_) );
  FA1D1BWP7T35P140 intadd_22_U3 ( .A(intadd_22_B_5_), .B(intadd_20_A_4_), .CI(
        intadd_22_n3), .CO(intadd_22_n2), .S(intadd_22_SUM_5_) );
  FA1D1BWP7T35P140 intadd_22_U2 ( .A(intadd_22_B_6_), .B(intadd_22_A_6_), .CI(
        intadd_22_n2), .CO(intadd_22_n1), .S(intadd_22_SUM_6_) );
  FA1D1BWP7T35P140 intadd_23_U5 ( .A(din[5]), .B(din[7]), .CI(din[3]), .CO(
        intadd_23_n4), .S(intadd_23_SUM_0_) );
  FA1D1BWP7T35P140 intadd_23_U4 ( .A(intadd_23_B_1_), .B(intadd_23_A_1_), .CI(
        intadd_23_n4), .CO(intadd_23_n3), .S(intadd_20_B_7_) );
  FA1D1BWP7T35P140 intadd_23_U3 ( .A(intadd_23_B_2_), .B(din[5]), .CI(
        intadd_23_n3), .CO(intadd_23_n2), .S(intadd_20_B_8_) );
  FA1D1BWP7T35P140 intadd_23_U2 ( .A(din[6]), .B(din[7]), .CI(intadd_23_n2), 
        .CO(intadd_23_n1), .S(intadd_23_SUM_3_) );
  FA1D1BWP7T35P140 intadd_24_U5 ( .A(intadd_24_B_0_), .B(intadd_24_A_0_), .CI(
        intadd_24_CI), .CO(intadd_24_n4), .S(intadd_24_SUM_0_) );
  FA1D1BWP7T35P140 intadd_24_U4 ( .A(intadd_24_B_1_), .B(intadd_24_A_1_), .CI(
        intadd_24_n4), .CO(intadd_24_n3), .S(intadd_24_SUM_1_) );
  FA1D1BWP7T35P140 intadd_24_U3 ( .A(intadd_24_B_2_), .B(intadd_24_A_2_), .CI(
        intadd_24_n3), .CO(intadd_24_n2), .S(intadd_20_B_4_) );
  FA1D1BWP7T35P140 intadd_24_U2 ( .A(intadd_24_B_3_), .B(intadd_24_A_3_), .CI(
        intadd_24_n2), .CO(intadd_24_n1), .S(intadd_20_A_5_) );
  AN2D0BWP7T35P140 U2 ( .A1(n21), .A2(n14), .Z(n1) );
  INVD1BWP7T35P140 U3 ( .I(n229), .ZN(n2) );
  INVD1BWP7T35P140 U4 ( .I(n1), .ZN(n3) );
  INVD1BWP7T35P140 U5 ( .I(n218), .ZN(n4) );
  NR2D1BWP7T35P140 U6 ( .A1(index[2]), .A2(index[0]), .ZN(n219) );
  DEL025D1BWP7T35P140 U7 ( .I(s1[16]), .Z(s1[18]) );
  DEL025D1BWP7T35P140 U8 ( .I(s2[16]), .Z(s2[18]) );
  INVD1BWP7T35P140 U9 ( .I(intadd_21_SUM_0_), .ZN(intadd_19_B_2_) );
  INVD1BWP7T35P140 U10 ( .I(intadd_21_SUM_2_), .ZN(intadd_19_B_4_) );
  INVD1BWP7T35P140 U11 ( .I(din[6]), .ZN(intadd_24_A_0_) );
  INVD1BWP7T35P140 U12 ( .I(din[2]), .ZN(intadd_19_B_0_) );
  INVD1BWP7T35P140 U13 ( .I(din[3]), .ZN(n228) );
  ND2D1BWP7T35P140 U14 ( .A1(din[2]), .A2(din[1]), .ZN(n210) );
  ND2D1BWP7T35P140 U15 ( .A1(n228), .A2(n210), .ZN(n48) );
  AOI211D0BWP7T35P140 U16 ( .A1(din[4]), .A2(n48), .B(din[5]), .C(
        intadd_24_A_0_), .ZN(n65) );
  INVD1BWP7T35P140 U17 ( .I(din[7]), .ZN(n229) );
  INVD1BWP7T35P140 U18 ( .I(din[4]), .ZN(n230) );
  INVD1BWP7T35P140 U19 ( .I(din[5]), .ZN(n212) );
  NR2D1BWP7T35P140 U20 ( .A1(n230), .A2(n212), .ZN(n190) );
  ND2D1BWP7T35P140 U21 ( .A1(n230), .A2(n212), .ZN(n191) );
  ND2D1BWP7T35P140 U22 ( .A1(din[1]), .A2(din[0]), .ZN(n22) );
  ND2D1BWP7T35P140 U23 ( .A1(intadd_19_B_0_), .A2(n22), .ZN(n27) );
  ND2D1BWP7T35P140 U24 ( .A1(din[3]), .A2(n27), .ZN(n47) );
  AOI22D1BWP7T35P140 U25 ( .A1(n228), .A2(n230), .B1(n210), .B2(n47), .ZN(n58)
         );
  AO21D1BWP7T35P140 U26 ( .A1(din[4]), .A2(din[3]), .B(n58), .Z(n54) );
  ND2D1BWP7T35P140 U27 ( .A1(n191), .A2(n54), .ZN(n56) );
  IND2D1BWP7T35P140 U28 ( .A1(n190), .B1(n56), .ZN(n63) );
  ND2D1BWP7T35P140 U29 ( .A1(n212), .A2(intadd_24_A_0_), .ZN(n193) );
  ND2D1BWP7T35P140 U30 ( .A1(n63), .A2(n193), .ZN(n7) );
  ND2D1BWP7T35P140 U31 ( .A1(n229), .A2(intadd_24_A_0_), .ZN(n208) );
  NR2D1BWP7T35P140 U32 ( .A1(n7), .A2(n208), .ZN(n6) );
  AN3D0BWP7T35P140 U33 ( .A1(n63), .A2(intadd_24_A_0_), .A3(din[5]), .Z(n68)
         );
  NR3D0BWP7T35P140 U34 ( .A1(n65), .A2(n68), .A3(n229), .ZN(n5) );
  AOI211D0BWP7T35P140 U35 ( .A1(n65), .A2(n229), .B(n6), .C(n5), .ZN(
        intadd_22_A_6_) );
  INVD1BWP7T35P140 U36 ( .I(din[1]), .ZN(n227) );
  INVD1BWP7T35P140 U37 ( .I(din[0]), .ZN(n222) );
  ND2D1BWP7T35P140 U38 ( .A1(n227), .A2(n222), .ZN(n70) );
  NR2D1BWP7T35P140 U39 ( .A1(din[2]), .A2(n70), .ZN(n203) );
  ND2D1BWP7T35P140 U40 ( .A1(n203), .A2(n228), .ZN(n33) );
  NR2D1BWP7T35P140 U41 ( .A1(din[4]), .A2(n33), .ZN(n38) );
  ND2D1BWP7T35P140 U42 ( .A1(n38), .A2(n212), .ZN(n46) );
  NR2D1BWP7T35P140 U43 ( .A1(din[6]), .A2(n46), .ZN(n45) );
  NR2D1BWP7T35P140 U44 ( .A1(din[7]), .A2(n45), .ZN(intadd_20_A_4_) );
  AOI21D1BWP7T35P140 U45 ( .A1(n45), .A2(din[7]), .B(intadd_20_A_4_), .ZN(
        intadd_20_A_3_) );
  INVD1BWP7T35P140 U46 ( .I(n33), .ZN(n133) );
  ND2D1BWP7T35P140 U47 ( .A1(n133), .A2(intadd_19_B_2_), .ZN(n132) );
  NR2D1BWP7T35P140 U48 ( .A1(intadd_21_SUM_1_), .A2(n132), .ZN(n73) );
  ND2D1BWP7T35P140 U49 ( .A1(n73), .A2(intadd_19_B_4_), .ZN(n78) );
  NR2D1BWP7T35P140 U50 ( .A1(intadd_21_SUM_4_), .A2(n78), .ZN(n104) );
  NR2D1BWP7T35P140 U51 ( .A1(n2), .A2(n104), .ZN(n16) );
  INR2D1BWP7T35P140 U52 ( .A1(index[0]), .B1(index[2]), .ZN(n21) );
  ND2D1BWP7T35P140 U53 ( .A1(index[1]), .A2(n21), .ZN(n215) );
  INR2D1BWP7T35P140 U54 ( .A1(n16), .B1(n215), .ZN(n11) );
  INVD1BWP7T35P140 U55 ( .I(index[1]), .ZN(n14) );
  ND2D1BWP7T35P140 U56 ( .A1(index[2]), .A2(index[0]), .ZN(n12) );
  NR2D1BWP7T35P140 U57 ( .A1(n14), .A2(n12), .ZN(n218) );
  INVD1BWP7T35P140 U58 ( .I(n218), .ZN(n217) );
  IND2D1BWP7T35P140 U59 ( .A1(index[0]), .B1(index[2]), .ZN(n15) );
  NR2D1BWP7T35P140 U60 ( .A1(n14), .A2(n15), .ZN(n146) );
  INVD1BWP7T35P140 U61 ( .I(intadd_22_A_6_), .ZN(n86) );
  NR2D1BWP7T35P140 U62 ( .A1(intadd_22_n1), .A2(n86), .ZN(n85) );
  INVD1BWP7T35P140 U63 ( .I(n7), .ZN(n8) );
  NR2D1BWP7T35P140 U64 ( .A1(n229), .A2(intadd_24_A_0_), .ZN(n207) );
  NR2D1BWP7T35P140 U65 ( .A1(n212), .A2(intadd_24_A_0_), .ZN(n192) );
  AOI211D0BWP7T35P140 U66 ( .A1(n8), .A2(n208), .B(n207), .C(n192), .ZN(n166)
         );
  ND2D1BWP7T35P140 U67 ( .A1(n85), .A2(n166), .ZN(n9) );
  ND2D1BWP7T35P140 U68 ( .A1(n229), .A2(n9), .ZN(n94) );
  ND2D1BWP7T35P140 U69 ( .A1(index[1]), .A2(n219), .ZN(n150) );
  MAOI22D1BWP7T35P140 U70 ( .A1(din[7]), .A2(n146), .B1(n94), .B2(n150), .ZN(
        n188) );
  OAI21D1BWP7T35P140 U71 ( .A1(n229), .A2(n4), .B(n188), .ZN(n10) );
  NR2D1BWP7T35P140 U72 ( .A1(n11), .A2(n10), .ZN(n200) );
  NR3D0BWP7T35P140 U73 ( .A1(intadd_23_n1), .A2(intadd_23_SUM_3_), .A3(
        intadd_20_n1), .ZN(n111) );
  NR2D1BWP7T35P140 U74 ( .A1(n2), .A2(n111), .ZN(n20) );
  NR2D1BWP7T35P140 U75 ( .A1(index[1]), .A2(n12), .ZN(n199) );
  OAI22D1BWP7T35P140 U76 ( .A1(index[2]), .A2(n229), .B1(intadd_20_A_3_), .B2(
        n15), .ZN(n17) );
  AOI22D1BWP7T35P140 U77 ( .A1(n20), .A2(n199), .B1(n14), .B2(n17), .ZN(n13)
         );
  ND2D1BWP7T35P140 U78 ( .A1(n200), .A2(n13), .ZN(s2[16]) );
  DEL025D1BWP7T35P140 U79 ( .I(s2[16]), .Z(s2[17]) );
  NR2D1BWP7T35P140 U80 ( .A1(n229), .A2(n3), .ZN(n197) );
  ND2D1BWP7T35P140 U81 ( .A1(n219), .A2(n14), .ZN(n195) );
  NR2D1BWP7T35P140 U82 ( .A1(n15), .A2(index[1]), .ZN(n214) );
  INVD1BWP7T35P140 U83 ( .I(n214), .ZN(n202) );
  OAI22D1BWP7T35P140 U84 ( .A1(n229), .A2(n195), .B1(n94), .B2(n202), .ZN(n99)
         );
  AOI211D0BWP7T35P140 U85 ( .A1(n16), .A2(n199), .B(n197), .C(n99), .ZN(n19)
         );
  ND2D1BWP7T35P140 U86 ( .A1(index[1]), .A2(n17), .ZN(n18) );
  ND2D1BWP7T35P140 U87 ( .A1(n19), .A2(n18), .ZN(n112) );
  AO21D1BWP7T35P140 U88 ( .A1(n218), .A2(n20), .B(n112), .Z(s1[16]) );
  DEL025D1BWP7T35P140 U89 ( .I(s1[16]), .Z(s1[17]) );
  INVD1BWP7T35P140 U90 ( .I(n150), .ZN(n213) );
  OA31D0BWP7T35P140 U91 ( .A1(n21), .A2(n214), .A3(n213), .B(din[0]), .Z(s1[1]) );
  ND2D1BWP7T35P140 U92 ( .A1(n22), .A2(n70), .ZN(n221) );
  INVD1BWP7T35P140 U93 ( .I(n221), .ZN(intadd_22_B_0_) );
  ND2D1BWP7T35P140 U94 ( .A1(din[2]), .A2(din[0]), .ZN(intadd_24_A_1_) );
  ND2D1BWP7T35P140 U95 ( .A1(intadd_19_B_0_), .A2(n222), .ZN(n226) );
  OAI221D0BWP7T35P140 U96 ( .A1(din[1]), .A2(intadd_19_B_0_), .B1(n227), .B2(
        n226), .C(intadd_24_A_1_), .ZN(intadd_22_B_1_) );
  INVD1BWP7T35P140 U97 ( .I(n215), .ZN(n186) );
  AOI22D1BWP7T35P140 U98 ( .A1(din[2]), .A2(n186), .B1(n218), .B2(
        intadd_22_B_0_), .ZN(n25) );
  INVD1BWP7T35P140 U99 ( .I(n199), .ZN(n223) );
  ND2D1BWP7T35P140 U100 ( .A1(n195), .A2(n223), .ZN(n29) );
  AOI21D1BWP7T35P140 U101 ( .A1(din[2]), .A2(n70), .B(n203), .ZN(n153) );
  AOI22D1BWP7T35P140 U102 ( .A1(din[0]), .A2(n29), .B1(n213), .B2(n153), .ZN(
        n24) );
  AOI22D1BWP7T35P140 U103 ( .A1(n1), .A2(intadd_22_B_1_), .B1(n214), .B2(
        intadd_22_B_1_), .ZN(n23) );
  ND3D1BWP7T35P140 U104 ( .A1(n25), .A2(n24), .A3(n23), .ZN(s1[3]) );
  INVD1BWP7T35P140 U105 ( .I(n203), .ZN(n26) );
  AOI22D1BWP7T35P140 U106 ( .A1(din[3]), .A2(n203), .B1(n26), .B2(n228), .ZN(
        intadd_22_A_0_) );
  ND2D1BWP7T35P140 U107 ( .A1(n210), .A2(n27), .ZN(n28) );
  MUX2ND1BWP7T35P140 U108 ( .I0(din[3]), .I1(n228), .S(n28), .ZN(
        intadd_22_B_2_) );
  AOI22D1BWP7T35P140 U109 ( .A1(n218), .A2(n153), .B1(intadd_22_B_0_), .B2(n29), .ZN(n32) );
  OAI22D1BWP7T35P140 U110 ( .A1(intadd_22_SUM_0_), .A2(n202), .B1(n228), .B2(
        n215), .ZN(n30) );
  AOI21D1BWP7T35P140 U111 ( .A1(n1), .A2(intadd_22_B_2_), .B(n30), .ZN(n31) );
  OAI211D0BWP7T35P140 U112 ( .A1(intadd_22_A_0_), .A2(n150), .B(n32), .C(n31), 
        .ZN(s1[4]) );
  NR2D1BWP7T35P140 U113 ( .A1(n230), .A2(n222), .ZN(intadd_21_B_1_) );
  AOI21D1BWP7T35P140 U114 ( .A1(n230), .A2(n222), .B(intadd_21_B_1_), .ZN(
        intadd_20_A_0_) );
  AO21D1BWP7T35P140 U115 ( .A1(din[4]), .A2(n33), .B(n38), .Z(intadd_20_CI) );
  AOI22D1BWP7T35P140 U116 ( .A1(n199), .A2(n153), .B1(n186), .B2(
        intadd_20_A_0_), .ZN(n37) );
  INVD1BWP7T35P140 U117 ( .I(n195), .ZN(n163) );
  NR2D1BWP7T35P140 U118 ( .A1(n150), .A2(intadd_20_CI), .ZN(n35) );
  OAI22D1BWP7T35P140 U119 ( .A1(intadd_22_SUM_1_), .A2(n202), .B1(
        intadd_20_SUM_0_), .B2(n217), .ZN(n34) );
  AOI211D0BWP7T35P140 U120 ( .A1(n163), .A2(intadd_22_B_1_), .B(n35), .C(n34), 
        .ZN(n36) );
  OAI211D0BWP7T35P140 U121 ( .A1(intadd_19_SUM_0_), .A2(n3), .B(n37), .C(n36), 
        .ZN(s1[5]) );
  OAI21D1BWP7T35P140 U122 ( .A1(n38), .A2(n212), .B(n46), .ZN(intadd_20_A_1_)
         );
  NR2D1BWP7T35P140 U123 ( .A1(n228), .A2(n222), .ZN(intadd_21_CI) );
  AO21D1BWP7T35P140 U124 ( .A1(n228), .A2(n222), .B(intadd_21_CI), .Z(
        intadd_19_B_1_) );
  NR2D1BWP7T35P140 U125 ( .A1(din[1]), .A2(din[5]), .ZN(n39) );
  INVD1BWP7T35P140 U126 ( .I(intadd_21_B_1_), .ZN(n40) );
  NR2D1BWP7T35P140 U127 ( .A1(n39), .A2(n40), .ZN(n204) );
  ND2D1BWP7T35P140 U128 ( .A1(din[1]), .A2(din[5]), .ZN(n205) );
  AOI22D1BWP7T35P140 U129 ( .A1(din[1]), .A2(n212), .B1(din[5]), .B2(n227), 
        .ZN(n209) );
  AOI22D1BWP7T35P140 U130 ( .A1(n204), .A2(n205), .B1(n40), .B2(n209), .ZN(
        intadd_20_B_1_) );
  MAOI22D1BWP7T35P140 U131 ( .A1(n203), .A2(n228), .B1(intadd_19_B_1_), .B2(
        n203), .ZN(n125) );
  AOI22D1BWP7T35P140 U132 ( .A1(n199), .A2(n125), .B1(n186), .B2(
        intadd_20_B_1_), .ZN(n44) );
  NR2D1BWP7T35P140 U133 ( .A1(intadd_20_SUM_1_), .A2(n217), .ZN(n42) );
  OAI22D1BWP7T35P140 U134 ( .A1(intadd_22_SUM_2_), .A2(n202), .B1(
        intadd_19_SUM_1_), .B2(n3), .ZN(n41) );
  AOI211D0BWP7T35P140 U135 ( .A1(intadd_22_B_2_), .A2(n163), .B(n42), .C(n41), 
        .ZN(n43) );
  OAI211D0BWP7T35P140 U136 ( .A1(n150), .A2(intadd_20_A_1_), .B(n44), .C(n43), 
        .ZN(s1[6]) );
  AO21D1BWP7T35P140 U137 ( .A1(din[6]), .A2(n46), .B(n45), .Z(intadd_20_A_2_)
         );
  ND2D1BWP7T35P140 U138 ( .A1(n48), .A2(n47), .ZN(n49) );
  MUX2ND1BWP7T35P140 U139 ( .I0(din[4]), .I1(n230), .S(n49), .ZN(
        intadd_22_B_3_) );
  OAI22D1BWP7T35P140 U140 ( .A1(intadd_20_SUM_2_), .A2(n217), .B1(
        intadd_24_SUM_0_), .B2(n215), .ZN(n51) );
  OAI22D1BWP7T35P140 U141 ( .A1(intadd_22_SUM_3_), .A2(n202), .B1(
        intadd_19_SUM_2_), .B2(n3), .ZN(n50) );
  AOI211D0BWP7T35P140 U142 ( .A1(n163), .A2(intadd_22_B_3_), .B(n51), .C(n50), 
        .ZN(n53) );
  OAI211D0BWP7T35P140 U143 ( .A1(n133), .A2(intadd_19_B_2_), .B(n199), .C(n132), .ZN(n52) );
  OAI211D0BWP7T35P140 U144 ( .A1(intadd_20_A_2_), .A2(n150), .B(n53), .C(n52), 
        .ZN(s1[7]) );
  ND2D1BWP7T35P140 U145 ( .A1(din[5]), .A2(n230), .ZN(n97) );
  NR2D1BWP7T35P140 U146 ( .A1(din[5]), .A2(n230), .ZN(n55) );
  OAI22D1BWP7T35P140 U147 ( .A1(n190), .A2(n56), .B1(n55), .B2(n54), .ZN(n57)
         );
  OAI21D1BWP7T35P140 U148 ( .A1(n58), .A2(n97), .B(n57), .ZN(intadd_22_B_4_)
         );
  MAOI22D1BWP7T35P140 U149 ( .A1(din[0]), .A2(intadd_20_A_3_), .B1(
        intadd_20_A_3_), .B2(din[0]), .ZN(n142) );
  INVD1BWP7T35P140 U150 ( .I(intadd_22_SUM_4_), .ZN(n138) );
  INVD1BWP7T35P140 U151 ( .I(n146), .ZN(n167) );
  OAI22D1BWP7T35P140 U152 ( .A1(intadd_24_SUM_1_), .A2(n215), .B1(n222), .B2(
        n167), .ZN(n60) );
  OAI22D1BWP7T35P140 U153 ( .A1(intadd_20_SUM_3_), .A2(n217), .B1(
        intadd_19_SUM_3_), .B2(n3), .ZN(n59) );
  AOI211D0BWP7T35P140 U154 ( .A1(n214), .A2(n138), .B(n60), .C(n59), .ZN(n62)
         );
  AOI21D1BWP7T35P140 U155 ( .A1(intadd_21_SUM_1_), .A2(n132), .B(n73), .ZN(
        n139) );
  AOI22D1BWP7T35P140 U156 ( .A1(n163), .A2(intadd_22_B_4_), .B1(n199), .B2(
        n139), .ZN(n61) );
  OAI211D0BWP7T35P140 U157 ( .A1(n142), .A2(n150), .B(n62), .C(n61), .ZN(s1[8]) );
  ND2D1BWP7T35P140 U158 ( .A1(din[6]), .A2(n212), .ZN(n64) );
  AOI22D1BWP7T35P140 U159 ( .A1(din[5]), .A2(intadd_24_A_0_), .B1(n64), .B2(
        n63), .ZN(n67) );
  INVD1BWP7T35P140 U160 ( .I(n65), .ZN(n66) );
  OAI21D1BWP7T35P140 U161 ( .A1(n68), .A2(n67), .B(n66), .ZN(intadd_22_B_6_)
         );
  NR2D1BWP7T35P140 U162 ( .A1(din[0]), .A2(intadd_20_A_4_), .ZN(n69) );
  MUX2ND1BWP7T35P140 U163 ( .I0(n221), .I1(n70), .S(n69), .ZN(n149) );
  OAI22D1BWP7T35P140 U164 ( .A1(intadd_22_SUM_5_), .A2(n202), .B1(
        intadd_20_B_4_), .B2(n215), .ZN(n72) );
  OAI22D1BWP7T35P140 U165 ( .A1(intadd_20_SUM_4_), .A2(n217), .B1(
        intadd_19_SUM_4_), .B2(n3), .ZN(n71) );
  AOI211D0BWP7T35P140 U166 ( .A1(n146), .A2(intadd_22_B_0_), .B(n72), .C(n71), 
        .ZN(n75) );
  OA21D0BWP7T35P140 U167 ( .A1(n73), .A2(intadd_19_B_4_), .B(n78), .Z(n145) );
  AOI22D1BWP7T35P140 U168 ( .A1(n163), .A2(intadd_22_B_6_), .B1(n199), .B2(
        n145), .ZN(n74) );
  OAI211D0BWP7T35P140 U169 ( .A1(n149), .A2(n150), .B(n75), .C(n74), .ZN(s1[9]) );
  INVD1BWP7T35P140 U170 ( .I(intadd_21_SUM_3_), .ZN(intadd_19_B_5_) );
  OAI22D1BWP7T35P140 U171 ( .A1(intadd_20_A_5_), .A2(n215), .B1(
        intadd_20_SUM_5_), .B2(n217), .ZN(n77) );
  OAI22D1BWP7T35P140 U172 ( .A1(intadd_19_SUM_5_), .A2(n3), .B1(
        intadd_22_SUM_6_), .B2(n202), .ZN(n76) );
  AOI211D0BWP7T35P140 U173 ( .A1(n146), .A2(n153), .B(n77), .C(n76), .ZN(n81)
         );
  INVD1BWP7T35P140 U174 ( .I(n78), .ZN(n82) );
  AOI22D1BWP7T35P140 U175 ( .A1(n82), .A2(intadd_19_B_5_), .B1(
        intadd_21_SUM_3_), .B2(n78), .ZN(n154) );
  ND3D1BWP7T35P140 U176 ( .A1(intadd_20_A_4_), .A2(n227), .A3(n222), .ZN(n79)
         );
  NR2D1BWP7T35P140 U177 ( .A1(din[2]), .A2(n79), .ZN(n89) );
  AO21D1BWP7T35P140 U178 ( .A1(din[2]), .A2(n79), .B(n89), .Z(n155) );
  AOI22D1BWP7T35P140 U179 ( .A1(n199), .A2(n154), .B1(n213), .B2(n155), .ZN(
        n80) );
  OAI211D0BWP7T35P140 U180 ( .A1(intadd_22_A_6_), .A2(n195), .B(n81), .C(n80), 
        .ZN(s1[10]) );
  INVD1BWP7T35P140 U181 ( .I(intadd_20_B_7_), .ZN(intadd_20_A_6_) );
  NR2D1BWP7T35P140 U182 ( .A1(intadd_21_SUM_4_), .A2(n82), .ZN(n160) );
  OAI22D1BWP7T35P140 U183 ( .A1(intadd_20_SUM_6_), .A2(n217), .B1(n215), .B2(
        intadd_20_A_6_), .ZN(n84) );
  OAI22D1BWP7T35P140 U184 ( .A1(intadd_22_A_0_), .A2(n167), .B1(
        intadd_19_SUM_6_), .B2(n3), .ZN(n83) );
  AOI211D0BWP7T35P140 U185 ( .A1(n199), .A2(n160), .B(n84), .C(n83), .ZN(n91)
         );
  INVD1BWP7T35P140 U186 ( .I(n166), .ZN(n88) );
  AOI21D1BWP7T35P140 U187 ( .A1(intadd_22_n1), .A2(n86), .B(n85), .ZN(n87) );
  MUX2ND1BWP7T35P140 U188 ( .I0(n166), .I1(n88), .S(n87), .ZN(n161) );
  ND2D1BWP7T35P140 U189 ( .A1(n89), .A2(n228), .ZN(n103) );
  OAI21D1BWP7T35P140 U190 ( .A1(n89), .A2(n228), .B(n103), .ZN(n162) );
  AOI22D1BWP7T35P140 U191 ( .A1(n214), .A2(n161), .B1(n213), .B2(n162), .ZN(
        n90) );
  OAI211D0BWP7T35P140 U192 ( .A1(n166), .A2(n195), .B(n91), .C(n90), .ZN(
        s1[11]) );
  MAOI22D1BWP7T35P140 U193 ( .A1(din[4]), .A2(n103), .B1(n103), .B2(din[4]), 
        .ZN(n174) );
  OAI22D1BWP7T35P140 U194 ( .A1(intadd_20_SUM_7_), .A2(n217), .B1(n229), .B2(
        n195), .ZN(n93) );
  OAI22D1BWP7T35P140 U195 ( .A1(intadd_19_SUM_7_), .A2(n3), .B1(n167), .B2(
        intadd_20_CI), .ZN(n92) );
  AOI211D0BWP7T35P140 U196 ( .A1(n186), .A2(intadd_20_B_8_), .B(n93), .C(n92), 
        .ZN(n96) );
  INVD1BWP7T35P140 U197 ( .I(n94), .ZN(n171) );
  NR2D1BWP7T35P140 U198 ( .A1(n104), .A2(intadd_21_SUM_5_), .ZN(n170) );
  AOI22D1BWP7T35P140 U199 ( .A1(n214), .A2(n171), .B1(n199), .B2(n170), .ZN(
        n95) );
  OAI211D0BWP7T35P140 U200 ( .A1(n150), .A2(n174), .B(n96), .C(n95), .ZN(
        s1[12]) );
  INVD1BWP7T35P140 U201 ( .I(intadd_23_SUM_3_), .ZN(intadd_20_A_8_) );
  NR2D1BWP7T35P140 U202 ( .A1(n103), .A2(din[4]), .ZN(n98) );
  OAI22D1BWP7T35P140 U203 ( .A1(n98), .A2(din[5]), .B1(n103), .B2(n97), .ZN(
        n179) );
  INVD1BWP7T35P140 U204 ( .I(n99), .ZN(n110) );
  NR2D1BWP7T35P140 U205 ( .A1(n104), .A2(intadd_21_SUM_6_), .ZN(n177) );
  OAI22D1BWP7T35P140 U206 ( .A1(intadd_20_A_8_), .A2(n215), .B1(n167), .B2(
        intadd_20_A_1_), .ZN(n101) );
  OAI22D1BWP7T35P140 U207 ( .A1(intadd_20_SUM_8_), .A2(n217), .B1(
        intadd_19_SUM_8_), .B2(n3), .ZN(n100) );
  AOI211D0BWP7T35P140 U208 ( .A1(n199), .A2(n177), .B(n101), .C(n100), .ZN(
        n102) );
  OAI211D0BWP7T35P140 U209 ( .A1(n179), .A2(n150), .B(n110), .C(n102), .ZN(
        s1[13]) );
  OAI21D1BWP7T35P140 U210 ( .A1(n191), .A2(n103), .B(din[6]), .ZN(n189) );
  NR2D1BWP7T35P140 U211 ( .A1(n104), .A2(intadd_21_n1), .ZN(n185) );
  INVD1BWP7T35P140 U212 ( .I(intadd_23_n1), .ZN(n180) );
  OAI22D1BWP7T35P140 U213 ( .A1(n180), .A2(n215), .B1(n167), .B2(
        intadd_20_A_2_), .ZN(n108) );
  XOR2D0BWP7T35P140 U214 ( .A1(intadd_21_n1), .A2(intadd_19_n1), .Z(n105) );
  MUX2ND1BWP7T35P140 U215 ( .I0(din[7]), .I1(n229), .S(n105), .ZN(n181) );
  MUX2ND1BWP7T35P140 U216 ( .I0(intadd_20_A_8_), .I1(intadd_23_SUM_3_), .S(
        intadd_20_n1), .ZN(n106) );
  MUX2ND1BWP7T35P140 U217 ( .I0(intadd_23_n1), .I1(n180), .S(n106), .ZN(n182)
         );
  OAI22D1BWP7T35P140 U218 ( .A1(n3), .A2(n181), .B1(n4), .B2(n182), .ZN(n107)
         );
  AOI211D0BWP7T35P140 U219 ( .A1(n199), .A2(n185), .B(n108), .C(n107), .ZN(
        n109) );
  OAI211D0BWP7T35P140 U220 ( .A1(n189), .A2(n150), .B(n110), .C(n109), .ZN(
        s1[14]) );
  MUX2ND1BWP7T35P140 U221 ( .I0(n2), .I1(n229), .S(n111), .ZN(n198) );
  AO21D1BWP7T35P140 U222 ( .A1(n218), .A2(n198), .B(n112), .Z(s1[15]) );
  OA31D0BWP7T35P140 U223 ( .A1(n1), .A2(n219), .A3(n218), .B(din[0]), .Z(s2[1]) );
  AOI22D1BWP7T35P140 U224 ( .A1(n1), .A2(din[2]), .B1(n199), .B2(
        intadd_22_B_0_), .ZN(n115) );
  ND2D1BWP7T35P140 U225 ( .A1(n167), .A2(n215), .ZN(n118) );
  AOI22D1BWP7T35P140 U226 ( .A1(n163), .A2(n153), .B1(din[0]), .B2(n118), .ZN(
        n114) );
  AOI22D1BWP7T35P140 U227 ( .A1(n218), .A2(intadd_22_B_1_), .B1(n213), .B2(
        intadd_22_B_1_), .ZN(n113) );
  ND3D1BWP7T35P140 U228 ( .A1(n115), .A2(n114), .A3(n113), .ZN(s2[3]) );
  INR2D1BWP7T35P140 U229 ( .A1(n153), .B1(n223), .ZN(n117) );
  OAI22D1BWP7T35P140 U230 ( .A1(intadd_22_SUM_0_), .A2(n150), .B1(n3), .B2(
        n228), .ZN(n116) );
  AOI211D0BWP7T35P140 U231 ( .A1(intadd_22_B_0_), .A2(n118), .B(n117), .C(n116), .ZN(n120) );
  ND2D1BWP7T35P140 U232 ( .A1(n218), .A2(intadd_22_B_2_), .ZN(n119) );
  OAI211D0BWP7T35P140 U233 ( .A1(intadd_22_A_0_), .A2(n195), .B(n120), .C(n119), .ZN(s2[4]) );
  MOAI22D0BWP7T35P140 U234 ( .A1(intadd_19_SUM_0_), .A2(n217), .B1(n1), .B2(
        intadd_20_A_0_), .ZN(n122) );
  OAI22D1BWP7T35P140 U235 ( .A1(intadd_22_SUM_1_), .A2(n150), .B1(
        intadd_20_SUM_0_), .B2(n223), .ZN(n121) );
  AOI211D0BWP7T35P140 U236 ( .A1(n186), .A2(n153), .B(n122), .C(n121), .ZN(
        n124) );
  ND2D1BWP7T35P140 U237 ( .A1(n146), .A2(intadd_22_B_1_), .ZN(n123) );
  OAI211D0BWP7T35P140 U238 ( .A1(intadd_20_CI), .A2(n195), .B(n124), .C(n123), 
        .ZN(s2[5]) );
  AOI22D1BWP7T35P140 U239 ( .A1(n1), .A2(intadd_20_B_1_), .B1(n186), .B2(n125), 
        .ZN(n129) );
  NR2D1BWP7T35P140 U240 ( .A1(intadd_19_SUM_1_), .A2(n217), .ZN(n127) );
  OAI22D1BWP7T35P140 U241 ( .A1(intadd_20_SUM_1_), .A2(n223), .B1(
        intadd_22_SUM_2_), .B2(n150), .ZN(n126) );
  AOI211D0BWP7T35P140 U242 ( .A1(intadd_22_B_2_), .A2(n146), .B(n127), .C(n126), .ZN(n128) );
  OAI211D0BWP7T35P140 U243 ( .A1(n195), .A2(intadd_20_A_1_), .B(n129), .C(n128), .ZN(s2[6]) );
  OAI22D1BWP7T35P140 U244 ( .A1(intadd_20_SUM_2_), .A2(n223), .B1(
        intadd_24_SUM_0_), .B2(n3), .ZN(n131) );
  OAI22D1BWP7T35P140 U245 ( .A1(intadd_22_SUM_3_), .A2(n150), .B1(
        intadd_19_SUM_2_), .B2(n217), .ZN(n130) );
  AOI211D0BWP7T35P140 U246 ( .A1(n146), .A2(intadd_22_B_3_), .B(n131), .C(n130), .ZN(n135) );
  OAI211D0BWP7T35P140 U247 ( .A1(n133), .A2(intadd_19_B_2_), .B(n186), .C(n132), .ZN(n134) );
  OAI211D0BWP7T35P140 U248 ( .A1(intadd_20_A_2_), .A2(n195), .B(n135), .C(n134), .ZN(s2[7]) );
  OAI22D1BWP7T35P140 U249 ( .A1(intadd_24_SUM_1_), .A2(n3), .B1(n222), .B2(
        n202), .ZN(n137) );
  OAI22D1BWP7T35P140 U250 ( .A1(intadd_20_SUM_3_), .A2(n223), .B1(
        intadd_19_SUM_3_), .B2(n217), .ZN(n136) );
  AOI211D0BWP7T35P140 U251 ( .A1(n213), .A2(n138), .B(n137), .C(n136), .ZN(
        n141) );
  AOI22D1BWP7T35P140 U252 ( .A1(n146), .A2(intadd_22_B_4_), .B1(n186), .B2(
        n139), .ZN(n140) );
  OAI211D0BWP7T35P140 U253 ( .A1(n142), .A2(n195), .B(n141), .C(n140), .ZN(
        s2[8]) );
  OAI22D1BWP7T35P140 U254 ( .A1(intadd_22_SUM_5_), .A2(n150), .B1(
        intadd_20_B_4_), .B2(n3), .ZN(n144) );
  OAI22D1BWP7T35P140 U255 ( .A1(intadd_20_SUM_4_), .A2(n223), .B1(
        intadd_19_SUM_4_), .B2(n217), .ZN(n143) );
  AOI211D0BWP7T35P140 U256 ( .A1(n214), .A2(intadd_22_B_0_), .B(n144), .C(n143), .ZN(n148) );
  AOI22D1BWP7T35P140 U257 ( .A1(n146), .A2(intadd_22_B_6_), .B1(n186), .B2(
        n145), .ZN(n147) );
  OAI211D0BWP7T35P140 U258 ( .A1(n149), .A2(n195), .B(n148), .C(n147), .ZN(
        s2[9]) );
  OAI22D1BWP7T35P140 U259 ( .A1(intadd_20_A_5_), .A2(n3), .B1(intadd_20_SUM_5_), .B2(n223), .ZN(n152) );
  OAI22D1BWP7T35P140 U260 ( .A1(intadd_19_SUM_5_), .A2(n217), .B1(
        intadd_22_SUM_6_), .B2(n150), .ZN(n151) );
  AOI211D0BWP7T35P140 U261 ( .A1(n214), .A2(n153), .B(n152), .C(n151), .ZN(
        n157) );
  AOI22D1BWP7T35P140 U262 ( .A1(n163), .A2(n155), .B1(n186), .B2(n154), .ZN(
        n156) );
  OAI211D0BWP7T35P140 U263 ( .A1(intadd_22_A_6_), .A2(n167), .B(n157), .C(n156), .ZN(s2[10]) );
  OAI22D1BWP7T35P140 U264 ( .A1(intadd_20_SUM_6_), .A2(n223), .B1(n3), .B2(
        intadd_20_A_6_), .ZN(n159) );
  OAI22D1BWP7T35P140 U265 ( .A1(intadd_22_A_0_), .A2(n202), .B1(
        intadd_19_SUM_6_), .B2(n217), .ZN(n158) );
  AOI211D0BWP7T35P140 U266 ( .A1(n186), .A2(n160), .B(n159), .C(n158), .ZN(
        n165) );
  AOI22D1BWP7T35P140 U267 ( .A1(n163), .A2(n162), .B1(n213), .B2(n161), .ZN(
        n164) );
  OAI211D0BWP7T35P140 U268 ( .A1(n166), .A2(n167), .B(n165), .C(n164), .ZN(
        s2[11]) );
  OAI22D1BWP7T35P140 U269 ( .A1(intadd_20_SUM_7_), .A2(n223), .B1(n229), .B2(
        n167), .ZN(n169) );
  OAI22D1BWP7T35P140 U270 ( .A1(intadd_19_SUM_7_), .A2(n217), .B1(n202), .B2(
        intadd_20_CI), .ZN(n168) );
  AOI211D0BWP7T35P140 U271 ( .A1(n1), .A2(intadd_20_B_8_), .B(n169), .C(n168), 
        .ZN(n173) );
  AOI22D1BWP7T35P140 U272 ( .A1(n213), .A2(n171), .B1(n186), .B2(n170), .ZN(
        n172) );
  OAI211D0BWP7T35P140 U273 ( .A1(n195), .A2(n174), .B(n173), .C(n172), .ZN(
        s2[12]) );
  OAI22D1BWP7T35P140 U274 ( .A1(n3), .A2(intadd_20_A_8_), .B1(n202), .B2(
        intadd_20_A_1_), .ZN(n176) );
  OAI22D1BWP7T35P140 U275 ( .A1(intadd_20_SUM_8_), .A2(n223), .B1(
        intadd_19_SUM_8_), .B2(n217), .ZN(n175) );
  AOI211D0BWP7T35P140 U276 ( .A1(n186), .A2(n177), .B(n176), .C(n175), .ZN(
        n178) );
  OAI211D0BWP7T35P140 U277 ( .A1(n195), .A2(n179), .B(n188), .C(n178), .ZN(
        s2[13]) );
  OAI22D1BWP7T35P140 U278 ( .A1(n3), .A2(n180), .B1(n202), .B2(intadd_20_A_2_), 
        .ZN(n184) );
  OAI22D1BWP7T35P140 U279 ( .A1(n223), .A2(n182), .B1(n217), .B2(n181), .ZN(
        n183) );
  AOI211D0BWP7T35P140 U280 ( .A1(n186), .A2(n185), .B(n184), .C(n183), .ZN(
        n187) );
  OAI211D0BWP7T35P140 U281 ( .A1(n195), .A2(n189), .B(n188), .C(n187), .ZN(
        s2[14]) );
  INVD1BWP7T35P140 U282 ( .I(intadd_21_SUM_1_), .ZN(intadd_19_B_3_) );
  INVD1BWP7T35P140 U283 ( .I(intadd_21_SUM_4_), .ZN(intadd_19_B_6_) );
  INVD1BWP7T35P140 U284 ( .I(intadd_21_SUM_5_), .ZN(intadd_19_B_7_) );
  INVD1BWP7T35P140 U285 ( .I(intadd_21_SUM_6_), .ZN(intadd_19_B_8_) );
  AO21D1BWP7T35P140 U286 ( .A1(din[7]), .A2(n191), .B(n190), .Z(intadd_21_A_5_) );
  INR2D1BWP7T35P140 U287 ( .A1(n193), .B1(n192), .ZN(n194) );
  MUX2ND1BWP7T35P140 U288 ( .I0(n229), .I1(din[7]), .S(n194), .ZN(
        intadd_21_B_5_) );
  AO21D1BWP7T35P140 U289 ( .A1(din[5]), .A2(n208), .B(n207), .Z(intadd_21_B_6_) );
  NR2D1BWP7T35P140 U290 ( .A1(n229), .A2(n195), .ZN(n196) );
  AOI211D0BWP7T35P140 U291 ( .A1(n199), .A2(n198), .B(n197), .C(n196), .ZN(
        n201) );
  OAI211D0BWP7T35P140 U292 ( .A1(intadd_20_A_3_), .A2(n202), .B(n201), .C(n200), .ZN(s2[15]) );
  NR2D1BWP7T35P140 U293 ( .A1(n203), .A2(n228), .ZN(intadd_20_B_0_) );
  INVD1BWP7T35P140 U294 ( .I(intadd_24_SUM_0_), .ZN(intadd_20_B_2_) );
  INVD1BWP7T35P140 U295 ( .I(intadd_24_SUM_1_), .ZN(intadd_20_B_3_) );
  INVD1BWP7T35P140 U296 ( .I(intadd_20_B_4_), .ZN(intadd_20_B_5_) );
  INVD1BWP7T35P140 U297 ( .I(intadd_20_A_5_), .ZN(intadd_20_B_6_) );
  INVD1BWP7T35P140 U298 ( .I(intadd_20_B_8_), .ZN(intadd_20_A_7_) );
  INVD1BWP7T35P140 U299 ( .I(intadd_24_n1), .ZN(intadd_23_A_1_) );
  INR2D1BWP7T35P140 U300 ( .A1(n205), .B1(n204), .ZN(intadd_24_B_0_) );
  AOI22D1BWP7T35P140 U301 ( .A1(din[3]), .A2(din[1]), .B1(n227), .B2(n228), 
        .ZN(n206) );
  MUX2ND1BWP7T35P140 U302 ( .I0(din[7]), .I1(n229), .S(n206), .ZN(
        intadd_24_B_1_) );
  INVD1BWP7T35P140 U303 ( .I(intadd_23_SUM_0_), .ZN(intadd_24_B_3_) );
  AO21D1BWP7T35P140 U304 ( .A1(din[4]), .A2(n208), .B(n207), .Z(intadd_23_B_2_) );
  INVD1BWP7T35P140 U305 ( .I(intadd_24_A_1_), .ZN(intadd_22_CI) );
  INVD1BWP7T35P140 U306 ( .I(intadd_22_B_6_), .ZN(intadd_22_B_5_) );
  MUX2ND1BWP7T35P140 U307 ( .I0(din[2]), .I1(intadd_19_B_0_), .S(n209), .ZN(
        intadd_21_A_1_) );
  NR2D1BWP7T35P140 U308 ( .A1(din[2]), .A2(din[1]), .ZN(n211) );
  OAI21D1BWP7T35P140 U309 ( .A1(n211), .A2(n212), .B(n210), .ZN(intadd_21_B_2_) );
  AOI22D1BWP7T35P140 U310 ( .A1(din[7]), .A2(din[4]), .B1(n230), .B2(n229), 
        .ZN(n233) );
  MUX2ND1BWP7T35P140 U311 ( .I0(n212), .I1(din[5]), .S(n233), .ZN(
        intadd_21_A_4_) );
  NR3D0BWP7T35P140 U312 ( .A1(n1), .A2(n214), .A3(n213), .ZN(n216) );
  OAI222D0BWP7T35P140 U313 ( .A1(n217), .A2(n222), .B1(n221), .B2(n216), .C1(
        n227), .C2(n215), .ZN(s1[2]) );
  NR2D1BWP7T35P140 U314 ( .A1(n219), .A2(n218), .ZN(n220) );
  OAI222D0BWP7T35P140 U315 ( .A1(n223), .A2(n222), .B1(n221), .B2(n220), .C1(
        n3), .C2(n227), .ZN(s2[2]) );
  NR2D1BWP7T35P140 U316 ( .A1(din[3]), .A2(din[2]), .ZN(n225) );
  ND2D1BWP7T35P140 U317 ( .A1(din[0]), .A2(intadd_19_B_0_), .ZN(n224) );
  MOAI22D0BWP7T35P140 U318 ( .A1(n225), .A2(din[1]), .B1(din[3]), .B2(n224), 
        .ZN(intadd_19_CI) );
  MAOI222D0BWP7T35P140 U319 ( .A(din[7]), .B(din[2]), .C(din[4]), .ZN(
        intadd_24_A_3_) );
  ND2D1BWP7T35P140 U320 ( .A1(intadd_24_A_1_), .A2(n226), .ZN(intadd_24_CI) );
  NR2D1BWP7T35P140 U321 ( .A1(din[7]), .A2(din[3]), .ZN(n231) );
  MAOI22D1BWP7T35P140 U322 ( .A1(din[7]), .A2(din[3]), .B1(n231), .B2(n227), 
        .ZN(intadd_24_A_2_) );
  INVD1BWP7T35P140 U323 ( .I(n233), .ZN(n232) );
  AOI22D1BWP7T35P140 U324 ( .A1(din[2]), .A2(n232), .B1(n233), .B2(
        intadd_19_B_0_), .ZN(intadd_24_B_2_) );
  FA1D1BWP7T35P140 U325 ( .A(din[3]), .B(din[6]), .CI(din[2]), .CO(
        intadd_21_A_3_), .S(intadd_21_A_2_) );
  AOI22D1BWP7T35P140 U326 ( .A1(din[3]), .A2(n233), .B1(n232), .B2(n228), .ZN(
        intadd_21_B_3_) );
  OAI22D1BWP7T35P140 U327 ( .A1(n231), .A2(n230), .B1(n229), .B2(n228), .ZN(
        intadd_21_B_4_) );
  AOI22D1BWP7T35P140 U328 ( .A1(din[6]), .A2(n233), .B1(n232), .B2(
        intadd_24_A_0_), .ZN(intadd_23_B_1_) );
endmodule


module FloorAndWrap_8_1 ( din, dout );
  input [16:0] din;
  output [15:0] dout;


  DEL025D1BWP7T35P140 U1 ( .I(din[10]), .Z(dout[10]) );
  DEL025D1BWP7T35P140 U2 ( .I(din[2]), .Z(dout[2]) );
  DEL025D1BWP7T35P140 U3 ( .I(din[0]), .Z(dout[0]) );
  DEL025D1BWP7T35P140 U4 ( .I(din[1]), .Z(dout[1]) );
  DEL025D1BWP7T35P140 U5 ( .I(din[3]), .Z(dout[3]) );
  DEL025D1BWP7T35P140 U6 ( .I(din[4]), .Z(dout[4]) );
  DEL025D1BWP7T35P140 U7 ( .I(din[5]), .Z(dout[5]) );
  DEL025D1BWP7T35P140 U8 ( .I(din[6]), .Z(dout[6]) );
  DEL025D1BWP7T35P140 U9 ( .I(din[7]), .Z(dout[7]) );
  DEL025D1BWP7T35P140 U10 ( .I(din[8]), .Z(dout[8]) );
  DEL025D1BWP7T35P140 U11 ( .I(din[9]), .Z(dout[9]) );
  DEL025D1BWP7T35P140 U12 ( .I(din[11]), .Z(dout[11]) );
  DEL025D1BWP7T35P140 U13 ( .I(din[12]), .Z(dout[12]) );
  DEL025D1BWP7T35P140 U14 ( .I(din[13]), .Z(dout[13]) );
  DEL025D1BWP7T35P140 U15 ( .I(din[14]), .Z(dout[14]) );
  DEL025D1BWP7T35P140 U16 ( .I(din[15]), .Z(dout[15]) );
endmodule


module FloorAndWrap_8_0 ( din, dout );
  input [16:0] din;
  output [15:0] dout;


  DEL025D1BWP7T35P140 U1 ( .I(din[13]), .Z(dout[13]) );
  DEL025D1BWP7T35P140 U2 ( .I(din[5]), .Z(dout[5]) );
  DEL025D1BWP7T35P140 U3 ( .I(din[0]), .Z(dout[0]) );
  DEL025D1BWP7T35P140 U4 ( .I(din[1]), .Z(dout[1]) );
  DEL025D1BWP7T35P140 U5 ( .I(din[2]), .Z(dout[2]) );
  DEL025D1BWP7T35P140 U6 ( .I(din[3]), .Z(dout[3]) );
  DEL025D1BWP7T35P140 U7 ( .I(din[4]), .Z(dout[4]) );
  DEL025D1BWP7T35P140 U8 ( .I(din[6]), .Z(dout[6]) );
  DEL025D1BWP7T35P140 U9 ( .I(din[7]), .Z(dout[7]) );
  DEL025D1BWP7T35P140 U10 ( .I(din[8]), .Z(dout[8]) );
  DEL025D1BWP7T35P140 U11 ( .I(din[9]), .Z(dout[9]) );
  DEL025D1BWP7T35P140 U12 ( .I(din[10]), .Z(dout[10]) );
  DEL025D1BWP7T35P140 U13 ( .I(din[11]), .Z(dout[11]) );
  DEL025D1BWP7T35P140 U14 ( .I(din[12]), .Z(dout[12]) );
  DEL025D1BWP7T35P140 U15 ( .I(din[14]), .Z(dout[14]) );
  DEL025D1BWP7T35P140 U16 ( .I(din[15]), .Z(dout[15]) );
endmodule


module SNPS_CLOCK_GATE_HIGH_dotVn_0 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWP7T35P140 latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_dotVn_1 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWP7T35P140 latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module dotVn ( en, vn_vld, vn_in_0, vn_in_1, vn_in_2, vn_in_3, vn_in_4, 
        vn_in_5, vn_in_6, vn_in_7, psum_out1, psum_out2, psum_vld, clk, resetn
 );
  input [7:0] vn_in_0;
  input [7:0] vn_in_1;
  input [7:0] vn_in_2;
  input [7:0] vn_in_3;
  input [7:0] vn_in_4;
  input [7:0] vn_in_5;
  input [7:0] vn_in_6;
  input [7:0] vn_in_7;
  output [15:0] psum_out1;
  output [15:0] psum_out2;
  input en, vn_vld, clk, resetn;
  output psum_vld;
  wire   psum1_1_, psum2_1_, mac_en, N62, N63, N64, N65, N66, N67, N68, N69,
         N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N81, N82, N83, N84,
         N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98,
         N99, N100, N101, N106, net5986, net5987, net5992, n43,
         intadd_17_B_15_, intadd_17_B_14_, intadd_17_B_13_, intadd_17_B_12_,
         intadd_17_B_11_, intadd_17_B_10_, intadd_17_B_9_, intadd_17_B_8_,
         intadd_17_B_7_, intadd_17_B_6_, intadd_17_B_5_, intadd_17_B_4_,
         intadd_17_B_3_, intadd_17_B_2_, intadd_17_B_1_, intadd_17_B_0_,
         intadd_17_CI, intadd_17_n16, intadd_17_n15, intadd_17_n14,
         intadd_17_n13, intadd_17_n12, intadd_17_n11, intadd_17_n10,
         intadd_17_n9, intadd_17_n8, intadd_17_n7, intadd_17_n6, intadd_17_n5,
         intadd_17_n4, intadd_17_n3, intadd_17_n2, intadd_17_n1,
         intadd_18_B_15_, intadd_18_B_14_, intadd_18_B_13_, intadd_18_B_12_,
         intadd_18_B_11_, intadd_18_B_10_, intadd_18_B_9_, intadd_18_B_8_,
         intadd_18_B_7_, intadd_18_B_6_, intadd_18_B_5_, intadd_18_B_4_,
         intadd_18_B_3_, intadd_18_B_2_, intadd_18_B_1_, intadd_18_B_0_,
         intadd_18_CI, intadd_18_n16, intadd_18_n15, intadd_18_n14,
         intadd_18_n13, intadd_18_n12, intadd_18_n11, intadd_18_n10,
         intadd_18_n9, intadd_18_n8, intadd_18_n7, intadd_18_n6, intadd_18_n5,
         intadd_18_n4, intadd_18_n3, intadd_18_n2, intadd_18_n1, n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2;
  wire   [16:0] n_zz_5;
  wire   [16:0] n_zz_6;
  wire   [2:0] mac_cnt;
  wire   [18:1] table_1_s1;
  wire   [18:1] table_1_s2;
  wire   [7:0] n_zz_4;

  s_table table_1 ( .index(mac_cnt), .din({n1, n_zz_4[6:0]}), .s1({table_1_s1, 
        SYNOPSYS_UNCONNECTED_1}), .s2({table_1_s2, SYNOPSYS_UNCONNECTED_2}) );
  FloorAndWrap_8_1 FloorWrapPsum1 ( .din(n_zz_5), .dout(psum_out1) );
  FloorAndWrap_8_0 FloorWrapPsum2 ( .din(n_zz_6), .dout(psum_out2) );
  SNPS_CLOCK_GATE_HIGH_dotVn_0 clk_gate_psum2_reg ( .CLK(clk), .EN(mac_en), 
        .ENCLK(net5986), .TE(net5987) );
  SNPS_CLOCK_GATE_HIGH_dotVn_1 clk_gate_psum1_reg ( .CLK(clk), .EN(mac_en), 
        .ENCLK(net5992), .TE(net5987) );
  DFCNQD1BWP7T35P140 mac_cnt_reg_0_ ( .D(N99), .CP(clk), .CDN(n57), .Q(
        mac_cnt[0]) );
  DFCNQD1BWP7T35P140 mac_en_reg ( .D(n43), .CP(clk), .CDN(n56), .Q(mac_en) );
  DFCNQD1BWP7T35P140 mac_cnt_reg_1_ ( .D(N100), .CP(clk), .CDN(n56), .Q(
        mac_cnt[1]) );
  DFCNQD1BWP7T35P140 psum2_reg_18_ ( .D(N98), .CP(net5986), .CDN(n56), .Q(
        n_zz_6[16]) );
  DFCNQD1BWP7T35P140 psum2_reg_17_ ( .D(N97), .CP(net5986), .CDN(n56), .Q(
        n_zz_6[15]) );
  DFCNQD1BWP7T35P140 psum2_reg_16_ ( .D(N96), .CP(net5986), .CDN(n56), .Q(
        n_zz_6[14]) );
  DFCNQD1BWP7T35P140 psum2_reg_15_ ( .D(N95), .CP(net5986), .CDN(n56), .Q(
        n_zz_6[13]) );
  DFCNQD1BWP7T35P140 psum2_reg_14_ ( .D(N94), .CP(net5986), .CDN(n56), .Q(
        n_zz_6[12]) );
  DFCNQD1BWP7T35P140 psum2_reg_13_ ( .D(N93), .CP(net5986), .CDN(n56), .Q(
        n_zz_6[11]) );
  DFCNQD1BWP7T35P140 psum2_reg_12_ ( .D(N92), .CP(net5986), .CDN(n56), .Q(
        n_zz_6[10]) );
  DFCNQD1BWP7T35P140 psum2_reg_11_ ( .D(N91), .CP(net5986), .CDN(n56), .Q(
        n_zz_6[9]) );
  DFCNQD1BWP7T35P140 psum2_reg_10_ ( .D(N90), .CP(net5986), .CDN(n56), .Q(
        n_zz_6[8]) );
  DFCNQD1BWP7T35P140 psum2_reg_9_ ( .D(N89), .CP(net5986), .CDN(n56), .Q(
        n_zz_6[7]) );
  DFCNQD1BWP7T35P140 psum2_reg_8_ ( .D(N88), .CP(net5986), .CDN(n56), .Q(
        n_zz_6[6]) );
  DFCNQD1BWP7T35P140 psum2_reg_7_ ( .D(N87), .CP(net5986), .CDN(resetn), .Q(
        n_zz_6[5]) );
  DFCNQD1BWP7T35P140 psum2_reg_6_ ( .D(N86), .CP(net5986), .CDN(n57), .Q(
        n_zz_6[4]) );
  DFCNQD1BWP7T35P140 psum2_reg_5_ ( .D(N85), .CP(net5986), .CDN(n56), .Q(
        n_zz_6[3]) );
  DFCNQD1BWP7T35P140 psum2_reg_4_ ( .D(N84), .CP(net5986), .CDN(resetn), .Q(
        n_zz_6[2]) );
  DFCNQD1BWP7T35P140 psum2_reg_3_ ( .D(N83), .CP(net5986), .CDN(n57), .Q(
        n_zz_6[1]) );
  DFCNQD1BWP7T35P140 psum2_reg_2_ ( .D(N82), .CP(net5986), .CDN(n56), .Q(
        n_zz_6[0]) );
  DFCNQD1BWP7T35P140 psum2_reg_1_ ( .D(N81), .CP(net5986), .CDN(n57), .Q(
        psum2_1_) );
  DFCNQD1BWP7T35P140 psum1_reg_18_ ( .D(N79), .CP(net5992), .CDN(n56), .Q(
        n_zz_5[16]) );
  DFCNQD1BWP7T35P140 psum1_reg_17_ ( .D(N78), .CP(net5992), .CDN(n57), .Q(
        n_zz_5[15]) );
  DFCNQD1BWP7T35P140 psum1_reg_16_ ( .D(N77), .CP(net5992), .CDN(n56), .Q(
        n_zz_5[14]) );
  DFCNQD1BWP7T35P140 psum1_reg_15_ ( .D(N76), .CP(net5992), .CDN(n57), .Q(
        n_zz_5[13]) );
  DFCNQD1BWP7T35P140 psum1_reg_14_ ( .D(N75), .CP(net5992), .CDN(n56), .Q(
        n_zz_5[12]) );
  DFCNQD1BWP7T35P140 psum1_reg_13_ ( .D(N74), .CP(net5992), .CDN(n57), .Q(
        n_zz_5[11]) );
  DFCNQD1BWP7T35P140 psum1_reg_12_ ( .D(N73), .CP(net5992), .CDN(n57), .Q(
        n_zz_5[10]) );
  DFCNQD1BWP7T35P140 psum1_reg_11_ ( .D(N72), .CP(net5992), .CDN(n57), .Q(
        n_zz_5[9]) );
  DFCNQD1BWP7T35P140 psum1_reg_10_ ( .D(N71), .CP(net5992), .CDN(n57), .Q(
        n_zz_5[8]) );
  DFCNQD1BWP7T35P140 psum1_reg_9_ ( .D(N70), .CP(net5992), .CDN(n57), .Q(
        n_zz_5[7]) );
  DFCNQD1BWP7T35P140 psum1_reg_8_ ( .D(N69), .CP(net5992), .CDN(n57), .Q(
        n_zz_5[6]) );
  DFCNQD1BWP7T35P140 psum1_reg_7_ ( .D(N68), .CP(net5992), .CDN(n57), .Q(
        n_zz_5[5]) );
  DFCNQD1BWP7T35P140 psum1_reg_6_ ( .D(N67), .CP(net5992), .CDN(n57), .Q(
        n_zz_5[4]) );
  DFCNQD1BWP7T35P140 psum1_reg_5_ ( .D(N66), .CP(net5992), .CDN(n57), .Q(
        n_zz_5[3]) );
  DFCNQD1BWP7T35P140 psum1_reg_4_ ( .D(N65), .CP(net5992), .CDN(n57), .Q(
        n_zz_5[2]) );
  DFCNQD1BWP7T35P140 psum1_reg_3_ ( .D(N64), .CP(net5992), .CDN(n57), .Q(
        n_zz_5[1]) );
  DFCNQD1BWP7T35P140 psum1_reg_2_ ( .D(N63), .CP(net5992), .CDN(n57), .Q(
        n_zz_5[0]) );
  DFCNQD1BWP7T35P140 psum1_reg_1_ ( .D(N62), .CP(net5992), .CDN(n57), .Q(
        psum1_1_) );
  DFQD1BWP7T35P140 finish_reg ( .D(N106), .CP(clk), .Q(psum_vld) );
  FA1D1BWP7T35P140 intadd_17_U17 ( .A(intadd_17_B_0_), .B(table_1_s2[2]), .CI(
        intadd_17_CI), .CO(intadd_17_n16), .S(N82) );
  FA1D1BWP7T35P140 intadd_17_U16 ( .A(intadd_17_B_1_), .B(table_1_s2[3]), .CI(
        intadd_17_n16), .CO(intadd_17_n15), .S(N83) );
  FA1D1BWP7T35P140 intadd_17_U15 ( .A(intadd_17_B_2_), .B(table_1_s2[4]), .CI(
        intadd_17_n15), .CO(intadd_17_n14), .S(N84) );
  FA1D1BWP7T35P140 intadd_17_U14 ( .A(intadd_17_B_3_), .B(table_1_s2[5]), .CI(
        intadd_17_n14), .CO(intadd_17_n13), .S(N85) );
  FA1D1BWP7T35P140 intadd_17_U13 ( .A(intadd_17_B_4_), .B(table_1_s2[6]), .CI(
        intadd_17_n13), .CO(intadd_17_n12), .S(N86) );
  FA1D1BWP7T35P140 intadd_17_U12 ( .A(intadd_17_B_5_), .B(table_1_s2[7]), .CI(
        intadd_17_n12), .CO(intadd_17_n11), .S(N87) );
  FA1D1BWP7T35P140 intadd_17_U11 ( .A(intadd_17_B_6_), .B(table_1_s2[8]), .CI(
        intadd_17_n11), .CO(intadd_17_n10), .S(N88) );
  FA1D1BWP7T35P140 intadd_17_U10 ( .A(intadd_17_B_7_), .B(table_1_s2[9]), .CI(
        intadd_17_n10), .CO(intadd_17_n9), .S(N89) );
  FA1D1BWP7T35P140 intadd_17_U9 ( .A(intadd_17_B_8_), .B(table_1_s2[10]), .CI(
        intadd_17_n9), .CO(intadd_17_n8), .S(N90) );
  FA1D1BWP7T35P140 intadd_17_U8 ( .A(intadd_17_B_9_), .B(table_1_s2[11]), .CI(
        intadd_17_n8), .CO(intadd_17_n7), .S(N91) );
  FA1D1BWP7T35P140 intadd_17_U7 ( .A(intadd_17_B_10_), .B(table_1_s2[12]), 
        .CI(intadd_17_n7), .CO(intadd_17_n6), .S(N92) );
  FA1D1BWP7T35P140 intadd_17_U6 ( .A(intadd_17_B_11_), .B(table_1_s2[13]), 
        .CI(intadd_17_n6), .CO(intadd_17_n5), .S(N93) );
  FA1D1BWP7T35P140 intadd_17_U5 ( .A(intadd_17_B_12_), .B(table_1_s2[14]), 
        .CI(intadd_17_n5), .CO(intadd_17_n4), .S(N94) );
  FA1D1BWP7T35P140 intadd_17_U4 ( .A(intadd_17_B_13_), .B(table_1_s2[15]), 
        .CI(intadd_17_n4), .CO(intadd_17_n3), .S(N95) );
  FA1D1BWP7T35P140 intadd_17_U3 ( .A(intadd_17_B_14_), .B(table_1_s2[16]), 
        .CI(intadd_17_n3), .CO(intadd_17_n2), .S(N96) );
  FA1D1BWP7T35P140 intadd_17_U2 ( .A(intadd_17_B_15_), .B(table_1_s2[17]), 
        .CI(intadd_17_n2), .CO(intadd_17_n1), .S(N97) );
  FA1D1BWP7T35P140 intadd_18_U17 ( .A(intadd_18_B_0_), .B(table_1_s1[2]), .CI(
        intadd_18_CI), .CO(intadd_18_n16), .S(N63) );
  FA1D1BWP7T35P140 intadd_18_U16 ( .A(intadd_18_B_1_), .B(table_1_s1[3]), .CI(
        intadd_18_n16), .CO(intadd_18_n15), .S(N64) );
  FA1D1BWP7T35P140 intadd_18_U15 ( .A(intadd_18_B_2_), .B(table_1_s1[4]), .CI(
        intadd_18_n15), .CO(intadd_18_n14), .S(N65) );
  FA1D1BWP7T35P140 intadd_18_U14 ( .A(intadd_18_B_3_), .B(table_1_s1[5]), .CI(
        intadd_18_n14), .CO(intadd_18_n13), .S(N66) );
  FA1D1BWP7T35P140 intadd_18_U13 ( .A(intadd_18_B_4_), .B(table_1_s1[6]), .CI(
        intadd_18_n13), .CO(intadd_18_n12), .S(N67) );
  FA1D1BWP7T35P140 intadd_18_U12 ( .A(intadd_18_B_5_), .B(table_1_s1[7]), .CI(
        intadd_18_n12), .CO(intadd_18_n11), .S(N68) );
  FA1D1BWP7T35P140 intadd_18_U11 ( .A(intadd_18_B_6_), .B(table_1_s1[8]), .CI(
        intadd_18_n11), .CO(intadd_18_n10), .S(N69) );
  FA1D1BWP7T35P140 intadd_18_U10 ( .A(intadd_18_B_7_), .B(table_1_s1[9]), .CI(
        intadd_18_n10), .CO(intadd_18_n9), .S(N70) );
  FA1D1BWP7T35P140 intadd_18_U9 ( .A(intadd_18_B_8_), .B(table_1_s1[10]), .CI(
        intadd_18_n9), .CO(intadd_18_n8), .S(N71) );
  FA1D1BWP7T35P140 intadd_18_U8 ( .A(intadd_18_B_9_), .B(table_1_s1[11]), .CI(
        intadd_18_n8), .CO(intadd_18_n7), .S(N72) );
  FA1D1BWP7T35P140 intadd_18_U7 ( .A(intadd_18_B_10_), .B(table_1_s1[12]), 
        .CI(intadd_18_n7), .CO(intadd_18_n6), .S(N73) );
  FA1D1BWP7T35P140 intadd_18_U6 ( .A(intadd_18_B_11_), .B(table_1_s1[13]), 
        .CI(intadd_18_n6), .CO(intadd_18_n5), .S(N74) );
  FA1D1BWP7T35P140 intadd_18_U5 ( .A(intadd_18_B_12_), .B(table_1_s1[14]), 
        .CI(intadd_18_n5), .CO(intadd_18_n4), .S(N75) );
  FA1D1BWP7T35P140 intadd_18_U4 ( .A(intadd_18_B_13_), .B(table_1_s1[15]), 
        .CI(intadd_18_n4), .CO(intadd_18_n3), .S(N76) );
  FA1D1BWP7T35P140 intadd_18_U3 ( .A(intadd_18_B_14_), .B(table_1_s1[16]), 
        .CI(intadd_18_n3), .CO(intadd_18_n2), .S(N77) );
  FA1D1BWP7T35P140 intadd_18_U2 ( .A(intadd_18_B_15_), .B(table_1_s1[17]), 
        .CI(intadd_18_n2), .CO(intadd_18_n1), .S(N78) );
  DFCNQD1BWP7T35P140 mac_cnt_reg_2_ ( .D(N101), .CP(clk), .CDN(n56), .Q(
        mac_cnt[2]) );
  AOI21D1BWP7T35P140 U3 ( .A1(n44), .A2(vn_in_0[7]), .B(n42), .ZN(n_zz_4[7])
         );
  INVD1BWP7T35P140 U4 ( .I(n_zz_4[7]), .ZN(n1) );
  NR2D1BWP7T35P140 U5 ( .A1(mac_cnt[0]), .A2(mac_cnt[1]), .ZN(n37) );
  AN2D0BWP7T35P140 U6 ( .A1(n38), .A2(n37), .Z(n44) );
  TIELBWP7T35P140 U7 ( .ZN(net5987) );
  DEL025D1BWP7T35P140 U8 ( .I(resetn), .Z(n57) );
  DEL025D1BWP7T35P140 U9 ( .I(resetn), .Z(n56) );
  INVD1BWP7T35P140 U10 ( .I(mac_en), .ZN(n47) );
  NR2D1BWP7T35P140 U11 ( .A1(mac_cnt[0]), .A2(n47), .ZN(N99) );
  INVD1BWP7T35P140 U12 ( .I(mac_cnt[2]), .ZN(n38) );
  INVD1BWP7T35P140 U13 ( .I(n44), .ZN(n52) );
  AN3D0BWP7T35P140 U14 ( .A1(psum2_1_), .A2(table_1_s2[1]), .A3(n52), .Z(
        intadd_17_B_0_) );
  INVD1BWP7T35P140 U15 ( .I(n44), .ZN(n6) );
  ND2D1BWP7T35P140 U16 ( .A1(psum2_1_), .A2(n6), .ZN(n3) );
  INVD1BWP7T35P140 U17 ( .I(table_1_s2[1]), .ZN(n2) );
  AOI21D1BWP7T35P140 U18 ( .A1(n3), .A2(n2), .B(intadd_17_B_0_), .ZN(N81) );
  AN3D0BWP7T35P140 U19 ( .A1(psum1_1_), .A2(table_1_s1[1]), .A3(n52), .Z(
        intadd_18_B_0_) );
  ND2D1BWP7T35P140 U20 ( .A1(psum1_1_), .A2(n52), .ZN(n5) );
  INVD1BWP7T35P140 U21 ( .I(table_1_s1[1]), .ZN(n4) );
  AOI21D1BWP7T35P140 U22 ( .A1(n5), .A2(n4), .B(intadd_18_B_0_), .ZN(N62) );
  AN2D0BWP7T35P140 U23 ( .A1(n_zz_5[0]), .A2(n52), .Z(intadd_18_CI) );
  AN2D0BWP7T35P140 U24 ( .A1(n_zz_5[1]), .A2(n52), .Z(intadd_18_B_1_) );
  AN2D0BWP7T35P140 U25 ( .A1(n_zz_5[2]), .A2(n52), .Z(intadd_18_B_2_) );
  AN2D0BWP7T35P140 U26 ( .A1(n_zz_5[3]), .A2(n52), .Z(intadd_18_B_3_) );
  AN2D0BWP7T35P140 U27 ( .A1(n_zz_5[4]), .A2(n52), .Z(intadd_18_B_4_) );
  AN2D0BWP7T35P140 U28 ( .A1(n_zz_5[5]), .A2(n52), .Z(intadd_18_B_5_) );
  AN2D0BWP7T35P140 U29 ( .A1(n_zz_5[6]), .A2(n6), .Z(intadd_18_B_6_) );
  AN2D0BWP7T35P140 U30 ( .A1(n_zz_5[7]), .A2(n52), .Z(intadd_18_B_7_) );
  AN2D0BWP7T35P140 U31 ( .A1(n_zz_5[8]), .A2(n52), .Z(intadd_18_B_8_) );
  AN2D0BWP7T35P140 U32 ( .A1(n_zz_5[9]), .A2(n6), .Z(intadd_18_B_9_) );
  AN2D0BWP7T35P140 U33 ( .A1(n_zz_5[10]), .A2(n6), .Z(intadd_18_B_10_) );
  AN2D0BWP7T35P140 U34 ( .A1(n_zz_5[11]), .A2(n6), .Z(intadd_18_B_11_) );
  AN2D0BWP7T35P140 U35 ( .A1(n_zz_5[12]), .A2(n6), .Z(intadd_18_B_12_) );
  AN2D0BWP7T35P140 U36 ( .A1(n_zz_5[13]), .A2(n6), .Z(intadd_18_B_13_) );
  AN2D0BWP7T35P140 U37 ( .A1(n_zz_5[14]), .A2(n6), .Z(intadd_18_B_14_) );
  AN2D0BWP7T35P140 U38 ( .A1(n_zz_5[15]), .A2(n6), .Z(intadd_18_B_15_) );
  AN2D0BWP7T35P140 U39 ( .A1(n_zz_6[0]), .A2(n6), .Z(intadd_17_CI) );
  AN2D0BWP7T35P140 U40 ( .A1(n_zz_6[1]), .A2(n6), .Z(intadd_17_B_1_) );
  AN2D0BWP7T35P140 U41 ( .A1(n_zz_6[2]), .A2(n6), .Z(intadd_17_B_2_) );
  AN2D0BWP7T35P140 U42 ( .A1(n_zz_6[3]), .A2(n6), .Z(intadd_17_B_3_) );
  AN2D0BWP7T35P140 U43 ( .A1(n_zz_6[4]), .A2(n6), .Z(intadd_17_B_4_) );
  AN2D0BWP7T35P140 U44 ( .A1(n_zz_6[5]), .A2(n6), .Z(intadd_17_B_5_) );
  AN2D0BWP7T35P140 U45 ( .A1(n_zz_6[6]), .A2(n6), .Z(intadd_17_B_6_) );
  AN2D0BWP7T35P140 U46 ( .A1(n_zz_6[7]), .A2(n6), .Z(intadd_17_B_7_) );
  AN2D0BWP7T35P140 U47 ( .A1(n_zz_6[8]), .A2(n6), .Z(intadd_17_B_8_) );
  AN2D0BWP7T35P140 U48 ( .A1(n_zz_6[9]), .A2(n6), .Z(intadd_17_B_9_) );
  AN2D0BWP7T35P140 U49 ( .A1(n_zz_6[10]), .A2(n6), .Z(intadd_17_B_10_) );
  AN2D0BWP7T35P140 U50 ( .A1(n_zz_6[11]), .A2(n52), .Z(intadd_17_B_11_) );
  AN2D0BWP7T35P140 U51 ( .A1(n_zz_6[12]), .A2(n52), .Z(intadd_17_B_12_) );
  AN2D0BWP7T35P140 U52 ( .A1(n_zz_6[13]), .A2(n52), .Z(intadd_17_B_13_) );
  AN2D0BWP7T35P140 U53 ( .A1(n_zz_6[14]), .A2(n52), .Z(intadd_17_B_14_) );
  AN2D0BWP7T35P140 U54 ( .A1(n_zz_6[15]), .A2(n52), .Z(intadd_17_B_15_) );
  INVD1BWP7T35P140 U55 ( .I(mac_cnt[1]), .ZN(n7) );
  NR2D1BWP7T35P140 U56 ( .A1(mac_cnt[0]), .A2(n7), .ZN(n45) );
  AOI22D1BWP7T35P140 U57 ( .A1(n45), .A2(vn_in_6[0]), .B1(n37), .B2(vn_in_4[0]), .ZN(n11) );
  INVD1BWP7T35P140 U58 ( .I(mac_cnt[0]), .ZN(n8) );
  NR2D1BWP7T35P140 U59 ( .A1(mac_cnt[1]), .A2(n8), .ZN(n46) );
  NR2D1BWP7T35P140 U60 ( .A1(n8), .A2(n7), .ZN(n49) );
  AOI22D1BWP7T35P140 U61 ( .A1(n46), .A2(vn_in_5[0]), .B1(n49), .B2(vn_in_7[0]), .ZN(n10) );
  AOI222D1BWP7T35P140 U62 ( .A1(n46), .A2(vn_in_1[0]), .B1(n49), .B2(
        vn_in_3[0]), .C1(n45), .C2(vn_in_2[0]), .ZN(n9) );
  AOI32D1BWP7T35P140 U63 ( .A1(n11), .A2(mac_cnt[2]), .A3(n10), .B1(n9), .B2(
        n38), .ZN(n12) );
  AO21D1BWP7T35P140 U64 ( .A1(n44), .A2(vn_in_0[0]), .B(n12), .Z(n_zz_4[0]) );
  AOI22D1BWP7T35P140 U65 ( .A1(n45), .A2(vn_in_6[1]), .B1(n37), .B2(vn_in_4[1]), .ZN(n15) );
  AOI22D1BWP7T35P140 U66 ( .A1(n46), .A2(vn_in_5[1]), .B1(n49), .B2(vn_in_7[1]), .ZN(n14) );
  AOI222D1BWP7T35P140 U67 ( .A1(n46), .A2(vn_in_1[1]), .B1(n49), .B2(
        vn_in_3[1]), .C1(n45), .C2(vn_in_2[1]), .ZN(n13) );
  AOI32D1BWP7T35P140 U68 ( .A1(n15), .A2(mac_cnt[2]), .A3(n14), .B1(n13), .B2(
        n38), .ZN(n16) );
  AO21D1BWP7T35P140 U69 ( .A1(n44), .A2(vn_in_0[1]), .B(n16), .Z(n_zz_4[1]) );
  AOI22D1BWP7T35P140 U70 ( .A1(n45), .A2(vn_in_6[2]), .B1(n37), .B2(vn_in_4[2]), .ZN(n19) );
  AOI22D1BWP7T35P140 U71 ( .A1(n46), .A2(vn_in_5[2]), .B1(n49), .B2(vn_in_7[2]), .ZN(n18) );
  AOI222D1BWP7T35P140 U72 ( .A1(n46), .A2(vn_in_1[2]), .B1(n49), .B2(
        vn_in_3[2]), .C1(n45), .C2(vn_in_2[2]), .ZN(n17) );
  AOI32D1BWP7T35P140 U73 ( .A1(n19), .A2(mac_cnt[2]), .A3(n18), .B1(n17), .B2(
        n38), .ZN(n20) );
  AO21D1BWP7T35P140 U74 ( .A1(n44), .A2(vn_in_0[2]), .B(n20), .Z(n_zz_4[2]) );
  AOI22D1BWP7T35P140 U75 ( .A1(n45), .A2(vn_in_6[6]), .B1(n37), .B2(vn_in_4[6]), .ZN(n23) );
  AOI22D1BWP7T35P140 U76 ( .A1(n46), .A2(vn_in_5[6]), .B1(n49), .B2(vn_in_7[6]), .ZN(n22) );
  AOI222D1BWP7T35P140 U77 ( .A1(n46), .A2(vn_in_1[6]), .B1(n49), .B2(
        vn_in_3[6]), .C1(n45), .C2(vn_in_2[6]), .ZN(n21) );
  AOI32D1BWP7T35P140 U78 ( .A1(n23), .A2(mac_cnt[2]), .A3(n22), .B1(n21), .B2(
        n38), .ZN(n24) );
  AO21D1BWP7T35P140 U79 ( .A1(n44), .A2(vn_in_0[6]), .B(n24), .Z(n_zz_4[6]) );
  AOI22D1BWP7T35P140 U80 ( .A1(n45), .A2(vn_in_6[5]), .B1(n37), .B2(vn_in_4[5]), .ZN(n27) );
  AOI22D1BWP7T35P140 U81 ( .A1(n46), .A2(vn_in_5[5]), .B1(n49), .B2(vn_in_7[5]), .ZN(n26) );
  AOI222D1BWP7T35P140 U82 ( .A1(n46), .A2(vn_in_1[5]), .B1(n49), .B2(
        vn_in_3[5]), .C1(n45), .C2(vn_in_2[5]), .ZN(n25) );
  AOI32D1BWP7T35P140 U83 ( .A1(n27), .A2(mac_cnt[2]), .A3(n26), .B1(n25), .B2(
        n38), .ZN(n28) );
  AO21D1BWP7T35P140 U84 ( .A1(n44), .A2(vn_in_0[5]), .B(n28), .Z(n_zz_4[5]) );
  AOI22D1BWP7T35P140 U85 ( .A1(n45), .A2(vn_in_6[4]), .B1(n37), .B2(vn_in_4[4]), .ZN(n31) );
  AOI22D1BWP7T35P140 U86 ( .A1(n46), .A2(vn_in_5[4]), .B1(n49), .B2(vn_in_7[4]), .ZN(n30) );
  AOI222D1BWP7T35P140 U87 ( .A1(n46), .A2(vn_in_1[4]), .B1(n49), .B2(
        vn_in_3[4]), .C1(n45), .C2(vn_in_2[4]), .ZN(n29) );
  AOI32D1BWP7T35P140 U88 ( .A1(n31), .A2(mac_cnt[2]), .A3(n30), .B1(n29), .B2(
        n38), .ZN(n32) );
  AO21D1BWP7T35P140 U89 ( .A1(n44), .A2(vn_in_0[4]), .B(n32), .Z(n_zz_4[4]) );
  AOI22D1BWP7T35P140 U90 ( .A1(n45), .A2(vn_in_6[3]), .B1(n37), .B2(vn_in_4[3]), .ZN(n35) );
  AOI22D1BWP7T35P140 U91 ( .A1(n46), .A2(vn_in_5[3]), .B1(n49), .B2(vn_in_7[3]), .ZN(n34) );
  AOI222D1BWP7T35P140 U92 ( .A1(n46), .A2(vn_in_1[3]), .B1(n49), .B2(
        vn_in_3[3]), .C1(n45), .C2(vn_in_2[3]), .ZN(n33) );
  AOI32D1BWP7T35P140 U93 ( .A1(n35), .A2(mac_cnt[2]), .A3(n34), .B1(n33), .B2(
        n38), .ZN(n36) );
  AO21D1BWP7T35P140 U94 ( .A1(n44), .A2(vn_in_0[3]), .B(n36), .Z(n_zz_4[3]) );
  AOI22D1BWP7T35P140 U95 ( .A1(n45), .A2(vn_in_6[7]), .B1(n37), .B2(vn_in_4[7]), .ZN(n41) );
  AOI22D1BWP7T35P140 U96 ( .A1(n46), .A2(vn_in_5[7]), .B1(n49), .B2(vn_in_7[7]), .ZN(n40) );
  AOI222D1BWP7T35P140 U97 ( .A1(n46), .A2(vn_in_1[7]), .B1(n49), .B2(
        vn_in_3[7]), .C1(n45), .C2(vn_in_2[7]), .ZN(n39) );
  AOI32D1BWP7T35P140 U98 ( .A1(n41), .A2(mac_cnt[2]), .A3(n40), .B1(n39), .B2(
        n38), .ZN(n42) );
  AN2D0BWP7T35P140 U99 ( .A1(n49), .A2(mac_cnt[2]), .Z(n48) );
  AN3D0BWP7T35P140 U100 ( .A1(n48), .A2(mac_en), .A3(en), .Z(N106) );
  OA21D0BWP7T35P140 U101 ( .A1(n46), .A2(n45), .B(mac_en), .Z(N100) );
  NR2D1BWP7T35P140 U102 ( .A1(n48), .A2(n47), .ZN(n55) );
  OA21D0BWP7T35P140 U103 ( .A1(mac_cnt[2]), .A2(n49), .B(n55), .Z(N101) );
  XOR2D0BWP7T35P140 U104 ( .A1(table_1_s1[18]), .A2(intadd_18_n1), .Z(n51) );
  ND2D1BWP7T35P140 U105 ( .A1(n_zz_5[16]), .A2(n52), .ZN(n50) );
  XNR2D0BWP7T35P140 U106 ( .A1(n51), .A2(n50), .ZN(N79) );
  XOR2D0BWP7T35P140 U107 ( .A1(table_1_s2[18]), .A2(intadd_17_n1), .Z(n54) );
  ND2D1BWP7T35P140 U108 ( .A1(n_zz_6[16]), .A2(n52), .ZN(n53) );
  XNR2D0BWP7T35P140 U109 ( .A1(n54), .A2(n53), .ZN(N98) );
  OA21D0BWP7T35P140 U110 ( .A1(vn_vld), .A2(n55), .B(en), .Z(n43) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cordic_int_0 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWP7T35P140 latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cordic_int_2 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWP7T35P140 latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cordic_int_1 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWP7T35P140 latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module cordic_int ( en, vld, y, x, res, res_vld, clk, resetn );
  input [15:0] y;
  input [15:0] x;
  output [7:0] res;
  input en, vld, clk, resetn;
  output res_vld;
  wire   n_Logic0_, xn_rightshift_21_, cal_en, nozero_flg, N80, N230, N231,
         N232, N233, N234, N235, N236, N238, N239, N240, N241, N242, N243,
         N244, N245, N246, N247, N248, N249, N250, N251, N252, N253, N254,
         N255, N256, N257, N258, N259, N261, N262, N263, N264, N265, N266,
         N267, N268, N271, N272, N273, N274, N275, N276, N277, N278, N279,
         N280, N281, N282, N283, N284, N285, N286, N287, N288, N289, N290,
         N291, N292, N293, N294, N295, N296, N297, N299, net5958, net5964,
         net5969, C26_DATA2_0, C26_DATA2_1, C26_DATA2_2, C26_DATA2_3,
         C26_DATA2_4, C26_DATA2_5, C26_DATA2_6, C26_DATA2_7, C26_DATA2_8,
         C26_DATA2_9, C26_DATA2_10, C26_DATA2_11, C26_DATA2_12, C26_DATA2_13,
         C26_DATA2_14, C26_DATA2_15, C26_DATA2_16, C26_DATA2_17, C26_DATA2_18,
         C26_DATA2_19, C26_DATA2_20, C25_DATA2_0, C25_DATA2_1, C25_DATA2_2,
         C25_DATA2_3, C25_DATA2_4, C25_DATA2_5, C25_DATA2_6, C25_DATA2_7,
         C25_DATA2_8, C25_DATA2_9, C25_DATA2_10, C25_DATA2_11, C25_DATA2_12,
         C25_DATA2_13, C25_DATA2_14, C25_DATA2_15, C25_DATA2_16, C25_DATA2_17,
         C25_DATA2_18, C25_DATA2_19, C25_DATA2_20, n152, n153,
         U2_RSOP_72_C2_Z_20, U2_RSOP_72_C2_Z_19, U2_RSOP_72_C2_Z_18,
         U2_RSOP_72_C2_Z_17, U2_RSOP_72_C2_Z_16, U2_RSOP_72_C2_Z_15,
         U2_RSOP_72_C2_Z_14, U2_RSOP_72_C2_Z_13, U2_RSOP_72_C2_Z_12,
         U2_RSOP_72_C2_Z_11, U2_RSOP_72_C2_Z_10, U2_RSOP_72_C2_Z_9,
         U2_RSOP_72_C2_Z_8, U2_RSOP_72_C2_Z_7, U2_RSOP_72_C2_Z_6,
         U2_RSOP_72_C2_Z_5, U2_RSOP_72_C2_Z_4, U2_RSOP_72_C2_Z_3,
         U2_RSOP_72_C2_Z_2, U2_RSOP_72_C2_Z_1, U2_RSOP_72_C2_Z_0, C1_Z_0,
         U2_RSOP_71_C2_Z_20, U2_RSOP_71_C2_Z_19, U2_RSOP_71_C2_Z_18,
         U2_RSOP_71_C2_Z_17, U2_RSOP_71_C2_Z_16, U2_RSOP_71_C2_Z_15,
         U2_RSOP_71_C2_Z_14, U2_RSOP_71_C2_Z_13, U2_RSOP_71_C2_Z_12,
         U2_RSOP_71_C2_Z_11, U2_RSOP_71_C2_Z_10, U2_RSOP_71_C2_Z_9,
         U2_RSOP_71_C2_Z_8, U2_RSOP_71_C2_Z_7, U2_RSOP_71_C2_Z_6,
         U2_RSOP_71_C2_Z_5, U2_RSOP_71_C2_Z_4, U2_RSOP_71_C2_Z_3,
         U2_RSOP_71_C2_Z_2, U2_RSOP_71_C2_Z_1, U2_RSOP_71_C2_Z_0,
         DP_OP_37J1_122_4340_n20, DP_OP_37J1_122_4340_n19,
         DP_OP_37J1_122_4340_n18, DP_OP_37J1_122_4340_n17,
         DP_OP_37J1_122_4340_n16, DP_OP_37J1_122_4340_n15,
         DP_OP_37J1_122_4340_n14, DP_OP_37J1_122_4340_n8,
         DP_OP_37J1_122_4340_n7, DP_OP_37J1_122_4340_n6,
         DP_OP_37J1_122_4340_n5, DP_OP_37J1_122_4340_n4,
         DP_OP_37J1_122_4340_n3, DP_OP_37J1_122_4340_n2,
         DP_OP_67J1_125_1637_n48, DP_OP_67J1_125_1637_n47,
         DP_OP_67J1_125_1637_n46, DP_OP_67J1_125_1637_n45,
         DP_OP_67J1_125_1637_n44, DP_OP_67J1_125_1637_n43,
         DP_OP_67J1_125_1637_n42, DP_OP_67J1_125_1637_n41,
         DP_OP_67J1_125_1637_n40, DP_OP_67J1_125_1637_n39,
         DP_OP_67J1_125_1637_n38, DP_OP_67J1_125_1637_n37,
         DP_OP_67J1_125_1637_n36, DP_OP_67J1_125_1637_n35,
         DP_OP_67J1_125_1637_n34, DP_OP_67J1_125_1637_n33,
         DP_OP_67J1_125_1637_n32, DP_OP_67J1_125_1637_n31,
         DP_OP_67J1_125_1637_n30, DP_OP_67J1_125_1637_n29,
         DP_OP_67J1_125_1637_n28, DP_OP_67J1_125_1637_n22,
         DP_OP_67J1_125_1637_n21, DP_OP_67J1_125_1637_n20,
         DP_OP_67J1_125_1637_n19, DP_OP_67J1_125_1637_n18,
         DP_OP_67J1_125_1637_n17, DP_OP_67J1_125_1637_n16,
         DP_OP_67J1_125_1637_n15, DP_OP_67J1_125_1637_n14,
         DP_OP_67J1_125_1637_n13, DP_OP_67J1_125_1637_n12,
         DP_OP_67J1_125_1637_n11, DP_OP_67J1_125_1637_n10,
         DP_OP_67J1_125_1637_n9, DP_OP_67J1_125_1637_n8,
         DP_OP_67J1_125_1637_n7, DP_OP_67J1_125_1637_n6,
         DP_OP_67J1_125_1637_n5, DP_OP_67J1_125_1637_n4,
         DP_OP_67J1_125_1637_n3, DP_OP_67J1_125_1637_n2,
         DP_OP_79J1_129_3678_n48, DP_OP_79J1_129_3678_n47,
         DP_OP_79J1_129_3678_n46, DP_OP_79J1_129_3678_n45,
         DP_OP_79J1_129_3678_n44, DP_OP_79J1_129_3678_n43,
         DP_OP_79J1_129_3678_n42, DP_OP_79J1_129_3678_n41,
         DP_OP_79J1_129_3678_n40, DP_OP_79J1_129_3678_n39,
         DP_OP_79J1_129_3678_n38, DP_OP_79J1_129_3678_n37,
         DP_OP_79J1_129_3678_n36, DP_OP_79J1_129_3678_n35,
         DP_OP_79J1_129_3678_n34, DP_OP_79J1_129_3678_n33,
         DP_OP_79J1_129_3678_n32, DP_OP_79J1_129_3678_n31,
         DP_OP_79J1_129_3678_n30, DP_OP_79J1_129_3678_n29,
         DP_OP_79J1_129_3678_n28, DP_OP_79J1_129_3678_n22,
         DP_OP_79J1_129_3678_n21, DP_OP_79J1_129_3678_n20,
         DP_OP_79J1_129_3678_n19, DP_OP_79J1_129_3678_n18,
         DP_OP_79J1_129_3678_n17, DP_OP_79J1_129_3678_n16,
         DP_OP_79J1_129_3678_n15, DP_OP_79J1_129_3678_n14,
         DP_OP_79J1_129_3678_n13, DP_OP_79J1_129_3678_n12,
         DP_OP_79J1_129_3678_n11, DP_OP_79J1_129_3678_n10,
         DP_OP_79J1_129_3678_n9, DP_OP_79J1_129_3678_n8,
         DP_OP_79J1_129_3678_n7, DP_OP_79J1_129_3678_n6,
         DP_OP_79J1_129_3678_n5, DP_OP_79J1_129_3678_n4,
         DP_OP_79J1_129_3678_n3, DP_OP_79J1_129_3678_n2, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346;
  wire   [2:0] cal_cnt;
  wire   [20:0] xn;
  wire   [20:0] yn;

  SNPS_CLOCK_GATE_HIGH_cordic_int_0 clk_gate_xn_reg ( .CLK(clk), .EN(N296), 
        .ENCLK(net5958), .TE(n_Logic0_) );
  SNPS_CLOCK_GATE_HIGH_cordic_int_2 clk_gate_yn_reg ( .CLK(clk), .EN(N296), 
        .ENCLK(net5964), .TE(n_Logic0_) );
  SNPS_CLOCK_GATE_HIGH_cordic_int_1 clk_gate_res_rg_reg ( .CLK(clk), .EN(N297), 
        .ENCLK(net5969), .TE(n_Logic0_) );
  DFCNQD1BWP7T35P140 cal_cnt_reg_0_ ( .D(N293), .CP(clk), .CDN(n345), .Q(
        cal_cnt[0]) );
  DFCNQD1BWP7T35P140 finish_reg ( .D(N299), .CP(clk), .CDN(resetn), .Q(res_vld) );
  DFCNQD1BWP7T35P140 cal_en_reg ( .D(n153), .CP(clk), .CDN(n343), .Q(cal_en)
         );
  DFCNQD1BWP7T35P140 cal_cnt_reg_1_ ( .D(N294), .CP(clk), .CDN(n344), .Q(
        cal_cnt[1]) );
  DFCNQD1BWP7T35P140 cal_cnt_reg_2_ ( .D(N295), .CP(clk), .CDN(n345), .Q(
        cal_cnt[2]) );
  DFCNQD1BWP7T35P140 xn_reg_0_ ( .D(N271), .CP(net5958), .CDN(resetn), .Q(
        xn[0]) );
  DFCNQD1BWP7T35P140 xn_reg_1_ ( .D(N272), .CP(net5958), .CDN(n345), .Q(xn[1])
         );
  DFCNQD1BWP7T35P140 xn_reg_2_ ( .D(N273), .CP(net5958), .CDN(n345), .Q(xn[2])
         );
  DFCNQD1BWP7T35P140 xn_reg_3_ ( .D(N274), .CP(net5958), .CDN(n345), .Q(xn[3])
         );
  DFCNQD1BWP7T35P140 xn_reg_4_ ( .D(N275), .CP(net5958), .CDN(n345), .Q(xn[4])
         );
  DFCNQD1BWP7T35P140 xn_reg_5_ ( .D(N276), .CP(net5958), .CDN(n345), .Q(xn[5])
         );
  DFCNQD1BWP7T35P140 xn_reg_6_ ( .D(N277), .CP(net5958), .CDN(n345), .Q(xn[6])
         );
  DFCNQD1BWP7T35P140 xn_reg_7_ ( .D(N278), .CP(net5958), .CDN(n345), .Q(xn[7])
         );
  DFCNQD1BWP7T35P140 xn_reg_8_ ( .D(N279), .CP(net5958), .CDN(n344), .Q(xn[8])
         );
  DFCNQD1BWP7T35P140 xn_reg_9_ ( .D(N280), .CP(net5958), .CDN(n345), .Q(xn[9])
         );
  DFCNQD1BWP7T35P140 xn_reg_10_ ( .D(N281), .CP(net5958), .CDN(n343), .Q(
        xn[10]) );
  DFCNQD1BWP7T35P140 xn_reg_11_ ( .D(N282), .CP(net5958), .CDN(n344), .Q(
        xn[11]) );
  DFCNQD1BWP7T35P140 xn_reg_12_ ( .D(N283), .CP(net5958), .CDN(n345), .Q(
        xn[12]) );
  DFCNQD1BWP7T35P140 xn_reg_13_ ( .D(N284), .CP(net5958), .CDN(n343), .Q(
        xn[13]) );
  DFCNQD1BWP7T35P140 xn_reg_14_ ( .D(N285), .CP(net5958), .CDN(n344), .Q(
        xn[14]) );
  DFCNQD1BWP7T35P140 xn_reg_15_ ( .D(N286), .CP(net5958), .CDN(n345), .Q(
        xn[15]) );
  DFCNQD1BWP7T35P140 xn_reg_16_ ( .D(N287), .CP(net5958), .CDN(n343), .Q(
        xn[16]) );
  DFCNQD1BWP7T35P140 xn_reg_17_ ( .D(N288), .CP(net5958), .CDN(n344), .Q(
        xn[17]) );
  DFCNQD1BWP7T35P140 xn_reg_18_ ( .D(N289), .CP(net5958), .CDN(n345), .Q(
        xn[18]) );
  DFCNQD1BWP7T35P140 xn_reg_19_ ( .D(N290), .CP(net5958), .CDN(n343), .Q(
        xn[19]) );
  DFCNQD1BWP7T35P140 xn_reg_20_ ( .D(N291), .CP(net5958), .CDN(n344), .Q(
        xn[20]) );
  DFCNQD1BWP7T35P140 xn_reg_21_ ( .D(N292), .CP(net5958), .CDN(n343), .Q(
        xn_rightshift_21_) );
  DFCNQD1BWP7T35P140 yn_reg_0_ ( .D(N238), .CP(net5964), .CDN(n343), .Q(yn[0])
         );
  DFCNQD1BWP7T35P140 yn_reg_1_ ( .D(N239), .CP(net5964), .CDN(n343), .Q(yn[1])
         );
  DFCNQD1BWP7T35P140 yn_reg_2_ ( .D(N240), .CP(net5964), .CDN(n343), .Q(yn[2])
         );
  DFCNQD1BWP7T35P140 yn_reg_3_ ( .D(N241), .CP(net5964), .CDN(n343), .Q(yn[3])
         );
  DFCNQD1BWP7T35P140 yn_reg_4_ ( .D(N242), .CP(net5964), .CDN(n343), .Q(yn[4])
         );
  DFCNQD1BWP7T35P140 yn_reg_5_ ( .D(N243), .CP(net5964), .CDN(n343), .Q(yn[5])
         );
  DFCNQD1BWP7T35P140 yn_reg_6_ ( .D(N244), .CP(net5964), .CDN(n343), .Q(yn[6])
         );
  DFCNQD1BWP7T35P140 yn_reg_7_ ( .D(N245), .CP(net5964), .CDN(n343), .Q(yn[7])
         );
  DFCNQD1BWP7T35P140 yn_reg_8_ ( .D(N246), .CP(net5964), .CDN(n343), .Q(yn[8])
         );
  DFCNQD1BWP7T35P140 yn_reg_9_ ( .D(N247), .CP(net5964), .CDN(n343), .Q(yn[9])
         );
  DFCNQD1BWP7T35P140 yn_reg_10_ ( .D(N248), .CP(net5964), .CDN(n343), .Q(
        yn[10]) );
  DFCNQD1BWP7T35P140 yn_reg_11_ ( .D(N249), .CP(net5964), .CDN(n343), .Q(
        yn[11]) );
  DFCNQD1BWP7T35P140 yn_reg_12_ ( .D(N250), .CP(net5964), .CDN(n344), .Q(
        yn[12]) );
  DFCNQD1BWP7T35P140 yn_reg_13_ ( .D(N251), .CP(net5964), .CDN(n344), .Q(
        yn[13]) );
  DFCNQD1BWP7T35P140 yn_reg_14_ ( .D(N252), .CP(net5964), .CDN(n344), .Q(
        yn[14]) );
  DFCNQD1BWP7T35P140 yn_reg_15_ ( .D(N253), .CP(net5964), .CDN(n344), .Q(
        yn[15]) );
  DFCNQD1BWP7T35P140 yn_reg_16_ ( .D(N254), .CP(net5964), .CDN(n344), .Q(
        yn[16]) );
  DFCNQD1BWP7T35P140 yn_reg_17_ ( .D(N255), .CP(net5964), .CDN(n344), .Q(
        yn[17]) );
  DFCNQD1BWP7T35P140 yn_reg_18_ ( .D(N256), .CP(net5964), .CDN(n344), .Q(
        yn[18]) );
  DFCNQD1BWP7T35P140 yn_reg_19_ ( .D(N257), .CP(net5964), .CDN(n344), .Q(
        yn[19]) );
  DFCNQD1BWP7T35P140 yn_reg_20_ ( .D(N258), .CP(net5964), .CDN(n344), .Q(
        yn[20]) );
  DFCNQD1BWP7T35P140 res_rg_reg_0_ ( .D(N261), .CP(net5969), .CDN(n344), .Q(
        res[0]) );
  DFCNQD1BWP7T35P140 res_rg_reg_1_ ( .D(N262), .CP(net5969), .CDN(n344), .Q(
        res[1]) );
  DFCNQD1BWP7T35P140 res_rg_reg_2_ ( .D(N263), .CP(net5969), .CDN(n344), .Q(
        res[2]) );
  DFCNQD1BWP7T35P140 res_rg_reg_3_ ( .D(N264), .CP(net5969), .CDN(n345), .Q(
        res[3]) );
  DFCNQD1BWP7T35P140 res_rg_reg_4_ ( .D(N265), .CP(net5969), .CDN(n345), .Q(
        res[4]) );
  DFCNQD1BWP7T35P140 res_rg_reg_5_ ( .D(N266), .CP(net5969), .CDN(n345), .Q(
        res[5]) );
  DFCNQD1BWP7T35P140 res_rg_reg_6_ ( .D(N267), .CP(net5969), .CDN(n345), .Q(
        res[6]) );
  DFCNQD1BWP7T35P140 res_rg_reg_7_ ( .D(N268), .CP(net5969), .CDN(n345), .Q(
        res[7]) );
  DFSNQD1BWP7T35P140 nozero_flg_reg ( .D(n152), .CP(clk), .SDN(n345), .Q(
        nozero_flg) );
  FA1D1BWP7T35P140 DP_OP_37J1_122_4340_U9 ( .A(N80), .B(res[0]), .CI(
        DP_OP_37J1_122_4340_n20), .CO(DP_OP_37J1_122_4340_n8), .S(N230) );
  FA1D1BWP7T35P140 DP_OP_37J1_122_4340_U8 ( .A(res[1]), .B(
        DP_OP_37J1_122_4340_n19), .CI(DP_OP_37J1_122_4340_n8), .CO(
        DP_OP_37J1_122_4340_n7), .S(N231) );
  FA1D1BWP7T35P140 DP_OP_37J1_122_4340_U7 ( .A(res[2]), .B(
        DP_OP_37J1_122_4340_n18), .CI(DP_OP_37J1_122_4340_n7), .CO(
        DP_OP_37J1_122_4340_n6), .S(N232) );
  FA1D1BWP7T35P140 DP_OP_37J1_122_4340_U6 ( .A(res[3]), .B(
        DP_OP_37J1_122_4340_n17), .CI(DP_OP_37J1_122_4340_n6), .CO(
        DP_OP_37J1_122_4340_n5), .S(N233) );
  FA1D1BWP7T35P140 DP_OP_37J1_122_4340_U5 ( .A(res[4]), .B(
        DP_OP_37J1_122_4340_n16), .CI(DP_OP_37J1_122_4340_n5), .CO(
        DP_OP_37J1_122_4340_n4), .S(N234) );
  FA1D1BWP7T35P140 DP_OP_37J1_122_4340_U4 ( .A(res[5]), .B(
        DP_OP_37J1_122_4340_n15), .CI(DP_OP_37J1_122_4340_n4), .CO(
        DP_OP_37J1_122_4340_n3), .S(N235) );
  FA1D1BWP7T35P140 DP_OP_37J1_122_4340_U3 ( .A(res[6]), .B(
        DP_OP_37J1_122_4340_n14), .CI(DP_OP_37J1_122_4340_n3), .CO(
        DP_OP_37J1_122_4340_n2), .S(N236) );
  FA1D1BWP7T35P140 DP_OP_67J1_125_1637_U23 ( .A(C1_Z_0), .B(U2_RSOP_71_C2_Z_0), 
        .CI(DP_OP_67J1_125_1637_n48), .CO(DP_OP_67J1_125_1637_n22), .S(
        C25_DATA2_0) );
  FA1D1BWP7T35P140 DP_OP_67J1_125_1637_U22 ( .A(U2_RSOP_71_C2_Z_1), .B(
        DP_OP_67J1_125_1637_n47), .CI(DP_OP_67J1_125_1637_n22), .CO(
        DP_OP_67J1_125_1637_n21), .S(C25_DATA2_1) );
  FA1D1BWP7T35P140 DP_OP_67J1_125_1637_U21 ( .A(U2_RSOP_71_C2_Z_2), .B(
        DP_OP_67J1_125_1637_n46), .CI(DP_OP_67J1_125_1637_n21), .CO(
        DP_OP_67J1_125_1637_n20), .S(C25_DATA2_2) );
  FA1D1BWP7T35P140 DP_OP_67J1_125_1637_U20 ( .A(U2_RSOP_71_C2_Z_3), .B(
        DP_OP_67J1_125_1637_n45), .CI(DP_OP_67J1_125_1637_n20), .CO(
        DP_OP_67J1_125_1637_n19), .S(C25_DATA2_3) );
  FA1D1BWP7T35P140 DP_OP_67J1_125_1637_U19 ( .A(U2_RSOP_71_C2_Z_4), .B(
        DP_OP_67J1_125_1637_n44), .CI(DP_OP_67J1_125_1637_n19), .CO(
        DP_OP_67J1_125_1637_n18), .S(C25_DATA2_4) );
  FA1D1BWP7T35P140 DP_OP_67J1_125_1637_U18 ( .A(U2_RSOP_71_C2_Z_5), .B(
        DP_OP_67J1_125_1637_n43), .CI(DP_OP_67J1_125_1637_n18), .CO(
        DP_OP_67J1_125_1637_n17), .S(C25_DATA2_5) );
  FA1D1BWP7T35P140 DP_OP_67J1_125_1637_U17 ( .A(U2_RSOP_71_C2_Z_6), .B(
        DP_OP_67J1_125_1637_n42), .CI(DP_OP_67J1_125_1637_n17), .CO(
        DP_OP_67J1_125_1637_n16), .S(C25_DATA2_6) );
  FA1D1BWP7T35P140 DP_OP_67J1_125_1637_U16 ( .A(U2_RSOP_71_C2_Z_7), .B(
        DP_OP_67J1_125_1637_n41), .CI(DP_OP_67J1_125_1637_n16), .CO(
        DP_OP_67J1_125_1637_n15), .S(C25_DATA2_7) );
  FA1D1BWP7T35P140 DP_OP_67J1_125_1637_U15 ( .A(U2_RSOP_71_C2_Z_8), .B(
        DP_OP_67J1_125_1637_n40), .CI(DP_OP_67J1_125_1637_n15), .CO(
        DP_OP_67J1_125_1637_n14), .S(C25_DATA2_8) );
  FA1D1BWP7T35P140 DP_OP_67J1_125_1637_U14 ( .A(U2_RSOP_71_C2_Z_9), .B(
        DP_OP_67J1_125_1637_n39), .CI(DP_OP_67J1_125_1637_n14), .CO(
        DP_OP_67J1_125_1637_n13), .S(C25_DATA2_9) );
  FA1D1BWP7T35P140 DP_OP_67J1_125_1637_U13 ( .A(U2_RSOP_71_C2_Z_10), .B(
        DP_OP_67J1_125_1637_n38), .CI(DP_OP_67J1_125_1637_n13), .CO(
        DP_OP_67J1_125_1637_n12), .S(C25_DATA2_10) );
  FA1D1BWP7T35P140 DP_OP_67J1_125_1637_U12 ( .A(U2_RSOP_71_C2_Z_11), .B(
        DP_OP_67J1_125_1637_n37), .CI(DP_OP_67J1_125_1637_n12), .CO(
        DP_OP_67J1_125_1637_n11), .S(C25_DATA2_11) );
  FA1D1BWP7T35P140 DP_OP_67J1_125_1637_U11 ( .A(U2_RSOP_71_C2_Z_12), .B(
        DP_OP_67J1_125_1637_n36), .CI(DP_OP_67J1_125_1637_n11), .CO(
        DP_OP_67J1_125_1637_n10), .S(C25_DATA2_12) );
  FA1D1BWP7T35P140 DP_OP_67J1_125_1637_U10 ( .A(U2_RSOP_71_C2_Z_13), .B(
        DP_OP_67J1_125_1637_n35), .CI(DP_OP_67J1_125_1637_n10), .CO(
        DP_OP_67J1_125_1637_n9), .S(C25_DATA2_13) );
  FA1D1BWP7T35P140 DP_OP_67J1_125_1637_U9 ( .A(U2_RSOP_71_C2_Z_14), .B(
        DP_OP_67J1_125_1637_n34), .CI(DP_OP_67J1_125_1637_n9), .CO(
        DP_OP_67J1_125_1637_n8), .S(C25_DATA2_14) );
  FA1D1BWP7T35P140 DP_OP_67J1_125_1637_U8 ( .A(U2_RSOP_71_C2_Z_15), .B(
        DP_OP_67J1_125_1637_n33), .CI(DP_OP_67J1_125_1637_n8), .CO(
        DP_OP_67J1_125_1637_n7), .S(C25_DATA2_15) );
  FA1D1BWP7T35P140 DP_OP_67J1_125_1637_U7 ( .A(U2_RSOP_71_C2_Z_16), .B(
        DP_OP_67J1_125_1637_n32), .CI(DP_OP_67J1_125_1637_n7), .CO(
        DP_OP_67J1_125_1637_n6), .S(C25_DATA2_16) );
  FA1D1BWP7T35P140 DP_OP_67J1_125_1637_U6 ( .A(U2_RSOP_71_C2_Z_17), .B(
        DP_OP_67J1_125_1637_n31), .CI(DP_OP_67J1_125_1637_n6), .CO(
        DP_OP_67J1_125_1637_n5), .S(C25_DATA2_17) );
  FA1D1BWP7T35P140 DP_OP_67J1_125_1637_U5 ( .A(U2_RSOP_71_C2_Z_18), .B(
        DP_OP_67J1_125_1637_n30), .CI(DP_OP_67J1_125_1637_n5), .CO(
        DP_OP_67J1_125_1637_n4), .S(C25_DATA2_18) );
  FA1D1BWP7T35P140 DP_OP_67J1_125_1637_U4 ( .A(U2_RSOP_71_C2_Z_19), .B(
        DP_OP_67J1_125_1637_n29), .CI(DP_OP_67J1_125_1637_n4), .CO(
        DP_OP_67J1_125_1637_n3), .S(C25_DATA2_19) );
  FA1D1BWP7T35P140 DP_OP_67J1_125_1637_U3 ( .A(U2_RSOP_71_C2_Z_20), .B(
        DP_OP_67J1_125_1637_n28), .CI(DP_OP_67J1_125_1637_n3), .CO(
        DP_OP_67J1_125_1637_n2), .S(C25_DATA2_20) );
  FA1D1BWP7T35P140 DP_OP_79J1_129_3678_U23 ( .A(n2), .B(U2_RSOP_72_C2_Z_0), 
        .CI(DP_OP_79J1_129_3678_n48), .CO(DP_OP_79J1_129_3678_n22), .S(
        C26_DATA2_0) );
  FA1D1BWP7T35P140 DP_OP_79J1_129_3678_U22 ( .A(U2_RSOP_72_C2_Z_1), .B(
        DP_OP_79J1_129_3678_n47), .CI(DP_OP_79J1_129_3678_n22), .CO(
        DP_OP_79J1_129_3678_n21), .S(C26_DATA2_1) );
  FA1D1BWP7T35P140 DP_OP_79J1_129_3678_U21 ( .A(U2_RSOP_72_C2_Z_2), .B(
        DP_OP_79J1_129_3678_n46), .CI(DP_OP_79J1_129_3678_n21), .CO(
        DP_OP_79J1_129_3678_n20), .S(C26_DATA2_2) );
  FA1D1BWP7T35P140 DP_OP_79J1_129_3678_U20 ( .A(U2_RSOP_72_C2_Z_3), .B(
        DP_OP_79J1_129_3678_n45), .CI(DP_OP_79J1_129_3678_n20), .CO(
        DP_OP_79J1_129_3678_n19), .S(C26_DATA2_3) );
  FA1D1BWP7T35P140 DP_OP_79J1_129_3678_U19 ( .A(U2_RSOP_72_C2_Z_4), .B(
        DP_OP_79J1_129_3678_n44), .CI(DP_OP_79J1_129_3678_n19), .CO(
        DP_OP_79J1_129_3678_n18), .S(C26_DATA2_4) );
  FA1D1BWP7T35P140 DP_OP_79J1_129_3678_U18 ( .A(U2_RSOP_72_C2_Z_5), .B(
        DP_OP_79J1_129_3678_n43), .CI(DP_OP_79J1_129_3678_n18), .CO(
        DP_OP_79J1_129_3678_n17), .S(C26_DATA2_5) );
  FA1D1BWP7T35P140 DP_OP_79J1_129_3678_U17 ( .A(U2_RSOP_72_C2_Z_6), .B(
        DP_OP_79J1_129_3678_n42), .CI(DP_OP_79J1_129_3678_n17), .CO(
        DP_OP_79J1_129_3678_n16), .S(C26_DATA2_6) );
  FA1D1BWP7T35P140 DP_OP_79J1_129_3678_U16 ( .A(U2_RSOP_72_C2_Z_7), .B(
        DP_OP_79J1_129_3678_n41), .CI(DP_OP_79J1_129_3678_n16), .CO(
        DP_OP_79J1_129_3678_n15), .S(C26_DATA2_7) );
  FA1D1BWP7T35P140 DP_OP_79J1_129_3678_U15 ( .A(U2_RSOP_72_C2_Z_8), .B(
        DP_OP_79J1_129_3678_n40), .CI(DP_OP_79J1_129_3678_n15), .CO(
        DP_OP_79J1_129_3678_n14), .S(C26_DATA2_8) );
  FA1D1BWP7T35P140 DP_OP_79J1_129_3678_U14 ( .A(U2_RSOP_72_C2_Z_9), .B(
        DP_OP_79J1_129_3678_n39), .CI(DP_OP_79J1_129_3678_n14), .CO(
        DP_OP_79J1_129_3678_n13), .S(C26_DATA2_9) );
  FA1D1BWP7T35P140 DP_OP_79J1_129_3678_U13 ( .A(U2_RSOP_72_C2_Z_10), .B(
        DP_OP_79J1_129_3678_n38), .CI(DP_OP_79J1_129_3678_n13), .CO(
        DP_OP_79J1_129_3678_n12), .S(C26_DATA2_10) );
  FA1D1BWP7T35P140 DP_OP_79J1_129_3678_U12 ( .A(U2_RSOP_72_C2_Z_11), .B(
        DP_OP_79J1_129_3678_n37), .CI(DP_OP_79J1_129_3678_n12), .CO(
        DP_OP_79J1_129_3678_n11), .S(C26_DATA2_11) );
  FA1D1BWP7T35P140 DP_OP_79J1_129_3678_U11 ( .A(U2_RSOP_72_C2_Z_12), .B(
        DP_OP_79J1_129_3678_n36), .CI(DP_OP_79J1_129_3678_n11), .CO(
        DP_OP_79J1_129_3678_n10), .S(C26_DATA2_12) );
  FA1D1BWP7T35P140 DP_OP_79J1_129_3678_U10 ( .A(U2_RSOP_72_C2_Z_13), .B(
        DP_OP_79J1_129_3678_n35), .CI(DP_OP_79J1_129_3678_n10), .CO(
        DP_OP_79J1_129_3678_n9), .S(C26_DATA2_13) );
  FA1D1BWP7T35P140 DP_OP_79J1_129_3678_U9 ( .A(U2_RSOP_72_C2_Z_14), .B(
        DP_OP_79J1_129_3678_n34), .CI(DP_OP_79J1_129_3678_n9), .CO(
        DP_OP_79J1_129_3678_n8), .S(C26_DATA2_14) );
  FA1D1BWP7T35P140 DP_OP_79J1_129_3678_U8 ( .A(U2_RSOP_72_C2_Z_15), .B(
        DP_OP_79J1_129_3678_n33), .CI(DP_OP_79J1_129_3678_n8), .CO(
        DP_OP_79J1_129_3678_n7), .S(C26_DATA2_15) );
  FA1D1BWP7T35P140 DP_OP_79J1_129_3678_U7 ( .A(U2_RSOP_72_C2_Z_16), .B(
        DP_OP_79J1_129_3678_n32), .CI(DP_OP_79J1_129_3678_n7), .CO(
        DP_OP_79J1_129_3678_n6), .S(C26_DATA2_16) );
  FA1D1BWP7T35P140 DP_OP_79J1_129_3678_U6 ( .A(U2_RSOP_72_C2_Z_17), .B(
        DP_OP_79J1_129_3678_n31), .CI(DP_OP_79J1_129_3678_n6), .CO(
        DP_OP_79J1_129_3678_n5), .S(C26_DATA2_17) );
  FA1D1BWP7T35P140 DP_OP_79J1_129_3678_U5 ( .A(U2_RSOP_72_C2_Z_18), .B(
        DP_OP_79J1_129_3678_n30), .CI(DP_OP_79J1_129_3678_n5), .CO(
        DP_OP_79J1_129_3678_n4), .S(C26_DATA2_18) );
  FA1D1BWP7T35P140 DP_OP_79J1_129_3678_U4 ( .A(U2_RSOP_72_C2_Z_19), .B(
        DP_OP_79J1_129_3678_n29), .CI(DP_OP_79J1_129_3678_n4), .CO(
        DP_OP_79J1_129_3678_n3), .S(C26_DATA2_19) );
  FA1D1BWP7T35P140 DP_OP_79J1_129_3678_U3 ( .A(U2_RSOP_72_C2_Z_20), .B(
        DP_OP_79J1_129_3678_n28), .CI(DP_OP_79J1_129_3678_n3), .CO(
        DP_OP_79J1_129_3678_n2), .S(C26_DATA2_20) );
  DFCNQD1BWP7T35P140 yn_reg_21_ ( .D(N259), .CP(net5964), .CDN(n344), .Q(N80)
         );
  INVD1BWP7T35P140 U3 ( .I(n346), .ZN(n1) );
  INVD1BWP7T35P140 U4 ( .I(n1), .ZN(n2) );
  DEL025D1BWP7T35P140 U5 ( .I(C1_Z_0), .Z(n3) );
  IND2D1BWP7T35P140 U6 ( .A1(n341), .B1(nozero_flg), .ZN(n248) );
  TIELBWP7T35P140 U7 ( .ZN(n_Logic0_) );
  DEL025D1BWP7T35P140 U8 ( .I(resetn), .Z(n343) );
  DEL025D1BWP7T35P140 U9 ( .I(resetn), .Z(n345) );
  DEL025D1BWP7T35P140 U10 ( .I(resetn), .Z(n344) );
  INVD1BWP7T35P140 U11 ( .I(cal_en), .ZN(n339) );
  NR2D1BWP7T35P140 U12 ( .A1(cal_cnt[0]), .A2(n339), .ZN(N293) );
  AN2D0BWP7T35P140 U13 ( .A1(cal_cnt[1]), .A2(cal_cnt[0]), .Z(n309) );
  INVD1BWP7T35P140 U14 ( .I(n309), .ZN(n325) );
  NR2D1BWP7T35P140 U15 ( .A1(n325), .A2(cal_cnt[2]), .ZN(n329) );
  AOI21D1BWP7T35P140 U16 ( .A1(cal_cnt[2]), .A2(n325), .B(n329), .ZN(n4) );
  NR2D1BWP7T35P140 U17 ( .A1(n4), .A2(n339), .ZN(N295) );
  NR2D1BWP7T35P140 U18 ( .A1(cal_cnt[1]), .A2(cal_cnt[0]), .ZN(n321) );
  INVD1BWP7T35P140 U19 ( .I(n321), .ZN(n236) );
  DEL025D1BWP7T35P140 U20 ( .I(n236), .Z(n331) );
  ND2D1BWP7T35P140 U21 ( .A1(n331), .A2(n325), .ZN(n191) );
  NR2D1BWP7T35P140 U22 ( .A1(n339), .A2(n191), .ZN(N294) );
  INR2D1BWP7T35P140 U23 ( .A1(n321), .B1(cal_cnt[2]), .ZN(n341) );
  INR2D1BWP7T35P140 U24 ( .A1(N230), .B1(n248), .ZN(N261) );
  INR2D1BWP7T35P140 U25 ( .A1(N231), .B1(n248), .ZN(N262) );
  INR2D1BWP7T35P140 U26 ( .A1(N232), .B1(n248), .ZN(N263) );
  INR2D1BWP7T35P140 U27 ( .A1(N233), .B1(n248), .ZN(N264) );
  INR2D1BWP7T35P140 U28 ( .A1(N234), .B1(n248), .ZN(N265) );
  NR4D0BWP7T35P140 U29 ( .A1(x[12]), .A2(x[11]), .A3(x[10]), .A4(x[9]), .ZN(n7) );
  NR4D0BWP7T35P140 U30 ( .A1(x[8]), .A2(x[7]), .A3(x[6]), .A4(x[5]), .ZN(n6)
         );
  NR4D0BWP7T35P140 U31 ( .A1(x[4]), .A2(x[3]), .A3(x[0]), .A4(x[2]), .ZN(n5)
         );
  ND3D1BWP7T35P140 U32 ( .A1(n7), .A2(n6), .A3(n5), .ZN(n8) );
  NR4D0BWP7T35P140 U33 ( .A1(x[14]), .A2(x[13]), .A3(x[1]), .A4(n8), .ZN(n16)
         );
  NR4D0BWP7T35P140 U34 ( .A1(y[7]), .A2(y[6]), .A3(y[4]), .A4(y[3]), .ZN(n11)
         );
  NR4D0BWP7T35P140 U35 ( .A1(y[10]), .A2(y[9]), .A3(y[8]), .A4(y[5]), .ZN(n10)
         );
  NR4D0BWP7T35P140 U36 ( .A1(x[15]), .A2(y[13]), .A3(y[12]), .A4(y[11]), .ZN(
        n9) );
  ND4D1BWP7T35P140 U37 ( .A1(n16), .A2(n11), .A3(n10), .A4(n9), .ZN(n14) );
  INVD1BWP7T35P140 U38 ( .I(y[2]), .ZN(n335) );
  INVD1BWP7T35P140 U39 ( .I(y[1]), .ZN(n338) );
  INVD1BWP7T35P140 U40 ( .I(y[14]), .ZN(n334) );
  INVD1BWP7T35P140 U41 ( .I(y[15]), .ZN(n55) );
  ND4D1BWP7T35P140 U42 ( .A1(n335), .A2(n338), .A3(n334), .A4(n55), .ZN(n12)
         );
  OR2D1BWP7T35P140 U43 ( .A1(y[0]), .A2(n12), .Z(n13) );
  NR2D1BWP7T35P140 U44 ( .A1(n14), .A2(n13), .ZN(n342) );
  INVD1BWP7T35P140 U45 ( .I(n342), .ZN(n17) );
  INVD1BWP7T35P140 U46 ( .I(x[15]), .ZN(n15) );
  IND2D1BWP7T35P140 U47 ( .A1(n16), .B1(n15), .ZN(n47) );
  ND3D1BWP7T35P140 U48 ( .A1(n17), .A2(n47), .A3(n341), .ZN(n278) );
  ND2D1BWP7T35P140 U49 ( .A1(n278), .A2(n248), .ZN(n22) );
  AN2D0BWP7T35P140 U50 ( .A1(C25_DATA2_0), .A2(n22), .Z(N238) );
  AN2D0BWP7T35P140 U51 ( .A1(C26_DATA2_0), .A2(n22), .Z(N271) );
  INR2D1BWP7T35P140 U52 ( .A1(N235), .B1(n248), .ZN(N266) );
  AN2D0BWP7T35P140 U53 ( .A1(C26_DATA2_1), .A2(n22), .Z(N272) );
  DEL025D1BWP7T35P140 U54 ( .I(n22), .Z(n336) );
  AN2D0BWP7T35P140 U55 ( .A1(C25_DATA2_1), .A2(n336), .Z(N239) );
  DEL025D1BWP7T35P140 U56 ( .I(n22), .Z(n63) );
  AN2D0BWP7T35P140 U57 ( .A1(C25_DATA2_2), .A2(n63), .Z(N240) );
  AN2D0BWP7T35P140 U58 ( .A1(C26_DATA2_2), .A2(n22), .Z(N273) );
  AN2D0BWP7T35P140 U59 ( .A1(C25_DATA2_3), .A2(n22), .Z(N241) );
  AN2D0BWP7T35P140 U60 ( .A1(C26_DATA2_3), .A2(n22), .Z(N274) );
  AN2D0BWP7T35P140 U61 ( .A1(C26_DATA2_19), .A2(n336), .Z(N290) );
  INVD1BWP7T35P140 U62 ( .I(N80), .ZN(n71) );
  NR2D1BWP7T35P140 U63 ( .A1(n248), .A2(n71), .ZN(n59) );
  IND2D1BWP7T35P140 U64 ( .A1(n59), .B1(n278), .ZN(n346) );
  DEL025D1BWP7T35P140 U65 ( .I(n248), .Z(n46) );
  INVD1BWP7T35P140 U66 ( .I(xn_rightshift_21_), .ZN(n18) );
  NR2D1BWP7T35P140 U67 ( .A1(n46), .A2(n18), .ZN(n56) );
  INVD1BWP7T35P140 U68 ( .I(n278), .ZN(n151) );
  ND2D1BWP7T35P140 U69 ( .A1(n151), .A2(x[15]), .ZN(n68) );
  IND2D1BWP7T35P140 U70 ( .A1(n59), .B1(n68), .ZN(n19) );
  XOR2D0BWP7T35P140 U71 ( .A1(n19), .A2(n2), .Z(n20) );
  XOR2D0BWP7T35P140 U72 ( .A1(n56), .A2(n20), .Z(n21) );
  XOR2D0BWP7T35P140 U73 ( .A1(n21), .A2(DP_OP_79J1_129_3678_n2), .Z(n23) );
  AN2D0BWP7T35P140 U74 ( .A1(n23), .A2(n22), .Z(N292) );
  DEL025D1BWP7T35P140 U75 ( .I(n248), .Z(n322) );
  INR2D1BWP7T35P140 U76 ( .A1(yn[0]), .B1(n322), .ZN(U2_RSOP_71_C2_Z_0) );
  INVD1BWP7T35P140 U77 ( .I(yn[1]), .ZN(n179) );
  NR2D1BWP7T35P140 U78 ( .A1(n46), .A2(n179), .ZN(U2_RSOP_71_C2_Z_1) );
  INVD1BWP7T35P140 U79 ( .I(yn[2]), .ZN(n181) );
  NR2D1BWP7T35P140 U80 ( .A1(n46), .A2(n181), .ZN(U2_RSOP_71_C2_Z_2) );
  INR2D1BWP7T35P140 U81 ( .A1(yn[3]), .B1(n322), .ZN(U2_RSOP_71_C2_Z_3) );
  INVD1BWP7T35P140 U82 ( .I(yn[4]), .ZN(n173) );
  NR2D1BWP7T35P140 U83 ( .A1(n46), .A2(n173), .ZN(U2_RSOP_71_C2_Z_4) );
  INVD1BWP7T35P140 U84 ( .I(yn[5]), .ZN(n167) );
  NR2D1BWP7T35P140 U85 ( .A1(n46), .A2(n167), .ZN(U2_RSOP_71_C2_Z_5) );
  INVD1BWP7T35P140 U86 ( .I(yn[6]), .ZN(n161) );
  NR2D1BWP7T35P140 U87 ( .A1(n46), .A2(n161), .ZN(U2_RSOP_71_C2_Z_6) );
  INVD1BWP7T35P140 U88 ( .I(yn[7]), .ZN(n24) );
  NR2D1BWP7T35P140 U89 ( .A1(n46), .A2(n24), .ZN(U2_RSOP_71_C2_Z_7) );
  INVD1BWP7T35P140 U90 ( .I(yn[8]), .ZN(n25) );
  NR2D1BWP7T35P140 U91 ( .A1(n46), .A2(n25), .ZN(U2_RSOP_71_C2_Z_8) );
  INVD1BWP7T35P140 U92 ( .I(yn[9]), .ZN(n26) );
  NR2D1BWP7T35P140 U93 ( .A1(n46), .A2(n26), .ZN(U2_RSOP_71_C2_Z_9) );
  INR2D1BWP7T35P140 U94 ( .A1(yn[10]), .B1(n322), .ZN(U2_RSOP_71_C2_Z_10) );
  INVD1BWP7T35P140 U95 ( .I(yn[11]), .ZN(n27) );
  NR2D1BWP7T35P140 U96 ( .A1(n46), .A2(n27), .ZN(U2_RSOP_71_C2_Z_11) );
  INVD1BWP7T35P140 U97 ( .I(yn[12]), .ZN(n28) );
  NR2D1BWP7T35P140 U98 ( .A1(n46), .A2(n28), .ZN(U2_RSOP_71_C2_Z_12) );
  INVD1BWP7T35P140 U99 ( .I(yn[13]), .ZN(n29) );
  NR2D1BWP7T35P140 U100 ( .A1(n46), .A2(n29), .ZN(U2_RSOP_71_C2_Z_13) );
  INVD1BWP7T35P140 U101 ( .I(yn[14]), .ZN(n30) );
  NR2D1BWP7T35P140 U102 ( .A1(n46), .A2(n30), .ZN(U2_RSOP_71_C2_Z_14) );
  INVD1BWP7T35P140 U103 ( .I(yn[15]), .ZN(n31) );
  NR2D1BWP7T35P140 U104 ( .A1(n46), .A2(n31), .ZN(U2_RSOP_71_C2_Z_15) );
  INVD1BWP7T35P140 U105 ( .I(yn[16]), .ZN(n32) );
  NR2D1BWP7T35P140 U106 ( .A1(n46), .A2(n32), .ZN(U2_RSOP_71_C2_Z_16) );
  DEL025D1BWP7T35P140 U107 ( .I(n248), .Z(n223) );
  INVD1BWP7T35P140 U108 ( .I(yn[17]), .ZN(n33) );
  NR2D1BWP7T35P140 U109 ( .A1(n223), .A2(n33), .ZN(U2_RSOP_71_C2_Z_17) );
  INVD1BWP7T35P140 U110 ( .I(yn[18]), .ZN(n77) );
  NR2D1BWP7T35P140 U111 ( .A1(n223), .A2(n77), .ZN(U2_RSOP_71_C2_Z_18) );
  INVD1BWP7T35P140 U112 ( .I(yn[19]), .ZN(n76) );
  NR2D1BWP7T35P140 U113 ( .A1(n46), .A2(n76), .ZN(U2_RSOP_71_C2_Z_19) );
  NR2D1BWP7T35P140 U114 ( .A1(n248), .A2(N80), .ZN(n34) );
  IND2D1BWP7T35P140 U115 ( .A1(n34), .B1(n278), .ZN(C1_Z_0) );
  DEL025D1BWP7T35P140 U116 ( .I(n248), .Z(n285) );
  INVD1BWP7T35P140 U117 ( .I(yn[20]), .ZN(n84) );
  NR2D1BWP7T35P140 U118 ( .A1(n285), .A2(n84), .ZN(U2_RSOP_71_C2_Z_20) );
  AN2D0BWP7T35P140 U119 ( .A1(C26_DATA2_20), .A2(n336), .Z(N291) );
  INR2D1BWP7T35P140 U120 ( .A1(xn[0]), .B1(n322), .ZN(U2_RSOP_72_C2_Z_0) );
  INVD1BWP7T35P140 U121 ( .I(xn[1]), .ZN(n312) );
  NR2D1BWP7T35P140 U122 ( .A1(n285), .A2(n312), .ZN(U2_RSOP_72_C2_Z_1) );
  INVD1BWP7T35P140 U123 ( .I(xn[2]), .ZN(n316) );
  NR2D1BWP7T35P140 U124 ( .A1(n285), .A2(n316), .ZN(U2_RSOP_72_C2_Z_2) );
  INR2D1BWP7T35P140 U125 ( .A1(xn[3]), .B1(n322), .ZN(U2_RSOP_72_C2_Z_3) );
  INVD1BWP7T35P140 U126 ( .I(xn[4]), .ZN(n302) );
  NR2D1BWP7T35P140 U127 ( .A1(n285), .A2(n302), .ZN(U2_RSOP_72_C2_Z_4) );
  INVD1BWP7T35P140 U128 ( .I(xn[5]), .ZN(n295) );
  NR2D1BWP7T35P140 U129 ( .A1(n285), .A2(n295), .ZN(U2_RSOP_72_C2_Z_5) );
  INVD1BWP7T35P140 U130 ( .I(xn[6]), .ZN(n289) );
  NR2D1BWP7T35P140 U131 ( .A1(n285), .A2(n289), .ZN(U2_RSOP_72_C2_Z_6) );
  INVD1BWP7T35P140 U132 ( .I(xn[7]), .ZN(n35) );
  NR2D1BWP7T35P140 U133 ( .A1(n285), .A2(n35), .ZN(U2_RSOP_72_C2_Z_7) );
  INVD1BWP7T35P140 U134 ( .I(xn[8]), .ZN(n36) );
  NR2D1BWP7T35P140 U135 ( .A1(n285), .A2(n36), .ZN(U2_RSOP_72_C2_Z_8) );
  INVD1BWP7T35P140 U136 ( .I(xn[9]), .ZN(n37) );
  NR2D1BWP7T35P140 U137 ( .A1(n285), .A2(n37), .ZN(U2_RSOP_72_C2_Z_9) );
  INR2D1BWP7T35P140 U138 ( .A1(xn[10]), .B1(n322), .ZN(U2_RSOP_72_C2_Z_10) );
  INVD1BWP7T35P140 U139 ( .I(xn[11]), .ZN(n38) );
  NR2D1BWP7T35P140 U140 ( .A1(n285), .A2(n38), .ZN(U2_RSOP_72_C2_Z_11) );
  INVD1BWP7T35P140 U141 ( .I(xn[12]), .ZN(n39) );
  NR2D1BWP7T35P140 U142 ( .A1(n285), .A2(n39), .ZN(U2_RSOP_72_C2_Z_12) );
  INVD1BWP7T35P140 U143 ( .I(xn[13]), .ZN(n40) );
  NR2D1BWP7T35P140 U144 ( .A1(n285), .A2(n40), .ZN(U2_RSOP_72_C2_Z_13) );
  INVD1BWP7T35P140 U145 ( .I(xn[14]), .ZN(n41) );
  NR2D1BWP7T35P140 U146 ( .A1(n285), .A2(n41), .ZN(U2_RSOP_72_C2_Z_14) );
  INVD1BWP7T35P140 U147 ( .I(xn[15]), .ZN(n42) );
  NR2D1BWP7T35P140 U148 ( .A1(n285), .A2(n42), .ZN(U2_RSOP_72_C2_Z_15) );
  INVD1BWP7T35P140 U149 ( .I(xn[16]), .ZN(n43) );
  NR2D1BWP7T35P140 U150 ( .A1(n285), .A2(n43), .ZN(U2_RSOP_72_C2_Z_16) );
  INVD1BWP7T35P140 U151 ( .I(xn[17]), .ZN(n44) );
  NR2D1BWP7T35P140 U152 ( .A1(n46), .A2(n44), .ZN(U2_RSOP_72_C2_Z_17) );
  INVD1BWP7T35P140 U153 ( .I(xn[18]), .ZN(n45) );
  NR2D1BWP7T35P140 U154 ( .A1(n46), .A2(n45), .ZN(U2_RSOP_72_C2_Z_18) );
  INVD1BWP7T35P140 U155 ( .I(xn[19]), .ZN(n190) );
  NR2D1BWP7T35P140 U156 ( .A1(n46), .A2(n190), .ZN(U2_RSOP_72_C2_Z_19) );
  INVD1BWP7T35P140 U157 ( .I(xn[20]), .ZN(n207) );
  NR2D1BWP7T35P140 U158 ( .A1(n46), .A2(n207), .ZN(U2_RSOP_72_C2_Z_20) );
  IND2D1BWP7T35P140 U159 ( .A1(cal_cnt[1]), .B1(cal_cnt[0]), .ZN(n225) );
  INVD1BWP7T35P140 U160 ( .I(n225), .ZN(n310) );
  INVD1BWP7T35P140 U161 ( .I(n310), .ZN(n258) );
  INVD1BWP7T35P140 U162 ( .I(cal_cnt[2]), .ZN(n330) );
  NR2D1BWP7T35P140 U163 ( .A1(n258), .A2(n330), .ZN(n333) );
  AN2D0BWP7T35P140 U164 ( .A1(n333), .A2(en), .Z(N299) );
  OA21D0BWP7T35P140 U165 ( .A1(n341), .A2(nozero_flg), .B(cal_en), .Z(N297) );
  INR2D1BWP7T35P140 U166 ( .A1(n341), .B1(n47), .ZN(n54) );
  INVD1BWP7T35P140 U167 ( .I(n54), .ZN(n337) );
  INVD1BWP7T35P140 U168 ( .I(n337), .ZN(n53) );
  OA21D0BWP7T35P140 U169 ( .A1(n53), .A2(n63), .B(cal_en), .Z(N296) );
  INVD1BWP7T35P140 U170 ( .I(n248), .ZN(n52) );
  IND2D1BWP7T35P140 U171 ( .A1(cal_cnt[0]), .B1(cal_cnt[1]), .ZN(n257) );
  INVD1BWP7T35P140 U172 ( .I(n257), .ZN(n311) );
  INVD1BWP7T35P140 U173 ( .I(n311), .ZN(n137) );
  NR2D1BWP7T35P140 U174 ( .A1(n137), .A2(n330), .ZN(n48) );
  XOR2D0BWP7T35P140 U175 ( .A1(n48), .A2(N80), .Z(n49) );
  XOR2D0BWP7T35P140 U176 ( .A1(res[7]), .A2(n49), .Z(n50) );
  XOR2D0BWP7T35P140 U177 ( .A1(n50), .A2(DP_OP_37J1_122_4340_n2), .Z(n51) );
  NR2D1BWP7T35P140 U178 ( .A1(n278), .A2(n55), .ZN(n187) );
  AO21D1BWP7T35P140 U179 ( .A1(n52), .A2(n51), .B(n187), .Z(N268) );
  AO21D1BWP7T35P140 U180 ( .A1(n52), .A2(N236), .B(n151), .Z(N267) );
  AO22D0BWP7T35P140 U181 ( .A1(C26_DATA2_4), .A2(n336), .B1(x[0]), .B2(n53), 
        .Z(N275) );
  AO22D0BWP7T35P140 U182 ( .A1(C25_DATA2_4), .A2(n63), .B1(y[0]), .B2(n54), 
        .Z(N242) );
  AO22D0BWP7T35P140 U183 ( .A1(C26_DATA2_5), .A2(n336), .B1(x[1]), .B2(n53), 
        .Z(N276) );
  AO22D0BWP7T35P140 U184 ( .A1(C26_DATA2_6), .A2(n336), .B1(x[2]), .B2(n54), 
        .Z(N277) );
  AO22D0BWP7T35P140 U185 ( .A1(C26_DATA2_7), .A2(n336), .B1(x[3]), .B2(n54), 
        .Z(N278) );
  AO22D0BWP7T35P140 U186 ( .A1(C25_DATA2_7), .A2(n63), .B1(y[3]), .B2(n54), 
        .Z(N245) );
  AO22D0BWP7T35P140 U187 ( .A1(C25_DATA2_8), .A2(n63), .B1(y[4]), .B2(n54), 
        .Z(N246) );
  AO22D0BWP7T35P140 U188 ( .A1(C26_DATA2_8), .A2(n336), .B1(x[4]), .B2(n54), 
        .Z(N279) );
  AO22D0BWP7T35P140 U189 ( .A1(C26_DATA2_9), .A2(n336), .B1(x[5]), .B2(n54), 
        .Z(N280) );
  AO22D0BWP7T35P140 U190 ( .A1(C25_DATA2_9), .A2(n63), .B1(y[5]), .B2(n54), 
        .Z(N247) );
  AO22D0BWP7T35P140 U191 ( .A1(C26_DATA2_10), .A2(n336), .B1(x[6]), .B2(n54), 
        .Z(N281) );
  AO22D0BWP7T35P140 U192 ( .A1(C25_DATA2_10), .A2(n63), .B1(y[6]), .B2(n54), 
        .Z(N248) );
  AO22D0BWP7T35P140 U193 ( .A1(C26_DATA2_11), .A2(n336), .B1(x[7]), .B2(n54), 
        .Z(N282) );
  AO22D0BWP7T35P140 U194 ( .A1(C25_DATA2_11), .A2(n63), .B1(y[7]), .B2(n54), 
        .Z(N249) );
  AO22D0BWP7T35P140 U195 ( .A1(C26_DATA2_12), .A2(n336), .B1(x[8]), .B2(n53), 
        .Z(N283) );
  AO22D0BWP7T35P140 U196 ( .A1(C25_DATA2_12), .A2(n63), .B1(y[8]), .B2(n54), 
        .Z(N250) );
  AO22D0BWP7T35P140 U197 ( .A1(C25_DATA2_13), .A2(n63), .B1(y[9]), .B2(n53), 
        .Z(N251) );
  AO22D0BWP7T35P140 U198 ( .A1(C26_DATA2_13), .A2(n336), .B1(x[9]), .B2(n54), 
        .Z(N284) );
  AO22D0BWP7T35P140 U199 ( .A1(C25_DATA2_14), .A2(n63), .B1(y[10]), .B2(n53), 
        .Z(N252) );
  AO22D0BWP7T35P140 U200 ( .A1(C26_DATA2_14), .A2(n336), .B1(x[10]), .B2(n54), 
        .Z(N285) );
  AO22D0BWP7T35P140 U201 ( .A1(C25_DATA2_15), .A2(n63), .B1(y[11]), .B2(n53), 
        .Z(N253) );
  AO22D0BWP7T35P140 U202 ( .A1(C26_DATA2_15), .A2(n336), .B1(x[11]), .B2(n54), 
        .Z(N286) );
  AO22D0BWP7T35P140 U203 ( .A1(C25_DATA2_16), .A2(n63), .B1(y[12]), .B2(n53), 
        .Z(N254) );
  AO22D0BWP7T35P140 U204 ( .A1(C26_DATA2_16), .A2(n336), .B1(x[12]), .B2(n54), 
        .Z(N287) );
  AO22D0BWP7T35P140 U205 ( .A1(C25_DATA2_17), .A2(n63), .B1(y[13]), .B2(n53), 
        .Z(N255) );
  AO22D0BWP7T35P140 U206 ( .A1(C26_DATA2_17), .A2(n336), .B1(x[13]), .B2(n54), 
        .Z(N288) );
  AO22D0BWP7T35P140 U207 ( .A1(C26_DATA2_18), .A2(n63), .B1(x[14]), .B2(n54), 
        .Z(N289) );
  NR2D1BWP7T35P140 U208 ( .A1(n55), .A2(n337), .ZN(n62) );
  AO21D1BWP7T35P140 U209 ( .A1(C25_DATA2_19), .A2(n63), .B(n62), .Z(N257) );
  OR2D1BWP7T35P140 U210 ( .A1(n56), .A2(n187), .Z(n57) );
  XOR2D0BWP7T35P140 U211 ( .A1(n57), .A2(n3), .Z(n58) );
  XOR2D0BWP7T35P140 U212 ( .A1(n59), .A2(n58), .Z(n60) );
  XOR2D0BWP7T35P140 U213 ( .A1(n60), .A2(DP_OP_67J1_125_1637_n2), .Z(n61) );
  AO21D1BWP7T35P140 U214 ( .A1(n63), .A2(n61), .B(n62), .Z(N259) );
  AO21D1BWP7T35P140 U215 ( .A1(C25_DATA2_20), .A2(n63), .B(n62), .Z(N258) );
  NR2D1BWP7T35P140 U216 ( .A1(n339), .A2(n333), .ZN(n64) );
  OA21D0BWP7T35P140 U217 ( .A1(vld), .A2(n64), .B(en), .Z(n153) );
  NR2D1BWP7T35P140 U218 ( .A1(n258), .A2(cal_cnt[2]), .ZN(n327) );
  MUX2ND1BWP7T35P140 U219 ( .I0(N80), .I1(yn[20]), .S(n327), .ZN(n65) );
  OAI21D1BWP7T35P140 U220 ( .A1(n223), .A2(n65), .B(n68), .ZN(n66) );
  XOR2D0BWP7T35P140 U221 ( .A1(n66), .A2(n346), .Z(DP_OP_79J1_129_3678_n28) );
  MUX2ND1BWP7T35P140 U222 ( .I0(n84), .I1(n76), .S(cal_cnt[0]), .ZN(n67) );
  MUX2ND1BWP7T35P140 U223 ( .I0(n67), .I1(N80), .S(n191), .ZN(n92) );
  NR2D1BWP7T35P140 U224 ( .A1(n321), .A2(n330), .ZN(n288) );
  ND2D1BWP7T35P140 U225 ( .A1(n288), .A2(N80), .ZN(n85) );
  OA21D0BWP7T35P140 U226 ( .A1(n92), .A2(n288), .B(n85), .Z(n69) );
  OAI21D1BWP7T35P140 U227 ( .A1(n223), .A2(n69), .B(n68), .ZN(n70) );
  XOR2D0BWP7T35P140 U228 ( .A1(n70), .A2(n2), .Z(DP_OP_79J1_129_3678_n29) );
  AOI22D1BWP7T35P140 U229 ( .A1(n309), .A2(n84), .B1(n321), .B2(n71), .ZN(n73)
         );
  ND2D1BWP7T35P140 U230 ( .A1(n311), .A2(n76), .ZN(n72) );
  OAI211D0BWP7T35P140 U231 ( .A1(yn[18]), .A2(n258), .B(n73), .C(n72), .ZN(n98) );
  OA21D0BWP7T35P140 U232 ( .A1(n98), .A2(n288), .B(n85), .Z(n74) );
  MOAI22D0BWP7T35P140 U233 ( .A1(n223), .A2(n74), .B1(n151), .B2(x[14]), .ZN(
        n75) );
  XOR2D0BWP7T35P140 U234 ( .A1(n75), .A2(n346), .Z(DP_OP_79J1_129_3678_n30) );
  AOI22D1BWP7T35P140 U235 ( .A1(n309), .A2(n76), .B1(n321), .B2(n84), .ZN(n79)
         );
  ND2D1BWP7T35P140 U236 ( .A1(n311), .A2(n77), .ZN(n78) );
  OAI211D0BWP7T35P140 U237 ( .A1(yn[17]), .A2(n258), .B(n79), .C(n78), .ZN(
        n104) );
  OA21D0BWP7T35P140 U238 ( .A1(n104), .A2(n288), .B(n85), .Z(n80) );
  MOAI22D0BWP7T35P140 U239 ( .A1(n223), .A2(n80), .B1(n151), .B2(x[13]), .ZN(
        n81) );
  XOR2D0BWP7T35P140 U240 ( .A1(n81), .A2(n2), .Z(DP_OP_79J1_129_3678_n31) );
  OAI22D1BWP7T35P140 U241 ( .A1(n331), .A2(yn[19]), .B1(n325), .B2(yn[18]), 
        .ZN(n83) );
  OAI22D1BWP7T35P140 U242 ( .A1(n225), .A2(yn[16]), .B1(n137), .B2(yn[17]), 
        .ZN(n82) );
  NR2D1BWP7T35P140 U243 ( .A1(n83), .A2(n82), .ZN(n110) );
  INVD1BWP7T35P140 U244 ( .I(n288), .ZN(n303) );
  NR3D0BWP7T35P140 U245 ( .A1(n303), .A2(n258), .A3(n84), .ZN(n87) );
  NR2D1BWP7T35P140 U246 ( .A1(n85), .A2(n310), .ZN(n86) );
  AOI211D0BWP7T35P140 U247 ( .A1(n110), .A2(n303), .B(n87), .C(n86), .ZN(n88)
         );
  MOAI22D0BWP7T35P140 U248 ( .A1(n223), .A2(n88), .B1(n151), .B2(x[12]), .ZN(
        n89) );
  XOR2D0BWP7T35P140 U249 ( .A1(n89), .A2(n346), .Z(DP_OP_79J1_129_3678_n32) );
  OAI22D1BWP7T35P140 U250 ( .A1(n236), .A2(yn[18]), .B1(n325), .B2(yn[17]), 
        .ZN(n91) );
  OAI22D1BWP7T35P140 U251 ( .A1(n225), .A2(yn[15]), .B1(n137), .B2(yn[16]), 
        .ZN(n90) );
  NR2D1BWP7T35P140 U252 ( .A1(n91), .A2(n90), .ZN(n116) );
  INVD1BWP7T35P140 U253 ( .I(n92), .ZN(n93) );
  MUX2ND1BWP7T35P140 U254 ( .I0(n116), .I1(n93), .S(n288), .ZN(n94) );
  MOAI22D0BWP7T35P140 U255 ( .A1(n223), .A2(n94), .B1(n151), .B2(x[11]), .ZN(
        n95) );
  XOR2D0BWP7T35P140 U256 ( .A1(n95), .A2(n2), .Z(DP_OP_79J1_129_3678_n33) );
  INVD1BWP7T35P140 U257 ( .I(n309), .ZN(n256) );
  OAI22D1BWP7T35P140 U258 ( .A1(n236), .A2(yn[17]), .B1(n256), .B2(yn[16]), 
        .ZN(n97) );
  OAI22D1BWP7T35P140 U259 ( .A1(n225), .A2(yn[14]), .B1(n137), .B2(yn[15]), 
        .ZN(n96) );
  NR2D1BWP7T35P140 U260 ( .A1(n97), .A2(n96), .ZN(n122) );
  INVD1BWP7T35P140 U261 ( .I(n98), .ZN(n99) );
  MUX2ND1BWP7T35P140 U262 ( .I0(n122), .I1(n99), .S(n288), .ZN(n100) );
  MOAI22D0BWP7T35P140 U263 ( .A1(n223), .A2(n100), .B1(n151), .B2(x[10]), .ZN(
        n101) );
  XOR2D0BWP7T35P140 U264 ( .A1(n101), .A2(n346), .Z(DP_OP_79J1_129_3678_n34)
         );
  OAI22D1BWP7T35P140 U265 ( .A1(n236), .A2(yn[16]), .B1(n256), .B2(yn[15]), 
        .ZN(n103) );
  OAI22D1BWP7T35P140 U266 ( .A1(n258), .A2(yn[13]), .B1(n137), .B2(yn[14]), 
        .ZN(n102) );
  NR2D1BWP7T35P140 U267 ( .A1(n103), .A2(n102), .ZN(n128) );
  INVD1BWP7T35P140 U268 ( .I(n104), .ZN(n105) );
  MUX2ND1BWP7T35P140 U269 ( .I0(n128), .I1(n105), .S(n288), .ZN(n106) );
  MOAI22D0BWP7T35P140 U270 ( .A1(n223), .A2(n106), .B1(n151), .B2(x[9]), .ZN(
        n107) );
  XOR2D0BWP7T35P140 U271 ( .A1(n107), .A2(n2), .Z(DP_OP_79J1_129_3678_n35) );
  OAI22D1BWP7T35P140 U272 ( .A1(n236), .A2(yn[15]), .B1(n256), .B2(yn[14]), 
        .ZN(n109) );
  OAI22D1BWP7T35P140 U273 ( .A1(n258), .A2(yn[12]), .B1(n137), .B2(yn[13]), 
        .ZN(n108) );
  NR2D1BWP7T35P140 U274 ( .A1(n109), .A2(n108), .ZN(n134) );
  MUX2ND1BWP7T35P140 U275 ( .I0(n134), .I1(n110), .S(n288), .ZN(n111) );
  MOAI22D0BWP7T35P140 U276 ( .A1(n223), .A2(n111), .B1(n151), .B2(x[8]), .ZN(
        n112) );
  XOR2D0BWP7T35P140 U277 ( .A1(n112), .A2(n346), .Z(DP_OP_79J1_129_3678_n36)
         );
  OAI22D1BWP7T35P140 U278 ( .A1(n236), .A2(yn[14]), .B1(yn[13]), .B2(n256), 
        .ZN(n114) );
  OAI22D1BWP7T35P140 U279 ( .A1(yn[11]), .A2(n258), .B1(n137), .B2(yn[12]), 
        .ZN(n113) );
  OR2D1BWP7T35P140 U280 ( .A1(n114), .A2(n113), .Z(n140) );
  INVD1BWP7T35P140 U281 ( .I(n140), .ZN(n115) );
  MUX2ND1BWP7T35P140 U282 ( .I0(n116), .I1(n115), .S(n303), .ZN(n117) );
  MOAI22D0BWP7T35P140 U283 ( .A1(n223), .A2(n117), .B1(n151), .B2(x[7]), .ZN(
        n118) );
  XOR2D0BWP7T35P140 U284 ( .A1(n118), .A2(n2), .Z(DP_OP_79J1_129_3678_n37) );
  OAI22D1BWP7T35P140 U285 ( .A1(n236), .A2(yn[13]), .B1(yn[12]), .B2(n256), 
        .ZN(n120) );
  OAI22D1BWP7T35P140 U286 ( .A1(yn[10]), .A2(n258), .B1(n137), .B2(yn[11]), 
        .ZN(n119) );
  OR2D1BWP7T35P140 U287 ( .A1(n120), .A2(n119), .Z(n145) );
  INVD1BWP7T35P140 U288 ( .I(n145), .ZN(n121) );
  MUX2ND1BWP7T35P140 U289 ( .I0(n122), .I1(n121), .S(n303), .ZN(n123) );
  MOAI22D0BWP7T35P140 U290 ( .A1(n223), .A2(n123), .B1(n151), .B2(x[6]), .ZN(
        n124) );
  XOR2D0BWP7T35P140 U291 ( .A1(n124), .A2(n346), .Z(DP_OP_79J1_129_3678_n38)
         );
  OAI22D1BWP7T35P140 U292 ( .A1(n331), .A2(yn[12]), .B1(yn[11]), .B2(n256), 
        .ZN(n126) );
  OAI22D1BWP7T35P140 U293 ( .A1(yn[9]), .A2(n258), .B1(n137), .B2(yn[10]), 
        .ZN(n125) );
  OR2D1BWP7T35P140 U294 ( .A1(n126), .A2(n125), .Z(n150) );
  INVD1BWP7T35P140 U295 ( .I(n150), .ZN(n127) );
  MUX2ND1BWP7T35P140 U296 ( .I0(n128), .I1(n127), .S(n303), .ZN(n129) );
  MOAI22D0BWP7T35P140 U297 ( .A1(n322), .A2(n129), .B1(n151), .B2(x[5]), .ZN(
        n130) );
  XOR2D0BWP7T35P140 U298 ( .A1(n130), .A2(n2), .Z(DP_OP_79J1_129_3678_n39) );
  OAI22D1BWP7T35P140 U299 ( .A1(n331), .A2(yn[11]), .B1(yn[10]), .B2(n256), 
        .ZN(n132) );
  OAI22D1BWP7T35P140 U300 ( .A1(yn[8]), .A2(n258), .B1(n137), .B2(yn[9]), .ZN(
        n131) );
  OR2D1BWP7T35P140 U301 ( .A1(n132), .A2(n131), .Z(n158) );
  INVD1BWP7T35P140 U302 ( .I(n158), .ZN(n133) );
  MUX2ND1BWP7T35P140 U303 ( .I0(n134), .I1(n133), .S(n303), .ZN(n135) );
  MOAI22D0BWP7T35P140 U304 ( .A1(n223), .A2(n135), .B1(n151), .B2(x[4]), .ZN(
        n136) );
  XOR2D0BWP7T35P140 U305 ( .A1(n136), .A2(n346), .Z(DP_OP_79J1_129_3678_n40)
         );
  DEL025D1BWP7T35P140 U306 ( .I(n303), .Z(n314) );
  NR2D1BWP7T35P140 U307 ( .A1(n137), .A2(cal_cnt[2]), .ZN(n328) );
  AOI22D1BWP7T35P140 U308 ( .A1(n328), .A2(yn[8]), .B1(n329), .B2(yn[9]), .ZN(
        n139) );
  AOI22D1BWP7T35P140 U309 ( .A1(n327), .A2(yn[7]), .B1(n321), .B2(yn[10]), 
        .ZN(n138) );
  OA211D0BWP7T35P140 U310 ( .A1(n314), .A2(n140), .B(n139), .C(n138), .Z(n141)
         );
  MOAI22D0BWP7T35P140 U311 ( .A1(n141), .A2(n285), .B1(n151), .B2(x[3]), .ZN(
        n142) );
  XOR2D0BWP7T35P140 U312 ( .A1(n142), .A2(n2), .Z(DP_OP_79J1_129_3678_n41) );
  AOI22D1BWP7T35P140 U313 ( .A1(n328), .A2(yn[7]), .B1(n329), .B2(yn[8]), .ZN(
        n144) );
  AOI22D1BWP7T35P140 U314 ( .A1(n327), .A2(yn[6]), .B1(n321), .B2(yn[9]), .ZN(
        n143) );
  OA211D0BWP7T35P140 U315 ( .A1(n314), .A2(n145), .B(n144), .C(n143), .Z(n146)
         );
  MOAI22D0BWP7T35P140 U316 ( .A1(n146), .A2(n285), .B1(n151), .B2(x[2]), .ZN(
        n147) );
  XOR2D0BWP7T35P140 U317 ( .A1(n147), .A2(n346), .Z(DP_OP_79J1_129_3678_n42)
         );
  AOI22D1BWP7T35P140 U318 ( .A1(n328), .A2(yn[6]), .B1(n329), .B2(yn[7]), .ZN(
        n149) );
  AOI22D1BWP7T35P140 U319 ( .A1(n327), .A2(yn[5]), .B1(n321), .B2(yn[8]), .ZN(
        n148) );
  OA211D0BWP7T35P140 U320 ( .A1(n314), .A2(n150), .B(n149), .C(n148), .Z(n154)
         );
  DEL025D1BWP7T35P140 U321 ( .I(n151), .Z(n284) );
  MOAI22D0BWP7T35P140 U322 ( .A1(n154), .A2(n285), .B1(n284), .B2(x[1]), .ZN(
        n155) );
  XOR2D0BWP7T35P140 U323 ( .A1(n155), .A2(n2), .Z(DP_OP_79J1_129_3678_n43) );
  AOI22D1BWP7T35P140 U324 ( .A1(n328), .A2(yn[5]), .B1(n329), .B2(yn[6]), .ZN(
        n157) );
  AOI22D1BWP7T35P140 U325 ( .A1(n327), .A2(yn[4]), .B1(n321), .B2(yn[7]), .ZN(
        n156) );
  OA211D0BWP7T35P140 U326 ( .A1(n314), .A2(n158), .B(n157), .C(n156), .Z(n159)
         );
  MOAI22D0BWP7T35P140 U327 ( .A1(n159), .A2(n322), .B1(n284), .B2(x[0]), .ZN(
        n160) );
  XOR2D0BWP7T35P140 U328 ( .A1(n160), .A2(n346), .Z(DP_OP_79J1_129_3678_n44)
         );
  MUX2D1BWP7T35P140 U329 ( .I0(yn[3]), .I1(yn[7]), .S(n288), .Z(n184) );
  INVD1BWP7T35P140 U330 ( .I(n328), .ZN(n313) );
  INVD1BWP7T35P140 U331 ( .I(n329), .ZN(n317) );
  OAI22D1BWP7T35P140 U332 ( .A1(n313), .A2(n173), .B1(n317), .B2(n167), .ZN(
        n164) );
  AOI22D1BWP7T35P140 U333 ( .A1(n311), .A2(yn[8]), .B1(n309), .B2(yn[9]), .ZN(
        n162) );
  OAI22D1BWP7T35P140 U334 ( .A1(n314), .A2(n162), .B1(n331), .B2(n161), .ZN(
        n163) );
  AOI211D0BWP7T35P140 U335 ( .A1(n310), .A2(n184), .B(n164), .C(n163), .ZN(
        n165) );
  NR2D1BWP7T35P140 U336 ( .A1(n165), .A2(n322), .ZN(n166) );
  XOR2D0BWP7T35P140 U337 ( .A1(n166), .A2(n2), .Z(DP_OP_79J1_129_3678_n45) );
  INVD1BWP7T35P140 U338 ( .I(n327), .ZN(n301) );
  OAI22D1BWP7T35P140 U339 ( .A1(n317), .A2(n173), .B1(n301), .B2(n181), .ZN(
        n170) );
  AOI22D1BWP7T35P140 U340 ( .A1(n310), .A2(yn[6]), .B1(n309), .B2(yn[8]), .ZN(
        n168) );
  OAI22D1BWP7T35P140 U341 ( .A1(n314), .A2(n168), .B1(n331), .B2(n167), .ZN(
        n169) );
  AOI211D0BWP7T35P140 U342 ( .A1(n311), .A2(n184), .B(n170), .C(n169), .ZN(
        n171) );
  NR2D1BWP7T35P140 U343 ( .A1(n171), .A2(n322), .ZN(n172) );
  XOR2D0BWP7T35P140 U344 ( .A1(n172), .A2(n346), .Z(DP_OP_79J1_129_3678_n46)
         );
  OAI22D1BWP7T35P140 U345 ( .A1(n313), .A2(n181), .B1(n301), .B2(n179), .ZN(
        n176) );
  AOI22D1BWP7T35P140 U346 ( .A1(n310), .A2(yn[5]), .B1(n311), .B2(yn[6]), .ZN(
        n174) );
  OAI22D1BWP7T35P140 U347 ( .A1(n174), .A2(n303), .B1(n331), .B2(n173), .ZN(
        n175) );
  AOI211D0BWP7T35P140 U348 ( .A1(n309), .A2(n184), .B(n176), .C(n175), .ZN(
        n177) );
  NR2D1BWP7T35P140 U349 ( .A1(n177), .A2(n322), .ZN(n178) );
  XOR2D0BWP7T35P140 U350 ( .A1(n178), .A2(n2), .Z(DP_OP_79J1_129_3678_n47) );
  AOI222D1BWP7T35P140 U351 ( .A1(n311), .A2(yn[5]), .B1(n310), .B2(yn[4]), 
        .C1(n309), .C2(yn[6]), .ZN(n180) );
  OAI22D1BWP7T35P140 U352 ( .A1(n180), .A2(n314), .B1(n313), .B2(n179), .ZN(
        n183) );
  MOAI22D0BWP7T35P140 U353 ( .A1(n317), .A2(n181), .B1(n327), .B2(yn[0]), .ZN(
        n182) );
  AOI211D0BWP7T35P140 U354 ( .A1(n321), .A2(n184), .B(n183), .C(n182), .ZN(
        n185) );
  NR2D1BWP7T35P140 U355 ( .A1(n185), .A2(n322), .ZN(n186) );
  XOR2D0BWP7T35P140 U356 ( .A1(n186), .A2(n2), .Z(DP_OP_79J1_129_3678_n48) );
  MUX2ND1BWP7T35P140 U357 ( .I0(xn_rightshift_21_), .I1(xn[20]), .S(n327), 
        .ZN(n188) );
  INVD1BWP7T35P140 U358 ( .I(n187), .ZN(n193) );
  OAI21D1BWP7T35P140 U359 ( .A1(n223), .A2(n188), .B(n193), .ZN(n189) );
  XOR2D0BWP7T35P140 U360 ( .A1(n189), .A2(n3), .Z(DP_OP_67J1_125_1637_n28) );
  MUX2ND1BWP7T35P140 U361 ( .I0(n207), .I1(n190), .S(cal_cnt[0]), .ZN(n192) );
  MUX2ND1BWP7T35P140 U362 ( .I0(n192), .I1(xn_rightshift_21_), .S(n191), .ZN(
        n215) );
  ND2D1BWP7T35P140 U363 ( .A1(n288), .A2(xn_rightshift_21_), .ZN(n208) );
  OA21D0BWP7T35P140 U364 ( .A1(n215), .A2(n288), .B(n208), .Z(n194) );
  OAI21D1BWP7T35P140 U365 ( .A1(n223), .A2(n194), .B(n193), .ZN(n195) );
  XOR2D0BWP7T35P140 U366 ( .A1(n195), .A2(n3), .Z(DP_OP_67J1_125_1637_n29) );
  OAI22D1BWP7T35P140 U367 ( .A1(n236), .A2(xn_rightshift_21_), .B1(xn[20]), 
        .B2(n256), .ZN(n197) );
  OAI22D1BWP7T35P140 U368 ( .A1(n258), .A2(xn[18]), .B1(n257), .B2(xn[19]), 
        .ZN(n196) );
  NR2D1BWP7T35P140 U369 ( .A1(n197), .A2(n196), .ZN(n221) );
  INVD1BWP7T35P140 U370 ( .I(n208), .ZN(n202) );
  AOI21D1BWP7T35P140 U371 ( .A1(n221), .A2(n314), .B(n202), .ZN(n198) );
  OAI22D1BWP7T35P140 U372 ( .A1(n223), .A2(n198), .B1(n278), .B2(n334), .ZN(
        n199) );
  XOR2D0BWP7T35P140 U373 ( .A1(n199), .A2(n3), .Z(DP_OP_67J1_125_1637_n30) );
  OAI22D1BWP7T35P140 U374 ( .A1(n236), .A2(xn[20]), .B1(xn[19]), .B2(n256), 
        .ZN(n201) );
  OAI22D1BWP7T35P140 U375 ( .A1(n225), .A2(xn[17]), .B1(n257), .B2(xn[18]), 
        .ZN(n200) );
  NR2D1BWP7T35P140 U376 ( .A1(n201), .A2(n200), .ZN(n228) );
  AOI21D1BWP7T35P140 U377 ( .A1(n228), .A2(n314), .B(n202), .ZN(n203) );
  MOAI22D0BWP7T35P140 U378 ( .A1(n223), .A2(n203), .B1(n284), .B2(y[13]), .ZN(
        n204) );
  XOR2D0BWP7T35P140 U379 ( .A1(n204), .A2(C1_Z_0), .Z(DP_OP_67J1_125_1637_n31)
         );
  OAI22D1BWP7T35P140 U380 ( .A1(n236), .A2(xn[19]), .B1(n325), .B2(xn[18]), 
        .ZN(n206) );
  OAI22D1BWP7T35P140 U381 ( .A1(n258), .A2(xn[16]), .B1(n257), .B2(xn[17]), 
        .ZN(n205) );
  NR2D1BWP7T35P140 U382 ( .A1(n206), .A2(n205), .ZN(n233) );
  NR3D0BWP7T35P140 U383 ( .A1(n303), .A2(n258), .A3(n207), .ZN(n210) );
  NR2D1BWP7T35P140 U384 ( .A1(n208), .A2(n310), .ZN(n209) );
  AOI211D0BWP7T35P140 U385 ( .A1(n233), .A2(n303), .B(n210), .C(n209), .ZN(
        n211) );
  MOAI22D0BWP7T35P140 U386 ( .A1(n248), .A2(n211), .B1(n284), .B2(y[12]), .ZN(
        n212) );
  XOR2D0BWP7T35P140 U387 ( .A1(n212), .A2(C1_Z_0), .Z(DP_OP_67J1_125_1637_n32)
         );
  OAI22D1BWP7T35P140 U388 ( .A1(n236), .A2(xn[18]), .B1(n325), .B2(xn[17]), 
        .ZN(n214) );
  OAI22D1BWP7T35P140 U389 ( .A1(n225), .A2(xn[15]), .B1(n257), .B2(xn[16]), 
        .ZN(n213) );
  NR2D1BWP7T35P140 U390 ( .A1(n214), .A2(n213), .ZN(n240) );
  INVD1BWP7T35P140 U391 ( .I(n215), .ZN(n216) );
  MUX2ND1BWP7T35P140 U392 ( .I0(n240), .I1(n216), .S(n288), .ZN(n217) );
  MOAI22D0BWP7T35P140 U393 ( .A1(n223), .A2(n217), .B1(n284), .B2(y[11]), .ZN(
        n218) );
  XOR2D0BWP7T35P140 U394 ( .A1(n218), .A2(C1_Z_0), .Z(DP_OP_67J1_125_1637_n33)
         );
  OAI22D1BWP7T35P140 U395 ( .A1(n331), .A2(xn[17]), .B1(n325), .B2(xn[16]), 
        .ZN(n220) );
  OAI22D1BWP7T35P140 U396 ( .A1(n225), .A2(xn[14]), .B1(n257), .B2(xn[15]), 
        .ZN(n219) );
  NR2D1BWP7T35P140 U397 ( .A1(n220), .A2(n219), .ZN(n246) );
  MUX2ND1BWP7T35P140 U398 ( .I0(n246), .I1(n221), .S(n288), .ZN(n222) );
  MOAI22D0BWP7T35P140 U399 ( .A1(n223), .A2(n222), .B1(n284), .B2(y[10]), .ZN(
        n224) );
  XOR2D0BWP7T35P140 U400 ( .A1(n224), .A2(C1_Z_0), .Z(DP_OP_67J1_125_1637_n34)
         );
  OAI22D1BWP7T35P140 U401 ( .A1(n331), .A2(xn[16]), .B1(n325), .B2(xn[15]), 
        .ZN(n227) );
  OAI22D1BWP7T35P140 U402 ( .A1(n225), .A2(xn[13]), .B1(n257), .B2(xn[14]), 
        .ZN(n226) );
  NR2D1BWP7T35P140 U403 ( .A1(n227), .A2(n226), .ZN(n253) );
  MUX2ND1BWP7T35P140 U404 ( .I0(n253), .I1(n228), .S(n288), .ZN(n229) );
  MOAI22D0BWP7T35P140 U405 ( .A1(n248), .A2(n229), .B1(n284), .B2(y[9]), .ZN(
        n230) );
  XOR2D0BWP7T35P140 U406 ( .A1(n230), .A2(C1_Z_0), .Z(DP_OP_67J1_125_1637_n35)
         );
  OAI22D1BWP7T35P140 U407 ( .A1(n331), .A2(xn[15]), .B1(n325), .B2(xn[14]), 
        .ZN(n232) );
  OAI22D1BWP7T35P140 U408 ( .A1(n258), .A2(xn[12]), .B1(n257), .B2(xn[13]), 
        .ZN(n231) );
  NR2D1BWP7T35P140 U409 ( .A1(n232), .A2(n231), .ZN(n262) );
  MUX2ND1BWP7T35P140 U410 ( .I0(n262), .I1(n233), .S(n288), .ZN(n234) );
  MOAI22D0BWP7T35P140 U411 ( .A1(n248), .A2(n234), .B1(n284), .B2(y[8]), .ZN(
        n235) );
  XOR2D0BWP7T35P140 U412 ( .A1(n235), .A2(C1_Z_0), .Z(DP_OP_67J1_125_1637_n36)
         );
  OAI22D1BWP7T35P140 U413 ( .A1(n236), .A2(xn[14]), .B1(xn[13]), .B2(n256), 
        .ZN(n238) );
  OAI22D1BWP7T35P140 U414 ( .A1(xn[11]), .A2(n258), .B1(n257), .B2(xn[12]), 
        .ZN(n237) );
  OR2D1BWP7T35P140 U415 ( .A1(n238), .A2(n237), .Z(n267) );
  INVD1BWP7T35P140 U416 ( .I(n267), .ZN(n239) );
  MUX2ND1BWP7T35P140 U417 ( .I0(n240), .I1(n239), .S(n303), .ZN(n241) );
  MOAI22D0BWP7T35P140 U418 ( .A1(n248), .A2(n241), .B1(n284), .B2(y[7]), .ZN(
        n242) );
  XOR2D0BWP7T35P140 U419 ( .A1(n242), .A2(C1_Z_0), .Z(DP_OP_67J1_125_1637_n37)
         );
  OAI22D1BWP7T35P140 U420 ( .A1(n331), .A2(xn[13]), .B1(xn[12]), .B2(n256), 
        .ZN(n244) );
  OAI22D1BWP7T35P140 U421 ( .A1(xn[10]), .A2(n258), .B1(n257), .B2(xn[11]), 
        .ZN(n243) );
  OR2D1BWP7T35P140 U422 ( .A1(n244), .A2(n243), .Z(n272) );
  INVD1BWP7T35P140 U423 ( .I(n272), .ZN(n245) );
  MUX2ND1BWP7T35P140 U424 ( .I0(n246), .I1(n245), .S(n303), .ZN(n247) );
  MOAI22D0BWP7T35P140 U425 ( .A1(n248), .A2(n247), .B1(n284), .B2(y[6]), .ZN(
        n249) );
  XOR2D0BWP7T35P140 U426 ( .A1(n249), .A2(C1_Z_0), .Z(DP_OP_67J1_125_1637_n38)
         );
  OAI22D1BWP7T35P140 U427 ( .A1(n331), .A2(xn[12]), .B1(xn[11]), .B2(n256), 
        .ZN(n251) );
  OAI22D1BWP7T35P140 U428 ( .A1(xn[9]), .A2(n258), .B1(n257), .B2(xn[10]), 
        .ZN(n250) );
  OR2D1BWP7T35P140 U429 ( .A1(n251), .A2(n250), .Z(n277) );
  INVD1BWP7T35P140 U430 ( .I(n277), .ZN(n252) );
  MUX2ND1BWP7T35P140 U431 ( .I0(n253), .I1(n252), .S(n303), .ZN(n254) );
  MOAI22D0BWP7T35P140 U432 ( .A1(n322), .A2(n254), .B1(n284), .B2(y[5]), .ZN(
        n255) );
  XOR2D0BWP7T35P140 U433 ( .A1(n255), .A2(C1_Z_0), .Z(DP_OP_67J1_125_1637_n39)
         );
  OAI22D1BWP7T35P140 U434 ( .A1(n331), .A2(xn[11]), .B1(xn[10]), .B2(n256), 
        .ZN(n260) );
  OAI22D1BWP7T35P140 U435 ( .A1(xn[8]), .A2(n258), .B1(n257), .B2(xn[9]), .ZN(
        n259) );
  OR2D1BWP7T35P140 U436 ( .A1(n260), .A2(n259), .Z(n283) );
  INVD1BWP7T35P140 U437 ( .I(n283), .ZN(n261) );
  MUX2ND1BWP7T35P140 U438 ( .I0(n262), .I1(n261), .S(n303), .ZN(n263) );
  MOAI22D0BWP7T35P140 U439 ( .A1(n285), .A2(n263), .B1(n284), .B2(y[4]), .ZN(
        n264) );
  XOR2D0BWP7T35P140 U440 ( .A1(n264), .A2(C1_Z_0), .Z(DP_OP_67J1_125_1637_n40)
         );
  AOI22D1BWP7T35P140 U441 ( .A1(n328), .A2(xn[8]), .B1(n329), .B2(xn[9]), .ZN(
        n266) );
  AOI22D1BWP7T35P140 U442 ( .A1(n327), .A2(xn[7]), .B1(n321), .B2(xn[10]), 
        .ZN(n265) );
  OA211D0BWP7T35P140 U443 ( .A1(n314), .A2(n267), .B(n266), .C(n265), .Z(n268)
         );
  MOAI22D0BWP7T35P140 U444 ( .A1(n268), .A2(n322), .B1(n284), .B2(y[3]), .ZN(
        n269) );
  XOR2D0BWP7T35P140 U445 ( .A1(n269), .A2(C1_Z_0), .Z(DP_OP_67J1_125_1637_n41)
         );
  AOI22D1BWP7T35P140 U446 ( .A1(n328), .A2(xn[7]), .B1(n329), .B2(xn[8]), .ZN(
        n271) );
  AOI22D1BWP7T35P140 U447 ( .A1(n327), .A2(xn[6]), .B1(n321), .B2(xn[9]), .ZN(
        n270) );
  OA211D0BWP7T35P140 U448 ( .A1(n314), .A2(n272), .B(n271), .C(n270), .Z(n273)
         );
  OAI22D1BWP7T35P140 U449 ( .A1(n273), .A2(n322), .B1(n278), .B2(n335), .ZN(
        n274) );
  XOR2D0BWP7T35P140 U450 ( .A1(n274), .A2(C1_Z_0), .Z(DP_OP_67J1_125_1637_n42)
         );
  AOI22D1BWP7T35P140 U451 ( .A1(n328), .A2(xn[6]), .B1(n329), .B2(xn[7]), .ZN(
        n276) );
  AOI22D1BWP7T35P140 U452 ( .A1(n327), .A2(xn[5]), .B1(n321), .B2(xn[8]), .ZN(
        n275) );
  OA211D0BWP7T35P140 U453 ( .A1(n314), .A2(n277), .B(n276), .C(n275), .Z(n279)
         );
  OAI22D1BWP7T35P140 U454 ( .A1(n279), .A2(n322), .B1(n278), .B2(n338), .ZN(
        n280) );
  XOR2D0BWP7T35P140 U455 ( .A1(n280), .A2(C1_Z_0), .Z(DP_OP_67J1_125_1637_n43)
         );
  AOI22D1BWP7T35P140 U456 ( .A1(n328), .A2(xn[5]), .B1(n329), .B2(xn[6]), .ZN(
        n282) );
  AOI22D1BWP7T35P140 U457 ( .A1(n327), .A2(xn[4]), .B1(n321), .B2(xn[7]), .ZN(
        n281) );
  OA211D0BWP7T35P140 U458 ( .A1(n314), .A2(n283), .B(n282), .C(n281), .Z(n286)
         );
  MOAI22D0BWP7T35P140 U459 ( .A1(n286), .A2(n285), .B1(n284), .B2(y[0]), .ZN(
        n287) );
  XOR2D0BWP7T35P140 U460 ( .A1(n287), .A2(C1_Z_0), .Z(DP_OP_67J1_125_1637_n44)
         );
  MUX2D1BWP7T35P140 U461 ( .I0(xn[3]), .I1(xn[7]), .S(n288), .Z(n320) );
  OAI22D1BWP7T35P140 U462 ( .A1(n313), .A2(n302), .B1(n317), .B2(n295), .ZN(
        n292) );
  AOI22D1BWP7T35P140 U463 ( .A1(n311), .A2(xn[8]), .B1(n309), .B2(xn[9]), .ZN(
        n290) );
  OAI22D1BWP7T35P140 U464 ( .A1(n314), .A2(n290), .B1(n331), .B2(n289), .ZN(
        n291) );
  AOI211D0BWP7T35P140 U465 ( .A1(n310), .A2(n320), .B(n292), .C(n291), .ZN(
        n293) );
  NR2D1BWP7T35P140 U466 ( .A1(n293), .A2(n322), .ZN(n294) );
  XOR2D0BWP7T35P140 U467 ( .A1(n294), .A2(C1_Z_0), .Z(DP_OP_67J1_125_1637_n45)
         );
  OAI22D1BWP7T35P140 U468 ( .A1(n317), .A2(n302), .B1(n301), .B2(n316), .ZN(
        n298) );
  AOI22D1BWP7T35P140 U469 ( .A1(n310), .A2(xn[6]), .B1(n309), .B2(xn[8]), .ZN(
        n296) );
  OAI22D1BWP7T35P140 U470 ( .A1(n314), .A2(n296), .B1(n331), .B2(n295), .ZN(
        n297) );
  AOI211D0BWP7T35P140 U471 ( .A1(n311), .A2(n320), .B(n298), .C(n297), .ZN(
        n299) );
  NR2D1BWP7T35P140 U472 ( .A1(n299), .A2(n322), .ZN(n300) );
  XOR2D0BWP7T35P140 U473 ( .A1(n300), .A2(C1_Z_0), .Z(DP_OP_67J1_125_1637_n46)
         );
  OAI22D1BWP7T35P140 U474 ( .A1(n313), .A2(n316), .B1(n301), .B2(n312), .ZN(
        n306) );
  AOI22D1BWP7T35P140 U475 ( .A1(n310), .A2(xn[5]), .B1(n311), .B2(xn[6]), .ZN(
        n304) );
  OAI22D1BWP7T35P140 U476 ( .A1(n304), .A2(n303), .B1(n331), .B2(n302), .ZN(
        n305) );
  AOI211D0BWP7T35P140 U477 ( .A1(n309), .A2(n320), .B(n306), .C(n305), .ZN(
        n307) );
  NR2D1BWP7T35P140 U478 ( .A1(n307), .A2(n322), .ZN(n308) );
  XOR2D0BWP7T35P140 U479 ( .A1(n308), .A2(C1_Z_0), .Z(DP_OP_67J1_125_1637_n47)
         );
  AOI222D1BWP7T35P140 U480 ( .A1(n311), .A2(xn[5]), .B1(n310), .B2(xn[4]), 
        .C1(n309), .C2(xn[6]), .ZN(n315) );
  OAI22D1BWP7T35P140 U481 ( .A1(n315), .A2(n314), .B1(n313), .B2(n312), .ZN(
        n319) );
  MOAI22D0BWP7T35P140 U482 ( .A1(n317), .A2(n316), .B1(n327), .B2(xn[0]), .ZN(
        n318) );
  AOI211D0BWP7T35P140 U483 ( .A1(n321), .A2(n320), .B(n319), .C(n318), .ZN(
        n323) );
  NR2D1BWP7T35P140 U484 ( .A1(n323), .A2(n322), .ZN(n324) );
  XOR2D0BWP7T35P140 U485 ( .A1(n324), .A2(C1_Z_0), .Z(DP_OP_67J1_125_1637_n48)
         );
  NR2D1BWP7T35P140 U486 ( .A1(n325), .A2(n330), .ZN(n326) );
  XOR2D0BWP7T35P140 U487 ( .A1(n326), .A2(N80), .Z(DP_OP_37J1_122_4340_n14) );
  XOR2D0BWP7T35P140 U488 ( .A1(n341), .A2(N80), .Z(DP_OP_37J1_122_4340_n15) );
  XOR2D0BWP7T35P140 U489 ( .A1(n327), .A2(N80), .Z(DP_OP_37J1_122_4340_n16) );
  XOR2D0BWP7T35P140 U490 ( .A1(n328), .A2(N80), .Z(DP_OP_37J1_122_4340_n17) );
  XOR2D0BWP7T35P140 U491 ( .A1(n329), .A2(N80), .Z(DP_OP_37J1_122_4340_n18) );
  NR2D1BWP7T35P140 U492 ( .A1(n331), .A2(n330), .ZN(n332) );
  XOR2D0BWP7T35P140 U493 ( .A1(n332), .A2(N80), .Z(DP_OP_37J1_122_4340_n19) );
  XOR2D0BWP7T35P140 U494 ( .A1(n333), .A2(N80), .Z(DP_OP_37J1_122_4340_n20) );
  MOAI22D0BWP7T35P140 U495 ( .A1(n337), .A2(n334), .B1(C25_DATA2_18), .B2(n336), .ZN(N256) );
  MOAI22D0BWP7T35P140 U496 ( .A1(n335), .A2(n337), .B1(C25_DATA2_6), .B2(n336), 
        .ZN(N244) );
  MOAI22D0BWP7T35P140 U497 ( .A1(n338), .A2(n337), .B1(C25_DATA2_5), .B2(n336), 
        .ZN(N243) );
  INVD1BWP7T35P140 U498 ( .I(nozero_flg), .ZN(n340) );
  AOI32D1BWP7T35P140 U499 ( .A1(n342), .A2(cal_en), .A3(n341), .B1(n340), .B2(
        n339), .ZN(n152) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_phase_0 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWP7T35P140 latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_phase_1 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CKLNQD1BWP7T35P140 latch ( .CP(CLK), .E(EN), .TE(TE), .Q(ENCLK) );
endmodule


module cal_phase ( en, vin_vld, v_in_0, v_in_1, v_in_2, v_in_3, v_in_4, v_in_5, 
        v_in_6, v_in_7, res_vld, res, clk, resetn );
  input [7:0] v_in_0;
  input [7:0] v_in_1;
  input [7:0] v_in_2;
  input [7:0] v_in_3;
  input [7:0] v_in_4;
  input [7:0] v_in_5;
  input [7:0] v_in_6;
  input [7:0] v_in_7;
  output [9:0] res;
  input en, vin_vld, clk, resetn;
  output res_vld;
  wire   n_zz_3_8, n_zz_4_8, n_zz_7_0_, calvn_vn_vld, dot_psum_vld,
         cordic_res_vld, ph_vld_dly1, LastA2stZero, N41, N50, N51, N52,
         net5935, net5936, net5941, DP_OP_15J1_136_9753_n42,
         DP_OP_15J1_136_9753_n41, DP_OP_15J1_136_9753_n40,
         DP_OP_15J1_136_9753_n39, DP_OP_15J1_136_9753_n38,
         DP_OP_15J1_136_9753_n37, DP_OP_15J1_136_9753_n36,
         DP_OP_15J1_136_9753_n35, DP_OP_15J1_136_9753_n30,
         DP_OP_15J1_136_9753_n27, DP_OP_15J1_136_9753_n26,
         DP_OP_15J1_136_9753_n25, DP_OP_15J1_136_9753_n24,
         DP_OP_15J1_136_9753_n23, DP_OP_15J1_136_9753_n22,
         DP_OP_15J1_136_9753_n20, DP_OP_15J1_136_9753_n19,
         DP_OP_15J1_136_9753_n18, DP_OP_15J1_136_9753_n17,
         DP_OP_15J1_136_9753_n16, DP_OP_15J1_136_9753_n15,
         DP_OP_15J1_136_9753_n14, DP_OP_15J1_136_9753_n13,
         DP_OP_15J1_136_9753_n12, DP_OP_15J1_136_9753_n9,
         DP_OP_15J1_136_9753_n8, DP_OP_15J1_136_9753_n7,
         DP_OP_15J1_136_9753_n6, DP_OP_15J1_136_9753_n5,
         DP_OP_15J1_136_9753_n4, DP_OP_15J1_136_9753_n3,
         DP_OP_15J1_136_9753_n2, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156;
  wire   [6:0] n_zz_3;
  wire   [6:0] n_zz_4;
  wire   [7:0] n_zz_9;
  wire   [7:0] calvn_vn_0;
  wire   [7:0] calvn_vn_1;
  wire   [7:0] calvn_vn_2;
  wire   [7:0] calvn_vn_3;
  wire   [7:0] calvn_vn_4;
  wire   [7:0] calvn_vn_5;
  wire   [7:0] calvn_vn_6;
  wire   [7:0] calvn_vn_7;
  wire   [15:0] dot_psum_out1;
  wire   [15:0] dot_psum_out2;
  wire   [7:0] cordic_res;
  wire   [8:0] ph_delta_abs;

  cal_vn calvn ( .en(n137), .vin_vld(vin_vld), .v_in_0({n39, n37, n35, n33, 
        n31, n29, n27, n121}), .v_in_1({n25, n23, n21, n19, n17, v_in_1[2:1], 
        n127}), .v_in_2({n15, n43, n41, n47, n45, n51, n49, n125}), .v_in_3({
        n55, n53, n59, n57, n63, v_in_3[2:1], n117}), .v_in_4({n61, n67, n65, 
        n71, n69, n75, n73, n131}), .v_in_5({n79, n77, n83, n81, n87, n85, n91, 
        n123}), .v_in_6({n89, n95, n93, n99, n97, n103, n101, n129}), .v_in_7(
        {n107, n105, n111, n109, n115, n113, n119, n135}), .vn_0(calvn_vn_0), 
        .vn_1(calvn_vn_1), .vn_2(calvn_vn_2), .vn_3(calvn_vn_3), .vn_4(
        calvn_vn_4), .vn_5(calvn_vn_5), .vn_6(calvn_vn_6), .vn_7(calvn_vn_7), 
        .vn_vld(calvn_vn_vld), .clk(clk), .resetn(n155) );
  dotVn dot ( .en(n137), .vn_vld(calvn_vn_vld), .vn_in_0(calvn_vn_0), 
        .vn_in_1(calvn_vn_1), .vn_in_2(calvn_vn_2), .vn_in_3(calvn_vn_3), 
        .vn_in_4(calvn_vn_4), .vn_in_5(calvn_vn_5), .vn_in_6(calvn_vn_6), 
        .vn_in_7(calvn_vn_7), .psum_out1(dot_psum_out1), .psum_out2(
        dot_psum_out2), .psum_vld(dot_psum_vld), .clk(clk), .resetn(n155) );
  cordic_int cordic ( .en(n137), .vld(dot_psum_vld), .y(dot_psum_out2), .x(
        dot_psum_out1), .res(cordic_res), .res_vld(cordic_res_vld), .clk(clk), 
        .resetn(n155) );
  SNPS_CLOCK_GATE_HIGH_cal_phase_0 clk_gate_LastA2stZero_reg ( .CLK(clk), .EN(
        ph_vld_dly1), .ENCLK(net5935), .TE(net5936) );
  SNPS_CLOCK_GATE_HIGH_cal_phase_1 clk_gate_ph_now_reg ( .CLK(clk), .EN(
        cordic_res_vld), .ENCLK(net5941), .TE(net5936) );
  DFCNQD1BWP7T35P140 ph_now_reg_7_ ( .D(cordic_res[7]), .CP(net5941), .CDN(
        n155), .Q(n_zz_3_8) );
  DFCNQD1BWP7T35P140 ph_now_reg_6_ ( .D(cordic_res[6]), .CP(net5941), .CDN(
        n156), .Q(n_zz_3[6]) );
  DFCNQD1BWP7T35P140 ph_now_reg_5_ ( .D(cordic_res[5]), .CP(net5941), .CDN(
        n156), .Q(n_zz_3[5]) );
  DFCNQD1BWP7T35P140 ph_now_reg_4_ ( .D(cordic_res[4]), .CP(net5941), .CDN(
        n156), .Q(n_zz_3[4]) );
  DFCNQD1BWP7T35P140 ph_now_reg_3_ ( .D(cordic_res[3]), .CP(net5941), .CDN(
        n156), .Q(n_zz_3[3]) );
  DFCNQD1BWP7T35P140 ph_now_reg_2_ ( .D(cordic_res[2]), .CP(net5941), .CDN(
        n156), .Q(n_zz_3[2]) );
  DFCNQD1BWP7T35P140 ph_now_reg_1_ ( .D(cordic_res[1]), .CP(net5941), .CDN(
        n156), .Q(n_zz_3[1]) );
  DFCNQD1BWP7T35P140 ph_now_reg_0_ ( .D(cordic_res[0]), .CP(net5941), .CDN(
        n156), .Q(n_zz_3[0]) );
  DFCNQD1BWP7T35P140 ph_last_reg_7_ ( .D(n_zz_3_8), .CP(net5941), .CDN(n156), 
        .Q(n_zz_4_8) );
  DFCNQD1BWP7T35P140 ph_last_reg_6_ ( .D(n_zz_3[6]), .CP(net5941), .CDN(n156), 
        .Q(n_zz_4[6]) );
  DFCNQD1BWP7T35P140 ph_last_reg_5_ ( .D(n_zz_3[5]), .CP(net5941), .CDN(n156), 
        .Q(n_zz_4[5]) );
  DFCNQD1BWP7T35P140 ph_last_reg_4_ ( .D(n_zz_3[4]), .CP(net5941), .CDN(n156), 
        .Q(n_zz_4[4]) );
  DFCNQD1BWP7T35P140 ph_last_reg_3_ ( .D(n_zz_3[3]), .CP(net5941), .CDN(n156), 
        .Q(n_zz_4[3]) );
  DFCNQD1BWP7T35P140 ph_last_reg_2_ ( .D(n_zz_3[2]), .CP(net5941), .CDN(n156), 
        .Q(n_zz_4[2]) );
  DFCNQD1BWP7T35P140 ph_last_reg_1_ ( .D(n_zz_3[1]), .CP(net5941), .CDN(n156), 
        .Q(n_zz_4[1]) );
  DFCNQD1BWP7T35P140 ph_last_reg_0_ ( .D(n_zz_3[0]), .CP(net5941), .CDN(n156), 
        .Q(n_zz_4[0]) );
  DFCNQD1BWP7T35P140 ph_vld_dly1_reg ( .D(cordic_res_vld), .CP(clk), .CDN(n156), .Q(ph_vld_dly1) );
  DFCNQD1BWP7T35P140 LastA2stZero_reg ( .D(dot_psum_out2[15]), .CP(net5935), 
        .CDN(n156), .Q(LastA2stZero) );
  DFCNQD1BWP7T35P140 res_last_reg_9_ ( .D(N52), .CP(net5935), .CDN(n156), .Q(
        res[9]) );
  DFCNQD1BWP7T35P140 res_last_reg_8_ ( .D(N51), .CP(net5935), .CDN(n156), .Q(
        res[8]) );
  DFCNQD1BWP7T35P140 res_last_reg_7_ ( .D(N50), .CP(net5935), .CDN(n133), .Q(
        res[7]) );
  DFCNQD1BWP7T35P140 res_last_reg_6_ ( .D(n_zz_9[6]), .CP(net5935), .CDN(n133), 
        .Q(res[6]) );
  DFCNQD1BWP7T35P140 res_last_reg_5_ ( .D(n_zz_9[5]), .CP(net5935), .CDN(n133), 
        .Q(res[5]) );
  DFCNQD1BWP7T35P140 res_last_reg_4_ ( .D(n_zz_9[4]), .CP(net5935), .CDN(n133), 
        .Q(res[4]) );
  DFCNQD1BWP7T35P140 res_last_reg_3_ ( .D(n_zz_9[3]), .CP(net5935), .CDN(n155), 
        .Q(res[3]) );
  DFCNQD1BWP7T35P140 res_last_reg_2_ ( .D(n_zz_9[2]), .CP(net5935), .CDN(n155), 
        .Q(res[2]) );
  DFCNQD1BWP7T35P140 res_last_reg_1_ ( .D(n_zz_9[1]), .CP(net5935), .CDN(n155), 
        .Q(res[1]) );
  DFCNQD1BWP7T35P140 res_last_reg_0_ ( .D(n_zz_9[0]), .CP(net5935), .CDN(n155), 
        .Q(res[0]) );
  DFCNQD1BWP7T35P140 res_last_vld_reg ( .D(ph_vld_dly1), .CP(clk), .CDN(n156), 
        .Q(res_vld) );
  FA1D1BWP7T35P140 DP_OP_15J1_136_9753_U31 ( .A(n_zz_3[1]), .B(
        DP_OP_15J1_136_9753_n27), .CI(DP_OP_15J1_136_9753_n20), .CO(
        DP_OP_15J1_136_9753_n19), .S(n_zz_9[1]) );
  FA1D1BWP7T35P140 DP_OP_15J1_136_9753_U30 ( .A(n_zz_3[2]), .B(
        DP_OP_15J1_136_9753_n26), .CI(DP_OP_15J1_136_9753_n19), .CO(
        DP_OP_15J1_136_9753_n18), .S(n_zz_9[2]) );
  FA1D1BWP7T35P140 DP_OP_15J1_136_9753_U29 ( .A(n_zz_3[3]), .B(
        DP_OP_15J1_136_9753_n25), .CI(DP_OP_15J1_136_9753_n18), .CO(
        DP_OP_15J1_136_9753_n17), .S(n_zz_9[3]) );
  FA1D1BWP7T35P140 DP_OP_15J1_136_9753_U28 ( .A(n_zz_3[4]), .B(
        DP_OP_15J1_136_9753_n24), .CI(DP_OP_15J1_136_9753_n17), .CO(
        DP_OP_15J1_136_9753_n16), .S(n_zz_9[4]) );
  FA1D1BWP7T35P140 DP_OP_15J1_136_9753_U27 ( .A(n_zz_3[5]), .B(
        DP_OP_15J1_136_9753_n23), .CI(DP_OP_15J1_136_9753_n16), .CO(
        DP_OP_15J1_136_9753_n15), .S(n_zz_9[5]) );
  FA1D1BWP7T35P140 DP_OP_15J1_136_9753_U26 ( .A(n_zz_3[6]), .B(
        DP_OP_15J1_136_9753_n22), .CI(DP_OP_15J1_136_9753_n15), .CO(
        DP_OP_15J1_136_9753_n14), .S(n_zz_9[6]) );
  FA1D1BWP7T35P140 DP_OP_15J1_136_9753_U25 ( .A(DP_OP_15J1_136_9753_n30), .B(
        n_zz_4_8), .CI(DP_OP_15J1_136_9753_n14), .CO(DP_OP_15J1_136_9753_n13), 
        .S(n_zz_9[7]) );
  FA1D1BWP7T35P140 DP_OP_15J1_136_9753_U20 ( .A(DP_OP_15J1_136_9753_n12), .B(
        DP_OP_15J1_136_9753_n13), .CI(n_zz_9[7]), .CO(DP_OP_15J1_136_9753_n9), 
        .S(N41) );
  HA1D1BWP7T35P140 DP_OP_15J1_136_9753_U9 ( .A(n_zz_7_0_), .B(
        DP_OP_15J1_136_9753_n35), .CO(DP_OP_15J1_136_9753_n8), .S(
        ph_delta_abs[0]) );
  HA1D1BWP7T35P140 DP_OP_15J1_136_9753_U8 ( .A(DP_OP_15J1_136_9753_n36), .B(
        DP_OP_15J1_136_9753_n8), .CO(DP_OP_15J1_136_9753_n7), .S(
        ph_delta_abs[1]) );
  HA1D1BWP7T35P140 DP_OP_15J1_136_9753_U7 ( .A(DP_OP_15J1_136_9753_n7), .B(
        DP_OP_15J1_136_9753_n37), .CO(DP_OP_15J1_136_9753_n6), .S(
        ph_delta_abs[2]) );
  HA1D1BWP7T35P140 DP_OP_15J1_136_9753_U6 ( .A(DP_OP_15J1_136_9753_n6), .B(
        DP_OP_15J1_136_9753_n38), .CO(DP_OP_15J1_136_9753_n5), .S(
        ph_delta_abs[3]) );
  HA1D1BWP7T35P140 DP_OP_15J1_136_9753_U5 ( .A(DP_OP_15J1_136_9753_n5), .B(
        DP_OP_15J1_136_9753_n39), .CO(DP_OP_15J1_136_9753_n4), .S(
        ph_delta_abs[4]) );
  HA1D1BWP7T35P140 DP_OP_15J1_136_9753_U4 ( .A(DP_OP_15J1_136_9753_n4), .B(
        DP_OP_15J1_136_9753_n40), .CO(DP_OP_15J1_136_9753_n3), .S(
        ph_delta_abs[5]) );
  HA1D1BWP7T35P140 DP_OP_15J1_136_9753_U3 ( .A(DP_OP_15J1_136_9753_n3), .B(
        DP_OP_15J1_136_9753_n41), .CO(DP_OP_15J1_136_9753_n2), .S(
        ph_delta_abs[6]) );
  HA1D1BWP7T35P140 DP_OP_15J1_136_9753_U2 ( .A(DP_OP_15J1_136_9753_n2), .B(
        DP_OP_15J1_136_9753_n42), .CO(ph_delta_abs[8]), .S(ph_delta_abs[7]) );
  INVD1BWP7T35P140 U27 ( .I(v_in_2[7]), .ZN(n14) );
  INVD1BWP7T35P140 U28 ( .I(n14), .ZN(n15) );
  INVD1BWP7T35P140 U29 ( .I(v_in_1[3]), .ZN(n16) );
  INVD1BWP7T35P140 U30 ( .I(n16), .ZN(n17) );
  INVD1BWP7T35P140 U31 ( .I(v_in_1[4]), .ZN(n18) );
  INVD1BWP7T35P140 U32 ( .I(n18), .ZN(n19) );
  INVD1BWP7T35P140 U33 ( .I(v_in_1[5]), .ZN(n20) );
  INVD1BWP7T35P140 U34 ( .I(n20), .ZN(n21) );
  INVD1BWP7T35P140 U35 ( .I(v_in_1[6]), .ZN(n22) );
  INVD1BWP7T35P140 U36 ( .I(n22), .ZN(n23) );
  INVD1BWP7T35P140 U37 ( .I(v_in_1[7]), .ZN(n24) );
  INVD1BWP7T35P140 U38 ( .I(n24), .ZN(n25) );
  INVD1BWP7T35P140 U39 ( .I(v_in_0[1]), .ZN(n26) );
  INVD1BWP7T35P140 U40 ( .I(n26), .ZN(n27) );
  INVD1BWP7T35P140 U41 ( .I(v_in_0[2]), .ZN(n28) );
  INVD1BWP7T35P140 U42 ( .I(n28), .ZN(n29) );
  INVD1BWP7T35P140 U43 ( .I(v_in_0[3]), .ZN(n30) );
  INVD1BWP7T35P140 U44 ( .I(n30), .ZN(n31) );
  INVD1BWP7T35P140 U45 ( .I(v_in_0[4]), .ZN(n32) );
  INVD1BWP7T35P140 U46 ( .I(n32), .ZN(n33) );
  INVD1BWP7T35P140 U47 ( .I(v_in_0[5]), .ZN(n34) );
  INVD1BWP7T35P140 U48 ( .I(n34), .ZN(n35) );
  INVD1BWP7T35P140 U49 ( .I(v_in_0[6]), .ZN(n36) );
  INVD1BWP7T35P140 U50 ( .I(n36), .ZN(n37) );
  INVD1BWP7T35P140 U51 ( .I(v_in_0[7]), .ZN(n38) );
  INVD1BWP7T35P140 U52 ( .I(n38), .ZN(n39) );
  INVD1BWP7T35P140 U53 ( .I(v_in_2[5]), .ZN(n40) );
  INVD1BWP7T35P140 U54 ( .I(n40), .ZN(n41) );
  INVD1BWP7T35P140 U55 ( .I(v_in_2[6]), .ZN(n42) );
  INVD1BWP7T35P140 U56 ( .I(n42), .ZN(n43) );
  INVD1BWP7T35P140 U57 ( .I(v_in_2[3]), .ZN(n44) );
  INVD1BWP7T35P140 U58 ( .I(n44), .ZN(n45) );
  INVD1BWP7T35P140 U59 ( .I(v_in_2[4]), .ZN(n46) );
  INVD1BWP7T35P140 U60 ( .I(n46), .ZN(n47) );
  INVD1BWP7T35P140 U61 ( .I(v_in_2[1]), .ZN(n48) );
  INVD1BWP7T35P140 U62 ( .I(n48), .ZN(n49) );
  INVD1BWP7T35P140 U63 ( .I(v_in_2[2]), .ZN(n50) );
  INVD1BWP7T35P140 U64 ( .I(n50), .ZN(n51) );
  INVD1BWP7T35P140 U65 ( .I(v_in_3[6]), .ZN(n52) );
  INVD1BWP7T35P140 U66 ( .I(n52), .ZN(n53) );
  INVD1BWP7T35P140 U67 ( .I(v_in_3[7]), .ZN(n54) );
  INVD1BWP7T35P140 U68 ( .I(n54), .ZN(n55) );
  INVD1BWP7T35P140 U69 ( .I(v_in_3[4]), .ZN(n56) );
  INVD1BWP7T35P140 U70 ( .I(n56), .ZN(n57) );
  INVD1BWP7T35P140 U71 ( .I(v_in_3[5]), .ZN(n58) );
  INVD1BWP7T35P140 U72 ( .I(n58), .ZN(n59) );
  INVD1BWP7T35P140 U73 ( .I(v_in_4[7]), .ZN(n60) );
  INVD1BWP7T35P140 U74 ( .I(n60), .ZN(n61) );
  INVD1BWP7T35P140 U75 ( .I(v_in_3[3]), .ZN(n62) );
  INVD1BWP7T35P140 U76 ( .I(n62), .ZN(n63) );
  INVD1BWP7T35P140 U77 ( .I(v_in_4[5]), .ZN(n64) );
  INVD1BWP7T35P140 U78 ( .I(n64), .ZN(n65) );
  INVD1BWP7T35P140 U79 ( .I(v_in_4[6]), .ZN(n66) );
  INVD1BWP7T35P140 U80 ( .I(n66), .ZN(n67) );
  INVD1BWP7T35P140 U81 ( .I(v_in_4[3]), .ZN(n68) );
  INVD1BWP7T35P140 U82 ( .I(n68), .ZN(n69) );
  INVD1BWP7T35P140 U83 ( .I(v_in_4[4]), .ZN(n70) );
  INVD1BWP7T35P140 U84 ( .I(n70), .ZN(n71) );
  INVD1BWP7T35P140 U85 ( .I(v_in_4[1]), .ZN(n72) );
  INVD1BWP7T35P140 U86 ( .I(n72), .ZN(n73) );
  INVD1BWP7T35P140 U87 ( .I(v_in_4[2]), .ZN(n74) );
  INVD1BWP7T35P140 U88 ( .I(n74), .ZN(n75) );
  INVD1BWP7T35P140 U89 ( .I(v_in_5[6]), .ZN(n76) );
  INVD1BWP7T35P140 U90 ( .I(n76), .ZN(n77) );
  INVD1BWP7T35P140 U91 ( .I(v_in_5[7]), .ZN(n78) );
  INVD1BWP7T35P140 U92 ( .I(n78), .ZN(n79) );
  INVD1BWP7T35P140 U93 ( .I(v_in_5[4]), .ZN(n80) );
  INVD1BWP7T35P140 U94 ( .I(n80), .ZN(n81) );
  INVD1BWP7T35P140 U95 ( .I(v_in_5[5]), .ZN(n82) );
  INVD1BWP7T35P140 U96 ( .I(n82), .ZN(n83) );
  INVD1BWP7T35P140 U97 ( .I(v_in_5[2]), .ZN(n84) );
  INVD1BWP7T35P140 U98 ( .I(n84), .ZN(n85) );
  INVD1BWP7T35P140 U99 ( .I(v_in_5[3]), .ZN(n86) );
  INVD1BWP7T35P140 U100 ( .I(n86), .ZN(n87) );
  INVD1BWP7T35P140 U101 ( .I(v_in_6[7]), .ZN(n88) );
  INVD1BWP7T35P140 U102 ( .I(n88), .ZN(n89) );
  INVD1BWP7T35P140 U103 ( .I(v_in_5[1]), .ZN(n90) );
  INVD1BWP7T35P140 U104 ( .I(n90), .ZN(n91) );
  INVD1BWP7T35P140 U105 ( .I(v_in_6[5]), .ZN(n92) );
  INVD1BWP7T35P140 U106 ( .I(n92), .ZN(n93) );
  INVD1BWP7T35P140 U107 ( .I(v_in_6[6]), .ZN(n94) );
  INVD1BWP7T35P140 U108 ( .I(n94), .ZN(n95) );
  INVD1BWP7T35P140 U109 ( .I(v_in_6[3]), .ZN(n96) );
  INVD1BWP7T35P140 U110 ( .I(n96), .ZN(n97) );
  INVD1BWP7T35P140 U111 ( .I(v_in_6[4]), .ZN(n98) );
  INVD1BWP7T35P140 U112 ( .I(n98), .ZN(n99) );
  INVD1BWP7T35P140 U113 ( .I(v_in_6[1]), .ZN(n100) );
  INVD1BWP7T35P140 U114 ( .I(n100), .ZN(n101) );
  INVD1BWP7T35P140 U115 ( .I(v_in_6[2]), .ZN(n102) );
  INVD1BWP7T35P140 U116 ( .I(n102), .ZN(n103) );
  INVD1BWP7T35P140 U117 ( .I(v_in_7[6]), .ZN(n104) );
  INVD1BWP7T35P140 U118 ( .I(n104), .ZN(n105) );
  INVD1BWP7T35P140 U119 ( .I(v_in_7[7]), .ZN(n106) );
  INVD1BWP7T35P140 U120 ( .I(n106), .ZN(n107) );
  INVD1BWP7T35P140 U121 ( .I(v_in_7[4]), .ZN(n108) );
  INVD1BWP7T35P140 U122 ( .I(n108), .ZN(n109) );
  INVD1BWP7T35P140 U123 ( .I(v_in_7[5]), .ZN(n110) );
  INVD1BWP7T35P140 U124 ( .I(n110), .ZN(n111) );
  INVD1BWP7T35P140 U125 ( .I(v_in_7[2]), .ZN(n112) );
  INVD1BWP7T35P140 U126 ( .I(n112), .ZN(n113) );
  INVD1BWP7T35P140 U127 ( .I(v_in_7[3]), .ZN(n114) );
  INVD1BWP7T35P140 U128 ( .I(n114), .ZN(n115) );
  INVD1BWP7T35P140 U129 ( .I(v_in_3[0]), .ZN(n116) );
  INVD1BWP7T35P140 U130 ( .I(n116), .ZN(n117) );
  INVD1BWP7T35P140 U131 ( .I(v_in_7[1]), .ZN(n118) );
  INVD1BWP7T35P140 U132 ( .I(n118), .ZN(n119) );
  INVD1BWP7T35P140 U133 ( .I(v_in_0[0]), .ZN(n120) );
  INVD1BWP7T35P140 U134 ( .I(n120), .ZN(n121) );
  INVD1BWP7T35P140 U135 ( .I(v_in_5[0]), .ZN(n122) );
  INVD1BWP7T35P140 U136 ( .I(n122), .ZN(n123) );
  INVD1BWP7T35P140 U137 ( .I(v_in_2[0]), .ZN(n124) );
  INVD1BWP7T35P140 U138 ( .I(n124), .ZN(n125) );
  INVD1BWP7T35P140 U139 ( .I(v_in_1[0]), .ZN(n126) );
  INVD1BWP7T35P140 U140 ( .I(n126), .ZN(n127) );
  INVD1BWP7T35P140 U141 ( .I(v_in_6[0]), .ZN(n128) );
  INVD1BWP7T35P140 U142 ( .I(n128), .ZN(n129) );
  INVD1BWP7T35P140 U143 ( .I(v_in_4[0]), .ZN(n130) );
  INVD1BWP7T35P140 U144 ( .I(n130), .ZN(n131) );
  INVD1BWP7T35P140 U145 ( .I(resetn), .ZN(n132) );
  INVD1BWP7T35P140 U146 ( .I(n132), .ZN(n133) );
  INVD1BWP7T35P140 U147 ( .I(v_in_7[0]), .ZN(n134) );
  INVD1BWP7T35P140 U148 ( .I(n134), .ZN(n135) );
  INVD1BWP7T35P140 U149 ( .I(en), .ZN(n136) );
  INVD1BWP7T35P140 U150 ( .I(n136), .ZN(n137) );
  TIELBWP7T35P140 U151 ( .ZN(net5936) );
  DEL025D1BWP7T35P140 U152 ( .I(n133), .Z(n156) );
  DEL025D1BWP7T35P140 U153 ( .I(n133), .Z(n155) );
  INVD1BWP7T35P140 U154 ( .I(DP_OP_15J1_136_9753_n13), .ZN(n_zz_7_0_) );
  INVD1BWP7T35P140 U155 ( .I(n_zz_9[7]), .ZN(n154) );
  AO22D0BWP7T35P140 U156 ( .A1(n_zz_9[7]), .A2(DP_OP_15J1_136_9753_n13), .B1(
        n_zz_7_0_), .B2(n154), .Z(DP_OP_15J1_136_9753_n42) );
  INVD1BWP7T35P140 U157 ( .I(n_zz_9[6]), .ZN(n138) );
  AO22D0BWP7T35P140 U158 ( .A1(n_zz_9[6]), .A2(DP_OP_15J1_136_9753_n13), .B1(
        n_zz_7_0_), .B2(n138), .Z(DP_OP_15J1_136_9753_n41) );
  INVD1BWP7T35P140 U159 ( .I(n_zz_9[5]), .ZN(n139) );
  AO22D0BWP7T35P140 U160 ( .A1(n_zz_9[5]), .A2(DP_OP_15J1_136_9753_n13), .B1(
        n_zz_7_0_), .B2(n139), .Z(DP_OP_15J1_136_9753_n40) );
  INVD1BWP7T35P140 U161 ( .I(n_zz_9[4]), .ZN(n140) );
  AO22D0BWP7T35P140 U162 ( .A1(n_zz_9[4]), .A2(DP_OP_15J1_136_9753_n13), .B1(
        n_zz_7_0_), .B2(n140), .Z(DP_OP_15J1_136_9753_n39) );
  INVD1BWP7T35P140 U163 ( .I(n_zz_9[3]), .ZN(n141) );
  AO22D0BWP7T35P140 U164 ( .A1(n_zz_9[3]), .A2(DP_OP_15J1_136_9753_n13), .B1(
        n_zz_7_0_), .B2(n141), .Z(DP_OP_15J1_136_9753_n38) );
  INVD1BWP7T35P140 U165 ( .I(n_zz_9[2]), .ZN(n142) );
  AO22D0BWP7T35P140 U166 ( .A1(n_zz_9[2]), .A2(DP_OP_15J1_136_9753_n13), .B1(
        n_zz_7_0_), .B2(n142), .Z(DP_OP_15J1_136_9753_n37) );
  INVD1BWP7T35P140 U167 ( .I(n_zz_4[0]), .ZN(n145) );
  XNR2D0BWP7T35P140 U168 ( .A1(n_zz_3[0]), .A2(n145), .ZN(n_zz_9[0]) );
  INVD1BWP7T35P140 U169 ( .I(n_zz_9[0]), .ZN(n143) );
  AO22D0BWP7T35P140 U170 ( .A1(n_zz_9[0]), .A2(DP_OP_15J1_136_9753_n13), .B1(
        n_zz_7_0_), .B2(n143), .Z(DP_OP_15J1_136_9753_n35) );
  INVD1BWP7T35P140 U171 ( .I(n_zz_9[1]), .ZN(n144) );
  AO22D0BWP7T35P140 U172 ( .A1(n_zz_9[1]), .A2(DP_OP_15J1_136_9753_n13), .B1(
        n_zz_7_0_), .B2(n144), .Z(DP_OP_15J1_136_9753_n36) );
  OR2D1BWP7T35P140 U173 ( .A1(n145), .A2(n_zz_3[0]), .Z(
        DP_OP_15J1_136_9753_n20) );
  INVD1BWP7T35P140 U174 ( .I(n_zz_4[1]), .ZN(DP_OP_15J1_136_9753_n27) );
  INVD1BWP7T35P140 U175 ( .I(n_zz_4[2]), .ZN(DP_OP_15J1_136_9753_n26) );
  INVD1BWP7T35P140 U176 ( .I(n_zz_4[3]), .ZN(DP_OP_15J1_136_9753_n25) );
  INVD1BWP7T35P140 U177 ( .I(n_zz_4[4]), .ZN(DP_OP_15J1_136_9753_n24) );
  INVD1BWP7T35P140 U178 ( .I(n_zz_4[5]), .ZN(DP_OP_15J1_136_9753_n23) );
  INVD1BWP7T35P140 U179 ( .I(n_zz_4[6]), .ZN(DP_OP_15J1_136_9753_n22) );
  INVD1BWP7T35P140 U180 ( .I(n_zz_3_8), .ZN(DP_OP_15J1_136_9753_n30) );
  INVD1BWP7T35P140 U181 ( .I(LastA2stZero), .ZN(DP_OP_15J1_136_9753_n12) );
  INVD1BWP7T35P140 U182 ( .I(ph_delta_abs[6]), .ZN(n148) );
  NR4D0BWP7T35P140 U183 ( .A1(ph_delta_abs[3]), .A2(ph_delta_abs[2]), .A3(
        ph_delta_abs[1]), .A4(ph_delta_abs[0]), .ZN(n146) );
  INR3D0BWP7T35P140 U184 ( .A1(n146), .B1(ph_delta_abs[4]), .B2(
        ph_delta_abs[5]), .ZN(n147) );
  NR2D1BWP7T35P140 U185 ( .A1(n148), .A2(n147), .ZN(n149) );
  NR2D1BWP7T35P140 U186 ( .A1(ph_delta_abs[7]), .A2(n149), .ZN(n150) );
  IND2D1BWP7T35P140 U187 ( .A1(ph_delta_abs[8]), .B1(n150), .ZN(n153) );
  NR2D1BWP7T35P140 U188 ( .A1(n153), .A2(DP_OP_15J1_136_9753_n13), .ZN(n151)
         );
  AO21D1BWP7T35P140 U189 ( .A1(N41), .A2(n153), .B(n151), .Z(N51) );
  INVD1BWP7T35P140 U190 ( .I(DP_OP_15J1_136_9753_n9), .ZN(n152) );
  AO21D1BWP7T35P140 U191 ( .A1(n152), .A2(n153), .B(n151), .Z(N52) );
  MUX2D1BWP7T35P140 U192 ( .I0(n_zz_9[7]), .I1(n154), .S(n153), .Z(N50) );
endmodule

