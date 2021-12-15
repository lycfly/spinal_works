/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Tue Oct 26 22:11:04 2021
/////////////////////////////////////////////////////////////


module FloorAndWrap_7 ( din, dout );
  input [11:0] din;
  output [7:0] dout;


  clk1a3 U1 ( .A(din[10]), .Y(dout[7]) );
  clk1a3 U2 ( .A(din[9]), .Y(dout[6]) );
  clk1a3 U3 ( .A(din[8]), .Y(dout[5]) );
  clk1a3 U4 ( .A(din[7]), .Y(dout[4]) );
  clk1a3 U5 ( .A(din[6]), .Y(dout[3]) );
  clk1a3 U6 ( .A(din[5]), .Y(dout[2]) );
  clk1a3 U7 ( .A(din[4]), .Y(dout[1]) );
  clk1a3 U8 ( .A(din[3]), .Y(dout[0]) );
endmodule


module FloorAndWrap_6 ( din, dout );
  input [11:0] din;
  output [7:0] dout;


  clk1a3 U1 ( .A(din[10]), .Y(dout[7]) );
  clk1a3 U2 ( .A(din[9]), .Y(dout[6]) );
  clk1a3 U3 ( .A(din[8]), .Y(dout[5]) );
  clk1a3 U4 ( .A(din[7]), .Y(dout[4]) );
  clk1a3 U5 ( .A(din[6]), .Y(dout[3]) );
  clk1a3 U6 ( .A(din[5]), .Y(dout[2]) );
  clk1a3 U7 ( .A(din[4]), .Y(dout[1]) );
  clk1a3 U8 ( .A(din[3]), .Y(dout[0]) );
endmodule


module FloorAndWrap_5 ( din, dout );
  input [11:0] din;
  output [7:0] dout;


  clk1a3 U1 ( .A(din[10]), .Y(dout[7]) );
  clk1a3 U2 ( .A(din[9]), .Y(dout[6]) );
  clk1a3 U3 ( .A(din[8]), .Y(dout[5]) );
  clk1a3 U4 ( .A(din[7]), .Y(dout[4]) );
  clk1a3 U5 ( .A(din[6]), .Y(dout[3]) );
  clk1a3 U6 ( .A(din[5]), .Y(dout[2]) );
  clk1a3 U7 ( .A(din[4]), .Y(dout[1]) );
  clk1a3 U8 ( .A(din[3]), .Y(dout[0]) );
endmodule


module FloorAndWrap_4 ( din, dout );
  input [11:0] din;
  output [7:0] dout;


  clk1a3 U1 ( .A(din[10]), .Y(dout[7]) );
  clk1a3 U2 ( .A(din[9]), .Y(dout[6]) );
  clk1a3 U3 ( .A(din[8]), .Y(dout[5]) );
  clk1a3 U4 ( .A(din[7]), .Y(dout[4]) );
  clk1a3 U5 ( .A(din[6]), .Y(dout[3]) );
  clk1a3 U6 ( .A(din[5]), .Y(dout[2]) );
  clk1a3 U7 ( .A(din[4]), .Y(dout[1]) );
  clk1a3 U8 ( .A(din[3]), .Y(dout[0]) );
endmodule


module FloorAndWrap_3 ( din, dout );
  input [11:0] din;
  output [7:0] dout;


  clk1a3 U1 ( .A(din[5]), .Y(dout[2]) );
  clk1a3 U2 ( .A(din[3]), .Y(dout[0]) );
  clk1a3 U3 ( .A(din[4]), .Y(dout[1]) );
  clk1a3 U4 ( .A(din[10]), .Y(dout[7]) );
  clk1a3 U5 ( .A(din[9]), .Y(dout[6]) );
  clk1a3 U6 ( .A(din[8]), .Y(dout[5]) );
  clk1a3 U7 ( .A(din[7]), .Y(dout[4]) );
  clk1a3 U8 ( .A(din[6]), .Y(dout[3]) );
endmodule


module FloorAndWrap_2 ( din, dout );
  input [11:0] din;
  output [7:0] dout;


  clk1a3 U1 ( .A(din[10]), .Y(dout[7]) );
  clk1a3 U2 ( .A(din[9]), .Y(dout[6]) );
  clk1a3 U3 ( .A(din[8]), .Y(dout[5]) );
  clk1a3 U4 ( .A(din[7]), .Y(dout[4]) );
  clk1a3 U5 ( .A(din[6]), .Y(dout[3]) );
  clk1a3 U6 ( .A(din[5]), .Y(dout[2]) );
  clk1a3 U7 ( .A(din[4]), .Y(dout[1]) );
  clk1a3 U8 ( .A(din[3]), .Y(dout[0]) );
endmodule


module FloorAndWrap_1 ( din, dout );
  input [11:0] din;
  output [7:0] dout;


  clk1a3 U1 ( .A(din[10]), .Y(dout[7]) );
  clk1a3 U2 ( .A(din[9]), .Y(dout[6]) );
  clk1a3 U3 ( .A(din[8]), .Y(dout[5]) );
  clk1a3 U4 ( .A(din[7]), .Y(dout[4]) );
  clk1a3 U5 ( .A(din[6]), .Y(dout[3]) );
  clk1a3 U6 ( .A(din[5]), .Y(dout[2]) );
  clk1a3 U7 ( .A(din[3]), .Y(dout[0]) );
  clk1a3 U8 ( .A(din[4]), .Y(dout[1]) );
endmodule


module FloorAndWrap_0 ( din, dout );
  input [11:0] din;
  output [7:0] dout;


  clk1a3 U1 ( .A(din[10]), .Y(dout[7]) );
  clk1a3 U2 ( .A(din[9]), .Y(dout[6]) );
  clk1a3 U3 ( .A(din[8]), .Y(dout[5]) );
  clk1a3 U4 ( .A(din[7]), .Y(dout[4]) );
  clk1a3 U5 ( .A(din[6]), .Y(dout[3]) );
  clk1a3 U6 ( .A(din[5]), .Y(dout[2]) );
  clk1a3 U7 ( .A(din[3]), .Y(dout[0]) );
  clk1a3 U8 ( .A(din[4]), .Y(dout[1]) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_0 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net5390;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net5390) );
  and2a3 main_gate ( .A(net5390), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_1 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net5390;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net5390) );
  and2a3 main_gate ( .A(net5390), .B(CLK), .Y(ENCLK) );
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
  wire   n_zz_30_11, in_vld_dly1, N1, net5396, net5401, intadd_9_A_3_,
         intadd_9_A_2_, intadd_9_A_1_, intadd_9_B_2_, intadd_9_B_1_,
         intadd_9_SUM_3_, intadd_9_SUM_2_, intadd_9_SUM_1_, intadd_9_SUM_0_,
         intadd_9_n4, intadd_9_n3, intadd_9_n2, intadd_9_n1, intadd_10_A_3_,
         intadd_10_A_2_, intadd_10_B_2_, intadd_10_B_1_, intadd_10_SUM_3_,
         intadd_10_SUM_2_, intadd_10_SUM_1_, intadd_10_SUM_0_, intadd_10_n4,
         intadd_10_n3, intadd_10_n2, intadd_10_n1, intadd_11_A_2_,
         intadd_11_B_2_, intadd_11_B_1_, intadd_11_SUM_3_, intadd_11_SUM_2_,
         intadd_11_SUM_1_, intadd_11_SUM_0_, intadd_11_n4, intadd_11_n3,
         intadd_11_n2, intadd_11_n1, intadd_12_A_2_, intadd_12_A_1_,
         intadd_12_B_2_, intadd_12_SUM_3_, intadd_12_SUM_2_, intadd_12_SUM_1_,
         intadd_12_SUM_0_, intadd_12_n4, intadd_12_n3, intadd_12_n2,
         intadd_12_n1, intadd_13_A_2_, intadd_13_A_1_, intadd_13_B_2_,
         intadd_13_B_1_, intadd_13_SUM_3_, intadd_13_SUM_2_, intadd_13_SUM_1_,
         intadd_13_SUM_0_, intadd_13_n4, intadd_13_n3, intadd_13_n2,
         intadd_13_n1, intadd_14_A_2_, intadd_14_B_2_, intadd_14_n3,
         intadd_14_n2, intadd_14_n1, intadd_15_A_2_, intadd_15_A_1_,
         intadd_15_B_2_, intadd_15_B_1_, intadd_15_n3, intadd_15_n2,
         intadd_15_n1, intadd_16_A_1_, intadd_16_SUM_2_, intadd_16_SUM_1_,
         intadd_16_SUM_0_, intadd_16_n3, intadd_16_n2, intadd_16_n1,
         intadd_17_B_2_, intadd_17_SUM_2_, intadd_17_SUM_1_, intadd_17_SUM_0_,
         intadd_17_n3, intadd_17_n2, intadd_17_n1, intadd_0_A_1_,
         intadd_0_A_0_, intadd_0_CI, intadd_0_n10, intadd_0_n9, intadd_0_n8,
         intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_1_A_5_,
         intadd_1_A_4_, intadd_1_A_3_, intadd_1_A_2_, intadd_1_A_1_,
         intadd_1_A_0_, intadd_1_B_6_, intadd_1_CI, intadd_1_SUM_6_,
         intadd_1_SUM_5_, intadd_1_SUM_4_, intadd_1_SUM_3_, intadd_1_SUM_2_,
         intadd_1_SUM_1_, intadd_1_SUM_0_, intadd_1_n7, intadd_1_n6,
         intadd_1_n5, intadd_1_n4, intadd_1_n3, intadd_1_n2, intadd_1_n1,
         intadd_2_A_5_, intadd_2_A_4_, intadd_2_A_3_, intadd_2_A_2_,
         intadd_2_A_1_, intadd_2_A_0_, intadd_2_CI, intadd_2_SUM_6_,
         intadd_2_SUM_5_, intadd_2_SUM_4_, intadd_2_SUM_3_, intadd_2_SUM_2_,
         intadd_2_SUM_1_, intadd_2_SUM_0_, intadd_2_n7, intadd_2_n6,
         intadd_2_n5, intadd_2_n4, intadd_2_n3, intadd_2_n2, intadd_2_n1,
         intadd_3_A_5_, intadd_3_A_4_, intadd_3_A_3_, intadd_3_A_2_,
         intadd_3_A_1_, intadd_3_A_0_, intadd_3_CI, intadd_3_SUM_6_,
         intadd_3_SUM_5_, intadd_3_SUM_4_, intadd_3_SUM_3_, intadd_3_SUM_2_,
         intadd_3_SUM_1_, intadd_3_SUM_0_, intadd_3_n7, intadd_3_n6,
         intadd_3_n5, intadd_3_n4, intadd_3_n3, intadd_3_n2, intadd_3_n1,
         intadd_4_A_5_, intadd_4_A_4_, intadd_4_A_3_, intadd_4_A_2_,
         intadd_4_A_1_, intadd_4_A_0_, intadd_4_CI, intadd_4_SUM_6_,
         intadd_4_SUM_5_, intadd_4_SUM_4_, intadd_4_SUM_3_, intadd_4_SUM_2_,
         intadd_4_SUM_1_, intadd_4_SUM_0_, intadd_4_n7, intadd_4_n6,
         intadd_4_n5, intadd_4_n4, intadd_4_n3, intadd_4_n2, intadd_4_n1,
         intadd_5_A_5_, intadd_5_A_4_, intadd_5_A_3_, intadd_5_A_2_,
         intadd_5_A_1_, intadd_5_A_0_, intadd_5_CI, intadd_5_SUM_6_,
         intadd_5_SUM_5_, intadd_5_SUM_4_, intadd_5_SUM_3_, intadd_5_SUM_2_,
         intadd_5_SUM_1_, intadd_5_SUM_0_, intadd_5_n7, intadd_5_n6,
         intadd_5_n5, intadd_5_n4, intadd_5_n3, intadd_5_n2, intadd_5_n1,
         intadd_6_A_5_, intadd_6_A_4_, intadd_6_A_3_, intadd_6_A_2_,
         intadd_6_A_1_, intadd_6_A_0_, intadd_6_CI, intadd_6_SUM_6_,
         intadd_6_SUM_5_, intadd_6_SUM_4_, intadd_6_SUM_3_, intadd_6_SUM_2_,
         intadd_6_SUM_1_, intadd_6_SUM_0_, intadd_6_n7, intadd_6_n6,
         intadd_6_n5, intadd_6_n4, intadd_6_n3, intadd_6_n2, intadd_6_n1,
         intadd_7_A_5_, intadd_7_A_4_, intadd_7_A_3_, intadd_7_A_2_,
         intadd_7_A_1_, intadd_7_A_0_, intadd_7_CI, intadd_7_SUM_6_,
         intadd_7_SUM_5_, intadd_7_SUM_4_, intadd_7_SUM_3_, intadd_7_SUM_2_,
         intadd_7_SUM_1_, intadd_7_SUM_0_, intadd_7_n7, intadd_7_n6,
         intadd_7_n5, intadd_7_n4, intadd_7_n3, intadd_7_n2, intadd_7_n1,
         intadd_8_B_5_, intadd_8_B_4_, intadd_8_B_3_, intadd_8_B_2_,
         intadd_8_B_1_, intadd_8_B_0_, intadd_8_CI, intadd_8_SUM_6_,
         intadd_8_SUM_5_, intadd_8_SUM_4_, intadd_8_SUM_3_, intadd_8_SUM_2_,
         intadd_8_SUM_1_, intadd_8_SUM_0_, intadd_8_n7, intadd_8_n6,
         intadd_8_n5, intadd_8_n4, intadd_8_n3, intadd_8_n2, intadd_8_n1, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92;
  wire   [9:1] n_zz_30;
  wire   [7:0] FloorWrap_0_dout;
  wire   [7:0] FloorWrap_1_dout;
  wire   [7:0] FloorWrap_2_dout;
  wire   [7:0] FloorWrap_3_dout;
  wire   [7:0] FloorWrap_4_dout;
  wire   [7:0] FloorWrap_5_dout;
  wire   [7:0] FloorWrap_6_dout;
  wire   [7:0] FloorWrap_7_dout;
  wire   [9:0] SumXin;
  wire   [10:0] VinMinusMean_0;
  wire   [10:3] VinMinusMean_1;
  wire   [10:3] VinMinusMean_2;
  wire   [10:3] VinMinusMean_3;
  wire   [10:3] VinMinusMean_4;
  wire   [10:3] VinMinusMean_5;
  wire   [10:3] VinMinusMean_6;
  wire   [10:3] VinMinusMean_7;

  FloorAndWrap_7 FloorWrap_0 ( .din({intadd_8_n1, VinMinusMean_0}), .dout(
        FloorWrap_0_dout) );
  FloorAndWrap_6 FloorWrap_1 ( .din({intadd_7_n1, VinMinusMean_1, 
        VinMinusMean_0[2:0]}), .dout(FloorWrap_1_dout) );
  FloorAndWrap_5 FloorWrap_2 ( .din({intadd_6_n1, VinMinusMean_2, 
        VinMinusMean_0[2:0]}), .dout(FloorWrap_2_dout) );
  FloorAndWrap_4 FloorWrap_3 ( .din({intadd_5_n1, VinMinusMean_3, 
        VinMinusMean_0[2:0]}), .dout(FloorWrap_3_dout) );
  FloorAndWrap_3 FloorWrap_4 ( .din({intadd_4_n1, VinMinusMean_4, 
        VinMinusMean_0[2:0]}), .dout(FloorWrap_4_dout) );
  FloorAndWrap_2 FloorWrap_5 ( .din({intadd_3_n1, VinMinusMean_5, 
        VinMinusMean_0[2:0]}), .dout(FloorWrap_5_dout) );
  FloorAndWrap_1 FloorWrap_6 ( .din({intadd_2_n1, VinMinusMean_6, 
        VinMinusMean_0[2:0]}), .dout(FloorWrap_6_dout) );
  FloorAndWrap_0 FloorWrap_7 ( .din({intadd_1_n1, VinMinusMean_7, 
        VinMinusMean_0[2:0]}), .dout(FloorWrap_7_dout) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_0 clk_gate_VnReg_4_reg ( .CLK(clk), .EN(
        in_vld_dly1), .ENCLK(net5396) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_1 clk_gate_SumXinReg_reg ( .CLK(clk), .EN(N1), 
        .ENCLK(net5401) );
  fdef2a3 in_vld_dly1_reg ( .D(vin_vld), .E(en), .CLK(clk), .CLR(n87), .Q(
        in_vld_dly1) );
  fdef2a3 in_vld_dly2_reg ( .D(in_vld_dly1), .E(en), .CLK(clk), .CLR(n87), .Q(
        vn_vld) );
  fdf2a3 VnReg_4_reg_6_ ( .D(FloorWrap_4_dout[6]), .CLK(net5396), .CLR(n87), 
        .Q(vn_4[6]) );
  fdf2a3 VnReg_4_reg_5_ ( .D(FloorWrap_4_dout[5]), .CLK(net5396), .CLR(n87), 
        .Q(vn_4[5]) );
  fdf2a3 VnReg_4_reg_4_ ( .D(FloorWrap_4_dout[4]), .CLK(net5396), .CLR(n87), 
        .Q(vn_4[4]) );
  fdf2a3 VnReg_4_reg_3_ ( .D(FloorWrap_4_dout[3]), .CLK(net5396), .CLR(n87), 
        .Q(vn_4[3]) );
  fdf2a3 VnReg_4_reg_2_ ( .D(FloorWrap_4_dout[2]), .CLK(net5396), .CLR(n87), 
        .Q(vn_4[2]) );
  fdf2a3 VnReg_4_reg_1_ ( .D(FloorWrap_4_dout[1]), .CLK(net5396), .CLR(n87), 
        .Q(vn_4[1]) );
  fdf2a3 VnReg_4_reg_0_ ( .D(FloorWrap_4_dout[0]), .CLK(net5396), .CLR(n87), 
        .Q(vn_4[0]) );
  fdf2a3 VnReg_6_reg_6_ ( .D(FloorWrap_6_dout[6]), .CLK(net5396), .CLR(n88), 
        .Q(vn_6[6]) );
  fdf2a3 VnReg_6_reg_5_ ( .D(FloorWrap_6_dout[5]), .CLK(net5396), .CLR(n88), 
        .Q(vn_6[5]) );
  fdf2a3 VnReg_6_reg_4_ ( .D(FloorWrap_6_dout[4]), .CLK(net5396), .CLR(n88), 
        .Q(vn_6[4]) );
  fdf2a3 VnReg_6_reg_3_ ( .D(FloorWrap_6_dout[3]), .CLK(net5396), .CLR(n88), 
        .Q(vn_6[3]) );
  fdf2a3 VnReg_6_reg_2_ ( .D(FloorWrap_6_dout[2]), .CLK(net5396), .CLR(n88), 
        .Q(vn_6[2]) );
  fdf2a3 VnReg_6_reg_1_ ( .D(FloorWrap_6_dout[1]), .CLK(net5396), .CLR(n88), 
        .Q(vn_6[1]) );
  fdf2a3 VnReg_6_reg_0_ ( .D(FloorWrap_6_dout[0]), .CLK(net5396), .CLR(n88), 
        .Q(vn_6[0]) );
  fdf2a3 VnReg_5_reg_6_ ( .D(FloorWrap_5_dout[6]), .CLK(net5396), .CLR(n88), 
        .Q(vn_5[6]) );
  fdf2a3 VnReg_5_reg_5_ ( .D(FloorWrap_5_dout[5]), .CLK(net5396), .CLR(n88), 
        .Q(vn_5[5]) );
  fdf2a3 VnReg_5_reg_4_ ( .D(FloorWrap_5_dout[4]), .CLK(net5396), .CLR(n88), 
        .Q(vn_5[4]) );
  fdf2a3 VnReg_5_reg_3_ ( .D(FloorWrap_5_dout[3]), .CLK(net5396), .CLR(n89), 
        .Q(vn_5[3]) );
  fdf2a3 VnReg_5_reg_2_ ( .D(FloorWrap_5_dout[2]), .CLK(net5396), .CLR(n89), 
        .Q(vn_5[2]) );
  fdf2a3 VnReg_5_reg_1_ ( .D(FloorWrap_5_dout[1]), .CLK(net5396), .CLR(n89), 
        .Q(vn_5[1]) );
  fdf2a3 VnReg_5_reg_0_ ( .D(FloorWrap_5_dout[0]), .CLK(net5396), .CLR(n89), 
        .Q(vn_5[0]) );
  fdf2a3 VnReg_7_reg_6_ ( .D(FloorWrap_7_dout[6]), .CLK(net5396), .CLR(n89), 
        .Q(vn_7[6]) );
  fdf2a3 VnReg_7_reg_5_ ( .D(FloorWrap_7_dout[5]), .CLK(net5396), .CLR(n89), 
        .Q(vn_7[5]) );
  fdf2a3 VnReg_7_reg_4_ ( .D(FloorWrap_7_dout[4]), .CLK(net5396), .CLR(n89), 
        .Q(vn_7[4]) );
  fdf2a3 VnReg_7_reg_3_ ( .D(FloorWrap_7_dout[3]), .CLK(net5396), .CLR(n89), 
        .Q(vn_7[3]) );
  fdf2a3 VnReg_7_reg_2_ ( .D(FloorWrap_7_dout[2]), .CLK(net5396), .CLR(n89), 
        .Q(vn_7[2]) );
  fdf2a3 VnReg_7_reg_1_ ( .D(FloorWrap_7_dout[1]), .CLK(net5396), .CLR(n89), 
        .Q(vn_7[1]) );
  fdf2a3 VnReg_7_reg_0_ ( .D(FloorWrap_7_dout[0]), .CLK(net5396), .CLR(n90), 
        .Q(vn_7[0]) );
  fdf2a3 SumXinReg_reg_3_ ( .D(SumXin[3]), .CLK(net5401), .CLR(n90), .Q(
        n_zz_30[3]) );
  fdf2a3 SumXinReg_reg_2_ ( .D(SumXin[2]), .CLK(net5401), .CLR(n90), .Q(
        n_zz_30[2]) );
  fdf2a3 SumXinReg_reg_1_ ( .D(SumXin[1]), .CLK(net5401), .CLR(n90), .Q(
        n_zz_30[1]) );
  fdf2a3 VnReg_0_reg_6_ ( .D(FloorWrap_0_dout[6]), .CLK(net5396), .CLR(n91), 
        .Q(vn_0[6]) );
  fdf2a3 VnReg_0_reg_5_ ( .D(FloorWrap_0_dout[5]), .CLK(net5396), .CLR(n91), 
        .Q(vn_0[5]) );
  fdf2a3 VnReg_0_reg_4_ ( .D(FloorWrap_0_dout[4]), .CLK(net5396), .CLR(n91), 
        .Q(vn_0[4]) );
  fdf2a3 VnReg_0_reg_3_ ( .D(FloorWrap_0_dout[3]), .CLK(net5396), .CLR(n91), 
        .Q(vn_0[3]) );
  fdf2a3 VnReg_0_reg_2_ ( .D(FloorWrap_0_dout[2]), .CLK(net5396), .CLR(n91), 
        .Q(vn_0[2]) );
  fdf2a3 VnReg_0_reg_1_ ( .D(FloorWrap_0_dout[1]), .CLK(net5396), .CLR(n91), 
        .Q(vn_0[1]) );
  fdf2a3 VnReg_0_reg_0_ ( .D(FloorWrap_0_dout[0]), .CLK(net5396), .CLR(n91), 
        .Q(vn_0[0]) );
  fdf2a3 VnReg_1_reg_6_ ( .D(FloorWrap_1_dout[6]), .CLK(net5396), .CLR(n91), 
        .Q(vn_1[6]) );
  fdf2a3 VnReg_1_reg_5_ ( .D(FloorWrap_1_dout[5]), .CLK(net5396), .CLR(resetn), 
        .Q(vn_1[5]) );
  fdf2a3 VnReg_1_reg_4_ ( .D(FloorWrap_1_dout[4]), .CLK(net5396), .CLR(resetn), 
        .Q(vn_1[4]) );
  fdf2a3 VnReg_1_reg_3_ ( .D(FloorWrap_1_dout[3]), .CLK(net5396), .CLR(resetn), 
        .Q(vn_1[3]) );
  fdf2a3 VnReg_1_reg_2_ ( .D(FloorWrap_1_dout[2]), .CLK(net5396), .CLR(resetn), 
        .Q(vn_1[2]) );
  fdf2a3 VnReg_1_reg_1_ ( .D(FloorWrap_1_dout[1]), .CLK(net5396), .CLR(resetn), 
        .Q(vn_1[1]) );
  fdf2a3 VnReg_1_reg_0_ ( .D(FloorWrap_1_dout[0]), .CLK(net5396), .CLR(resetn), 
        .Q(vn_1[0]) );
  fdf2a3 VnReg_2_reg_6_ ( .D(FloorWrap_2_dout[6]), .CLK(net5396), .CLR(resetn), 
        .Q(vn_2[6]) );
  fdf2a3 VnReg_2_reg_5_ ( .D(FloorWrap_2_dout[5]), .CLK(net5396), .CLR(resetn), 
        .Q(vn_2[5]) );
  fdf2a3 VnReg_2_reg_4_ ( .D(FloorWrap_2_dout[4]), .CLK(net5396), .CLR(resetn), 
        .Q(vn_2[4]) );
  fdf2a3 VnReg_2_reg_3_ ( .D(FloorWrap_2_dout[3]), .CLK(net5396), .CLR(resetn), 
        .Q(vn_2[3]) );
  fdf2a3 VnReg_2_reg_2_ ( .D(FloorWrap_2_dout[2]), .CLK(net5396), .CLR(n92), 
        .Q(vn_2[2]) );
  fdf2a3 VnReg_2_reg_1_ ( .D(FloorWrap_2_dout[1]), .CLK(net5396), .CLR(n92), 
        .Q(vn_2[1]) );
  fdf2a3 VnReg_2_reg_0_ ( .D(FloorWrap_2_dout[0]), .CLK(net5396), .CLR(n92), 
        .Q(vn_2[0]) );
  fdf2a3 VnReg_3_reg_7_ ( .D(FloorWrap_3_dout[7]), .CLK(net5396), .CLR(n92), 
        .Q(vn_3[7]) );
  fdf2a3 VnReg_3_reg_6_ ( .D(FloorWrap_3_dout[6]), .CLK(net5396), .CLR(n92), 
        .Q(vn_3[6]) );
  fdf2a3 VnReg_3_reg_5_ ( .D(FloorWrap_3_dout[5]), .CLK(net5396), .CLR(n92), 
        .Q(vn_3[5]) );
  fdf2a3 VnReg_3_reg_4_ ( .D(FloorWrap_3_dout[4]), .CLK(net5396), .CLR(n92), 
        .Q(vn_3[4]) );
  fdf2a3 VnReg_3_reg_3_ ( .D(FloorWrap_3_dout[3]), .CLK(net5396), .CLR(n92), 
        .Q(vn_3[3]) );
  fdf2a3 VnReg_3_reg_2_ ( .D(FloorWrap_3_dout[2]), .CLK(net5396), .CLR(n92), 
        .Q(vn_3[2]) );
  fdf2a3 VnReg_3_reg_1_ ( .D(FloorWrap_3_dout[1]), .CLK(net5396), .CLR(n92), 
        .Q(vn_3[1]) );
  fdf2a3 VnReg_3_reg_0_ ( .D(FloorWrap_3_dout[0]), .CLK(net5396), .CLR(n92), 
        .Q(vn_3[0]) );
  fdf2a3 SumXinReg_reg_0_ ( .D(SumXin[0]), .CLK(net5401), .CLR(n91), .Q(
        VinMinusMean_0[0]) );
  fa1a2 intadd_14_U4 ( .A(v_in_3[5]), .B(v_in_5[5]), .CI(v_in_1[5]), .CO(
        intadd_14_n3), .S(intadd_10_B_1_) );
  fa1a2 intadd_14_U3 ( .A(v_in_4[6]), .B(v_in_6[6]), .CI(intadd_14_n3), .CO(
        intadd_14_n2), .S(intadd_10_A_2_) );
  fa1a2 intadd_15_U4 ( .A(v_in_3[6]), .B(v_in_5[6]), .CI(v_in_1[6]), .CO(
        intadd_15_n3), .S(intadd_9_B_1_) );
  fa1a2 intadd_15_U3 ( .A(intadd_15_B_1_), .B(intadd_15_A_1_), .CI(
        intadd_15_n3), .CO(intadd_15_n2), .S(intadd_9_B_2_) );
  fa1a2 intadd_9_U5 ( .A(v_in_2[5]), .B(v_in_7[5]), .CI(v_in_0[5]), .CO(
        intadd_9_n4), .S(intadd_9_SUM_0_) );
  fa1a2 intadd_9_U4 ( .A(intadd_9_B_1_), .B(intadd_9_A_1_), .CI(intadd_9_n4), 
        .CO(intadd_9_n3), .S(intadd_9_SUM_1_) );
  fa1a2 intadd_9_U3 ( .A(intadd_9_B_2_), .B(intadd_9_A_2_), .CI(intadd_9_n3), 
        .CO(intadd_9_n2), .S(intadd_9_SUM_2_) );
  fa1a2 intadd_10_U5 ( .A(v_in_2[4]), .B(v_in_7[4]), .CI(v_in_0[4]), .CO(
        intadd_10_n4), .S(intadd_10_SUM_0_) );
  fa1a2 intadd_10_U4 ( .A(intadd_10_B_1_), .B(intadd_9_SUM_0_), .CI(
        intadd_10_n4), .CO(intadd_10_n3), .S(intadd_10_SUM_1_) );
  fa1a2 intadd_10_U3 ( .A(intadd_10_B_2_), .B(intadd_10_A_2_), .CI(
        intadd_10_n3), .CO(intadd_10_n2), .S(intadd_10_SUM_2_) );
  fa1a2 intadd_11_U5 ( .A(v_in_6[3]), .B(v_in_7[3]), .CI(v_in_0[3]), .CO(
        intadd_11_n4), .S(intadd_11_SUM_0_) );
  fa1a2 intadd_11_U4 ( .A(intadd_11_B_1_), .B(intadd_10_SUM_0_), .CI(
        intadd_11_n4), .CO(intadd_11_n3), .S(intadd_11_SUM_1_) );
  fa1a2 intadd_11_U3 ( .A(intadd_11_B_2_), .B(intadd_11_A_2_), .CI(
        intadd_11_n3), .CO(intadd_11_n2), .S(intadd_11_SUM_2_) );
  fa1a2 intadd_11_U2 ( .A(intadd_10_SUM_2_), .B(intadd_9_SUM_1_), .CI(
        intadd_11_n2), .CO(intadd_11_n1), .S(intadd_11_SUM_3_) );
  fa1a2 intadd_12_U5 ( .A(v_in_5[2]), .B(v_in_7[2]), .CI(v_in_0[2]), .CO(
        intadd_12_n4), .S(intadd_12_SUM_0_) );
  fa1a2 intadd_12_U4 ( .A(intadd_11_SUM_0_), .B(intadd_12_A_1_), .CI(
        intadd_12_n4), .CO(intadd_12_n3), .S(intadd_12_SUM_1_) );
  fa1a2 intadd_12_U3 ( .A(intadd_12_B_2_), .B(intadd_12_A_2_), .CI(
        intadd_12_n3), .CO(intadd_12_n2), .S(intadd_12_SUM_2_) );
  fa1a2 intadd_12_U2 ( .A(intadd_11_SUM_2_), .B(intadd_10_SUM_1_), .CI(
        intadd_12_n2), .CO(intadd_12_n1), .S(intadd_12_SUM_3_) );
  fa1a2 intadd_13_U5 ( .A(v_in_6[1]), .B(v_in_7[1]), .CI(v_in_5[1]), .CO(
        intadd_13_n4), .S(intadd_13_SUM_0_) );
  fa1a2 intadd_13_U4 ( .A(intadd_13_B_1_), .B(intadd_13_A_1_), .CI(
        intadd_13_n4), .CO(intadd_13_n3), .S(intadd_13_SUM_1_) );
  fa1a2 intadd_13_U3 ( .A(intadd_13_B_2_), .B(intadd_13_A_2_), .CI(
        intadd_13_n3), .CO(intadd_13_n2), .S(intadd_13_SUM_2_) );
  fa1a2 intadd_13_U2 ( .A(intadd_12_SUM_2_), .B(intadd_11_SUM_1_), .CI(
        intadd_13_n2), .CO(intadd_13_n1), .S(intadd_13_SUM_3_) );
  fa1a2 intadd_16_U4 ( .A(v_in_2[1]), .B(v_in_4[1]), .CI(v_in_0[1]), .CO(
        intadd_16_n3), .S(intadd_16_SUM_0_) );
  fa1a2 intadd_16_U3 ( .A(intadd_12_SUM_0_), .B(intadd_16_A_1_), .CI(
        intadd_16_n3), .CO(intadd_16_n2), .S(intadd_16_SUM_1_) );
  fa1a2 intadd_17_U4 ( .A(v_in_2[0]), .B(v_in_4[0]), .CI(v_in_0[0]), .CO(
        intadd_17_n3), .S(intadd_17_SUM_0_) );
  fa1a2 intadd_17_U3 ( .A(intadd_13_SUM_0_), .B(intadd_16_SUM_0_), .CI(
        intadd_17_n3), .CO(intadd_17_n2), .S(intadd_17_SUM_1_) );
  fa1a2 intadd_0_U11 ( .A(intadd_17_SUM_0_), .B(intadd_0_A_0_), .CI(
        intadd_0_CI), .CO(intadd_0_n10), .S(SumXin[0]) );
  fa1a2 intadd_0_U10 ( .A(intadd_17_SUM_1_), .B(intadd_0_A_1_), .CI(
        intadd_0_n10), .CO(intadd_0_n9), .S(SumXin[1]) );
  fa1a2 intadd_0_U6 ( .A(intadd_13_n1), .B(intadd_12_SUM_3_), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(SumXin[5]) );
  fa1a2 intadd_0_U5 ( .A(intadd_12_n1), .B(intadd_11_SUM_3_), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(SumXin[6]) );
  fa1a2 intadd_7_U8 ( .A(n_zz_30[4]), .B(intadd_7_A_0_), .CI(intadd_7_CI), 
        .CO(intadd_7_n7), .S(intadd_7_SUM_0_) );
  fa1a2 intadd_7_U7 ( .A(n_zz_30[5]), .B(intadd_7_A_1_), .CI(intadd_7_n7), 
        .CO(intadd_7_n6), .S(intadd_7_SUM_1_) );
  fa1a2 intadd_7_U6 ( .A(n_zz_30[6]), .B(intadd_7_A_2_), .CI(intadd_7_n6), 
        .CO(intadd_7_n5), .S(intadd_7_SUM_2_) );
  fa1a2 intadd_7_U5 ( .A(n_zz_30[7]), .B(intadd_7_A_3_), .CI(intadd_7_n5), 
        .CO(intadd_7_n4), .S(intadd_7_SUM_3_) );
  fa1a2 intadd_7_U4 ( .A(n_zz_30[8]), .B(intadd_7_A_4_), .CI(intadd_7_n4), 
        .CO(intadd_7_n3), .S(intadd_7_SUM_4_) );
  fa1a2 intadd_7_U3 ( .A(n_zz_30[9]), .B(intadd_7_A_5_), .CI(intadd_7_n3), 
        .CO(intadd_7_n2), .S(intadd_7_SUM_5_) );
  fa1a2 intadd_7_U2 ( .A(intadd_1_B_6_), .B(v_in_1[7]), .CI(intadd_7_n2), .CO(
        intadd_7_n1), .S(intadd_7_SUM_6_) );
  fa1a2 intadd_4_U8 ( .A(n_zz_30[4]), .B(intadd_4_A_0_), .CI(intadd_4_CI), 
        .CO(intadd_4_n7), .S(intadd_4_SUM_0_) );
  fa1a2 intadd_4_U7 ( .A(n_zz_30[5]), .B(intadd_4_A_1_), .CI(intadd_4_n7), 
        .CO(intadd_4_n6), .S(intadd_4_SUM_1_) );
  fa1a2 intadd_4_U6 ( .A(n_zz_30[6]), .B(intadd_4_A_2_), .CI(intadd_4_n6), 
        .CO(intadd_4_n5), .S(intadd_4_SUM_2_) );
  fa1a2 intadd_4_U5 ( .A(n_zz_30[7]), .B(intadd_4_A_3_), .CI(intadd_4_n5), 
        .CO(intadd_4_n4), .S(intadd_4_SUM_3_) );
  fa1a2 intadd_4_U4 ( .A(n_zz_30[8]), .B(intadd_4_A_4_), .CI(intadd_4_n4), 
        .CO(intadd_4_n3), .S(intadd_4_SUM_4_) );
  fa1a2 intadd_4_U3 ( .A(n_zz_30[9]), .B(intadd_4_A_5_), .CI(intadd_4_n3), 
        .CO(intadd_4_n2), .S(intadd_4_SUM_5_) );
  fa1a2 intadd_4_U2 ( .A(intadd_1_B_6_), .B(v_in_4[7]), .CI(intadd_4_n2), .CO(
        intadd_4_n1), .S(intadd_4_SUM_6_) );
  fa1a2 intadd_2_U8 ( .A(n_zz_30[4]), .B(intadd_2_A_0_), .CI(intadd_2_CI), 
        .CO(intadd_2_n7), .S(intadd_2_SUM_0_) );
  fa1a2 intadd_2_U7 ( .A(n_zz_30[5]), .B(intadd_2_A_1_), .CI(intadd_2_n7), 
        .CO(intadd_2_n6), .S(intadd_2_SUM_1_) );
  fa1a2 intadd_2_U6 ( .A(n_zz_30[6]), .B(intadd_2_A_2_), .CI(intadd_2_n6), 
        .CO(intadd_2_n5), .S(intadd_2_SUM_2_) );
  fa1a2 intadd_2_U5 ( .A(n_zz_30[7]), .B(intadd_2_A_3_), .CI(intadd_2_n5), 
        .CO(intadd_2_n4), .S(intadd_2_SUM_3_) );
  fa1a2 intadd_2_U4 ( .A(n_zz_30[8]), .B(intadd_2_A_4_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_2_SUM_4_) );
  fa1a2 intadd_2_U3 ( .A(n_zz_30[9]), .B(intadd_2_A_5_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_5_) );
  fa1a2 intadd_2_U2 ( .A(intadd_1_B_6_), .B(v_in_6[7]), .CI(intadd_2_n2), .CO(
        intadd_2_n1), .S(intadd_2_SUM_6_) );
  fa1a2 intadd_5_U8 ( .A(n_zz_30[4]), .B(intadd_5_A_0_), .CI(intadd_5_CI), 
        .CO(intadd_5_n7), .S(intadd_5_SUM_0_) );
  fa1a2 intadd_5_U7 ( .A(n_zz_30[5]), .B(intadd_5_A_1_), .CI(intadd_5_n7), 
        .CO(intadd_5_n6), .S(intadd_5_SUM_1_) );
  fa1a2 intadd_5_U6 ( .A(n_zz_30[6]), .B(intadd_5_A_2_), .CI(intadd_5_n6), 
        .CO(intadd_5_n5), .S(intadd_5_SUM_2_) );
  fa1a2 intadd_5_U5 ( .A(n_zz_30[7]), .B(intadd_5_A_3_), .CI(intadd_5_n5), 
        .CO(intadd_5_n4), .S(intadd_5_SUM_3_) );
  fa1a2 intadd_5_U4 ( .A(n_zz_30[8]), .B(intadd_5_A_4_), .CI(intadd_5_n4), 
        .CO(intadd_5_n3), .S(intadd_5_SUM_4_) );
  fa1a2 intadd_5_U3 ( .A(n_zz_30[9]), .B(intadd_5_A_5_), .CI(intadd_5_n3), 
        .CO(intadd_5_n2), .S(intadd_5_SUM_5_) );
  fa1a2 intadd_5_U2 ( .A(intadd_1_B_6_), .B(v_in_3[7]), .CI(intadd_5_n2), .CO(
        intadd_5_n1), .S(intadd_5_SUM_6_) );
  fa1a2 intadd_6_U8 ( .A(n_zz_30[4]), .B(intadd_6_A_0_), .CI(intadd_6_CI), 
        .CO(intadd_6_n7), .S(intadd_6_SUM_0_) );
  fa1a2 intadd_6_U7 ( .A(n_zz_30[5]), .B(intadd_6_A_1_), .CI(intadd_6_n7), 
        .CO(intadd_6_n6), .S(intadd_6_SUM_1_) );
  fa1a2 intadd_6_U6 ( .A(n_zz_30[6]), .B(intadd_6_A_2_), .CI(intadd_6_n6), 
        .CO(intadd_6_n5), .S(intadd_6_SUM_2_) );
  fa1a2 intadd_6_U5 ( .A(n_zz_30[7]), .B(intadd_6_A_3_), .CI(intadd_6_n5), 
        .CO(intadd_6_n4), .S(intadd_6_SUM_3_) );
  fa1a2 intadd_6_U4 ( .A(n_zz_30[8]), .B(intadd_6_A_4_), .CI(intadd_6_n4), 
        .CO(intadd_6_n3), .S(intadd_6_SUM_4_) );
  fa1a2 intadd_6_U3 ( .A(n_zz_30[9]), .B(intadd_6_A_5_), .CI(intadd_6_n3), 
        .CO(intadd_6_n2), .S(intadd_6_SUM_5_) );
  fa1a2 intadd_6_U2 ( .A(intadd_1_B_6_), .B(v_in_2[7]), .CI(intadd_6_n2), .CO(
        intadd_6_n1), .S(intadd_6_SUM_6_) );
  fa1a2 intadd_3_U8 ( .A(n_zz_30[4]), .B(intadd_3_A_0_), .CI(intadd_3_CI), 
        .CO(intadd_3_n7), .S(intadd_3_SUM_0_) );
  fa1a2 intadd_3_U7 ( .A(n_zz_30[5]), .B(intadd_3_A_1_), .CI(intadd_3_n7), 
        .CO(intadd_3_n6), .S(intadd_3_SUM_1_) );
  fa1a2 intadd_3_U6 ( .A(n_zz_30[6]), .B(intadd_3_A_2_), .CI(intadd_3_n6), 
        .CO(intadd_3_n5), .S(intadd_3_SUM_2_) );
  fa1a2 intadd_3_U5 ( .A(n_zz_30[7]), .B(intadd_3_A_3_), .CI(intadd_3_n5), 
        .CO(intadd_3_n4), .S(intadd_3_SUM_3_) );
  fa1a2 intadd_3_U4 ( .A(n_zz_30[8]), .B(intadd_3_A_4_), .CI(intadd_3_n4), 
        .CO(intadd_3_n3), .S(intadd_3_SUM_4_) );
  fa1a2 intadd_3_U3 ( .A(n_zz_30[9]), .B(intadd_3_A_5_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(intadd_3_SUM_5_) );
  fa1a2 intadd_3_U2 ( .A(intadd_1_B_6_), .B(v_in_5[7]), .CI(intadd_3_n2), .CO(
        intadd_3_n1), .S(intadd_3_SUM_6_) );
  fa1a2 intadd_1_U8 ( .A(n_zz_30[4]), .B(intadd_1_A_0_), .CI(intadd_1_CI), 
        .CO(intadd_1_n7), .S(intadd_1_SUM_0_) );
  fa1a2 intadd_1_U7 ( .A(n_zz_30[5]), .B(intadd_1_A_1_), .CI(intadd_1_n7), 
        .CO(intadd_1_n6), .S(intadd_1_SUM_1_) );
  fa1a2 intadd_1_U6 ( .A(n_zz_30[6]), .B(intadd_1_A_2_), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(intadd_1_SUM_2_) );
  fa1a2 intadd_1_U5 ( .A(n_zz_30[7]), .B(intadd_1_A_3_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_3_) );
  fa1a2 intadd_1_U4 ( .A(n_zz_30[8]), .B(intadd_1_A_4_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_4_) );
  fa1a2 intadd_1_U3 ( .A(n_zz_30[9]), .B(intadd_1_A_5_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_5_) );
  fa1a2 intadd_1_U2 ( .A(intadd_1_B_6_), .B(v_in_7[7]), .CI(intadd_1_n2), .CO(
        intadd_1_n1), .S(intadd_1_SUM_6_) );
  fa1a2 intadd_8_U8 ( .A(intadd_8_B_0_), .B(n_zz_30[4]), .CI(intadd_8_CI), 
        .CO(intadd_8_n7), .S(intadd_8_SUM_0_) );
  fa1a2 intadd_8_U7 ( .A(intadd_8_B_1_), .B(n_zz_30[5]), .CI(intadd_8_n7), 
        .CO(intadd_8_n6), .S(intadd_8_SUM_1_) );
  fa1a2 intadd_8_U6 ( .A(intadd_8_B_2_), .B(n_zz_30[6]), .CI(intadd_8_n6), 
        .CO(intadd_8_n5), .S(intadd_8_SUM_2_) );
  fa1a2 intadd_8_U5 ( .A(intadd_8_B_3_), .B(n_zz_30[7]), .CI(intadd_8_n5), 
        .CO(intadd_8_n4), .S(intadd_8_SUM_3_) );
  fa1a2 intadd_8_U4 ( .A(intadd_8_B_4_), .B(n_zz_30[8]), .CI(intadd_8_n4), 
        .CO(intadd_8_n3), .S(intadd_8_SUM_4_) );
  fa1a2 intadd_8_U3 ( .A(intadd_8_B_5_), .B(n_zz_30[9]), .CI(intadd_8_n3), 
        .CO(intadd_8_n2), .S(intadd_8_SUM_5_) );
  fa1a2 intadd_8_U2 ( .A(intadd_1_B_6_), .B(v_in_0[7]), .CI(intadd_8_n2), .CO(
        intadd_8_n1), .S(intadd_8_SUM_6_) );
  fa1a2 intadd_15_U2 ( .A(intadd_15_B_2_), .B(intadd_15_A_2_), .CI(
        intadd_15_n2), .CO(intadd_15_n1), .S(intadd_9_A_3_) );
  fa1a2 intadd_16_U2 ( .A(intadd_13_SUM_2_), .B(intadd_12_SUM_1_), .CI(
        intadd_16_n2), .CO(intadd_16_n1), .S(intadd_16_SUM_2_) );
  fa1a2 intadd_17_U2 ( .A(intadd_17_B_2_), .B(intadd_17_n2), .CI(
        intadd_13_SUM_1_), .CO(intadd_17_n1), .S(intadd_17_SUM_2_) );
  fa1a2 intadd_0_U9 ( .A(intadd_17_SUM_2_), .B(intadd_16_SUM_1_), .CI(
        intadd_0_n9), .CO(intadd_0_n8), .S(SumXin[2]) );
  fdf2a3 VnReg_4_reg_7_ ( .D(FloorWrap_4_dout[7]), .CLK(net5396), .CLR(n87), 
        .Q(vn_4[7]) );
  fdf2a3 VnReg_2_reg_7_ ( .D(FloorWrap_2_dout[7]), .CLK(net5396), .CLR(resetn), 
        .Q(vn_2[7]) );
  fdf2a3 VnReg_1_reg_7_ ( .D(FloorWrap_1_dout[7]), .CLK(net5396), .CLR(n91), 
        .Q(vn_1[7]) );
  fdf2a3 VnReg_7_reg_7_ ( .D(FloorWrap_7_dout[7]), .CLK(net5396), .CLR(n89), 
        .Q(vn_7[7]) );
  fdf2a3 VnReg_6_reg_7_ ( .D(FloorWrap_6_dout[7]), .CLK(net5396), .CLR(n87), 
        .Q(vn_6[7]) );
  fdf2a3 VnReg_5_reg_7_ ( .D(FloorWrap_5_dout[7]), .CLK(net5396), .CLR(n88), 
        .Q(vn_5[7]) );
  fdf2a3 VnReg_0_reg_7_ ( .D(FloorWrap_0_dout[7]), .CLK(net5396), .CLR(n91), 
        .Q(vn_0[7]) );
  fdf2a3 SumXinReg_reg_10_ ( .D(n86), .CLK(net5401), .CLR(n90), .Q(n_zz_30_11)
         );
  fdf2a9 SumXinReg_reg_9_ ( .D(SumXin[9]), .CLK(net5401), .CLR(n90), .Q(
        n_zz_30[9]) );
  fdf2a9 SumXinReg_reg_8_ ( .D(SumXin[8]), .CLK(net5401), .CLR(n90), .Q(
        n_zz_30[8]) );
  fdf2a9 SumXinReg_reg_7_ ( .D(SumXin[7]), .CLK(net5401), .CLR(n90), .Q(
        n_zz_30[7]) );
  fdf2a9 SumXinReg_reg_6_ ( .D(SumXin[6]), .CLK(net5401), .CLR(n90), .Q(
        n_zz_30[6]) );
  fdf2a9 SumXinReg_reg_5_ ( .D(SumXin[5]), .CLK(net5401), .CLR(n90), .Q(
        n_zz_30[5]) );
  fdf2a9 SumXinReg_reg_4_ ( .D(SumXin[4]), .CLK(net5401), .CLR(n90), .Q(
        n_zz_30[4]) );
  fa1a3 intadd_14_U2 ( .A(intadd_14_B_2_), .B(intadd_14_A_2_), .CI(
        intadd_14_n2), .CO(intadd_14_n1), .S(intadd_10_A_3_) );
  fa1a3 intadd_9_U2 ( .A(intadd_14_n1), .B(intadd_9_A_3_), .CI(intadd_9_n2), 
        .CO(intadd_9_n1), .S(intadd_9_SUM_3_) );
  fa1a3 intadd_0_U4 ( .A(intadd_11_n1), .B(intadd_10_SUM_3_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(SumXin[7]) );
  fa1a2 intadd_10_U2 ( .A(intadd_9_SUM_2_), .B(intadd_10_A_3_), .CI(
        intadd_10_n2), .CO(intadd_10_n1), .S(intadd_10_SUM_3_) );
  inv1a1 U2 ( .A(v_in_0[5]), .Y(intadd_8_B_4_) );
  inv1a1 U3 ( .A(v_in_0[4]), .Y(intadd_8_B_3_) );
  inv1a1 U4 ( .A(v_in_4[4]), .Y(intadd_4_A_3_) );
  inv1a1 U5 ( .A(v_in_5[4]), .Y(intadd_3_A_3_) );
  inv1a1 U6 ( .A(v_in_7[4]), .Y(intadd_1_A_3_) );
  inv1a1 U7 ( .A(v_in_2[4]), .Y(intadd_6_A_3_) );
  inv1a1 U8 ( .A(v_in_3[4]), .Y(intadd_5_A_3_) );
  inv1a1 U9 ( .A(v_in_6[4]), .Y(intadd_2_A_3_) );
  inv1a1 U10 ( .A(v_in_1[4]), .Y(intadd_7_A_3_) );
  inv1a1 U11 ( .A(n56), .Y(intadd_14_A_2_) );
  inv1a1 U12 ( .A(v_in_0[3]), .Y(intadd_8_B_2_) );
  inv1a1 U13 ( .A(v_in_4[3]), .Y(intadd_4_A_2_) );
  inv1a1 U14 ( .A(v_in_5[3]), .Y(intadd_3_A_2_) );
  inv1a1 U15 ( .A(v_in_2[3]), .Y(intadd_6_A_2_) );
  inv1a1 U16 ( .A(v_in_3[3]), .Y(intadd_5_A_2_) );
  inv1a1 U17 ( .A(v_in_6[3]), .Y(intadd_2_A_2_) );
  inv1a1 U18 ( .A(v_in_1[3]), .Y(intadd_7_A_2_) );
  or2c1 U19 ( .A(intadd_16_n1), .B(intadd_13_SUM_3_), .Y(n55) );
  inv1a1 U20 ( .A(v_in_0[2]), .Y(intadd_8_B_1_) );
  inv1a1 U21 ( .A(v_in_4[2]), .Y(intadd_4_A_1_) );
  inv1a1 U22 ( .A(v_in_7[2]), .Y(intadd_1_A_1_) );
  inv1a1 U23 ( .A(v_in_5[2]), .Y(intadd_3_A_1_) );
  inv1a1 U24 ( .A(n85), .Y(n84) );
  inv1a1 U25 ( .A(v_in_2[2]), .Y(intadd_6_A_1_) );
  inv1a1 U26 ( .A(v_in_0[1]), .Y(intadd_8_B_0_) );
  inv1a1 U27 ( .A(v_in_7[3]), .Y(intadd_1_A_2_) );
  inv1a1 U28 ( .A(v_in_6[2]), .Y(intadd_2_A_1_) );
  or3d3 U29 ( .A(n55), .B(n54), .C(n53), .Y(intadd_0_n6) );
  xor3a3 U30 ( .A(intadd_17_n1), .B(intadd_16_SUM_2_), .C(intadd_0_n8), .Y(
        SumXin[3]) );
  xor3a3 U31 ( .A(intadd_10_n1), .B(intadd_9_SUM_3_), .C(intadd_0_n3), .Y(
        SumXin[8]) );
  ao4e2 U32 ( .B(v_in_6[0]), .A(n62), .C(n61), .D(v_in_6[0]), .Y(
        VinMinusMean_6[3]) );
  ao4e2 U33 ( .B(v_in_4[0]), .A(n62), .C(n61), .D(v_in_4[0]), .Y(
        VinMinusMean_4[3]) );
  ao4e2 U34 ( .B(v_in_0[0]), .A(n62), .C(n61), .D(v_in_0[0]), .Y(
        VinMinusMean_0[3]) );
  ao4e2 U35 ( .B(v_in_2[0]), .A(n62), .C(n61), .D(v_in_2[0]), .Y(
        VinMinusMean_2[3]) );
  ao4e2 U36 ( .B(v_in_7[0]), .A(n62), .C(n61), .D(v_in_7[0]), .Y(
        VinMinusMean_7[3]) );
  ao4e2 U37 ( .B(v_in_1[0]), .A(n62), .C(n61), .D(v_in_1[0]), .Y(
        VinMinusMean_1[3]) );
  fa1a2 U38 ( .A(v_in_7[7]), .B(v_in_6[7]), .CI(v_in_0[7]), .CO(n59), .S(n56)
         );
  and2c3 U39 ( .A(intadd_5_A_1_), .B(intadd_7_A_1_), .Y(n67) );
  inv1a9 U40 ( .A(n_zz_30_11), .Y(intadd_1_B_6_) );
  or2c6 U41 ( .A(n60), .B(n_zz_30[3]), .Y(n64) );
  inv1a3 U42 ( .A(n83), .Y(n60) );
  or2c3 U43 ( .A(intadd_17_n1), .B(intadd_16_SUM_2_), .Y(n52) );
  or2c3 U44 ( .A(intadd_17_n1), .B(intadd_0_n8), .Y(n51) );
  or2c3 U45 ( .A(intadd_0_n8), .B(intadd_16_SUM_2_), .Y(n50) );
  or3d3 U46 ( .A(n52), .B(n51), .C(n50), .Y(n81) );
  or2c3 U47 ( .A(intadd_16_n1), .B(n81), .Y(n54) );
  or2c3 U48 ( .A(intadd_13_SUM_3_), .B(n81), .Y(n53) );
  inv1a3 U49 ( .A(v_in_3[2]), .Y(intadd_5_A_1_) );
  inv1a3 U50 ( .A(v_in_1[2]), .Y(intadd_7_A_1_) );
  inv1a1 U51 ( .A(n57), .Y(intadd_9_A_2_) );
  inv1a1 U52 ( .A(v_in_4[7]), .Y(intadd_15_A_1_) );
  inv1a1 U53 ( .A(v_in_2[7]), .Y(intadd_15_B_1_) );
  fa1a2 U54 ( .A(v_in_5[7]), .B(v_in_3[7]), .CI(v_in_1[7]), .CO(n58), .S(n57)
         );
  inv1a1 U55 ( .A(n58), .Y(intadd_15_A_2_) );
  inv1a1 U56 ( .A(n59), .Y(intadd_15_B_2_) );
  inv1a3 U57 ( .A(v_in_1[1]), .Y(intadd_7_A_0_) );
  inv1a3 U58 ( .A(v_in_3[1]), .Y(intadd_5_A_0_) );
  inv1a1 U59 ( .A(intadd_8_SUM_6_), .Y(VinMinusMean_0[10]) );
  inv1a1 U60 ( .A(v_in_0[6]), .Y(intadd_8_B_5_) );
  inv1a1 U61 ( .A(intadd_1_SUM_6_), .Y(VinMinusMean_7[10]) );
  inv1a1 U62 ( .A(v_in_7[1]), .Y(intadd_1_A_0_) );
  inv1a1 U63 ( .A(v_in_7[5]), .Y(intadd_1_A_4_) );
  inv1a1 U64 ( .A(v_in_7[6]), .Y(intadd_1_A_5_) );
  inv1a1 U65 ( .A(intadd_3_SUM_6_), .Y(VinMinusMean_5[10]) );
  inv1a1 U66 ( .A(v_in_5[1]), .Y(intadd_3_A_0_) );
  inv1a1 U67 ( .A(v_in_5[5]), .Y(intadd_3_A_4_) );
  inv1a1 U68 ( .A(v_in_5[6]), .Y(intadd_3_A_5_) );
  inv1a1 U69 ( .A(intadd_6_SUM_6_), .Y(VinMinusMean_2[10]) );
  inv1a1 U70 ( .A(v_in_2[1]), .Y(intadd_6_A_0_) );
  inv1a1 U71 ( .A(v_in_2[5]), .Y(intadd_6_A_4_) );
  inv1a1 U72 ( .A(v_in_2[6]), .Y(intadd_6_A_5_) );
  inv1a1 U73 ( .A(intadd_5_SUM_6_), .Y(VinMinusMean_3[10]) );
  inv1a1 U74 ( .A(v_in_3[5]), .Y(intadd_5_A_4_) );
  inv1a1 U75 ( .A(v_in_3[6]), .Y(intadd_5_A_5_) );
  inv1a1 U76 ( .A(intadd_2_SUM_6_), .Y(VinMinusMean_6[10]) );
  inv1a1 U77 ( .A(v_in_6[1]), .Y(intadd_2_A_0_) );
  inv1a1 U78 ( .A(v_in_6[5]), .Y(intadd_2_A_4_) );
  inv1a1 U79 ( .A(v_in_6[6]), .Y(intadd_2_A_5_) );
  inv1a1 U80 ( .A(intadd_4_SUM_6_), .Y(VinMinusMean_4[10]) );
  inv1a1 U81 ( .A(v_in_4[1]), .Y(intadd_4_A_0_) );
  inv1a1 U82 ( .A(v_in_4[5]), .Y(intadd_4_A_4_) );
  inv1a1 U83 ( .A(v_in_4[6]), .Y(intadd_4_A_5_) );
  inv1a1 U84 ( .A(intadd_7_SUM_6_), .Y(VinMinusMean_1[10]) );
  inv1a1 U85 ( .A(v_in_1[5]), .Y(intadd_7_A_4_) );
  inv1a1 U86 ( .A(v_in_1[6]), .Y(intadd_7_A_5_) );
  inv1a1 U87 ( .A(intadd_8_SUM_1_), .Y(VinMinusMean_0[5]) );
  inv1a1 U88 ( .A(intadd_4_SUM_1_), .Y(VinMinusMean_4[5]) );
  inv1a1 U89 ( .A(intadd_2_SUM_1_), .Y(VinMinusMean_6[5]) );
  inv1a1 U90 ( .A(intadd_1_SUM_1_), .Y(VinMinusMean_7[5]) );
  inv1a1 U91 ( .A(intadd_7_SUM_1_), .Y(VinMinusMean_1[5]) );
  inv1a1 U92 ( .A(intadd_6_SUM_1_), .Y(VinMinusMean_2[5]) );
  inv1a1 U93 ( .A(intadd_3_SUM_1_), .Y(VinMinusMean_5[5]) );
  inv1a1 U94 ( .A(intadd_5_SUM_1_), .Y(VinMinusMean_3[5]) );
  inv1a1 U95 ( .A(intadd_8_SUM_2_), .Y(VinMinusMean_0[6]) );
  inv1a1 U96 ( .A(intadd_6_SUM_2_), .Y(VinMinusMean_2[6]) );
  inv1a1 U97 ( .A(intadd_3_SUM_2_), .Y(VinMinusMean_5[6]) );
  inv1a1 U98 ( .A(intadd_4_SUM_2_), .Y(VinMinusMean_4[6]) );
  inv1a1 U99 ( .A(intadd_1_SUM_2_), .Y(VinMinusMean_7[6]) );
  inv1a1 U100 ( .A(intadd_5_SUM_2_), .Y(VinMinusMean_3[6]) );
  inv1a1 U101 ( .A(intadd_2_SUM_2_), .Y(VinMinusMean_6[6]) );
  inv1a1 U102 ( .A(intadd_7_SUM_2_), .Y(VinMinusMean_1[6]) );
  inv1a1 U103 ( .A(intadd_8_SUM_3_), .Y(VinMinusMean_0[7]) );
  inv1a1 U104 ( .A(intadd_7_SUM_3_), .Y(VinMinusMean_1[7]) );
  inv1a1 U105 ( .A(intadd_1_SUM_3_), .Y(VinMinusMean_7[7]) );
  inv1a1 U106 ( .A(intadd_2_SUM_3_), .Y(VinMinusMean_6[7]) );
  inv1a1 U107 ( .A(intadd_3_SUM_3_), .Y(VinMinusMean_5[7]) );
  inv1a1 U108 ( .A(intadd_4_SUM_3_), .Y(VinMinusMean_4[7]) );
  inv1a1 U109 ( .A(intadd_6_SUM_3_), .Y(VinMinusMean_2[7]) );
  inv1a1 U110 ( .A(intadd_5_SUM_3_), .Y(VinMinusMean_3[7]) );
  inv1a1 U111 ( .A(intadd_8_SUM_4_), .Y(VinMinusMean_0[8]) );
  inv1a1 U112 ( .A(intadd_4_SUM_4_), .Y(VinMinusMean_4[8]) );
  inv1a1 U113 ( .A(intadd_3_SUM_4_), .Y(VinMinusMean_5[8]) );
  inv1a1 U114 ( .A(intadd_2_SUM_4_), .Y(VinMinusMean_6[8]) );
  inv1a1 U115 ( .A(intadd_6_SUM_4_), .Y(VinMinusMean_2[8]) );
  inv1a1 U116 ( .A(intadd_5_SUM_4_), .Y(VinMinusMean_3[8]) );
  inv1a1 U117 ( .A(intadd_1_SUM_4_), .Y(VinMinusMean_7[8]) );
  inv1a1 U118 ( .A(intadd_7_SUM_4_), .Y(VinMinusMean_1[8]) );
  inv1a1 U119 ( .A(intadd_8_SUM_5_), .Y(VinMinusMean_0[9]) );
  inv1a1 U120 ( .A(intadd_5_SUM_5_), .Y(VinMinusMean_3[9]) );
  inv1a1 U121 ( .A(intadd_4_SUM_5_), .Y(VinMinusMean_4[9]) );
  inv1a1 U122 ( .A(intadd_2_SUM_5_), .Y(VinMinusMean_6[9]) );
  inv1a1 U123 ( .A(intadd_1_SUM_5_), .Y(VinMinusMean_7[9]) );
  inv1a1 U124 ( .A(intadd_3_SUM_5_), .Y(VinMinusMean_5[9]) );
  inv1a1 U125 ( .A(intadd_7_SUM_5_), .Y(VinMinusMean_1[9]) );
  inv1a1 U126 ( .A(intadd_6_SUM_5_), .Y(VinMinusMean_2[9]) );
  inv1a1 U127 ( .A(intadd_8_SUM_0_), .Y(VinMinusMean_0[4]) );
  inv1a1 U128 ( .A(intadd_5_SUM_0_), .Y(VinMinusMean_3[4]) );
  inv1a1 U129 ( .A(intadd_3_SUM_0_), .Y(VinMinusMean_5[4]) );
  inv1a1 U130 ( .A(intadd_7_SUM_0_), .Y(VinMinusMean_1[4]) );
  inv1a1 U131 ( .A(intadd_6_SUM_0_), .Y(VinMinusMean_2[4]) );
  inv1a1 U132 ( .A(intadd_2_SUM_0_), .Y(VinMinusMean_6[4]) );
  inv1a1 U133 ( .A(intadd_4_SUM_0_), .Y(VinMinusMean_4[4]) );
  inv1a1 U134 ( .A(intadd_1_SUM_0_), .Y(VinMinusMean_7[4]) );
  buf1a6 U135 ( .A(resetn), .Y(n91) );
  buf1a6 U136 ( .A(resetn), .Y(n92) );
  buf1a6 U137 ( .A(resetn), .Y(n88) );
  buf1a6 U138 ( .A(resetn), .Y(n87) );
  buf1a6 U139 ( .A(resetn), .Y(n89) );
  buf1a6 U140 ( .A(resetn), .Y(n90) );
  and2c3 U141 ( .A(n_zz_30[1]), .B(VinMinusMean_0[0]), .Y(n85) );
  and2c3 U142 ( .A(n_zz_30[2]), .B(n84), .Y(n83) );
  and2c6 U143 ( .A(n_zz_30[3]), .B(n60), .Y(n63) );
  or2b6 U144 ( .B(n63), .A(n64), .Y(n61) );
  inv1a3 U145 ( .A(n61), .Y(n62) );
  inv1a3 U146 ( .A(v_in_3[0]), .Y(n72) );
  ao4f3 U147 ( .A(n62), .B(n72), .C(n61), .D(v_in_3[0]), .Y(VinMinusMean_3[3])
         );
  inv1a3 U148 ( .A(v_in_5[0]), .Y(n71) );
  ao4f3 U149 ( .A(n62), .B(n71), .C(n61), .D(v_in_5[0]), .Y(VinMinusMean_5[3])
         );
  oa1f3 U150 ( .A(v_in_0[0]), .B(n64), .C(n63), .Y(intadd_8_CI) );
  oa1f3 U151 ( .A(v_in_7[0]), .B(n64), .C(n63), .Y(intadd_1_CI) );
  oa1f3 U152 ( .A(v_in_5[0]), .B(n64), .C(n63), .Y(intadd_3_CI) );
  oa1f3 U153 ( .A(v_in_2[0]), .B(n64), .C(n63), .Y(intadd_6_CI) );
  oa1f3 U154 ( .A(v_in_3[0]), .B(n64), .C(n63), .Y(intadd_5_CI) );
  oa1f3 U155 ( .A(v_in_6[0]), .B(n64), .C(n63), .Y(intadd_2_CI) );
  oa1f3 U156 ( .A(v_in_4[0]), .B(n64), .C(n63), .Y(intadd_4_CI) );
  oa1f3 U157 ( .A(v_in_1[0]), .B(n64), .C(n63), .Y(intadd_7_CI) );
  and2a6 U158 ( .A(vin_vld), .B(en), .Y(N1) );
  and2c3 U159 ( .A(intadd_5_A_0_), .B(intadd_7_A_0_), .Y(intadd_13_B_1_) );
  oa1f3 U160 ( .A(intadd_5_A_0_), .B(intadd_7_A_0_), .C(intadd_13_B_1_), .Y(
        n66) );
  fa1a2 U161 ( .A(v_in_7[0]), .B(v_in_6[0]), .CI(v_in_1[0]), .CO(n65), .S(
        intadd_0_CI) );
  and2c3 U162 ( .A(n72), .B(n71), .Y(n70) );
  fa1a2 U163 ( .A(n66), .B(n65), .CI(n70), .CO(intadd_17_B_2_), .S(
        intadd_0_A_1_) );
  oa1f3 U164 ( .A(intadd_5_A_1_), .B(intadd_7_A_1_), .C(n67), .Y(
        intadd_13_A_1_) );
  fa1a2 U165 ( .A(v_in_6[2]), .B(v_in_4[2]), .CI(v_in_2[2]), .CO(
        intadd_12_A_1_), .S(intadd_16_A_1_) );
  fa1a2 U166 ( .A(v_in_4[3]), .B(v_in_2[3]), .CI(n67), .CO(intadd_12_B_2_), 
        .S(intadd_13_A_2_) );
  fa1a2 U167 ( .A(v_in_6[4]), .B(v_in_4[4]), .CI(n68), .CO(intadd_11_B_2_), 
        .S(intadd_12_A_2_) );
  fa1a2 U168 ( .A(v_in_5[3]), .B(v_in_3[3]), .CI(v_in_1[3]), .CO(n68), .S(
        intadd_13_B_2_) );
  fa1a2 U169 ( .A(v_in_6[5]), .B(v_in_4[5]), .CI(n69), .CO(intadd_10_B_2_), 
        .S(intadd_11_A_2_) );
  fa1a2 U170 ( .A(v_in_5[4]), .B(v_in_3[4]), .CI(v_in_1[4]), .CO(n69), .S(
        intadd_11_B_1_) );
  fa1a2 U171 ( .A(v_in_7[6]), .B(v_in_2[6]), .CI(v_in_0[6]), .CO(
        intadd_14_B_2_), .S(intadd_9_A_1_) );
  oa1f3 U172 ( .A(n72), .B(n71), .C(n70), .Y(intadd_0_A_0_) );
  or2c1 U173 ( .A(intadd_9_n1), .B(intadd_15_n1), .Y(n78) );
  or2c3 U174 ( .A(intadd_9_SUM_3_), .B(intadd_0_n3), .Y(n75) );
  or2c1 U175 ( .A(intadd_10_n1), .B(intadd_9_SUM_3_), .Y(n74) );
  or2c3 U176 ( .A(intadd_0_n3), .B(intadd_10_n1), .Y(n73) );
  or3d6 U177 ( .A(n75), .B(n74), .C(n73), .Y(n79) );
  or2c3 U178 ( .A(intadd_9_n1), .B(n79), .Y(n77) );
  or2c3 U179 ( .A(intadd_15_n1), .B(n79), .Y(n76) );
  and3a3 U180 ( .A(n78), .B(n77), .C(n76), .Y(n86) );
  xor2a2 U181 ( .A(intadd_9_n1), .B(intadd_15_n1), .Y(n80) );
  xor2a2 U182 ( .A(n80), .B(n79), .Y(SumXin[9]) );
  xor2a2 U183 ( .A(intadd_16_n1), .B(intadd_13_SUM_3_), .Y(n82) );
  xor2a2 U184 ( .A(n82), .B(n81), .Y(SumXin[4]) );
  oa1f1 U185 ( .A(n_zz_30[2]), .B(n84), .C(n83), .Y(VinMinusMean_0[2]) );
  oa1f1 U186 ( .A(VinMinusMean_0[0]), .B(n_zz_30[1]), .C(n85), .Y(
        VinMinusMean_0[1]) );
endmodule


module s_table ( index, din, s1, s2 );
  input [2:0] index;
  input [7:0] din;
  output [18:0] s1;
  output [18:0] s2;
  wire   n_zz_16_10_, n_zz_16_9_, DP_OP_34J1_137_8448_n206,
         DP_OP_34J1_137_8448_n205, DP_OP_34J1_137_8448_n204,
         DP_OP_34J1_137_8448_n203, DP_OP_34J1_137_8448_n50,
         DP_OP_34J1_137_8448_n49, DP_OP_34J1_137_8448_n48,
         DP_OP_34J1_137_8448_n38, DP_OP_34J1_137_8448_n36,
         DP_OP_34J1_137_8448_n35, DP_OP_34J1_137_8448_n29,
         DP_OP_34J1_137_8448_n28, DP_OP_34J1_137_8448_n27,
         DP_OP_34J1_137_8448_n26, DP_OP_34J1_137_8448_n25,
         DP_OP_34J1_137_8448_n24, DP_OP_34J1_137_8448_n23,
         DP_OP_34J1_137_8448_n22, DP_OP_34J1_137_8448_n21,
         DP_OP_34J1_137_8448_n20, DP_OP_34J1_137_8448_n12,
         DP_OP_34J1_137_8448_n11, DP_OP_34J1_137_8448_n10,
         DP_OP_34J1_137_8448_n9, DP_OP_34J1_137_8448_n8, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
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
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473;
  wire   [10:9] n_zz_24;
  wire   [10:7] n_zz_28;

  facsf1b3 DP_OP_34J1_137_8448_U27 ( .CI1(DP_OP_34J1_137_8448_n22), .B(
        DP_OP_34J1_137_8448_n48), .A(n_zz_16_10_), .CI0(
        DP_OP_34J1_137_8448_n23), .CSIN(DP_OP_34J1_137_8448_n24), .CO1(
        DP_OP_34J1_137_8448_n20), .CO0(DP_OP_34J1_137_8448_n21), .S(
        n_zz_28[10]) );
  facsf1b2 DP_OP_34J1_137_8448_U11 ( .CI1(DP_OP_34J1_137_8448_n10), .B(
        DP_OP_34J1_137_8448_n203), .A(DP_OP_34J1_137_8448_n204), .CI0(
        DP_OP_34J1_137_8448_n11), .CSIN(DP_OP_34J1_137_8448_n12), .CO1(
        DP_OP_34J1_137_8448_n8), .CO0(DP_OP_34J1_137_8448_n9), .S(n_zz_24[10])
         );
  facs3a2 DP_OP_34J1_137_8448_U31 ( .A(DP_OP_34J1_137_8448_n50), .B(
        DP_OP_34J1_137_8448_n38), .CSIN(DP_OP_34J1_137_8448_n29), .S(
        n_zz_28[7]), .CO0(DP_OP_34J1_137_8448_n28), .CO1(
        DP_OP_34J1_137_8448_n27) );
  facsf1b2 DP_OP_34J1_137_8448_U30 ( .CI1(DP_OP_34J1_137_8448_n27), .B(
        DP_OP_34J1_137_8448_n36), .A(DP_OP_34J1_137_8448_n49), .CI0(
        DP_OP_34J1_137_8448_n28), .CSIN(DP_OP_34J1_137_8448_n29), .CO1(
        DP_OP_34J1_137_8448_n25), .CO0(DP_OP_34J1_137_8448_n26), .S(n_zz_28[8]) );
  facs3a2 DP_OP_34J1_137_8448_U12 ( .A(DP_OP_34J1_137_8448_n206), .B(
        DP_OP_34J1_137_8448_n205), .CSIN(DP_OP_34J1_137_8448_n12), .S(
        n_zz_24[9]), .CO0(DP_OP_34J1_137_8448_n11), .CO1(
        DP_OP_34J1_137_8448_n10) );
  facs3a2 DP_OP_34J1_137_8448_U28 ( .A(DP_OP_34J1_137_8448_n35), .B(n_zz_16_9_), .CSIN(DP_OP_34J1_137_8448_n24), .S(n_zz_28[9]), .CO0(DP_OP_34J1_137_8448_n23), .CO1(DP_OP_34J1_137_8448_n22) );
  inv1a1 U2 ( .A(n126), .Y(s1[18]) );
  ao1d2 U3 ( .A(n288), .B(n153), .C(n92), .Y(s2[12]) );
  ao1f2 U4 ( .A(n320), .B(n316), .C(n317), .Y(n99) );
  and2c1 U5 ( .A(n321), .B(n401), .Y(n327) );
  or2c1 U6 ( .A(n119), .B(n371), .Y(n104) );
  and2c1 U7 ( .A(n265), .B(n401), .Y(n274) );
  and2c1 U8 ( .A(n300), .B(n401), .Y(n310) );
  and2c1 U9 ( .A(n252), .B(n401), .Y(n253) );
  inv1a1 U10 ( .A(n452), .Y(n293) );
  inv1a1 U11 ( .A(n102), .Y(n119) );
  or2c1 U12 ( .A(n130), .B(n14), .Y(n317) );
  or2c1 U13 ( .A(n282), .B(n458), .Y(n86) );
  or2c1 U14 ( .A(n97), .B(n459), .Y(n297) );
  inv1a1 U15 ( .A(n425), .Y(n101) );
  inv1a1 U16 ( .A(n_zz_16_10_), .Y(n260) );
  or2c1 U17 ( .A(n71), .B(n262), .Y(n264) );
  or2c1 U18 ( .A(n73), .B(n72), .Y(n262) );
  mx2a3 U19 ( .D0(DP_OP_34J1_137_8448_n26), .D1(DP_OP_34J1_137_8448_n25), .S(
        DP_OP_34J1_137_8448_n29), .Y(DP_OP_34J1_137_8448_n24) );
  or2c1 U20 ( .A(n229), .B(n228), .Y(n234) );
  inv1a1 U21 ( .A(n_zz_16_9_), .Y(DP_OP_34J1_137_8448_n48) );
  or2c1 U22 ( .A(n63), .B(n62), .Y(n228) );
  or2c1 U23 ( .A(n213), .B(n230), .Y(n214) );
  inv1a1 U24 ( .A(n105), .Y(n81) );
  or2c1 U25 ( .A(n51), .B(n178), .Y(n179) );
  ao1f2 U26 ( .A(n59), .B(n177), .C(n58), .Y(n212) );
  inv1a1 U27 ( .A(n231), .Y(n213) );
  or2a1 U28 ( .A(n3), .B(n4), .Y(n70) );
  or2c1 U29 ( .A(n26), .B(n25), .Y(n42) );
  or2c1 U30 ( .A(n50), .B(n51), .Y(n59) );
  or2c1 U31 ( .A(n50), .B(n195), .Y(n196) );
  or2c1 U32 ( .A(n52), .B(n165), .Y(n166) );
  inv1a1 U33 ( .A(n363), .Y(n190) );
  or2c1 U34 ( .A(n46), .B(n169), .Y(n25) );
  inv1a3 U35 ( .A(n459), .Y(n130) );
  or2c1 U36 ( .A(n56), .B(n55), .Y(n195) );
  or2c1 U37 ( .A(n140), .B(n139), .Y(n141) );
  or2a1 U38 ( .A(n388), .B(n8), .Y(n52) );
  inv1a3 U39 ( .A(n402), .Y(n2) );
  or2c1 U40 ( .A(n331), .B(n352), .Y(n19) );
  or2c1 U41 ( .A(n8), .B(n388), .Y(n165) );
  xor2b3 U42 ( .A(n1), .B(n331), .Y(n402) );
  or2c1 U43 ( .A(n331), .B(n388), .Y(n17) );
  inv1a3 U44 ( .A(n331), .Y(n9) );
  buf1a9 U45 ( .A(din[2]), .Y(n352) );
  or2c1 U46 ( .A(n38), .B(n39), .Y(n29) );
  clk1b6 U47 ( .A(n330), .Y(n8) );
  or2c1 U48 ( .A(n132), .B(n137), .Y(n133) );
  inv1a1 U49 ( .A(s1[15]), .Y(n126) );
  or2c1 U50 ( .A(n54), .B(n1), .Y(n178) );
  or2c1 U51 ( .A(n114), .B(n113), .Y(n313) );
  or2c1 U52 ( .A(n123), .B(n440), .Y(n117) );
  clk1b6 U53 ( .A(n48), .Y(n14) );
  inv1a3 U54 ( .A(din[7]), .Y(n48) );
  inv1a3 U55 ( .A(n126), .Y(s1[16]) );
  ao2i3 U56 ( .A(n99), .B(n401), .C(n125), .D(n124), .Y(s1[15]) );
  ao2i2 U57 ( .A(n449), .B(n438), .C(n308), .D(n307), .Y(n309) );
  ao2i2 U58 ( .A(n465), .B(n325), .C(n324), .D(n323), .Y(n326) );
  and2c3 U59 ( .A(n300), .B(n457), .Y(n451) );
  oa4f1 U60 ( .A(n_zz_16_10_), .B(n458), .C(n426), .D(n414), .Y(n246) );
  mx2a1 U61 ( .D0(DP_OP_34J1_137_8448_n9), .D1(DP_OP_34J1_137_8448_n8), .S(
        DP_OP_34J1_137_8448_n12), .Y(n268) );
  inv1a1 U62 ( .A(n195), .Y(n57) );
  clk1b6 U63 ( .A(n169), .Y(n3) );
  oa1a1 U64 ( .A(n142), .B(n461), .C(n388), .Y(s2[1]) );
  clk1a3 U65 ( .A(s1[15]), .Y(s1[17]) );
  and2c3 U66 ( .A(n321), .B(n457), .Y(n468) );
  ao2i2 U67 ( .A(n235), .B(n375), .C(n238), .D(n237), .Y(n239) );
  fa1a2 U68 ( .A(n270), .B(n269), .CI(n268), .CO(n305), .S(n428) );
  or2c1 U69 ( .A(n96), .B(n297), .Y(n299) );
  fa1a2 U70 ( .A(n388), .B(n4), .CI(n127), .CO(n60), .S(n56) );
  xor2b2 U71 ( .A(n4), .B(n3), .Y(n66) );
  fa1a2 U72 ( .A(n330), .B(n459), .CI(n352), .CO(n37), .S(n38) );
  buf1a9 U73 ( .A(din[6]), .Y(n459) );
  inv1a15 U74 ( .A(n388), .Y(n1) );
  buf1a9 U75 ( .A(din[4]), .Y(n169) );
  ao2i3 U76 ( .A(n413), .B(n466), .C(n242), .D(n241), .Y(s1[9]) );
  ao2i3 U77 ( .A(n424), .B(n466), .C(n258), .D(n257), .Y(s1[10]) );
  oa1f2 U78 ( .A(din[5]), .B(n304), .C(n303), .Y(n449) );
  ao1f2 U79 ( .A(n95), .B(n94), .C(n93), .Y(n298) );
  mx2a3 U80 ( .D0(DP_OP_34J1_137_8448_n21), .D1(DP_OP_34J1_137_8448_n20), .S(
        DP_OP_34J1_137_8448_n24), .Y(n259) );
  xor2b2 U81 ( .A(n234), .B(n233), .Y(n409) );
  xor2a2 U82 ( .A(n232), .B(n214), .Y(n396) );
  xor2b2 U83 ( .A(n133), .B(n459), .Y(n_zz_16_9_) );
  xor2a2 U84 ( .A(n18), .B(n13), .Y(n_zz_16_10_) );
  xor2a2 U85 ( .A(n197), .B(n196), .Y(n383) );
  or2c1 U86 ( .A(n249), .B(n248), .Y(n250) );
  or2c1 U87 ( .A(n77), .B(n93), .Y(n78) );
  mx2d2 U88 ( .D0(n132), .D1(n137), .S(n459), .Y(n18) );
  inv1a1 U89 ( .A(n247), .Y(n249) );
  or2c1 U90 ( .A(n318), .B(n317), .Y(n319) );
  inv1a1 U91 ( .A(n297), .Y(n98) );
  inv1a1 U92 ( .A(n262), .Y(n74) );
  inv1a1 U93 ( .A(n227), .Y(n229) );
  inv1a1 U94 ( .A(n94), .Y(n77) );
  inv1a1 U95 ( .A(n316), .Y(n318) );
  inv1a1 U96 ( .A(n112), .Y(n110) );
  or2c1 U97 ( .A(n112), .B(n111), .Y(n113) );
  or2a1 U98 ( .A(n72), .B(n73), .Y(n71) );
  inv1a1 U99 ( .A(n111), .Y(n109) );
  or2a1 U100 ( .A(n459), .B(n97), .Y(n96) );
  and2c3 U101 ( .A(n14), .B(n130), .Y(n316) );
  fa1a2 U102 ( .A(din[5]), .B(n13), .CI(n169), .CO(n111), .S(n33) );
  fa1a2 U103 ( .A(n169), .B(n8), .CI(n130), .CO(n75), .S(n73) );
  inv1a1 U104 ( .A(n38), .Y(n28) );
  ao1f2 U105 ( .A(n46), .B(n169), .C(n45), .Y(n26) );
  inv1a1 U106 ( .A(n39), .Y(n27) );
  inv1a15 U107 ( .A(n352), .Y(n4) );
  clk1a3 U108 ( .A(s2[16]), .Y(s2[17]) );
  ao2i3 U109 ( .A(n312), .B(n457), .C(n296), .D(n311), .Y(s1[13]) );
  ao2i3 U110 ( .A(n329), .B(n457), .C(n296), .D(n328), .Y(s1[14]) );
  inv1a3 U111 ( .A(n442), .Y(n472) );
  and2a3 U112 ( .A(n295), .B(n294), .Y(n296) );
  and2b2 U113 ( .B(n48), .A(n315), .Y(n123) );
  ao2i1 U114 ( .A(n466), .B(n357), .C(n103), .D(n86), .Y(n87) );
  inv1a1 U115 ( .A(n279), .Y(n291) );
  ha1a3 U116 ( .A(n293), .B(n292), .CO(n315), .S(n441) );
  xor2b2 U117 ( .A(n320), .B(n319), .Y(n321) );
  ao2i1 U118 ( .A(n466), .B(n465), .C(n464), .D(n463), .Y(n467) );
  fa1a2 U119 ( .A(n14), .B(n101), .CI(n100), .CO(n102), .S(n279) );
  ha1a3 U120 ( .A(n116), .B(n115), .CO(n292), .S(n288) );
  fa1a3 U121 ( .A(n459), .B(n314), .CI(n313), .CO(n470), .S(n452) );
  fa1a2 U122 ( .A(n425), .B(n260), .CI(n259), .CO(n100), .S(n261) );
  xor2a2 U123 ( .A(n299), .B(n298), .Y(n300) );
  and2c2 U124 ( .A(n265), .B(n457), .Y(n433) );
  and2c2 U125 ( .A(n252), .B(n457), .Y(n418) );
  xor2b2 U126 ( .A(n95), .B(n78), .Y(n79) );
  fa1a2 U127 ( .A(n14), .B(n459), .CI(n322), .CO(n462), .S(n445) );
  ha1a3 U128 ( .A(n276), .B(n275), .CO(n115), .S(n435) );
  xor2a2 U129 ( .A(n264), .B(n263), .Y(n265) );
  ao1d2 U130 ( .A(n110), .B(n109), .C(n108), .Y(n114) );
  fa1a2 U131 ( .A(din[5]), .B(n306), .CI(n305), .CO(n322), .S(n283) );
  ha1a3 U132 ( .A(n256), .B(n255), .CO(n275), .S(n421) );
  xor2b2 U133 ( .A(n251), .B(n250), .Y(n252) );
  fa1a3 U134 ( .A(n34), .B(n33), .CI(n32), .CO(n108), .S(n434) );
  ao1f2 U135 ( .A(n251), .B(n247), .C(n248), .Y(n263) );
  ao1f2 U136 ( .A(n232), .B(n231), .C(n230), .Y(n233) );
  oa4f2 U137 ( .A(n427), .B(n443), .C(n426), .D(n425), .Y(n430) );
  oa4f2 U138 ( .A(n427), .B(n426), .C(n458), .D(n425), .Y(n272) );
  inv1a3 U139 ( .A(n389), .Y(DP_OP_34J1_137_8448_n49) );
  fa1a3 U140 ( .A(n37), .B(n36), .CI(n35), .CO(n32), .S(n420) );
  ha1a3 U141 ( .A(n235), .B(n240), .CO(n255), .S(n410) );
  inv1a3 U142 ( .A(n212), .Y(n232) );
  ao1f2 U143 ( .A(n227), .B(n230), .C(n228), .Y(n64) );
  or2c3 U144 ( .A(n30), .B(n29), .Y(n35) );
  and2c3 U145 ( .A(n203), .B(n459), .Y(n201) );
  xor2a2 U146 ( .A(n194), .B(n179), .Y(n180) );
  xor2b2 U147 ( .A(n13), .B(n129), .Y(DP_OP_34J1_137_8448_n36) );
  inv1a3 U148 ( .A(n378), .Y(DP_OP_34J1_137_8448_n50) );
  or2a3 U149 ( .A(n129), .B(n14), .Y(DP_OP_34J1_137_8448_n35) );
  ha1a3 U150 ( .A(n5), .B(n224), .CO(n240), .S(n397) );
  and2c3 U151 ( .A(n231), .B(n227), .Y(n65) );
  xor2a2 U152 ( .A(n166), .B(n266), .Y(n167) );
  ao1d2 U153 ( .A(n28), .B(n27), .C(n40), .Y(n30) );
  xor2a2 U154 ( .A(n41), .B(n40), .Y(n235) );
  inv1a3 U155 ( .A(n177), .Y(n194) );
  and2c3 U156 ( .A(n62), .B(n63), .Y(n227) );
  ha1a3 U157 ( .A(n209), .B(n208), .CO(n224), .S(n384) );
  ha1a3 U158 ( .A(n131), .B(n130), .CO(n129), .S(DP_OP_34J1_137_8448_n38) );
  fa1a2 U159 ( .A(n3), .B(n127), .CI(n14), .CO(n97), .S(n76) );
  and2c3 U160 ( .A(n60), .B(n61), .Y(n231) );
  ha1a3 U161 ( .A(n128), .B(n127), .CO(n131), .S(n189) );
  fa1a2 U162 ( .A(n13), .B(n67), .CI(n66), .CO(n69), .S(n63) );
  inv1a3 U163 ( .A(n178), .Y(n193) );
  inv1a3 U164 ( .A(n215), .Y(n5) );
  ha1a3 U165 ( .A(n182), .B(n181), .CO(n208), .S(n370) );
  fa1a2 U166 ( .A(n459), .B(n199), .CI(n198), .CO(n217), .S(n200) );
  fa1a2 U167 ( .A(n330), .B(n127), .CI(n70), .CO(n72), .S(n68) );
  inv1a9 U168 ( .A(n48), .Y(n13) );
  inv1a3 U169 ( .A(n414), .Y(n6) );
  inv1a1 U170 ( .A(n165), .Y(n53) );
  inv1a3 U171 ( .A(n354), .Y(n7) );
  ha1a3 U172 ( .A(n168), .B(n4), .CO(n182), .S(n359) );
  ha1a3 U173 ( .A(n23), .B(n3), .CO(n128), .S(n174) );
  fa1a2 U174 ( .A(n1), .B(n130), .CI(n49), .CO(n62), .S(n61) );
  or2a3 U175 ( .A(n55), .B(n56), .Y(n50) );
  or2a3 U176 ( .A(n1), .B(n54), .Y(n51) );
  oa4f2 U177 ( .A(n402), .B(n371), .C(n153), .D(n331), .Y(n155) );
  ha1a3 U178 ( .A(n1), .B(n9), .CO(n146), .S(n349) );
  fa1a2 U179 ( .A(n331), .B(din[5]), .CI(n184), .CO(n198), .S(n365) );
  ha1a3 U180 ( .A(n3), .B(n9), .CO(n55), .S(n54) );
  ha1a3 U181 ( .A(n1), .B(n9), .CO(n168), .S(n337) );
  ha1a3 U182 ( .A(n4), .B(n8), .CO(n23), .S(n162) );
  ha1a3 U183 ( .A(n8), .B(n9), .CO(n67), .S(n49) );
  ha1a3 U184 ( .A(n388), .B(n331), .CO(n44), .S(n45) );
  and2c6 U185 ( .A(n331), .B(n388), .Y(n243) );
  ha1a3 U186 ( .A(n388), .B(n352), .CO(n219), .S(n199) );
  ha1a3 U187 ( .A(n388), .B(n330), .CO(n46), .S(n364) );
  ha1a3 U188 ( .A(n388), .B(n169), .CO(n184), .S(n353) );
  clk1a3 U189 ( .A(n461), .Y(n16) );
  inv1a3 U190 ( .A(n426), .Y(n325) );
  and2c2 U191 ( .A(n143), .B(index[1]), .Y(n150) );
  or2a1 U192 ( .A(n344), .B(n88), .Y(n469) );
  inv1a3 U193 ( .A(index[2]), .Y(n122) );
  inv1a3 U194 ( .A(index[1]), .Y(n85) );
  clk1a3 U195 ( .A(s2[16]), .Y(s2[15]) );
  clk1b6 U196 ( .A(n469), .Y(n15) );
  or2c3 U197 ( .A(n61), .B(n60), .Y(n230) );
  and2a6 U198 ( .A(n142), .B(index[1]), .Y(n371) );
  clk1b6 U199 ( .A(n466), .Y(n443) );
  or2c6 U200 ( .A(n143), .B(n85), .Y(n466) );
  or2c1 U201 ( .A(n69), .B(n68), .Y(n248) );
  and2c3 U202 ( .A(n68), .B(n69), .Y(n247) );
  or2c1 U203 ( .A(n76), .B(n75), .Y(n93) );
  and2c3 U204 ( .A(n75), .B(n76), .Y(n94) );
  buf1a1 U205 ( .A(s2[16]), .Y(s2[18]) );
  and2c9 U206 ( .A(n344), .B(index[0]), .Y(n426) );
  inv1a3 U207 ( .A(n461), .Y(n375) );
  buf1a15 U208 ( .A(din[1]), .Y(n331) );
  buf1a15 U209 ( .A(din[0]), .Y(n388) );
  or2c3 U210 ( .A(n4), .B(n17), .Y(n20) );
  buf1a15 U211 ( .A(din[3]), .Y(n330) );
  or2c3 U212 ( .A(n20), .B(n330), .Y(n140) );
  or2c3 U213 ( .A(n140), .B(n3), .Y(n135) );
  or2c3 U214 ( .A(n135), .B(din[5]), .Y(n132) );
  or2c3 U215 ( .A(n8), .B(n19), .Y(n139) );
  or2c3 U216 ( .A(n139), .B(n169), .Y(n134) );
  or2c3 U217 ( .A(n134), .B(n127), .Y(n137) );
  inv1a1 U218 ( .A(n20), .Y(n22) );
  ao1d1 U219 ( .A(n20), .B(n19), .C(n330), .Y(n21) );
  ao1f2 U220 ( .A(n22), .B(n139), .C(n21), .Y(n363) );
  clk1b6 U221 ( .A(din[5]), .Y(n127) );
  or2c1 U222 ( .A(n1), .B(n331), .Y(n24) );
  xor2a2 U223 ( .A(n24), .B(n4), .Y(n354) );
  xor2b2 U224 ( .A(n111), .B(n112), .Y(n31) );
  fa1a2 U225 ( .A(n169), .B(n13), .CI(n330), .CO(n34), .S(n36) );
  fa1a2 U226 ( .A(n352), .B(din[5]), .CI(n331), .CO(n39), .S(n43) );
  xor2b2 U227 ( .A(n31), .B(n108), .Y(n287) );
  inv1a1 U228 ( .A(n287), .Y(n116) );
  inv1a1 U229 ( .A(n434), .Y(n276) );
  inv1a1 U230 ( .A(n420), .Y(n256) );
  xor2b2 U231 ( .A(n39), .B(n38), .Y(n41) );
  fa1a2 U232 ( .A(n44), .B(n43), .CI(n42), .CO(n40), .S(n215) );
  xor3b3 U233 ( .A(n3), .B(n46), .C(n45), .Y(n377) );
  inv1a1 U234 ( .A(n377), .Y(n209) );
  inv1a1 U235 ( .A(n364), .Y(n181) );
  or2c3 U236 ( .A(n122), .B(index[0]), .Y(n80) );
  and2c3 U237 ( .A(n80), .B(n85), .Y(n455) );
  inv1a3 U238 ( .A(n455), .Y(n343) );
  inv1a1 U239 ( .A(n343), .Y(n153) );
  ao1f2 U240 ( .A(n137), .B(n14), .C(n459), .Y(n47) );
  ao1f9 U241 ( .A(n132), .B(n48), .C(n47), .Y(n425) );
  and2c3 U242 ( .A(index[0]), .B(index[2]), .Y(n142) );
  or3d6 U243 ( .A(n85), .B(index[2]), .C(index[0]), .Y(n457) );
  and2a6 U244 ( .A(n243), .B(n4), .Y(n266) );
  oa1f3 U245 ( .A(n266), .B(n52), .C(n53), .Y(n177) );
  oa1f3 U246 ( .A(n50), .B(n193), .C(n57), .Y(n58) );
  oa1f3 U247 ( .A(n65), .B(n212), .C(n64), .Y(n251) );
  oa1f3 U248 ( .A(n263), .B(n71), .C(n74), .Y(n95) );
  fa1a2 U249 ( .A(n169), .B(n14), .CI(n459), .CO(n306), .S(n269) );
  and2c9 U250 ( .A(n80), .B(index[1]), .Y(n461) );
  and2c3 U251 ( .A(n122), .B(index[0]), .Y(n143) );
  or2c3 U252 ( .A(n266), .B(n8), .Y(n156) );
  and2c3 U253 ( .A(n156), .B(n169), .Y(n83) );
  inv1a1 U254 ( .A(n83), .Y(n183) );
  ao1d2 U255 ( .A(n169), .B(n156), .C(n183), .Y(n357) );
  or2c3 U256 ( .A(index[1]), .B(index[2]), .Y(n344) );
  or2c1 U257 ( .A(n14), .B(n426), .Y(n103) );
  or2c3 U258 ( .A(n83), .B(n127), .Y(n203) );
  and2c3 U259 ( .A(n201), .B(n13), .Y(n105) );
  or2c3 U260 ( .A(n81), .B(n1), .Y(n302) );
  inv1a1 U261 ( .A(n302), .Y(n82) );
  ao1f1 U262 ( .A(n82), .B(n156), .C(n169), .Y(n84) );
  or2c1 U263 ( .A(n302), .B(n83), .Y(n304) );
  or2c1 U264 ( .A(n84), .B(n304), .Y(n282) );
  and2a6 U265 ( .A(n142), .B(n85), .Y(n458) );
  oa1f3 U266 ( .A(n283), .B(n461), .C(n87), .Y(n90) );
  inv1a1 U267 ( .A(index[0]), .Y(n88) );
  or2c1 U268 ( .A(n287), .B(n15), .Y(n89) );
  ao2i3 U269 ( .A(n457), .B(n79), .C(n90), .D(n89), .Y(n91) );
  oa1f3 U270 ( .A(n279), .B(n371), .C(n91), .Y(n92) );
  oa1f3 U271 ( .A(n298), .B(n96), .C(n98), .Y(n320) );
  or2c3 U272 ( .A(n104), .B(n103), .Y(n442) );
  oa1f3 U273 ( .A(n201), .B(n13), .C(n105), .Y(n216) );
  or2c3 U274 ( .A(n14), .B(n458), .Y(n294) );
  ao1f1 U275 ( .A(n15), .B(n16), .C(n14), .Y(n106) );
  ao2i3 U276 ( .A(n216), .B(n466), .C(n294), .D(n106), .Y(n107) );
  and2c3 U277 ( .A(n442), .B(n107), .Y(n118) );
  fa1a2 U278 ( .A(n459), .B(n13), .CI(din[5]), .CO(n314), .S(n112) );
  clk1b6 U279 ( .A(n343), .Y(n440) );
  ao2i3 U280 ( .A(n99), .B(n457), .C(n118), .D(n117), .Y(s2[16]) );
  clk1b6 U281 ( .A(n15), .Y(n401) );
  and2c1 U282 ( .A(n216), .B(n325), .Y(n121) );
  or2c3 U283 ( .A(n119), .B(n443), .Y(n295) );
  inv1a1 U284 ( .A(n295), .Y(n120) );
  oa2i2 U285 ( .A(n14), .B(n122), .C(n121), .D(n120), .Y(n125) );
  clk1b6 U286 ( .A(n457), .Y(n408) );
  or2c1 U287 ( .A(n123), .B(n408), .Y(n124) );
  fa1a2 U288 ( .A(n330), .B(din[5]), .CI(n13), .CO(n270), .S(
        DP_OP_34J1_137_8448_n203) );
  fa1a2 U289 ( .A(n352), .B(n169), .CI(n13), .CO(DP_OP_34J1_137_8448_n204), 
        .S(DP_OP_34J1_137_8448_n205) );
  fa1a2 U290 ( .A(n331), .B(n330), .CI(n13), .CO(DP_OP_34J1_137_8448_n206), 
        .S(n218) );
  inv1a1 U291 ( .A(n135), .Y(n138) );
  ao1d1 U292 ( .A(n135), .B(n134), .C(din[5]), .Y(n136) );
  ao1f2 U293 ( .A(n138), .B(n137), .C(n136), .Y(n389) );
  xor2a2 U294 ( .A(n141), .B(n3), .Y(n378) );
  inv1a1 U295 ( .A(n150), .Y(n144) );
  or3d1 U296 ( .A(n388), .B(n344), .C(n144), .Y(n145) );
  inv1a1 U297 ( .A(n145), .Y(s1[1]) );
  fa1a3 U298 ( .A(n352), .B(n1), .CI(n146), .CO(n161), .S(n341) );
  or2c1 U299 ( .A(n341), .B(n443), .Y(n152) );
  and2c1 U300 ( .A(n4), .B(n343), .Y(n149) );
  inv1a1 U301 ( .A(n243), .Y(n147) );
  oa1f3 U302 ( .A(n352), .B(n147), .C(n266), .Y(n414) );
  clk1b6 U303 ( .A(n371), .Y(n438) );
  and2c1 U304 ( .A(n6), .B(n438), .Y(n148) );
  oa2i2 U305 ( .A(n388), .B(n150), .C(n149), .D(n148), .Y(n151) );
  ao2i3 U306 ( .A(n2), .B(n401), .C(n152), .D(n151), .Y(s1[3]) );
  or2c1 U307 ( .A(n349), .B(n443), .Y(n154) );
  ao2i3 U308 ( .A(n1), .B(n401), .C(n155), .D(n154), .Y(s1[2]) );
  inv1a1 U309 ( .A(n266), .Y(n158) );
  inv1a1 U310 ( .A(n156), .Y(n157) );
  oa1f3 U311 ( .A(n330), .B(n158), .C(n157), .Y(n427) );
  inv1a3 U312 ( .A(n427), .Y(n335) );
  oa4f3 U313 ( .A(n402), .B(n458), .C(n461), .D(n331), .Y(n351) );
  or2c1 U314 ( .A(n330), .B(n440), .Y(n159) );
  ao2i3 U315 ( .A(n335), .B(n438), .C(n351), .D(n159), .Y(n160) );
  oa1f3 U316 ( .A(n408), .B(n337), .C(n160), .Y(n164) );
  fa1a3 U317 ( .A(n162), .B(n161), .CI(n2), .CO(n173), .S(n338) );
  or2c1 U318 ( .A(n338), .B(n443), .Y(n163) );
  ao2i3 U319 ( .A(n6), .B(n401), .C(n164), .D(n163), .Y(s1[4]) );
  clk1b6 U320 ( .A(n458), .Y(n448) );
  or2c1 U321 ( .A(n352), .B(n461), .Y(n342) );
  or2c1 U322 ( .A(n353), .B(n440), .Y(n170) );
  ao2i3 U323 ( .A(n7), .B(n448), .C(n342), .D(n170), .Y(n172) );
  and2c1 U324 ( .A(n357), .B(n438), .Y(n171) );
  oa2i2 U325 ( .A(n359), .B(n408), .C(n172), .D(n171), .Y(n176) );
  fa1a3 U326 ( .A(n174), .B(n7), .CI(n173), .CO(n188), .S(n360) );
  or2c1 U327 ( .A(n360), .B(n443), .Y(n175) );
  ao2i3 U328 ( .A(n167), .B(n401), .C(n176), .D(n175), .Y(s1[5]) );
  inv1a1 U329 ( .A(n203), .Y(n301) );
  oa1f3 U330 ( .A(din[5]), .B(n183), .C(n301), .Y(n444) );
  inv1a1 U331 ( .A(n444), .Y(n368) );
  oa4f1 U332 ( .A(n364), .B(n461), .C(n363), .D(n458), .Y(n186) );
  or2c1 U333 ( .A(n365), .B(n440), .Y(n185) );
  ao2i3 U334 ( .A(n368), .B(n438), .C(n186), .D(n185), .Y(n187) );
  oa1f3 U335 ( .A(n408), .B(n370), .C(n187), .Y(n192) );
  fa1a3 U336 ( .A(n190), .B(n189), .CI(n188), .CO(DP_OP_34J1_137_8448_n29), 
        .S(n372) );
  or2c1 U337 ( .A(n372), .B(n443), .Y(n191) );
  ao2i3 U338 ( .A(n180), .B(n401), .C(n192), .D(n191), .Y(s1[6]) );
  inv1a3 U339 ( .A(n_zz_28[7]), .Y(n387) );
  oa1f3 U340 ( .A(n194), .B(n51), .C(n193), .Y(n197) );
  inv1a1 U341 ( .A(n200), .Y(n376) );
  and2c1 U342 ( .A(n376), .B(n343), .Y(n207) );
  inv1a1 U343 ( .A(n201), .Y(n202) );
  ao1d2 U344 ( .A(n459), .B(n203), .C(n202), .Y(n465) );
  or2c1 U345 ( .A(n377), .B(n461), .Y(n205) );
  or2c1 U346 ( .A(n378), .B(n458), .Y(n204) );
  ao2i3 U347 ( .A(n465), .B(n438), .C(n205), .D(n204), .Y(n206) );
  oa2i2 U348 ( .A(n383), .B(n15), .C(n207), .D(n206), .Y(n211) );
  or2c1 U349 ( .A(n384), .B(n408), .Y(n210) );
  ao2i3 U350 ( .A(n387), .B(n466), .C(n211), .D(n210), .Y(s1[7]) );
  inv1a3 U351 ( .A(n_zz_28[8]), .Y(n400) );
  and2c1 U352 ( .A(n5), .B(n375), .Y(n223) );
  xor2a2 U353 ( .A(n216), .B(n388), .Y(n393) );
  oa4f1 U354 ( .A(n389), .B(n458), .C(n426), .D(n388), .Y(n221) );
  fa1a3 U355 ( .A(n219), .B(n218), .CI(n217), .CO(DP_OP_34J1_137_8448_n12), 
        .S(n390) );
  or2c1 U356 ( .A(n390), .B(n440), .Y(n220) );
  ao2i3 U357 ( .A(n393), .B(n438), .C(n221), .D(n220), .Y(n222) );
  oa2i2 U358 ( .A(n396), .B(n15), .C(n223), .D(n222), .Y(n226) );
  or2c1 U359 ( .A(n397), .B(n408), .Y(n225) );
  ao2i3 U360 ( .A(n400), .B(n466), .C(n226), .D(n225), .Y(s1[8]) );
  inv1a3 U361 ( .A(n_zz_28[9]), .Y(n413) );
  or2c1 U362 ( .A(n_zz_24[9]), .B(n440), .Y(n238) );
  and2c3 U363 ( .A(n2), .B(n325), .Y(n332) );
  mx2a1 U364 ( .D0(n243), .D1(n402), .S(n302), .Y(n405) );
  and2c1 U365 ( .A(n405), .B(n438), .Y(n236) );
  oa2i2 U366 ( .A(n_zz_16_9_), .B(n458), .C(n332), .D(n236), .Y(n237) );
  oa1f3 U367 ( .A(n15), .B(n409), .C(n239), .Y(n242) );
  or2c1 U368 ( .A(n410), .B(n408), .Y(n241) );
  inv1a3 U369 ( .A(n_zz_28[10]), .Y(n424) );
  or2c1 U370 ( .A(n302), .B(n243), .Y(n244) );
  xor2a2 U371 ( .A(n244), .B(n352), .Y(n417) );
  or2c1 U372 ( .A(n_zz_24[10]), .B(n440), .Y(n245) );
  ao2i3 U373 ( .A(n417), .B(n438), .C(n246), .D(n245), .Y(n254) );
  oa2i2 U374 ( .A(n420), .B(n461), .C(n254), .D(n253), .Y(n258) );
  or2c1 U375 ( .A(n421), .B(n408), .Y(n257) );
  inv1a3 U376 ( .A(n261), .Y(n439) );
  or2c1 U377 ( .A(n302), .B(n266), .Y(n267) );
  xor2a2 U378 ( .A(n267), .B(n330), .Y(n431) );
  or2c1 U379 ( .A(n428), .B(n440), .Y(n271) );
  ao2i3 U380 ( .A(n431), .B(n438), .C(n272), .D(n271), .Y(n273) );
  oa2i2 U381 ( .A(n434), .B(n461), .C(n274), .D(n273), .Y(n278) );
  or2c1 U382 ( .A(n435), .B(n408), .Y(n277) );
  ao2i3 U383 ( .A(n439), .B(n466), .C(n278), .D(n277), .Y(s1[11]) );
  inv1a1 U384 ( .A(n294), .Y(n281) );
  and2c1 U385 ( .A(n357), .B(n325), .Y(n280) );
  oa2i2 U386 ( .A(n282), .B(n371), .C(n281), .D(n280), .Y(n285) );
  or2c1 U387 ( .A(n283), .B(n440), .Y(n284) );
  ao2i3 U388 ( .A(n79), .B(n401), .C(n285), .D(n284), .Y(n286) );
  oa1f3 U389 ( .A(n287), .B(n16), .C(n286), .Y(n290) );
  or2c1 U390 ( .A(n288), .B(n408), .Y(n289) );
  ao2i3 U391 ( .A(n291), .B(n466), .C(n290), .D(n289), .Y(s1[12]) );
  inv1a1 U392 ( .A(n441), .Y(n312) );
  or2c1 U393 ( .A(n302), .B(n301), .Y(n460) );
  inv1a1 U394 ( .A(n460), .Y(n303) );
  or2c1 U395 ( .A(n444), .B(n426), .Y(n308) );
  or2c1 U396 ( .A(n445), .B(n440), .Y(n307) );
  oa2i2 U397 ( .A(n452), .B(n16), .C(n310), .D(n309), .Y(n311) );
  xor2b2 U398 ( .A(n470), .B(n315), .Y(n456) );
  inv1a1 U399 ( .A(n456), .Y(n329) );
  or3d1 U400 ( .A(n460), .B(n459), .C(n371), .Y(n324) );
  or2c1 U401 ( .A(n462), .B(n455), .Y(n323) );
  oa2i2 U402 ( .A(n470), .B(n16), .C(n327), .D(n326), .Y(n328) );
  oa4f1 U403 ( .A(n15), .B(n331), .C(n330), .D(n461), .Y(n334) );
  inv1a1 U404 ( .A(n332), .Y(n333) );
  ao2i3 U405 ( .A(n335), .B(n448), .C(n334), .D(n333), .Y(n336) );
  oa1f3 U406 ( .A(n440), .B(n337), .C(n336), .Y(n340) );
  or2c1 U407 ( .A(n338), .B(n371), .Y(n339) );
  ao2i3 U408 ( .A(n457), .B(n6), .C(n340), .D(n339), .Y(s2[4]) );
  or2c1 U409 ( .A(n341), .B(n371), .Y(n348) );
  inv1a1 U410 ( .A(n342), .Y(n346) );
  oa1f1 U411 ( .A(n344), .B(n343), .C(n1), .Y(n345) );
  oa2i2 U412 ( .A(n414), .B(n458), .C(n346), .D(n345), .Y(n347) );
  ao2i3 U413 ( .A(n457), .B(n2), .C(n348), .D(n347), .Y(s2[3]) );
  or2c1 U414 ( .A(n349), .B(n371), .Y(n350) );
  ao2i3 U415 ( .A(n1), .B(n457), .C(n351), .D(n350), .Y(s2[2]) );
  oa4f1 U416 ( .A(n353), .B(n461), .C(n15), .D(n352), .Y(n356) );
  or2c1 U417 ( .A(n354), .B(n426), .Y(n355) );
  ao2i3 U418 ( .A(n357), .B(n448), .C(n356), .D(n355), .Y(n358) );
  oa1f3 U419 ( .A(n440), .B(n359), .C(n358), .Y(n362) );
  or2c1 U420 ( .A(n360), .B(n371), .Y(n361) );
  ao2i3 U421 ( .A(n457), .B(n167), .C(n362), .D(n361), .Y(s2[5]) );
  oa4f1 U422 ( .A(n364), .B(n15), .C(n363), .D(n426), .Y(n367) );
  or2c1 U423 ( .A(n365), .B(n461), .Y(n366) );
  ao2i3 U424 ( .A(n368), .B(n448), .C(n367), .D(n366), .Y(n369) );
  oa1f3 U425 ( .A(n440), .B(n370), .C(n369), .Y(n374) );
  or2c1 U426 ( .A(n372), .B(n371), .Y(n373) );
  ao2i3 U427 ( .A(n457), .B(n180), .C(n374), .D(n373), .Y(s2[6]) );
  and2c1 U428 ( .A(n376), .B(n375), .Y(n382) );
  or2c1 U429 ( .A(n377), .B(n15), .Y(n380) );
  or2c1 U430 ( .A(n378), .B(n426), .Y(n379) );
  ao2i3 U431 ( .A(n465), .B(n448), .C(n380), .D(n379), .Y(n381) );
  oa2i2 U432 ( .A(n383), .B(n408), .C(n382), .D(n381), .Y(n386) );
  or2c1 U433 ( .A(n384), .B(n440), .Y(n385) );
  ao2i3 U434 ( .A(n387), .B(n438), .C(n386), .D(n385), .Y(s2[7]) );
  and2c1 U435 ( .A(n5), .B(n401), .Y(n395) );
  oa4f1 U436 ( .A(n389), .B(n426), .C(n443), .D(n388), .Y(n392) );
  or2c1 U437 ( .A(n390), .B(n461), .Y(n391) );
  ao2i3 U438 ( .A(n393), .B(n448), .C(n392), .D(n391), .Y(n394) );
  oa2i2 U439 ( .A(n396), .B(n408), .C(n395), .D(n394), .Y(n399) );
  or2c1 U440 ( .A(n397), .B(n440), .Y(n398) );
  ao2i3 U441 ( .A(n400), .B(n438), .C(n399), .D(n398), .Y(s2[8]) );
  and2c1 U442 ( .A(n235), .B(n401), .Y(n407) );
  oa4f1 U443 ( .A(n_zz_16_9_), .B(n426), .C(n443), .D(n402), .Y(n404) );
  or2c1 U444 ( .A(n_zz_24[9]), .B(n461), .Y(n403) );
  ao2i3 U445 ( .A(n405), .B(n448), .C(n404), .D(n403), .Y(n406) );
  oa2i2 U446 ( .A(n409), .B(n408), .C(n407), .D(n406), .Y(n412) );
  or2c1 U447 ( .A(n410), .B(n440), .Y(n411) );
  ao2i3 U448 ( .A(n413), .B(n438), .C(n412), .D(n411), .Y(s2[9]) );
  oa4f1 U449 ( .A(n_zz_16_10_), .B(n426), .C(n443), .D(n414), .Y(n416) );
  or2c1 U450 ( .A(n_zz_24[10]), .B(n461), .Y(n415) );
  ao2i3 U451 ( .A(n417), .B(n448), .C(n416), .D(n415), .Y(n419) );
  oa2i2 U452 ( .A(n420), .B(n15), .C(n419), .D(n418), .Y(n423) );
  or2c1 U453 ( .A(n421), .B(n440), .Y(n422) );
  ao2i3 U454 ( .A(n424), .B(n438), .C(n423), .D(n422), .Y(s2[10]) );
  or2c1 U455 ( .A(n428), .B(n461), .Y(n429) );
  ao2i3 U456 ( .A(n448), .B(n431), .C(n430), .D(n429), .Y(n432) );
  oa2i2 U457 ( .A(n434), .B(n15), .C(n433), .D(n432), .Y(n437) );
  or2c1 U458 ( .A(n435), .B(n440), .Y(n436) );
  ao2i3 U459 ( .A(n439), .B(n438), .C(n437), .D(n436), .Y(s2[11]) );
  or2c1 U460 ( .A(n441), .B(n440), .Y(n454) );
  or2c1 U461 ( .A(n444), .B(n443), .Y(n447) );
  or2c1 U462 ( .A(n445), .B(n461), .Y(n446) );
  ao2i3 U463 ( .A(n449), .B(n448), .C(n447), .D(n446), .Y(n450) );
  oa2i2 U464 ( .A(n452), .B(n15), .C(n451), .D(n450), .Y(n453) );
  or3d3 U465 ( .A(n454), .B(n472), .C(n453), .Y(s2[13]) );
  or2c1 U466 ( .A(n456), .B(n455), .Y(n473) );
  or3d1 U467 ( .A(n460), .B(n459), .C(n458), .Y(n464) );
  or2c1 U468 ( .A(n462), .B(n16), .Y(n463) );
  oa2i2 U469 ( .A(n470), .B(n15), .C(n468), .D(n467), .Y(n471) );
  or3d3 U470 ( .A(n473), .B(n472), .C(n471), .Y(s2[14]) );
endmodule


module FloorAndWrap_8_1 ( din, dout );
  input [17:0] din;
  output [15:0] dout;


  clk1a3 U1 ( .A(din[8]), .Y(dout[8]) );
  clk1a3 U2 ( .A(din[2]), .Y(dout[2]) );
  clk1a3 U3 ( .A(din[3]), .Y(dout[3]) );
  clk1a3 U4 ( .A(din[1]), .Y(dout[1]) );
  clk1a3 U5 ( .A(din[4]), .Y(dout[4]) );
  clk1a3 U6 ( .A(din[11]), .Y(dout[11]) );
  clk1a3 U7 ( .A(din[12]), .Y(dout[12]) );
  clk1a3 U8 ( .A(din[7]), .Y(dout[7]) );
  clk1a3 U9 ( .A(din[14]), .Y(dout[14]) );
  clk1a3 U10 ( .A(din[13]), .Y(dout[13]) );
  clk1a3 U11 ( .A(din[10]), .Y(dout[10]) );
  clk1a3 U12 ( .A(din[9]), .Y(dout[9]) );
  clk1a3 U13 ( .A(din[0]), .Y(dout[0]) );
  clk1a3 U14 ( .A(din[6]), .Y(dout[6]) );
  clk1a3 U15 ( .A(din[5]), .Y(dout[5]) );
  clk1a3 U16 ( .A(din[15]), .Y(dout[15]) );
endmodule


module FloorAndWrap_8_0 ( din, dout );
  input [17:0] din;
  output [15:0] dout;


  clk1a3 U1 ( .A(din[5]), .Y(dout[5]) );
  clk1a3 U2 ( .A(din[14]), .Y(dout[14]) );
  clk1a3 U3 ( .A(din[15]), .Y(dout[15]) );
  clk1a3 U4 ( .A(din[1]), .Y(dout[1]) );
  clk1a3 U5 ( .A(din[8]), .Y(dout[8]) );
  clk1a3 U6 ( .A(din[11]), .Y(dout[11]) );
  clk1a3 U7 ( .A(din[7]), .Y(dout[7]) );
  clk1a3 U8 ( .A(din[9]), .Y(dout[9]) );
  clk1a3 U9 ( .A(din[6]), .Y(dout[6]) );
  clk1a3 U10 ( .A(din[10]), .Y(dout[10]) );
  clk1a3 U11 ( .A(din[2]), .Y(dout[2]) );
  clk1a3 U12 ( .A(din[13]), .Y(dout[13]) );
  clk1a3 U13 ( .A(din[3]), .Y(dout[3]) );
  clk1a3 U14 ( .A(din[4]), .Y(dout[4]) );
  clk1a3 U15 ( .A(din[12]), .Y(dout[12]) );
  clk1a3 U16 ( .A(din[0]), .Y(dout[0]) );
endmodule


module SNPS_CLOCK_GATE_HIGH_dotVn ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net5375;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net5375) );
  and2a3 main_gate ( .A(net5375), .B(CLK), .Y(ENCLK) );
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
  wire   mac_en, N55, N56, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69,
         N70, N71, N72, N73, N74, N75, N76, N78, N79, N80, N81, N82, N83, N84,
         N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, net5381, n52,
         DP_OP_15J1_135_9881_n27, DP_OP_15J1_135_9881_n26,
         DP_OP_15J1_135_9881_n25, DP_OP_15J1_135_9881_n24,
         DP_OP_15J1_135_9881_n10, DP_OP_15J1_135_9881_n9,
         DP_OP_15J1_135_9881_n8, DP_OP_15J1_135_9881_n7,
         DP_OP_15J1_135_9881_n6, DP_OP_15J1_135_9881_n5,
         DP_OP_15J1_135_9881_n4, DP_OP_15J1_135_9881_n3, n1, n2, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
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
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2;
  wire   [17:0] n_zz_5;
  wire   [17:0] n_zz_6;
  wire   [2:0] mac_cnt;
  wire   [18:1] table_1_s1;
  wire   [18:1] table_1_s2;
  wire   [7:0] n_zz_4;

  s_table table_1 ( .index(mac_cnt), .din(n_zz_4), .s1({table_1_s1[18:15], n2, 
        n1, table_1_s1[12:1], SYNOPSYS_UNCONNECTED_1}), .s2({table_1_s2, 
        SYNOPSYS_UNCONNECTED_2}) );
  FloorAndWrap_8_1 FloorWrap1 ( .din(n_zz_5), .dout(psum_out1) );
  FloorAndWrap_8_0 FloorWrap2 ( .din(n_zz_6), .dout(psum_out2) );
  SNPS_CLOCK_GATE_HIGH_dotVn clk_gate_mac_cnt_reg ( .CLK(clk), .EN(mac_en), 
        .ENCLK(net5381) );
  fdf2a3 mac_en_reg ( .D(n52), .CLK(clk), .CLR(resetn), .Q(mac_en) );
  fdf2a3 psum2_reg_17_ ( .D(N94), .CLK(net5381), .CLR(n268), .Q(n_zz_6[16]) );
  fdf2a3 psum2_reg_16_ ( .D(N93), .CLK(net5381), .CLR(resetn), .Q(n_zz_6[15])
         );
  fdf2a3 psum2_reg_15_ ( .D(N92), .CLK(net5381), .CLR(n268), .Q(n_zz_6[14]) );
  fdf2a3 psum2_reg_14_ ( .D(N91), .CLK(net5381), .CLR(resetn), .Q(n_zz_6[13])
         );
  fdf2a3 psum2_reg_13_ ( .D(N90), .CLK(net5381), .CLR(n268), .Q(n_zz_6[12]) );
  fdf2a3 psum2_reg_12_ ( .D(N89), .CLK(net5381), .CLR(n267), .Q(n_zz_6[11]) );
  fdf2a3 psum2_reg_11_ ( .D(N88), .CLK(net5381), .CLR(n267), .Q(n_zz_6[10]) );
  fdf2a3 psum2_reg_10_ ( .D(N87), .CLK(net5381), .CLR(n268), .Q(n_zz_6[9]) );
  fdf2a3 psum2_reg_9_ ( .D(N86), .CLK(net5381), .CLR(n267), .Q(n_zz_6[8]) );
  fdf2a3 psum2_reg_8_ ( .D(N85), .CLK(net5381), .CLR(n268), .Q(n_zz_6[7]) );
  fdf2a3 psum2_reg_7_ ( .D(N84), .CLK(net5381), .CLR(n267), .Q(n_zz_6[6]) );
  fdf2a3 psum2_reg_6_ ( .D(N83), .CLK(net5381), .CLR(n268), .Q(n_zz_6[5]) );
  fdf2a3 psum2_reg_5_ ( .D(N82), .CLK(net5381), .CLR(n267), .Q(n_zz_6[4]) );
  fdf2a3 psum2_reg_4_ ( .D(N81), .CLK(net5381), .CLR(n268), .Q(n_zz_6[3]) );
  fdf2a3 psum2_reg_3_ ( .D(N80), .CLK(net5381), .CLR(n267), .Q(n_zz_6[2]) );
  fdf2a3 psum2_reg_2_ ( .D(N79), .CLK(net5381), .CLR(n268), .Q(n_zz_6[1]) );
  fdf2a3 psum2_reg_1_ ( .D(N78), .CLK(net5381), .CLR(n268), .Q(n_zz_6[0]) );
  fdf2a3 psum1_reg_17_ ( .D(N75), .CLK(net5381), .CLR(n268), .Q(n_zz_5[16]) );
  fdf2a3 psum1_reg_16_ ( .D(N74), .CLK(net5381), .CLR(n267), .Q(n_zz_5[15]) );
  fdf2a3 psum1_reg_15_ ( .D(N73), .CLK(net5381), .CLR(n267), .Q(n_zz_5[14]) );
  fdf2a3 psum1_reg_13_ ( .D(N71), .CLK(net5381), .CLR(n268), .Q(n_zz_5[12]) );
  fdf2a3 psum1_reg_12_ ( .D(N70), .CLK(net5381), .CLR(n267), .Q(n_zz_5[11]) );
  fdf2a3 psum1_reg_11_ ( .D(N69), .CLK(net5381), .CLR(n268), .Q(n_zz_5[10]) );
  fdf2a3 psum1_reg_10_ ( .D(N68), .CLK(net5381), .CLR(n267), .Q(n_zz_5[9]) );
  fdf2a3 psum1_reg_9_ ( .D(N67), .CLK(net5381), .CLR(n268), .Q(n_zz_5[8]) );
  fdf2a3 psum1_reg_8_ ( .D(N66), .CLK(net5381), .CLR(n267), .Q(n_zz_5[7]) );
  fdf2a3 psum1_reg_7_ ( .D(N65), .CLK(net5381), .CLR(n268), .Q(n_zz_5[6]) );
  fdf2a3 psum1_reg_6_ ( .D(N64), .CLK(net5381), .CLR(resetn), .Q(n_zz_5[5]) );
  fdf2a3 psum1_reg_5_ ( .D(N63), .CLK(net5381), .CLR(resetn), .Q(n_zz_5[4]) );
  fdf2a3 psum1_reg_4_ ( .D(N62), .CLK(net5381), .CLR(resetn), .Q(n_zz_5[3]) );
  fdf2a3 psum1_reg_3_ ( .D(N61), .CLK(net5381), .CLR(resetn), .Q(n_zz_5[2]) );
  fdf2a3 psum1_reg_2_ ( .D(N60), .CLK(net5381), .CLR(resetn), .Q(n_zz_5[1]) );
  fdf2a3 psum1_reg_1_ ( .D(n189), .CLK(net5381), .CLR(resetn), .Q(n_zz_5[0])
         );
  fdef1a6 finish_reg ( .D(n269), .E(en), .CLK(clk), .Q(psum_vld) );
  fdf2a3 psum1_reg_18_ ( .D(N76), .CLK(net5381), .CLR(n268), .Q(n_zz_5[17]) );
  facs3a2 DP_OP_15J1_135_9881_U7 ( .A(DP_OP_15J1_135_9881_n27), .B(
        table_1_s2[15]), .CSIN(DP_OP_15J1_135_9881_n10), .S(N92), .CO0(
        DP_OP_15J1_135_9881_n9), .CO1(DP_OP_15J1_135_9881_n8) );
  facs3a2 DP_OP_15J1_135_9881_U4 ( .A(DP_OP_15J1_135_9881_n25), .B(
        table_1_s2[17]), .CSIN(DP_OP_15J1_135_9881_n5), .S(N94), .CO0(
        DP_OP_15J1_135_9881_n4), .CO1(DP_OP_15J1_135_9881_n3) );
  facsf1b2 DP_OP_15J1_135_9881_U3 ( .CI1(DP_OP_15J1_135_9881_n3), .B(
        table_1_s2[18]), .A(DP_OP_15J1_135_9881_n24), .CI0(
        DP_OP_15J1_135_9881_n4), .CSIN(DP_OP_15J1_135_9881_n5), .S(N95) );
  fdf2a3 psum1_reg_14_ ( .D(N72), .CLK(net5381), .CLR(n268), .Q(n_zz_5[13]) );
  fdf2a9 mac_cnt_reg_2_ ( .D(N56), .CLK(net5381), .CLR(resetn), .Q(mac_cnt[2])
         );
  fdf2a6 mac_cnt_reg_1_ ( .D(N55), .CLK(net5381), .CLR(resetn), .Q(mac_cnt[1])
         );
  fdf2a9 mac_cnt_reg_0_ ( .D(n270), .CLK(net5381), .CLR(resetn), .Q(mac_cnt[0]) );
  fdf2a9 psum2_reg_18_ ( .D(N95), .CLK(net5381), .CLR(resetn), .Q(n_zz_6[17])
         );
  or2c1 U3 ( .A(n57), .B(n59), .Y(n115) );
  or2c1 U4 ( .A(n63), .B(n142), .Y(n144) );
  or2c1 U5 ( .A(n88), .B(n161), .Y(n163) );
  or2c1 U6 ( .A(n123), .B(n122), .Y(n124) );
  or2c1 U7 ( .A(n128), .B(n127), .Y(n131) );
  or2c1 U8 ( .A(n158), .B(n157), .Y(n160) );
  facsf1b2 U9 ( .CI1(DP_OP_15J1_135_9881_n8), .B(table_1_s2[16]), .A(
        DP_OP_15J1_135_9881_n26), .CI0(DP_OP_15J1_135_9881_n9), .CSIN(
        DP_OP_15J1_135_9881_n10), .CO1(DP_OP_15J1_135_9881_n6), .CO0(
        DP_OP_15J1_135_9881_n7), .S(N93) );
  inv1a1 U10 ( .A(n137), .Y(n143) );
  or2c1 U11 ( .A(table_1_s1[18]), .B(n58), .Y(n59) );
  or2c1 U12 ( .A(n63), .B(n65), .Y(n102) );
  or2c1 U13 ( .A(table_1_s1[15]), .B(n104), .Y(n127) );
  ao1f2 U14 ( .A(n156), .B(n159), .C(n157), .Y(n148) );
  inv1a1 U15 ( .A(n142), .Y(n138) );
  or2c1 U16 ( .A(table_1_s1[9]), .B(n91), .Y(n157) );
  or2c1 U17 ( .A(table_1_s1[11]), .B(n95), .Y(n146) );
  or2c1 U18 ( .A(n1), .B(n99), .Y(n139) );
  or2a1 U19 ( .A(n89), .B(table_1_s1[8]), .Y(n88) );
  or2c1 U20 ( .A(table_1_s1[7]), .B(n86), .Y(n165) );
  or2c1 U21 ( .A(table_1_s1[8]), .B(n89), .Y(n161) );
  ao1f2 U22 ( .A(n175), .B(n172), .C(n173), .Y(n171) );
  or2c1 U23 ( .A(table_1_s1[5]), .B(n82), .Y(n173) );
  inv1a1 U24 ( .A(table_1_s2[10]), .Y(n28) );
  or2c1 U25 ( .A(table_1_s1[6]), .B(n83), .Y(n169) );
  or2a1 U26 ( .A(n76), .B(table_1_s1[3]), .Y(n72) );
  or2c1 U27 ( .A(table_1_s2[8]), .B(n49), .Y(n26) );
  or2c1 U28 ( .A(table_1_s1[4]), .B(n79), .Y(n177) );
  or2c1 U29 ( .A(table_1_s1[2]), .B(n75), .Y(n183) );
  inv1a1 U30 ( .A(table_1_s2[7]), .Y(n20) );
  or3d1 U31 ( .A(n250), .B(n249), .C(n248), .Y(n_zz_4[7]) );
  or3d1 U32 ( .A(n261), .B(n260), .C(n259), .Y(n_zz_4[6]) );
  or3d1 U33 ( .A(n240), .B(n239), .C(n238), .Y(n_zz_4[4]) );
  inv1a1 U34 ( .A(table_1_s2[11]), .Y(n33) );
  or2c1 U35 ( .A(table_1_s1[3]), .B(n76), .Y(n179) );
  or2a1 U36 ( .A(n83), .B(table_1_s1[6]), .Y(n68) );
  or2c1 U37 ( .A(table_1_s1[12]), .B(n98), .Y(n142) );
  or2c1 U38 ( .A(table_1_s1[17]), .B(n112), .Y(n117) );
  or2c1 U39 ( .A(table_1_s2[11]), .B(n53), .Y(n34) );
  or2c1 U40 ( .A(n174), .B(n173), .Y(n176) );
  or2c1 U41 ( .A(n147), .B(n146), .Y(n150) );
  or2a1 U42 ( .A(n79), .B(table_1_s1[4]), .Y(n70) );
  oa4f3 U43 ( .A(n252), .B(vn_in_6[7]), .C(n251), .D(vn_in_4[7]), .Y(n247) );
  oa1a2 U44 ( .A(n116), .B(n122), .C(n117), .Y(n113) );
  or2c3 U45 ( .A(table_1_s1[16]), .B(n111), .Y(n122) );
  and2c3 U46 ( .A(n111), .B(table_1_s1[16]), .Y(n121) );
  inv1a1 U47 ( .A(n116), .Y(n118) );
  and2c3 U48 ( .A(n112), .B(table_1_s1[17]), .Y(n116) );
  or2c1 U49 ( .A(n65), .B(n139), .Y(n140) );
  inv1a1 U50 ( .A(n139), .Y(n100) );
  and2c3 U51 ( .A(n103), .B(n2), .Y(n132) );
  inv1a1 U52 ( .A(n156), .Y(n158) );
  inv1a1 U53 ( .A(n145), .Y(n147) );
  or2c3 U54 ( .A(table_1_s1[10]), .B(n94), .Y(n152) );
  and2c3 U55 ( .A(n94), .B(table_1_s1[10]), .Y(n151) );
  inv1a1 U56 ( .A(n172), .Y(n174) );
  inv1a1 U57 ( .A(n179), .Y(n77) );
  or2c1 U58 ( .A(n184), .B(n183), .Y(n185) );
  inv1a9 U59 ( .A(n214), .Y(n109) );
  xor2b2 U60 ( .A(n115), .B(n114), .Y(N76) );
  xor2b2 U61 ( .A(n131), .B(n130), .Y(N73) );
  xor2b2 U62 ( .A(n120), .B(n119), .Y(N75) );
  xor2a2 U63 ( .A(n125), .B(n124), .Y(N74) );
  xor2a2 U64 ( .A(n136), .B(n135), .Y(N72) );
  ao1f3 U65 ( .A(table_1_s2[12]), .B(n40), .C(n41), .Y(n37) );
  oa1f3 U66 ( .A(n106), .B(n129), .C(n105), .Y(n125) );
  or2a1 U67 ( .A(n116), .B(n121), .Y(n110) );
  xor2a2 U68 ( .A(n141), .B(n140), .Y(N71) );
  inv1a1 U69 ( .A(n121), .Y(n123) );
  or2a1 U70 ( .A(n58), .B(table_1_s1[18]), .Y(n57) );
  xor2b2 U71 ( .A(n150), .B(n149), .Y(N69) );
  or2c1 U72 ( .A(n134), .B(n133), .Y(n135) );
  xor2b2 U73 ( .A(n144), .B(n143), .Y(N70) );
  xor2a2 U74 ( .A(n155), .B(n154), .Y(N68) );
  xor2a2 U75 ( .A(n160), .B(n159), .Y(N67) );
  inv1a1 U76 ( .A(n126), .Y(n128) );
  inv1a1 U77 ( .A(n132), .Y(n134) );
  and2c3 U78 ( .A(n104), .B(table_1_s1[15]), .Y(n126) );
  or2c3 U79 ( .A(n2), .B(n103), .Y(n133) );
  or2c1 U80 ( .A(n153), .B(n152), .Y(n154) );
  or2a3 U81 ( .A(n98), .B(table_1_s1[12]), .Y(n63) );
  and2c3 U82 ( .A(n91), .B(table_1_s1[9]), .Y(n156) );
  inv1a1 U83 ( .A(n151), .Y(n153) );
  and2c3 U84 ( .A(n95), .B(table_1_s1[11]), .Y(n145) );
  or2c1 U85 ( .A(n166), .B(n165), .Y(n167) );
  inv1a1 U86 ( .A(n161), .Y(n90) );
  xor2a2 U87 ( .A(n176), .B(n175), .Y(N63) );
  or2c1 U88 ( .A(n68), .B(n169), .Y(n170) );
  inv1a1 U89 ( .A(n164), .Y(n166) );
  inv1a1 U90 ( .A(n169), .Y(n84) );
  xor2b2 U91 ( .A(n78), .B(n178), .Y(N62) );
  and2c3 U92 ( .A(n82), .B(table_1_s1[5]), .Y(n172) );
  xor2a2 U93 ( .A(n185), .B(n188), .Y(N60) );
  inv1a1 U94 ( .A(n182), .Y(n184) );
  ao1f2 U95 ( .A(n182), .B(n188), .C(n183), .Y(n181) );
  ao1d2 U96 ( .A(n232), .B(n231), .C(mac_cnt[2]), .Y(n234) );
  and2c3 U97 ( .A(n109), .B(n64), .Y(n99) );
  and2c3 U98 ( .A(n109), .B(n107), .Y(n112) );
  and2c3 U99 ( .A(n109), .B(n60), .Y(n103) );
  and2c3 U100 ( .A(n109), .B(n56), .Y(n58) );
  and2c3 U101 ( .A(n109), .B(n66), .Y(n91) );
  and2c3 U102 ( .A(n109), .B(n108), .Y(n111) );
  and2c3 U103 ( .A(n109), .B(n92), .Y(n94) );
  and2c3 U104 ( .A(n109), .B(n61), .Y(n104) );
  inv1a1 U105 ( .A(n_zz_5[14]), .Y(n61) );
  inv1a1 U106 ( .A(n_zz_5[15]), .Y(n108) );
  inv1a1 U107 ( .A(n_zz_5[6]), .Y(n85) );
  inv1a1 U108 ( .A(n_zz_5[9]), .Y(n92) );
  inv1a1 U109 ( .A(n_zz_5[10]), .Y(n93) );
  inv1a1 U110 ( .A(n_zz_5[7]), .Y(n87) );
  inv1a1 U111 ( .A(n_zz_5[11]), .Y(n62) );
  inv1a1 U112 ( .A(n_zz_5[8]), .Y(n66) );
  inv1a1 U113 ( .A(n_zz_5[13]), .Y(n60) );
  inv1a1 U114 ( .A(n_zz_5[12]), .Y(n64) );
  ao1f2 U115 ( .A(n125), .B(n110), .C(n113), .Y(n114) );
  ao1f2 U116 ( .A(n136), .B(n132), .C(n133), .Y(n130) );
  ao1f2 U117 ( .A(n125), .B(n121), .C(n122), .Y(n119) );
  fa1a3 U118 ( .A(n207), .B(table_1_s2[13]), .CI(n206), .CO(n38), .S(N90) );
  inv1a3 U119 ( .A(n129), .Y(n136) );
  ao1f2 U120 ( .A(n126), .B(n133), .C(n127), .Y(n105) );
  or2c3 U121 ( .A(n35), .B(n34), .Y(n41) );
  or2c3 U122 ( .A(n118), .B(n117), .Y(n120) );
  and2c3 U123 ( .A(n132), .B(n126), .Y(n106) );
  or2a3 U124 ( .A(n99), .B(n1), .Y(n65) );
  ao1d2 U125 ( .A(n33), .B(n32), .C(n54), .Y(n35) );
  ao1f2 U126 ( .A(n155), .B(n151), .C(n152), .Y(n149) );
  or2c3 U127 ( .A(n31), .B(n30), .Y(n54) );
  or2c3 U128 ( .A(table_1_s2[12]), .B(n40), .Y(n36) );
  ao1d2 U129 ( .A(n28), .B(n29), .C(n44), .Y(n31) );
  inv1a3 U130 ( .A(n148), .Y(n155) );
  fa1a3 U131 ( .A(n205), .B(table_1_s2[9]), .CI(n204), .CO(n44), .S(N86) );
  or2c3 U132 ( .A(n27), .B(n26), .Y(n204) );
  xor2b2 U133 ( .A(n163), .B(n162), .Y(N66) );
  ao1f2 U134 ( .A(n145), .B(n152), .C(n146), .Y(n96) );
  and2c3 U135 ( .A(n151), .B(n145), .Y(n97) );
  ao1f2 U136 ( .A(n168), .B(n164), .C(n165), .Y(n162) );
  xor2b2 U137 ( .A(n171), .B(n170), .Y(N64) );
  xor2a2 U138 ( .A(n168), .B(n167), .Y(N65) );
  ao1d2 U139 ( .A(n25), .B(n24), .C(n50), .Y(n27) );
  or2c3 U140 ( .A(n23), .B(n22), .Y(n50) );
  inv1a2 U141 ( .A(table_1_s2[8]), .Y(n25) );
  ao1d2 U142 ( .A(n20), .B(n21), .C(n47), .Y(n23) );
  or2c1 U143 ( .A(n70), .B(n177), .Y(n178) );
  inv1a1 U144 ( .A(n177), .Y(n80) );
  xor2b2 U145 ( .A(n181), .B(n180), .Y(N61) );
  or2c1 U146 ( .A(n72), .B(n179), .Y(n180) );
  ao1a3 U147 ( .A(n72), .B(n181), .C(n77), .Y(n78) );
  and2c3 U148 ( .A(n75), .B(table_1_s1[2]), .Y(n182) );
  and2a3 U149 ( .A(n187), .B(n188), .Y(n189) );
  or2a1 U150 ( .A(n186), .B(table_1_s1[1]), .Y(n187) );
  ha1a3 U151 ( .A(table_1_s2[1]), .B(n208), .CO(n194), .S(N78) );
  or3d9 U152 ( .A(n245), .B(n244), .C(n243), .Y(n_zz_4[5]) );
  ao1d2 U153 ( .A(n255), .B(n254), .C(mac_cnt[2]), .Y(n261) );
  ao1d2 U154 ( .A(n225), .B(n224), .C(mac_cnt[2]), .Y(n229) );
  inv1a1 U155 ( .A(n46), .Y(n21) );
  inv1a1 U156 ( .A(n43), .Y(n29) );
  ao1d2 U157 ( .A(n242), .B(n241), .C(mac_cnt[2]), .Y(n245) );
  ao1d2 U158 ( .A(n237), .B(n236), .C(mac_cnt[2]), .Y(n240) );
  ao1d2 U159 ( .A(n213), .B(n212), .C(mac_cnt[2]), .Y(n218) );
  oa4f2 U160 ( .A(n252), .B(vn_in_6[6]), .C(n251), .D(vn_in_4[6]), .Y(n255) );
  and2c3 U161 ( .A(n109), .B(n87), .Y(n89) );
  oa4f2 U162 ( .A(n252), .B(vn_in_6[3]), .C(n251), .D(vn_in_4[3]), .Y(n232) );
  oa4f2 U163 ( .A(n252), .B(vn_in_6[5]), .C(n251), .D(vn_in_4[5]), .Y(n242) );
  and2c3 U164 ( .A(n109), .B(n93), .Y(n95) );
  and2c3 U165 ( .A(n109), .B(n85), .Y(n86) );
  oa4f2 U166 ( .A(n252), .B(vn_in_6[4]), .C(n251), .D(vn_in_4[4]), .Y(n237) );
  and2c9 U167 ( .A(n263), .B(mac_cnt[2]), .Y(n258) );
  and2c3 U168 ( .A(n109), .B(n62), .Y(n98) );
  oa4f2 U169 ( .A(n266), .B(vn_in_7[2]), .C(n253), .D(vn_in_5[2]), .Y(n224) );
  oa4f2 U170 ( .A(n253), .B(vn_in_5[4]), .C(n266), .D(vn_in_7[4]), .Y(n236) );
  oa4f2 U171 ( .A(n266), .B(vn_in_7[6]), .C(n253), .D(vn_in_5[6]), .Y(n254) );
  oa4f2 U172 ( .A(n253), .B(vn_in_5[3]), .C(n266), .D(vn_in_7[3]), .Y(n231) );
  oa4f2 U173 ( .A(n266), .B(vn_in_7[0]), .C(n253), .D(vn_in_5[0]), .Y(n212) );
  and2c9 U174 ( .A(n262), .B(mac_cnt[2]), .Y(n269) );
  clk1b6 U175 ( .A(n262), .Y(n252) );
  and2c6 U176 ( .A(n215), .B(mac_cnt[2]), .Y(n257) );
  clk1b6 U177 ( .A(n214), .Y(n256) );
  oa4f2 U178 ( .A(n266), .B(vn_in_7[5]), .C(n253), .D(vn_in_5[5]), .Y(n241) );
  inv1a9 U179 ( .A(n214), .Y(n230) );
  and2c6 U180 ( .A(n270), .B(mac_cnt[1]), .Y(n253) );
  inv1a3 U181 ( .A(n266), .Y(n215) );
  and2a6 U182 ( .A(mac_cnt[1]), .B(mac_cnt[0]), .Y(n266) );
  inv1a9 U183 ( .A(mac_cnt[0]), .Y(n270) );
  and2c3 U184 ( .A(n230), .B(n19), .Y(n208) );
  buf1a9 U185 ( .A(resetn), .Y(n268) );
  or2c3 U186 ( .A(table_1_s1[1]), .B(n186), .Y(n188) );
  and2c3 U187 ( .A(n86), .B(table_1_s1[7]), .Y(n164) );
  and2c3 U188 ( .A(n109), .B(n74), .Y(n186) );
  and2c3 U189 ( .A(n109), .B(n73), .Y(n75) );
  and2c3 U190 ( .A(n109), .B(n71), .Y(n76) );
  and2c3 U191 ( .A(n109), .B(n69), .Y(n79) );
  and2c3 U192 ( .A(n109), .B(n81), .Y(n82) );
  and2c3 U193 ( .A(n109), .B(n67), .Y(n83) );
  and2c6 U194 ( .A(mac_cnt[1]), .B(mac_cnt[0]), .Y(n251) );
  inv1a3 U195 ( .A(mac_cnt[2]), .Y(n265) );
  or2c6 U196 ( .A(n251), .B(n265), .Y(n214) );
  inv1a1 U197 ( .A(n_zz_6[13]), .Y(n6) );
  and2c3 U198 ( .A(n230), .B(n6), .Y(n39) );
  inv1a1 U199 ( .A(n_zz_6[12]), .Y(n7) );
  and2c3 U200 ( .A(n230), .B(n7), .Y(n207) );
  inv1a1 U201 ( .A(n_zz_6[11]), .Y(n8) );
  and2c3 U202 ( .A(n230), .B(n8), .Y(n40) );
  inv1a1 U203 ( .A(n_zz_6[10]), .Y(n9) );
  and2c3 U204 ( .A(n230), .B(n9), .Y(n53) );
  inv1a1 U205 ( .A(n53), .Y(n32) );
  inv1a1 U206 ( .A(n_zz_6[9]), .Y(n10) );
  and2c3 U207 ( .A(n230), .B(n10), .Y(n43) );
  inv1a1 U208 ( .A(n_zz_6[8]), .Y(n11) );
  and2c3 U209 ( .A(n230), .B(n11), .Y(n205) );
  inv1a1 U210 ( .A(n_zz_6[7]), .Y(n12) );
  and2c3 U211 ( .A(n230), .B(n12), .Y(n49) );
  inv1a1 U212 ( .A(n49), .Y(n24) );
  inv1a1 U213 ( .A(n_zz_6[6]), .Y(n13) );
  and2c3 U214 ( .A(n230), .B(n13), .Y(n46) );
  inv1a1 U215 ( .A(n_zz_6[5]), .Y(n14) );
  and2c3 U216 ( .A(n230), .B(n14), .Y(n203) );
  inv1a1 U217 ( .A(n_zz_6[4]), .Y(n15) );
  and2c3 U218 ( .A(n230), .B(n15), .Y(n201) );
  inv1a1 U219 ( .A(n_zz_6[3]), .Y(n16) );
  and2c3 U220 ( .A(n230), .B(n16), .Y(n199) );
  inv1a1 U221 ( .A(n_zz_6[2]), .Y(n17) );
  and2c3 U222 ( .A(n230), .B(n17), .Y(n197) );
  inv1a1 U223 ( .A(n_zz_6[1]), .Y(n18) );
  and2c3 U224 ( .A(n230), .B(n18), .Y(n195) );
  inv1a1 U225 ( .A(n_zz_6[0]), .Y(n19) );
  or2b2 U226 ( .B(n21), .A(table_1_s2[7]), .Y(n22) );
  or2b2 U227 ( .B(n29), .A(table_1_s2[10]), .Y(n30) );
  or2c6 U228 ( .A(n37), .B(n36), .Y(n206) );
  fa1a3 U229 ( .A(n39), .B(table_1_s2[14]), .CI(n38), .CO(
        DP_OP_15J1_135_9881_n10), .S(N91) );
  or2c3 U230 ( .A(n270), .B(mac_cnt[1]), .Y(n262) );
  inv1a1 U231 ( .A(n40), .Y(n42) );
  xor3b3 U232 ( .A(table_1_s2[12]), .B(n42), .C(n41), .Y(N89) );
  xor2b2 U233 ( .A(n43), .B(table_1_s2[10]), .Y(n45) );
  xor2b2 U234 ( .A(n45), .B(n44), .Y(N87) );
  xor2b2 U235 ( .A(n46), .B(table_1_s2[7]), .Y(n48) );
  xor2b2 U236 ( .A(n48), .B(n47), .Y(N84) );
  mx2a6 U237 ( .D0(DP_OP_15J1_135_9881_n7), .D1(DP_OP_15J1_135_9881_n6), .S(
        DP_OP_15J1_135_9881_n10), .Y(DP_OP_15J1_135_9881_n5) );
  xor2b2 U238 ( .A(n49), .B(table_1_s2[8]), .Y(n51) );
  xor2b2 U239 ( .A(n51), .B(n50), .Y(N85) );
  xor2b2 U240 ( .A(n53), .B(table_1_s2[11]), .Y(n55) );
  xor2b2 U241 ( .A(n55), .B(n54), .Y(N88) );
  inv1a1 U242 ( .A(n_zz_5[17]), .Y(n56) );
  inv1a1 U243 ( .A(n_zz_5[5]), .Y(n67) );
  inv1a1 U244 ( .A(n_zz_5[3]), .Y(n69) );
  inv1a1 U245 ( .A(n_zz_5[2]), .Y(n71) );
  inv1a1 U246 ( .A(n_zz_5[1]), .Y(n73) );
  inv1a1 U247 ( .A(n_zz_5[0]), .Y(n74) );
  oa1f3 U248 ( .A(n70), .B(n78), .C(n80), .Y(n175) );
  inv1a1 U249 ( .A(n_zz_5[4]), .Y(n81) );
  oa1f3 U250 ( .A(n68), .B(n171), .C(n84), .Y(n168) );
  oa1f3 U251 ( .A(n162), .B(n88), .C(n90), .Y(n159) );
  oa1f3 U252 ( .A(n148), .B(n97), .C(n96), .Y(n137) );
  oa1f3 U253 ( .A(n65), .B(n138), .C(n100), .Y(n101) );
  ao1f3 U254 ( .A(n102), .B(n137), .C(n101), .Y(n129) );
  inv1a1 U255 ( .A(n_zz_5[16]), .Y(n107) );
  oa1f3 U256 ( .A(n143), .B(n63), .C(n138), .Y(n141) );
  inv1a1 U257 ( .A(n_zz_6[15]), .Y(n190) );
  and2c3 U258 ( .A(n230), .B(n190), .Y(DP_OP_15J1_135_9881_n26) );
  inv1a1 U259 ( .A(n_zz_6[14]), .Y(n191) );
  and2c3 U260 ( .A(n230), .B(n191), .Y(DP_OP_15J1_135_9881_n27) );
  inv1a1 U261 ( .A(n_zz_6[17]), .Y(n192) );
  and2c3 U262 ( .A(n230), .B(n192), .Y(DP_OP_15J1_135_9881_n24) );
  inv1a1 U263 ( .A(n_zz_6[16]), .Y(n193) );
  and2c3 U264 ( .A(n230), .B(n193), .Y(DP_OP_15J1_135_9881_n25) );
  fa1a2 U265 ( .A(n195), .B(n194), .CI(table_1_s2[2]), .CO(n196), .S(N79) );
  fa1a2 U266 ( .A(n197), .B(n196), .CI(table_1_s2[3]), .CO(n198), .S(N80) );
  fa1a2 U267 ( .A(n199), .B(n198), .CI(table_1_s2[4]), .CO(n200), .S(N81) );
  fa1a2 U268 ( .A(n201), .B(table_1_s2[5]), .CI(n200), .CO(n202), .S(N82) );
  fa1a2 U269 ( .A(n203), .B(table_1_s2[6]), .CI(n202), .CO(n47), .S(N83) );
  buf1a6 U270 ( .A(resetn), .Y(n267) );
  inv1a1 U271 ( .A(mac_en), .Y(n209) );
  and2c1 U272 ( .A(n269), .B(n209), .Y(n210) );
  ao1f2 U273 ( .A(vn_vld), .B(n210), .C(en), .Y(n211) );
  inv1a1 U274 ( .A(n211), .Y(n52) );
  oa4f3 U275 ( .A(n252), .B(vn_in_6[0]), .C(n251), .D(vn_in_4[0]), .Y(n213) );
  oa4f3 U276 ( .A(n256), .B(vn_in_0[0]), .C(n269), .D(vn_in_2[0]), .Y(n217) );
  clk1b6 U277 ( .A(n253), .Y(n263) );
  oa4f3 U278 ( .A(n258), .B(vn_in_1[0]), .C(n257), .D(vn_in_3[0]), .Y(n216) );
  or3d3 U279 ( .A(n218), .B(n217), .C(n216), .Y(n_zz_4[0]) );
  oa4f3 U280 ( .A(n256), .B(vn_in_0[1]), .C(n269), .D(vn_in_2[1]), .Y(n223) );
  oa4f3 U281 ( .A(n258), .B(vn_in_1[1]), .C(n257), .D(vn_in_3[1]), .Y(n222) );
  oa4f3 U282 ( .A(n252), .B(vn_in_6[1]), .C(n251), .D(vn_in_4[1]), .Y(n220) );
  oa4f1 U283 ( .A(n253), .B(vn_in_5[1]), .C(n266), .D(vn_in_7[1]), .Y(n219) );
  ao1d1 U284 ( .A(n220), .B(n219), .C(mac_cnt[2]), .Y(n221) );
  or3d3 U285 ( .A(n223), .B(n222), .C(n221), .Y(n_zz_4[1]) );
  oa4f3 U286 ( .A(n252), .B(vn_in_6[2]), .C(n251), .D(vn_in_4[2]), .Y(n225) );
  oa4f3 U287 ( .A(n256), .B(vn_in_0[2]), .C(n269), .D(vn_in_2[2]), .Y(n228) );
  inv1a2 U288 ( .A(n257), .Y(n264) );
  inv1a1 U289 ( .A(vn_in_3[2]), .Y(n226) );
  oa4c3 U290 ( .A(n258), .B(vn_in_1[2]), .C(n264), .D(n226), .Y(n227) );
  or3d3 U291 ( .A(n229), .B(n228), .C(n227), .Y(n_zz_4[2]) );
  oa4f3 U292 ( .A(n230), .B(vn_in_0[3]), .C(n269), .D(vn_in_2[3]), .Y(n235) );
  oa4f3 U293 ( .A(n258), .B(vn_in_1[3]), .C(n257), .D(vn_in_3[3]), .Y(n233) );
  or3d3 U294 ( .A(n235), .B(n234), .C(n233), .Y(n_zz_4[3]) );
  oa4f3 U295 ( .A(n256), .B(vn_in_0[4]), .C(n269), .D(vn_in_2[4]), .Y(n239) );
  oa4f3 U296 ( .A(n258), .B(vn_in_1[4]), .C(n257), .D(vn_in_3[4]), .Y(n238) );
  oa4f3 U297 ( .A(n256), .B(vn_in_0[5]), .C(n269), .D(vn_in_2[5]), .Y(n244) );
  oa4f3 U298 ( .A(n258), .B(vn_in_1[5]), .C(n257), .D(vn_in_3[5]), .Y(n243) );
  oa4f3 U299 ( .A(n266), .B(vn_in_7[7]), .C(n253), .D(vn_in_5[7]), .Y(n246) );
  ao1d2 U300 ( .A(n247), .B(n246), .C(mac_cnt[2]), .Y(n250) );
  oa4f3 U301 ( .A(n256), .B(vn_in_0[7]), .C(n269), .D(vn_in_2[7]), .Y(n249) );
  oa4f3 U302 ( .A(n258), .B(vn_in_1[7]), .C(n257), .D(vn_in_3[7]), .Y(n248) );
  oa4f3 U303 ( .A(n256), .B(vn_in_0[6]), .C(n269), .D(vn_in_2[6]), .Y(n260) );
  oa4f3 U304 ( .A(n258), .B(vn_in_1[6]), .C(n257), .D(vn_in_3[6]), .Y(n259) );
  or2c1 U305 ( .A(n263), .B(n262), .Y(N55) );
  ao1f1 U306 ( .A(n266), .B(n265), .C(n264), .Y(N56) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cordic_int_0 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net5350;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net5350) );
  and2a3 main_gate ( .A(net5350), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cordic_int_2 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net5350;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net5350) );
  and2a3 main_gate ( .A(net5350), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cordic_int_1 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net5350;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net5350) );
  and2a3 main_gate ( .A(net5350), .B(CLK), .Y(ENCLK) );
endmodule


module cordic_int ( en, vld, y, x, res, res_vld, clk, resetn );
  input [15:0] y;
  input [15:0] x;
  output [6:0] res;
  input en, vld, clk, resetn;
  output res_vld;
  wire   n_zz_9_1_, xn_rightshift_21_, cal_en, N228, N229, N230, N231, N232,
         N238, N239, N240, N241, N242, N243, N244, N245, N246, N247, N248,
         N249, N250, N252, N253, N254, N255, N258, N259, N260, N261, N262,
         N263, N270, N271, N272, N273, N274, N275, N276, N277, N278, N279,
         N280, N281, N288, N289, net5356, net5361, net5366, n112, n113, n114,
         DP_OP_37J1_122_9418_n18, DP_OP_37J1_122_9418_n17,
         DP_OP_37J1_122_9418_n16, DP_OP_37J1_122_9418_n15,
         DP_OP_37J1_122_9418_n14, DP_OP_37J1_122_9418_n6,
         DP_OP_37J1_122_9418_n5, DP_OP_37J1_122_9418_n4,
         DP_OP_37J1_122_9418_n3, DP_OP_37J1_122_9418_n2, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n557,
         n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, n568,
         n569, n570, n571, n572, n573, n574, n575, n576, n577, n578, n579,
         n580, n581, n582, n583, n584, n585, n586, n587, n588, n589, n590,
         n591, n592, n593, n594, n595, n596, n597, n598, n599, n600, n601,
         n602, n603, n604, n605, n606, n607, n608, n609, n610, n611, n612,
         n613, n614, n615, n616, n617, n618, n619, n620, n621, n622, n623,
         n624, n625, n626, n627, n628, n629, n630, n631, n632, n633, n634,
         n635, n636, n637, n638, n639, n640, n641, n642, n643, n644, n645,
         n646, n647, n648, n649, n650, n651, n652, n653, n654, n655, n656,
         n657, n658, n659, n660, n661, n662, n663, n664, n665, n666, n667,
         n668, n669, n670, n671, n672, n673, n674, n675, n676, n677, n678,
         n679, n680, n681, n682, n683, n684, n685, n686, n687;
  wire   [1:0] n_zz_5;
  wire   [20:0] xn;
  wire   [20:0] yn;

  SNPS_CLOCK_GATE_HIGH_cordic_int_0 clk_gate_xn_reg ( .CLK(clk), .EN(N288), 
        .ENCLK(net5356) );
  SNPS_CLOCK_GATE_HIGH_cordic_int_2 clk_gate_nozero_flg_reg ( .CLK(clk), .EN(
        cal_en), .ENCLK(net5361) );
  SNPS_CLOCK_GATE_HIGH_cordic_int_1 clk_gate_res_rg_reg ( .CLK(clk), .EN(N289), 
        .ENCLK(net5366) );
  fdf2a3 cal_en_reg ( .D(n114), .CLK(clk), .CLR(n685), .Q(cal_en) );
  fdf2a3 cal_cnt_reg_0_ ( .D(n687), .CLK(net5361), .CLR(resetn), .Q(n_zz_5[0])
         );
  fdf2a3 cal_cnt_reg_1_ ( .D(n_zz_9_1_), .CLK(net5361), .CLR(n686), .Q(
        n_zz_5[1]) );
  fdf2a3 xn_reg_0_ ( .D(n682), .CLK(net5356), .CLR(resetn), .Q(xn[0]) );
  fdf2a3 xn_reg_1_ ( .D(n680), .CLK(net5356), .CLR(resetn), .Q(xn[1]) );
  fdf2a3 xn_reg_2_ ( .D(n679), .CLK(net5356), .CLR(resetn), .Q(xn[2]) );
  fdf2a3 xn_reg_3_ ( .D(n678), .CLK(net5356), .CLR(n683), .Q(xn[3]) );
  fdf2a3 xn_reg_4_ ( .D(N270), .CLK(net5356), .CLR(n685), .Q(xn[4]) );
  fdf2a3 xn_reg_5_ ( .D(N271), .CLK(net5356), .CLR(n686), .Q(xn[5]) );
  fdf2a3 xn_reg_6_ ( .D(N272), .CLK(net5356), .CLR(n683), .Q(xn[6]) );
  fdf2a3 xn_reg_7_ ( .D(N273), .CLK(net5356), .CLR(n685), .Q(xn[7]) );
  fdf2a3 xn_reg_8_ ( .D(N274), .CLK(net5356), .CLR(n686), .Q(xn[8]) );
  fdf2a3 xn_reg_9_ ( .D(N275), .CLK(net5356), .CLR(n683), .Q(xn[9]) );
  fdf2a3 xn_reg_10_ ( .D(N276), .CLK(net5356), .CLR(n685), .Q(xn[10]) );
  fdf2a3 xn_reg_11_ ( .D(N277), .CLK(net5356), .CLR(n686), .Q(xn[11]) );
  fdf2a3 xn_reg_12_ ( .D(N278), .CLK(net5356), .CLR(n683), .Q(xn[12]) );
  fdf2a3 xn_reg_13_ ( .D(N279), .CLK(net5356), .CLR(n685), .Q(xn[13]) );
  fdf2a3 xn_reg_14_ ( .D(N280), .CLK(net5356), .CLR(n686), .Q(xn[14]) );
  fdf2a3 xn_reg_15_ ( .D(N281), .CLK(net5356), .CLR(n686), .Q(xn[15]) );
  fdf2a3 xn_reg_16_ ( .D(n597), .CLK(net5356), .CLR(n686), .Q(xn[16]) );
  fdf2a3 xn_reg_17_ ( .D(n591), .CLK(net5356), .CLR(n686), .Q(xn[17]) );
  fdf2a3 xn_reg_18_ ( .D(n584), .CLK(net5356), .CLR(n684), .Q(xn[18]) );
  fdf2a3 xn_reg_19_ ( .D(n674), .CLK(net5356), .CLR(n684), .Q(xn[19]) );
  fdf2a3 xn_reg_20_ ( .D(n673), .CLK(net5356), .CLR(n684), .Q(xn[20]) );
  fdf2a3 xn_reg_21_ ( .D(n672), .CLK(net5356), .CLR(n684), .Q(
        xn_rightshift_21_) );
  fdf2a3 yn_reg_0_ ( .D(n681), .CLK(net5356), .CLR(n684), .Q(yn[0]) );
  fdf2a3 yn_reg_1_ ( .D(n677), .CLK(net5356), .CLR(n684), .Q(yn[1]) );
  fdf2a3 yn_reg_2_ ( .D(n676), .CLK(net5356), .CLR(n684), .Q(yn[2]) );
  fdf2a3 yn_reg_3_ ( .D(n675), .CLK(net5356), .CLR(n683), .Q(yn[3]) );
  fdf2a3 yn_reg_4_ ( .D(N238), .CLK(net5356), .CLR(n685), .Q(yn[4]) );
  fdf2a3 yn_reg_5_ ( .D(N239), .CLK(net5356), .CLR(n686), .Q(yn[5]) );
  fdf2a3 yn_reg_6_ ( .D(N240), .CLK(net5356), .CLR(n683), .Q(yn[6]) );
  fdf2a3 yn_reg_7_ ( .D(N241), .CLK(net5356), .CLR(n685), .Q(yn[7]) );
  fdf2a3 yn_reg_8_ ( .D(N242), .CLK(net5356), .CLR(n686), .Q(yn[8]) );
  fdf2a3 yn_reg_9_ ( .D(N243), .CLK(net5356), .CLR(n683), .Q(yn[9]) );
  fdf2a3 yn_reg_10_ ( .D(N244), .CLK(net5356), .CLR(n685), .Q(yn[10]) );
  fdf2a3 yn_reg_11_ ( .D(N245), .CLK(net5356), .CLR(n686), .Q(yn[11]) );
  fdf2a3 yn_reg_12_ ( .D(N246), .CLK(net5356), .CLR(n683), .Q(yn[12]) );
  fdf2a3 yn_reg_13_ ( .D(N247), .CLK(net5356), .CLR(n685), .Q(yn[13]) );
  fdf2a3 yn_reg_14_ ( .D(N248), .CLK(net5356), .CLR(n686), .Q(yn[14]) );
  fdf2a3 yn_reg_15_ ( .D(N249), .CLK(net5356), .CLR(n683), .Q(yn[15]) );
  fdf2a3 yn_reg_16_ ( .D(N250), .CLK(net5356), .CLR(n685), .Q(yn[16]) );
  fdf2a3 yn_reg_17_ ( .D(n496), .CLK(net5356), .CLR(n686), .Q(yn[17]) );
  fdf2a3 yn_reg_18_ ( .D(N252), .CLK(net5356), .CLR(n683), .Q(yn[18]) );
  fdf2a3 yn_reg_19_ ( .D(N253), .CLK(net5356), .CLR(n685), .Q(yn[19]) );
  fdf2a3 yn_reg_20_ ( .D(N254), .CLK(net5356), .CLR(n686), .Q(yn[20]) );
  fdf2a3 res_rg_reg_6_ ( .D(N263), .CLK(net5366), .CLR(n683), .Q(res[6]) );
  fdf2a3 nozero_flg_reg ( .D(n113), .CLK(net5361), .CLR(n686), .Q(n112) );
  fa1a2 DP_OP_37J1_122_9418_U7 ( .A(res[1]), .B(DP_OP_37J1_122_9418_n17), .CI(
        DP_OP_37J1_122_9418_n18), .CO(DP_OP_37J1_122_9418_n6), .S(N228) );
  fa1a2 DP_OP_37J1_122_9418_U6 ( .A(res[2]), .B(DP_OP_37J1_122_9418_n16), .CI(
        DP_OP_37J1_122_9418_n6), .CO(DP_OP_37J1_122_9418_n5), .S(N229) );
  fa1a2 DP_OP_37J1_122_9418_U5 ( .A(res[3]), .B(DP_OP_37J1_122_9418_n15), .CI(
        DP_OP_37J1_122_9418_n5), .CO(DP_OP_37J1_122_9418_n4), .S(N230) );
  fa1a2 DP_OP_37J1_122_9418_U4 ( .A(res[4]), .B(DP_OP_37J1_122_9418_n14), .CI(
        DP_OP_37J1_122_9418_n4), .CO(DP_OP_37J1_122_9418_n3), .S(N231) );
  fa1a2 DP_OP_37J1_122_9418_U3 ( .A(res[5]), .B(DP_OP_37J1_122_9418_n18), .CI(
        DP_OP_37J1_122_9418_n3), .CO(DP_OP_37J1_122_9418_n2), .S(N232) );
  fdf2a6 yn_reg_21_ ( .D(N255), .CLK(net5356), .CLR(n684), .Q(
        DP_OP_37J1_122_9418_n18) );
  fdf2a3 res_rg_reg_1_ ( .D(N258), .CLK(net5366), .CLR(n684), .Q(res[1]) );
  fdf2a3 res_rg_reg_2_ ( .D(N259), .CLK(net5366), .CLR(n686), .Q(res[2]) );
  fdf2a3 res_rg_reg_3_ ( .D(N260), .CLK(net5366), .CLR(n684), .Q(res[3]) );
  fdf2a3 res_rg_reg_4_ ( .D(N261), .CLK(net5366), .CLR(resetn), .Q(res[4]) );
  fdf2a3 res_rg_reg_5_ ( .D(N262), .CLK(net5366), .CLR(n684), .Q(res[5]) );
  or2c1 U3 ( .A(n187), .B(n186), .Y(n498) );
  or2c1 U4 ( .A(n388), .B(n387), .Y(n612) );
  oa1f3 U5 ( .A(n543), .B(n134), .C(n137), .Y(n539) );
  inv1a9 U6 ( .A(n436), .Y(n425) );
  inv1a1 U7 ( .A(n217), .Y(n79) );
  clk1b6 U8 ( .A(n436), .Y(n225) );
  and2c1 U9 ( .A(n432), .B(n73), .Y(n74) );
  inv1a3 U10 ( .A(n423), .Y(n5) );
  and2c6 U11 ( .A(n_zz_5[1]), .B(n_zz_5[0]), .Y(n482) );
  ao1f2 U12 ( .A(n425), .B(n313), .C(n312), .Y(n315) );
  or2c1 U13 ( .A(n171), .B(n170), .Y(n511) );
  or2c1 U14 ( .A(n160), .B(n159), .Y(n523) );
  inv1a1 U15 ( .A(x[15]), .Y(n33) );
  ao1f2 U16 ( .A(n478), .B(n474), .C(n475), .Y(n220) );
  ao1f2 U17 ( .A(n589), .B(n585), .C(n586), .Y(n581) );
  ao1f2 U18 ( .A(n658), .B(n320), .C(n319), .Y(n655) );
  or2c1 U19 ( .A(n455), .B(n243), .Y(n253) );
  or2a3 U20 ( .A(n222), .B(n671), .Y(n578) );
  or2a1 U21 ( .A(n309), .B(n317), .Y(n1) );
  or2a1 U22 ( .A(n243), .B(n455), .Y(n2) );
  or2a6 U23 ( .A(n482), .B(n112), .Y(n224) );
  ao1a1 U24 ( .A(n576), .B(y[13]), .C(n495), .Y(n496) );
  oa1f3 U25 ( .A(n6), .B(yn[10]), .C(n339), .Y(n340) );
  oa1f2 U26 ( .A(n6), .B(xn[10]), .C(n122), .Y(n124) );
  and2a3 U27 ( .A(n450), .B(yn[4]), .Y(n72) );
  and2a3 U28 ( .A(n450), .B(yn[5]), .Y(n92) );
  and2a1 U29 ( .A(n380), .B(xn[5]), .Y(n309) );
  ao1a3 U30 ( .A(n668), .B(x[12]), .C(n596), .Y(n597) );
  ao1f3 U31 ( .A(n539), .B(n535), .C(n536), .Y(n531) );
  ao1d1 U32 ( .A(n230), .B(n450), .C(n229), .Y(N263) );
  ao1f2 U33 ( .A(n425), .B(n307), .C(n306), .Y(n308) );
  oa1f3 U34 ( .A(n6), .B(xn[13]), .C(n146), .Y(n148) );
  or3d6 U35 ( .A(n481), .B(n482), .C(n222), .Y(n237) );
  inv1a2 U36 ( .A(n_zz_5[1]), .Y(n42) );
  ao1a3 U37 ( .A(n668), .B(x[14]), .C(n583), .Y(n584) );
  ao1a3 U38 ( .A(n668), .B(x[13]), .C(n590), .Y(n591) );
  ao1f3 U39 ( .A(n562), .B(n558), .C(n559), .Y(n554) );
  or2a1 U40 ( .A(n170), .B(n171), .Y(n510) );
  ao4f3 U41 ( .A(n224), .B(n426), .C(n425), .D(n424), .Y(n427) );
  and2a3 U42 ( .A(n448), .B(n249), .Y(n250) );
  oa1f3 U43 ( .A(n6), .B(xn[16]), .C(n43), .Y(n45) );
  or2a3 U44 ( .A(n224), .B(n449), .Y(n236) );
  inv1a3 U45 ( .A(DP_OP_37J1_122_9418_n18), .Y(n449) );
  clk1b6 U46 ( .A(n226), .Y(n3) );
  or2c2 U47 ( .A(n436), .B(x[15]), .Y(n467) );
  buf1a9 U48 ( .A(n224), .Y(n350) );
  and3d3 U49 ( .A(x[0]), .B(x[14]), .C(x[13]), .Y(n15) );
  inv1a9 U50 ( .A(n483), .Y(n4) );
  or2b2 U51 ( .B(n223), .A(n479), .Y(N255) );
  xor2b2 U52 ( .A(n221), .B(n220), .Y(n223) );
  or2b2 U53 ( .B(n480), .A(n479), .Y(N254) );
  or2b2 U54 ( .B(n447), .A(n479), .Y(N253) );
  oa1f3 U55 ( .A(n668), .B(x[11]), .C(n603), .Y(n604) );
  oa1f3 U56 ( .A(n594), .B(n593), .C(n412), .Y(n589) );
  oa1f3 U57 ( .A(n668), .B(x[10]), .C(n609), .Y(n610) );
  ao1f3 U58 ( .A(n602), .B(n598), .C(n599), .Y(n594) );
  oa1f2 U59 ( .A(n576), .B(y[10]), .C(n514), .Y(n515) );
  oa1f3 U60 ( .A(n576), .B(y[9]), .C(n520), .Y(n521) );
  oa1f3 U61 ( .A(n668), .B(x[9]), .C(n616), .Y(n617) );
  oa1f3 U62 ( .A(n668), .B(x[8]), .C(n622), .Y(n623) );
  oa1f3 U63 ( .A(n576), .B(y[8]), .C(n527), .Y(n528) );
  oa1f3 U64 ( .A(n668), .B(x[7]), .C(n629), .Y(n630) );
  oa1f3 U65 ( .A(n576), .B(y[7]), .C(n533), .Y(n534) );
  oa1f3 U66 ( .A(n576), .B(y[6]), .C(n540), .Y(n541) );
  oa1f3 U67 ( .A(n668), .B(x[6]), .C(n635), .Y(n636) );
  oa1f3 U68 ( .A(n668), .B(x[5]), .C(n642), .Y(n643) );
  ao1f3 U69 ( .A(n641), .B(n637), .C(n638), .Y(n633) );
  oa1f3 U70 ( .A(n576), .B(y[4]), .C(n551), .Y(n552) );
  oa1f3 U71 ( .A(n576), .B(y[3]), .C(n556), .Y(n557) );
  oa1f3 U72 ( .A(n576), .B(y[2]), .C(n563), .Y(n564) );
  oa1f3 U73 ( .A(n576), .B(y[1]), .C(n568), .Y(n569) );
  oa1f3 U74 ( .A(n566), .B(n98), .C(n100), .Y(n562) );
  ao1f2 U75 ( .A(n292), .B(n295), .C(n297), .Y(n293) );
  and2c3 U76 ( .A(n471), .B(n470), .Y(n472) );
  or2a1 U77 ( .A(n344), .B(n345), .Y(n343) );
  or2a1 U78 ( .A(n135), .B(n136), .Y(n134) );
  or2a1 U79 ( .A(n92), .B(n99), .Y(n98) );
  or2a1 U80 ( .A(n108), .B(n119), .Y(n118) );
  or2a1 U81 ( .A(n321), .B(n328), .Y(n327) );
  or2a3 U82 ( .A(n72), .B(n88), .Y(n80) );
  ao1f2 U83 ( .A(n225), .B(n77), .C(n76), .Y(n78) );
  and2a1 U84 ( .A(n448), .B(n241), .Y(n242) );
  and2a1 U85 ( .A(n288), .B(n287), .Y(n289) );
  and2a1 U86 ( .A(n448), .B(n85), .Y(n86) );
  and2a1 U87 ( .A(n448), .B(n275), .Y(n276) );
  and2a1 U88 ( .A(n448), .B(n58), .Y(n59) );
  oa1f2 U89 ( .A(n6), .B(yn[8]), .C(n323), .Y(n324) );
  and2a1 U90 ( .A(n288), .B(n65), .Y(n66) );
  and2a1 U91 ( .A(n448), .B(n52), .Y(n53) );
  oa1f2 U92 ( .A(n6), .B(xn[8]), .C(n103), .Y(n105) );
  and2a3 U93 ( .A(n448), .B(yn[1]), .Y(n54) );
  and2a3 U94 ( .A(n380), .B(xn[3]), .Y(n283) );
  and2a3 U95 ( .A(n288), .B(xn[2]), .Y(n271) );
  and2a3 U96 ( .A(n448), .B(xn[0]), .Y(n243) );
  and2a3 U97 ( .A(n448), .B(yn[3]), .Y(n81) );
  and2a1 U98 ( .A(n450), .B(yn[2]), .Y(n47) );
  and2a3 U99 ( .A(n288), .B(xn[1]), .Y(n245) );
  and2a3 U100 ( .A(n380), .B(xn[6]), .Y(n321) );
  and2a1 U101 ( .A(n450), .B(yn[6]), .Y(n101) );
  and2a3 U102 ( .A(n450), .B(yn[7]), .Y(n108) );
  and2a3 U103 ( .A(n448), .B(yn[0]), .Y(n60) );
  and2a3 U104 ( .A(n380), .B(xn[7]), .Y(n330) );
  and2a3 U105 ( .A(n380), .B(xn[4]), .Y(n302) );
  and2a3 U106 ( .A(n225), .B(n224), .Y(n226) );
  and2c2 U107 ( .A(n481), .B(n671), .Y(n113) );
  inv1a3 U108 ( .A(n32), .Y(n34) );
  and2c3 U109 ( .A(n17), .B(n16), .Y(n32) );
  and2c2 U110 ( .A(n482), .B(n6), .Y(n_zz_9_1_) );
  clk1b6 U111 ( .A(n61), .Y(n41) );
  or2c3 U112 ( .A(n42), .B(n_zz_5[0]), .Y(n483) );
  inv1a3 U113 ( .A(n482), .Y(n671) );
  or2c3 U114 ( .A(n_zz_5[1]), .B(n_zz_5[0]), .Y(n423) );
  ao1f2 U115 ( .A(cal_en), .B(vld), .C(en), .Y(n227) );
  clk1b6 U116 ( .A(n423), .Y(n6) );
  inv1a1 U117 ( .A(n483), .Y(n7) );
  ao1f2 U118 ( .A(n425), .B(n325), .C(n324), .Y(n326) );
  ao1f2 U119 ( .A(n425), .B(n335), .C(n334), .Y(n336) );
  ao1f2 U120 ( .A(n425), .B(n341), .C(n340), .Y(n342) );
  and2a1 U121 ( .A(N230), .B(n450), .Y(N260) );
  or2a3 U122 ( .A(n302), .B(n316), .Y(n665) );
  clk1b6 U123 ( .A(n224), .Y(n288) );
  buf1a6 U124 ( .A(n61), .Y(n435) );
  and2a1 U125 ( .A(N228), .B(n450), .Y(N258) );
  and2a1 U126 ( .A(N229), .B(n450), .Y(N259) );
  and2a1 U127 ( .A(N231), .B(n450), .Y(N261) );
  or2c3 U128 ( .A(n576), .B(y[15]), .Y(n479) );
  or2a3 U129 ( .A(n81), .B(n87), .Y(n571) );
  oa1f1 U130 ( .A(n1), .B(n659), .C(n318), .Y(n319) );
  inv1a3 U131 ( .A(n301), .Y(n292) );
  ao1f2 U132 ( .A(n270), .B(n269), .C(n268), .Y(n301) );
  ao4f1 U133 ( .A(n41), .B(n431), .C(n452), .D(n421), .Y(n422) );
  ao4f1 U134 ( .A(n41), .B(n196), .C(n452), .D(n188), .Y(n189) );
  ao4f1 U135 ( .A(n41), .B(n404), .C(n452), .D(n397), .Y(n398) );
  ao4f1 U136 ( .A(n41), .B(n172), .C(n452), .D(n161), .Y(n43) );
  ao4f1 U137 ( .A(n41), .B(n381), .C(n452), .D(n372), .Y(n373) );
  ao4f1 U138 ( .A(n41), .B(n153), .C(n452), .D(n145), .Y(n146) );
  ao4f1 U139 ( .A(n41), .B(n128), .C(n452), .D(n121), .Y(n122) );
  ao4f1 U140 ( .A(n41), .B(n347), .C(n452), .D(n338), .Y(n339) );
  ao4f1 U141 ( .A(n41), .B(n109), .C(n432), .D(n102), .Y(n103) );
  ao4f1 U142 ( .A(n41), .B(n331), .C(n432), .D(n322), .Y(n323) );
  buf1a9 U143 ( .A(resetn), .Y(n686) );
  ao1f2 U144 ( .A(n225), .B(n132), .C(n131), .Y(n133) );
  ao1f2 U145 ( .A(n425), .B(n200), .C(n199), .Y(n201) );
  or3d1 U146 ( .A(n33), .B(n25), .C(n24), .Y(n29) );
  and2c3 U147 ( .A(n298), .B(n295), .Y(n300) );
  ao1f1 U148 ( .A(n298), .B(n297), .C(n296), .Y(n299) );
  or2c3 U149 ( .A(n277), .B(n271), .Y(n297) );
  ao1f1 U150 ( .A(n265), .B(n264), .C(n263), .Y(n266) );
  ao1f1 U151 ( .A(n260), .B(n263), .C(n261), .Y(n70) );
  inv1a1 U152 ( .A(n236), .Y(n466) );
  clk1b6 U153 ( .A(n224), .Y(n450) );
  and2a3 U154 ( .A(n450), .B(xn_rightshift_21_), .Y(n471) );
  inv1a1 U155 ( .A(n471), .Y(n35) );
  and2c3 U156 ( .A(x[4]), .B(x[3]), .Y(n9) );
  and2c3 U157 ( .A(x[2]), .B(x[1]), .Y(n8) );
  and2a3 U158 ( .A(n9), .B(n8), .Y(n12) );
  and2c3 U159 ( .A(x[8]), .B(x[7]), .Y(n11) );
  and2c3 U160 ( .A(x[6]), .B(x[5]), .Y(n10) );
  or3d3 U161 ( .A(n12), .B(n11), .C(n10), .Y(n17) );
  and2c3 U162 ( .A(x[12]), .B(x[11]), .Y(n14) );
  and2c3 U163 ( .A(x[10]), .B(x[9]), .Y(n13) );
  or3d3 U164 ( .A(n15), .B(n14), .C(n13), .Y(n16) );
  and2c1 U165 ( .A(y[13]), .B(y[12]), .Y(n19) );
  and2c1 U166 ( .A(y[11]), .B(y[10]), .Y(n18) );
  or2c1 U167 ( .A(n19), .B(n18), .Y(n23) );
  and2c1 U168 ( .A(y[9]), .B(y[8]), .Y(n21) );
  and2c1 U169 ( .A(y[7]), .B(y[6]), .Y(n20) );
  or2c1 U170 ( .A(n21), .B(n20), .Y(n22) );
  and2c3 U171 ( .A(n23), .B(n22), .Y(n31) );
  and2c1 U172 ( .A(y[1]), .B(y[0]), .Y(n25) );
  and2c1 U173 ( .A(y[15]), .B(y[14]), .Y(n24) );
  and2c1 U174 ( .A(y[5]), .B(y[4]), .Y(n27) );
  and2c1 U175 ( .A(y[3]), .B(y[2]), .Y(n26) );
  or2c1 U176 ( .A(n27), .B(n26), .Y(n28) );
  and2c3 U177 ( .A(n29), .B(n28), .Y(n30) );
  or3d3 U178 ( .A(n32), .B(n31), .C(n30), .Y(n481) );
  or2c3 U179 ( .A(n34), .B(n33), .Y(n222) );
  clk1b6 U180 ( .A(n237), .Y(n436) );
  or2c3 U181 ( .A(n436), .B(y[15]), .Y(n229) );
  or2c1 U182 ( .A(n35), .B(n229), .Y(n37) );
  or2a1 U183 ( .A(n224), .B(DP_OP_37J1_122_9418_n18), .Y(n36) );
  or2c3 U184 ( .A(n237), .B(n36), .Y(n48) );
  buf1a6 U185 ( .A(n48), .Y(n208) );
  xor2a2 U186 ( .A(n37), .B(n208), .Y(n38) );
  or2a1 U187 ( .A(n466), .B(n38), .Y(n40) );
  or2c1 U188 ( .A(n38), .B(n466), .Y(n39) );
  or2c1 U189 ( .A(n40), .B(n39), .Y(n221) );
  clk1b6 U190 ( .A(n224), .Y(n380) );
  and2a3 U191 ( .A(n380), .B(yn[14]), .Y(n170) );
  and2c3 U192 ( .A(n42), .B(n_zz_5[0]), .Y(n61) );
  inv1a1 U193 ( .A(xn[15]), .Y(n172) );
  clk1b6 U194 ( .A(n7), .Y(n452) );
  inv1a1 U195 ( .A(xn[14]), .Y(n161) );
  inv1a1 U196 ( .A(y[10]), .Y(n44) );
  ao4f3 U197 ( .A(n350), .B(n45), .C(n225), .D(n44), .Y(n46) );
  xor2a2 U198 ( .A(n46), .B(n208), .Y(n171) );
  buf1a9 U199 ( .A(n48), .Y(n217) );
  or2c1 U200 ( .A(n4), .B(xn[2]), .Y(n51) );
  or2c1 U201 ( .A(n484), .B(xn[3]), .Y(n50) );
  or2c1 U202 ( .A(n5), .B(xn[4]), .Y(n49) );
  or3d1 U203 ( .A(n51), .B(n50), .C(n49), .Y(n52) );
  xor2a2 U204 ( .A(n217), .B(n53), .Y(n69) );
  and2c3 U205 ( .A(n47), .B(n69), .Y(n260) );
  inv1a3 U206 ( .A(n224), .Y(n448) );
  or2c1 U207 ( .A(n7), .B(xn[1]), .Y(n57) );
  or2c1 U208 ( .A(n484), .B(xn[2]), .Y(n56) );
  or2c1 U209 ( .A(n5), .B(xn[3]), .Y(n55) );
  or3d1 U210 ( .A(n57), .B(n56), .C(n55), .Y(n58) );
  xor2a2 U211 ( .A(n217), .B(n59), .Y(n68) );
  and2c3 U212 ( .A(n54), .B(n68), .Y(n264) );
  and2c3 U213 ( .A(n260), .B(n264), .Y(n71) );
  and2c3 U214 ( .A(n60), .B(n217), .Y(n231) );
  or2c1 U215 ( .A(n4), .B(xn[0]), .Y(n64) );
  clk1a3 U216 ( .A(n61), .Y(n484) );
  or2c1 U217 ( .A(n484), .B(xn[1]), .Y(n63) );
  or2c1 U218 ( .A(n6), .B(xn[2]), .Y(n62) );
  or3d1 U219 ( .A(n64), .B(n63), .C(n62), .Y(n65) );
  xor2a2 U220 ( .A(n217), .B(n66), .Y(n235) );
  inv1a1 U221 ( .A(n235), .Y(n67) );
  or2c1 U222 ( .A(n217), .B(n60), .Y(n232) );
  ao1f2 U223 ( .A(n231), .B(n67), .C(n232), .Y(n258) );
  or2c1 U224 ( .A(n68), .B(n54), .Y(n263) );
  or2c1 U225 ( .A(n69), .B(n47), .Y(n261) );
  oa1f3 U226 ( .A(n71), .B(n258), .C(n70), .Y(n281) );
  inv1a1 U227 ( .A(y[0]), .Y(n77) );
  clk1b6 U228 ( .A(n5), .Y(n413) );
  inv1a1 U229 ( .A(xn[6]), .Y(n102) );
  and2c1 U230 ( .A(n413), .B(n102), .Y(n75) );
  buf1a6 U231 ( .A(n452), .Y(n432) );
  inv1a1 U232 ( .A(xn[4]), .Y(n73) );
  oa2i2 U233 ( .A(xn[5]), .B(n484), .C(n75), .D(n74), .Y(n76) );
  xor2b2 U234 ( .A(n79), .B(n78), .Y(n88) );
  or2c1 U235 ( .A(n4), .B(xn[3]), .Y(n84) );
  or2c1 U236 ( .A(n484), .B(xn[4]), .Y(n83) );
  or2c1 U237 ( .A(n5), .B(xn[5]), .Y(n82) );
  or3d1 U238 ( .A(n84), .B(n83), .C(n82), .Y(n85) );
  xor2a2 U239 ( .A(n217), .B(n86), .Y(n87) );
  or2c1 U240 ( .A(n80), .B(n571), .Y(n91) );
  or2c1 U241 ( .A(n87), .B(n81), .Y(n280) );
  inv1a1 U242 ( .A(n280), .Y(n570) );
  or2c1 U243 ( .A(n88), .B(n72), .Y(n573) );
  inv1a1 U244 ( .A(n573), .Y(n89) );
  oa1f3 U245 ( .A(n80), .B(n570), .C(n89), .Y(n90) );
  ao1f3 U246 ( .A(n281), .B(n91), .C(n90), .Y(n566) );
  inv1a1 U247 ( .A(xn[7]), .Y(n109) );
  and2c1 U248 ( .A(n413), .B(n109), .Y(n94) );
  and2c1 U249 ( .A(n41), .B(n102), .Y(n93) );
  oa2i2 U250 ( .A(n4), .B(xn[5]), .C(n94), .D(n93), .Y(n96) );
  inv1a1 U251 ( .A(y[1]), .Y(n95) );
  ao4f3 U252 ( .A(n96), .B(n350), .C(n225), .D(n95), .Y(n97) );
  xor2a2 U253 ( .A(n97), .B(n208), .Y(n99) );
  or2c1 U254 ( .A(n99), .B(n92), .Y(n565) );
  inv1a1 U255 ( .A(n565), .Y(n100) );
  inv1a1 U256 ( .A(y[2]), .Y(n104) );
  ao4f3 U257 ( .A(n350), .B(n105), .C(n225), .D(n104), .Y(n106) );
  xor2a2 U258 ( .A(n106), .B(n217), .Y(n107) );
  and2c3 U259 ( .A(n101), .B(n107), .Y(n558) );
  or2c1 U260 ( .A(n107), .B(n101), .Y(n559) );
  inv1a1 U261 ( .A(xn[9]), .Y(n128) );
  and2c1 U262 ( .A(n413), .B(n128), .Y(n111) );
  and2c1 U263 ( .A(n432), .B(n109), .Y(n110) );
  oa2i2 U264 ( .A(xn[8]), .B(n435), .C(n111), .D(n110), .Y(n116) );
  inv1a1 U265 ( .A(y[3]), .Y(n115) );
  ao4f3 U266 ( .A(n116), .B(n350), .C(n225), .D(n115), .Y(n117) );
  xor2a2 U267 ( .A(n117), .B(n217), .Y(n119) );
  or2c1 U268 ( .A(n119), .B(n108), .Y(n553) );
  inv1a1 U269 ( .A(n553), .Y(n120) );
  oa1f3 U270 ( .A(n554), .B(n118), .C(n120), .Y(n550) );
  and2a3 U271 ( .A(n380), .B(yn[8]), .Y(n126) );
  inv1a1 U272 ( .A(xn[8]), .Y(n121) );
  inv1a1 U273 ( .A(y[4]), .Y(n123) );
  ao4f3 U274 ( .A(n350), .B(n124), .C(n225), .D(n123), .Y(n125) );
  xor2a2 U275 ( .A(n125), .B(n217), .Y(n127) );
  and2c3 U276 ( .A(n126), .B(n127), .Y(n546) );
  or2c1 U277 ( .A(n127), .B(n126), .Y(n547) );
  ao1f3 U278 ( .A(n550), .B(n546), .C(n547), .Y(n543) );
  and2a3 U279 ( .A(n380), .B(yn[9]), .Y(n135) );
  inv1a1 U280 ( .A(y[5]), .Y(n132) );
  inv1a1 U281 ( .A(xn[11]), .Y(n145) );
  and2c1 U282 ( .A(n413), .B(n145), .Y(n130) );
  and2c1 U283 ( .A(n432), .B(n128), .Y(n129) );
  oa2i2 U284 ( .A(xn[10]), .B(n435), .C(n130), .D(n129), .Y(n131) );
  xor2a2 U285 ( .A(n133), .B(n217), .Y(n136) );
  or2c1 U286 ( .A(n136), .B(n135), .Y(n542) );
  inv1a1 U287 ( .A(n542), .Y(n137) );
  and2a3 U288 ( .A(n380), .B(yn[10]), .Y(n143) );
  inv1a1 U289 ( .A(xn[12]), .Y(n153) );
  and2c1 U290 ( .A(n413), .B(n153), .Y(n139) );
  and2c1 U291 ( .A(n41), .B(n145), .Y(n138) );
  oa2i2 U292 ( .A(n4), .B(xn[10]), .C(n139), .D(n138), .Y(n141) );
  inv1a1 U293 ( .A(y[6]), .Y(n140) );
  ao4f3 U294 ( .A(n141), .B(n350), .C(n225), .D(n140), .Y(n142) );
  xor2a2 U295 ( .A(n142), .B(n217), .Y(n144) );
  and2c3 U296 ( .A(n143), .B(n144), .Y(n535) );
  or2c1 U297 ( .A(n144), .B(n143), .Y(n536) );
  and2a3 U298 ( .A(n380), .B(yn[11]), .Y(n150) );
  inv1a1 U299 ( .A(y[7]), .Y(n147) );
  ao4f3 U300 ( .A(n350), .B(n148), .C(n425), .D(n147), .Y(n149) );
  xor2a2 U301 ( .A(n149), .B(n208), .Y(n151) );
  or2a1 U302 ( .A(n150), .B(n151), .Y(n530) );
  or2c1 U303 ( .A(n151), .B(n150), .Y(n529) );
  inv1a1 U304 ( .A(n529), .Y(n152) );
  oa1f3 U305 ( .A(n531), .B(n530), .C(n152), .Y(n526) );
  and2a3 U306 ( .A(n380), .B(yn[12]), .Y(n159) );
  and2c1 U307 ( .A(n413), .B(n161), .Y(n155) );
  and2c1 U308 ( .A(n432), .B(n153), .Y(n154) );
  oa2i2 U309 ( .A(xn[13]), .B(n435), .C(n155), .D(n154), .Y(n157) );
  inv1a1 U310 ( .A(y[8]), .Y(n156) );
  ao4f3 U311 ( .A(n157), .B(n350), .C(n425), .D(n156), .Y(n158) );
  xor2a2 U312 ( .A(n158), .B(n208), .Y(n160) );
  and2c3 U313 ( .A(n159), .B(n160), .Y(n522) );
  ao1f6 U314 ( .A(n526), .B(n522), .C(n523), .Y(n518) );
  and2a3 U315 ( .A(n450), .B(yn[13]), .Y(n167) );
  and2c1 U316 ( .A(n413), .B(n172), .Y(n163) );
  and2c1 U317 ( .A(n41), .B(n161), .Y(n162) );
  oa2i2 U318 ( .A(n4), .B(xn[13]), .C(n163), .D(n162), .Y(n165) );
  inv1a1 U319 ( .A(y[9]), .Y(n164) );
  ao4f3 U320 ( .A(n165), .B(n350), .C(n225), .D(n164), .Y(n166) );
  xor2a2 U321 ( .A(n166), .B(n208), .Y(n168) );
  or2a1 U322 ( .A(n167), .B(n168), .Y(n517) );
  or2c1 U323 ( .A(n168), .B(n167), .Y(n516) );
  inv1a1 U324 ( .A(n516), .Y(n169) );
  oa1f6 U325 ( .A(n518), .B(n517), .C(n169), .Y(n513) );
  ao1e6 U326 ( .B(n510), .A(n513), .C(n511), .Y(n506) );
  and2a3 U327 ( .A(n450), .B(yn[15]), .Y(n178) );
  inv1a1 U328 ( .A(xn[17]), .Y(n188) );
  and2c1 U329 ( .A(n413), .B(n188), .Y(n174) );
  and2c1 U330 ( .A(n432), .B(n172), .Y(n173) );
  oa2i2 U331 ( .A(n435), .B(xn[16]), .C(n174), .D(n173), .Y(n176) );
  inv1a1 U332 ( .A(y[11]), .Y(n175) );
  ao4f3 U333 ( .A(n176), .B(n350), .C(n225), .D(n175), .Y(n177) );
  xor2a2 U334 ( .A(n177), .B(n208), .Y(n179) );
  or2a1 U335 ( .A(n178), .B(n179), .Y(n505) );
  or2c1 U336 ( .A(n179), .B(n178), .Y(n504) );
  inv1a1 U337 ( .A(n504), .Y(n180) );
  oa1f6 U338 ( .A(n506), .B(n505), .C(n180), .Y(n501) );
  and2a3 U339 ( .A(n450), .B(yn[16]), .Y(n186) );
  inv1a1 U340 ( .A(xn[18]), .Y(n196) );
  and2c1 U341 ( .A(n413), .B(n196), .Y(n182) );
  and2c1 U342 ( .A(n41), .B(n188), .Y(n181) );
  oa2i2 U343 ( .A(xn[16]), .B(n4), .C(n182), .D(n181), .Y(n184) );
  inv1a1 U344 ( .A(y[12]), .Y(n183) );
  ao4f3 U345 ( .A(n184), .B(n350), .C(n225), .D(n183), .Y(n185) );
  xor2a2 U346 ( .A(n185), .B(n208), .Y(n187) );
  and2c3 U347 ( .A(n186), .B(n187), .Y(n497) );
  ao1f6 U348 ( .A(n501), .B(n497), .C(n498), .Y(n493) );
  and2a3 U349 ( .A(n450), .B(yn[17]), .Y(n193) );
  oa1f3 U350 ( .A(n6), .B(xn[19]), .C(n189), .Y(n191) );
  inv1a1 U351 ( .A(y[13]), .Y(n190) );
  ao4f3 U352 ( .A(n350), .B(n191), .C(n425), .D(n190), .Y(n192) );
  xor2a2 U353 ( .A(n192), .B(n208), .Y(n194) );
  or2a1 U354 ( .A(n193), .B(n194), .Y(n492) );
  or2c1 U355 ( .A(n194), .B(n193), .Y(n491) );
  inv1a1 U356 ( .A(n491), .Y(n195) );
  oa1f6 U357 ( .A(n493), .B(n492), .C(n195), .Y(n489) );
  and2a3 U358 ( .A(n450), .B(yn[18]), .Y(n202) );
  inv1a1 U359 ( .A(y[14]), .Y(n200) );
  inv1a1 U360 ( .A(xn[20]), .Y(n213) );
  and2c1 U361 ( .A(n413), .B(n213), .Y(n198) );
  and2c1 U362 ( .A(n432), .B(n196), .Y(n197) );
  oa2i2 U363 ( .A(xn[19]), .B(n435), .C(n198), .D(n197), .Y(n199) );
  xor2a2 U364 ( .A(n201), .B(n208), .Y(n203) );
  and2c3 U365 ( .A(n202), .B(n203), .Y(n485) );
  or2c1 U366 ( .A(n203), .B(n202), .Y(n486) );
  ao1f3 U367 ( .A(n489), .B(n485), .C(n486), .Y(n445) );
  and2a3 U368 ( .A(n450), .B(yn[19]), .Y(n210) );
  and2c1 U369 ( .A(n41), .B(n213), .Y(n206) );
  inv1a1 U370 ( .A(xn_rightshift_21_), .Y(n204) );
  and2c1 U371 ( .A(n_zz_9_1_), .B(n204), .Y(n205) );
  oa2i2 U372 ( .A(n4), .B(xn[19]), .C(n206), .D(n205), .Y(n207) );
  ao1f2 U373 ( .A(n207), .B(n350), .C(n229), .Y(n209) );
  xor2a2 U374 ( .A(n209), .B(n208), .Y(n211) );
  or2a1 U375 ( .A(n210), .B(n211), .Y(n444) );
  or2c1 U376 ( .A(n211), .B(n210), .Y(n443) );
  inv1a1 U377 ( .A(n443), .Y(n212) );
  oa1f3 U378 ( .A(n445), .B(n444), .C(n212), .Y(n478) );
  and2a3 U379 ( .A(n288), .B(yn[20]), .Y(n218) );
  or2c1 U380 ( .A(n4), .B(n213), .Y(n214) );
  ao2i1 U381 ( .A(xn_rightshift_21_), .B(n4), .C(n214), .D(n450), .Y(n215) );
  or2c1 U382 ( .A(n229), .B(n215), .Y(n216) );
  xor2a2 U383 ( .A(n217), .B(n216), .Y(n219) );
  and2c3 U384 ( .A(n218), .B(n219), .Y(n474) );
  or2c1 U385 ( .A(n219), .B(n218), .Y(n475) );
  clk1b6 U386 ( .A(n578), .Y(n576) );
  ao1d1 U387 ( .A(N232), .B(n450), .C(n225), .Y(N262) );
  inv1a1 U388 ( .A(cal_en), .Y(n670) );
  oa1f3 U389 ( .A(n226), .B(n578), .C(n670), .Y(N288) );
  xor2a2 U390 ( .A(n6), .B(DP_OP_37J1_122_9418_n18), .Y(
        DP_OP_37J1_122_9418_n17) );
  inv1a1 U391 ( .A(n227), .Y(n114) );
  buf1a6 U392 ( .A(resetn), .Y(n683) );
  buf1a6 U393 ( .A(resetn), .Y(n685) );
  buf1a6 U394 ( .A(resetn), .Y(n684) );
  xor2a2 U395 ( .A(res[6]), .B(DP_OP_37J1_122_9418_n18), .Y(n228) );
  xor2a2 U396 ( .A(n228), .B(DP_OP_37J1_122_9418_n2), .Y(n230) );
  inv1a1 U397 ( .A(n231), .Y(n233) );
  or2c1 U398 ( .A(n233), .B(n232), .Y(n234) );
  xor2b2 U399 ( .A(n235), .B(n234), .Y(n681) );
  or2c3 U400 ( .A(n237), .B(n236), .Y(n314) );
  buf1a9 U401 ( .A(n314), .Y(n455) );
  or2c1 U402 ( .A(n4), .B(yn[0]), .Y(n240) );
  or2c1 U403 ( .A(n484), .B(yn[1]), .Y(n239) );
  or2c1 U404 ( .A(n5), .B(yn[2]), .Y(n238) );
  or3d1 U405 ( .A(n240), .B(n239), .C(n238), .Y(n241) );
  xor2a2 U406 ( .A(n455), .B(n242), .Y(n255) );
  or2c1 U407 ( .A(n2), .B(n253), .Y(n244) );
  xor2b2 U408 ( .A(n255), .B(n244), .Y(n682) );
  or2c1 U409 ( .A(n4), .B(yn[1]), .Y(n248) );
  or2c1 U410 ( .A(n484), .B(yn[2]), .Y(n247) );
  or2c1 U411 ( .A(n5), .B(yn[3]), .Y(n246) );
  or3d1 U412 ( .A(n248), .B(n247), .C(n246), .Y(n249) );
  xor2a2 U413 ( .A(n455), .B(n250), .Y(n251) );
  and2c3 U414 ( .A(n245), .B(n251), .Y(n269) );
  inv1a1 U415 ( .A(n269), .Y(n252) );
  or2c1 U416 ( .A(n251), .B(n245), .Y(n268) );
  or2c1 U417 ( .A(n252), .B(n268), .Y(n256) );
  inv1a1 U418 ( .A(n253), .Y(n254) );
  oa1f3 U419 ( .A(n2), .B(n255), .C(n254), .Y(n270) );
  xor2a2 U420 ( .A(n256), .B(n270), .Y(n680) );
  inv1a1 U421 ( .A(n264), .Y(n257) );
  or2c1 U422 ( .A(n257), .B(n263), .Y(n259) );
  inv1a1 U423 ( .A(n258), .Y(n265) );
  xor2a2 U424 ( .A(n259), .B(n265), .Y(n677) );
  inv1a1 U425 ( .A(n260), .Y(n262) );
  or2c1 U426 ( .A(n262), .B(n261), .Y(n267) );
  xor2b2 U427 ( .A(n267), .B(n266), .Y(n676) );
  or2c1 U428 ( .A(n4), .B(yn[2]), .Y(n274) );
  or2c1 U429 ( .A(n484), .B(yn[3]), .Y(n273) );
  or2c1 U430 ( .A(n5), .B(yn[4]), .Y(n272) );
  or3d1 U431 ( .A(n274), .B(n273), .C(n272), .Y(n275) );
  xor2a2 U432 ( .A(n455), .B(n276), .Y(n277) );
  and2c3 U433 ( .A(n271), .B(n277), .Y(n295) );
  inv1a1 U434 ( .A(n295), .Y(n278) );
  or2c1 U435 ( .A(n278), .B(n297), .Y(n279) );
  xor2a2 U436 ( .A(n292), .B(n279), .Y(n679) );
  or2c1 U437 ( .A(n571), .B(n280), .Y(n282) );
  inv1a1 U438 ( .A(n281), .Y(n572) );
  xor2b2 U439 ( .A(n282), .B(n572), .Y(n675) );
  or2c1 U440 ( .A(n4), .B(yn[3]), .Y(n286) );
  or2c1 U441 ( .A(n484), .B(yn[4]), .Y(n285) );
  or2c1 U442 ( .A(n6), .B(yn[5]), .Y(n284) );
  or3d1 U443 ( .A(n286), .B(n285), .C(n284), .Y(n287) );
  xor2a2 U444 ( .A(n455), .B(n289), .Y(n290) );
  and2c3 U445 ( .A(n283), .B(n290), .Y(n298) );
  inv1a1 U446 ( .A(n298), .Y(n291) );
  or2c1 U447 ( .A(n290), .B(n283), .Y(n296) );
  or2c1 U448 ( .A(n291), .B(n296), .Y(n294) );
  xor2b2 U449 ( .A(n294), .B(n293), .Y(n678) );
  oa1f3 U450 ( .A(n301), .B(n300), .C(n299), .Y(n658) );
  inv1a1 U451 ( .A(x[0]), .Y(n307) );
  inv1a1 U452 ( .A(yn[6]), .Y(n322) );
  and2c1 U453 ( .A(n413), .B(n322), .Y(n305) );
  inv1a1 U454 ( .A(yn[4]), .Y(n303) );
  and2c1 U455 ( .A(n452), .B(n303), .Y(n304) );
  oa2i2 U456 ( .A(yn[5]), .B(n484), .C(n305), .D(n304), .Y(n306) );
  xor2a2 U457 ( .A(n308), .B(n455), .Y(n316) );
  inv1a1 U458 ( .A(x[1]), .Y(n313) );
  inv1a1 U459 ( .A(yn[7]), .Y(n331) );
  and2c1 U460 ( .A(n413), .B(n331), .Y(n311) );
  and2c1 U461 ( .A(n41), .B(n322), .Y(n310) );
  oa2i2 U462 ( .A(n4), .B(yn[5]), .C(n311), .D(n310), .Y(n312) );
  buf1a6 U463 ( .A(n314), .Y(n468) );
  xor2a2 U464 ( .A(n315), .B(n468), .Y(n317) );
  or2c1 U465 ( .A(n665), .B(n1), .Y(n320) );
  or2c1 U466 ( .A(n316), .B(n302), .Y(n664) );
  inv1a1 U467 ( .A(n664), .Y(n659) );
  or2c1 U468 ( .A(n317), .B(n309), .Y(n660) );
  inv1a1 U469 ( .A(n660), .Y(n318) );
  inv1a1 U470 ( .A(x[2]), .Y(n325) );
  xor2a2 U471 ( .A(n326), .B(n455), .Y(n328) );
  or2c1 U472 ( .A(n328), .B(n321), .Y(n654) );
  inv1a1 U473 ( .A(n654), .Y(n329) );
  oa1f3 U474 ( .A(n655), .B(n327), .C(n329), .Y(n652) );
  inv1a1 U475 ( .A(x[3]), .Y(n335) );
  inv1a1 U476 ( .A(yn[9]), .Y(n347) );
  and2c1 U477 ( .A(n413), .B(n347), .Y(n333) );
  and2c1 U478 ( .A(n452), .B(n331), .Y(n332) );
  oa2i2 U479 ( .A(yn[8]), .B(n435), .C(n333), .D(n332), .Y(n334) );
  xor2a2 U480 ( .A(n336), .B(n455), .Y(n337) );
  and2c3 U481 ( .A(n330), .B(n337), .Y(n648) );
  or2c1 U482 ( .A(n337), .B(n330), .Y(n649) );
  ao1f3 U483 ( .A(n652), .B(n648), .C(n649), .Y(n645) );
  and2a3 U484 ( .A(n380), .B(xn[8]), .Y(n344) );
  inv1a1 U485 ( .A(x[4]), .Y(n341) );
  inv1a1 U486 ( .A(yn[8]), .Y(n338) );
  xor2a2 U487 ( .A(n342), .B(n455), .Y(n345) );
  or2c1 U488 ( .A(n345), .B(n344), .Y(n644) );
  inv1a1 U489 ( .A(n644), .Y(n346) );
  oa1f6 U490 ( .A(n645), .B(n343), .C(n346), .Y(n641) );
  and2a3 U491 ( .A(n380), .B(xn[9]), .Y(n354) );
  inv1a1 U492 ( .A(yn[11]), .Y(n364) );
  and2c1 U493 ( .A(n413), .B(n364), .Y(n349) );
  and2c1 U494 ( .A(n432), .B(n347), .Y(n348) );
  oa2i2 U495 ( .A(yn[10]), .B(n435), .C(n349), .D(n348), .Y(n352) );
  inv1a1 U496 ( .A(x[5]), .Y(n351) );
  ao4f3 U497 ( .A(n352), .B(n350), .C(n425), .D(n351), .Y(n353) );
  xor2a2 U498 ( .A(n353), .B(n455), .Y(n355) );
  and2c3 U499 ( .A(n354), .B(n355), .Y(n637) );
  or2c1 U500 ( .A(n355), .B(n354), .Y(n638) );
  and2a3 U501 ( .A(n380), .B(xn[10]), .Y(n361) );
  inv1a1 U502 ( .A(yn[12]), .Y(n372) );
  and2c1 U503 ( .A(n413), .B(n372), .Y(n357) );
  and2c1 U504 ( .A(n41), .B(n364), .Y(n356) );
  oa2i2 U505 ( .A(n4), .B(yn[10]), .C(n357), .D(n356), .Y(n359) );
  inv1a1 U506 ( .A(x[6]), .Y(n358) );
  ao4f3 U507 ( .A(n359), .B(n224), .C(n425), .D(n358), .Y(n360) );
  xor2a2 U508 ( .A(n360), .B(n455), .Y(n362) );
  or2a1 U509 ( .A(n361), .B(n362), .Y(n632) );
  or2c1 U510 ( .A(n362), .B(n361), .Y(n631) );
  inv1a1 U511 ( .A(n631), .Y(n363) );
  oa1f3 U512 ( .A(n633), .B(n632), .C(n363), .Y(n628) );
  and2a3 U513 ( .A(n380), .B(xn[11]), .Y(n370) );
  inv1a1 U514 ( .A(yn[13]), .Y(n381) );
  and2c1 U515 ( .A(n413), .B(n381), .Y(n366) );
  and2c1 U516 ( .A(n432), .B(n364), .Y(n365) );
  oa2i2 U517 ( .A(n435), .B(yn[12]), .C(n366), .D(n365), .Y(n368) );
  inv1a1 U518 ( .A(x[7]), .Y(n367) );
  ao4f3 U519 ( .A(n368), .B(n224), .C(n425), .D(n367), .Y(n369) );
  xor2a2 U520 ( .A(n369), .B(n468), .Y(n371) );
  and2c3 U521 ( .A(n370), .B(n371), .Y(n624) );
  or2c1 U522 ( .A(n371), .B(n370), .Y(n625) );
  ao1f3 U523 ( .A(n628), .B(n624), .C(n625), .Y(n620) );
  and2a3 U524 ( .A(n380), .B(xn[12]), .Y(n377) );
  oa1f3 U525 ( .A(n6), .B(yn[14]), .C(n373), .Y(n375) );
  inv1a1 U526 ( .A(x[8]), .Y(n374) );
  ao4f3 U527 ( .A(n224), .B(n375), .C(n425), .D(n374), .Y(n376) );
  xor2a2 U528 ( .A(n376), .B(n468), .Y(n378) );
  or2a1 U529 ( .A(n377), .B(n378), .Y(n619) );
  or2c1 U530 ( .A(n378), .B(n377), .Y(n618) );
  inv1a1 U531 ( .A(n618), .Y(n379) );
  oa1f3 U532 ( .A(n620), .B(n619), .C(n379), .Y(n615) );
  and2a3 U533 ( .A(n380), .B(xn[13]), .Y(n387) );
  inv1a1 U534 ( .A(yn[15]), .Y(n397) );
  and2c1 U535 ( .A(n413), .B(n397), .Y(n383) );
  and2c1 U536 ( .A(n432), .B(n381), .Y(n382) );
  oa2i2 U537 ( .A(yn[14]), .B(n435), .C(n383), .D(n382), .Y(n385) );
  inv1a1 U538 ( .A(x[9]), .Y(n384) );
  ao4f3 U539 ( .A(n385), .B(n350), .C(n425), .D(n384), .Y(n386) );
  xor2a2 U540 ( .A(n386), .B(n468), .Y(n388) );
  and2c3 U541 ( .A(n387), .B(n388), .Y(n611) );
  ao1f3 U542 ( .A(n615), .B(n611), .C(n612), .Y(n607) );
  and2a3 U543 ( .A(n288), .B(xn[14]), .Y(n394) );
  inv1a1 U544 ( .A(yn[16]), .Y(n404) );
  and2c1 U545 ( .A(n413), .B(n404), .Y(n390) );
  and2c1 U546 ( .A(n41), .B(n397), .Y(n389) );
  oa2i2 U547 ( .A(n4), .B(yn[14]), .C(n390), .D(n389), .Y(n392) );
  inv1a1 U548 ( .A(x[10]), .Y(n391) );
  ao4f3 U549 ( .A(n392), .B(n350), .C(n425), .D(n391), .Y(n393) );
  xor2a2 U550 ( .A(n393), .B(n468), .Y(n395) );
  or2a1 U551 ( .A(n394), .B(n395), .Y(n606) );
  or2c1 U552 ( .A(n395), .B(n394), .Y(n605) );
  inv1a1 U553 ( .A(n605), .Y(n396) );
  oa1f3 U554 ( .A(n607), .B(n606), .C(n396), .Y(n602) );
  and2a3 U555 ( .A(n288), .B(xn[15]), .Y(n402) );
  oa1f3 U556 ( .A(n6), .B(yn[17]), .C(n398), .Y(n400) );
  inv1a1 U557 ( .A(x[11]), .Y(n399) );
  ao4f3 U558 ( .A(n350), .B(n400), .C(n425), .D(n399), .Y(n401) );
  xor2a2 U559 ( .A(n401), .B(n468), .Y(n403) );
  and2c3 U560 ( .A(n402), .B(n403), .Y(n598) );
  or2c1 U561 ( .A(n403), .B(n402), .Y(n599) );
  and2a3 U562 ( .A(n288), .B(xn[16]), .Y(n410) );
  inv1a1 U563 ( .A(yn[18]), .Y(n421) );
  and2c1 U564 ( .A(n413), .B(n421), .Y(n406) );
  and2c1 U565 ( .A(n432), .B(n404), .Y(n405) );
  oa2i2 U566 ( .A(yn[17]), .B(n435), .C(n406), .D(n405), .Y(n408) );
  inv1a1 U567 ( .A(x[12]), .Y(n407) );
  ao4f3 U568 ( .A(n408), .B(n350), .C(n425), .D(n407), .Y(n409) );
  xor2a2 U569 ( .A(n409), .B(n468), .Y(n411) );
  or2a1 U570 ( .A(n410), .B(n411), .Y(n593) );
  or2c1 U571 ( .A(n411), .B(n410), .Y(n592) );
  inv1a1 U572 ( .A(n592), .Y(n412) );
  and2a3 U573 ( .A(n288), .B(xn[17]), .Y(n419) );
  inv1a1 U574 ( .A(yn[19]), .Y(n431) );
  and2c1 U575 ( .A(n413), .B(n431), .Y(n415) );
  and2c1 U576 ( .A(n41), .B(n421), .Y(n414) );
  oa2i2 U577 ( .A(n4), .B(yn[17]), .C(n415), .D(n414), .Y(n417) );
  inv1a1 U578 ( .A(x[13]), .Y(n416) );
  ao4f3 U579 ( .A(n417), .B(n350), .C(n425), .D(n416), .Y(n418) );
  xor2a2 U580 ( .A(n418), .B(n468), .Y(n420) );
  and2c3 U581 ( .A(n419), .B(n420), .Y(n585) );
  or2c1 U582 ( .A(n420), .B(n419), .Y(n586) );
  and2a3 U583 ( .A(n288), .B(xn[18]), .Y(n428) );
  oa1f3 U584 ( .A(n6), .B(yn[20]), .C(n422), .Y(n426) );
  inv1a1 U585 ( .A(x[14]), .Y(n424) );
  xor2a2 U586 ( .A(n427), .B(n468), .Y(n429) );
  or2a1 U587 ( .A(n428), .B(n429), .Y(n580) );
  or2c1 U588 ( .A(n429), .B(n428), .Y(n579) );
  inv1a1 U589 ( .A(n579), .Y(n430) );
  oa1f3 U590 ( .A(n581), .B(n580), .C(n430), .Y(n460) );
  and2a3 U591 ( .A(n288), .B(xn[19]), .Y(n439) );
  and2c1 U592 ( .A(n432), .B(n431), .Y(n434) );
  and2c1 U593 ( .A(n_zz_9_1_), .B(n449), .Y(n433) );
  oa2i2 U594 ( .A(yn[20]), .B(n435), .C(n434), .D(n433), .Y(n437) );
  ao1f2 U595 ( .A(n437), .B(n350), .C(n467), .Y(n438) );
  xor2a2 U596 ( .A(n438), .B(n468), .Y(n440) );
  and2c3 U597 ( .A(n439), .B(n440), .Y(n459) );
  inv1a1 U598 ( .A(n459), .Y(n441) );
  or2c1 U599 ( .A(n440), .B(n439), .Y(n458) );
  or2c1 U600 ( .A(n441), .B(n458), .Y(n442) );
  xor2a2 U601 ( .A(n460), .B(n442), .Y(n674) );
  or2c1 U602 ( .A(n444), .B(n443), .Y(n446) );
  xor2b2 U603 ( .A(n446), .B(n445), .Y(n447) );
  and2a3 U604 ( .A(n288), .B(xn[20]), .Y(n456) );
  or2c1 U605 ( .A(n452), .B(n449), .Y(n451) );
  ao2i1 U606 ( .A(yn[20]), .B(n452), .C(n451), .D(n450), .Y(n453) );
  or2c1 U607 ( .A(n467), .B(n453), .Y(n454) );
  xor2a2 U608 ( .A(n455), .B(n454), .Y(n457) );
  or2a1 U609 ( .A(n456), .B(n457), .Y(n464) );
  or2c1 U610 ( .A(n457), .B(n456), .Y(n462) );
  or2c1 U611 ( .A(n464), .B(n462), .Y(n461) );
  ao1f3 U612 ( .A(n460), .B(n459), .C(n458), .Y(n465) );
  xor2b2 U613 ( .A(n461), .B(n465), .Y(n673) );
  inv1a1 U614 ( .A(n462), .Y(n463) );
  oa1f3 U615 ( .A(n465), .B(n464), .C(n463), .Y(n473) );
  or2c1 U616 ( .A(n236), .B(n467), .Y(n469) );
  xor2a2 U617 ( .A(n469), .B(n468), .Y(n470) );
  xor2a2 U618 ( .A(n473), .B(n472), .Y(n672) );
  inv1a1 U619 ( .A(n474), .Y(n476) );
  or2c1 U620 ( .A(n476), .B(n475), .Y(n477) );
  xor2a2 U621 ( .A(n478), .B(n477), .Y(n480) );
  inv1a1 U622 ( .A(n_zz_5[0]), .Y(n687) );
  xor2a2 U623 ( .A(n482), .B(DP_OP_37J1_122_9418_n18), .Y(
        DP_OP_37J1_122_9418_n14) );
  xor2a2 U624 ( .A(n4), .B(DP_OP_37J1_122_9418_n18), .Y(
        DP_OP_37J1_122_9418_n15) );
  xor2a2 U625 ( .A(n435), .B(DP_OP_37J1_122_9418_n18), .Y(
        DP_OP_37J1_122_9418_n16) );
  inv1a1 U626 ( .A(n485), .Y(n487) );
  or2c1 U627 ( .A(n487), .B(n486), .Y(n488) );
  xor2a2 U628 ( .A(n489), .B(n488), .Y(n490) );
  ao4a3 U629 ( .A(n490), .B(n3), .C(n576), .D(y[14]), .Y(N252) );
  or2c1 U630 ( .A(n492), .B(n491), .Y(n494) );
  xor2b2 U631 ( .A(n494), .B(n493), .Y(n495) );
  inv1a1 U632 ( .A(n497), .Y(n499) );
  or2c1 U633 ( .A(n499), .B(n498), .Y(n500) );
  xor2a2 U634 ( .A(n501), .B(n500), .Y(n502) );
  oa1f1 U635 ( .A(n576), .B(y[12]), .C(n502), .Y(n503) );
  inv1a1 U636 ( .A(n503), .Y(N250) );
  or2c1 U637 ( .A(n505), .B(n504), .Y(n507) );
  xor2b2 U638 ( .A(n507), .B(n506), .Y(n508) );
  oa1f1 U639 ( .A(n576), .B(y[11]), .C(n508), .Y(n509) );
  inv1a1 U640 ( .A(n509), .Y(N249) );
  or2c1 U641 ( .A(n510), .B(n511), .Y(n512) );
  xor2a2 U642 ( .A(n513), .B(n512), .Y(n514) );
  inv1a1 U643 ( .A(n515), .Y(N248) );
  or2c1 U644 ( .A(n517), .B(n516), .Y(n519) );
  xor2b2 U645 ( .A(n519), .B(n518), .Y(n520) );
  inv1a1 U646 ( .A(n521), .Y(N247) );
  inv1a1 U647 ( .A(n522), .Y(n524) );
  or2c1 U648 ( .A(n524), .B(n523), .Y(n525) );
  xor2a2 U649 ( .A(n526), .B(n525), .Y(n527) );
  inv1a1 U650 ( .A(n528), .Y(N246) );
  or2c1 U651 ( .A(n530), .B(n529), .Y(n532) );
  xor2b2 U652 ( .A(n532), .B(n531), .Y(n533) );
  inv1a1 U653 ( .A(n534), .Y(N245) );
  inv1a1 U654 ( .A(n535), .Y(n537) );
  or2c1 U655 ( .A(n537), .B(n536), .Y(n538) );
  xor2a2 U656 ( .A(n539), .B(n538), .Y(n540) );
  inv1a1 U657 ( .A(n541), .Y(N244) );
  or2c1 U658 ( .A(n134), .B(n542), .Y(n544) );
  xor2b2 U659 ( .A(n544), .B(n543), .Y(n545) );
  ao4a3 U660 ( .A(n545), .B(n3), .C(n576), .D(y[5]), .Y(N243) );
  inv1a1 U661 ( .A(n546), .Y(n548) );
  or2c1 U662 ( .A(n548), .B(n547), .Y(n549) );
  xor2a2 U663 ( .A(n550), .B(n549), .Y(n551) );
  inv1a1 U664 ( .A(n552), .Y(N242) );
  or2c1 U665 ( .A(n118), .B(n553), .Y(n555) );
  xor2b2 U666 ( .A(n555), .B(n554), .Y(n556) );
  inv1a1 U667 ( .A(n557), .Y(N241) );
  inv1a1 U668 ( .A(n558), .Y(n560) );
  or2c1 U669 ( .A(n560), .B(n559), .Y(n561) );
  xor2a2 U670 ( .A(n562), .B(n561), .Y(n563) );
  inv1a1 U671 ( .A(n564), .Y(N240) );
  or2c1 U672 ( .A(n98), .B(n565), .Y(n567) );
  xor2b2 U673 ( .A(n567), .B(n566), .Y(n568) );
  inv1a1 U674 ( .A(n569), .Y(N239) );
  oa1f3 U675 ( .A(n572), .B(n571), .C(n570), .Y(n575) );
  or2c1 U676 ( .A(n80), .B(n573), .Y(n574) );
  xor2a2 U677 ( .A(n575), .B(n574), .Y(n577) );
  ao4a3 U678 ( .A(n577), .B(n3), .C(n576), .D(y[0]), .Y(N238) );
  clk1b6 U679 ( .A(n578), .Y(n668) );
  or2c1 U680 ( .A(n580), .B(n579), .Y(n582) );
  xor2b2 U681 ( .A(n582), .B(n581), .Y(n583) );
  inv1a1 U682 ( .A(n585), .Y(n587) );
  or2c1 U683 ( .A(n587), .B(n586), .Y(n588) );
  xor2a2 U684 ( .A(n589), .B(n588), .Y(n590) );
  or2c1 U685 ( .A(n593), .B(n592), .Y(n595) );
  xor2b2 U686 ( .A(n595), .B(n594), .Y(n596) );
  inv1a1 U687 ( .A(n598), .Y(n600) );
  or2c1 U688 ( .A(n600), .B(n599), .Y(n601) );
  xor2a2 U689 ( .A(n602), .B(n601), .Y(n603) );
  inv1a1 U690 ( .A(n604), .Y(N281) );
  or2c1 U691 ( .A(n606), .B(n605), .Y(n608) );
  xor2b2 U692 ( .A(n608), .B(n607), .Y(n609) );
  inv1a1 U693 ( .A(n610), .Y(N280) );
  inv1a1 U694 ( .A(n611), .Y(n613) );
  or2c1 U695 ( .A(n613), .B(n612), .Y(n614) );
  xor2a2 U696 ( .A(n615), .B(n614), .Y(n616) );
  inv1a1 U697 ( .A(n617), .Y(N279) );
  or2c1 U698 ( .A(n619), .B(n618), .Y(n621) );
  xor2b2 U699 ( .A(n621), .B(n620), .Y(n622) );
  inv1a1 U700 ( .A(n623), .Y(N278) );
  inv1a1 U701 ( .A(n624), .Y(n626) );
  or2c1 U702 ( .A(n626), .B(n625), .Y(n627) );
  xor2a2 U703 ( .A(n628), .B(n627), .Y(n629) );
  inv1a1 U704 ( .A(n630), .Y(N277) );
  or2c1 U705 ( .A(n632), .B(n631), .Y(n634) );
  xor2b2 U706 ( .A(n634), .B(n633), .Y(n635) );
  inv1a1 U707 ( .A(n636), .Y(N276) );
  inv1a1 U708 ( .A(n637), .Y(n639) );
  or2c1 U709 ( .A(n639), .B(n638), .Y(n640) );
  xor2a2 U710 ( .A(n641), .B(n640), .Y(n642) );
  inv1a1 U711 ( .A(n643), .Y(N275) );
  or2c1 U712 ( .A(n343), .B(n644), .Y(n646) );
  xor2b2 U713 ( .A(n646), .B(n645), .Y(n647) );
  ao4a3 U714 ( .A(n647), .B(n3), .C(n668), .D(x[4]), .Y(N274) );
  inv1a1 U715 ( .A(n648), .Y(n650) );
  or2c1 U716 ( .A(n650), .B(n649), .Y(n651) );
  xor2a2 U717 ( .A(n652), .B(n651), .Y(n653) );
  ao4a3 U718 ( .A(n653), .B(n3), .C(n668), .D(x[3]), .Y(N273) );
  or2c1 U719 ( .A(n327), .B(n654), .Y(n656) );
  xor2b2 U720 ( .A(n656), .B(n655), .Y(n657) );
  ao4a3 U721 ( .A(n657), .B(n3), .C(n668), .D(x[2]), .Y(N272) );
  inv1a1 U722 ( .A(n658), .Y(n666) );
  oa1f3 U723 ( .A(n666), .B(n665), .C(n659), .Y(n662) );
  or2c1 U724 ( .A(n1), .B(n660), .Y(n661) );
  xor2a2 U725 ( .A(n662), .B(n661), .Y(n663) );
  ao4a3 U726 ( .A(n663), .B(n3), .C(n668), .D(x[1]), .Y(N271) );
  or2c1 U727 ( .A(n665), .B(n664), .Y(n667) );
  xor2b2 U728 ( .A(n667), .B(n666), .Y(n669) );
  ao4a3 U729 ( .A(n669), .B(n3), .C(n668), .D(x[0]), .Y(N270) );
  oa1f1 U730 ( .A(n112), .B(n671), .C(n670), .Y(N289) );
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
  output [6:0] res;
  input en, vin_vld, clk, resetn;
  output res_vld;
  wire   calvn_vn_vld, dot_psum_vld, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         SYNOPSYS_UNCONNECTED_1;
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

  cal_vn calvn ( .en(en), .vin_vld(vin_vld), .v_in_0({n60, n59, n58, n57, n56, 
        n55, n54, n76}), .v_in_1({n53, n52, n51, n50, n49, v_in_1[2:1], n74}), 
        .v_in_2({n48, n47, n46, n45, n44, n43, n42, n72}), .v_in_3({n40, n39, 
        n38, n37, n36, v_in_3[2:1], n64}), .v_in_4({n35, n34, n33, n32, n31, 
        n30, n29, n70}), .v_in_5({n27, n26, n25, n24, n23, n22, n21, n62}), 
        .v_in_6({n20, n19, n18, n17, n16, n15, n14, n68}), .v_in_7({n12, n11, 
        n10, n9, n8, n7, n6, n66}), .vn_0(calvn_vn_0), .vn_1(calvn_vn_1), 
        .vn_2(calvn_vn_2), .vn_3(calvn_vn_3), .vn_4(calvn_vn_4), .vn_5(
        calvn_vn_5), .vn_6(calvn_vn_6), .vn_7(calvn_vn_7), .vn_vld(
        calvn_vn_vld), .clk(clk), .resetn(n80) );
  dotVn dot ( .en(n77), .vn_vld(calvn_vn_vld), .vn_in_0(calvn_vn_0), .vn_in_1(
        calvn_vn_1), .vn_in_2(calvn_vn_2), .vn_in_3(calvn_vn_3), .vn_in_4(
        calvn_vn_4), .vn_in_5(calvn_vn_5), .vn_in_6(calvn_vn_6), .vn_in_7(
        calvn_vn_7), .psum_out1(dot_psum_out1), .psum_out2(dot_psum_out2), 
        .psum_vld(dot_psum_vld), .clk(clk), .resetn(n79) );
  cordic_int cordic ( .en(n77), .vld(dot_psum_vld), .y(dot_psum_out2), .x(
        dot_psum_out1), .res({res[6:1], SYNOPSYS_UNCONNECTED_1}), .clk(clk), 
        .resetn(n81) );
  inv1a1 U1 ( .A(v_in_0[0]), .Y(n75) );
  clk1a3 U2 ( .A(en), .Y(n77) );
  clk1a3 U3 ( .A(v_in_0[1]), .Y(n54) );
  clk1a3 U4 ( .A(v_in_5[1]), .Y(n21) );
  inv1a9 U5 ( .A(n78), .Y(n79) );
  inv1a9 U6 ( .A(n78), .Y(n80) );
  clk1a3 U7 ( .A(v_in_7[7]), .Y(n12) );
  clk1a3 U8 ( .A(v_in_6[2]), .Y(n15) );
  clk1a3 U9 ( .A(v_in_7[5]), .Y(n10) );
  clk1a3 U10 ( .A(v_in_7[4]), .Y(n9) );
  clk1a3 U11 ( .A(v_in_0[7]), .Y(n60) );
  clk1a3 U12 ( .A(v_in_7[6]), .Y(n11) );
  clk1a3 U13 ( .A(v_in_6[4]), .Y(n17) );
  clk1a3 U14 ( .A(v_in_0[6]), .Y(n59) );
  clk1a3 U15 ( .A(v_in_6[5]), .Y(n18) );
  clk1a3 U16 ( .A(v_in_6[3]), .Y(n16) );
  clk1a3 U17 ( .A(v_in_0[5]), .Y(n58) );
  clk1a3 U18 ( .A(v_in_6[6]), .Y(n19) );
  clk1a3 U19 ( .A(v_in_0[4]), .Y(n57) );
  clk1a3 U20 ( .A(v_in_0[3]), .Y(n56) );
  clk1a3 U21 ( .A(v_in_6[7]), .Y(n20) );
  clk1a3 U22 ( .A(v_in_7[2]), .Y(n7) );
  clk1a3 U23 ( .A(v_in_0[2]), .Y(n55) );
  clk1a3 U24 ( .A(v_in_7[3]), .Y(n8) );
  clk1a3 U25 ( .A(v_in_2[5]), .Y(n46) );
  clk1a3 U26 ( .A(v_in_2[4]), .Y(n45) );
  clk1a3 U27 ( .A(v_in_1[7]), .Y(n53) );
  clk1a3 U28 ( .A(v_in_5[2]), .Y(n22) );
  clk1a3 U29 ( .A(v_in_1[6]), .Y(n52) );
  clk1a3 U30 ( .A(v_in_5[3]), .Y(n23) );
  clk1a3 U31 ( .A(v_in_4[2]), .Y(n30) );
  clk1a3 U32 ( .A(v_in_1[5]), .Y(n51) );
  clk1a3 U33 ( .A(v_in_4[5]), .Y(n33) );
  clk1a3 U34 ( .A(v_in_1[4]), .Y(n50) );
  clk1a3 U35 ( .A(v_in_5[4]), .Y(n24) );
  clk1a3 U36 ( .A(v_in_1[3]), .Y(n49) );
  clk1a3 U37 ( .A(v_in_3[6]), .Y(n39) );
  clk1a3 U38 ( .A(v_in_5[5]), .Y(n25) );
  clk1a3 U39 ( .A(v_in_2[7]), .Y(n48) );
  clk1a3 U40 ( .A(v_in_3[5]), .Y(n38) );
  clk1a3 U41 ( .A(v_in_2[6]), .Y(n47) );
  clk1a3 U42 ( .A(v_in_5[6]), .Y(n26) );
  clk1a3 U43 ( .A(v_in_3[4]), .Y(n37) );
  clk1a3 U44 ( .A(v_in_2[3]), .Y(n44) );
  clk1a3 U45 ( .A(v_in_5[7]), .Y(n27) );
  clk1a3 U46 ( .A(v_in_4[6]), .Y(n34) );
  clk1a3 U47 ( .A(v_in_2[2]), .Y(n43) );
  clk1a3 U48 ( .A(v_in_4[7]), .Y(n35) );
  clk1a3 U49 ( .A(v_in_3[3]), .Y(n36) );
  clk1a3 U50 ( .A(v_in_4[4]), .Y(n32) );
  clk1a3 U51 ( .A(v_in_4[3]), .Y(n31) );
  clk1a3 U52 ( .A(v_in_3[7]), .Y(n40) );
  inv1a3 U53 ( .A(1'b1), .Y(res_vld) );
  inv1a3 U54 ( .A(1'b1), .Y(res[0]) );
  inv1a3 U57 ( .A(v_in_7[1]), .Y(n5) );
  inv1a3 U58 ( .A(v_in_6[1]), .Y(n13) );
  inv1a1 U59 ( .A(v_in_5[0]), .Y(n61) );
  inv1a3 U60 ( .A(v_in_4[1]), .Y(n28) );
  inv1a1 U61 ( .A(v_in_3[0]), .Y(n63) );
  inv1a3 U62 ( .A(v_in_2[1]), .Y(n41) );
  inv1a3 U63 ( .A(n5), .Y(n6) );
  inv1a3 U64 ( .A(n13), .Y(n14) );
  inv1a3 U65 ( .A(n28), .Y(n29) );
  inv1a3 U66 ( .A(n41), .Y(n42) );
  inv1a3 U67 ( .A(n61), .Y(n62) );
  inv1a3 U68 ( .A(n63), .Y(n64) );
  inv1a3 U69 ( .A(v_in_7[0]), .Y(n65) );
  inv1a3 U70 ( .A(n65), .Y(n66) );
  inv1a3 U71 ( .A(v_in_6[0]), .Y(n67) );
  inv1a3 U72 ( .A(n67), .Y(n68) );
  inv1a3 U73 ( .A(v_in_4[0]), .Y(n69) );
  inv1a3 U74 ( .A(n69), .Y(n70) );
  inv1a3 U75 ( .A(v_in_2[0]), .Y(n71) );
  inv1a3 U76 ( .A(n71), .Y(n72) );
  inv1a3 U77 ( .A(v_in_1[0]), .Y(n73) );
  inv1a3 U78 ( .A(n73), .Y(n74) );
  inv1a3 U79 ( .A(n75), .Y(n76) );
  inv1a3 U80 ( .A(resetn), .Y(n78) );
  clk1b6 U81 ( .A(n78), .Y(n81) );
endmodule

