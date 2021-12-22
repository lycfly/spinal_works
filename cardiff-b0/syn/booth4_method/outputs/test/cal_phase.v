/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Tue Dec 21 17:37:09 2021
/////////////////////////////////////////////////////////////


module SNPS_CLOCK_GATE_HIGH_cal_vn_10 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3937;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3937) );
  and2a3 main_gate ( .A(net3937), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_9 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3937;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3937) );
  and2a3 main_gate ( .A(net3937), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_7 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3937;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3937) );
  and2a3 main_gate ( .A(net3937), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_4 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3937;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3937) );
  and2a3 main_gate ( .A(net3937), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_3 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3937;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3937) );
  and2a3 main_gate ( .A(net3937), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_2 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3937;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3937) );
  and2a3 main_gate ( .A(net3937), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_1 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3937;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3937) );
  and2a3 main_gate ( .A(net3937), .B(CLK), .Y(ENCLK) );
endmodule


module cal_vn ( en, rg_bypass_mean, valid_num, vin_vld, vin1, vin2, 
        rg_leakage_table_0, rg_leakage_table_1, rg_leakage_table_2, 
        rg_leakage_table_3, rg_leakage_table_4, rg_leakage_table_5, 
        rg_leakage_table_6, rg_leakage_table_7, mean, vn_0, vn_1, vn_2, vn_3, 
        vn_4, vn_5, vn_6, vn_7, finish, clk, resetn );
  input [2:0] valid_num;
  input [7:0] vin1;
  input [7:0] vin2;
  input [7:0] rg_leakage_table_0;
  input [7:0] rg_leakage_table_1;
  input [7:0] rg_leakage_table_2;
  input [7:0] rg_leakage_table_3;
  input [7:0] rg_leakage_table_4;
  input [7:0] rg_leakage_table_5;
  input [7:0] rg_leakage_table_6;
  input [7:0] rg_leakage_table_7;
  output [7:0] mean;
  output [7:0] vn_0;
  output [7:0] vn_1;
  output [7:0] vn_2;
  output [7:0] vn_3;
  output [7:0] vn_4;
  output [7:0] vn_5;
  output [7:0] vn_6;
  output [7:0] vn_7;
  input en, rg_bypass_mean, vin_vld, clk, resetn;
  output finish;
  wire   n_zz_16_8, n_zz_17_8, v_cnt_2_, n_zz_24_1_, max_v_0_, min_v_0_,
         mean_finish, N132, N147, N148, N149, N150, N151, N152, N153, N154,
         N167, N168, N169, N170, N171, N172, N173, N174, N187, N188, N189,
         N190, N191, N192, N193, N194, N197, N198, N200, N201, N202, N207,
         N208, N209, N210, N211, N212, N213, N214, N219, N220, N221, N229,
         N230, N231, N232, N233, N234, N235, N236, N238, N239, N240, N241,
         N242, N243, N244, N245, N246, N248, N250, N252, N254, N255, net3948,
         net3953, net3963, net3978, net3983, net3988, net3993, intadd_0_A_5_,
         intadd_0_B_5_, intadd_0_CI, intadd_0_n6, intadd_0_n5, intadd_0_n4,
         intadd_0_n3, intadd_0_n2, intadd_0_n1, n1, n2, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n199,
         n200, n201, n202, n203, n204, n205;
  wire   [5:0] n_zz_16;
  wire   [5:0] n_zz_17;
  wire   [2:1] n_zz_20;

  SNPS_CLOCK_GATE_HIGH_cal_vn_10 clk_gate_min_v_reg ( .CLK(clk), .EN(N255), 
        .ENCLK(net3948) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_9 clk_gate_max_v_reg ( .CLK(clk), .EN(N254), 
        .ENCLK(net3953) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_7 clk_gate_Vins_6_reg ( .CLK(clk), .EN(N252), 
        .ENCLK(net3963) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_4 clk_gate_Vins_4_reg ( .CLK(clk), .EN(N250), 
        .ENCLK(net3978) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_3 clk_gate_Vins_2_reg ( .CLK(clk), .EN(N248), 
        .ENCLK(net3983) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_2 clk_gate_v_cnt_reg ( .CLK(clk), .EN(N132), 
        .ENCLK(net3988) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_1 clk_gate_Vins_0_reg ( .CLK(clk), .EN(N246), 
        .ENCLK(net3993) );
  fdf2a3 min_v_reg_7_ ( .D(N236), .CLK(net3948), .CLR(n199), .Q(n_zz_17_8) );
  fdf2a3 min_v_reg_6_ ( .D(N235), .CLK(net3948), .CLR(n199), .Q(n_zz_17[5]) );
  fdf2a3 min_v_reg_5_ ( .D(N234), .CLK(net3948), .CLR(n200), .Q(n_zz_17[4]) );
  fdf2a3 min_v_reg_4_ ( .D(N233), .CLK(net3948), .CLR(n205), .Q(n_zz_17[3]) );
  fdf2a3 min_v_reg_3_ ( .D(N232), .CLK(net3948), .CLR(n202), .Q(n_zz_17[2]) );
  fdf2a3 min_v_reg_2_ ( .D(N231), .CLK(net3948), .CLR(n204), .Q(n_zz_17[1]) );
  fdf2a3 min_v_reg_1_ ( .D(N230), .CLK(net3948), .CLR(n201), .Q(n_zz_17[0]) );
  fdf2a3 min_v_reg_0_ ( .D(N229), .CLK(net3948), .CLR(n205), .Q(min_v_0_) );
  fdf2a3 max_v_reg_7_ ( .D(N245), .CLK(net3953), .CLR(n204), .Q(n_zz_16_8) );
  fdf2a3 max_v_reg_6_ ( .D(N244), .CLK(net3953), .CLR(n204), .Q(n_zz_16[5]) );
  fdf2a3 max_v_reg_5_ ( .D(N243), .CLK(net3953), .CLR(n200), .Q(n_zz_16[4]) );
  fdf2a3 max_v_reg_4_ ( .D(N242), .CLK(net3953), .CLR(n200), .Q(n_zz_16[3]) );
  fdf2a3 max_v_reg_3_ ( .D(N241), .CLK(net3953), .CLR(n202), .Q(n_zz_16[2]) );
  fdf2a3 max_v_reg_2_ ( .D(N240), .CLK(net3953), .CLR(n202), .Q(n_zz_16[1]) );
  fdf2a3 max_v_reg_1_ ( .D(N239), .CLK(net3953), .CLR(n201), .Q(n_zz_16[0]) );
  fdf2a3 max_v_reg_0_ ( .D(N238), .CLK(net3953), .CLR(n199), .Q(max_v_0_) );
  fdf2a3 Vins_5_reg_7_ ( .D(N194), .CLK(net3978), .CLR(n205), .Q(vn_5[7]) );
  fdf2a3 Vins_5_reg_6_ ( .D(N193), .CLK(net3978), .CLR(n199), .Q(vn_5[6]) );
  fdf2a3 Vins_5_reg_5_ ( .D(N192), .CLK(net3978), .CLR(n205), .Q(vn_5[5]) );
  fdf2a3 Vins_5_reg_4_ ( .D(N191), .CLK(net3978), .CLR(n205), .Q(vn_5[4]) );
  fdf2a3 Vins_5_reg_3_ ( .D(N190), .CLK(net3978), .CLR(n199), .Q(vn_5[3]) );
  fdf2a3 Vins_5_reg_2_ ( .D(N189), .CLK(net3978), .CLR(n205), .Q(vn_5[2]) );
  fdf2a3 Vins_5_reg_1_ ( .D(N188), .CLK(net3978), .CLR(n201), .Q(vn_5[1]) );
  fdf2a3 Vins_5_reg_0_ ( .D(N187), .CLK(net3978), .CLR(n204), .Q(vn_5[0]) );
  fdf2a3 Vins_7_reg_7_ ( .D(N214), .CLK(net3963), .CLR(n204), .Q(vn_7[7]) );
  fdf2a3 Vins_7_reg_6_ ( .D(N213), .CLK(net3963), .CLR(n202), .Q(vn_7[6]) );
  fdf2a3 Vins_7_reg_5_ ( .D(N212), .CLK(net3963), .CLR(n202), .Q(vn_7[5]) );
  fdf2a3 Vins_7_reg_4_ ( .D(N211), .CLK(net3963), .CLR(n200), .Q(vn_7[4]) );
  fdf2a3 Vins_7_reg_3_ ( .D(N210), .CLK(net3963), .CLR(n201), .Q(vn_7[3]) );
  fdf2a3 Vins_7_reg_2_ ( .D(N209), .CLK(net3963), .CLR(n205), .Q(vn_7[2]) );
  fdf2a3 Vins_7_reg_1_ ( .D(N208), .CLK(net3963), .CLR(n201), .Q(vn_7[1]) );
  fdf2a3 Vins_7_reg_0_ ( .D(N207), .CLK(net3963), .CLR(n202), .Q(vn_7[0]) );
  fdf2a3 Vins_3_reg_7_ ( .D(N174), .CLK(net3983), .CLR(n199), .Q(vn_3[7]) );
  fdf2a3 Vins_3_reg_6_ ( .D(N173), .CLK(net3983), .CLR(n200), .Q(vn_3[6]) );
  fdf2a3 Vins_3_reg_5_ ( .D(N172), .CLK(net3983), .CLR(n205), .Q(vn_3[5]) );
  fdf2a3 Vins_3_reg_4_ ( .D(N171), .CLK(net3983), .CLR(n199), .Q(vn_3[4]) );
  fdf2a3 Vins_3_reg_3_ ( .D(N170), .CLK(net3983), .CLR(n204), .Q(vn_3[3]) );
  fdf2a3 Vins_3_reg_2_ ( .D(N169), .CLK(net3983), .CLR(n201), .Q(vn_3[2]) );
  fdf2a3 Vins_3_reg_1_ ( .D(N168), .CLK(net3983), .CLR(n202), .Q(vn_3[1]) );
  fdf2a3 Vins_3_reg_0_ ( .D(N167), .CLK(net3983), .CLR(n200), .Q(vn_3[0]) );
  fdf2a3 Vins_1_reg_7_ ( .D(N154), .CLK(net3993), .CLR(n203), .Q(vn_1[7]) );
  fdf2a3 Vins_1_reg_6_ ( .D(N153), .CLK(net3993), .CLR(n203), .Q(vn_1[6]) );
  fdf2a3 Vins_1_reg_5_ ( .D(N152), .CLK(net3993), .CLR(n203), .Q(vn_1[5]) );
  fdf2a3 Vins_1_reg_4_ ( .D(N151), .CLK(net3993), .CLR(n203), .Q(vn_1[4]) );
  fdf2a3 Vins_1_reg_3_ ( .D(N150), .CLK(net3993), .CLR(n203), .Q(vn_1[3]) );
  fdf2a3 Vins_1_reg_2_ ( .D(N149), .CLK(net3993), .CLR(n203), .Q(vn_1[2]) );
  fdf2a3 Vins_1_reg_1_ ( .D(N148), .CLK(net3993), .CLR(n203), .Q(vn_1[1]) );
  fdf2a3 Vins_1_reg_0_ ( .D(N147), .CLK(net3993), .CLR(n203), .Q(vn_1[0]) );
  fdf2a3 Vins_4_reg_7_ ( .D(n_zz_24_1_), .CLK(net3978), .CLR(n203), .Q(vn_4[7]) );
  fdf2a3 Vins_4_reg_6_ ( .D(n158), .CLK(net3978), .CLR(n203), .Q(vn_4[6]) );
  fdf2a3 Vins_4_reg_5_ ( .D(N202), .CLK(net3978), .CLR(n203), .Q(vn_4[5]) );
  fdf2a3 Vins_4_reg_3_ ( .D(N200), .CLK(net3978), .CLR(n204), .Q(vn_4[3]) );
  fdf2a3 Vins_4_reg_2_ ( .D(n44), .CLK(net3978), .CLR(n205), .Q(vn_4[2]) );
  fdf2a3 Vins_4_reg_1_ ( .D(N198), .CLK(net3978), .CLR(n202), .Q(vn_4[1]) );
  fdf2a3 Vins_6_reg_7_ ( .D(n_zz_24_1_), .CLK(net3963), .CLR(n204), .Q(vn_6[7]) );
  fdf2a3 Vins_6_reg_6_ ( .D(n158), .CLK(net3963), .CLR(n199), .Q(vn_6[6]) );
  fdf2a3 Vins_6_reg_5_ ( .D(N202), .CLK(net3963), .CLR(n201), .Q(vn_6[5]) );
  fdf2a3 Vins_6_reg_3_ ( .D(N200), .CLK(net3963), .CLR(n205), .Q(vn_6[3]) );
  fdf2a3 Vins_6_reg_2_ ( .D(n44), .CLK(net3963), .CLR(n201), .Q(vn_6[2]) );
  fdf2a3 Vins_6_reg_1_ ( .D(N198), .CLK(net3963), .CLR(n202), .Q(vn_6[1]) );
  fdf2a3 Vins_2_reg_7_ ( .D(n_zz_24_1_), .CLK(net3983), .CLR(n204), .Q(vn_2[7]) );
  fdf2a3 Vins_2_reg_6_ ( .D(n158), .CLK(net3983), .CLR(n204), .Q(vn_2[6]) );
  fdf2a3 Vins_2_reg_5_ ( .D(N202), .CLK(net3983), .CLR(n204), .Q(vn_2[5]) );
  fdf2a3 Vins_2_reg_3_ ( .D(N200), .CLK(net3983), .CLR(n200), .Q(vn_2[3]) );
  fdf2a3 Vins_2_reg_2_ ( .D(n44), .CLK(net3983), .CLR(n205), .Q(vn_2[2]) );
  fdf2a3 Vins_2_reg_1_ ( .D(N198), .CLK(net3983), .CLR(n201), .Q(vn_2[1]) );
  fdf2a3 Vins_0_reg_7_ ( .D(n_zz_24_1_), .CLK(net3993), .CLR(n200), .Q(vn_0[7]) );
  fdf2a3 Vins_0_reg_6_ ( .D(n158), .CLK(net3993), .CLR(n199), .Q(vn_0[6]) );
  fdf2a3 Vins_0_reg_5_ ( .D(N202), .CLK(net3993), .CLR(n205), .Q(vn_0[5]) );
  fdf2a3 Vins_0_reg_3_ ( .D(N200), .CLK(net3993), .CLR(n204), .Q(vn_0[3]) );
  fdf2a3 Vins_0_reg_2_ ( .D(n44), .CLK(net3993), .CLR(n205), .Q(vn_0[2]) );
  fdf2a3 Vins_0_reg_1_ ( .D(N198), .CLK(net3993), .CLR(n205), .Q(vn_0[1]) );
  fdf2a3 Vins_0_reg_0_ ( .D(N197), .CLK(net3993), .CLR(n200), .Q(vn_0[0]) );
  fdf2a3 Vins_2_reg_0_ ( .D(N197), .CLK(net3983), .CLR(n201), .Q(vn_2[0]) );
  fdf2a3 Vins_4_reg_0_ ( .D(N197), .CLK(net3978), .CLR(n200), .Q(vn_4[0]) );
  fdf2a3 Vins_6_reg_0_ ( .D(N197), .CLK(net3963), .CLR(n200), .Q(vn_6[0]) );
  fdf2a3 Vins_0_reg_4_ ( .D(N201), .CLK(net3993), .CLR(n199), .Q(vn_0[4]) );
  fdf2a3 Vins_2_reg_4_ ( .D(N201), .CLK(net3983), .CLR(n202), .Q(vn_2[4]) );
  fdf2a3 Vins_4_reg_4_ ( .D(N201), .CLK(net3978), .CLR(n199), .Q(vn_4[4]) );
  fdf2a3 Vins_6_reg_4_ ( .D(N201), .CLK(net3963), .CLR(n205), .Q(vn_6[4]) );
  fa1a2 intadd_0_U6 ( .A(n_zz_17[2]), .B(n_zz_16[2]), .CI(intadd_0_n6), .CO(
        intadd_0_n5), .S(mean[2]) );
  fa1a2 intadd_0_U5 ( .A(n_zz_17[3]), .B(n_zz_16[3]), .CI(intadd_0_n5), .CO(
        intadd_0_n4), .S(mean[3]) );
  fa1a2 intadd_0_U4 ( .A(n_zz_17[4]), .B(n_zz_16[4]), .CI(intadd_0_n4), .CO(
        intadd_0_n3), .S(mean[4]) );
  fa1a2 intadd_0_U3 ( .A(n_zz_17[5]), .B(n_zz_16[5]), .CI(intadd_0_n3), .CO(
        intadd_0_n2), .S(mean[5]) );
  fa1a2 intadd_0_U2 ( .A(intadd_0_B_5_), .B(intadd_0_A_5_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(mean[6]) );
  fa1a2 intadd_0_U7 ( .A(n_zz_17[1]), .B(n_zz_16[1]), .CI(intadd_0_CI), .CO(
        intadd_0_n6), .S(mean[1]) );
  fdf2a3 mean_finish_regNext_reg ( .D(mean_finish), .CLK(clk), .CLR(n205), .Q(
        finish) );
  fdf2a3 v_cnt_reg_1_ ( .D(N220), .CLK(net3988), .CLR(n199), .Q(n_zz_20[2]) );
  fdf2a3 v_cnt_reg_0_ ( .D(N219), .CLK(net3988), .CLR(n201), .Q(n_zz_20[1]) );
  fdf2a3 v_cnt_reg_2_ ( .D(N221), .CLK(net3988), .CLR(n202), .Q(v_cnt_2_) );
  and2c1 U3 ( .A(n12), .B(v_cnt_2_), .Y(n195) );
  ao1d6 U4 ( .A(n43), .B(n173), .C(n172), .Y(n44) );
  or2c3 U5 ( .A(n150), .B(n149), .Y(n184) );
  or2c6 U6 ( .A(n42), .B(n95), .Y(n172) );
  or2c1 U7 ( .A(n70), .B(n69), .Y(n145) );
  clk1b6 U8 ( .A(n_zz_24_1_), .Y(n95) );
  or2c1 U9 ( .A(n15), .B(n14), .Y(n40) );
  inv1a1 U10 ( .A(vin1[7]), .Y(n41) );
  and2a3 U11 ( .A(n60), .B(vin2[5]), .Y(n61) );
  inv1a3 U12 ( .A(n_zz_20[2]), .Y(n47) );
  inv1a3 U13 ( .A(n_zz_20[1]), .Y(n13) );
  inv1a1 U14 ( .A(vin2[6]), .Y(n64) );
  and2a3 U15 ( .A(n34), .B(n33), .Y(n1) );
  inv1a3 U16 ( .A(n94), .Y(n150) );
  fa1a3 U17 ( .A(n146), .B(n145), .CI(n144), .CO(n94), .S(n147) );
  clk1b6 U18 ( .A(n191), .Y(n190) );
  ao1d6 U19 ( .A(n164), .B(n173), .C(n172), .Y(N202) );
  ao1d6 U20 ( .A(n168), .B(n173), .C(n172), .Y(N201) );
  ao1d6 U21 ( .A(n174), .B(n173), .C(n172), .Y(N200) );
  ao1d6 U22 ( .A(n153), .B(n173), .C(n172), .Y(N197) );
  fa1a3 U23 ( .A(n41), .B(n40), .CI(n39), .CO(n37), .S(n42) );
  fa1a3 U24 ( .A(vin1[6]), .B(n20), .CI(n142), .CO(n39), .S(n143) );
  fa1a3 U25 ( .A(vin1[5]), .B(n23), .CI(n163), .CO(n142), .S(n164) );
  fa1a3 U26 ( .A(vin2[4]), .B(n80), .CI(n169), .CO(n165), .S(n170) );
  fa1a3 U27 ( .A(vin1[4]), .B(n26), .CI(n167), .CO(n163), .S(n168) );
  fa1a3 U28 ( .A(vin1[3]), .B(n29), .CI(n171), .CO(n167), .S(n174) );
  fa1a3 U29 ( .A(vin2[3]), .B(n83), .CI(n175), .CO(n169), .S(n176) );
  oa4f3 U30 ( .A(n71), .B(rg_leakage_table_0[4]), .C(n16), .D(
        rg_leakage_table_2[4]), .Y(n25) );
  oa4f3 U31 ( .A(n71), .B(rg_leakage_table_0[5]), .C(n16), .D(
        rg_leakage_table_2[5]), .Y(n22) );
  oa4f3 U32 ( .A(n197), .B(rg_leakage_table_7[2]), .C(n91), .D(
        rg_leakage_table_5[2]), .Y(n84) );
  oa4f3 U33 ( .A(n71), .B(rg_leakage_table_0[6]), .C(n16), .D(
        rg_leakage_table_2[6]), .Y(n19) );
  oa4f3 U34 ( .A(n190), .B(rg_leakage_table_1[3]), .C(n90), .D(
        rg_leakage_table_3[3]), .Y(n82) );
  oa4f3 U35 ( .A(n190), .B(rg_leakage_table_0[7]), .C(n90), .D(
        rg_leakage_table_2[7]), .Y(n15) );
  oa4f3 U36 ( .A(n190), .B(rg_leakage_table_1[4]), .C(n90), .D(
        rg_leakage_table_3[4]), .Y(n79) );
  oa4f3 U37 ( .A(n71), .B(rg_leakage_table_0[3]), .C(n16), .D(
        rg_leakage_table_2[3]), .Y(n28) );
  oa4f3 U38 ( .A(n71), .B(rg_leakage_table_1[6]), .C(n16), .D(
        rg_leakage_table_3[6]), .Y(n73) );
  oa4f2 U39 ( .A(n71), .B(rg_leakage_table_0[2]), .C(n16), .D(
        rg_leakage_table_2[2]), .Y(n31) );
  oa4f3 U40 ( .A(n71), .B(rg_leakage_table_1[7]), .C(n16), .D(
        rg_leakage_table_3[7]), .Y(n70) );
  buf1a6 U41 ( .A(n190), .Y(n71) );
  ao2i2 U42 ( .A(n_zz_20[1]), .B(valid_num[0]), .C(n50), .D(n49), .Y(n51) );
  clk1b6 U43 ( .A(n12), .Y(n2) );
  clk1b6 U44 ( .A(n188), .Y(n16) );
  ao1d6 U45 ( .A(n46), .B(n173), .C(n172), .Y(N198) );
  ao1d6 U46 ( .A(n143), .B(n173), .C(n172), .Y(n158) );
  or2a1 U47 ( .A(n112), .B(n_zz_17[5]), .Y(n113) );
  and2a3 U48 ( .A(n31), .B(n30), .Y(n32) );
  oa4f2 U49 ( .A(n190), .B(rg_leakage_table_1[1]), .C(n90), .D(
        rg_leakage_table_3[1]), .Y(n88) );
  oa4f2 U50 ( .A(n197), .B(rg_leakage_table_6[1]), .C(n17), .D(
        rg_leakage_table_4[1]), .Y(n33) );
  oa4f3 U51 ( .A(n197), .B(rg_leakage_table_6[2]), .C(n17), .D(
        rg_leakage_table_4[2]), .Y(n30) );
  oa4f3 U52 ( .A(n197), .B(rg_leakage_table_7[3]), .C(n91), .D(
        rg_leakage_table_5[3]), .Y(n81) );
  oa4f3 U53 ( .A(n197), .B(rg_leakage_table_7[7]), .C(n17), .D(
        rg_leakage_table_5[7]), .Y(n69) );
  oa4f3 U54 ( .A(n197), .B(rg_leakage_table_7[6]), .C(n17), .D(
        rg_leakage_table_5[6]), .Y(n72) );
  oa4f2 U55 ( .A(n197), .B(rg_leakage_table_7[1]), .C(n91), .D(
        rg_leakage_table_5[1]), .Y(n87) );
  clk1b6 U56 ( .A(n193), .Y(n17) );
  or2c6 U57 ( .A(n_zz_20[1]), .B(n47), .Y(n188) );
  inv1a3 U58 ( .A(vin2[7]), .Y(n146) );
  fa1a3 U59 ( .A(vin2[6]), .B(n74), .CI(n159), .CO(n144), .S(n160) );
  fa1a3 U60 ( .A(vin2[5]), .B(n77), .CI(n165), .CO(n159), .S(n166) );
  and2a3 U61 ( .A(n107), .B(n_zz_17[3]), .Y(n106) );
  mx2d3 U62 ( .D0(vin2[4]), .D1(vin1[4]), .S(n67), .Y(n107) );
  mx2d3 U63 ( .D0(vin2[6]), .D1(vin1[6]), .S(n67), .Y(n112) );
  and2a3 U64 ( .A(n28), .B(n27), .Y(n29) );
  and2a3 U65 ( .A(n85), .B(n84), .Y(n86) );
  and2a3 U66 ( .A(n88), .B(n87), .Y(n89) );
  and2a3 U67 ( .A(n82), .B(n81), .Y(n83) );
  and2a3 U68 ( .A(n19), .B(n18), .Y(n20) );
  and2a3 U69 ( .A(n76), .B(n75), .Y(n77) );
  and2a3 U70 ( .A(n73), .B(n72), .Y(n74) );
  and2a3 U71 ( .A(n79), .B(n78), .Y(n80) );
  and2a3 U72 ( .A(n25), .B(n24), .Y(n26) );
  and2a3 U73 ( .A(n22), .B(n21), .Y(n23) );
  oa4f3 U74 ( .A(n190), .B(rg_leakage_table_1[5]), .C(n90), .D(
        rg_leakage_table_3[5]), .Y(n76) );
  oa4f2 U75 ( .A(n190), .B(rg_leakage_table_1[2]), .C(n90), .D(
        rg_leakage_table_3[2]), .Y(n85) );
  buf1a6 U76 ( .A(n16), .Y(n90) );
  buf1a6 U77 ( .A(n17), .Y(n91) );
  and2c6 U78 ( .A(n13), .B(n47), .Y(n12) );
  inv1a3 U79 ( .A(n_zz_16[0]), .Y(n122) );
  and2c2 U80 ( .A(vin2[7]), .B(vin1[7]), .Y(n116) );
  and2c3 U81 ( .A(n140), .B(n188), .Y(N248) );
  and2c3 U82 ( .A(n140), .B(n2), .Y(N252) );
  and2c3 U83 ( .A(n140), .B(n193), .Y(N250) );
  oa4f1 U84 ( .A(n12), .B(rg_leakage_table_6[6]), .C(n17), .D(
        rg_leakage_table_4[6]), .Y(n18) );
  oa4f1 U85 ( .A(n12), .B(rg_leakage_table_6[7]), .C(n91), .D(
        rg_leakage_table_4[7]), .Y(n14) );
  buf1a9 U86 ( .A(n203), .Y(n199) );
  buf1a9 U87 ( .A(n203), .Y(n204) );
  buf1a9 U88 ( .A(n203), .Y(n205) );
  inv1a9 U89 ( .A(n2), .Y(n197) );
  and2c3 U90 ( .A(valid_num[0]), .B(valid_num[1]), .Y(n48) );
  or2c6 U91 ( .A(n_zz_20[2]), .B(n13), .Y(n193) );
  or2c6 U92 ( .A(n13), .B(n47), .Y(n191) );
  and2c3 U93 ( .A(n_zz_20[1]), .B(n196), .Y(N219) );
  inv1a3 U94 ( .A(n51), .Y(n196) );
  oa4f3 U95 ( .A(n197), .B(rg_leakage_table_6[5]), .C(n17), .D(
        rg_leakage_table_4[5]), .Y(n21) );
  oa4f3 U96 ( .A(n197), .B(rg_leakage_table_6[4]), .C(n17), .D(
        rg_leakage_table_4[4]), .Y(n24) );
  oa4f3 U97 ( .A(n197), .B(rg_leakage_table_6[3]), .C(n17), .D(
        rg_leakage_table_4[3]), .Y(n27) );
  oa4f3 U98 ( .A(n71), .B(rg_leakage_table_0[1]), .C(n16), .D(
        rg_leakage_table_2[1]), .Y(n34) );
  oa4f3 U99 ( .A(n71), .B(rg_leakage_table_0[0]), .C(n16), .D(
        rg_leakage_table_2[0]), .Y(n36) );
  oa4f3 U100 ( .A(n197), .B(rg_leakage_table_6[0]), .C(n17), .D(
        rg_leakage_table_4[0]), .Y(n35) );
  or2c3 U101 ( .A(n36), .B(n35), .Y(n152) );
  or2b2 U102 ( .B(vin1[0]), .A(n152), .Y(n45) );
  clk1b6 U103 ( .A(n37), .Y(n_zz_24_1_) );
  fa1a2 U104 ( .A(vin1[2]), .B(n32), .CI(n38), .CO(n171), .S(n43) );
  or2a6 U105 ( .A(n42), .B(n95), .Y(n173) );
  or2c15 U106 ( .A(vin_vld), .B(en), .Y(n140) );
  clk1b6 U107 ( .A(n140), .Y(N132) );
  fa1a2 U108 ( .A(vin1[1]), .B(n1), .CI(n45), .CO(n38), .S(n46) );
  mulpa1b1 U109 ( .X0(n_zz_20[2]), .X1(n47), .S(valid_num[1]), .Z(valid_num[0]), .M(n_zz_20[1]), .P(n50) );
  xor3b3 U110 ( .A(v_cnt_2_), .B(n48), .C(valid_num[2]), .Y(n49) );
  buf1a9 U111 ( .A(resetn), .Y(n203) );
  buf1a6 U112 ( .A(n203), .Y(n200) );
  buf1a6 U113 ( .A(n203), .Y(n202) );
  buf1a6 U114 ( .A(n203), .Y(n201) );
  or2c1 U115 ( .A(vin2[7]), .B(vin1[7]), .Y(n137) );
  and2c3 U116 ( .A(rg_bypass_mean), .B(n137), .Y(N245) );
  and2c3 U117 ( .A(rg_bypass_mean), .B(n116), .Y(N236) );
  and2c3 U118 ( .A(n140), .B(n51), .Y(mean_finish) );
  oa1f3 U119 ( .A(n188), .B(n193), .C(n196), .Y(N220) );
  inv1a1 U120 ( .A(n_zz_17[0]), .Y(n52) );
  and2c3 U121 ( .A(n52), .B(n122), .Y(intadd_0_CI) );
  oa1f3 U122 ( .A(n52), .B(n122), .C(intadd_0_CI), .Y(mean[0]) );
  inv1a3 U123 ( .A(vin2[4]), .Y(n59) );
  inv1a1 U124 ( .A(vin1[3]), .Y(n57) );
  inv1a2 U125 ( .A(vin2[2]), .Y(n55) );
  clk1b6 U126 ( .A(vin1[1]), .Y(n53) );
  fac2a1 U127 ( .A(n53), .B(vin2[1]), .CI(vin2[0]), .CO(n54) );
  fac2a1 U128 ( .A(n55), .B(n54), .CI(vin1[2]), .CO(n56) );
  fac2a1 U129 ( .A(n57), .B(vin2[3]), .CI(n56), .CO(n58) );
  fac2a1 U130 ( .A(n59), .B(n58), .CI(vin1[4]), .CO(n62) );
  inv1a3 U131 ( .A(vin1[5]), .Y(n60) );
  ao4f3 U132 ( .A(n62), .B(n61), .C(vin2[5]), .D(n60), .Y(n63) );
  fac2a1 U133 ( .A(n64), .B(vin1[6]), .CI(n63), .CO(n65) );
  fac2a1 U134 ( .A(n146), .B(vin1[7]), .CI(n65), .CO(n66) );
  buf1a15 U135 ( .A(n66), .Y(n68) );
  inv1a27 U136 ( .A(n68), .Y(n67) );
  ao4f3 U137 ( .A(n68), .B(vin1[0]), .C(n67), .D(vin2[0]), .Y(n97) );
  and2c3 U138 ( .A(rg_bypass_mean), .B(n97), .Y(N229) );
  ao4f3 U139 ( .A(n68), .B(vin2[0]), .C(n67), .D(vin1[0]), .Y(n119) );
  and2c3 U140 ( .A(rg_bypass_mean), .B(n119), .Y(N238) );
  oa4f3 U141 ( .A(n67), .B(vin2[1]), .C(n68), .D(vin1[1]), .Y(n120) );
  and2c3 U142 ( .A(rg_bypass_mean), .B(n120), .Y(N239) );
  ao4f3 U143 ( .A(n68), .B(vin2[2]), .C(n67), .D(vin1[2]), .Y(n125) );
  and2c3 U144 ( .A(rg_bypass_mean), .B(n125), .Y(N240) );
  ao4f3 U145 ( .A(n68), .B(vin1[1]), .C(n67), .D(vin2[1]), .Y(n99) );
  and2c3 U146 ( .A(rg_bypass_mean), .B(n99), .Y(N230) );
  oa4f3 U147 ( .A(n67), .B(vin2[5]), .C(n68), .D(vin1[5]), .Y(n118) );
  and2c3 U148 ( .A(rg_bypass_mean), .B(n118), .Y(N243) );
  oa4f3 U149 ( .A(n67), .B(vin2[3]), .C(n68), .D(vin1[3]), .Y(n126) );
  and2c3 U150 ( .A(rg_bypass_mean), .B(n126), .Y(N241) );
  mx2d3 U151 ( .D0(vin2[2]), .D1(vin1[2]), .S(n67), .Y(n96) );
  and2c3 U152 ( .A(rg_bypass_mean), .B(n96), .Y(N231) );
  and2c3 U153 ( .A(rg_bypass_mean), .B(n107), .Y(N233) );
  and2c3 U154 ( .A(rg_bypass_mean), .B(n112), .Y(N235) );
  ao4f3 U155 ( .A(n68), .B(vin2[6]), .C(n67), .D(vin1[6]), .Y(n136) );
  and2c3 U156 ( .A(rg_bypass_mean), .B(n136), .Y(N244) );
  ao4f3 U157 ( .A(n68), .B(vin2[4]), .C(n67), .D(vin1[4]), .Y(n131) );
  and2c3 U158 ( .A(rg_bypass_mean), .B(n131), .Y(N242) );
  ao4f3 U159 ( .A(n68), .B(vin1[5]), .C(n67), .D(vin2[5]), .Y(n110) );
  and2c3 U160 ( .A(rg_bypass_mean), .B(n110), .Y(N234) );
  ao4f3 U161 ( .A(n68), .B(vin1[3]), .C(n67), .D(vin2[3]), .Y(n104) );
  and2c3 U162 ( .A(rg_bypass_mean), .B(n104), .Y(N232) );
  oa4f3 U163 ( .A(n197), .B(rg_leakage_table_7[5]), .C(n91), .D(
        rg_leakage_table_5[5]), .Y(n75) );
  oa4f3 U164 ( .A(n197), .B(rg_leakage_table_7[4]), .C(n91), .D(
        rg_leakage_table_5[4]), .Y(n78) );
  oa4f3 U165 ( .A(n190), .B(rg_leakage_table_1[0]), .C(n90), .D(
        rg_leakage_table_3[0]), .Y(n93) );
  oa4f3 U166 ( .A(n197), .B(rg_leakage_table_7[0]), .C(n91), .D(
        rg_leakage_table_5[0]), .Y(n92) );
  or2c1 U167 ( .A(n93), .B(n92), .Y(n154) );
  or2b2 U168 ( .B(vin2[0]), .A(n154), .Y(n148) );
  ao4f3 U169 ( .A(n197), .B(n95), .C(n2), .D(n94), .Y(N214) );
  ao4f3 U170 ( .A(n91), .B(n95), .C(n193), .D(n94), .Y(N194) );
  ao4f3 U171 ( .A(n90), .B(n95), .C(n188), .D(n94), .Y(N174) );
  ao4f3 U172 ( .A(n190), .B(n95), .C(n191), .D(n94), .Y(N154) );
  and2c3 U173 ( .A(n140), .B(n191), .Y(N246) );
  inv1a1 U174 ( .A(n96), .Y(n102) );
  inv1a1 U175 ( .A(n_zz_17[1]), .Y(n101) );
  and2a3 U176 ( .A(n97), .B(min_v_0_), .Y(n98) );
  fac2a1 U177 ( .A(n_zz_17[0]), .B(n99), .CI(n98), .CO(n100) );
  fac2a1 U178 ( .A(n102), .B(n101), .CI(n100), .CO(n103) );
  fac2a1 U179 ( .A(n_zz_17[2]), .B(n104), .CI(n103), .CO(n105) );
  inv1a2 U180 ( .A(n105), .Y(n108) );
  oa4a3 U181 ( .A(n108), .B(n106), .C(n107), .D(n_zz_17[3]), .Y(n109) );
  fac2a1 U182 ( .A(n110), .B(n_zz_17[4]), .CI(n109), .CO(n111) );
  ao1d3 U183 ( .A(n112), .B(n_zz_17[5]), .C(n111), .Y(n114) );
  or2c3 U184 ( .A(n114), .B(n113), .Y(n115) );
  fac2a1 U185 ( .A(n116), .B(n_zz_17_8), .CI(n115), .CO(n117) );
  oa4e3 U186 ( .C(N132), .D(rg_bypass_mean), .B(v_cnt_2_), .A(N246), .Y(n139)
         );
  ao1d2 U187 ( .A(n117), .B(N132), .C(n139), .Y(N255) );
  inv1a1 U188 ( .A(n_zz_16[4]), .Y(n134) );
  inv1a1 U189 ( .A(n118), .Y(n133) );
  and2c3 U190 ( .A(max_v_0_), .B(n119), .Y(n123) );
  inv1a1 U191 ( .A(n120), .Y(n121) );
  fac2a1 U192 ( .A(n123), .B(n122), .CI(n121), .CO(n124) );
  fac2a1 U193 ( .A(n125), .B(n124), .CI(n_zz_16[1]), .CO(n129) );
  inv1a1 U194 ( .A(n_zz_16[2]), .Y(n128) );
  inv1a1 U195 ( .A(n126), .Y(n127) );
  fac2a1 U196 ( .A(n129), .B(n128), .CI(n127), .CO(n130) );
  fac2a1 U197 ( .A(n_zz_16[3]), .B(n131), .CI(n130), .CO(n132) );
  fac2a1 U198 ( .A(n134), .B(n133), .CI(n132), .CO(n135) );
  fac2a1 U199 ( .A(n_zz_16[5]), .B(n136), .CI(n135), .CO(n138) );
  fac2a1 U200 ( .A(n_zz_16_8), .B(n138), .CI(n137), .CO(n141) );
  ao1f2 U201 ( .A(n141), .B(n140), .C(n139), .Y(N254) );
  inv1a3 U202 ( .A(n147), .Y(n149) );
  and2c6 U203 ( .A(n150), .B(n149), .Y(n186) );
  fa1a2 U204 ( .A(vin2[1]), .B(n89), .CI(n148), .CO(n183), .S(n151) );
  ao1f3 U205 ( .A(n186), .B(n151), .C(n184), .Y(n192) );
  ao4c2 U206 ( .A(n188), .B(n192), .C(n188), .D(N198), .Y(N168) );
  xor2a2 U207 ( .A(vin1[0]), .B(n152), .Y(n153) );
  inv1a3 U208 ( .A(N197), .Y(n157) );
  xor2a2 U209 ( .A(vin2[0]), .B(n154), .Y(n155) );
  ao1f3 U210 ( .A(n186), .B(n155), .C(n184), .Y(n156) );
  ao4f3 U211 ( .A(n90), .B(n157), .C(n188), .D(n156), .Y(N167) );
  ao4f3 U212 ( .A(n190), .B(n157), .C(n191), .D(n156), .Y(N147) );
  ao4f3 U213 ( .A(n197), .B(n157), .C(n2), .D(n156), .Y(N207) );
  ao4f3 U214 ( .A(n91), .B(n157), .C(n193), .D(n156), .Y(N187) );
  inv1a3 U215 ( .A(n158), .Y(n162) );
  ao1f3 U216 ( .A(n186), .B(n160), .C(n184), .Y(n161) );
  ao4f3 U217 ( .A(n91), .B(n162), .C(n193), .D(n161), .Y(N193) );
  ao4f3 U218 ( .A(n190), .B(n162), .C(n191), .D(n161), .Y(N153) );
  ao4f3 U219 ( .A(n12), .B(n162), .C(n2), .D(n161), .Y(N213) );
  ao4f3 U220 ( .A(n90), .B(n162), .C(n188), .D(n161), .Y(N173) );
  inv1a3 U221 ( .A(N202), .Y(n178) );
  ao1f3 U222 ( .A(n186), .B(n166), .C(n184), .Y(n177) );
  ao4f3 U223 ( .A(n12), .B(n178), .C(n2), .D(n177), .Y(N212) );
  inv1a3 U224 ( .A(N201), .Y(n180) );
  ao1f3 U225 ( .A(n186), .B(n170), .C(n184), .Y(n179) );
  ao4f3 U226 ( .A(n197), .B(n180), .C(n2), .D(n179), .Y(N211) );
  inv1a3 U227 ( .A(N200), .Y(n182) );
  ao1f3 U228 ( .A(n186), .B(n176), .C(n184), .Y(n181) );
  ao4f3 U229 ( .A(n12), .B(n182), .C(n2), .D(n181), .Y(N210) );
  ao4f3 U230 ( .A(n91), .B(n182), .C(n193), .D(n181), .Y(N190) );
  ao4f3 U231 ( .A(n91), .B(n180), .C(n193), .D(n179), .Y(N191) );
  ao4f3 U232 ( .A(n91), .B(n178), .C(n193), .D(n177), .Y(N192) );
  ao4f3 U233 ( .A(n190), .B(n180), .C(n191), .D(n179), .Y(N151) );
  ao4f3 U234 ( .A(n190), .B(n178), .C(n191), .D(n177), .Y(N152) );
  ao4f3 U235 ( .A(n190), .B(n182), .C(n191), .D(n181), .Y(N150) );
  ao4f3 U236 ( .A(n90), .B(n178), .C(n188), .D(n177), .Y(N172) );
  ao4f3 U237 ( .A(n90), .B(n180), .C(n188), .D(n179), .Y(N171) );
  ao4f3 U238 ( .A(n90), .B(n182), .C(n188), .D(n181), .Y(N170) );
  inv1a3 U239 ( .A(n44), .Y(n189) );
  fa1a2 U240 ( .A(vin2[2]), .B(n86), .CI(n183), .CO(n175), .S(n185) );
  ao1f3 U241 ( .A(n186), .B(n185), .C(n184), .Y(n187) );
  ao4f3 U242 ( .A(n12), .B(n189), .C(n2), .D(n187), .Y(N209) );
  ao4f3 U243 ( .A(n91), .B(n189), .C(n193), .D(n187), .Y(N189) );
  ao4f3 U244 ( .A(n190), .B(n189), .C(n191), .D(n187), .Y(N149) );
  ao4f3 U245 ( .A(n90), .B(n189), .C(n188), .D(n187), .Y(N169) );
  inv1a3 U246 ( .A(N198), .Y(n194) );
  ao4e3 U247 ( .B(n191), .A(n194), .C(n191), .D(n192), .Y(N148) );
  ao4f3 U248 ( .A(n12), .B(n194), .C(n2), .D(n192), .Y(N208) );
  ao4f3 U249 ( .A(n91), .B(n194), .C(n193), .D(n192), .Y(N188) );
  inv1a1 U250 ( .A(n_zz_16_8), .Y(intadd_0_A_5_) );
  inv1a1 U251 ( .A(n_zz_17_8), .Y(intadd_0_B_5_) );
  inv1a1 U252 ( .A(intadd_0_n1), .Y(mean[7]) );
  oa2i2 U253 ( .A(n197), .B(v_cnt_2_), .C(n196), .D(n195), .Y(N221) );
endmodule


module SNPS_CLOCK_GATE_HIGH_booth4_0_1 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3922;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3922) );
  and2a3 main_gate ( .A(net3922), .B(CLK), .Y(ENCLK) );
endmodule


module booth4_1 ( io_din_vld, io_dinA, io_dinB, io_dout_vld, io_dout, clk, 
        resetn );
  input [7:0] io_dinA;
  input [7:0] io_dinB;
  output [15:0] io_dout;
  input io_din_vld, clk, resetn;
  output io_dout_vld;
  wire   n_zz_6_0_, cal_en, cal_en_regNext, N18, N19, N59, N60, N61, N62, N63,
         N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, net3928, n58,
         n59, n60, n61, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205;
  wire   [9:8] n_zz_1;
  wire   [1:0] cal_cnt;

  SNPS_CLOCK_GATE_HIGH_booth4_0_1 clk_gate_shiftReg_reg ( .CLK(clk), .EN(n61), 
        .ENCLK(net3928) );
  fdf2a3 shiftReg_reg_18_ ( .D(n59), .CLK(net3928), .CLR(n203), .Q(n_zz_1[9])
         );
  fdf2a3 shiftReg_reg_17_ ( .D(n205), .CLK(net3928), .CLR(n203), .Q(n_zz_1[8])
         );
  fdf2a3 shiftReg_reg_8_ ( .D(N67), .CLK(net3928), .CLR(n203), .Q(io_dout[7])
         );
  fdf2a3 shiftReg_reg_6_ ( .D(N65), .CLK(net3928), .CLR(n203), .Q(io_dout[5])
         );
  fdf2a3 shiftReg_reg_4_ ( .D(N63), .CLK(net3928), .CLR(n204), .Q(io_dout[3])
         );
  fdf2a3 shiftReg_reg_9_ ( .D(N68), .CLK(net3928), .CLR(n204), .Q(io_dout[8])
         );
  fdf2a3 shiftReg_reg_7_ ( .D(N66), .CLK(net3928), .CLR(n204), .Q(io_dout[6])
         );
  fdf2a3 shiftReg_reg_5_ ( .D(N64), .CLK(net3928), .CLR(n204), .Q(io_dout[4])
         );
  fdf2a3 shiftReg_reg_3_ ( .D(N62), .CLK(net3928), .CLR(n204), .Q(io_dout[2])
         );
  fdf1c2 cal_en_regNext_reg ( .D(n58), .CLK(clk), .QN(cal_en_regNext) );
  fdf2a3 cal_cnt_reg_0_ ( .D(N18), .CLK(net3928), .CLR(n203), .Q(cal_cnt[0])
         );
  fdf2a3 cal_cnt_reg_1_ ( .D(N19), .CLK(net3928), .CLR(n203), .Q(cal_cnt[1])
         );
  fdf2a3 cal_en_reg ( .D(n60), .CLK(clk), .CLR(n203), .Q(cal_en) );
  fdf2a3 shiftReg_reg_0_ ( .D(N59), .CLK(net3928), .CLR(n204), .Q(n_zz_6_0_)
         );
  fdf2a3 shiftReg_reg_1_ ( .D(N60), .CLK(net3928), .CLR(n204), .Q(io_dout[0])
         );
  fdf2a3 shiftReg_reg_2_ ( .D(N61), .CLK(net3928), .CLR(n204), .Q(io_dout[1])
         );
  fdf2a6 shiftReg_reg_13_ ( .D(N72), .CLK(net3928), .CLR(n204), .Q(io_dout[12]) );
  fdf2a6 shiftReg_reg_11_ ( .D(N70), .CLK(net3928), .CLR(n204), .Q(io_dout[10]) );
  fdf2a6 shiftReg_reg_12_ ( .D(N71), .CLK(net3928), .CLR(n203), .Q(io_dout[11]) );
  fdf2a6 shiftReg_reg_10_ ( .D(N69), .CLK(net3928), .CLR(n203), .Q(io_dout[9])
         );
  fdf2a6 shiftReg_reg_14_ ( .D(N73), .CLK(net3928), .CLR(n203), .Q(io_dout[13]) );
  fdf2a6 shiftReg_reg_15_ ( .D(N74), .CLK(net3928), .CLR(n204), .Q(io_dout[14]) );
  fdf2a9 shiftReg_reg_16_ ( .D(n205), .CLK(net3928), .CLR(n203), .Q(
        io_dout[15]) );
  inv1a1 U3 ( .A(io_din_vld), .Y(n202) );
  or3d1 U4 ( .A(n169), .B(n168), .C(n167), .Y(n170) );
  or2c1 U5 ( .A(n16), .B(n108), .Y(n110) );
  or2c1 U6 ( .A(io_dinB[7]), .B(n21), .Y(n139) );
  or2a1 U7 ( .A(io_dout[13]), .B(n129), .Y(n16) );
  or2c1 U8 ( .A(n38), .B(io_dout[12]), .Y(n14) );
  or2c1 U9 ( .A(n129), .B(io_dout[13]), .Y(n108) );
  or2a1 U10 ( .A(io_dout[11]), .B(n98), .Y(n12) );
  and2c1 U11 ( .A(io_dout[10]), .B(n82), .Y(n11) );
  or2c1 U12 ( .A(n82), .B(io_dout[10]), .Y(n10) );
  or2c1 U13 ( .A(n98), .B(io_dout[11]), .Y(n76) );
  or2a1 U14 ( .A(io_dout[9]), .B(n63), .Y(n7) );
  inv1a1 U15 ( .A(n181), .Y(n9) );
  inv1a3 U16 ( .A(io_dinB[0]), .Y(n184) );
  inv1a3 U17 ( .A(io_dinB[1]), .Y(n63) );
  and2c1 U18 ( .A(io_dout[14]), .B(n145), .Y(n19) );
  ao1f2 U19 ( .A(n56), .B(n11), .C(n10), .Y(n77) );
  ao1f2 U20 ( .A(n124), .B(n19), .C(n18), .Y(n140) );
  oa4f1 U21 ( .A(n175), .B(n197), .C(io_dout[8]), .D(n174), .Y(n176) );
  or3d1 U22 ( .A(n151), .B(n150), .C(n149), .Y(n152) );
  inv1a1 U23 ( .A(n76), .Y(n13) );
  or2c1 U24 ( .A(n20), .B(n139), .Y(n141) );
  or2c1 U25 ( .A(io_dout[15]), .B(n163), .Y(n156) );
  ao1d2 U26 ( .A(n54), .B(n200), .C(n53), .Y(n59) );
  xor2a2 U27 ( .A(n28), .B(n27), .Y(n34) );
  inv1a1 U28 ( .A(n108), .Y(n17) );
  or2c1 U29 ( .A(n12), .B(n76), .Y(n78) );
  or2c1 U30 ( .A(n7), .B(n180), .Y(n182) );
  or2c1 U31 ( .A(n145), .B(io_dout[14]), .Y(n18) );
  inv1a1 U32 ( .A(n139), .Y(n22) );
  or2a1 U33 ( .A(n21), .B(io_dinB[7]), .Y(n20) );
  inv1a3 U34 ( .A(io_dinB[2]), .Y(n82) );
  or2c1 U35 ( .A(n157), .B(n156), .Y(n159) );
  and2c2 U36 ( .A(cal_cnt[0]), .B(n58), .Y(N18) );
  inv1a1 U37 ( .A(io_dout[15]), .Y(n21) );
  inv1a3 U38 ( .A(cal_en), .Y(n58) );
  oa1f3 U39 ( .A(n153), .B(n197), .C(n152), .Y(n154) );
  oa1f3 U40 ( .A(n137), .B(n197), .C(n136), .Y(n138) );
  xor2a2 U41 ( .A(n159), .B(n158), .Y(n171) );
  ao1f2 U42 ( .A(n158), .B(n155), .C(n156), .Y(n23) );
  or2c3 U43 ( .A(n44), .B(n43), .Y(n142) );
  xor2b2 U44 ( .A(n141), .B(n140), .Y(n153) );
  ao1d2 U45 ( .A(n42), .B(n145), .C(n125), .Y(n44) );
  oa4f2 U46 ( .A(n166), .B(n187), .C(n_zz_1[8]), .D(n5), .Y(n167) );
  fa1a2 U47 ( .A(n163), .B(io_dinB[7]), .CI(n162), .CO(n27), .S(n164) );
  xor2a2 U48 ( .A(n124), .B(n123), .Y(n137) );
  xor2b2 U49 ( .A(n110), .B(n109), .Y(n121) );
  fa1a2 U50 ( .A(io_dout[15]), .B(n145), .CI(n144), .CO(n162), .S(n146) );
  or2c3 U51 ( .A(n41), .B(n40), .Y(n111) );
  xor2a2 U52 ( .A(n93), .B(n92), .Y(n106) );
  fa1a2 U53 ( .A(io_dout[14]), .B(n129), .CI(n128), .CO(n144), .S(n130) );
  xor2b2 U54 ( .A(n78), .B(n77), .Y(n90) );
  oa1f3 U55 ( .A(n74), .B(n197), .C(n73), .Y(n75) );
  ao1d2 U56 ( .A(n39), .B(n38), .C(n94), .Y(n41) );
  oa4f3 U57 ( .A(n116), .B(n187), .C(io_dout[13]), .D(n5), .Y(n117) );
  fa1a2 U58 ( .A(io_dout[13]), .B(n38), .CI(n113), .CO(n128), .S(n114) );
  xor2a2 U59 ( .A(n182), .B(n181), .Y(n198) );
  fa1a2 U60 ( .A(io_dout[12]), .B(n98), .CI(n97), .CO(n113), .S(n99) );
  oa4f3 U61 ( .A(n101), .B(n187), .C(io_dout[12]), .D(n5), .Y(n102) );
  oa4f3 U62 ( .A(n85), .B(n187), .C(io_dout[11]), .D(n5), .Y(n86) );
  or2c3 U63 ( .A(n37), .B(n36), .Y(n79) );
  fa1a2 U64 ( .A(io_dout[11]), .B(n82), .CI(n81), .CO(n97), .S(n83) );
  inv1a2 U65 ( .A(n180), .Y(n8) );
  ao1d2 U66 ( .A(n35), .B(n82), .C(n65), .Y(n37) );
  oa4f3 U67 ( .A(n69), .B(n187), .C(io_dout[10]), .D(n5), .Y(n70) );
  fa1a2 U68 ( .A(io_dout[10]), .B(n63), .CI(n62), .CO(n81), .S(n64) );
  inv1a2 U69 ( .A(io_dinB[4]), .Y(n38) );
  inv1a3 U70 ( .A(io_dinB[6]), .Y(n145) );
  inv1a3 U71 ( .A(io_dinB[3]), .Y(n98) );
  inv1a3 U72 ( .A(io_dinB[5]), .Y(n129) );
  ha1a3 U73 ( .A(io_dout[9]), .B(io_dinB[0]), .CO(n68), .S(n188) );
  ao1e9 U74 ( .B(io_dout[1]), .A(n30), .C(n4), .Y(n5) );
  ao2i1 U75 ( .A(cal_cnt[1]), .B(n58), .C(n202), .D(n52), .Y(n60) );
  and2c3 U76 ( .A(n163), .B(io_dout[15]), .Y(n155) );
  inv1a3 U77 ( .A(io_dout[1]), .Y(n55) );
  oa1f1 U78 ( .A(n171), .B(n197), .C(n170), .Y(n173) );
  or2c3 U79 ( .A(n26), .B(n197), .Y(n50) );
  xor2a2 U80 ( .A(n57), .B(n56), .Y(n74) );
  and2c6 U81 ( .A(n30), .B(io_dout[1]), .Y(n187) );
  clk1b6 U82 ( .A(n200), .Y(n172) );
  and2c9 U83 ( .A(n58), .B(io_din_vld), .Y(n200) );
  xor2b2 U84 ( .A(n24), .B(n23), .Y(n26) );
  xor2a2 U85 ( .A(n_zz_1[8]), .B(n6), .Y(n28) );
  inv1a3 U86 ( .A(n_zz_1[8]), .Y(n163) );
  xor2b2 U87 ( .A(io_dout[8]), .B(n184), .Y(n175) );
  and2c3 U88 ( .A(n184), .B(io_dout[8]), .Y(n181) );
  or2a1 U89 ( .A(n184), .B(io_dout[9]), .Y(n62) );
  or2c1 U90 ( .A(n63), .B(io_dout[9]), .Y(n180) );
  or2c1 U91 ( .A(io_dinB[2]), .B(io_dout[10]), .Y(n36) );
  or2c1 U92 ( .A(io_dinB[4]), .B(io_dout[12]), .Y(n40) );
  and2c3 U93 ( .A(io_dout[12]), .B(n38), .Y(n15) );
  and2c6 U94 ( .A(n174), .B(io_dout[1]), .Y(n194) );
  or2c1 U95 ( .A(io_dinB[6]), .B(io_dout[14]), .Y(n43) );
  and2c3 U96 ( .A(n51), .B(n172), .Y(n205) );
  or2c3 U97 ( .A(io_dout[0]), .B(n_zz_6_0_), .Y(n30) );
  inv1a1 U98 ( .A(io_dout[0]), .Y(n3) );
  inv1a1 U99 ( .A(n_zz_6_0_), .Y(n2) );
  or2c1 U100 ( .A(n3), .B(n2), .Y(n25) );
  inv1a1 U101 ( .A(n25), .Y(n29) );
  or2c1 U102 ( .A(n29), .B(n55), .Y(n4) );
  inv1a1 U103 ( .A(n_zz_1[9]), .Y(n6) );
  inv1a1 U104 ( .A(n28), .Y(n24) );
  oa1f3 U105 ( .A(n7), .B(n9), .C(n8), .Y(n56) );
  oa1f3 U106 ( .A(n77), .B(n12), .C(n13), .Y(n93) );
  ao1f3 U107 ( .A(n93), .B(n15), .C(n14), .Y(n109) );
  oa1f3 U108 ( .A(n109), .B(n16), .C(n17), .Y(n124) );
  oa1f3 U109 ( .A(n140), .B(n20), .C(n22), .Y(n158) );
  or2c3 U110 ( .A(n25), .B(n30), .Y(n174) );
  and2c6 U111 ( .A(n174), .B(n55), .Y(n197) );
  and2a3 U112 ( .A(n29), .B(io_dout[1]), .Y(n185) );
  xor3b3 U113 ( .A(n_zz_1[9]), .B(io_dinB[7]), .C(n31), .Y(n32) );
  inv1a1 U114 ( .A(n32), .Y(n33) );
  oa4f3 U115 ( .A(n34), .B(n185), .C(n187), .D(n33), .Y(n49) );
  xor2b2 U116 ( .A(n_zz_1[9]), .B(io_dinB[7]), .Y(n46) );
  inv1a1 U117 ( .A(io_dout[14]), .Y(n42) );
  inv1a1 U118 ( .A(io_dout[12]), .Y(n39) );
  inv1a1 U119 ( .A(io_dout[10]), .Y(n35) );
  xor2b2 U120 ( .A(n46), .B(n45), .Y(n47) );
  or2c3 U121 ( .A(n47), .B(n194), .Y(n48) );
  or3d6 U122 ( .A(n50), .B(n49), .C(n48), .Y(n54) );
  oa1f3 U123 ( .A(n_zz_1[9]), .B(n5), .C(n54), .Y(n51) );
  inv1a1 U124 ( .A(N18), .Y(n52) );
  or3d1 U125 ( .A(n5), .B(n_zz_1[9]), .C(n202), .Y(n53) );
  and2a3 U126 ( .A(cal_en_regNext), .B(n58), .Y(io_dout_vld) );
  buf1a6 U127 ( .A(resetn), .Y(n204) );
  buf1a6 U128 ( .A(resetn), .Y(n203) );
  and2c3 U129 ( .A(n172), .B(n55), .Y(N59) );
  xor2b2 U130 ( .A(io_dout[10]), .B(io_dinB[2]), .Y(n66) );
  inv1a1 U131 ( .A(n66), .Y(n57) );
  or2c1 U132 ( .A(n64), .B(n185), .Y(n72) );
  xor2b2 U133 ( .A(n66), .B(n65), .Y(n67) );
  or2c1 U134 ( .A(n67), .B(n194), .Y(n71) );
  fa1a2 U135 ( .A(io_dinB[1]), .B(io_dout[10]), .CI(n68), .CO(n84), .S(n69) );
  or3d1 U136 ( .A(n72), .B(n71), .C(n70), .Y(n73) );
  and2c3 U137 ( .A(n75), .B(n172), .Y(N68) );
  fa1a2 U138 ( .A(io_dinB[3]), .B(io_dout[11]), .CI(n79), .CO(n94), .S(n80) );
  or2c1 U139 ( .A(n80), .B(n194), .Y(n88) );
  or2c1 U140 ( .A(n83), .B(n185), .Y(n87) );
  fa1a2 U141 ( .A(io_dinB[2]), .B(io_dout[11]), .CI(n84), .CO(n100), .S(n85)
         );
  or3d1 U142 ( .A(n88), .B(n87), .C(n86), .Y(n89) );
  oa1f3 U143 ( .A(n90), .B(n197), .C(n89), .Y(n91) );
  and2c3 U144 ( .A(n91), .B(n172), .Y(N69) );
  xor2b2 U145 ( .A(io_dout[12]), .B(io_dinB[4]), .Y(n95) );
  inv1a1 U146 ( .A(n95), .Y(n92) );
  xor2b2 U147 ( .A(n95), .B(n94), .Y(n96) );
  or2c1 U148 ( .A(n96), .B(n194), .Y(n104) );
  or2c1 U149 ( .A(n99), .B(n185), .Y(n103) );
  fa1a2 U150 ( .A(io_dinB[3]), .B(io_dout[12]), .CI(n100), .CO(n115), .S(n101)
         );
  or3d1 U151 ( .A(n104), .B(n103), .C(n102), .Y(n105) );
  oa1f3 U152 ( .A(n106), .B(n197), .C(n105), .Y(n107) );
  and2c3 U153 ( .A(n107), .B(n172), .Y(N70) );
  fa1a2 U154 ( .A(io_dinB[5]), .B(io_dout[13]), .CI(n111), .CO(n125), .S(n112)
         );
  or2c1 U155 ( .A(n112), .B(n194), .Y(n119) );
  or2c1 U156 ( .A(n114), .B(n185), .Y(n118) );
  fa1a2 U157 ( .A(io_dinB[4]), .B(io_dout[13]), .CI(n115), .CO(n131), .S(n116)
         );
  or3d1 U158 ( .A(n119), .B(n118), .C(n117), .Y(n120) );
  oa1f3 U159 ( .A(n121), .B(n197), .C(n120), .Y(n122) );
  and2c3 U160 ( .A(n122), .B(n172), .Y(N71) );
  xor2b2 U161 ( .A(io_dout[14]), .B(io_dinB[6]), .Y(n126) );
  inv1a1 U162 ( .A(n126), .Y(n123) );
  xor2b2 U163 ( .A(n126), .B(n125), .Y(n127) );
  or2c1 U164 ( .A(n127), .B(n194), .Y(n135) );
  or2c1 U165 ( .A(n130), .B(n185), .Y(n134) );
  fa1a2 U166 ( .A(io_dinB[5]), .B(io_dout[14]), .CI(n131), .CO(n147), .S(n132)
         );
  oa4f3 U167 ( .A(n132), .B(n187), .C(io_dout[14]), .D(n5), .Y(n133) );
  or3d1 U168 ( .A(n135), .B(n134), .C(n133), .Y(n136) );
  and2c3 U169 ( .A(n138), .B(n172), .Y(N72) );
  fa1a2 U170 ( .A(io_dout[15]), .B(io_dinB[7]), .CI(n142), .CO(n160), .S(n143)
         );
  or2c1 U171 ( .A(n143), .B(n194), .Y(n151) );
  or2c1 U172 ( .A(n146), .B(n185), .Y(n150) );
  fa1a2 U173 ( .A(io_dinB[6]), .B(io_dout[15]), .CI(n147), .CO(n165), .S(n148)
         );
  oa4f3 U174 ( .A(n148), .B(n187), .C(io_dout[15]), .D(n5), .Y(n149) );
  and2c3 U175 ( .A(n154), .B(n172), .Y(N73) );
  inv1a1 U176 ( .A(n155), .Y(n157) );
  fa1a2 U177 ( .A(n_zz_1[8]), .B(io_dinB[7]), .CI(n160), .CO(n45), .S(n161) );
  or2c1 U178 ( .A(n161), .B(n194), .Y(n169) );
  or2c1 U179 ( .A(n164), .B(n185), .Y(n168) );
  fa1a2 U180 ( .A(n_zz_1[8]), .B(io_dinB[7]), .CI(n165), .CO(n31), .S(n166) );
  and2c3 U181 ( .A(n173), .B(n172), .Y(N74) );
  ao4a3 U182 ( .A(io_dinA[1]), .B(io_din_vld), .C(n200), .D(io_dout[3]), .Y(
        N61) );
  ao4a3 U183 ( .A(io_din_vld), .B(io_dinA[0]), .C(n200), .D(io_dout[2]), .Y(
        N60) );
  ao4a3 U184 ( .A(io_din_vld), .B(io_dinA[2]), .C(n200), .D(io_dout[4]), .Y(
        N62) );
  ao4a3 U185 ( .A(io_din_vld), .B(io_dinA[3]), .C(n200), .D(io_dout[5]), .Y(
        N63) );
  ao4a3 U186 ( .A(io_din_vld), .B(io_dinA[4]), .C(n200), .D(io_dout[6]), .Y(
        N64) );
  ao4a3 U187 ( .A(io_din_vld), .B(io_dinA[5]), .C(n200), .D(io_dout[7]), .Y(
        N65) );
  ha1a2 U188 ( .A(io_dout[8]), .B(io_dinB[0]), .CO(n183), .S(n177) );
  ao1d2 U189 ( .A(n194), .B(n177), .C(n176), .Y(n178) );
  or2c1 U190 ( .A(n200), .B(n178), .Y(n179) );
  ao1d1 U191 ( .A(io_din_vld), .B(io_dinA[6]), .C(n179), .Y(N66) );
  fa1a2 U192 ( .A(n183), .B(io_dout[9]), .CI(io_dinB[1]), .CO(n65), .S(n195)
         );
  inv1a1 U193 ( .A(n5), .Y(n192) );
  inv1a1 U194 ( .A(io_dout[9]), .Y(n191) );
  xor2b2 U195 ( .A(io_dout[9]), .B(n184), .Y(n186) );
  or2c1 U196 ( .A(n186), .B(n185), .Y(n190) );
  or2c1 U197 ( .A(n188), .B(n187), .Y(n189) );
  ao2i3 U198 ( .A(n192), .B(n191), .C(n190), .D(n189), .Y(n193) );
  oa1f3 U199 ( .A(n195), .B(n194), .C(n193), .Y(n196) );
  ao1d2 U200 ( .A(n198), .B(n197), .C(n196), .Y(n199) );
  ao4a3 U201 ( .A(io_din_vld), .B(io_dinA[7]), .C(n200), .D(n199), .Y(N67) );
  and2c1 U202 ( .A(cal_cnt[0]), .B(cal_cnt[1]), .Y(n201) );
  oa2i2 U203 ( .A(cal_cnt[0]), .B(cal_cnt[1]), .C(n58), .D(n201), .Y(N19) );
  or2c1 U204 ( .A(n202), .B(n58), .Y(n61) );
endmodule


module SNPS_CLOCK_GATE_HIGH_booth4_0_0 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3922;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3922) );
  and2a3 main_gate ( .A(net3922), .B(CLK), .Y(ENCLK) );
endmodule


module booth4_0 ( io_din_vld, io_dinA, io_dinB, io_dout_vld, io_dout, clk, 
        resetn );
  input [7:0] io_dinA;
  input [7:0] io_dinB;
  output [15:0] io_dout;
  input io_din_vld, clk, resetn;
  output io_dout_vld;
  wire   n_zz_6_0_, cal_en, cal_en_regNext, N18, N19, N59, N60, N61, N62, N63,
         N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, net3928, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209;
  wire   [9:8] n_zz_1;
  wire   [1:0] cal_cnt;

  SNPS_CLOCK_GATE_HIGH_booth4_0_0 clk_gate_shiftReg_reg ( .CLK(clk), .EN(n206), 
        .ENCLK(net3928) );
  fdf2a3 shiftReg_reg_18_ ( .D(n208), .CLK(net3928), .CLR(n203), .Q(n_zz_1[9])
         );
  fdf2a3 shiftReg_reg_8_ ( .D(N67), .CLK(net3928), .CLR(n203), .Q(io_dout[7])
         );
  fdf2a3 shiftReg_reg_6_ ( .D(N65), .CLK(net3928), .CLR(n203), .Q(io_dout[5])
         );
  fdf2a3 shiftReg_reg_4_ ( .D(N63), .CLK(net3928), .CLR(n204), .Q(io_dout[3])
         );
  fdf2a3 shiftReg_reg_9_ ( .D(N68), .CLK(net3928), .CLR(n204), .Q(io_dout[8])
         );
  fdf2a3 shiftReg_reg_7_ ( .D(N66), .CLK(net3928), .CLR(n204), .Q(io_dout[6])
         );
  fdf2a3 shiftReg_reg_5_ ( .D(N64), .CLK(net3928), .CLR(n204), .Q(io_dout[4])
         );
  fdf2a3 shiftReg_reg_3_ ( .D(N62), .CLK(net3928), .CLR(n204), .Q(io_dout[2])
         );
  fdf1c2 cal_en_regNext_reg ( .D(n209), .CLK(clk), .QN(cal_en_regNext) );
  fdf2a3 shiftReg_reg_17_ ( .D(n205), .CLK(net3928), .CLR(n203), .Q(n_zz_1[8])
         );
  fdf2a3 cal_cnt_reg_0_ ( .D(N18), .CLK(net3928), .CLR(n203), .Q(cal_cnt[0])
         );
  fdf2a3 cal_cnt_reg_1_ ( .D(N19), .CLK(net3928), .CLR(n203), .Q(cal_cnt[1])
         );
  fdf2a3 cal_en_reg ( .D(n207), .CLK(clk), .CLR(n203), .Q(cal_en) );
  fdf2a3 shiftReg_reg_0_ ( .D(N59), .CLK(net3928), .CLR(n204), .Q(n_zz_6_0_)
         );
  fdf2a3 shiftReg_reg_1_ ( .D(N60), .CLK(net3928), .CLR(n204), .Q(io_dout[0])
         );
  fdf2a3 shiftReg_reg_2_ ( .D(N61), .CLK(net3928), .CLR(n204), .Q(io_dout[1])
         );
  fdf2a6 shiftReg_reg_11_ ( .D(N70), .CLK(net3928), .CLR(n204), .Q(io_dout[10]) );
  fdf2a6 shiftReg_reg_12_ ( .D(N71), .CLK(net3928), .CLR(n203), .Q(io_dout[11]) );
  fdf2a6 shiftReg_reg_10_ ( .D(N69), .CLK(net3928), .CLR(n203), .Q(io_dout[9])
         );
  fdf2a6 shiftReg_reg_14_ ( .D(N73), .CLK(net3928), .CLR(n203), .Q(io_dout[13]) );
  fdf2a6 shiftReg_reg_13_ ( .D(N72), .CLK(net3928), .CLR(n204), .Q(io_dout[12]) );
  fdf2a6 shiftReg_reg_15_ ( .D(N74), .CLK(net3928), .CLR(n204), .Q(io_dout[14]) );
  fdf2a9 shiftReg_reg_16_ ( .D(n205), .CLK(net3928), .CLR(n203), .Q(
        io_dout[15]) );
  inv1a1 U3 ( .A(io_din_vld), .Y(n202) );
  or3d1 U4 ( .A(n135), .B(n134), .C(n133), .Y(n136) );
  or2a1 U5 ( .A(io_dout[13]), .B(n129), .Y(n15) );
  or2c1 U6 ( .A(n111), .B(io_dout[12]), .Y(n13) );
  or2c1 U7 ( .A(n129), .B(io_dout[13]), .Y(n105) );
  or2a1 U8 ( .A(io_dout[11]), .B(n95), .Y(n11) );
  inv1a1 U9 ( .A(n74), .Y(n12) );
  or2c1 U10 ( .A(n95), .B(io_dout[11]), .Y(n74) );
  and2c1 U11 ( .A(io_dout[10]), .B(n32), .Y(n10) );
  or2c1 U12 ( .A(n32), .B(io_dout[10]), .Y(n9) );
  inv1a1 U13 ( .A(n181), .Y(n8) );
  inv1a1 U14 ( .A(n180), .Y(n7) );
  inv1a3 U15 ( .A(io_dinB[0]), .Y(n184) );
  or2c1 U16 ( .A(io_dout[15]), .B(n163), .Y(n156) );
  or2a1 U17 ( .A(io_dout[9]), .B(n57), .Y(n6) );
  ao1f2 U18 ( .A(n54), .B(n10), .C(n9), .Y(n75) );
  or2c1 U19 ( .A(n15), .B(n105), .Y(n107) );
  oa4f1 U20 ( .A(n175), .B(n197), .C(io_dout[8]), .D(n174), .Y(n176) );
  or3d1 U21 ( .A(n169), .B(n168), .C(n167), .Y(n170) );
  or3d1 U22 ( .A(n151), .B(n150), .C(n149), .Y(n152) );
  ao1d2 U23 ( .A(n52), .B(n200), .C(n51), .Y(n208) );
  inv1a1 U24 ( .A(n105), .Y(n16) );
  or2c1 U25 ( .A(n157), .B(n156), .Y(n159) );
  xor2a2 U26 ( .A(n159), .B(n158), .Y(n171) );
  xor2a2 U27 ( .A(n25), .B(n24), .Y(n31) );
  or2c1 U28 ( .A(n123), .B(n122), .Y(n124) );
  inv1a1 U29 ( .A(n121), .Y(n123) );
  or2c1 U30 ( .A(n6), .B(n180), .Y(n182) );
  or2c1 U31 ( .A(n11), .B(n74), .Y(n76) );
  inv1a3 U32 ( .A(io_dinB[4]), .Y(n111) );
  inv1a1 U33 ( .A(n25), .Y(n21) );
  oa1f3 U34 ( .A(n171), .B(n197), .C(n170), .Y(n173) );
  oa1f3 U35 ( .A(n153), .B(n197), .C(n152), .Y(n154) );
  xor2b2 U36 ( .A(n21), .B(n20), .Y(n23) );
  oa1f3 U37 ( .A(n137), .B(n197), .C(n136), .Y(n138) );
  ao1f2 U38 ( .A(n158), .B(n155), .C(n156), .Y(n20) );
  or2c3 U39 ( .A(n42), .B(n41), .Y(n160) );
  ao1d2 U40 ( .A(n40), .B(n39), .C(n141), .Y(n42) );
  oa4f2 U41 ( .A(n166), .B(n187), .C(n_zz_1[8]), .D(n4), .Y(n167) );
  xor2a2 U42 ( .A(n125), .B(n124), .Y(n137) );
  fa1a2 U43 ( .A(n163), .B(io_dinB[7]), .CI(n162), .CO(n24), .S(n164) );
  oa1f3 U44 ( .A(n106), .B(n15), .C(n16), .Y(n125) );
  fa1a2 U45 ( .A(io_dout[15]), .B(n145), .CI(n144), .CO(n162), .S(n146) );
  xor2b2 U46 ( .A(n107), .B(n106), .Y(n119) );
  ao1d2 U47 ( .A(io_din_vld), .B(io_dinA[6]), .C(n179), .Y(N66) );
  or2c3 U48 ( .A(n38), .B(n37), .Y(n108) );
  xor2a2 U49 ( .A(n90), .B(n89), .Y(n103) );
  ao1f3 U50 ( .A(n90), .B(n14), .C(n13), .Y(n106) );
  fa1a2 U51 ( .A(io_dout[14]), .B(n129), .CI(n128), .CO(n144), .S(n130) );
  fa1a2 U52 ( .A(io_dout[13]), .B(n111), .CI(n110), .CO(n128), .S(n112) );
  xor2b2 U53 ( .A(n76), .B(n75), .Y(n87) );
  oa1f3 U54 ( .A(n72), .B(n197), .C(n71), .Y(n73) );
  ao1d2 U55 ( .A(n36), .B(n111), .C(n91), .Y(n38) );
  fa1a2 U56 ( .A(io_dout[12]), .B(n95), .CI(n94), .CO(n110), .S(n96) );
  xor2a2 U57 ( .A(n182), .B(n181), .Y(n198) );
  or2c3 U58 ( .A(n35), .B(n34), .Y(n77) );
  fa1a2 U59 ( .A(io_dout[11]), .B(n32), .CI(n79), .CO(n94), .S(n80) );
  ao1d2 U60 ( .A(n33), .B(n32), .C(n63), .Y(n35) );
  oa4f3 U61 ( .A(n67), .B(n187), .C(io_dout[10]), .D(n4), .Y(n68) );
  fa1a2 U62 ( .A(io_dout[10]), .B(n57), .CI(n56), .CO(n79), .S(n62) );
  inv1a3 U63 ( .A(io_dinB[3]), .Y(n95) );
  inv1a3 U64 ( .A(io_dinB[5]), .Y(n129) );
  inv1a3 U65 ( .A(io_dinB[6]), .Y(n145) );
  and2a3 U66 ( .A(io_dinB[7]), .B(n18), .Y(n19) );
  or2a1 U67 ( .A(n18), .B(io_dinB[7]), .Y(n17) );
  ha1a3 U68 ( .A(io_dout[9]), .B(io_dinB[0]), .CO(n66), .S(n188) );
  inv1a2 U69 ( .A(io_dinB[2]), .Y(n32) );
  ao1e9 U70 ( .B(io_dout[1]), .A(n27), .C(n3), .Y(n4) );
  ao2i1 U71 ( .A(cal_cnt[1]), .B(n209), .C(n202), .D(n50), .Y(n207) );
  and2c3 U72 ( .A(n163), .B(io_dout[15]), .Y(n155) );
  inv1a1 U73 ( .A(io_dout[15]), .Y(n18) );
  inv1a3 U74 ( .A(io_dout[1]), .Y(n53) );
  or2c1 U75 ( .A(n23), .B(n197), .Y(n48) );
  xor2a2 U76 ( .A(n55), .B(n54), .Y(n72) );
  xor2b2 U77 ( .A(n140), .B(n139), .Y(n153) );
  inv1a3 U78 ( .A(n_zz_1[8]), .Y(n163) );
  clk1b6 U79 ( .A(n200), .Y(n172) );
  or2c1 U80 ( .A(io_dinB[7]), .B(io_dout[15]), .Y(n41) );
  inv1a1 U81 ( .A(io_dinB[7]), .Y(n40) );
  xor2a2 U82 ( .A(n_zz_1[8]), .B(n5), .Y(n25) );
  xor2b2 U83 ( .A(io_dout[8]), .B(n184), .Y(n175) );
  and2c3 U84 ( .A(n184), .B(io_dout[8]), .Y(n181) );
  or2a1 U85 ( .A(n184), .B(io_dout[9]), .Y(n56) );
  or2c3 U86 ( .A(n57), .B(io_dout[9]), .Y(n180) );
  or2c1 U87 ( .A(io_dinB[2]), .B(io_dout[10]), .Y(n34) );
  and2c3 U88 ( .A(io_dout[14]), .B(n145), .Y(n121) );
  or2c1 U89 ( .A(n145), .B(io_dout[14]), .Y(n122) );
  and2c6 U90 ( .A(n174), .B(io_dout[1]), .Y(n194) );
  or2c1 U91 ( .A(io_dinB[4]), .B(io_dout[12]), .Y(n37) );
  and2c3 U92 ( .A(io_dout[12]), .B(n111), .Y(n14) );
  and2c9 U93 ( .A(n209), .B(io_din_vld), .Y(n200) );
  inv1a3 U94 ( .A(cal_en), .Y(n209) );
  or2c3 U95 ( .A(io_dout[0]), .B(n_zz_6_0_), .Y(n27) );
  inv1a1 U96 ( .A(io_dout[0]), .Y(n2) );
  inv1a1 U97 ( .A(n_zz_6_0_), .Y(n1) );
  or2c1 U98 ( .A(n2), .B(n1), .Y(n22) );
  inv1a1 U99 ( .A(n22), .Y(n26) );
  or2c1 U100 ( .A(n26), .B(n53), .Y(n3) );
  inv1a1 U101 ( .A(n_zz_1[9]), .Y(n5) );
  clk1b6 U102 ( .A(io_dinB[1]), .Y(n57) );
  oa1f3 U103 ( .A(n6), .B(n8), .C(n7), .Y(n54) );
  oa1f3 U104 ( .A(n75), .B(n11), .C(n12), .Y(n90) );
  ao1f3 U105 ( .A(n125), .B(n121), .C(n122), .Y(n139) );
  oa1f3 U106 ( .A(n139), .B(n17), .C(n19), .Y(n158) );
  or2c3 U107 ( .A(n22), .B(n27), .Y(n174) );
  and2c6 U108 ( .A(n174), .B(n53), .Y(n197) );
  and2a3 U109 ( .A(n26), .B(io_dout[1]), .Y(n185) );
  and2c6 U110 ( .A(n27), .B(io_dout[1]), .Y(n187) );
  xor3b3 U111 ( .A(n_zz_1[9]), .B(io_dinB[7]), .C(n28), .Y(n29) );
  inv1a1 U112 ( .A(n29), .Y(n30) );
  oa4f3 U113 ( .A(n31), .B(n185), .C(n187), .D(n30), .Y(n47) );
  xor2b2 U114 ( .A(n_zz_1[9]), .B(io_dinB[7]), .Y(n44) );
  inv1a1 U115 ( .A(io_dout[15]), .Y(n39) );
  inv1a1 U116 ( .A(io_dout[12]), .Y(n36) );
  inv1a1 U117 ( .A(io_dout[10]), .Y(n33) );
  xor2b2 U118 ( .A(n44), .B(n43), .Y(n45) );
  or2c3 U119 ( .A(n45), .B(n194), .Y(n46) );
  or3d6 U120 ( .A(n48), .B(n47), .C(n46), .Y(n52) );
  oa1f3 U121 ( .A(n_zz_1[9]), .B(n4), .C(n52), .Y(n49) );
  and2c3 U122 ( .A(n49), .B(n172), .Y(n205) );
  and2c3 U123 ( .A(cal_cnt[0]), .B(n209), .Y(N18) );
  inv1a1 U124 ( .A(N18), .Y(n50) );
  or3d1 U125 ( .A(n4), .B(n_zz_1[9]), .C(n202), .Y(n51) );
  buf1a6 U126 ( .A(resetn), .Y(n204) );
  buf1a6 U127 ( .A(resetn), .Y(n203) );
  and2c3 U128 ( .A(n172), .B(n53), .Y(N59) );
  xor2b2 U129 ( .A(io_dout[10]), .B(io_dinB[2]), .Y(n64) );
  inv1a1 U130 ( .A(n64), .Y(n55) );
  or2c1 U131 ( .A(n62), .B(n185), .Y(n70) );
  xor2b2 U132 ( .A(n64), .B(n63), .Y(n65) );
  or2c1 U133 ( .A(n65), .B(n194), .Y(n69) );
  fa1a2 U134 ( .A(io_dinB[1]), .B(io_dout[10]), .CI(n66), .CO(n81), .S(n67) );
  or3d1 U135 ( .A(n70), .B(n69), .C(n68), .Y(n71) );
  and2c3 U136 ( .A(n73), .B(n172), .Y(N68) );
  fa1a2 U137 ( .A(io_dinB[3]), .B(io_dout[11]), .CI(n77), .CO(n91), .S(n78) );
  or2c1 U138 ( .A(n78), .B(n194), .Y(n85) );
  or2c1 U139 ( .A(n80), .B(n185), .Y(n84) );
  fa1a2 U140 ( .A(io_dinB[2]), .B(io_dout[11]), .CI(n81), .CO(n97), .S(n82) );
  oa4f3 U141 ( .A(n82), .B(n187), .C(io_dout[11]), .D(n4), .Y(n83) );
  or3d1 U142 ( .A(n85), .B(n84), .C(n83), .Y(n86) );
  oa1f3 U143 ( .A(n87), .B(n197), .C(n86), .Y(n88) );
  and2c3 U144 ( .A(n88), .B(n172), .Y(N69) );
  xor2b2 U145 ( .A(io_dout[12]), .B(io_dinB[4]), .Y(n92) );
  inv1a1 U146 ( .A(n92), .Y(n89) );
  xor2b2 U147 ( .A(n92), .B(n91), .Y(n93) );
  or2c1 U148 ( .A(n93), .B(n194), .Y(n101) );
  or2c1 U149 ( .A(n96), .B(n185), .Y(n100) );
  fa1a2 U150 ( .A(io_dinB[3]), .B(io_dout[12]), .CI(n97), .CO(n113), .S(n98)
         );
  oa4f3 U151 ( .A(n98), .B(n187), .C(io_dout[12]), .D(n4), .Y(n99) );
  or3d1 U152 ( .A(n101), .B(n100), .C(n99), .Y(n102) );
  oa1f3 U153 ( .A(n103), .B(n197), .C(n102), .Y(n104) );
  and2c3 U154 ( .A(n104), .B(n172), .Y(N70) );
  fa1a2 U155 ( .A(io_dinB[5]), .B(io_dout[13]), .CI(n108), .CO(n126), .S(n109)
         );
  or2c1 U156 ( .A(n109), .B(n194), .Y(n117) );
  or2c1 U157 ( .A(n112), .B(n185), .Y(n116) );
  fa1a2 U158 ( .A(io_dinB[4]), .B(io_dout[13]), .CI(n113), .CO(n131), .S(n114)
         );
  oa4f3 U159 ( .A(n114), .B(n187), .C(io_dout[13]), .D(n4), .Y(n115) );
  or3d1 U160 ( .A(n117), .B(n116), .C(n115), .Y(n118) );
  oa1f3 U161 ( .A(n119), .B(n197), .C(n118), .Y(n120) );
  and2c3 U162 ( .A(n120), .B(n172), .Y(N71) );
  fa1a2 U163 ( .A(io_dinB[6]), .B(io_dout[14]), .CI(n126), .CO(n141), .S(n127)
         );
  or2c1 U164 ( .A(n127), .B(n194), .Y(n135) );
  or2c1 U165 ( .A(n130), .B(n185), .Y(n134) );
  fa1a2 U166 ( .A(io_dinB[5]), .B(io_dout[14]), .CI(n131), .CO(n147), .S(n132)
         );
  oa4f3 U167 ( .A(n132), .B(n187), .C(io_dout[14]), .D(n4), .Y(n133) );
  and2c3 U168 ( .A(n138), .B(n172), .Y(N72) );
  xor2b2 U169 ( .A(io_dout[15]), .B(io_dinB[7]), .Y(n142) );
  inv1a1 U170 ( .A(n142), .Y(n140) );
  xor2b2 U171 ( .A(n142), .B(n141), .Y(n143) );
  or2c1 U172 ( .A(n143), .B(n194), .Y(n151) );
  or2c1 U173 ( .A(n146), .B(n185), .Y(n150) );
  fa1a2 U174 ( .A(io_dinB[6]), .B(io_dout[15]), .CI(n147), .CO(n165), .S(n148)
         );
  oa4f3 U175 ( .A(n148), .B(n187), .C(io_dout[15]), .D(n4), .Y(n149) );
  and2c3 U176 ( .A(n154), .B(n172), .Y(N73) );
  inv1a1 U177 ( .A(n155), .Y(n157) );
  fa1a2 U178 ( .A(n_zz_1[8]), .B(io_dinB[7]), .CI(n160), .CO(n43), .S(n161) );
  or2c1 U179 ( .A(n161), .B(n194), .Y(n169) );
  or2c1 U180 ( .A(n164), .B(n185), .Y(n168) );
  fa1a2 U181 ( .A(n_zz_1[8]), .B(io_dinB[7]), .CI(n165), .CO(n28), .S(n166) );
  and2c3 U182 ( .A(n173), .B(n172), .Y(N74) );
  ao4a3 U183 ( .A(io_dinA[1]), .B(io_din_vld), .C(n200), .D(io_dout[3]), .Y(
        N61) );
  and2a1 U184 ( .A(cal_en_regNext), .B(n209), .Y(io_dout_vld) );
  ao4a3 U185 ( .A(io_din_vld), .B(io_dinA[0]), .C(n200), .D(io_dout[2]), .Y(
        N60) );
  ao4a3 U186 ( .A(io_din_vld), .B(io_dinA[2]), .C(n200), .D(io_dout[4]), .Y(
        N62) );
  ao4a3 U187 ( .A(io_din_vld), .B(io_dinA[3]), .C(n200), .D(io_dout[5]), .Y(
        N63) );
  ao4a3 U188 ( .A(io_din_vld), .B(io_dinA[4]), .C(n200), .D(io_dout[6]), .Y(
        N64) );
  ao4a3 U189 ( .A(io_din_vld), .B(io_dinA[5]), .C(n200), .D(io_dout[7]), .Y(
        N65) );
  ha1a2 U190 ( .A(io_dout[8]), .B(io_dinB[0]), .CO(n183), .S(n177) );
  ao1d2 U191 ( .A(n194), .B(n177), .C(n176), .Y(n178) );
  or2c1 U192 ( .A(n200), .B(n178), .Y(n179) );
  fa1a2 U193 ( .A(n183), .B(io_dout[9]), .CI(io_dinB[1]), .CO(n63), .S(n195)
         );
  inv1a1 U194 ( .A(n4), .Y(n192) );
  inv1a1 U195 ( .A(io_dout[9]), .Y(n191) );
  xor2b2 U196 ( .A(io_dout[9]), .B(n184), .Y(n186) );
  or2c1 U197 ( .A(n186), .B(n185), .Y(n190) );
  or2c1 U198 ( .A(n188), .B(n187), .Y(n189) );
  ao2i3 U199 ( .A(n192), .B(n191), .C(n190), .D(n189), .Y(n193) );
  oa1f3 U200 ( .A(n195), .B(n194), .C(n193), .Y(n196) );
  ao1d2 U201 ( .A(n198), .B(n197), .C(n196), .Y(n199) );
  ao4a3 U202 ( .A(io_din_vld), .B(io_dinA[7]), .C(n200), .D(n199), .Y(N67) );
  and2c1 U203 ( .A(cal_cnt[0]), .B(cal_cnt[1]), .Y(n201) );
  oa2i2 U204 ( .A(cal_cnt[0]), .B(cal_cnt[1]), .C(n209), .D(n201), .Y(N19) );
  or2c1 U205 ( .A(n202), .B(n209), .Y(n206) );
endmodule


module SNPS_CLOCK_GATE_HIGH_dotVn_2 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3905;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3905) );
  and2a3 main_gate ( .A(net3905), .B(CLK), .Y(ENCLK) );
endmodule


module dotVn_2 ( en, rg_sin_table_0, rg_sin_table_1, rg_sin_table_2, 
        rg_sin_table_3, rg_sin_table_4, rg_sin_table_5, rg_sin_table_6, 
        rg_sin_table_7, rg_cos_table_0, rg_cos_table_1, rg_cos_table_2, 
        rg_cos_table_3, rg_cos_table_4, rg_cos_table_5, rg_cos_table_6, 
        rg_cos_table_7, vn_vld, vn_in_0, vn_in_1, vn_in_2, vn_in_3, vn_in_4, 
        vn_in_5, vn_in_6, vn_in_7, psum_out1, psum_out2, psum_vld, valid_num, 
        mean, clk, resetn );
  input [7:0] rg_sin_table_0;
  input [7:0] rg_sin_table_1;
  input [7:0] rg_sin_table_2;
  input [7:0] rg_sin_table_3;
  input [7:0] rg_sin_table_4;
  input [7:0] rg_sin_table_5;
  input [7:0] rg_sin_table_6;
  input [7:0] rg_sin_table_7;
  input [7:0] rg_cos_table_0;
  input [7:0] rg_cos_table_1;
  input [7:0] rg_cos_table_2;
  input [7:0] rg_cos_table_3;
  input [7:0] rg_cos_table_4;
  input [7:0] rg_cos_table_5;
  input [7:0] rg_cos_table_6;
  input [7:0] rg_cos_table_7;
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
  input [2:0] valid_num;
  input [7:0] mean;
  input en, vn_vld, clk, resetn;
  output psum_vld;
  wire   n_zz_11_2_, n_zz_11_1_, n_zz_11_0_, n_zz_13_2_, n_zz_13_1_,
         n_zz_13_0_, booth_start, booth_sin_io_dout_vld, mac_en, N91, N140,
         N141, N142, N143, N144, N145, N146, N147, N148, N149, N150, N151,
         N152, N153, N154, N155, N156, N157, N158, N159, N160, N161, N162,
         N163, N164, N165, N166, N167, N168, N169, N170, N171, N172, N173,
         N174, N175, N176, N177, N184, N185, N189, net3911, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, intadd_1_CI, intadd_1_SUM_10_, intadd_1_SUM_9_,
         intadd_1_SUM_8_, intadd_1_SUM_7_, intadd_1_SUM_6_, intadd_1_SUM_5_,
         intadd_1_SUM_4_, intadd_1_SUM_3_, intadd_1_SUM_2_, intadd_1_SUM_1_,
         intadd_1_SUM_0_, intadd_1_n11, intadd_1_n10, intadd_1_n9, intadd_1_n8,
         intadd_1_n7, intadd_1_n6, intadd_1_n5, intadd_1_n4, intadd_1_n3,
         intadd_1_n2, intadd_1_n1, intadd_2_CI, intadd_2_SUM_10_,
         intadd_2_SUM_9_, intadd_2_SUM_8_, intadd_2_SUM_7_, intadd_2_SUM_6_,
         intadd_2_SUM_5_, intadd_2_SUM_4_, intadd_2_SUM_3_, intadd_2_SUM_2_,
         intadd_2_SUM_1_, intadd_2_SUM_0_, intadd_2_n11, intadd_2_n10,
         intadd_2_n9, intadd_2_n8, intadd_2_n7, intadd_2_n6, intadd_2_n5,
         intadd_2_n4, intadd_2_n3, intadd_2_n2, intadd_2_n1, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4;
  wire   [13:0] n_zz_9;
  wire   [13:0] n_zz_10;
  wire   [14:0] psum1;
  wire   [14:0] psum2;
  wire   [2:0] mac_cnt;
  wire   [7:0] vin_minus_mean;

  booth4_1 booth_sin ( .io_din_vld(booth_start), .io_dinA(vin_minus_mean), 
        .io_dinB({n199, n198, n197, n196, n195, n194, n193, n192}), 
        .io_dout_vld(booth_sin_io_dout_vld), .io_dout({n_zz_9, 
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2}), .clk(clk), .resetn(
        resetn) );
  booth4_0 booth_cos ( .io_din_vld(booth_start), .io_dinA(vin_minus_mean), 
        .io_dinB({n207, n206, n205, n204, n203, n202, n201, n200}), .io_dout({
        n_zz_10, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4}), .clk(clk), 
        .resetn(n329) );
  SNPS_CLOCK_GATE_HIGH_dotVn_2 clk_gate_psum2_reg ( .CLK(clk), .EN(
        booth_sin_io_dout_vld), .ENCLK(net3911) );
  fdf2a3 psum2_reg_10_ ( .D(N169), .CLK(net3911), .CLR(n328), .Q(psum2[10]) );
  fdf2a3 psum2_reg_11_ ( .D(N170), .CLK(net3911), .CLR(n328), .Q(psum2[11]) );
  fdf2a3 psum2_reg_12_ ( .D(N171), .CLK(net3911), .CLR(n328), .Q(psum2[12]) );
  fdf2a3 psum2_reg_13_ ( .D(N172), .CLK(net3911), .CLR(n328), .Q(psum2[13]) );
  fdf2a3 psum2_reg_14_ ( .D(N173), .CLK(net3911), .CLR(n328), .Q(psum2[14]) );
  fdf2a3 psum2_reg_15_ ( .D(N174), .CLK(net3911), .CLR(n328), .Q(n_zz_13_0_)
         );
  fdf2a3 psum2_reg_16_ ( .D(N175), .CLK(net3911), .CLR(n328), .Q(n_zz_13_1_)
         );
  fdf2a3 psum2_reg_17_ ( .D(N176), .CLK(net3911), .CLR(n328), .Q(n_zz_13_2_)
         );
  fdf2a3 psum1_reg_17_ ( .D(N157), .CLK(net3911), .CLR(n328), .Q(n_zz_11_2_)
         );
  fdf2a3 psum1_reg_16_ ( .D(N156), .CLK(net3911), .CLR(n328), .Q(n_zz_11_1_)
         );
  fdf2a3 psum1_reg_14_ ( .D(N154), .CLK(net3911), .CLR(n328), .Q(psum1[14]) );
  fdf2a3 psum1_reg_13_ ( .D(N153), .CLK(net3911), .CLR(n328), .Q(psum1[13]) );
  fdf2a3 psum1_reg_12_ ( .D(N152), .CLK(net3911), .CLR(n328), .Q(psum1[12]) );
  fdf2a3 psum1_reg_11_ ( .D(N151), .CLK(net3911), .CLR(n328), .Q(psum1[11]) );
  fdf2a3 psum1_reg_10_ ( .D(N150), .CLK(net3911), .CLR(n328), .Q(psum1[10]) );
  fdf2a3 psum1_reg_18_ ( .D(N158), .CLK(net3911), .CLR(n328), .Q(psum_out1[15]) );
  fdf2a3 psum2_reg_18_ ( .D(N177), .CLK(net3911), .CLR(n328), .Q(psum_out2[15]) );
  fa1a2 intadd_1_U12 ( .A(n_zz_9[2]), .B(psum1[2]), .CI(intadd_1_CI), .CO(
        intadd_1_n11), .S(intadd_1_SUM_0_) );
  fa1a2 intadd_1_U11 ( .A(n_zz_9[3]), .B(psum1[3]), .CI(intadd_1_n11), .CO(
        intadd_1_n10), .S(intadd_1_SUM_1_) );
  fa1a2 intadd_1_U10 ( .A(n_zz_9[4]), .B(psum1[4]), .CI(intadd_1_n10), .CO(
        intadd_1_n9), .S(intadd_1_SUM_2_) );
  fa1a2 intadd_1_U9 ( .A(n_zz_9[5]), .B(psum1[5]), .CI(intadd_1_n9), .CO(
        intadd_1_n8), .S(intadd_1_SUM_3_) );
  fa1a2 intadd_1_U8 ( .A(n_zz_9[6]), .B(psum1[6]), .CI(intadd_1_n8), .CO(
        intadd_1_n7), .S(intadd_1_SUM_4_) );
  fa1a2 intadd_2_U12 ( .A(n_zz_10[2]), .B(psum2[2]), .CI(intadd_2_CI), .CO(
        intadd_2_n11), .S(intadd_2_SUM_0_) );
  fa1a2 intadd_2_U11 ( .A(n_zz_10[3]), .B(psum2[3]), .CI(intadd_2_n11), .CO(
        intadd_2_n10), .S(intadd_2_SUM_1_) );
  fa1a2 intadd_2_U10 ( .A(n_zz_10[4]), .B(psum2[4]), .CI(intadd_2_n10), .CO(
        intadd_2_n9), .S(intadd_2_SUM_2_) );
  fa1a2 intadd_2_U9 ( .A(n_zz_10[5]), .B(psum2[5]), .CI(intadd_2_n9), .CO(
        intadd_2_n8), .S(intadd_2_SUM_3_) );
  fa1a2 intadd_2_U8 ( .A(n_zz_10[6]), .B(psum2[6]), .CI(intadd_2_n8), .CO(
        intadd_2_n7), .S(intadd_2_SUM_4_) );
  fdf2a3 mac_cnt_reg_0_ ( .D(n330), .CLK(net3911), .CLR(n329), .Q(mac_cnt[0])
         );
  fdf2a3 mac_cnt_reg_1_ ( .D(N184), .CLK(net3911), .CLR(resetn), .Q(mac_cnt[1]) );
  fdf2a3 mac_cnt_reg_2_ ( .D(N185), .CLK(net3911), .CLR(resetn), .Q(mac_cnt[2]) );
  fdf2a3 finish_reg ( .D(N189), .CLK(clk), .CLR(n329), .Q(psum_vld) );
  fdf2a3 psum2_reg_1_ ( .D(N160), .CLK(net3911), .CLR(n329), .Q(psum2[1]) );
  fdf2a3 psum2_reg_0_ ( .D(N159), .CLK(net3911), .CLR(resetn), .Q(psum2[0]) );
  fdf2a3 psum1_reg_1_ ( .D(N141), .CLK(net3911), .CLR(n329), .Q(psum1[1]) );
  fdf2a3 psum1_reg_0_ ( .D(N140), .CLK(net3911), .CLR(n329), .Q(psum1[0]) );
  fdf2a3 mac_en_reg ( .D(n191), .CLK(clk), .CLR(n329), .Q(mac_en) );
  fdf2a3 psum2_reg_7_ ( .D(N166), .CLK(net3911), .CLR(resetn), .Q(psum2[7]) );
  fdf2a3 psum1_reg_7_ ( .D(N147), .CLK(net3911), .CLR(n329), .Q(psum1[7]) );
  fdf2a3 psum2_reg_2_ ( .D(N161), .CLK(net3911), .CLR(resetn), .Q(psum2[2]) );
  fdf2a3 psum1_reg_5_ ( .D(N145), .CLK(net3911), .CLR(n329), .Q(psum1[5]) );
  fdf2a3 psum1_reg_4_ ( .D(N144), .CLK(net3911), .CLR(n329), .Q(psum1[4]) );
  fdf2a3 psum1_reg_3_ ( .D(N143), .CLK(net3911), .CLR(n329), .Q(psum1[3]) );
  fdf2a3 psum1_reg_6_ ( .D(N146), .CLK(net3911), .CLR(n329), .Q(psum1[6]) );
  fdf2a3 psum2_reg_8_ ( .D(N167), .CLK(net3911), .CLR(resetn), .Q(psum2[8]) );
  fdf2a3 psum1_reg_8_ ( .D(N148), .CLK(net3911), .CLR(n328), .Q(psum1[8]) );
  fdf2a3 psum2_reg_5_ ( .D(N164), .CLK(net3911), .CLR(n329), .Q(psum2[5]) );
  fdf2a3 psum2_reg_4_ ( .D(N163), .CLK(net3911), .CLR(resetn), .Q(psum2[4]) );
  fdf2a3 psum2_reg_3_ ( .D(N162), .CLK(net3911), .CLR(n329), .Q(psum2[3]) );
  fdf2a3 psum1_reg_2_ ( .D(N142), .CLK(net3911), .CLR(n329), .Q(psum1[2]) );
  fdf2a3 psum2_reg_6_ ( .D(N165), .CLK(net3911), .CLR(resetn), .Q(psum2[6]) );
  fdf2a3 psum1_reg_9_ ( .D(N149), .CLK(net3911), .CLR(n328), .Q(psum1[9]) );
  fdf2a3 psum2_reg_9_ ( .D(N168), .CLK(net3911), .CLR(resetn), .Q(psum2[9]) );
  fdf2a9 booth_start_reg ( .D(N91), .CLK(clk), .CLR(resetn), .Q(booth_start)
         );
  fdf2a3 psum1_reg_15_ ( .D(N155), .CLK(net3911), .CLR(n328), .Q(n_zz_11_0_)
         );
  fa1a3 intadd_2_U5 ( .A(n_zz_10[9]), .B(psum2[9]), .CI(intadd_2_n5), .CO(
        intadd_2_n4), .S(intadd_2_SUM_7_) );
  fa1a3 intadd_1_U5 ( .A(n_zz_9[9]), .B(psum1[9]), .CI(intadd_1_n5), .CO(
        intadd_1_n4), .S(intadd_1_SUM_7_) );
  fa1a3 intadd_2_U4 ( .A(n_zz_10[10]), .B(psum2[10]), .CI(intadd_2_n4), .CO(
        intadd_2_n3), .S(intadd_2_SUM_8_) );
  fa1a3 intadd_1_U4 ( .A(n_zz_9[10]), .B(psum1[10]), .CI(intadd_1_n4), .CO(
        intadd_1_n3), .S(intadd_1_SUM_8_) );
  fa1a3 intadd_1_U3 ( .A(n_zz_9[11]), .B(psum1[11]), .CI(intadd_1_n3), .CO(
        intadd_1_n2), .S(intadd_1_SUM_9_) );
  fa1a3 intadd_2_U3 ( .A(n_zz_10[11]), .B(psum2[11]), .CI(intadd_2_n3), .CO(
        intadd_2_n2), .S(intadd_2_SUM_9_) );
  fa1a3 intadd_1_U2 ( .A(n_zz_9[12]), .B(psum1[12]), .CI(intadd_1_n2), .CO(
        intadd_1_n1), .S(intadd_1_SUM_10_) );
  fa1a3 intadd_2_U2 ( .A(n_zz_10[12]), .B(psum2[12]), .CI(intadd_2_n2), .CO(
        intadd_2_n1), .S(intadd_2_SUM_10_) );
  fa1a3 intadd_2_U6 ( .A(n_zz_10[8]), .B(psum2[8]), .CI(intadd_2_n6), .CO(
        intadd_2_n5), .S(intadd_2_SUM_6_) );
  fa1a3 intadd_1_U6 ( .A(n_zz_9[8]), .B(psum1[8]), .CI(intadd_1_n6), .CO(
        intadd_1_n5), .S(intadd_1_SUM_6_) );
  fa1a3 intadd_2_U7 ( .A(n_zz_10[7]), .B(psum2[7]), .CI(intadd_2_n7), .CO(
        intadd_2_n6), .S(intadd_2_SUM_5_) );
  fa1a3 intadd_1_U7 ( .A(n_zz_9[7]), .B(psum1[7]), .CI(intadd_1_n7), .CO(
        intadd_1_n6), .S(intadd_1_SUM_5_) );
  or2c1 U3 ( .A(n266), .B(psum2[14]), .Y(n270) );
  or2c1 U4 ( .A(n304), .B(psum1[14]), .Y(n308) );
  or2c1 U5 ( .A(n_zz_9[0]), .B(psum1[0]), .Y(n296) );
  and2c1 U6 ( .A(n272), .B(n269), .Y(n57) );
  or3d1 U7 ( .A(n39), .B(n307), .C(n310), .Y(n40) );
  or2c1 U8 ( .A(n_zz_10[0]), .B(psum2[0]), .Y(n261) );
  oa1f1 U9 ( .A(n291), .B(vn_in_0[1]), .C(n116), .Y(n117) );
  oa4f2 U10 ( .A(n236), .B(vn_in_2[0]), .C(n235), .D(vn_in_1[0]), .Y(n125) );
  oa4f2 U11 ( .A(n238), .B(vn_in_4[0]), .C(n237), .D(vn_in_6[0]), .Y(n124) );
  oa4f1 U12 ( .A(n238), .B(vn_in_4[7]), .C(n237), .D(vn_in_6[7]), .Y(n246) );
  oa1f9 U13 ( .A(n_zz_13_2_), .B(n57), .C(n284), .Y(n61) );
  and2a6 U14 ( .A(n327), .B(n1), .Y(n291) );
  oa1f1 U15 ( .A(n291), .B(vn_in_0[7]), .C(n244), .Y(n245) );
  oa1f1 U16 ( .A(n291), .B(vn_in_0[4]), .C(n98), .Y(n99) );
  oa1f1 U17 ( .A(n291), .B(vn_in_0[6]), .C(n228), .Y(n229) );
  oa1f1 U18 ( .A(n291), .B(vn_in_0[2]), .C(n110), .Y(n111) );
  oa1f1 U19 ( .A(n291), .B(vn_in_0[5]), .C(n92), .Y(n93) );
  oa1f1 U20 ( .A(n291), .B(vn_in_0[3]), .C(n104), .Y(n105) );
  oa4f2 U21 ( .A(n236), .B(vn_in_2[5]), .C(n235), .D(vn_in_1[5]), .Y(n95) );
  inv1a9 U22 ( .A(n301), .Y(n263) );
  oa4f2 U23 ( .A(n236), .B(vn_in_2[6]), .C(n235), .D(vn_in_1[6]), .Y(n231) );
  oa4f2 U24 ( .A(n236), .B(vn_in_2[4]), .C(n235), .D(vn_in_1[4]), .Y(n101) );
  oa4f2 U25 ( .A(n236), .B(vn_in_2[1]), .C(n235), .D(vn_in_1[1]), .Y(n119) );
  ao1f2 U26 ( .A(mac_cnt[0]), .B(n326), .C(mac_en), .Y(n88) );
  buf1a9 U27 ( .A(n41), .Y(n54) );
  inv1a3 U28 ( .A(psum_out1[15]), .Y(n322) );
  fa1a3 U29 ( .A(psum2[13]), .B(n_zz_10[13]), .CI(intadd_2_n1), .CO(n264), .S(
        n81) );
  fa1a3 U30 ( .A(psum1[13]), .B(n_zz_9[13]), .CI(intadd_1_n1), .CO(n302), .S(
        n82) );
  or3d6 U31 ( .A(n171), .B(n170), .C(n169), .Y(n199) );
  buf1a6 U32 ( .A(n80), .Y(n298) );
  oa4f2 U33 ( .A(n241), .B(vn_in_5[4]), .C(n240), .D(vn_in_7[4]), .Y(n96) );
  oa4f2 U34 ( .A(n241), .B(vn_in_5[5]), .C(n240), .D(vn_in_7[5]), .Y(n90) );
  oa4f2 U35 ( .A(n241), .B(vn_in_5[6]), .C(n240), .D(vn_in_7[6]), .Y(n226) );
  oa4f2 U36 ( .A(n241), .B(vn_in_5[0]), .C(n240), .D(vn_in_7[0]), .Y(n120) );
  oa4f2 U37 ( .A(n241), .B(vn_in_5[2]), .C(n240), .D(vn_in_7[2]), .Y(n108) );
  oa4f1 U38 ( .A(n241), .B(vn_in_5[7]), .C(n240), .D(vn_in_7[7]), .Y(n242) );
  oa4f2 U39 ( .A(n241), .B(vn_in_5[1]), .C(n240), .D(vn_in_7[1]), .Y(n114) );
  oa4f2 U40 ( .A(n241), .B(vn_in_5[3]), .C(n240), .D(vn_in_7[3]), .Y(n102) );
  oa4f2 U41 ( .A(n236), .B(vn_in_2[7]), .C(n235), .D(vn_in_1[7]), .Y(n247) );
  oa4f2 U42 ( .A(n238), .B(vn_in_4[5]), .C(n237), .D(vn_in_6[5]), .Y(n94) );
  oa4f2 U43 ( .A(n238), .B(vn_in_4[6]), .C(n237), .D(vn_in_6[6]), .Y(n230) );
  oa4f1 U44 ( .A(n236), .B(vn_in_2[3]), .C(n219), .D(vn_in_1[3]), .Y(n107) );
  oa4f2 U45 ( .A(n238), .B(vn_in_4[4]), .C(n237), .D(vn_in_6[4]), .Y(n100) );
  oa4f2 U46 ( .A(n238), .B(vn_in_4[3]), .C(n237), .D(vn_in_6[3]), .Y(n106) );
  oa4f1 U47 ( .A(n236), .B(vn_in_2[2]), .C(n219), .D(vn_in_1[2]), .Y(n113) );
  oa4f2 U48 ( .A(n238), .B(vn_in_4[2]), .C(n237), .D(vn_in_6[2]), .Y(n112) );
  oa4f2 U49 ( .A(n238), .B(vn_in_4[1]), .C(n237), .D(vn_in_6[1]), .Y(n118) );
  and2c3 U50 ( .A(n293), .B(n79), .Y(n80) );
  and2c2 U51 ( .A(n291), .B(n287), .Y(n289) );
  and2c2 U52 ( .A(n291), .B(n257), .Y(n259) );
  and2c2 U53 ( .A(n291), .B(n290), .Y(n294) );
  and2c2 U54 ( .A(n291), .B(n254), .Y(n256) );
  and3d2 U55 ( .A(n84), .B(n87), .C(mac_cnt[0]), .Y(n22) );
  and3d2 U56 ( .A(n84), .B(mac_cnt[1]), .C(mac_cnt[0]), .Y(n21) );
  inv1a3 U57 ( .A(psum2[1]), .Y(n262) );
  inv1a3 U58 ( .A(n_zz_10[13]), .Y(n276) );
  and2c2 U59 ( .A(n78), .B(mac_cnt[0]), .Y(n330) );
  inv1a3 U60 ( .A(psum_out2[15]), .Y(n284) );
  inv1a3 U61 ( .A(n_zz_9[13]), .Y(n314) );
  inv1a3 U62 ( .A(psum1[1]), .Y(n297) );
  inv1a3 U63 ( .A(mac_en), .Y(n78) );
  inv1a1 U64 ( .A(en), .Y(n325) );
  buf1a6 U65 ( .A(n23), .Y(n239) );
  and2c3 U66 ( .A(n76), .B(mac_cnt[2]), .Y(n23) );
  and2c3 U67 ( .A(n84), .B(n76), .Y(n25) );
  or2c3 U68 ( .A(mac_cnt[0]), .B(mac_cnt[1]), .Y(n76) );
  inv1a3 U69 ( .A(mac_cnt[2]), .Y(n84) );
  buf1a6 U70 ( .A(n263), .Y(n300) );
  buf1a6 U71 ( .A(n80), .Y(n299) );
  buf1a6 U72 ( .A(n23), .Y(n214) );
  buf1a15 U73 ( .A(resetn), .Y(n328) );
  and2c3 U74 ( .A(mac_cnt[2]), .B(mac_cnt[1]), .Y(n1) );
  or3d3 U75 ( .A(n125), .B(n124), .C(n123), .Y(n253) );
  oa1f1 U76 ( .A(n291), .B(vn_in_0[0]), .C(n122), .Y(n123) );
  or2c3 U77 ( .A(n87), .B(mac_cnt[0]), .Y(n12) );
  inv1a3 U78 ( .A(mac_cnt[1]), .Y(n87) );
  and2c3 U79 ( .A(n12), .B(mac_cnt[2]), .Y(n219) );
  buf1a9 U80 ( .A(n219), .Y(n235) );
  buf1a6 U81 ( .A(n21), .Y(n190) );
  oa4f3 U82 ( .A(n235), .B(rg_sin_table_1[0]), .C(rg_sin_table_4[0]), .D(n190), 
        .Y(n3) );
  inv1a1 U83 ( .A(mac_cnt[0]), .Y(n327) );
  inv1a3 U84 ( .A(n291), .Y(n79) );
  clk1b6 U85 ( .A(n79), .Y(n209) );
  and3d2 U86 ( .A(n87), .B(mac_cnt[2]), .C(mac_cnt[0]), .Y(n20) );
  buf1a6 U87 ( .A(n20), .Y(n208) );
  oa4f3 U88 ( .A(n209), .B(rg_sin_table_0[0]), .C(rg_sin_table_2[0]), .D(n208), 
        .Y(n2) );
  and2a3 U89 ( .A(n3), .B(n2), .Y(n6) );
  and2c3 U90 ( .A(n12), .B(n84), .Y(n24) );
  buf1a6 U91 ( .A(n24), .Y(n213) );
  buf1a6 U92 ( .A(n25), .Y(n212) );
  oa4f3 U93 ( .A(n213), .B(rg_sin_table_5[0]), .C(rg_sin_table_7[0]), .D(n212), 
        .Y(n5) );
  buf1a6 U94 ( .A(n22), .Y(n215) );
  oa4f3 U95 ( .A(n215), .B(rg_sin_table_6[0]), .C(rg_sin_table_3[0]), .D(n214), 
        .Y(n4) );
  or3d6 U96 ( .A(n6), .B(n5), .C(n4), .Y(n192) );
  inv1a1 U97 ( .A(n235), .Y(n189) );
  oa4e3 U98 ( .C(rg_cos_table_4[0]), .D(n190), .B(n189), .A(rg_cos_table_1[0]), 
        .Y(n8) );
  oa4f3 U99 ( .A(n209), .B(rg_cos_table_0[0]), .C(rg_cos_table_2[0]), .D(n208), 
        .Y(n7) );
  and2a3 U100 ( .A(n8), .B(n7), .Y(n11) );
  oa4f3 U101 ( .A(n213), .B(rg_cos_table_5[0]), .C(rg_cos_table_7[0]), .D(n212), .Y(n10) );
  oa4f3 U102 ( .A(n215), .B(rg_cos_table_6[0]), .C(rg_cos_table_3[0]), .D(n214), .Y(n9) );
  or3d6 U103 ( .A(n11), .B(n10), .C(n9), .Y(n200) );
  inv1a1 U104 ( .A(n330), .Y(n13) );
  ao4f1 U105 ( .A(n13), .B(n87), .C(n78), .D(n12), .Y(N184) );
  buf1a9 U106 ( .A(resetn), .Y(n329) );
  oa4f3 U107 ( .A(n208), .B(rg_sin_table_2[3]), .C(n235), .D(rg_sin_table_1[3]), .Y(n19) );
  oa4f3 U108 ( .A(n190), .B(rg_sin_table_4[3]), .C(n215), .D(rg_sin_table_6[3]), .Y(n18) );
  or2c1 U109 ( .A(n214), .B(rg_sin_table_3[3]), .Y(n15) );
  oa4f3 U110 ( .A(n213), .B(rg_sin_table_5[3]), .C(n212), .D(rg_sin_table_7[3]), .Y(n14) );
  or2c1 U111 ( .A(n15), .B(n14), .Y(n16) );
  oa1f3 U112 ( .A(n209), .B(rg_sin_table_0[3]), .C(n16), .Y(n17) );
  or3d3 U113 ( .A(n19), .B(n18), .C(n17), .Y(n195) );
  buf1a6 U114 ( .A(n20), .Y(n236) );
  oa4f3 U115 ( .A(n236), .B(rg_cos_table_2[6]), .C(n235), .D(rg_cos_table_1[6]), .Y(n31) );
  buf1a6 U116 ( .A(n21), .Y(n238) );
  buf1a6 U117 ( .A(n22), .Y(n237) );
  oa4f3 U118 ( .A(n238), .B(rg_cos_table_4[6]), .C(n237), .D(rg_cos_table_6[6]), .Y(n30) );
  or2c1 U119 ( .A(n239), .B(rg_cos_table_3[6]), .Y(n27) );
  buf1a6 U120 ( .A(n24), .Y(n241) );
  buf1a6 U121 ( .A(n25), .Y(n240) );
  oa4f3 U122 ( .A(n241), .B(rg_cos_table_5[6]), .C(n240), .D(rg_cos_table_7[6]), .Y(n26) );
  or2c1 U123 ( .A(n27), .B(n26), .Y(n28) );
  oa1f3 U124 ( .A(n291), .B(rg_cos_table_0[6]), .C(n28), .Y(n29) );
  or3d3 U125 ( .A(n31), .B(n30), .C(n29), .Y(n206) );
  oa4f3 U126 ( .A(n208), .B(rg_cos_table_2[3]), .C(n235), .D(rg_cos_table_1[3]), .Y(n37) );
  oa4f3 U127 ( .A(n190), .B(rg_cos_table_4[3]), .C(n215), .D(rg_cos_table_6[3]), .Y(n36) );
  or2c1 U128 ( .A(n214), .B(rg_cos_table_3[3]), .Y(n33) );
  oa4f3 U129 ( .A(n213), .B(rg_cos_table_5[3]), .C(n212), .D(rg_cos_table_7[3]), .Y(n32) );
  or2c1 U130 ( .A(n33), .B(n32), .Y(n34) );
  oa1f3 U131 ( .A(n209), .B(rg_cos_table_0[3]), .C(n34), .Y(n35) );
  or3d3 U132 ( .A(n37), .B(n36), .C(n35), .Y(n203) );
  inv1a3 U133 ( .A(n_zz_11_1_), .Y(n310) );
  inv1a3 U134 ( .A(n_zz_11_0_), .Y(n307) );
  and2c3 U135 ( .A(n310), .B(n307), .Y(n38) );
  oa1f9 U136 ( .A(n_zz_11_2_), .B(n38), .C(n322), .Y(n56) );
  inv1a1 U137 ( .A(psum1[0]), .Y(n287) );
  inv1a1 U138 ( .A(n_zz_11_2_), .Y(n39) );
  or2c3 U139 ( .A(n40), .B(n322), .Y(n41) );
  ao1f2 U140 ( .A(n56), .B(n287), .C(n54), .Y(psum_out1[0]) );
  ao1f2 U141 ( .A(n56), .B(n297), .C(n54), .Y(psum_out1[1]) );
  inv1a1 U142 ( .A(psum1[2]), .Y(n42) );
  ao1f2 U143 ( .A(n56), .B(n42), .C(n54), .Y(psum_out1[2]) );
  inv1a1 U144 ( .A(psum1[3]), .Y(n43) );
  ao1f2 U145 ( .A(n56), .B(n43), .C(n54), .Y(psum_out1[3]) );
  inv1a1 U146 ( .A(psum1[4]), .Y(n44) );
  ao1f2 U147 ( .A(n56), .B(n44), .C(n54), .Y(psum_out1[4]) );
  inv1a1 U148 ( .A(psum1[5]), .Y(n45) );
  ao1f2 U149 ( .A(n56), .B(n45), .C(n54), .Y(psum_out1[5]) );
  inv1a1 U150 ( .A(psum1[6]), .Y(n46) );
  ao1f2 U151 ( .A(n56), .B(n46), .C(n54), .Y(psum_out1[6]) );
  inv1a1 U152 ( .A(psum1[7]), .Y(n47) );
  ao1f2 U153 ( .A(n56), .B(n47), .C(n54), .Y(psum_out1[7]) );
  inv1a1 U154 ( .A(psum1[8]), .Y(n48) );
  ao1f2 U155 ( .A(n56), .B(n48), .C(n54), .Y(psum_out1[8]) );
  inv1a1 U156 ( .A(psum1[9]), .Y(n49) );
  ao1f2 U157 ( .A(n56), .B(n49), .C(n54), .Y(psum_out1[9]) );
  inv1a1 U158 ( .A(psum1[10]), .Y(n50) );
  ao1f2 U159 ( .A(n56), .B(n50), .C(n54), .Y(psum_out1[10]) );
  inv1a1 U160 ( .A(psum1[11]), .Y(n51) );
  ao1f2 U161 ( .A(n56), .B(n51), .C(n54), .Y(psum_out1[11]) );
  inv1a1 U162 ( .A(psum1[12]), .Y(n52) );
  ao1f2 U163 ( .A(n56), .B(n52), .C(n54), .Y(psum_out1[12]) );
  inv1a1 U164 ( .A(psum1[13]), .Y(n53) );
  ao1f2 U165 ( .A(n56), .B(n53), .C(n54), .Y(psum_out1[13]) );
  inv1a1 U166 ( .A(psum1[14]), .Y(n55) );
  ao1f2 U167 ( .A(n56), .B(n55), .C(n54), .Y(psum_out1[14]) );
  inv1a3 U168 ( .A(n_zz_13_1_), .Y(n272) );
  inv1a3 U169 ( .A(n_zz_13_0_), .Y(n269) );
  inv1a1 U170 ( .A(psum2[0]), .Y(n254) );
  inv1a1 U171 ( .A(n_zz_13_2_), .Y(n58) );
  or3d1 U172 ( .A(n58), .B(n269), .C(n272), .Y(n59) );
  or2c1 U173 ( .A(n59), .B(n284), .Y(n60) );
  buf1a6 U174 ( .A(n60), .Y(n74) );
  ao1f2 U175 ( .A(n61), .B(n254), .C(n74), .Y(psum_out2[0]) );
  ao1f2 U176 ( .A(n61), .B(n262), .C(n74), .Y(psum_out2[1]) );
  inv1a1 U177 ( .A(psum2[2]), .Y(n62) );
  ao1f2 U178 ( .A(n61), .B(n62), .C(n74), .Y(psum_out2[2]) );
  inv1a1 U179 ( .A(psum2[3]), .Y(n63) );
  ao1f2 U180 ( .A(n61), .B(n63), .C(n74), .Y(psum_out2[3]) );
  inv1a1 U181 ( .A(psum2[4]), .Y(n64) );
  ao1f2 U182 ( .A(n61), .B(n64), .C(n74), .Y(psum_out2[4]) );
  inv1a1 U183 ( .A(psum2[5]), .Y(n65) );
  ao1f2 U184 ( .A(n61), .B(n65), .C(n74), .Y(psum_out2[5]) );
  inv1a1 U185 ( .A(psum2[6]), .Y(n66) );
  ao1f2 U186 ( .A(n61), .B(n66), .C(n74), .Y(psum_out2[6]) );
  inv1a1 U187 ( .A(psum2[7]), .Y(n67) );
  ao1f2 U188 ( .A(n61), .B(n67), .C(n74), .Y(psum_out2[7]) );
  inv1a1 U189 ( .A(psum2[8]), .Y(n68) );
  ao1f2 U190 ( .A(n61), .B(n68), .C(n74), .Y(psum_out2[8]) );
  inv1a1 U191 ( .A(psum2[9]), .Y(n69) );
  ao1f2 U192 ( .A(n61), .B(n69), .C(n74), .Y(psum_out2[9]) );
  inv1a1 U193 ( .A(psum2[10]), .Y(n70) );
  ao1f2 U194 ( .A(n61), .B(n70), .C(n74), .Y(psum_out2[10]) );
  inv1a1 U195 ( .A(psum2[11]), .Y(n71) );
  ao1f2 U196 ( .A(n61), .B(n71), .C(n74), .Y(psum_out2[11]) );
  inv1a1 U197 ( .A(psum2[12]), .Y(n72) );
  ao1f2 U198 ( .A(n61), .B(n72), .C(n74), .Y(psum_out2[12]) );
  inv1a1 U199 ( .A(psum2[13]), .Y(n73) );
  ao1f2 U200 ( .A(n61), .B(n73), .C(n74), .Y(psum_out2[13]) );
  inv1a1 U201 ( .A(psum2[14]), .Y(n75) );
  ao1f2 U202 ( .A(n61), .B(n75), .C(n74), .Y(psum_out2[14]) );
  inv1a3 U203 ( .A(booth_sin_io_dout_vld), .Y(n293) );
  inv1a1 U204 ( .A(vn_vld), .Y(n89) );
  ao1f2 U205 ( .A(n293), .B(n78), .C(n89), .Y(N91) );
  oa1f1 U206 ( .A(n76), .B(mac_cnt[2]), .C(n239), .Y(n77) );
  and2c3 U207 ( .A(n78), .B(n77), .Y(N185) );
  or2c3 U208 ( .A(booth_sin_io_dout_vld), .B(n79), .Y(n301) );
  or2c3 U209 ( .A(n_zz_10[13]), .B(n298), .Y(n285) );
  ao1d2 U210 ( .A(n263), .B(n81), .C(n285), .Y(N172) );
  or2c3 U211 ( .A(n298), .B(n_zz_9[13]), .Y(n323) );
  ao1d2 U212 ( .A(n263), .B(n82), .C(n323), .Y(N153) );
  and2c1 U213 ( .A(valid_num[2]), .B(n84), .Y(n83) );
  oa2i2 U214 ( .A(valid_num[2]), .B(n84), .C(n293), .D(n83), .Y(n86) );
  or2c1 U215 ( .A(valid_num[1]), .B(n87), .Y(n85) );
  ao2i3 U216 ( .A(valid_num[1]), .B(n87), .C(n86), .D(n85), .Y(n326) );
  oa1f3 U217 ( .A(n89), .B(n88), .C(n325), .Y(n191) );
  or2c1 U218 ( .A(n239), .B(vn_in_3[5]), .Y(n91) );
  or2c1 U219 ( .A(n91), .B(n90), .Y(n92) );
  or3d1 U220 ( .A(n95), .B(n94), .C(n93), .Y(n234) );
  inv1a1 U221 ( .A(mean[5]), .Y(n233) );
  or2c1 U222 ( .A(n239), .B(vn_in_3[4]), .Y(n97) );
  or2c1 U223 ( .A(n97), .B(n96), .Y(n98) );
  or3d1 U224 ( .A(n101), .B(n100), .C(n99), .Y(n128) );
  inv1a1 U225 ( .A(mean[4]), .Y(n127) );
  or2c1 U226 ( .A(n239), .B(vn_in_3[3]), .Y(n103) );
  or2c1 U227 ( .A(n103), .B(n102), .Y(n104) );
  or3d1 U228 ( .A(n107), .B(n106), .C(n105), .Y(n131) );
  inv1a1 U229 ( .A(mean[3]), .Y(n130) );
  or2c1 U230 ( .A(n239), .B(vn_in_3[2]), .Y(n109) );
  or2c1 U231 ( .A(n109), .B(n108), .Y(n110) );
  or3d1 U232 ( .A(n113), .B(n112), .C(n111), .Y(n134) );
  inv1a1 U233 ( .A(mean[2]), .Y(n133) );
  or2c1 U234 ( .A(n239), .B(vn_in_3[1]), .Y(n115) );
  or2c1 U235 ( .A(n115), .B(n114), .Y(n116) );
  or3d1 U236 ( .A(n119), .B(n118), .C(n117), .Y(n137) );
  inv1a1 U237 ( .A(mean[1]), .Y(n136) );
  or2c1 U238 ( .A(n239), .B(vn_in_3[0]), .Y(n121) );
  or2c1 U239 ( .A(n121), .B(n120), .Y(n122) );
  or2b2 U240 ( .B(n253), .A(mean[0]), .Y(n135) );
  fa1a2 U241 ( .A(n128), .B(n127), .CI(n126), .CO(n232), .S(vin_minus_mean[4])
         );
  fa1a2 U242 ( .A(n131), .B(n130), .CI(n129), .CO(n126), .S(vin_minus_mean[3])
         );
  fa1a2 U243 ( .A(n134), .B(n133), .CI(n132), .CO(n129), .S(vin_minus_mean[2])
         );
  fa1a2 U244 ( .A(n137), .B(n136), .CI(n135), .CO(n132), .S(vin_minus_mean[1])
         );
  oa4f3 U245 ( .A(n208), .B(rg_sin_table_2[6]), .C(n235), .D(rg_sin_table_1[6]), .Y(n143) );
  oa4f3 U246 ( .A(n190), .B(rg_sin_table_4[6]), .C(n215), .D(rg_sin_table_6[6]), .Y(n142) );
  or2c1 U247 ( .A(n214), .B(rg_sin_table_3[6]), .Y(n139) );
  oa4f3 U248 ( .A(n213), .B(rg_sin_table_5[6]), .C(n212), .D(rg_sin_table_7[6]), .Y(n138) );
  or2c1 U249 ( .A(n139), .B(n138), .Y(n140) );
  oa1f3 U250 ( .A(n209), .B(rg_sin_table_0[6]), .C(n140), .Y(n141) );
  or3d3 U251 ( .A(n143), .B(n142), .C(n141), .Y(n198) );
  oa4f3 U252 ( .A(n208), .B(rg_sin_table_2[5]), .C(n235), .D(rg_sin_table_1[5]), .Y(n149) );
  oa4f3 U253 ( .A(n190), .B(rg_sin_table_4[5]), .C(n215), .D(rg_sin_table_6[5]), .Y(n148) );
  or2c1 U254 ( .A(n214), .B(rg_sin_table_3[5]), .Y(n145) );
  oa4f3 U255 ( .A(n213), .B(rg_sin_table_5[5]), .C(n212), .D(rg_sin_table_7[5]), .Y(n144) );
  or2c1 U256 ( .A(n145), .B(n144), .Y(n146) );
  oa1f3 U257 ( .A(n209), .B(rg_sin_table_0[5]), .C(n146), .Y(n147) );
  or3d3 U258 ( .A(n149), .B(n148), .C(n147), .Y(n197) );
  oa4f3 U259 ( .A(n208), .B(rg_sin_table_2[4]), .C(n235), .D(rg_sin_table_1[4]), .Y(n155) );
  oa4f3 U260 ( .A(n190), .B(rg_sin_table_4[4]), .C(n215), .D(rg_sin_table_6[4]), .Y(n154) );
  or2c1 U261 ( .A(n214), .B(rg_sin_table_3[4]), .Y(n151) );
  oa4f3 U262 ( .A(n213), .B(rg_sin_table_5[4]), .C(n212), .D(rg_sin_table_7[4]), .Y(n150) );
  or2c1 U263 ( .A(n151), .B(n150), .Y(n152) );
  oa1f3 U264 ( .A(n209), .B(rg_sin_table_0[4]), .C(n152), .Y(n153) );
  or3d3 U265 ( .A(n155), .B(n154), .C(n153), .Y(n196) );
  oa4f3 U266 ( .A(n235), .B(rg_sin_table_1[2]), .C(rg_sin_table_4[2]), .D(n190), .Y(n157) );
  oa4f3 U267 ( .A(n209), .B(rg_sin_table_0[2]), .C(rg_sin_table_2[2]), .D(n208), .Y(n156) );
  and2a3 U268 ( .A(n157), .B(n156), .Y(n160) );
  oa4f3 U269 ( .A(n213), .B(rg_sin_table_5[2]), .C(rg_sin_table_7[2]), .D(n212), .Y(n159) );
  oa4f3 U270 ( .A(n215), .B(rg_sin_table_6[2]), .C(rg_sin_table_3[2]), .D(n214), .Y(n158) );
  or3d3 U271 ( .A(n160), .B(n159), .C(n158), .Y(n194) );
  oa4f3 U272 ( .A(n235), .B(rg_sin_table_1[1]), .C(rg_sin_table_4[1]), .D(n190), .Y(n162) );
  oa4f3 U273 ( .A(n209), .B(rg_sin_table_0[1]), .C(rg_sin_table_2[1]), .D(n208), .Y(n161) );
  and2a3 U274 ( .A(n162), .B(n161), .Y(n165) );
  oa4f3 U275 ( .A(n213), .B(rg_sin_table_5[1]), .C(rg_sin_table_7[1]), .D(n212), .Y(n164) );
  oa4f3 U276 ( .A(n215), .B(rg_sin_table_6[1]), .C(rg_sin_table_3[1]), .D(n214), .Y(n163) );
  or3d3 U277 ( .A(n165), .B(n164), .C(n163), .Y(n193) );
  oa4f3 U278 ( .A(n208), .B(rg_sin_table_2[7]), .C(n235), .D(rg_sin_table_1[7]), .Y(n171) );
  oa4f3 U279 ( .A(n190), .B(rg_sin_table_4[7]), .C(n215), .D(rg_sin_table_6[7]), .Y(n170) );
  or2c1 U280 ( .A(n214), .B(rg_sin_table_3[7]), .Y(n167) );
  oa4f3 U281 ( .A(n213), .B(rg_sin_table_5[7]), .C(n212), .D(rg_sin_table_7[7]), .Y(n166) );
  or2c1 U282 ( .A(n167), .B(n166), .Y(n168) );
  oa1f3 U283 ( .A(n209), .B(rg_sin_table_0[7]), .C(n168), .Y(n169) );
  oa4f3 U284 ( .A(n236), .B(rg_cos_table_2[5]), .C(n235), .D(rg_cos_table_1[5]), .Y(n177) );
  oa4f3 U285 ( .A(n238), .B(rg_cos_table_4[5]), .C(n237), .D(rg_cos_table_6[5]), .Y(n176) );
  or2c1 U286 ( .A(n239), .B(rg_cos_table_3[5]), .Y(n173) );
  oa4f3 U287 ( .A(n241), .B(rg_cos_table_5[5]), .C(n240), .D(rg_cos_table_7[5]), .Y(n172) );
  or2c1 U288 ( .A(n173), .B(n172), .Y(n174) );
  oa1f3 U289 ( .A(n291), .B(rg_cos_table_0[5]), .C(n174), .Y(n175) );
  or3d3 U290 ( .A(n177), .B(n176), .C(n175), .Y(n205) );
  oa4f3 U291 ( .A(n236), .B(rg_cos_table_2[4]), .C(n235), .D(rg_cos_table_1[4]), .Y(n183) );
  oa4f3 U292 ( .A(n238), .B(rg_cos_table_4[4]), .C(n237), .D(rg_cos_table_6[4]), .Y(n182) );
  or2c1 U293 ( .A(n239), .B(rg_cos_table_3[4]), .Y(n179) );
  oa4f3 U294 ( .A(n241), .B(rg_cos_table_5[4]), .C(n240), .D(rg_cos_table_7[4]), .Y(n178) );
  or2c1 U295 ( .A(n179), .B(n178), .Y(n180) );
  oa1f3 U296 ( .A(n209), .B(rg_cos_table_0[4]), .C(n180), .Y(n181) );
  or3d3 U297 ( .A(n183), .B(n182), .C(n181), .Y(n204) );
  oa4f3 U298 ( .A(n235), .B(rg_cos_table_1[2]), .C(rg_cos_table_4[2]), .D(n190), .Y(n185) );
  oa4f3 U299 ( .A(n209), .B(rg_cos_table_0[2]), .C(rg_cos_table_2[2]), .D(n208), .Y(n184) );
  and2a3 U300 ( .A(n185), .B(n184), .Y(n188) );
  oa4f3 U301 ( .A(n213), .B(rg_cos_table_5[2]), .C(rg_cos_table_7[2]), .D(n212), .Y(n187) );
  oa4f3 U302 ( .A(n215), .B(rg_cos_table_6[2]), .C(rg_cos_table_3[2]), .D(n214), .Y(n186) );
  or3d3 U303 ( .A(n188), .B(n187), .C(n186), .Y(n202) );
  oa4e3 U304 ( .C(rg_cos_table_4[1]), .D(n190), .B(n189), .A(rg_cos_table_1[1]), .Y(n211) );
  oa4f3 U305 ( .A(n209), .B(rg_cos_table_0[1]), .C(rg_cos_table_2[1]), .D(n208), .Y(n210) );
  and2a3 U306 ( .A(n211), .B(n210), .Y(n218) );
  oa4f3 U307 ( .A(n213), .B(rg_cos_table_5[1]), .C(rg_cos_table_7[1]), .D(n212), .Y(n217) );
  oa4f3 U308 ( .A(n215), .B(rg_cos_table_6[1]), .C(rg_cos_table_3[1]), .D(n214), .Y(n216) );
  or3d3 U309 ( .A(n218), .B(n217), .C(n216), .Y(n201) );
  oa4f3 U310 ( .A(n236), .B(rg_cos_table_2[7]), .C(n219), .D(rg_cos_table_1[7]), .Y(n225) );
  oa4f3 U311 ( .A(n238), .B(rg_cos_table_4[7]), .C(n237), .D(rg_cos_table_6[7]), .Y(n224) );
  or2c1 U312 ( .A(n239), .B(rg_cos_table_3[7]), .Y(n221) );
  oa4f3 U313 ( .A(n241), .B(rg_cos_table_5[7]), .C(n240), .D(rg_cos_table_7[7]), .Y(n220) );
  or2c1 U314 ( .A(n221), .B(n220), .Y(n222) );
  oa1f3 U315 ( .A(n291), .B(rg_cos_table_0[7]), .C(n222), .Y(n223) );
  or3d6 U316 ( .A(n225), .B(n224), .C(n223), .Y(n207) );
  or2c1 U317 ( .A(n239), .B(vn_in_3[6]), .Y(n227) );
  or2c1 U318 ( .A(n227), .B(n226), .Y(n228) );
  or3d1 U319 ( .A(n231), .B(n230), .C(n229), .Y(n250) );
  inv1a1 U320 ( .A(mean[6]), .Y(n249) );
  fa1a2 U321 ( .A(n234), .B(n233), .CI(n232), .CO(n248), .S(vin_minus_mean[5])
         );
  or2c1 U322 ( .A(n239), .B(vn_in_3[7]), .Y(n243) );
  or2c1 U323 ( .A(n243), .B(n242), .Y(n244) );
  or3d1 U324 ( .A(n247), .B(n246), .C(n245), .Y(n252) );
  fa1a2 U325 ( .A(n250), .B(n249), .CI(n248), .CO(n251), .S(vin_minus_mean[6])
         );
  xor3b3 U326 ( .A(n252), .B(n251), .C(mean[7]), .Y(vin_minus_mean[7]) );
  xor2a2 U327 ( .A(n253), .B(mean[0]), .Y(vin_minus_mean[0]) );
  and2c1 U328 ( .A(n_zz_10[0]), .B(n256), .Y(n255) );
  oa2i2 U329 ( .A(n_zz_10[0]), .B(n256), .C(n293), .D(n255), .Y(N159) );
  mx2a1 U330 ( .D0(psum2[1]), .D1(n262), .S(n261), .Y(n257) );
  and2c1 U331 ( .A(n_zz_10[1]), .B(n259), .Y(n258) );
  oa2i2 U332 ( .A(n_zz_10[1]), .B(n259), .C(n293), .D(n258), .Y(N160) );
  inv1a1 U333 ( .A(n_zz_10[1]), .Y(n260) );
  fac2a1 U334 ( .A(n262), .B(n261), .CI(n260), .CO(intadd_2_CI) );
  ao4a3 U335 ( .A(n300), .B(intadd_2_SUM_0_), .C(n299), .D(n_zz_10[2]), .Y(
        N161) );
  ao4a3 U336 ( .A(n263), .B(intadd_2_SUM_1_), .C(n298), .D(n_zz_10[3]), .Y(
        N162) );
  ao4a3 U337 ( .A(n263), .B(intadd_2_SUM_2_), .C(n298), .D(n_zz_10[4]), .Y(
        N163) );
  ao4a3 U338 ( .A(n263), .B(intadd_2_SUM_3_), .C(n298), .D(n_zz_10[5]), .Y(
        N164) );
  ao4a3 U339 ( .A(n263), .B(intadd_2_SUM_4_), .C(n298), .D(n_zz_10[6]), .Y(
        N165) );
  ao4a3 U340 ( .A(n263), .B(intadd_2_SUM_5_), .C(n298), .D(n_zz_10[7]), .Y(
        N166) );
  ao4a3 U341 ( .A(n263), .B(intadd_2_SUM_6_), .C(n298), .D(n_zz_10[8]), .Y(
        N167) );
  ao4a3 U342 ( .A(n263), .B(intadd_2_SUM_7_), .C(n298), .D(n_zz_10[9]), .Y(
        N168) );
  ao4a3 U343 ( .A(n263), .B(intadd_2_SUM_8_), .C(n298), .D(n_zz_10[10]), .Y(
        N169) );
  ao4a3 U344 ( .A(n263), .B(intadd_2_SUM_9_), .C(n298), .D(n_zz_10[11]), .Y(
        N170) );
  ao4a3 U345 ( .A(n263), .B(intadd_2_SUM_10_), .C(n298), .D(n_zz_10[12]), .Y(
        N171) );
  inv1a1 U346 ( .A(n264), .Y(n267) );
  and2c3 U347 ( .A(n_zz_10[13]), .B(n301), .Y(n281) );
  and2c3 U348 ( .A(n301), .B(n276), .Y(n282) );
  mulpa1b1 U349 ( .X0(n264), .X1(n267), .S(psum2[14]), .Z(n281), .M(n282), .P(
        n265) );
  or2c1 U350 ( .A(n265), .B(n285), .Y(N173) );
  ao1d2 U351 ( .A(intadd_2_n1), .B(psum2[13]), .C(n276), .Y(n266) );
  ao1f2 U352 ( .A(n276), .B(n267), .C(n270), .Y(n271) );
  mulpa1b1 U353 ( .X0(n_zz_13_0_), .X1(n269), .S(n271), .Z(n281), .M(n282), 
        .P(n268) );
  or2c1 U354 ( .A(n268), .B(n285), .Y(N174) );
  oa1f3 U355 ( .A(n276), .B(n270), .C(n269), .Y(n274) );
  oa1f3 U356 ( .A(n_zz_10[13]), .B(n271), .C(n274), .Y(n277) );
  mulpa1b1 U357 ( .X0(n_zz_13_1_), .X1(n272), .S(n277), .Z(n282), .M(n281), 
        .P(n273) );
  or2c1 U358 ( .A(n273), .B(n285), .Y(N175) );
  ao1f2 U359 ( .A(n_zz_10[13]), .B(n274), .C(n_zz_13_1_), .Y(n275) );
  ao1f2 U360 ( .A(n277), .B(n276), .C(n275), .Y(n280) );
  inv1a1 U361 ( .A(n280), .Y(n278) );
  mulpa3b1 U362 ( .X0(n278), .X1(n280), .S(n_zz_13_2_), .Z(n282), .M(n281), 
        .P(n279) );
  or2c1 U363 ( .A(n279), .B(n285), .Y(N176) );
  fac2a1 U364 ( .A(n_zz_10[13]), .B(n_zz_13_2_), .CI(n280), .CO(n283) );
  mulpa3b1 U365 ( .X0(psum_out2[15]), .X1(n284), .S(n283), .Z(n282), .M(n281), 
        .P(n286) );
  or2c1 U366 ( .A(n286), .B(n285), .Y(N177) );
  and2c1 U367 ( .A(n_zz_9[0]), .B(n289), .Y(n288) );
  oa2i2 U368 ( .A(n_zz_9[0]), .B(n289), .C(n293), .D(n288), .Y(N140) );
  mx2a1 U369 ( .D0(psum1[1]), .D1(n297), .S(n296), .Y(n290) );
  and2c1 U370 ( .A(n_zz_9[1]), .B(n294), .Y(n292) );
  oa2i2 U371 ( .A(n_zz_9[1]), .B(n294), .C(n293), .D(n292), .Y(N141) );
  inv1a1 U372 ( .A(n_zz_9[1]), .Y(n295) );
  fac2a1 U373 ( .A(n297), .B(n296), .CI(n295), .CO(intadd_1_CI) );
  ao4a3 U374 ( .A(n263), .B(intadd_1_SUM_0_), .C(n298), .D(n_zz_9[2]), .Y(N142) );
  ao4a3 U375 ( .A(n300), .B(intadd_1_SUM_1_), .C(n299), .D(n_zz_9[3]), .Y(N143) );
  ao4a3 U376 ( .A(n300), .B(intadd_1_SUM_2_), .C(n299), .D(n_zz_9[4]), .Y(N144) );
  ao4a3 U377 ( .A(n300), .B(intadd_1_SUM_3_), .C(n299), .D(n_zz_9[5]), .Y(N145) );
  ao4a3 U378 ( .A(n300), .B(intadd_1_SUM_4_), .C(n299), .D(n_zz_9[6]), .Y(N146) );
  ao4a3 U379 ( .A(n263), .B(intadd_1_SUM_5_), .C(n298), .D(n_zz_9[7]), .Y(N147) );
  ao4a3 U380 ( .A(n300), .B(intadd_1_SUM_6_), .C(n299), .D(n_zz_9[8]), .Y(N148) );
  ao4a3 U381 ( .A(n300), .B(intadd_1_SUM_7_), .C(n299), .D(n_zz_9[9]), .Y(N149) );
  ao4a3 U382 ( .A(n300), .B(intadd_1_SUM_8_), .C(n299), .D(n_zz_9[10]), .Y(
        N150) );
  ao4a3 U383 ( .A(n300), .B(intadd_1_SUM_9_), .C(n299), .D(n_zz_9[11]), .Y(
        N151) );
  ao4a3 U384 ( .A(n263), .B(intadd_1_SUM_10_), .C(n299), .D(n_zz_9[12]), .Y(
        N152) );
  inv1a1 U385 ( .A(n302), .Y(n305) );
  and2c3 U386 ( .A(n_zz_9[13]), .B(n301), .Y(n319) );
  and2c3 U387 ( .A(n301), .B(n314), .Y(n320) );
  mulpa1b1 U388 ( .X0(n302), .X1(n305), .S(psum1[14]), .Z(n319), .M(n320), .P(
        n303) );
  or2c1 U389 ( .A(n303), .B(n323), .Y(N154) );
  ao1d2 U390 ( .A(intadd_1_n1), .B(psum1[13]), .C(n314), .Y(n304) );
  ao1f2 U391 ( .A(n314), .B(n305), .C(n308), .Y(n309) );
  mulpa1b1 U392 ( .X0(n_zz_11_0_), .X1(n307), .S(n309), .Z(n319), .M(n320), 
        .P(n306) );
  or2c1 U393 ( .A(n306), .B(n323), .Y(N155) );
  oa1f3 U394 ( .A(n314), .B(n308), .C(n307), .Y(n312) );
  oa1f3 U395 ( .A(n_zz_9[13]), .B(n309), .C(n312), .Y(n315) );
  mulpa3b1 U396 ( .X0(n_zz_11_1_), .X1(n310), .S(n315), .Z(n320), .M(n319), 
        .P(n311) );
  or2c1 U397 ( .A(n311), .B(n323), .Y(N156) );
  ao1f2 U398 ( .A(n_zz_9[13]), .B(n312), .C(n_zz_11_1_), .Y(n313) );
  ao1f2 U399 ( .A(n315), .B(n314), .C(n313), .Y(n318) );
  inv1a1 U400 ( .A(n318), .Y(n316) );
  mulpa1b1 U401 ( .X0(n316), .X1(n318), .S(n_zz_11_2_), .Z(n320), .M(n319), 
        .P(n317) );
  or2c1 U402 ( .A(n317), .B(n323), .Y(N157) );
  fac2a1 U403 ( .A(n_zz_9[13]), .B(n_zz_11_2_), .CI(n318), .CO(n321) );
  mulpa3b1 U404 ( .X0(psum_out1[15]), .X1(n322), .S(n321), .Z(n320), .M(n319), 
        .P(n324) );
  or2c1 U405 ( .A(n324), .B(n323), .Y(N158) );
  and3d2 U406 ( .A(n327), .B(n326), .C(n325), .Y(N189) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cordic_int_0 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3880;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3880) );
  and2a3 main_gate ( .A(net3880), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cordic_int_2 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3880;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3880) );
  and2a3 main_gate ( .A(net3880), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cordic_int_1 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3880;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3880) );
  and2a3 main_gate ( .A(net3880), .B(CLK), .Y(ENCLK) );
endmodule


module cordic_int ( en, rg_cordic_iternum, vld, y, x, res, res_vld, clk, 
        resetn );
  input [2:0] rg_cordic_iternum;
  input [15:0] y;
  input [15:0] x;
  output [7:0] res;
  input en, vld, clk, resetn;
  output res_vld;
  wire   cal_en, cal_en_regNext, xn_rightshift_18_, cal_finish_delay,
         nozero_flg, N158, N292, N293, N294, N295, N296, N297, N298, N299,
         N302, N303, N304, N305, N306, N307, N308, N309, N310, N311, N312,
         N313, N314, N315, N316, N317, N318, N319, N321, N322, N323, N324,
         N330, N331, N332, N335, N336, N337, N338, N339, N340, N341, N342,
         N343, N344, N345, N346, N347, N348, N349, N350, N351, N352, N353,
         N354, N355, net3886, net3891, net3896, C35_DATA3_2, C35_DATA3_3,
         C35_DATA3_4, C35_DATA3_5, C35_DATA3_6, n195, n197, n198, n199, n200,
         n201, n202, n203, n205, DP_OP_39J1_122_1632_n19,
         DP_OP_39J1_122_1632_n18, DP_OP_39J1_122_1632_n17,
         DP_OP_39J1_122_1632_n16, DP_OP_39J1_122_1632_n15,
         DP_OP_39J1_122_1632_n14, DP_OP_39J1_122_1632_n9,
         DP_OP_39J1_122_1632_n8, DP_OP_39J1_122_1632_n7,
         DP_OP_39J1_122_1632_n6, DP_OP_39J1_122_1632_n5,
         DP_OP_39J1_122_1632_n4, DP_OP_39J1_122_1632_n3,
         DP_OP_39J1_122_1632_n2, DP_OP_67J1_125_1913_n47,
         DP_OP_67J1_125_1913_n46, DP_OP_67J1_125_1913_n45,
         DP_OP_67J1_125_1913_n44, DP_OP_67J1_125_1913_n43,
         DP_OP_67J1_125_1913_n25, DP_OP_67J1_125_1913_n24,
         DP_OP_67J1_125_1913_n23, DP_OP_67J1_125_1913_n22,
         DP_OP_67J1_125_1913_n21, DP_OP_67J1_125_1913_n20,
         DP_OP_67J1_125_1913_n19, DP_OP_67J1_125_1913_n18,
         DP_OP_67J1_125_1913_n17, DP_OP_67J1_125_1913_n16,
         DP_OP_67J1_125_1913_n15, DP_OP_67J1_125_1913_n14, n1, n2, n3, n5, n6,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
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
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n196, n204, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631,
         n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642,
         n643, n644, n645, n646, n647, n648, n649, n650, n651, n652;
  wire   [1:0] n_zz_16;
  wire   [6:0] res_rg;
  wire   [2:0] cal_cnt;
  wire   [17:0] xn;
  wire   [17:0] yn;

  SNPS_CLOCK_GATE_HIGH_cordic_int_0 clk_gate_yn_reg ( .CLK(clk), .EN(N354), 
        .ENCLK(net3886) );
  SNPS_CLOCK_GATE_HIGH_cordic_int_2 clk_gate_res_rg_reg ( .CLK(clk), .EN(N355), 
        .ENCLK(net3891) );
  SNPS_CLOCK_GATE_HIGH_cordic_int_1 clk_gate_res_out_reg ( .CLK(clk), .EN(
        cal_finish_delay), .ENCLK(net3896) );
  fdf2a3 res_rg_reg_3_ ( .D(n643), .CLK(net3891), .CLR(n649), .Q(res_rg[3]) );
  fdf2a3 res_rg_reg_4_ ( .D(n642), .CLK(net3891), .CLR(n647), .Q(res_rg[4]) );
  fdf2a3 res_rg_reg_5_ ( .D(n641), .CLK(net3891), .CLR(n650), .Q(res_rg[5]) );
  fdf2a3 res_rg_reg_6_ ( .D(N330), .CLK(net3891), .CLR(n646), .Q(res_rg[6]) );
  fdf2a3 res_rg_reg_7_ ( .D(N331), .CLK(net3891), .CLR(n646), .Q(n_zz_16[0])
         );
  fdf2a3 res_rg_reg_8_ ( .D(N332), .CLK(net3891), .CLR(n648), .Q(n_zz_16[1])
         );
  fdf2a3 yn_reg_4_ ( .D(N339), .CLK(net3886), .CLR(n649), .Q(yn[4]) );
  fdf2a3 yn_reg_5_ ( .D(N340), .CLK(net3886), .CLR(n649), .Q(yn[5]) );
  fdf2a3 yn_reg_6_ ( .D(N341), .CLK(net3886), .CLR(n649), .Q(yn[6]) );
  fdf2a3 yn_reg_7_ ( .D(N342), .CLK(net3886), .CLR(n646), .Q(yn[7]) );
  fdf2a3 yn_reg_8_ ( .D(N343), .CLK(net3886), .CLR(n648), .Q(yn[8]) );
  fdf2a3 yn_reg_9_ ( .D(N344), .CLK(net3886), .CLR(n649), .Q(yn[9]) );
  fdf2a3 yn_reg_10_ ( .D(N345), .CLK(net3886), .CLR(n646), .Q(yn[10]) );
  fdf2a3 yn_reg_11_ ( .D(N346), .CLK(net3886), .CLR(n647), .Q(yn[11]) );
  fdf2a3 yn_reg_12_ ( .D(N347), .CLK(net3886), .CLR(n647), .Q(yn[12]) );
  fdf2a3 yn_reg_13_ ( .D(N348), .CLK(net3886), .CLR(n647), .Q(yn[13]) );
  fdf2a3 yn_reg_14_ ( .D(N349), .CLK(net3886), .CLR(n647), .Q(yn[14]) );
  fdf2a3 yn_reg_15_ ( .D(N350), .CLK(net3886), .CLR(n647), .Q(yn[15]) );
  fdf2a3 yn_reg_16_ ( .D(N351), .CLK(net3886), .CLR(n649), .Q(yn[16]) );
  fdf2a3 yn_reg_17_ ( .D(N352), .CLK(net3886), .CLR(n648), .Q(yn[17]) );
  fdf2a3 xn_reg_2_ ( .D(N307), .CLK(net3886), .CLR(n647), .Q(xn[2]) );
  fdf2a3 xn_reg_3_ ( .D(N308), .CLK(net3886), .CLR(n648), .Q(xn[3]) );
  fdf2a3 xn_reg_4_ ( .D(N309), .CLK(net3886), .CLR(n649), .Q(xn[4]) );
  fdf2a3 xn_reg_5_ ( .D(N310), .CLK(net3886), .CLR(n646), .Q(xn[5]) );
  fdf2a3 xn_reg_6_ ( .D(N311), .CLK(net3886), .CLR(n648), .Q(xn[6]) );
  fdf2a3 xn_reg_7_ ( .D(N312), .CLK(net3886), .CLR(n649), .Q(xn[7]) );
  fdf2a3 xn_reg_8_ ( .D(N313), .CLK(net3886), .CLR(n646), .Q(xn[8]) );
  fdf2a3 xn_reg_9_ ( .D(N314), .CLK(net3886), .CLR(n648), .Q(xn[9]) );
  fdf2a3 xn_reg_10_ ( .D(N315), .CLK(net3886), .CLR(n649), .Q(xn[10]) );
  fdf2a3 xn_reg_11_ ( .D(N316), .CLK(net3886), .CLR(n648), .Q(xn[11]) );
  fdf2a3 xn_reg_12_ ( .D(N317), .CLK(net3886), .CLR(n649), .Q(xn[12]) );
  fdf2a3 xn_reg_13_ ( .D(N318), .CLK(net3886), .CLR(n646), .Q(xn[13]) );
  fdf2a3 xn_reg_14_ ( .D(N319), .CLK(net3886), .CLR(n646), .Q(xn[14]) );
  fdf2a3 xn_reg_15_ ( .D(n640), .CLK(net3886), .CLR(n648), .Q(xn[15]) );
  fdf2a3 xn_reg_17_ ( .D(N322), .CLK(net3886), .CLR(n649), .Q(xn[17]) );
  fdef2a3 cal_finish_delay_reg ( .D(n205), .E(en), .CLK(clk), .CLR(n647), .Q(
        cal_finish_delay) );
  fdef2a3 finish_reg ( .D(cal_finish_delay), .E(en), .CLK(clk), .CLR(n647), 
        .Q(res_vld) );
  fdef3a6 nozero_flg_reg ( .D(n652), .E(n651), .CLK(net3891), .PRE(n649), .Q(
        nozero_flg) );
  fdf2a3 xn_reg_16_ ( .D(N321), .CLK(net3886), .CLR(n649), .Q(xn[16]) );
  fa1a2 DP_OP_39J1_122_1632_U10 ( .A(N158), .B(res_rg[0]), .CI(
        DP_OP_39J1_122_1632_n19), .CO(DP_OP_39J1_122_1632_n9), .S(N292) );
  fa1a2 DP_OP_39J1_122_1632_U9 ( .A(res_rg[1]), .B(DP_OP_39J1_122_1632_n18), 
        .CI(DP_OP_39J1_122_1632_n9), .CO(DP_OP_39J1_122_1632_n8), .S(N293) );
  fa1a2 DP_OP_39J1_122_1632_U8 ( .A(res_rg[2]), .B(DP_OP_39J1_122_1632_n17), 
        .CI(DP_OP_39J1_122_1632_n8), .CO(DP_OP_39J1_122_1632_n7), .S(N294) );
  fa1a2 DP_OP_39J1_122_1632_U7 ( .A(res_rg[3]), .B(DP_OP_39J1_122_1632_n16), 
        .CI(DP_OP_39J1_122_1632_n7), .CO(DP_OP_39J1_122_1632_n6), .S(N295) );
  fa1a2 DP_OP_39J1_122_1632_U4 ( .A(res_rg[6]), .B(N158), .CI(
        DP_OP_39J1_122_1632_n4), .CO(DP_OP_39J1_122_1632_n3), .S(N298) );
  fa1a2 DP_OP_39J1_122_1632_U3 ( .A(n_zz_16[0]), .B(N158), .CI(
        DP_OP_39J1_122_1632_n3), .CO(DP_OP_39J1_122_1632_n2), .S(N299) );
  facs2a3 DP_OP_67J1_125_1913_U15 ( .B(DP_OP_67J1_125_1913_n43), .A(n634), 
        .CI0(DP_OP_67J1_125_1913_n17), .CI1(DP_OP_67J1_125_1913_n16), .CSIN(
        DP_OP_67J1_125_1913_n20), .S(C35_DATA3_6), .CO0(
        DP_OP_67J1_125_1913_n15), .CO1(DP_OP_67J1_125_1913_n14) );
  fdf2a3 res_out_reg_7_ ( .D(n_zz_16[1]), .CLK(net3896), .CLR(n650), .Q(res[7]) );
  fdf2a3 cal_en_regNext_reg ( .D(cal_en), .CLK(clk), .CLR(n649), .Q(
        cal_en_regNext) );
  fdf2a3 cal_cnt_reg_0_ ( .D(N302), .CLK(net3891), .CLR(n646), .Q(cal_cnt[0])
         );
  fdf2a3 res_out_reg_6_ ( .D(n197), .CLK(net3896), .CLR(n650), .Q(res[6]) );
  fdf2a3 res_out_reg_5_ ( .D(n198), .CLK(net3896), .CLR(n650), .Q(res[5]) );
  fdf2a3 res_out_reg_4_ ( .D(n199), .CLK(net3896), .CLR(n650), .Q(res[4]) );
  fdf2a3 res_out_reg_3_ ( .D(n200), .CLK(net3896), .CLR(n650), .Q(res[3]) );
  fdf2a3 res_out_reg_2_ ( .D(n201), .CLK(net3896), .CLR(n648), .Q(res[2]) );
  fdf2a3 res_out_reg_1_ ( .D(n202), .CLK(net3896), .CLR(n650), .Q(res[1]) );
  fdf2a3 res_out_reg_0_ ( .D(n203), .CLK(net3896), .CLR(n646), .Q(res[0]) );
  fdf2a3 cal_cnt_reg_1_ ( .D(N303), .CLK(net3891), .CLR(n650), .Q(cal_cnt[1])
         );
  fdf2a3 cal_cnt_reg_2_ ( .D(N304), .CLK(net3891), .CLR(n650), .Q(cal_cnt[2])
         );
  fdf2a3 res_rg_reg_0_ ( .D(N324), .CLK(net3891), .CLR(n650), .Q(res_rg[0]) );
  fdf2a3 cal_en_reg ( .D(n195), .CLK(clk), .CLR(n650), .Q(cal_en) );
  fdf2a3 yn_reg_0_ ( .D(N335), .CLK(net3886), .CLR(n648), .Q(yn[0]) );
  fdf2a3 yn_reg_1_ ( .D(N336), .CLK(net3886), .CLR(n646), .Q(yn[1]) );
  fdf2a3 res_rg_reg_1_ ( .D(n645), .CLK(net3891), .CLR(n649), .Q(res_rg[1]) );
  fdf2a3 xn_reg_0_ ( .D(N305), .CLK(net3886), .CLR(n647), .Q(xn[0]) );
  fdf2a3 yn_reg_2_ ( .D(N337), .CLK(net3886), .CLR(n649), .Q(yn[2]) );
  fdf2a3 xn_reg_1_ ( .D(N306), .CLK(net3886), .CLR(n647), .Q(xn[1]) );
  fdf2a3 yn_reg_3_ ( .D(N338), .CLK(net3886), .CLR(n648), .Q(yn[3]) );
  fdf2a3 res_rg_reg_2_ ( .D(n644), .CLK(net3891), .CLR(n646), .Q(res_rg[2]) );
  fdf2a3 xn_reg_18_ ( .D(N323), .CLK(net3886), .CLR(n648), .Q(
        xn_rightshift_18_) );
  facsf1b2 DP_OP_67J1_125_1913_U19 ( .CI1(DP_OP_67J1_125_1913_n23), .B(
        DP_OP_67J1_125_1913_n46), .A(n639), .CI0(DP_OP_67J1_125_1913_n24), 
        .CSIN(DP_OP_67J1_125_1913_n25), .CO1(DP_OP_67J1_125_1913_n21), .CO0(
        DP_OP_67J1_125_1913_n22), .S(C35_DATA3_3) );
  fa1a3 DP_OP_39J1_122_1632_U6 ( .A(res_rg[4]), .B(DP_OP_39J1_122_1632_n15), 
        .CI(DP_OP_39J1_122_1632_n6), .CO(DP_OP_39J1_122_1632_n5), .S(N296) );
  fa1a3 DP_OP_39J1_122_1632_U5 ( .A(res_rg[5]), .B(DP_OP_39J1_122_1632_n14), 
        .CI(DP_OP_39J1_122_1632_n5), .CO(DP_OP_39J1_122_1632_n4), .S(N297) );
  fdf2a9 yn_reg_18_ ( .D(N353), .CLK(net3886), .CLR(n647), .Q(N158) );
  facs3a2 DP_OP_67J1_125_1913_U20 ( .A(n123), .B(DP_OP_67J1_125_1913_n47), 
        .CSIN(DP_OP_67J1_125_1913_n25), .S(C35_DATA3_2), .CO0(
        DP_OP_67J1_125_1913_n24), .CO1(DP_OP_67J1_125_1913_n23) );
  facs3a2 DP_OP_67J1_125_1913_U17 ( .A(n637), .B(DP_OP_67J1_125_1913_n45), 
        .CSIN(DP_OP_67J1_125_1913_n20), .S(C35_DATA3_4), .CO0(
        DP_OP_67J1_125_1913_n19), .CO1(DP_OP_67J1_125_1913_n18) );
  facsf1b2 DP_OP_67J1_125_1913_U16 ( .CI1(DP_OP_67J1_125_1913_n18), .B(
        DP_OP_67J1_125_1913_n44), .A(n636), .CI0(DP_OP_67J1_125_1913_n19), 
        .CSIN(DP_OP_67J1_125_1913_n20), .CO1(DP_OP_67J1_125_1913_n16), .CO0(
        DP_OP_67J1_125_1913_n17), .S(C35_DATA3_5) );
  inv1a1 U3 ( .A(xn[17]), .Y(n163) );
  inv1a3 U4 ( .A(n300), .Y(n3) );
  inv1a1 U5 ( .A(n16), .Y(n18) );
  or2c1 U6 ( .A(n336), .B(n248), .Y(n253) );
  inv1a1 U7 ( .A(n336), .Y(n252) );
  inv1a1 U8 ( .A(n545), .Y(n17) );
  clk1b6 U9 ( .A(n76), .Y(n1) );
  or2c1 U10 ( .A(N158), .B(n246), .Y(n98) );
  inv1a9 U11 ( .A(n5), .Y(n76) );
  and2a6 U12 ( .A(n402), .B(n47), .Y(n113) );
  or2c3 U13 ( .A(n19), .B(cal_cnt[0]), .Y(n625) );
  ao2i3 U14 ( .A(yn[14]), .B(n68), .C(n385), .D(n384), .Y(n497) );
  and2c1 U15 ( .A(n628), .B(n466), .Y(n48) );
  ao2i1 U16 ( .A(n56), .B(n9), .C(n55), .D(n638), .Y(n57) );
  and2c1 U17 ( .A(n630), .B(n163), .Y(n135) );
  ao2i1 U18 ( .A(n231), .B(n230), .C(n1), .D(n229), .Y(n232) );
  or2c1 U19 ( .A(n330), .B(n329), .Y(n41) );
  mx2a3 U20 ( .D0(DP_OP_67J1_125_1913_n22), .D1(DP_OP_67J1_125_1913_n21), .S(
        DP_OP_67J1_125_1913_n25), .Y(DP_OP_67J1_125_1913_n20) );
  inv1a1 U21 ( .A(n89), .Y(n464) );
  inv1a1 U22 ( .A(yn[9]), .Y(n71) );
  clk1b6 U23 ( .A(n403), .Y(n2) );
  inv1a1 U24 ( .A(N158), .Y(n550) );
  fa1a2 U25 ( .A(n615), .B(n614), .CI(n613), .CO(n616), .S(N322) );
  inv1a1 U26 ( .A(n610), .Y(n608) );
  ao2i3 U27 ( .A(n219), .B(n629), .C(n157), .D(n156), .Y(n158) );
  ao2i2 U28 ( .A(n628), .B(n206), .C(n172), .D(n171), .Y(n174) );
  ao2i2 U29 ( .A(n520), .B(n580), .C(n519), .D(n518), .Y(n521) );
  ao4f2 U30 ( .A(n182), .B(n403), .C(n628), .D(n219), .Y(n183) );
  ao4f1 U31 ( .A(n628), .B(n565), .C(n3), .D(n466), .Y(n473) );
  oa4f2 U32 ( .A(n469), .B(n211), .C(n496), .D(n210), .Y(n212) );
  ao2i3 U33 ( .A(yn[11]), .B(n624), .C(n54), .D(n53), .Y(n427) );
  ao4f3 U34 ( .A(n630), .B(n219), .C(n515), .D(n206), .Y(n166) );
  and2a3 U35 ( .A(n69), .B(n70), .Y(n13) );
  oa4f1 U36 ( .A(n469), .B(n426), .C(n496), .D(n383), .Y(n384) );
  ao4f1 U37 ( .A(n68), .B(n189), .C(n624), .D(n206), .Y(n190) );
  ao4f1 U38 ( .A(n68), .B(n206), .C(n624), .D(n219), .Y(n207) );
  clk1b6 U39 ( .A(n402), .Y(n68) );
  inv1a3 U40 ( .A(yn[3]), .Y(n81) );
  or2c3 U41 ( .A(n262), .B(n261), .Y(n368) );
  or2c3 U42 ( .A(n258), .B(n257), .Y(n361) );
  or2c1 U43 ( .A(n487), .B(n488), .Y(n273) );
  inv1a1 U44 ( .A(n487), .Y(n272) );
  or2c1 U45 ( .A(n418), .B(n419), .Y(n269) );
  or2c1 U46 ( .A(n529), .B(n528), .Y(n530) );
  inv1a1 U47 ( .A(n418), .Y(n268) );
  or2c1 U48 ( .A(n610), .B(n609), .Y(n611) );
  inv1a1 U49 ( .A(n360), .Y(n260) );
  inv1a1 U50 ( .A(n352), .Y(n256) );
  inv1a1 U51 ( .A(n376), .Y(n264) );
  or2c1 U52 ( .A(n480), .B(n479), .Y(n481) );
  inv1a1 U53 ( .A(n536), .Y(n276) );
  xor2a2 U54 ( .A(n501), .B(n604), .Y(n529) );
  xor2a2 U55 ( .A(n525), .B(n604), .Y(n558) );
  or2c1 U56 ( .A(n536), .B(n537), .Y(n277) );
  ao4f3 U57 ( .A(n475), .B(n602), .C(n76), .D(n474), .Y(n476) );
  xor2a2 U58 ( .A(n556), .B(n604), .Y(n574) );
  xor2a2 U59 ( .A(n431), .B(n604), .Y(n480) );
  xor2a2 U60 ( .A(n572), .B(n604), .Y(n587) );
  or2a1 U61 ( .A(n330), .B(n329), .Y(n40) );
  ao4f2 U62 ( .A(n417), .B(n246), .C(n76), .D(n193), .Y(n194) );
  ao4f2 U63 ( .A(n395), .B(n246), .C(n76), .D(n216), .Y(n217) );
  ao4f2 U64 ( .A(n375), .B(n246), .C(n76), .D(n225), .Y(n226) );
  ao4f2 U65 ( .A(n438), .B(n246), .C(n76), .D(n184), .Y(n185) );
  oa1f3 U66 ( .A(n238), .B(n403), .C(n192), .Y(n193) );
  xor2a2 U67 ( .A(n39), .B(n604), .Y(n330) );
  ao2i2 U68 ( .A(n581), .B(n580), .C(n635), .D(n498), .Y(n499) );
  inv1a1 U69 ( .A(n419), .Y(n267) );
  inv1a1 U70 ( .A(n537), .Y(n275) );
  inv1a1 U71 ( .A(n488), .Y(n271) );
  or2c9 U72 ( .A(n18), .B(n582), .Y(n604) );
  or2c2 U73 ( .A(n582), .B(n623), .Y(n391) );
  ao2i1 U74 ( .A(n553), .B(n580), .C(n1), .D(n428), .Y(n429) );
  ao1d2 U75 ( .A(n603), .B(n1), .C(n602), .Y(n605) );
  oa4f1 U76 ( .A(n591), .B(xn[11]), .C(n517), .D(xn[15]), .Y(n164) );
  oa1f3 U77 ( .A(n64), .B(n2), .C(n25), .Y(n27) );
  oa1f3 U78 ( .A(n56), .B(n2), .C(n36), .Y(n37) );
  ao2i2 U79 ( .A(n68), .B(xn[10]), .C(n213), .D(n212), .Y(n243) );
  and2a3 U80 ( .A(n69), .B(n70), .Y(n14) );
  oa1f1 U81 ( .A(n516), .B(yn[17]), .C(n589), .Y(n520) );
  oa1f1 U82 ( .A(n516), .B(xn[13]), .C(n190), .Y(n191) );
  ao4f3 U83 ( .A(n630), .B(n218), .C(n515), .D(n219), .Y(n173) );
  and2a3 U84 ( .A(n5), .B(N158), .Y(n16) );
  inv1a3 U85 ( .A(n403), .Y(n9) );
  oa4f2 U86 ( .A(n627), .B(yn[12]), .C(n113), .D(yn[13]), .Y(n470) );
  oa4f2 U87 ( .A(n627), .B(yn[5]), .C(n113), .D(yn[6]), .Y(n73) );
  ao4f1 U88 ( .A(n68), .B(yn[16]), .C(yn[14]), .D(n493), .Y(n424) );
  clk1b6 U89 ( .A(n6), .Y(n323) );
  oa4f2 U90 ( .A(n627), .B(yn[4]), .C(n113), .D(yn[5]), .Y(n80) );
  oa4f2 U91 ( .A(n627), .B(xn[5]), .C(n113), .D(xn[6]), .Y(n242) );
  oa4f2 U92 ( .A(n516), .B(n210), .C(n402), .D(n211), .Y(n93) );
  oa4f2 U93 ( .A(n300), .B(xn[2]), .C(n626), .D(xn[3]), .Y(n94) );
  oa4f2 U94 ( .A(n627), .B(xn[4]), .C(n113), .D(xn[5]), .Y(n95) );
  or2c3 U95 ( .A(n464), .B(y[15]), .Y(n545) );
  inv1a3 U96 ( .A(n152), .Y(n548) );
  clk1b6 U97 ( .A(n623), .Y(n5) );
  buf1a6 U98 ( .A(n625), .Y(n493) );
  buf1a6 U99 ( .A(n47), .Y(n403) );
  inv1a3 U100 ( .A(xn[9]), .Y(n211) );
  or2b2 U101 ( .B(n281), .A(n545), .Y(N353) );
  or2b2 U102 ( .B(n291), .A(n545), .Y(N352) );
  or2b2 U103 ( .B(n287), .A(n545), .Y(N351) );
  or2b2 U104 ( .B(n546), .A(n545), .Y(N350) );
  ao2i3 U105 ( .A(n582), .B(n579), .C(n541), .D(n540), .Y(N349) );
  xor2a2 U106 ( .A(n617), .B(n616), .Y(N323) );
  ao2i3 U107 ( .A(n582), .B(n563), .C(n514), .D(n513), .Y(N348) );
  xor2a2 U108 ( .A(n539), .B(n538), .Y(n540) );
  or2c3 U109 ( .A(n612), .B(n611), .Y(n613) );
  ao2i3 U110 ( .A(n582), .B(n535), .C(n492), .D(n491), .Y(N347) );
  ao1d2 U111 ( .A(n608), .B(n607), .C(n606), .Y(n612) );
  xor2a2 U112 ( .A(n490), .B(n489), .Y(n491) );
  xor2a2 U113 ( .A(n421), .B(n420), .Y(n422) );
  or2c3 U114 ( .A(n531), .B(n530), .Y(n557) );
  xor2a2 U115 ( .A(n505), .B(n527), .Y(n506) );
  or2c3 U116 ( .A(n527), .B(n526), .Y(n531) );
  xor2a2 U117 ( .A(n378), .B(n377), .Y(n379) );
  or2c3 U118 ( .A(n482), .B(n481), .Y(n502) );
  xor2a2 U119 ( .A(n435), .B(n478), .Y(n436) );
  or2c3 U120 ( .A(n478), .B(n477), .Y(n482) );
  xor2a2 U121 ( .A(n362), .B(n361), .Y(n363) );
  fa1a2 U122 ( .A(n434), .B(n433), .CI(n432), .CO(n478), .S(n414) );
  fa1a2 U123 ( .A(n381), .B(n413), .CI(n412), .CO(n432), .S(n392) );
  xor2a2 U124 ( .A(n354), .B(n353), .Y(n355) );
  ao2i3 U125 ( .A(n602), .B(n343), .C(n122), .D(n121), .Y(N337) );
  xor2a2 U126 ( .A(n338), .B(n337), .Y(n339) );
  xor2a2 U127 ( .A(n78), .B(n604), .Y(DP_OP_67J1_125_1913_n46) );
  xor2a2 U128 ( .A(n390), .B(n604), .Y(n413) );
  or2c3 U129 ( .A(n42), .B(n41), .Y(DP_OP_67J1_125_1913_n25) );
  xor2a2 U130 ( .A(n52), .B(n604), .Y(DP_OP_67J1_125_1913_n43) );
  xor2a2 U131 ( .A(n476), .B(n604), .Y(n503) );
  or2a1 U132 ( .A(n529), .B(n528), .Y(n526) );
  ao4f2 U133 ( .A(n563), .B(n246), .C(n583), .D(n148), .Y(n149) );
  oa1f2 U134 ( .A(n387), .B(n2), .C(n74), .Y(n75) );
  xor2a2 U135 ( .A(n332), .B(n331), .Y(n333) );
  or2c3 U136 ( .A(n331), .B(n40), .Y(n42) );
  ao2i2 U137 ( .A(n387), .B(n2), .C(n386), .D(n1), .Y(n388) );
  xor2a2 U138 ( .A(n585), .B(n604), .Y(n597) );
  or2a1 U139 ( .A(n480), .B(n479), .Y(n477) );
  xor2a2 U140 ( .A(n59), .B(n604), .Y(DP_OP_67J1_125_1913_n44) );
  xor2a2 U141 ( .A(n67), .B(n604), .Y(DP_OP_67J1_125_1913_n45) );
  xor2a2 U142 ( .A(n411), .B(n604), .Y(n433) );
  ao4f2 U143 ( .A(n579), .B(n246), .C(n583), .D(n142), .Y(n143) );
  oa1f3 U144 ( .A(n231), .B(n580), .C(n183), .Y(n184) );
  fa1a2 U145 ( .A(n15), .B(n604), .CI(n324), .CO(n331), .S(n325) );
  ao4f2 U146 ( .A(n191), .B(n403), .C(n628), .D(n218), .Y(n192) );
  inv1a1 U147 ( .A(n609), .Y(n607) );
  xor2a2 U148 ( .A(n28), .B(n604), .Y(n324) );
  oa1f3 U149 ( .A(n581), .B(n580), .C(n590), .Y(n584) );
  xor2a2 U150 ( .A(n86), .B(n604), .Y(DP_OP_67J1_125_1913_n47) );
  ao1f1 U151 ( .A(n629), .B(n218), .C(n164), .Y(n165) );
  ao2i1 U152 ( .A(n153), .B(n152), .C(n151), .D(n150), .Y(n154) );
  oa1f1 U153 ( .A(n620), .B(n619), .C(vld), .Y(n622) );
  ao2i1 U154 ( .A(n496), .B(n153), .C(n145), .D(n144), .Y(n146) );
  and2a3 U155 ( .A(n1), .B(yn[1]), .Y(n100) );
  and2a3 U156 ( .A(n638), .B(yn[7]), .Y(n204) );
  and2a3 U157 ( .A(n635), .B(yn[8]), .Y(n196) );
  and2a3 U158 ( .A(n1), .B(yn[6]), .Y(n227) );
  ao2i2 U159 ( .A(n591), .B(xn_rightshift_18_), .C(n127), .D(n1), .Y(n128) );
  and2a3 U160 ( .A(n638), .B(xn[3]), .Y(n639) );
  and2a3 U161 ( .A(n635), .B(xn[6]), .Y(n634) );
  and2a3 U162 ( .A(n635), .B(yn[2]), .Y(n87) );
  and2a3 U163 ( .A(n635), .B(yn[3]), .Y(n248) );
  ao2i2 U164 ( .A(n238), .B(n403), .C(n638), .D(n237), .Y(n239) );
  and2c2 U165 ( .A(n301), .B(n623), .Y(N304) );
  and2a3 U166 ( .A(n635), .B(xn[7]), .Y(n381) );
  and2a3 U167 ( .A(n635), .B(xn[5]), .Y(n636) );
  and2a3 U168 ( .A(n638), .B(yn[5]), .Y(n234) );
  ao2i2 U169 ( .A(n64), .B(n2), .C(n63), .D(n638), .Y(n65) );
  ao2i2 U170 ( .A(n243), .B(n403), .C(n242), .D(n241), .Y(n244) );
  and2a3 U171 ( .A(n1), .B(yn[4]), .Y(n235) );
  and2a3 U172 ( .A(n1), .B(xn[2]), .Y(n123) );
  and2a3 U173 ( .A(n638), .B(xn[4]), .Y(n637) );
  ao2i2 U174 ( .A(n553), .B(n2), .C(n552), .D(n638), .Y(n554) );
  inv1a3 U175 ( .A(x[7]), .Y(n395) );
  inv1a3 U176 ( .A(x[6]), .Y(n375) );
  inv1a3 U177 ( .A(x[8]), .Y(n417) );
  inv1a3 U178 ( .A(x[10]), .Y(n486) );
  ao1f1 U179 ( .A(n493), .B(n189), .C(n170), .Y(n175) );
  inv1a3 U180 ( .A(x[5]), .Y(n367) );
  inv1a3 U181 ( .A(x[9]), .Y(n438) );
  oa1f1 U182 ( .A(n405), .B(n404), .C(n403), .Y(n408) );
  oa1f2 U183 ( .A(n46), .B(n45), .C(n403), .Y(n49) );
  oa1f2 U184 ( .A(n83), .B(n2), .C(n82), .Y(n84) );
  inv1a3 U185 ( .A(x[11]), .Y(n508) );
  ao2i1 U186 ( .A(n163), .B(n624), .C(n162), .D(n161), .Y(n167) );
  ao2i2 U187 ( .A(n630), .B(n81), .C(n35), .D(n34), .Y(n36) );
  ao2i2 U188 ( .A(yn[10]), .B(n624), .C(n62), .D(n61), .Y(n406) );
  oa1f1 U189 ( .A(n516), .B(xn[12]), .C(n207), .Y(n208) );
  oa1f1 U190 ( .A(n516), .B(xn[11]), .C(n220), .Y(n221) );
  ao2i2 U191 ( .A(n629), .B(n81), .C(n80), .D(n79), .Y(n82) );
  ao2i1 U192 ( .A(n515), .B(n81), .C(n24), .D(n23), .Y(n25) );
  ao4f2 U193 ( .A(n68), .B(yn[9]), .C(yn[7]), .D(n493), .Y(n43) );
  ao4f2 U194 ( .A(n68), .B(n219), .C(n624), .D(n218), .Y(n220) );
  and2a1 U195 ( .A(n5), .B(xn[0]), .Y(n15) );
  and2a1 U196 ( .A(n5), .B(yn[0]), .Y(n108) );
  ao4f2 U197 ( .A(n186), .B(yn[4]), .C(yn[6]), .D(n624), .Y(n20) );
  or2a1 U198 ( .A(n186), .B(yn[7]), .Y(n70) );
  oa4a2 U199 ( .A(n68), .B(yn[10]), .C(yn[8]), .D(n493), .Y(n69) );
  ao4f2 U200 ( .A(n68), .B(xn[12]), .C(xn[10]), .D(n493), .Y(n178) );
  ao4f2 U201 ( .A(n68), .B(yn[8]), .C(yn[6]), .D(n493), .Y(n31) );
  oa4f2 U202 ( .A(n516), .B(n71), .C(n402), .D(n383), .Y(n61) );
  ao4f2 U203 ( .A(n186), .B(xn[8]), .C(xn[10]), .D(n624), .Y(n187) );
  ao1f1 U204 ( .A(rg_cordic_iternum[1]), .B(n625), .C(n293), .Y(n295) );
  and2c2 U205 ( .A(n623), .B(n549), .Y(N302) );
  buf1a6 U206 ( .A(n322), .Y(n6) );
  inv1a3 U207 ( .A(xn[15]), .Y(n189) );
  or2c6 U208 ( .A(n651), .B(cal_en), .Y(n89) );
  inv1a3 U209 ( .A(yn[15]), .Y(n567) );
  inv1a3 U210 ( .A(xn[12]), .Y(n218) );
  xor2a2 U211 ( .A(n595), .B(n604), .Y(n610) );
  ao1d2 U212 ( .A(n594), .B(n635), .C(n602), .Y(n595) );
  xor2a2 U213 ( .A(n605), .B(n604), .Y(n614) );
  buf1a9 U214 ( .A(n650), .Y(n647) );
  buf1a9 U215 ( .A(n650), .Y(n648) );
  buf1a9 U216 ( .A(n650), .Y(n646) );
  oa4f1 U217 ( .A(n516), .B(n109), .C(n402), .D(n209), .Y(n102) );
  buf1a9 U218 ( .A(n650), .Y(n649) );
  inv1a9 U219 ( .A(n29), .Y(n582) );
  or2c1 U220 ( .A(n10), .B(n11), .Y(n387) );
  inv1a1 U221 ( .A(n469), .Y(n12) );
  or2c1 U222 ( .A(yn[9]), .B(n13), .Y(n10) );
  or2c1 U223 ( .A(n12), .B(n14), .Y(n11) );
  inv1a3 U224 ( .A(x[12]), .Y(n535) );
  inv1a3 U225 ( .A(x[13]), .Y(n563) );
  inv1a3 U226 ( .A(x[14]), .Y(n579) );
  or2c1 U227 ( .A(n234), .B(n352), .Y(n257) );
  inv1a1 U228 ( .A(n234), .Y(n255) );
  oa4f1 U229 ( .A(n626), .B(yn[1]), .C(yn[0]), .D(n300), .Y(n23) );
  oa4f1 U230 ( .A(n300), .B(xn[3]), .C(n626), .D(xn[4]), .Y(n241) );
  and2c3 U231 ( .A(rg_cordic_iternum[0]), .B(rg_cordic_iternum[1]), .Y(n296)
         );
  ao1f1 U232 ( .A(n601), .B(n9), .C(n600), .Y(n603) );
  ao2i1 U233 ( .A(n629), .B(n567), .C(n600), .D(n566), .Y(n568) );
  or2c1 U234 ( .A(n360), .B(n227), .Y(n261) );
  inv1a1 U235 ( .A(n227), .Y(n259) );
  ao1f1 U236 ( .A(n311), .B(n310), .C(n309), .Y(n202) );
  ao1f1 U237 ( .A(n311), .B(n308), .C(n309), .Y(n198) );
  ao1f1 U238 ( .A(n311), .B(n307), .C(n309), .Y(n203) );
  ao1f1 U239 ( .A(n311), .B(n306), .C(n309), .Y(n199) );
  ao1f1 U240 ( .A(n311), .B(n305), .C(n309), .Y(n201) );
  ao1f1 U241 ( .A(n311), .B(n304), .C(n309), .Y(n197) );
  ao1f1 U242 ( .A(n311), .B(n303), .C(n309), .Y(n200) );
  or2c1 U243 ( .A(n376), .B(n196), .Y(n265) );
  inv1a1 U244 ( .A(n196), .Y(n263) );
  or2c3 U245 ( .A(n89), .B(nozero_flg), .Y(n623) );
  inv1a3 U246 ( .A(cal_en_regNext), .Y(n651) );
  and2a3 U247 ( .A(n17), .B(x[15]), .Y(n29) );
  inv1a3 U248 ( .A(cal_cnt[1]), .Y(n19) );
  clk1b6 U249 ( .A(n625), .Y(n516) );
  inv1a1 U250 ( .A(yn[5]), .Y(n33) );
  and2a6 U251 ( .A(cal_cnt[1]), .B(cal_cnt[0]), .Y(n402) );
  and2c1 U252 ( .A(n68), .B(yn[7]), .Y(n21) );
  inv1a3 U253 ( .A(cal_cnt[0]), .Y(n22) );
  inv1a3 U254 ( .A(n22), .Y(n549) );
  clk1a3 U255 ( .A(cal_cnt[1]), .Y(n30) );
  or2a3 U256 ( .A(n549), .B(n30), .Y(n186) );
  and2c3 U257 ( .A(cal_cnt[0]), .B(n19), .Y(n110) );
  clk1b6 U258 ( .A(n110), .Y(n624) );
  oa2i2 U259 ( .A(n516), .B(n33), .C(n21), .D(n20), .Y(n64) );
  or2c3 U260 ( .A(n402), .B(n403), .Y(n515) );
  or2c3 U261 ( .A(n22), .B(n47), .Y(n632) );
  inv1a3 U262 ( .A(n30), .Y(n152) );
  and2c9 U263 ( .A(n632), .B(n152), .Y(n627) );
  or2c1 U264 ( .A(n627), .B(yn[2]), .Y(n24) );
  and2c9 U265 ( .A(n625), .B(cal_cnt[2]), .Y(n626) );
  and2c6 U266 ( .A(n632), .B(n30), .Y(n300) );
  or2c1 U267 ( .A(y[0]), .B(n29), .Y(n26) );
  ao1f2 U268 ( .A(n76), .B(n27), .C(n26), .Y(n28) );
  inv1a1 U269 ( .A(y[1]), .Y(n38) );
  inv1a9 U270 ( .A(n29), .Y(n602) );
  and2c6 U271 ( .A(n549), .B(n30), .Y(n496) );
  and2c1 U272 ( .A(n624), .B(yn[7]), .Y(n32) );
  oa2i2 U273 ( .A(n496), .B(n33), .C(n32), .D(n31), .Y(n56) );
  inv1a3 U274 ( .A(n627), .Y(n630) );
  oa4f1 U275 ( .A(n300), .B(yn[1]), .C(n626), .D(yn[2]), .Y(n35) );
  inv1a3 U276 ( .A(cal_cnt[2]), .Y(n47) );
  or2c1 U277 ( .A(n113), .B(yn[4]), .Y(n34) );
  ao4f3 U278 ( .A(n38), .B(n602), .C(n76), .D(n37), .Y(n39) );
  and2a3 U279 ( .A(n1), .B(xn[1]), .Y(n329) );
  inv1a1 U280 ( .A(y[6]), .Y(n51) );
  clk1b6 U281 ( .A(n624), .Y(n469) );
  inv1a1 U282 ( .A(yn[8]), .Y(n60) );
  and2c1 U283 ( .A(n186), .B(yn[6]), .Y(n44) );
  oa2i2 U284 ( .A(n469), .B(n60), .C(n44), .D(n43), .Y(n83) );
  oa4f1 U285 ( .A(n469), .B(yn[12]), .C(n402), .D(yn[13]), .Y(n46) );
  or2c1 U286 ( .A(n516), .B(yn[11]), .Y(n45) );
  and2a3 U287 ( .A(n496), .B(n2), .Y(n517) );
  inv1a3 U288 ( .A(n517), .Y(n628) );
  inv1a1 U289 ( .A(yn[10]), .Y(n466) );
  oa2i2 U290 ( .A(n83), .B(n403), .C(n49), .D(n48), .Y(n50) );
  ao4f3 U291 ( .A(n51), .B(n602), .C(n76), .D(n50), .Y(n52) );
  inv1a1 U292 ( .A(y[5]), .Y(n58) );
  or2c1 U293 ( .A(n496), .B(n71), .Y(n54) );
  oa4a2 U294 ( .A(n68), .B(yn[12]), .C(yn[10]), .D(n493), .Y(n53) );
  or2c1 U295 ( .A(n427), .B(n2), .Y(n55) );
  clk1b6 U296 ( .A(n76), .Y(n638) );
  ao1f2 U297 ( .A(n58), .B(n582), .C(n57), .Y(n59) );
  inv1a1 U298 ( .A(y[4]), .Y(n66) );
  or2c1 U299 ( .A(n496), .B(n60), .Y(n62) );
  inv1a1 U300 ( .A(yn[11]), .Y(n383) );
  or2c1 U301 ( .A(n406), .B(n2), .Y(n63) );
  ao1f2 U302 ( .A(n66), .B(n602), .C(n65), .Y(n67) );
  inv1a1 U303 ( .A(y[3]), .Y(n77) );
  or2c1 U304 ( .A(n626), .B(yn[4]), .Y(n72) );
  ao2i3 U305 ( .A(n3), .B(n81), .C(n73), .D(n72), .Y(n74) );
  ao4f3 U306 ( .A(n77), .B(n602), .C(n76), .D(n75), .Y(n78) );
  inv1a1 U307 ( .A(y[2]), .Y(n85) );
  inv1a3 U308 ( .A(n626), .Y(n629) );
  or2c1 U309 ( .A(n300), .B(yn[2]), .Y(n79) );
  ao4f3 U310 ( .A(n85), .B(n602), .C(n76), .D(n84), .Y(n86) );
  inv1a3 U311 ( .A(x[2]), .Y(n343) );
  and2c3 U312 ( .A(n89), .B(x[15]), .Y(n322) );
  or2c1 U313 ( .A(y[2]), .B(n6), .Y(n122) );
  clk1b6 U314 ( .A(n76), .Y(n635) );
  inv1a1 U315 ( .A(x[15]), .Y(n88) );
  and2c3 U316 ( .A(n89), .B(n88), .Y(n633) );
  inv1a1 U317 ( .A(y[15]), .Y(n90) );
  or2c3 U318 ( .A(n633), .B(n90), .Y(n91) );
  buf1a9 U319 ( .A(n91), .Y(n246) );
  inv1a2 U320 ( .A(xn[7]), .Y(n210) );
  inv1a1 U321 ( .A(xn[8]), .Y(n209) );
  or2c1 U322 ( .A(n469), .B(n209), .Y(n92) );
  ao2i3 U323 ( .A(n186), .B(xn[6]), .C(n93), .D(n92), .Y(n222) );
  ao2i3 U324 ( .A(n222), .B(n403), .C(n95), .D(n94), .Y(n96) );
  or2c1 U325 ( .A(n96), .B(n1), .Y(n97) );
  ao1f2 U326 ( .A(n343), .B(n246), .C(n97), .Y(n99) );
  buf1a9 U327 ( .A(n98), .Y(n313) );
  xor2a2 U328 ( .A(n99), .B(n313), .Y(n250) );
  clk1b6 U329 ( .A(n246), .Y(n564) );
  inv1a1 U330 ( .A(xn[6]), .Y(n109) );
  or2c1 U331 ( .A(n469), .B(n210), .Y(n101) );
  ao2i3 U332 ( .A(n186), .B(xn[5]), .C(n102), .D(n101), .Y(n228) );
  inv1a1 U333 ( .A(cal_cnt[2]), .Y(n230) );
  oa4f3 U334 ( .A(n627), .B(xn[3]), .C(n113), .D(xn[4]), .Y(n105) );
  inv1a1 U335 ( .A(xn[1]), .Y(n103) );
  oa4e3 U336 ( .C(n626), .D(xn[2]), .B(n103), .A(n300), .Y(n104) );
  ao2i3 U337 ( .A(n228), .B(n230), .C(n105), .D(n104), .Y(n106) );
  ao4a3 U338 ( .A(x[1]), .B(n564), .C(n5), .D(n106), .Y(n107) );
  xor2a2 U339 ( .A(n107), .B(n313), .Y(n318) );
  oa4c3 U340 ( .A(n402), .B(n210), .C(n625), .D(xn[5]), .Y(n112) );
  or2c1 U341 ( .A(n110), .B(n109), .Y(n111) );
  ao2i3 U342 ( .A(n186), .B(xn[4]), .C(n112), .D(n111), .Y(n236) );
  oa4f3 U343 ( .A(n627), .B(xn[2]), .C(n113), .D(xn[3]), .Y(n115) );
  oa4f3 U344 ( .A(n300), .B(xn[0]), .C(n626), .D(xn[1]), .Y(n114) );
  ao2i3 U345 ( .A(n236), .B(n403), .C(n115), .D(n114), .Y(n116) );
  or2c1 U346 ( .A(n116), .B(n5), .Y(n118) );
  or2c1 U347 ( .A(x[0]), .B(n564), .Y(n117) );
  or2c3 U348 ( .A(n118), .B(n117), .Y(n119) );
  xor2a2 U349 ( .A(n119), .B(n313), .Y(n312) );
  inv1a1 U350 ( .A(n120), .Y(n121) );
  and2a1 U351 ( .A(N297), .B(n5), .Y(n641) );
  and2a3 U352 ( .A(n1), .B(xn_rightshift_18_), .Y(n617) );
  inv1a1 U353 ( .A(n617), .Y(n124) );
  or2c1 U354 ( .A(n124), .B(n246), .Y(n125) );
  xor2a2 U355 ( .A(n125), .B(n313), .Y(n126) );
  xor2a2 U356 ( .A(n16), .B(n126), .Y(n280) );
  and2a3 U357 ( .A(n638), .B(yn[17]), .Y(n290) );
  inv1a3 U358 ( .A(n3), .Y(n591) );
  or2c1 U359 ( .A(n591), .B(n163), .Y(n127) );
  or2c1 U360 ( .A(n128), .B(n246), .Y(n129) );
  xor2a2 U361 ( .A(n129), .B(n313), .Y(n289) );
  and2a3 U362 ( .A(n638), .B(yn[16]), .Y(n286) );
  inv1a1 U363 ( .A(xn[16]), .Y(n131) );
  or2c3 U364 ( .A(n2), .B(xn_rightshift_18_), .Y(n153) );
  or2c1 U365 ( .A(n548), .B(xn_rightshift_18_), .Y(n130) );
  ao2i3 U366 ( .A(n3), .B(n131), .C(n153), .D(n130), .Y(n132) );
  oa1f3 U367 ( .A(n626), .B(xn[17]), .C(n132), .Y(n133) );
  clk1a3 U368 ( .A(n76), .Y(n583) );
  ao1f2 U369 ( .A(n133), .B(n583), .C(n246), .Y(n134) );
  xor2a2 U370 ( .A(n134), .B(n313), .Y(n285) );
  and2a3 U371 ( .A(n638), .B(yn[15]), .Y(n544) );
  or2c1 U372 ( .A(n402), .B(xn_rightshift_18_), .Y(n162) );
  ao2i3 U373 ( .A(n3), .B(n189), .C(n153), .D(n162), .Y(n136) );
  oa2i2 U374 ( .A(xn[16]), .B(n626), .C(n136), .D(n135), .Y(n137) );
  ao1f2 U375 ( .A(n137), .B(n583), .C(n246), .Y(n138) );
  xor2a2 U376 ( .A(n138), .B(n313), .Y(n543) );
  inv1a3 U377 ( .A(xn[14]), .Y(n206) );
  or2c1 U378 ( .A(n113), .B(xn[17]), .Y(n139) );
  ao2i3 U379 ( .A(n3), .B(n206), .C(n153), .D(n139), .Y(n141) );
  and2c1 U380 ( .A(n629), .B(n189), .Y(n140) );
  oa2i2 U381 ( .A(n627), .B(xn[16]), .C(n141), .D(n140), .Y(n142) );
  xor2a2 U382 ( .A(n143), .B(n313), .Y(n536) );
  and2a3 U383 ( .A(n638), .B(yn[14]), .Y(n537) );
  and2a3 U384 ( .A(n635), .B(yn[13]), .Y(n511) );
  and2c1 U385 ( .A(n629), .B(n206), .Y(n147) );
  or2c1 U386 ( .A(n517), .B(xn[17]), .Y(n145) );
  oa4f1 U387 ( .A(n591), .B(xn[13]), .C(n627), .D(xn[15]), .Y(n144) );
  oa2i2 U388 ( .A(xn[16]), .B(n113), .C(n147), .D(n146), .Y(n148) );
  xor2a2 U389 ( .A(n149), .B(n313), .Y(n510) );
  inv1a3 U390 ( .A(xn[13]), .Y(n219) );
  or2c1 U391 ( .A(n113), .B(xn[15]), .Y(n157) );
  and2c1 U392 ( .A(n3), .B(n218), .Y(n155) );
  or3d1 U393 ( .A(n516), .B(n2), .C(xn[17]), .Y(n151) );
  or2c1 U394 ( .A(n517), .B(xn[16]), .Y(n150) );
  oa2i2 U395 ( .A(xn[14]), .B(n627), .C(n155), .D(n154), .Y(n156) );
  or2c1 U396 ( .A(n158), .B(n635), .Y(n159) );
  ao1f2 U397 ( .A(n535), .B(n246), .C(n159), .Y(n160) );
  xor2a2 U398 ( .A(n160), .B(n313), .Y(n487) );
  and2a3 U399 ( .A(n1), .B(yn[12]), .Y(n488) );
  and2a3 U400 ( .A(n1), .B(yn[11]), .Y(n441) );
  or2c1 U401 ( .A(n516), .B(xn[16]), .Y(n161) );
  oa2i2 U402 ( .A(n9), .B(n167), .C(n166), .D(n165), .Y(n168) );
  ao4f3 U403 ( .A(n508), .B(n246), .C(n76), .D(n168), .Y(n169) );
  xor2a2 U404 ( .A(n169), .B(n313), .Y(n440) );
  oa4f1 U405 ( .A(n469), .B(xn[16]), .C(n402), .D(xn[17]), .Y(n170) );
  or2c1 U406 ( .A(n626), .B(xn[11]), .Y(n172) );
  or2c1 U407 ( .A(n591), .B(xn[10]), .Y(n171) );
  oa2i2 U408 ( .A(n9), .B(n175), .C(n174), .D(n173), .Y(n176) );
  ao4f3 U409 ( .A(n486), .B(n246), .C(n76), .D(n176), .Y(n177) );
  xor2a2 U410 ( .A(n177), .B(n313), .Y(n418) );
  and2a3 U411 ( .A(n635), .B(yn[10]), .Y(n419) );
  and2a3 U412 ( .A(n1), .B(yn[9]), .Y(n398) );
  and2c1 U413 ( .A(n624), .B(xn[11]), .Y(n179) );
  oa2i2 U414 ( .A(n496), .B(n211), .C(n179), .D(n178), .Y(n231) );
  clk1a3 U415 ( .A(n403), .Y(n580) );
  and2c1 U416 ( .A(n493), .B(n206), .Y(n181) );
  and2c1 U417 ( .A(n624), .B(n189), .Y(n180) );
  oa2i2 U418 ( .A(xn[16]), .B(n402), .C(n181), .D(n180), .Y(n182) );
  xor2a2 U419 ( .A(n185), .B(n313), .Y(n397) );
  and2c1 U420 ( .A(n68), .B(xn[11]), .Y(n188) );
  oa2i2 U421 ( .A(n516), .B(n211), .C(n188), .D(n187), .Y(n238) );
  xor2a2 U422 ( .A(n194), .B(n313), .Y(n376) );
  and2c1 U423 ( .A(n208), .B(n47), .Y(n215) );
  or2c1 U424 ( .A(n516), .B(n209), .Y(n213) );
  and2c1 U425 ( .A(n243), .B(n9), .Y(n214) );
  oa2i2 U426 ( .A(xn[11]), .B(n517), .C(n215), .D(n214), .Y(n216) );
  xor2a2 U427 ( .A(n217), .B(n313), .Y(n369) );
  and2c1 U428 ( .A(n221), .B(n403), .Y(n224) );
  and2c1 U429 ( .A(n222), .B(n2), .Y(n223) );
  oa2i2 U430 ( .A(xn[10]), .B(n517), .C(n224), .D(n223), .Y(n225) );
  xor2a2 U431 ( .A(n226), .B(n313), .Y(n360) );
  or2c1 U432 ( .A(n228), .B(n403), .Y(n229) );
  ao1f2 U433 ( .A(n367), .B(n246), .C(n232), .Y(n233) );
  xor2a2 U434 ( .A(n233), .B(n313), .Y(n352) );
  inv1a3 U435 ( .A(x[4]), .Y(n359) );
  or2c1 U436 ( .A(n236), .B(n580), .Y(n237) );
  ao1f2 U437 ( .A(n359), .B(n246), .C(n239), .Y(n240) );
  xor2a2 U438 ( .A(n240), .B(n313), .Y(n345) );
  inv1a3 U439 ( .A(x[3]), .Y(n351) );
  or2c1 U440 ( .A(n244), .B(n638), .Y(n245) );
  ao1f2 U441 ( .A(n351), .B(n246), .C(n245), .Y(n247) );
  xor2a2 U442 ( .A(n247), .B(n313), .Y(n336) );
  inv1a1 U443 ( .A(n248), .Y(n251) );
  fa1a2 U444 ( .A(n87), .B(n250), .CI(n249), .CO(n337), .S(n120) );
  ao1d2 U445 ( .A(n252), .B(n251), .C(n337), .Y(n254) );
  or2c3 U446 ( .A(n254), .B(n253), .Y(n344) );
  ao1d3 U447 ( .A(n256), .B(n255), .C(n353), .Y(n258) );
  ao1d3 U448 ( .A(n260), .B(n259), .C(n361), .Y(n262) );
  ao1d6 U449 ( .A(n264), .B(n263), .C(n377), .Y(n266) );
  or2c6 U450 ( .A(n266), .B(n265), .Y(n396) );
  ao1d6 U451 ( .A(n268), .B(n267), .C(n420), .Y(n270) );
  or2c6 U452 ( .A(n270), .B(n269), .Y(n439) );
  ao1d6 U453 ( .A(n272), .B(n271), .C(n489), .Y(n274) );
  or2c6 U454 ( .A(n274), .B(n273), .Y(n509) );
  ao1d6 U455 ( .A(n276), .B(n275), .C(n538), .Y(n278) );
  or2c6 U456 ( .A(n278), .B(n277), .Y(n542) );
  xor2a3 U457 ( .A(n280), .B(n279), .Y(n281) );
  and2a1 U458 ( .A(N295), .B(n5), .Y(n643) );
  and2a1 U459 ( .A(N296), .B(n5), .Y(n642) );
  and2a1 U460 ( .A(N293), .B(n5), .Y(n645) );
  and2a1 U461 ( .A(N294), .B(n5), .Y(n644) );
  ao1d1 U462 ( .A(N299), .B(n5), .C(n602), .Y(N331) );
  and2a1 U463 ( .A(N292), .B(n5), .Y(N324) );
  xor2a2 U464 ( .A(n_zz_16[1]), .B(N158), .Y(n282) );
  xor2a2 U465 ( .A(n282), .B(DP_OP_39J1_122_1632_n2), .Y(n283) );
  ao1d1 U466 ( .A(n283), .B(n5), .C(n582), .Y(N332) );
  fa1a2 U467 ( .A(n286), .B(n285), .CI(n284), .CO(n288), .S(n287) );
  fa1a2 U468 ( .A(n290), .B(n289), .CI(n288), .CO(n279), .S(n291) );
  buf1a9 U469 ( .A(resetn), .Y(n650) );
  xor2a2 U470 ( .A(rg_cordic_iternum[1]), .B(n548), .Y(n292) );
  or2c1 U471 ( .A(n292), .B(rg_cordic_iternum[0]), .Y(n299) );
  or2c1 U472 ( .A(rg_cordic_iternum[1]), .B(n402), .Y(n293) );
  and2c1 U473 ( .A(rg_cordic_iternum[0]), .B(n549), .Y(n294) );
  and2c1 U474 ( .A(n295), .B(n294), .Y(n298) );
  xor3b3 U475 ( .A(n9), .B(n296), .C(rg_cordic_iternum[2]), .Y(n297) );
  or3d1 U476 ( .A(n299), .B(n298), .C(n297), .Y(n620) );
  inv1a1 U477 ( .A(n620), .Y(n205) );
  xor2a2 U478 ( .A(n300), .B(N158), .Y(DP_OP_39J1_122_1632_n14) );
  oa1f3 U479 ( .A(n2), .B(n68), .C(n113), .Y(n301) );
  inv1a1 U480 ( .A(n_zz_16[1]), .Y(n302) );
  and2c3 U481 ( .A(n_zz_16[0]), .B(n302), .Y(n311) );
  inv1a1 U482 ( .A(res_rg[3]), .Y(n303) );
  or2c3 U483 ( .A(n_zz_16[0]), .B(n302), .Y(n309) );
  inv1a1 U484 ( .A(res_rg[6]), .Y(n304) );
  inv1a1 U485 ( .A(res_rg[2]), .Y(n305) );
  inv1a1 U486 ( .A(res_rg[4]), .Y(n306) );
  inv1a1 U487 ( .A(res_rg[0]), .Y(n307) );
  inv1a1 U488 ( .A(res_rg[5]), .Y(n308) );
  inv1a1 U489 ( .A(res_rg[1]), .Y(n310) );
  inv1a1 U490 ( .A(x[0]), .Y(n328) );
  or2c1 U491 ( .A(y[0]), .B(n6), .Y(n316) );
  fa1a2 U492 ( .A(n313), .B(n108), .CI(n312), .CO(n317), .S(n314) );
  inv1a1 U493 ( .A(n314), .Y(n315) );
  ao2i3 U494 ( .A(n602), .B(n328), .C(n316), .D(n315), .Y(N335) );
  inv1a1 U495 ( .A(x[1]), .Y(n335) );
  or2c1 U496 ( .A(y[1]), .B(n6), .Y(n321) );
  fa1a2 U497 ( .A(n100), .B(n318), .CI(n317), .CO(n249), .S(n319) );
  inv1a1 U498 ( .A(n319), .Y(n320) );
  ao2i3 U499 ( .A(n602), .B(n335), .C(n321), .D(n320), .Y(N336) );
  or2c1 U500 ( .A(y[0]), .B(n564), .Y(n327) );
  inv1a1 U501 ( .A(n325), .Y(n326) );
  ao2i3 U502 ( .A(n328), .B(n323), .C(n327), .D(n326), .Y(N305) );
  or2c1 U503 ( .A(y[1]), .B(n564), .Y(n334) );
  xor2b2 U504 ( .A(n330), .B(n329), .Y(n332) );
  ao2i3 U505 ( .A(n335), .B(n323), .C(n334), .D(n333), .Y(N306) );
  or2c1 U506 ( .A(y[3]), .B(n6), .Y(n340) );
  xor2b2 U507 ( .A(n248), .B(n336), .Y(n338) );
  ao2i3 U508 ( .A(n602), .B(n351), .C(n340), .D(n339), .Y(N338) );
  or2c1 U509 ( .A(y[2]), .B(n564), .Y(n342) );
  or2c1 U510 ( .A(C35_DATA3_2), .B(n391), .Y(n341) );
  ao2i3 U511 ( .A(n343), .B(n323), .C(n342), .D(n341), .Y(N307) );
  or2c1 U512 ( .A(y[4]), .B(n6), .Y(n348) );
  fa1a2 U513 ( .A(n235), .B(n345), .CI(n344), .CO(n353), .S(n346) );
  inv1a1 U514 ( .A(n346), .Y(n347) );
  ao2i3 U515 ( .A(n602), .B(n359), .C(n348), .D(n347), .Y(N339) );
  or2c1 U516 ( .A(y[3]), .B(n564), .Y(n350) );
  or2c1 U517 ( .A(C35_DATA3_3), .B(n391), .Y(n349) );
  ao2i3 U518 ( .A(n351), .B(n323), .C(n350), .D(n349), .Y(N308) );
  or2c1 U519 ( .A(y[5]), .B(n6), .Y(n356) );
  xor2b2 U520 ( .A(n352), .B(n234), .Y(n354) );
  ao2i3 U521 ( .A(n602), .B(n367), .C(n356), .D(n355), .Y(N340) );
  or2c1 U522 ( .A(y[4]), .B(n564), .Y(n358) );
  or2c1 U523 ( .A(C35_DATA3_4), .B(n391), .Y(n357) );
  ao2i3 U524 ( .A(n359), .B(n323), .C(n358), .D(n357), .Y(N309) );
  or2c1 U525 ( .A(y[6]), .B(n6), .Y(n364) );
  xor2b2 U526 ( .A(n227), .B(n360), .Y(n362) );
  ao2i3 U527 ( .A(n602), .B(n375), .C(n364), .D(n363), .Y(N341) );
  or2c1 U528 ( .A(y[5]), .B(n564), .Y(n366) );
  or2c1 U529 ( .A(C35_DATA3_5), .B(n391), .Y(n365) );
  ao2i3 U530 ( .A(n367), .B(n323), .C(n366), .D(n365), .Y(N310) );
  or2c1 U531 ( .A(y[7]), .B(n6), .Y(n372) );
  fa1a3 U532 ( .A(n204), .B(n369), .CI(n368), .CO(n377), .S(n370) );
  inv1a1 U533 ( .A(n370), .Y(n371) );
  ao2i3 U534 ( .A(n602), .B(n395), .C(n372), .D(n371), .Y(N342) );
  or2c1 U535 ( .A(y[6]), .B(n564), .Y(n374) );
  or2c1 U536 ( .A(C35_DATA3_6), .B(n391), .Y(n373) );
  ao2i3 U537 ( .A(n375), .B(n323), .C(n374), .D(n373), .Y(N311) );
  or2c1 U538 ( .A(y[8]), .B(n6), .Y(n380) );
  xor2b2 U539 ( .A(n196), .B(n376), .Y(n378) );
  ao2i3 U540 ( .A(n582), .B(n417), .C(n380), .D(n379), .Y(N343) );
  or2c1 U541 ( .A(y[7]), .B(n564), .Y(n394) );
  inv1a1 U542 ( .A(y[7]), .Y(n389) );
  inv1a1 U543 ( .A(yn[12]), .Y(n382) );
  or2c1 U544 ( .A(n516), .B(n382), .Y(n385) );
  inv1a1 U545 ( .A(yn[13]), .Y(n426) );
  or2c1 U546 ( .A(n497), .B(n9), .Y(n386) );
  ao1f2 U547 ( .A(n389), .B(n582), .C(n388), .Y(n390) );
  mx2d3 U548 ( .D0(DP_OP_67J1_125_1913_n15), .D1(DP_OP_67J1_125_1913_n14), .S(
        DP_OP_67J1_125_1913_n20), .Y(n412) );
  or2c1 U549 ( .A(n392), .B(n391), .Y(n393) );
  ao2i3 U550 ( .A(n395), .B(n323), .C(n394), .D(n393), .Y(N312) );
  or2c1 U551 ( .A(y[9]), .B(n6), .Y(n401) );
  fa1a3 U552 ( .A(n398), .B(n397), .CI(n396), .CO(n420), .S(n399) );
  inv1a1 U553 ( .A(n399), .Y(n400) );
  ao2i3 U554 ( .A(n582), .B(n438), .C(n401), .D(n400), .Y(N344) );
  or2c1 U555 ( .A(y[8]), .B(n564), .Y(n416) );
  and2a3 U556 ( .A(n638), .B(xn[8]), .Y(n434) );
  inv1a1 U557 ( .A(y[8]), .Y(n410) );
  oa4f1 U558 ( .A(n469), .B(yn[14]), .C(n402), .D(yn[15]), .Y(n405) );
  or2c1 U559 ( .A(n516), .B(yn[13]), .Y(n404) );
  and2c1 U560 ( .A(n406), .B(n9), .Y(n407) );
  oa2i2 U561 ( .A(yn[12]), .B(n517), .C(n408), .D(n407), .Y(n409) );
  ao4f3 U562 ( .A(n410), .B(n602), .C(n583), .D(n409), .Y(n411) );
  inv1a1 U563 ( .A(n414), .Y(n415) );
  ao2i3 U564 ( .A(n417), .B(n323), .C(n416), .D(n415), .Y(N313) );
  or2c1 U565 ( .A(y[10]), .B(n6), .Y(n423) );
  xor2b2 U566 ( .A(n419), .B(n418), .Y(n421) );
  ao2i3 U567 ( .A(n582), .B(n486), .C(n423), .D(n422), .Y(N345) );
  or2c1 U568 ( .A(y[9]), .B(n564), .Y(n437) );
  inv1a1 U569 ( .A(y[9]), .Y(n430) );
  and2c1 U570 ( .A(n624), .B(yn[15]), .Y(n425) );
  oa2i2 U571 ( .A(n496), .B(n426), .C(n425), .D(n424), .Y(n553) );
  or2c1 U572 ( .A(n427), .B(n580), .Y(n428) );
  ao1f2 U573 ( .A(n430), .B(n582), .C(n429), .Y(n431) );
  and2a3 U574 ( .A(n638), .B(xn[9]), .Y(n479) );
  xor2b2 U575 ( .A(n480), .B(n479), .Y(n435) );
  ao2i3 U576 ( .A(n438), .B(n323), .C(n437), .D(n436), .Y(N314) );
  or2c1 U577 ( .A(y[11]), .B(n6), .Y(n444) );
  fa1a3 U578 ( .A(n441), .B(n440), .CI(n439), .CO(n489), .S(n442) );
  inv1a1 U579 ( .A(n442), .Y(n443) );
  ao2i3 U580 ( .A(n582), .B(n508), .C(n444), .D(n443), .Y(N346) );
  and3d2 U581 ( .A(y[14]), .B(y[13]), .C(y[12]), .Y(n447) );
  and3d2 U582 ( .A(y[10]), .B(y[9]), .C(y[8]), .Y(n446) );
  and2c1 U583 ( .A(y[15]), .B(y[11]), .Y(n445) );
  or3d1 U584 ( .A(n447), .B(n446), .C(n445), .Y(n460) );
  and3d2 U585 ( .A(y[6]), .B(y[5]), .C(y[4]), .Y(n450) );
  and3d2 U586 ( .A(y[2]), .B(y[1]), .C(y[0]), .Y(n449) );
  and2c1 U587 ( .A(y[7]), .B(y[3]), .Y(n448) );
  or3d1 U588 ( .A(n450), .B(n449), .C(n448), .Y(n459) );
  and3d2 U589 ( .A(x[14]), .B(x[13]), .C(x[12]), .Y(n453) );
  and3d2 U590 ( .A(x[10]), .B(x[9]), .C(x[8]), .Y(n452) );
  and2c1 U591 ( .A(x[15]), .B(x[11]), .Y(n451) );
  or3d1 U592 ( .A(n453), .B(n452), .C(n451), .Y(n458) );
  and3d2 U593 ( .A(x[6]), .B(x[5]), .C(x[4]), .Y(n456) );
  and3d2 U594 ( .A(x[2]), .B(x[1]), .C(x[0]), .Y(n455) );
  and2c1 U595 ( .A(x[7]), .B(x[3]), .Y(n454) );
  or3d1 U596 ( .A(n456), .B(n455), .C(n454), .Y(n457) );
  oa4a2 U597 ( .A(n460), .B(n459), .C(n458), .D(n457), .Y(n652) );
  inv1a1 U598 ( .A(nozero_flg), .Y(n462) );
  inv1a1 U599 ( .A(n651), .Y(n461) );
  inv1a1 U600 ( .A(cal_en), .Y(n618) );
  oa1f3 U601 ( .A(n462), .B(n461), .C(n618), .Y(N355) );
  inv1a1 U602 ( .A(n652), .Y(n465) );
  inv1a1 U603 ( .A(N355), .Y(n463) );
  oa1f3 U604 ( .A(n465), .B(n464), .C(n463), .Y(N354) );
  or2c1 U605 ( .A(y[10]), .B(n564), .Y(n485) );
  and2a3 U606 ( .A(n1), .B(xn[10]), .Y(n504) );
  inv1a1 U607 ( .A(y[10]), .Y(n475) );
  inv1a1 U608 ( .A(yn[14]), .Y(n565) );
  and2c1 U609 ( .A(n493), .B(n567), .Y(n468) );
  inv1a1 U610 ( .A(yn[17]), .Y(n593) );
  and2c1 U611 ( .A(n68), .B(n593), .Y(n467) );
  oa2i2 U612 ( .A(yn[16]), .B(n469), .C(n468), .D(n467), .Y(n471) );
  ao1f2 U613 ( .A(n471), .B(n580), .C(n470), .Y(n472) );
  oa2i2 U614 ( .A(n626), .B(yn[11]), .C(n473), .D(n472), .Y(n474) );
  inv1a1 U615 ( .A(n483), .Y(n484) );
  ao2i3 U616 ( .A(n486), .B(n323), .C(n485), .D(n484), .Y(N315) );
  or2c1 U617 ( .A(y[12]), .B(n6), .Y(n492) );
  xor2b2 U618 ( .A(n488), .B(n487), .Y(n490) );
  or2c1 U619 ( .A(y[11]), .B(n564), .Y(n507) );
  inv1a1 U620 ( .A(y[11]), .Y(n500) );
  and2c1 U621 ( .A(n624), .B(yn[17]), .Y(n495) );
  ao4f1 U622 ( .A(n68), .B(N158), .C(yn[16]), .D(n493), .Y(n494) );
  oa2i2 U623 ( .A(n496), .B(n567), .C(n495), .D(n494), .Y(n581) );
  or2c1 U624 ( .A(n497), .B(n580), .Y(n498) );
  ao1f2 U625 ( .A(n500), .B(n582), .C(n499), .Y(n501) );
  and2a3 U626 ( .A(n638), .B(xn[11]), .Y(n528) );
  xor2b2 U627 ( .A(n529), .B(n528), .Y(n505) );
  fa1a3 U628 ( .A(n504), .B(n503), .CI(n502), .CO(n527), .S(n483) );
  ao2i3 U629 ( .A(n508), .B(n323), .C(n507), .D(n506), .Y(N316) );
  or2c1 U630 ( .A(y[13]), .B(n6), .Y(n514) );
  fa1a3 U631 ( .A(n511), .B(n510), .CI(n509), .CO(n538), .S(n512) );
  inv1a1 U632 ( .A(n512), .Y(n513) );
  or2c1 U633 ( .A(y[12]), .B(n564), .Y(n534) );
  and2a3 U634 ( .A(n638), .B(xn[12]), .Y(n559) );
  inv1a1 U635 ( .A(y[12]), .Y(n524) );
  and2c1 U636 ( .A(n515), .B(n567), .Y(n522) );
  and2a3 U637 ( .A(N158), .B(n548), .Y(n589) );
  or2c1 U638 ( .A(n627), .B(yn[14]), .Y(n519) );
  oa4f1 U639 ( .A(n591), .B(yn[12]), .C(n517), .D(yn[16]), .Y(n518) );
  oa2i2 U640 ( .A(n626), .B(yn[13]), .C(n522), .D(n521), .Y(n523) );
  ao4f3 U641 ( .A(n524), .B(n602), .C(n583), .D(n523), .Y(n525) );
  inv1a1 U642 ( .A(n532), .Y(n533) );
  ao2i3 U643 ( .A(n535), .B(n323), .C(n534), .D(n533), .Y(N317) );
  or2c1 U644 ( .A(y[14]), .B(n6), .Y(n541) );
  xor2b2 U645 ( .A(n537), .B(n536), .Y(n539) );
  fa1a2 U646 ( .A(n544), .B(n543), .CI(n542), .CO(n284), .S(n546) );
  or2c1 U647 ( .A(y[13]), .B(n564), .Y(n562) );
  and2a3 U648 ( .A(n1), .B(xn[13]), .Y(n575) );
  inv1a1 U649 ( .A(y[13]), .Y(n555) );
  and2c1 U650 ( .A(n549), .B(yn[17]), .Y(n547) );
  oa2i2 U651 ( .A(n550), .B(n549), .C(n548), .D(n547), .Y(n551) );
  and2c3 U652 ( .A(n551), .B(n589), .Y(n601) );
  or2c1 U653 ( .A(n601), .B(n2), .Y(n552) );
  ao1f2 U654 ( .A(n555), .B(n582), .C(n554), .Y(n556) );
  fa1a3 U655 ( .A(n559), .B(n558), .CI(n557), .CO(n573), .S(n532) );
  inv1a1 U656 ( .A(n560), .Y(n561) );
  ao2i3 U657 ( .A(n563), .B(n323), .C(n562), .D(n561), .Y(N318) );
  or2c1 U658 ( .A(y[14]), .B(n564), .Y(n578) );
  and2a3 U659 ( .A(n635), .B(xn[14]), .Y(n588) );
  inv1a1 U660 ( .A(y[14]), .Y(n571) );
  and2c1 U661 ( .A(n3), .B(n565), .Y(n569) );
  or2c1 U662 ( .A(N158), .B(n2), .Y(n600) );
  or2c1 U663 ( .A(n627), .B(yn[16]), .Y(n566) );
  oa2i2 U664 ( .A(yn[17]), .B(n113), .C(n569), .D(n568), .Y(n570) );
  ao4f3 U665 ( .A(n571), .B(n602), .C(n583), .D(n570), .Y(n572) );
  fa1a3 U666 ( .A(n575), .B(n574), .CI(n573), .CO(n586), .S(n560) );
  inv1a1 U667 ( .A(n576), .Y(n577) );
  ao2i3 U668 ( .A(n323), .B(n579), .C(n578), .D(n577), .Y(N319) );
  and2a3 U669 ( .A(n1), .B(xn[15]), .Y(n598) );
  inv1a1 U670 ( .A(n600), .Y(n590) );
  ao1f2 U671 ( .A(n584), .B(n583), .C(n582), .Y(n585) );
  fa1a3 U672 ( .A(n588), .B(n587), .CI(n586), .CO(n596), .S(n576) );
  oa2i2 U673 ( .A(n591), .B(yn[16]), .C(n590), .D(n589), .Y(n592) );
  ao1f2 U674 ( .A(n593), .B(n629), .C(n592), .Y(n594) );
  and2a3 U675 ( .A(n635), .B(xn[16]), .Y(n609) );
  xor2b2 U676 ( .A(n610), .B(n609), .Y(n599) );
  fa1a3 U677 ( .A(n598), .B(n597), .CI(n596), .CO(n606), .S(n640) );
  xor2b2 U678 ( .A(n599), .B(n606), .Y(N321) );
  and2a3 U679 ( .A(n635), .B(xn[17]), .Y(n615) );
  inv1a1 U680 ( .A(n618), .Y(n619) );
  inv1a1 U681 ( .A(en), .Y(n621) );
  and2c3 U682 ( .A(n622), .B(n621), .Y(n195) );
  oa1f1 U683 ( .A(n625), .B(n624), .C(n623), .Y(N303) );
  xor2a2 U684 ( .A(n626), .B(N158), .Y(DP_OP_39J1_122_1632_n15) );
  xor2a2 U685 ( .A(n627), .B(N158), .Y(DP_OP_39J1_122_1632_n16) );
  xor2a2 U686 ( .A(n113), .B(N158), .Y(DP_OP_39J1_122_1632_n17) );
  or3d1 U687 ( .A(n630), .B(n629), .C(n628), .Y(n631) );
  xor2a2 U688 ( .A(n631), .B(N158), .Y(DP_OP_39J1_122_1632_n18) );
  xor2a2 U689 ( .A(n632), .B(N158), .Y(DP_OP_39J1_122_1632_n19) );
  ao4a3 U690 ( .A(N298), .B(n5), .C(n633), .D(n652), .Y(N330) );
endmodule


module cal_phase ( rg_calphase_en, rg_bypass_mean, rg_cordic_iternum, 
        rg_leakage_table_0, rg_leakage_table_1, rg_leakage_table_2, 
        rg_leakage_table_3, rg_leakage_table_4, rg_leakage_table_5, 
        rg_leakage_table_6, rg_leakage_table_7, rg_sin_table_0, rg_sin_table_1, 
        rg_sin_table_2, rg_sin_table_3, rg_sin_table_4, rg_sin_table_5, 
        rg_sin_table_6, rg_sin_table_7, rg_cos_table_0, rg_cos_table_1, 
        rg_cos_table_2, rg_cos_table_3, rg_cos_table_4, rg_cos_table_5, 
        rg_cos_table_6, rg_cos_table_7, valid_num, vin_vld, vin1, vin2, 
        phase_vld, phase, clk, resetn );
  input [2:0] rg_cordic_iternum;
  input [7:0] rg_leakage_table_0;
  input [7:0] rg_leakage_table_1;
  input [7:0] rg_leakage_table_2;
  input [7:0] rg_leakage_table_3;
  input [7:0] rg_leakage_table_4;
  input [7:0] rg_leakage_table_5;
  input [7:0] rg_leakage_table_6;
  input [7:0] rg_leakage_table_7;
  input [7:0] rg_sin_table_0;
  input [7:0] rg_sin_table_1;
  input [7:0] rg_sin_table_2;
  input [7:0] rg_sin_table_3;
  input [7:0] rg_sin_table_4;
  input [7:0] rg_sin_table_5;
  input [7:0] rg_sin_table_6;
  input [7:0] rg_sin_table_7;
  input [7:0] rg_cos_table_0;
  input [7:0] rg_cos_table_1;
  input [7:0] rg_cos_table_2;
  input [7:0] rg_cos_table_3;
  input [7:0] rg_cos_table_4;
  input [7:0] rg_cos_table_5;
  input [7:0] rg_cos_table_6;
  input [7:0] rg_cos_table_7;
  input [2:0] valid_num;
  input [7:0] vin1;
  input [7:0] vin2;
  output [7:0] phase;
  input rg_calphase_en, rg_bypass_mean, vin_vld, clk, resetn;
  output phase_vld;
  wire   calvn_finish_1, dot_psum_vld, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31;
  wire   [2:0] n_zz_1;
  wire   [7:0] calvn_mean;
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

  cal_vn calvn ( .en(rg_calphase_en), .rg_bypass_mean(rg_bypass_mean), 
        .valid_num({valid_num[2], n4, n26}), .vin_vld(vin_vld), .vin1({n23, 
        n22, n21, n19, n18, n16, vin1[1], n14}), .vin2({n12, n11, n25, n10, n8, 
        n6, vin2[1:0]}), .rg_leakage_table_0(rg_leakage_table_0), 
        .rg_leakage_table_1(rg_leakage_table_1), .rg_leakage_table_2(
        rg_leakage_table_2), .rg_leakage_table_3(rg_leakage_table_3), 
        .rg_leakage_table_4(rg_leakage_table_4), .rg_leakage_table_5(
        rg_leakage_table_5), .rg_leakage_table_6(rg_leakage_table_6), 
        .rg_leakage_table_7(rg_leakage_table_7), .mean(calvn_mean), .vn_0(
        calvn_vn_0), .vn_1(calvn_vn_1), .vn_2(calvn_vn_2), .vn_3(calvn_vn_3), 
        .vn_4(calvn_vn_4), .vn_5(calvn_vn_5), .vn_6(calvn_vn_6), .vn_7(
        calvn_vn_7), .finish(calvn_finish_1), .clk(clk), .resetn(n31) );
  dotVn_2 dot ( .en(n27), .rg_sin_table_0(rg_sin_table_0), .rg_sin_table_1(
        rg_sin_table_1), .rg_sin_table_2(rg_sin_table_2), .rg_sin_table_3(
        rg_sin_table_3), .rg_sin_table_4(rg_sin_table_4), .rg_sin_table_5(
        rg_sin_table_5), .rg_sin_table_6(rg_sin_table_6), .rg_sin_table_7(
        rg_sin_table_7), .rg_cos_table_0(rg_cos_table_0), .rg_cos_table_1(
        rg_cos_table_1), .rg_cos_table_2(rg_cos_table_2), .rg_cos_table_3(
        rg_cos_table_3), .rg_cos_table_4(rg_cos_table_4), .rg_cos_table_5(
        rg_cos_table_5), .rg_cos_table_6(rg_cos_table_6), .rg_cos_table_7(
        rg_cos_table_7), .vn_vld(calvn_finish_1), .vn_in_0(calvn_vn_0), 
        .vn_in_1(calvn_vn_1), .vn_in_2(calvn_vn_2), .vn_in_3(calvn_vn_3), 
        .vn_in_4(calvn_vn_4), .vn_in_5(calvn_vn_5), .vn_in_6(calvn_vn_6), 
        .vn_in_7(calvn_vn_7), .psum_out1(dot_psum_out1), .psum_out2(
        dot_psum_out2), .psum_vld(dot_psum_vld), .valid_num({n_zz_1[2], n2, 
        1'b1}), .mean(calvn_mean), .clk(clk), .resetn(n29) );
  cordic_int cordic ( .en(n27), .rg_cordic_iternum({rg_cordic_iternum[2], n24, 
        n3}), .vld(dot_psum_vld), .y(dot_psum_out2), .x(dot_psum_out1), .res(
        phase), .res_vld(phase_vld), .clk(clk), .resetn(n30) );
  clk1b6 U6 ( .A(vin1[3]), .Y(n17) );
  inv1a9 U7 ( .A(vin2[2]), .Y(n5) );
  clk1a3 U8 ( .A(vin1[7]), .Y(n23) );
  clk1a3 U9 ( .A(rg_calphase_en), .Y(n27) );
  inv1a3 U10 ( .A(vin1[0]), .Y(n13) );
  inv1a3 U11 ( .A(n15), .Y(n16) );
  inv1a3 U12 ( .A(n13), .Y(n14) );
  clk1b6 U13 ( .A(n17), .Y(n18) );
  clk1a3 U14 ( .A(vin1[4]), .Y(n19) );
  inv1a9 U15 ( .A(n5), .Y(n6) );
  clk1a3 U16 ( .A(rg_cordic_iternum[0]), .Y(n3) );
  clk1a3 U17 ( .A(rg_cordic_iternum[1]), .Y(n24) );
  clk1a3 U18 ( .A(vin2[5]), .Y(n25) );
  clk1a3 U19 ( .A(valid_num[0]), .Y(n26) );
  clk1a3 U20 ( .A(vin2[7]), .Y(n12) );
  clk1a3 U21 ( .A(valid_num[1]), .Y(n4) );
  clk1a3 U22 ( .A(vin2[6]), .Y(n11) );
  clk1a3 U23 ( .A(vin1[6]), .Y(n22) );
  inv1a1 U24 ( .A(vin2[4]), .Y(n9) );
  clk1b6 U25 ( .A(vin1[2]), .Y(n15) );
  inv1a3 U26 ( .A(vin2[3]), .Y(n7) );
  inv1a3 U27 ( .A(n7), .Y(n8) );
  inv1a3 U28 ( .A(n9), .Y(n10) );
  inv1a1 U29 ( .A(vin1[5]), .Y(n20) );
  inv1a3 U30 ( .A(n20), .Y(n21) );
  inv1a1 U31 ( .A(resetn), .Y(n28) );
  clk1b9 U32 ( .A(n28), .Y(n29) );
  inv1a1 U33 ( .A(n28), .Y(n30) );
  inv1a1 U34 ( .A(n28), .Y(n31) );
  inv1a3 U35 ( .A(n26), .Y(n2) );
  mx2a1 U37 ( .D0(n2), .D1(n26), .S(n4), .Y(n_zz_1[2]) );
endmodule

