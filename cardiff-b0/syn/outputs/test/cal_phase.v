/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Wed Dec 15 15:23:35 2021
/////////////////////////////////////////////////////////////


module SNPS_CLOCK_GATE_HIGH_cal_vn_10 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3325;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3325) );
  and2a3 main_gate ( .A(net3325), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_9 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3325;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3325) );
  and2a3 main_gate ( .A(net3325), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_7 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3325;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3325) );
  and2a3 main_gate ( .A(net3325), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_4 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3325;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3325) );
  and2a3 main_gate ( .A(net3325), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_3 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3325;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3325) );
  and2a3 main_gate ( .A(net3325), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_2 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3325;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3325) );
  and2a3 main_gate ( .A(net3325), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_1 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3325;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3325) );
  and2a3 main_gate ( .A(net3325), .B(CLK), .Y(ENCLK) );
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
  wire   n_zz_15_8, n_zz_16_8, v_cnt_2_, N135, N150, N151, N152, N153, N154,
         N155, N156, N157, N170, N171, N172, N173, N174, N175, N176, N177,
         N190, N191, N192, N193, N194, N195, N196, N197, N200, N201, N202,
         N203, N204, N205, N206, N210, N211, N212, N213, N214, N215, N216,
         N217, N222, N223, N224, N233, N235, N237, N239, N241, N242, net3336,
         net3341, net3351, net3366, net3371, net3376, net3381, n1, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
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
         n261, n262, n263, n264, n265, n266, n267, n268, n270, n271, n272,
         n273, n274, n275, n276, n277;
  wire   [6:0] n_zz_15;
  wire   [6:0] n_zz_16;
  wire   [2:1] n_zz_19;
  wire   [6:0] bigger;
  wire   [7:0] smaller;

  SNPS_CLOCK_GATE_HIGH_cal_vn_10 clk_gate_min_v_reg ( .CLK(clk), .EN(N242), 
        .ENCLK(net3336) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_9 clk_gate_max_v_reg ( .CLK(clk), .EN(N241), 
        .ENCLK(net3341) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_7 clk_gate_Vins_6_reg ( .CLK(clk), .EN(N239), 
        .ENCLK(net3351) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_4 clk_gate_Vins_4_reg ( .CLK(clk), .EN(N237), 
        .ENCLK(net3366) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_3 clk_gate_Vins_3_reg ( .CLK(clk), .EN(N235), 
        .ENCLK(net3371) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_2 clk_gate_Vins_1_reg ( .CLK(clk), .EN(N233), 
        .ENCLK(net3376) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_1 clk_gate_v_cnt_reg ( .CLK(clk), .EN(N135), 
        .ENCLK(net3381) );
  fdf2a3 v_cnt_reg_0_ ( .D(N222), .CLK(net3381), .CLR(n274), .Q(n_zz_19[1]) );
  fdf2a3 v_cnt_reg_2_ ( .D(N224), .CLK(net3381), .CLR(n276), .Q(v_cnt_2_) );
  fdf2a3 v_cnt_reg_1_ ( .D(N223), .CLK(net3381), .CLR(n273), .Q(n_zz_19[2]) );
  fdf2a3 min_v_reg_7_ ( .D(smaller[7]), .CLK(net3336), .CLR(n276), .Q(
        n_zz_16_8) );
  fdf2a3 min_v_reg_6_ ( .D(smaller[6]), .CLK(net3336), .CLR(n271), .Q(
        n_zz_16[6]) );
  fdf2a3 min_v_reg_5_ ( .D(smaller[5]), .CLK(net3336), .CLR(n273), .Q(
        n_zz_16[5]) );
  fdf2a3 min_v_reg_4_ ( .D(smaller[4]), .CLK(net3336), .CLR(n274), .Q(
        n_zz_16[4]) );
  fdf2a3 min_v_reg_3_ ( .D(smaller[3]), .CLK(net3336), .CLR(n270), .Q(
        n_zz_16[3]) );
  fdf2a3 min_v_reg_2_ ( .D(smaller[2]), .CLK(net3336), .CLR(n272), .Q(
        n_zz_16[2]) );
  fdf2a3 min_v_reg_1_ ( .D(smaller[1]), .CLK(net3336), .CLR(n275), .Q(
        n_zz_16[1]) );
  fdf2a3 max_v_reg_7_ ( .D(n277), .CLK(net3341), .CLR(n275), .Q(n_zz_15_8) );
  fdf2a3 max_v_reg_6_ ( .D(bigger[6]), .CLK(net3341), .CLR(n276), .Q(
        n_zz_15[6]) );
  fdf2a3 max_v_reg_5_ ( .D(bigger[5]), .CLK(net3341), .CLR(n271), .Q(
        n_zz_15[5]) );
  fdf2a3 max_v_reg_4_ ( .D(bigger[4]), .CLK(net3341), .CLR(n274), .Q(
        n_zz_15[4]) );
  fdf2a3 max_v_reg_3_ ( .D(bigger[3]), .CLK(net3341), .CLR(n276), .Q(
        n_zz_15[3]) );
  fdf2a3 max_v_reg_2_ ( .D(bigger[2]), .CLK(net3341), .CLR(n276), .Q(
        n_zz_15[2]) );
  fdf2a3 max_v_reg_0_ ( .D(bigger[0]), .CLK(net3341), .CLR(n273), .Q(
        n_zz_15[0]) );
  fdf2a3 Vins_5_reg_7_ ( .D(N197), .CLK(net3366), .CLR(n274), .Q(vn_5[7]) );
  fdf2a3 Vins_7_reg_7_ ( .D(N217), .CLK(net3351), .CLR(n270), .Q(vn_7[7]) );
  fdf2a3 Vins_3_reg_7_ ( .D(N177), .CLK(net3371), .CLR(n270), .Q(vn_3[7]) );
  fdf2a3 Vins_1_reg_7_ ( .D(N157), .CLK(net3376), .CLR(n275), .Q(vn_1[7]) );
  fdf2a3 Vins_4_reg_7_ ( .D(n42), .CLK(net3366), .CLR(n273), .Q(vn_4[7]) );
  fdf2a3 Vins_4_reg_6_ ( .D(N206), .CLK(net3366), .CLR(n276), .Q(vn_4[6]) );
  fdf2a3 Vins_4_reg_5_ ( .D(N205), .CLK(net3366), .CLR(n276), .Q(vn_4[5]) );
  fdf2a3 Vins_4_reg_4_ ( .D(N204), .CLK(net3366), .CLR(n272), .Q(vn_4[4]) );
  fdf2a3 Vins_4_reg_3_ ( .D(N203), .CLK(net3366), .CLR(n273), .Q(vn_4[3]) );
  fdf2a3 Vins_4_reg_0_ ( .D(N200), .CLK(net3366), .CLR(n273), .Q(vn_4[0]) );
  fdf2a3 Vins_6_reg_7_ ( .D(n42), .CLK(net3351), .CLR(n274), .Q(vn_6[7]) );
  fdf2a3 Vins_6_reg_6_ ( .D(N206), .CLK(net3351), .CLR(n276), .Q(vn_6[6]) );
  fdf2a3 Vins_6_reg_5_ ( .D(N205), .CLK(net3351), .CLR(n272), .Q(vn_6[5]) );
  fdf2a3 Vins_6_reg_4_ ( .D(N204), .CLK(net3351), .CLR(n271), .Q(vn_6[4]) );
  fdf2a3 Vins_6_reg_3_ ( .D(N203), .CLK(net3351), .CLR(n270), .Q(vn_6[3]) );
  fdf2a3 Vins_6_reg_2_ ( .D(N202), .CLK(net3351), .CLR(n275), .Q(vn_6[2]) );
  fdf2a3 Vins_6_reg_1_ ( .D(N201), .CLK(net3351), .CLR(n274), .Q(vn_6[1]) );
  fdf2a3 Vins_6_reg_0_ ( .D(N200), .CLK(net3351), .CLR(n271), .Q(vn_6[0]) );
  fdf2a3 Vins_2_reg_7_ ( .D(n42), .CLK(net3371), .CLR(n276), .Q(vn_2[7]) );
  fdf2a3 Vins_2_reg_0_ ( .D(N200), .CLK(net3371), .CLR(n270), .Q(vn_2[0]) );
  fdf2a3 Vins_0_reg_7_ ( .D(n42), .CLK(net3376), .CLR(n272), .Q(vn_0[7]) );
  fdf2a3 Vins_0_reg_0_ ( .D(N200), .CLK(net3376), .CLR(n275), .Q(vn_0[0]) );
  fdf2a3 min_v_reg_0_ ( .D(smaller[0]), .CLK(net3336), .CLR(n276), .Q(
        n_zz_16[0]) );
  fdf2a3 max_v_reg_1_ ( .D(bigger[1]), .CLK(net3341), .CLR(resetn), .Q(
        n_zz_15[1]) );
  fdf2a3 Vins_4_reg_2_ ( .D(N202), .CLK(net3366), .CLR(n275), .Q(vn_4[2]) );
  fdf2a3 Vins_4_reg_1_ ( .D(N201), .CLK(net3366), .CLR(n270), .Q(vn_4[1]) );
  fdf2a3 Vins_2_reg_6_ ( .D(N206), .CLK(net3371), .CLR(n273), .Q(vn_2[6]) );
  fdf2a3 Vins_2_reg_5_ ( .D(N205), .CLK(net3371), .CLR(n274), .Q(vn_2[5]) );
  fdf2a3 Vins_2_reg_4_ ( .D(N204), .CLK(net3371), .CLR(n275), .Q(vn_2[4]) );
  fdf2a3 Vins_2_reg_3_ ( .D(N203), .CLK(net3371), .CLR(n270), .Q(vn_2[3]) );
  fdf2a3 Vins_2_reg_2_ ( .D(N202), .CLK(net3371), .CLR(n271), .Q(vn_2[2]) );
  fdf2a3 Vins_2_reg_1_ ( .D(N201), .CLK(net3371), .CLR(n272), .Q(vn_2[1]) );
  fdf2a3 Vins_0_reg_6_ ( .D(N206), .CLK(net3376), .CLR(n276), .Q(vn_0[6]) );
  fdf2a3 Vins_0_reg_5_ ( .D(N205), .CLK(net3376), .CLR(n270), .Q(vn_0[5]) );
  fdf2a3 Vins_0_reg_4_ ( .D(N204), .CLK(net3376), .CLR(n271), .Q(vn_0[4]) );
  fdf2a3 Vins_0_reg_3_ ( .D(N203), .CLK(net3376), .CLR(n272), .Q(vn_0[3]) );
  fdf2a3 Vins_0_reg_2_ ( .D(N202), .CLK(net3376), .CLR(n276), .Q(vn_0[2]) );
  fdf2a3 Vins_0_reg_1_ ( .D(N201), .CLK(net3376), .CLR(n273), .Q(vn_0[1]) );
  fdf2a3 Vins_5_reg_0_ ( .D(N190), .CLK(net3366), .CLR(n271), .Q(vn_5[0]) );
  fdf2a3 Vins_3_reg_0_ ( .D(N170), .CLK(net3371), .CLR(n271), .Q(vn_3[0]) );
  fdf2a3 Vins_7_reg_0_ ( .D(N210), .CLK(net3351), .CLR(n272), .Q(vn_7[0]) );
  fdf2a3 Vins_1_reg_0_ ( .D(N150), .CLK(net3376), .CLR(n274), .Q(vn_1[0]) );
  fdf2a3 Vins_5_reg_6_ ( .D(N196), .CLK(net3366), .CLR(n274), .Q(vn_5[6]) );
  fdf2a3 Vins_5_reg_5_ ( .D(N195), .CLK(net3366), .CLR(n275), .Q(vn_5[5]) );
  fdf2a3 Vins_5_reg_4_ ( .D(N194), .CLK(net3366), .CLR(n272), .Q(vn_5[4]) );
  fdf2a3 Vins_5_reg_3_ ( .D(N193), .CLK(net3366), .CLR(n276), .Q(vn_5[3]) );
  fdf2a3 Vins_5_reg_2_ ( .D(N192), .CLK(net3366), .CLR(n276), .Q(vn_5[2]) );
  fdf2a3 Vins_5_reg_1_ ( .D(N191), .CLK(net3366), .CLR(n273), .Q(vn_5[1]) );
  fdf2a3 Vins_3_reg_6_ ( .D(N176), .CLK(net3371), .CLR(n276), .Q(vn_3[6]) );
  fdf2a3 Vins_3_reg_5_ ( .D(N175), .CLK(net3371), .CLR(n273), .Q(vn_3[5]) );
  fdf2a3 Vins_3_reg_4_ ( .D(N174), .CLK(net3371), .CLR(n274), .Q(vn_3[4]) );
  fdf2a3 Vins_3_reg_3_ ( .D(N173), .CLK(net3371), .CLR(n275), .Q(vn_3[3]) );
  fdf2a3 Vins_3_reg_2_ ( .D(N172), .CLK(net3371), .CLR(n270), .Q(vn_3[2]) );
  fdf2a3 Vins_3_reg_1_ ( .D(N171), .CLK(net3371), .CLR(n271), .Q(vn_3[1]) );
  fdf2a3 Vins_7_reg_6_ ( .D(N216), .CLK(net3351), .CLR(n274), .Q(vn_7[6]) );
  fdf2a3 Vins_7_reg_5_ ( .D(N215), .CLK(net3351), .CLR(n275), .Q(vn_7[5]) );
  fdf2a3 Vins_7_reg_4_ ( .D(N214), .CLK(net3351), .CLR(n270), .Q(vn_7[4]) );
  fdf2a3 Vins_7_reg_3_ ( .D(N213), .CLK(net3351), .CLR(n271), .Q(vn_7[3]) );
  fdf2a3 Vins_7_reg_2_ ( .D(N212), .CLK(net3351), .CLR(n272), .Q(vn_7[2]) );
  fdf2a3 Vins_7_reg_1_ ( .D(N211), .CLK(net3351), .CLR(n272), .Q(vn_7[1]) );
  fdf2a3 Vins_1_reg_6_ ( .D(N156), .CLK(net3376), .CLR(n275), .Q(vn_1[6]) );
  fdf2a3 Vins_1_reg_5_ ( .D(N155), .CLK(net3376), .CLR(n270), .Q(vn_1[5]) );
  fdf2a3 Vins_1_reg_4_ ( .D(N154), .CLK(net3376), .CLR(n271), .Q(vn_1[4]) );
  fdf2a3 Vins_1_reg_3_ ( .D(N153), .CLK(net3376), .CLR(n272), .Q(vn_1[3]) );
  fdf2a3 Vins_1_reg_2_ ( .D(N152), .CLK(net3376), .CLR(n276), .Q(vn_1[2]) );
  fdf2a3 Vins_1_reg_1_ ( .D(N151), .CLK(net3376), .CLR(n273), .Q(vn_1[1]) );
  or2c1 U3 ( .A(N200), .B(n252), .Y(n219) );
  or2c3 U4 ( .A(n266), .B(n190), .Y(n231) );
  or2c6 U5 ( .A(n41), .B(n47), .Y(n227) );
  inv1a3 U6 ( .A(n184), .Y(n266) );
  or2c6 U7 ( .A(n42), .B(n46), .Y(n228) );
  clk1b6 U8 ( .A(n41), .Y(n42) );
  or2c1 U9 ( .A(n164), .B(n163), .Y(n186) );
  inv1a1 U10 ( .A(bigger[6]), .Y(n154) );
  mx2a3 U11 ( .D0(vin1[6]), .D1(vin2[6]), .S(n104), .Y(smaller[6]) );
  mx2a3 U12 ( .D0(vin2[5]), .D1(vin1[5]), .S(n104), .Y(bigger[5]) );
  mx2a3 U13 ( .D0(vin2[6]), .D1(vin1[6]), .S(n104), .Y(bigger[6]) );
  or2c1 U14 ( .A(n12), .B(n11), .Y(n45) );
  mx2a3 U15 ( .D0(vin1[4]), .D1(vin2[4]), .S(n104), .Y(smaller[4]) );
  mx2a1 U16 ( .D0(vin1[5]), .D1(vin2[5]), .S(n104), .Y(smaller[5]) );
  mx2a3 U17 ( .D0(vin2[3]), .D1(vin1[3]), .S(n104), .Y(bigger[3]) );
  mx2a3 U18 ( .D0(vin2[4]), .D1(vin1[4]), .S(n104), .Y(bigger[4]) );
  ao1d1 U19 ( .A(n38), .B(n37), .C(n205), .Y(n40) );
  or2c1 U20 ( .A(n18), .B(vin1[5]), .Y(n39) );
  or2c1 U21 ( .A(n24), .B(vin1[3]), .Y(n35) );
  or2c6 U22 ( .A(n98), .B(n10), .Y(n252) );
  inv1a3 U23 ( .A(n_zz_19[2]), .Y(n98) );
  or2c1 U24 ( .A(n_zz_15[3]), .B(n_zz_16[3]), .Y(n83) );
  or2c1 U25 ( .A(n84), .B(n83), .Y(n95) );
  and2a3 U26 ( .A(n_zz_15[0]), .B(n_zz_16[0]), .Y(n96) );
  and2a3 U27 ( .A(n181), .B(n180), .Y(n1) );
  and2a3 U28 ( .A(n94), .B(n93), .Y(mean[7]) );
  oa4f3 U29 ( .A(n262), .B(rg_leakage_table_7[6]), .C(n263), .D(
        rg_leakage_table_5[6]), .Y(n165) );
  oa4f2 U30 ( .A(n262), .B(rg_leakage_table_7[1]), .C(n263), .D(
        rg_leakage_table_5[1]), .Y(n180) );
  inv1a1 U31 ( .A(n_zz_15[3]), .Y(n81) );
  inv1a1 U32 ( .A(n_zz_16[3]), .Y(n80) );
  inv1a2 U33 ( .A(vin1[7]), .Y(n103) );
  oa4f2 U34 ( .A(smaller[3]), .B(n80), .C(smaller[4]), .D(n120), .Y(n116) );
  fa1a3 U35 ( .A(vin2[3]), .B(n176), .CI(n197), .CO(n189), .S(n198) );
  fa1a3 U36 ( .A(vin2[2]), .B(n179), .CI(n202), .CO(n197), .S(n203) );
  inv1a1 U37 ( .A(n24), .Y(n34) );
  inv1a1 U38 ( .A(n18), .Y(n38) );
  oa4f2 U39 ( .A(n262), .B(rg_leakage_table_6[7]), .C(rg_leakage_table_2[7]), 
        .D(n264), .Y(n11) );
  clk1a3 U40 ( .A(n267), .Y(n9) );
  oa4f3 U41 ( .A(n262), .B(rg_leakage_table_6[5]), .C(rg_leakage_table_2[5]), 
        .D(n264), .Y(n16) );
  or2c1 U42 ( .A(n81), .B(n80), .Y(n82) );
  inv1a9 U43 ( .A(n261), .Y(n262) );
  inv1a1 U44 ( .A(vin1[3]), .Y(n33) );
  inv1a1 U45 ( .A(vin1[5]), .Y(n37) );
  ao1d6 U46 ( .A(n48), .B(n228), .C(n227), .Y(N200) );
  or3d2 U47 ( .A(n144), .B(n143), .C(n142), .Y(n148) );
  fa1a3 U48 ( .A(n103), .B(n45), .CI(n44), .CO(n41), .S(n47) );
  fa1a3 U49 ( .A(vin1[6]), .B(n15), .CI(n211), .CO(n44), .S(n212) );
  or2c3 U50 ( .A(n40), .B(n39), .Y(n211) );
  mx2a6 U51 ( .D0(vin1[2]), .D1(vin2[2]), .S(n104), .Y(smaller[2]) );
  mx2a6 U52 ( .D0(vin1[3]), .D1(vin2[3]), .S(n104), .Y(smaller[3]) );
  mx2a6 U53 ( .D0(vin2[2]), .D1(vin1[2]), .S(n104), .Y(bigger[2]) );
  fa1a3 U54 ( .A(vin1[4]), .B(n21), .CI(n161), .CO(n205), .S(n162) );
  or2c3 U55 ( .A(n36), .B(n35), .Y(n161) );
  fa1a3 U56 ( .A(vin2[4]), .B(n173), .CI(n189), .CO(n208), .S(n191) );
  ao1d2 U57 ( .A(n_zz_15_8), .B(n_zz_16_8), .C(n90), .Y(n94) );
  ao1d2 U58 ( .A(n34), .B(n33), .C(n194), .Y(n36) );
  inv1a3 U59 ( .A(n9), .Y(n258) );
  and2a3 U60 ( .A(n14), .B(n13), .Y(n15) );
  and2a3 U61 ( .A(n20), .B(n19), .Y(n21) );
  and2a3 U62 ( .A(n175), .B(n174), .Y(n176) );
  and2a3 U63 ( .A(n178), .B(n177), .Y(n179) );
  and2a3 U64 ( .A(n172), .B(n171), .Y(n173) );
  and2a3 U65 ( .A(n169), .B(n168), .Y(n170) );
  and2a3 U66 ( .A(n166), .B(n165), .Y(n167) );
  and2a3 U67 ( .A(n17), .B(n16), .Y(n18) );
  and2a3 U68 ( .A(n26), .B(n25), .Y(n27) );
  and2a3 U69 ( .A(n23), .B(n22), .Y(n24) );
  and2a3 U70 ( .A(n29), .B(n28), .Y(n30) );
  oa4f3 U71 ( .A(n265), .B(rg_leakage_table_1[6]), .C(n264), .D(
        rg_leakage_table_3[6]), .Y(n166) );
  oa4f3 U72 ( .A(n263), .B(rg_leakage_table_4[5]), .C(rg_leakage_table_0[5]), 
        .D(n265), .Y(n17) );
  oa4f2 U73 ( .A(n262), .B(rg_leakage_table_7[4]), .C(n263), .D(
        rg_leakage_table_5[4]), .Y(n171) );
  or2c3 U74 ( .A(n86), .B(n82), .Y(n84) );
  oa4f2 U75 ( .A(n265), .B(rg_leakage_table_1[4]), .C(n264), .D(
        rg_leakage_table_3[4]), .Y(n172) );
  oa4f2 U76 ( .A(n262), .B(rg_leakage_table_7[3]), .C(n263), .D(
        rg_leakage_table_5[3]), .Y(n174) );
  oa4f2 U77 ( .A(n262), .B(rg_leakage_table_7[2]), .C(n263), .D(
        rg_leakage_table_5[2]), .Y(n177) );
  oa4f3 U78 ( .A(n263), .B(rg_leakage_table_4[7]), .C(rg_leakage_table_0[7]), 
        .D(n265), .Y(n12) );
  oa4f3 U79 ( .A(n263), .B(rg_leakage_table_4[6]), .C(rg_leakage_table_0[6]), 
        .D(n265), .Y(n14) );
  oa4f3 U80 ( .A(n262), .B(rg_leakage_table_6[6]), .C(rg_leakage_table_2[6]), 
        .D(n264), .Y(n13) );
  oa4f2 U81 ( .A(n263), .B(rg_leakage_table_4[1]), .C(rg_leakage_table_0[1]), 
        .D(n265), .Y(n29) );
  oa4f3 U82 ( .A(n263), .B(rg_leakage_table_4[4]), .C(rg_leakage_table_0[4]), 
        .D(n265), .Y(n20) );
  oa4f2 U83 ( .A(n262), .B(rg_leakage_table_6[2]), .C(rg_leakage_table_2[2]), 
        .D(n264), .Y(n25) );
  oa4f2 U84 ( .A(n263), .B(rg_leakage_table_4[2]), .C(rg_leakage_table_0[2]), 
        .D(n265), .Y(n26) );
  fa1a2 U85 ( .A(n_zz_16[2]), .B(n_zz_15[2]), .CI(n97), .CO(n86), .S(mean[1])
         );
  or3d2 U86 ( .A(n56), .B(n55), .C(n54), .Y(n61) );
  inv1a3 U87 ( .A(vin2[7]), .Y(n187) );
  mx2a6 U88 ( .D0(vin2[1]), .D1(vin1[1]), .S(n104), .Y(bigger[1]) );
  inv1a3 U89 ( .A(vin1[1]), .Y(n49) );
  inv1a3 U90 ( .A(n_zz_15_8), .Y(n92) );
  buf1a9 U91 ( .A(resetn), .Y(n276) );
  oa4f1 U92 ( .A(n262), .B(rg_leakage_table_7[7]), .C(n263), .D(
        rg_leakage_table_5[7]), .Y(n163) );
  oa4f1 U93 ( .A(n262), .B(rg_leakage_table_7[5]), .C(n263), .D(
        rg_leakage_table_5[5]), .Y(n168) );
  oa4f1 U94 ( .A(n265), .B(rg_leakage_table_1[7]), .C(n264), .D(
        rg_leakage_table_3[7]), .Y(n164) );
  oa4f1 U95 ( .A(n265), .B(rg_leakage_table_1[5]), .C(n264), .D(
        rg_leakage_table_3[5]), .Y(n169) );
  oa4f1 U96 ( .A(n265), .B(rg_leakage_table_1[3]), .C(n264), .D(
        rg_leakage_table_3[3]), .Y(n175) );
  oa4f1 U97 ( .A(n263), .B(rg_leakage_table_4[3]), .C(rg_leakage_table_0[3]), 
        .D(n265), .Y(n23) );
  oa4f1 U98 ( .A(n265), .B(rg_leakage_table_1[2]), .C(n264), .D(
        rg_leakage_table_3[2]), .Y(n178) );
  oa4f1 U99 ( .A(n265), .B(rg_leakage_table_1[1]), .C(n264), .D(
        rg_leakage_table_3[1]), .Y(n181) );
  or2c9 U100 ( .A(n_zz_19[2]), .B(n_zz_19[1]), .Y(n261) );
  and2c3 U101 ( .A(valid_num[0]), .B(valid_num[1]), .Y(n99) );
  and2c3 U102 ( .A(n_zz_19[1]), .B(n258), .Y(N222) );
  or2c1 U103 ( .A(n92), .B(n91), .Y(n93) );
  inv1a3 U104 ( .A(n_zz_16_8), .Y(n91) );
  inv1a2 U105 ( .A(n_zz_19[1]), .Y(n10) );
  or2c6 U106 ( .A(n10), .B(n_zz_19[2]), .Y(n256) );
  clk1b6 U107 ( .A(n256), .Y(n263) );
  clk1b6 U108 ( .A(n252), .Y(n265) );
  or2c6 U109 ( .A(n98), .B(n_zz_19[1]), .Y(n239) );
  clk1b6 U110 ( .A(n239), .Y(n264) );
  oa4f3 U111 ( .A(n262), .B(rg_leakage_table_6[4]), .C(rg_leakage_table_2[4]), 
        .D(n264), .Y(n19) );
  oa4f3 U112 ( .A(n262), .B(rg_leakage_table_6[3]), .C(rg_leakage_table_2[3]), 
        .D(n264), .Y(n22) );
  oa4f3 U113 ( .A(n262), .B(rg_leakage_table_6[1]), .C(rg_leakage_table_2[1]), 
        .D(n264), .Y(n28) );
  oa4f3 U114 ( .A(n263), .B(rg_leakage_table_4[0]), .C(rg_leakage_table_0[0]), 
        .D(n265), .Y(n32) );
  oa4f3 U115 ( .A(n262), .B(rg_leakage_table_6[0]), .C(rg_leakage_table_2[0]), 
        .D(n264), .Y(n31) );
  or2c3 U116 ( .A(n32), .B(n31), .Y(n43) );
  or2b2 U117 ( .B(vin1[0]), .A(n43), .Y(n226) );
  xor2a2 U118 ( .A(vin1[0]), .B(n43), .Y(n48) );
  inv1a3 U119 ( .A(n47), .Y(n46) );
  or2c1 U120 ( .A(n49), .B(vin2[1]), .Y(n51) );
  inv1a1 U121 ( .A(vin2[0]), .Y(n50) );
  or2c1 U122 ( .A(n51), .B(n50), .Y(n56) );
  inv1a1 U123 ( .A(vin2[2]), .Y(n52) );
  or2c1 U124 ( .A(n52), .B(vin1[2]), .Y(n55) );
  inv1a1 U125 ( .A(vin2[1]), .Y(n53) );
  or2c1 U126 ( .A(n53), .B(vin1[1]), .Y(n54) );
  inv1a1 U127 ( .A(vin1[3]), .Y(n57) );
  or2c1 U128 ( .A(n57), .B(vin2[3]), .Y(n60) );
  inv1a1 U129 ( .A(vin1[2]), .Y(n58) );
  or2c1 U130 ( .A(n58), .B(vin2[2]), .Y(n59) );
  or3d3 U131 ( .A(n61), .B(n60), .C(n59), .Y(n64) );
  inv1a1 U132 ( .A(vin2[3]), .Y(n62) );
  or2c1 U133 ( .A(n62), .B(vin1[3]), .Y(n63) );
  or2c3 U134 ( .A(n64), .B(n63), .Y(n67) );
  inv1a1 U135 ( .A(vin1[4]), .Y(n65) );
  or2c1 U136 ( .A(n65), .B(vin2[4]), .Y(n66) );
  or2c3 U137 ( .A(n67), .B(n66), .Y(n69) );
  oa4d1 U138 ( .B(vin2[4]), .A(vin1[4]), .D(vin2[5]), .C(vin1[5]), .Y(n68) );
  or2c3 U139 ( .A(n69), .B(n68), .Y(n71) );
  oa4d1 U140 ( .B(vin1[5]), .A(vin2[5]), .D(vin1[6]), .C(vin2[6]), .Y(n70) );
  or2c3 U141 ( .A(n71), .B(n70), .Y(n74) );
  inv1a1 U142 ( .A(vin2[6]), .Y(n72) );
  or2c1 U143 ( .A(n72), .B(vin1[6]), .Y(n73) );
  or2c3 U144 ( .A(n74), .B(n73), .Y(n76) );
  or2c1 U145 ( .A(n187), .B(vin1[7]), .Y(n75) );
  or2c3 U146 ( .A(n76), .B(n75), .Y(n78) );
  or2c1 U147 ( .A(n103), .B(vin2[7]), .Y(n77) );
  inv1a1 U148 ( .A(rg_bypass_mean), .Y(n127) );
  oa1f3 U149 ( .A(n78), .B(n77), .C(n127), .Y(n79) );
  buf1a9 U150 ( .A(n79), .Y(n104) );
  mx2a6 U151 ( .D0(vin2[0]), .D1(vin1[0]), .S(n104), .Y(bigger[0]) );
  xor2b2 U152 ( .A(n91), .B(n92), .Y(n85) );
  xor2b2 U153 ( .A(n85), .B(n90), .Y(mean[6]) );
  xor2b2 U154 ( .A(n_zz_15[3]), .B(n_zz_16[3]), .Y(n87) );
  xor2b2 U155 ( .A(n87), .B(n86), .Y(mean[2]) );
  fa1a2 U156 ( .A(n_zz_16[5]), .B(n_zz_15[5]), .CI(n88), .CO(n89), .S(mean[4])
         );
  fa1a2 U157 ( .A(n_zz_16[6]), .B(n_zz_15[6]), .CI(n89), .CO(n90), .S(mean[5])
         );
  fa1a2 U158 ( .A(n_zz_16[4]), .B(n_zz_15[4]), .CI(n95), .CO(n88), .S(mean[3])
         );
  fa1a2 U159 ( .A(n_zz_16[1]), .B(n_zz_15[1]), .CI(n96), .CO(n97), .S(mean[0])
         );
  mx2a9 U160 ( .D0(vin1[1]), .D1(vin2[1]), .S(n104), .Y(smaller[1]) );
  mx2a6 U161 ( .D0(vin1[0]), .D1(vin2[0]), .S(n104), .Y(smaller[0]) );
  mulpa1b1 U162 ( .X0(n_zz_19[2]), .X1(n98), .S(valid_num[1]), .Z(valid_num[0]), .M(n_zz_19[1]), .P(n101) );
  xor3b3 U163 ( .A(v_cnt_2_), .B(n99), .C(valid_num[2]), .Y(n100) );
  ao2i1 U164 ( .A(n_zz_19[1]), .B(valid_num[0]), .C(n101), .D(n100), .Y(n267)
         );
  buf1a6 U165 ( .A(resetn), .Y(n271) );
  buf1a6 U166 ( .A(resetn), .Y(n270) );
  buf1a6 U167 ( .A(resetn), .Y(n275) );
  buf1a6 U168 ( .A(resetn), .Y(n274) );
  buf1a6 U169 ( .A(resetn), .Y(n273) );
  buf1a6 U170 ( .A(resetn), .Y(n272) );
  or2c1 U171 ( .A(rg_bypass_mean), .B(vin2[7]), .Y(n102) );
  or2c3 U172 ( .A(n103), .B(n102), .Y(smaller[7]) );
  or2c15 U173 ( .A(en), .B(vin_vld), .Y(n268) );
  inv1a3 U174 ( .A(n268), .Y(N135) );
  oa1f3 U175 ( .A(n103), .B(rg_bypass_mean), .C(n187), .Y(n277) );
  oa1f3 U176 ( .A(n239), .B(n256), .C(n258), .Y(N223) );
  inv1a1 U177 ( .A(n_zz_16[6]), .Y(n125) );
  inv1a1 U178 ( .A(smaller[5]), .Y(n123) );
  or2c1 U179 ( .A(smaller[6]), .B(n125), .Y(n122) );
  inv1a1 U180 ( .A(n_zz_16[4]), .Y(n120) );
  or2c1 U181 ( .A(n123), .B(n_zz_16[5]), .Y(n119) );
  inv1a1 U182 ( .A(n_zz_16[1]), .Y(n107) );
  inv1a1 U183 ( .A(n_zz_16[0]), .Y(n105) );
  ao4f3 U184 ( .A(smaller[1]), .B(n107), .C(smaller[0]), .D(n105), .Y(n110) );
  inv1a1 U185 ( .A(n_zz_16[2]), .Y(n106) );
  or2c1 U186 ( .A(smaller[2]), .B(n106), .Y(n109) );
  or2c1 U187 ( .A(smaller[1]), .B(n107), .Y(n108) );
  or3d1 U188 ( .A(n110), .B(n109), .C(n108), .Y(n115) );
  inv1a1 U189 ( .A(smaller[3]), .Y(n111) );
  or2c1 U190 ( .A(n111), .B(n_zz_16[3]), .Y(n114) );
  inv1a1 U191 ( .A(smaller[2]), .Y(n112) );
  or2c1 U192 ( .A(n112), .B(n_zz_16[2]), .Y(n113) );
  or3d1 U193 ( .A(n115), .B(n114), .C(n113), .Y(n117) );
  or2c1 U194 ( .A(n117), .B(n116), .Y(n118) );
  ao2i3 U195 ( .A(smaller[4]), .B(n120), .C(n119), .D(n118), .Y(n121) );
  ao2i3 U196 ( .A(n_zz_16[5]), .B(n123), .C(n122), .D(n121), .Y(n124) );
  ao1f2 U197 ( .A(smaller[6]), .B(n125), .C(n124), .Y(n126) );
  ao1f2 U198 ( .A(n91), .B(smaller[7]), .C(n126), .Y(n129) );
  and2c3 U199 ( .A(n252), .B(v_cnt_2_), .Y(n157) );
  oa1f3 U200 ( .A(smaller[7]), .B(n91), .C(n157), .Y(n128) );
  or2a1 U201 ( .A(n268), .B(n127), .Y(n158) );
  oa1f3 U202 ( .A(n129), .B(n128), .C(n158), .Y(N242) );
  and2c3 U203 ( .A(n268), .B(n256), .Y(N237) );
  inv1a1 U204 ( .A(n277), .Y(n156) );
  inv1a1 U205 ( .A(n_zz_15[1]), .Y(n136) );
  or2c1 U206 ( .A(bigger[1]), .B(n136), .Y(n132) );
  inv1a1 U207 ( .A(n_zz_15[0]), .Y(n130) );
  or2c1 U208 ( .A(bigger[0]), .B(n130), .Y(n131) );
  or2c3 U209 ( .A(n132), .B(n131), .Y(n135) );
  inv1a1 U210 ( .A(bigger[2]), .Y(n133) );
  or2c1 U211 ( .A(n133), .B(n_zz_15[2]), .Y(n134) );
  ao2i3 U212 ( .A(bigger[1]), .B(n136), .C(n135), .D(n134), .Y(n139) );
  inv1a1 U213 ( .A(n_zz_15[2]), .Y(n137) );
  oa4f3 U214 ( .A(bigger[2]), .B(n137), .C(bigger[3]), .D(n81), .Y(n138) );
  or2c1 U215 ( .A(n139), .B(n138), .Y(n144) );
  inv1a1 U216 ( .A(bigger[4]), .Y(n140) );
  or2c1 U217 ( .A(n140), .B(n_zz_15[4]), .Y(n143) );
  inv1a1 U218 ( .A(bigger[3]), .Y(n141) );
  or2c1 U219 ( .A(n141), .B(n_zz_15[3]), .Y(n142) );
  inv1a1 U220 ( .A(n_zz_15[4]), .Y(n146) );
  inv1a1 U221 ( .A(n_zz_15[5]), .Y(n145) );
  oa4f3 U222 ( .A(bigger[4]), .B(n146), .C(bigger[5]), .D(n145), .Y(n147) );
  or2c3 U223 ( .A(n148), .B(n147), .Y(n152) );
  or2c1 U224 ( .A(n154), .B(n_zz_15[6]), .Y(n151) );
  inv1a1 U225 ( .A(bigger[5]), .Y(n149) );
  or2c1 U226 ( .A(n149), .B(n_zz_15[5]), .Y(n150) );
  or3d3 U227 ( .A(n152), .B(n151), .C(n150), .Y(n153) );
  ao1f2 U228 ( .A(n_zz_15[6]), .B(n154), .C(n153), .Y(n155) );
  ao1f2 U229 ( .A(n_zz_15_8), .B(n156), .C(n155), .Y(n160) );
  oa1d2 U230 ( .A(n277), .B(n92), .C(n157), .Y(n159) );
  oa1f3 U231 ( .A(n160), .B(n159), .C(n158), .Y(N241) );
  and2c3 U232 ( .A(n268), .B(n261), .Y(N239) );
  and2c3 U233 ( .A(n268), .B(n239), .Y(N235) );
  and2c3 U234 ( .A(n268), .B(n252), .Y(N233) );
  ao1d6 U235 ( .A(n162), .B(n228), .C(n227), .Y(N204) );
  oa4f3 U236 ( .A(n265), .B(rg_leakage_table_1[0]), .C(n264), .D(
        rg_leakage_table_3[0]), .Y(n183) );
  oa4f3 U237 ( .A(n262), .B(rg_leakage_table_7[0]), .C(n263), .D(
        rg_leakage_table_5[0]), .Y(n182) );
  or2c1 U238 ( .A(n183), .B(n182), .Y(n217) );
  or2b2 U239 ( .B(vin2[0]), .A(n217), .Y(n230) );
  fa1a2 U240 ( .A(n187), .B(n186), .CI(n185), .CO(n184), .S(n188) );
  inv1a3 U241 ( .A(n188), .Y(n190) );
  and2c6 U242 ( .A(n266), .B(n190), .Y(n233) );
  ao1f3 U243 ( .A(n233), .B(n191), .C(n231), .Y(n246) );
  or2c1 U244 ( .A(N204), .B(n252), .Y(n192) );
  ao1f2 U245 ( .A(n246), .B(n252), .C(n192), .Y(N154) );
  or2c1 U246 ( .A(N204), .B(n239), .Y(n193) );
  ao1f2 U247 ( .A(n246), .B(n239), .C(n193), .Y(N174) );
  xor2b2 U248 ( .A(n24), .B(vin1[3]), .Y(n195) );
  xor2b2 U249 ( .A(n195), .B(n194), .Y(n196) );
  ao1d6 U250 ( .A(n196), .B(n228), .C(n227), .Y(N203) );
  ao1f3 U251 ( .A(n233), .B(n198), .C(n231), .Y(n243) );
  or2c1 U252 ( .A(N203), .B(n239), .Y(n199) );
  ao1f2 U253 ( .A(n243), .B(n239), .C(n199), .Y(N173) );
  fa1a2 U254 ( .A(vin1[2]), .B(n27), .CI(n200), .CO(n194), .S(n201) );
  ao1d6 U255 ( .A(n201), .B(n228), .C(n227), .Y(N202) );
  ao1f3 U256 ( .A(n233), .B(n203), .C(n231), .Y(n257) );
  or2c1 U257 ( .A(N202), .B(n261), .Y(n204) );
  ao1f2 U258 ( .A(n257), .B(n261), .C(n204), .Y(N212) );
  xor2b2 U259 ( .A(n18), .B(vin1[5]), .Y(n206) );
  xor2b2 U260 ( .A(n206), .B(n205), .Y(n207) );
  ao1d6 U261 ( .A(n207), .B(n228), .C(n227), .Y(N205) );
  fa1a2 U262 ( .A(vin2[5]), .B(n170), .CI(n208), .CO(n213), .S(n209) );
  ao1f3 U263 ( .A(n233), .B(n209), .C(n231), .Y(n241) );
  or2c1 U264 ( .A(N205), .B(n261), .Y(n210) );
  ao1f2 U265 ( .A(n241), .B(n261), .C(n210), .Y(N215) );
  ao1d6 U266 ( .A(n212), .B(n228), .C(n227), .Y(N206) );
  fa1a2 U267 ( .A(vin2[6]), .B(n167), .CI(n213), .CO(n185), .S(n214) );
  ao1f3 U268 ( .A(n233), .B(n214), .C(n231), .Y(n250) );
  or2c1 U269 ( .A(N206), .B(n239), .Y(n215) );
  ao1f2 U270 ( .A(n250), .B(n239), .C(n215), .Y(N176) );
  or2c1 U271 ( .A(N206), .B(n256), .Y(n216) );
  ao1f2 U272 ( .A(n250), .B(n256), .C(n216), .Y(N196) );
  xor2a2 U273 ( .A(vin2[0]), .B(n217), .Y(n218) );
  ao1f3 U274 ( .A(n233), .B(n218), .C(n231), .Y(n254) );
  ao1f2 U275 ( .A(n254), .B(n252), .C(n219), .Y(N150) );
  or2c1 U276 ( .A(N206), .B(n261), .Y(n220) );
  ao1f2 U277 ( .A(n250), .B(n261), .C(n220), .Y(N216) );
  or2c1 U278 ( .A(N200), .B(n261), .Y(n221) );
  ao1f2 U279 ( .A(n254), .B(n261), .C(n221), .Y(N210) );
  or2c1 U280 ( .A(N202), .B(n239), .Y(n222) );
  ao1f2 U281 ( .A(n257), .B(n239), .C(n222), .Y(N172) );
  or2c1 U282 ( .A(N205), .B(n239), .Y(n223) );
  ao1f2 U283 ( .A(n241), .B(n239), .C(n223), .Y(N175) );
  or2c1 U284 ( .A(N203), .B(n252), .Y(n224) );
  ao1f2 U285 ( .A(n243), .B(n252), .C(n224), .Y(N153) );
  or2c1 U286 ( .A(N203), .B(n256), .Y(n225) );
  ao1f2 U287 ( .A(n243), .B(n256), .C(n225), .Y(N193) );
  fa1a2 U288 ( .A(vin1[1]), .B(n30), .CI(n226), .CO(n200), .S(n229) );
  ao1d6 U289 ( .A(n229), .B(n228), .C(n227), .Y(N201) );
  fa1a2 U290 ( .A(vin2[1]), .B(n1), .CI(n230), .CO(n202), .S(n232) );
  ao1f3 U291 ( .A(n233), .B(n232), .C(n231), .Y(n248) );
  or2c1 U292 ( .A(N201), .B(n256), .Y(n234) );
  ao1f2 U293 ( .A(n248), .B(n256), .C(n234), .Y(N191) );
  or2c1 U294 ( .A(N204), .B(n256), .Y(n235) );
  ao1f2 U295 ( .A(n246), .B(n256), .C(n235), .Y(N194) );
  or2c1 U296 ( .A(N200), .B(n239), .Y(n236) );
  ao1f2 U297 ( .A(n254), .B(n239), .C(n236), .Y(N170) );
  or2c1 U298 ( .A(N205), .B(n256), .Y(n237) );
  ao1f2 U299 ( .A(n241), .B(n256), .C(n237), .Y(N195) );
  or2c1 U300 ( .A(N201), .B(n239), .Y(n238) );
  ao1f2 U301 ( .A(n248), .B(n239), .C(n238), .Y(N171) );
  or2c1 U302 ( .A(N205), .B(n252), .Y(n240) );
  ao1f2 U303 ( .A(n241), .B(n252), .C(n240), .Y(N155) );
  or2c1 U304 ( .A(N203), .B(n261), .Y(n242) );
  ao1f2 U305 ( .A(n243), .B(n261), .C(n242), .Y(N213) );
  or2c1 U306 ( .A(N201), .B(n252), .Y(n244) );
  ao1f2 U307 ( .A(n248), .B(n252), .C(n244), .Y(N151) );
  or2c1 U308 ( .A(N204), .B(n261), .Y(n245) );
  ao1f2 U309 ( .A(n246), .B(n261), .C(n245), .Y(N214) );
  or2c1 U310 ( .A(N201), .B(n261), .Y(n247) );
  ao1f2 U311 ( .A(n248), .B(n261), .C(n247), .Y(N211) );
  or2c1 U312 ( .A(N206), .B(n252), .Y(n249) );
  ao1f2 U313 ( .A(n250), .B(n252), .C(n249), .Y(N156) );
  or2c1 U314 ( .A(N202), .B(n252), .Y(n251) );
  ao1f2 U315 ( .A(n257), .B(n252), .C(n251), .Y(N152) );
  or2c1 U316 ( .A(N200), .B(n256), .Y(n253) );
  ao1f2 U317 ( .A(n254), .B(n256), .C(n253), .Y(N190) );
  or2c1 U318 ( .A(N202), .B(n256), .Y(n255) );
  ao1f2 U319 ( .A(n257), .B(n256), .C(n255), .Y(N192) );
  inv1a1 U320 ( .A(v_cnt_2_), .Y(n260) );
  and2c1 U321 ( .A(n261), .B(n260), .Y(n259) );
  oa2i2 U322 ( .A(n261), .B(n260), .C(n259), .D(n258), .Y(N224) );
  mx2a1 U323 ( .D0(n42), .D1(n266), .S(n262), .Y(N217) );
  mx2a1 U324 ( .D0(n42), .D1(n266), .S(n263), .Y(N197) );
  mx2a1 U325 ( .D0(n42), .D1(n266), .S(n264), .Y(N177) );
  mx2a1 U326 ( .D0(n42), .D1(n266), .S(n265), .Y(N157) );
  and2c1 U327 ( .A(n268), .B(n9), .Y(finish) );
endmodule


module SNPS_CLOCK_GATE_HIGH_dotVn_2 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3310;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3310) );
  and2a3 main_gate ( .A(net3310), .B(CLK), .Y(ENCLK) );
endmodule


module dotVn_2 ( en, rg_bypass_mean, rg_sin_table_0, rg_sin_table_1, 
        rg_sin_table_2, rg_sin_table_3, rg_sin_table_4, rg_sin_table_5, 
        rg_sin_table_6, rg_sin_table_7, rg_cos_table_0, rg_cos_table_1, 
        rg_cos_table_2, rg_cos_table_3, rg_cos_table_4, rg_cos_table_5, 
        rg_cos_table_6, rg_cos_table_7, vn_vld, vn_in_0, vn_in_1, vn_in_2, 
        vn_in_3, vn_in_4, vn_in_5, vn_in_6, vn_in_7, psum_out1, psum_out2, 
        psum_vld, valid_num, mean, clk, resetn );
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
  input en, rg_bypass_mean, vn_vld, clk, resetn;
  output psum_vld;
  wire   n_zz_10_2_, n_zz_10_1_, n_zz_10_0_, n_zz_12_2_, n_zz_12_1_,
         n_zz_12_0_, mac_en, N142, N143, N144, N145, N146, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N157, N158, N159, N160,
         N161, N162, N163, N164, N165, N166, N167, N168, N169, N170, N171,
         N172, N173, N174, N175, N176, N177, N178, N179, N181, N182, net3316,
         n182, n183, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475,
         n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486,
         n487, n488, n489, n490, n491, n492, n493, n494, n495, n496, n497,
         n498, n499, n500, n501, n502, n503, n504, n505, n506, n507, n508,
         n509, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, n541,
         n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552,
         n553, n554, n555, n556, n557, n558, n559, n560, n561, n562, n563,
         n564, n565, n566, n567, n568, n569, n570, n571, n572, n573, n574,
         n575, n576, n577, n578, n579, n580, n581, n582, n583, n584, n585,
         n586, n587, n588, n589, n590, n591, n592, n593, n594, n595, n596,
         n597, n598, n599, n600, n601, n602, n603, n604, n605, n606, n607,
         n608, n609, n610, n611, n612, n613, n614, n615, n616, n617, n618,
         n619, n620, n621, n622, n623, n624, n625, n626, n627, n628, n629,
         n630, n631, n632, n633, n634, n635, n636, n637, n638, n639, n640,
         n641, n642, n643, n644, n645, n646, n647, n648, n649, n650, n651,
         n652, n653, n654, n655, n656, n657, n658, n659, n660, n661, n662,
         n663, n664, n665, n666, n667, n668, n669, n670, n671, n672, n673,
         n674, n675, n676, n677, n678, n679, n680, n681, n682, n683, n684,
         n685, n686, n687, n688, n689, n690, n691, n692, n693, n694, n695,
         n696, n697, n698, n699, n700, n701, n702, n703, n704, n705, n706,
         n707, n708, n709, n710, n711, n712, n713, n714, n715, n716, n717,
         n718, n719, n720, n721, n722, n723, n724, n725, n726, n727, n728,
         n729, n730, n731, n732, n733, n734, n735, n736, n737, n738, n739,
         n740, n741, n742, n743, n744, n745, n746, n747, n748, n749, n750,
         n751, n752, n753, n754, n755, n756, n757, n758, n759, n760, n761,
         n762, n763, n764, n765, n766, n767, n768, n769, n770, n771, n772,
         n773, n774, n775, n776, n777, n778, n779, n780, n781, n782, n783,
         n784, n785, n786, n787, n788, n789, n790, n791, n792, n793, n794,
         n795, n796, n797, n798, n799, n800, n801, n802, n803, n804, n805,
         n806, n807, n808, n809, n810, n811, n812, n813, n814, n815, n816,
         n817, n818, n819, n820, n821, n822, n823, n824, n825, n826, n827,
         n828, n829, n830, n831, n832, n833, n834, n835, n836, n837, n838,
         n839, n840, n841, n842, n843, n844, n845, n846, n847, n848, n849,
         n850, n851, n852, n853, n854, n855, n856, n857, n858, n859, n860,
         n861, n862, n863, n864, n865, n866, n867, n868, n869, n870, n871,
         n872, n873, n874, n875, n876, n877, n878, n879, n880, n881, n882,
         n883, n884, n885, n886, n887, n888, n889, n890, n891, n892, n893,
         n894, n895, n896, n897, n898, n899, n900, n901, n902, n903, n904,
         n905, n906, n907, n908, n909, n910, n911, n912, n913, n914, n915,
         n916, n917, n918, n919, n920, n921, n922, n923, n924, n925, n926,
         n927, n928, n929, n930, n931, n932, n933, n934, n935, n936, n937,
         n938, n939, n940, n941, n942, n943, n944, n945, n946, n947, n948,
         n949, n950, n951, n952, n953, n954, n955, n956, n957, n958, n959,
         n960, n961, n962, n963, n964, n965, n966, n967, n968, n969, n970,
         n971, n972, n973, n974, n975, n976, n977, n978, n979, n980, n981,
         n982, n983, n984, n985, n986, n987, n988, n989, n990, n991, n992,
         n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003,
         n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013,
         n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023,
         n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033,
         n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043,
         n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053,
         n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063,
         n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073,
         n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083,
         n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093,
         n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103,
         n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113,
         n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123;
  wire   [14:0] psum1;
  wire   [14:0] psum2;
  wire   [2:0] mac_cnt;

  SNPS_CLOCK_GATE_HIGH_dotVn_2 clk_gate_psum2_reg ( .CLK(clk), .EN(mac_en), 
        .ENCLK(net3316) );
  fdf2a3 mac_en_reg ( .D(n183), .CLK(clk), .CLR(n1121), .Q(mac_en) );
  fdf2a3 psum2_reg_12_ ( .D(N173), .CLK(net3316), .CLR(n1121), .Q(psum2[12])
         );
  fdf2a3 psum2_reg_10_ ( .D(N171), .CLK(net3316), .CLR(resetn), .Q(psum2[10])
         );
  fdf2a3 psum2_reg_9_ ( .D(N170), .CLK(net3316), .CLR(resetn), .Q(psum2[9]) );
  fdf2a3 psum2_reg_8_ ( .D(N169), .CLK(net3316), .CLR(resetn), .Q(psum2[8]) );
  fdf2a3 psum2_reg_7_ ( .D(N168), .CLK(net3316), .CLR(resetn), .Q(psum2[7]) );
  fdf2a3 psum2_reg_6_ ( .D(N167), .CLK(net3316), .CLR(resetn), .Q(psum2[6]) );
  fdf2a3 psum2_reg_5_ ( .D(N166), .CLK(net3316), .CLR(resetn), .Q(psum2[5]) );
  fdf2a3 psum2_reg_0_ ( .D(N161), .CLK(net3316), .CLR(n1121), .Q(psum2[0]) );
  fdf2a3 psum1_reg_12_ ( .D(N154), .CLK(net3316), .CLR(n1121), .Q(psum1[12])
         );
  fdf2a3 psum1_reg_11_ ( .D(N153), .CLK(net3316), .CLR(n1121), .Q(psum1[11])
         );
  fdf2a3 psum1_reg_10_ ( .D(N152), .CLK(net3316), .CLR(n1121), .Q(psum1[10])
         );
  fdf2a3 psum1_reg_9_ ( .D(N151), .CLK(net3316), .CLR(n1121), .Q(psum1[9]) );
  fdf2a3 psum1_reg_8_ ( .D(N150), .CLK(net3316), .CLR(n1122), .Q(psum1[8]) );
  fdf2a3 psum1_reg_7_ ( .D(N149), .CLK(net3316), .CLR(n1122), .Q(psum1[7]) );
  fdf2a3 psum1_reg_6_ ( .D(N148), .CLK(net3316), .CLR(n1122), .Q(psum1[6]) );
  fdf2a3 psum1_reg_5_ ( .D(N147), .CLK(net3316), .CLR(n1122), .Q(psum1[5]) );
  fdf2a3 psum1_reg_4_ ( .D(N146), .CLK(net3316), .CLR(n1122), .Q(psum1[4]) );
  fdf2a3 psum1_reg_0_ ( .D(N142), .CLK(net3316), .CLR(n1122), .Q(psum1[0]) );
  fdf1c2 finish_reg ( .D(n182), .CLK(clk), .QN(psum_vld) );
  fdf2a6 mac_cnt_reg_0_ ( .D(n1123), .CLK(clk), .CLR(n1122), .Q(mac_cnt[0]) );
  fdf2a6 mac_cnt_reg_1_ ( .D(N181), .CLK(clk), .CLR(n1122), .Q(mac_cnt[1]) );
  fdf2a15 psum1_reg_15_ ( .D(N157), .CLK(net3316), .CLR(n1121), .Q(n_zz_10_0_)
         );
  fdf2a3 psum1_reg_1_ ( .D(N143), .CLK(net3316), .CLR(n1122), .Q(psum1[1]) );
  fdf2a3 psum2_reg_1_ ( .D(N162), .CLK(net3316), .CLR(resetn), .Q(psum2[1]) );
  fdf2a3 psum1_reg_2_ ( .D(N144), .CLK(net3316), .CLR(n1122), .Q(psum1[2]) );
  fdf2a3 psum2_reg_2_ ( .D(N163), .CLK(net3316), .CLR(resetn), .Q(psum2[2]) );
  fdf2a3 psum2_reg_3_ ( .D(N164), .CLK(net3316), .CLR(resetn), .Q(psum2[3]) );
  fdf2a3 psum1_reg_3_ ( .D(N145), .CLK(net3316), .CLR(n1122), .Q(psum1[3]) );
  fdf2a3 psum2_reg_4_ ( .D(N165), .CLK(net3316), .CLR(resetn), .Q(psum2[4]) );
  fdf2a3 psum2_reg_15_ ( .D(N176), .CLK(net3316), .CLR(resetn), .Q(n_zz_12_0_)
         );
  fdf2a9 psum2_reg_14_ ( .D(N175), .CLK(net3316), .CLR(resetn), .Q(psum2[14])
         );
  fdf2a3 psum2_reg_11_ ( .D(N172), .CLK(net3316), .CLR(resetn), .Q(psum2[11])
         );
  fdf2a6 mac_cnt_reg_2_ ( .D(N182), .CLK(clk), .CLR(n1122), .Q(mac_cnt[2]) );
  fdf2a9 psum1_reg_16_ ( .D(N158), .CLK(net3316), .CLR(n1121), .Q(n_zz_10_1_)
         );
  fdf2a9 psum1_reg_17_ ( .D(N159), .CLK(net3316), .CLR(n1121), .Q(n_zz_10_2_)
         );
  fdf2a9 psum1_reg_18_ ( .D(N160), .CLK(net3316), .CLR(n1121), .Q(
        psum_out1[15]) );
  fdf2a9 psum2_reg_18_ ( .D(N179), .CLK(net3316), .CLR(n1122), .Q(
        psum_out2[15]) );
  fdf2a9 psum2_reg_16_ ( .D(N177), .CLK(net3316), .CLR(resetn), .Q(n_zz_12_1_)
         );
  fdf2a9 psum2_reg_17_ ( .D(N178), .CLK(net3316), .CLR(n1122), .Q(n_zz_12_2_)
         );
  fdf2a9 psum1_reg_13_ ( .D(N155), .CLK(net3316), .CLR(n1121), .Q(psum1[13])
         );
  fdf2a3 psum2_reg_13_ ( .D(N174), .CLK(net3316), .CLR(n1121), .Q(psum2[13])
         );
  fdf2a9 psum1_reg_14_ ( .D(N156), .CLK(net3316), .CLR(n1121), .Q(psum1[14])
         );
  ao1d2 U3 ( .A(n728), .B(n1106), .C(n919), .Y(N177) );
  ao1d3 U4 ( .A(n841), .B(n920), .C(n874), .Y(N155) );
  ao1d3 U5 ( .A(n875), .B(n920), .C(n874), .Y(N159) );
  mx2a3 U6 ( .D0(n679), .D1(n678), .S(n920), .Y(N170) );
  mx2a3 U7 ( .D0(n606), .D1(n605), .S(n1106), .Y(N150) );
  mx2a3 U8 ( .D0(n654), .D1(n653), .S(n1117), .Y(N171) );
  mx2a3 U9 ( .D0(n591), .D1(n590), .S(n1117), .Y(N154) );
  mx2a3 U10 ( .D0(n583), .D1(n582), .S(n920), .Y(N169) );
  xor2b2 U11 ( .A(n797), .B(n796), .Y(n798) );
  xor2a2 U12 ( .A(n733), .B(n732), .Y(n734) );
  xor2a2 U13 ( .A(n324), .B(n323), .Y(n364) );
  ao1d2 U14 ( .A(n917), .B(n753), .C(n752), .Y(n754) );
  buf1a2 U15 ( .A(n917), .Y(n796) );
  or2c1 U16 ( .A(n913), .B(n912), .Y(n914) );
  or2c1 U17 ( .A(n362), .B(n361), .Y(n585) );
  or2c1 U18 ( .A(n726), .B(n725), .Y(n792) );
  oa1c3 U19 ( .A(n724), .B(n723), .C(n722), .Y(n795) );
  or2c9 U20 ( .A(n702), .B(n701), .Y(n917) );
  or2c1 U21 ( .A(n594), .B(n351), .Y(n353) );
  inv1a1 U22 ( .A(n828), .Y(n808) );
  or2c1 U23 ( .A(n357), .B(n356), .Y(n801) );
  and2c3 U24 ( .A(n1057), .B(n939), .Y(n244) );
  or2c1 U25 ( .A(n575), .B(n577), .Y(n925) );
  and2c6 U26 ( .A(n241), .B(n242), .Y(n939) );
  or2c1 U27 ( .A(n568), .B(n567), .Y(n977) );
  ao1f2 U28 ( .A(n1097), .B(n1100), .C(n1098), .Y(n1089) );
  or2c1 U29 ( .A(n836), .B(n849), .Y(n321) );
  or2c1 U30 ( .A(n913), .B(n889), .Y(n713) );
  inv1a1 U31 ( .A(n1003), .Y(n564) );
  inv1a1 U32 ( .A(n825), .Y(n810) );
  inv1a1 U33 ( .A(n893), .Y(n913) );
  inv1a1 U34 ( .A(n844), .Y(n836) );
  ao1f2 U35 ( .A(psum2[8]), .B(n635), .C(n634), .Y(n637) );
  or2c1 U36 ( .A(n572), .B(psum2[6]), .Y(n573) );
  ao1f2 U37 ( .A(n572), .B(psum2[6]), .C(n571), .Y(n574) );
  or2c1 U38 ( .A(n541), .B(n540), .Y(n562) );
  xor2b2 U39 ( .A(n419), .B(n420), .Y(n560) );
  or2c1 U40 ( .A(n424), .B(n423), .Y(n425) );
  or2c1 U41 ( .A(n329), .B(n328), .Y(n1109) );
  xor2b2 U42 ( .A(n512), .B(n511), .Y(n571) );
  ao4f6 U43 ( .A(n682), .B(n705), .C(n703), .D(n19), .Y(n726) );
  ao4f6 U44 ( .A(n292), .B(n705), .C(n313), .D(n19), .Y(n362) );
  or2a1 U45 ( .A(n493), .B(n492), .Y(n515) );
  or2c1 U46 ( .A(n553), .B(n552), .Y(n1036) );
  inv1a1 U47 ( .A(n293), .Y(n289) );
  inv1a1 U48 ( .A(n424), .Y(n422) );
  inv1a1 U49 ( .A(n510), .Y(n488) );
  or2c1 U50 ( .A(n331), .B(psum1[1]), .Y(n134) );
  ao1d2 U51 ( .A(n133), .B(n146), .C(n145), .Y(n135) );
  inv1a1 U52 ( .A(n449), .Y(n13) );
  inv1a1 U53 ( .A(n523), .Y(n416) );
  inv1a1 U54 ( .A(n415), .Y(n417) );
  inv1a9 U55 ( .A(n12), .Y(n10) );
  inv1a1 U56 ( .A(n9), .Y(n8) );
  or2c9 U57 ( .A(n625), .B(n120), .Y(n626) );
  or2c9 U58 ( .A(n208), .B(n704), .Y(n705) );
  inv1a1 U59 ( .A(n455), .Y(n451) );
  buf1a15 U60 ( .A(n428), .Y(n9) );
  inv1a3 U61 ( .A(n609), .Y(n12) );
  inv1a1 U62 ( .A(n129), .Y(n130) );
  buf1a9 U63 ( .A(n497), .Y(n449) );
  inv1a1 U64 ( .A(n198), .Y(n175) );
  inv1a1 U65 ( .A(mean[2]), .Y(n73) );
  inv1a1 U66 ( .A(mean[1]), .Y(n64) );
  buf1a6 U67 ( .A(n440), .Y(n15) );
  buf1a9 U68 ( .A(n408), .Y(n16) );
  or2a3 U69 ( .A(n25), .B(mac_cnt[2]), .Y(n950) );
  inv1a1 U70 ( .A(n_zz_10_1_), .Y(n883) );
  or2a1 U71 ( .A(n172), .B(n171), .Y(n169) );
  xor2b2 U72 ( .A(n9), .B(n454), .Y(n484) );
  or3d3 U73 ( .A(n374), .B(n373), .C(n372), .Y(n607) );
  inv1a1 U74 ( .A(n423), .Y(n421) );
  inv1a1 U75 ( .A(n509), .Y(n489) );
  or2c1 U76 ( .A(n325), .B(psum1[7]), .Y(n261) );
  or2c1 U77 ( .A(n509), .B(n510), .Y(n490) );
  inv1a1 U78 ( .A(n683), .Y(n630) );
  inv1a3 U79 ( .A(n362), .Y(n356) );
  and2c3 U80 ( .A(n567), .B(n568), .Y(n976) );
  inv1a1 U81 ( .A(n1102), .Y(n153) );
  ao1c3 U82 ( .A(n1002), .B(n1005), .C(n564), .Y(n979) );
  ao1f2 U83 ( .A(n1031), .B(n1034), .C(n1032), .Y(n1023) );
  ao1f2 U84 ( .A(n762), .B(n761), .C(n760), .Y(n763) );
  ao1d2 U85 ( .A(n871), .B(n782), .C(n322), .Y(n323) );
  inv1a3 U86 ( .A(n592), .Y(n937) );
  xor2a2 U87 ( .A(n789), .B(n788), .Y(n790) );
  or2c3 U88 ( .A(n363), .B(n68), .Y(n874) );
  mx2a3 U89 ( .D0(n780), .D1(n779), .S(n920), .Y(N172) );
  mx2a3 U90 ( .D0(n835), .D1(n834), .S(n1106), .Y(N152) );
  and2a3 U91 ( .A(n408), .B(vn_in_4[0]), .Y(n1) );
  inv1a9 U92 ( .A(n375), .Y(n14) );
  or2a3 U93 ( .A(n649), .B(n650), .Y(n2) );
  or2a3 U94 ( .A(n302), .B(n303), .Y(n3) );
  ao1f2 U95 ( .A(n308), .B(n827), .C(n307), .Y(n4) );
  or2a1 U96 ( .A(n333), .B(n334), .Y(n5) );
  or2a3 U97 ( .A(n_zz_12_0_), .B(n743), .Y(n6) );
  and2a3 U98 ( .A(n549), .B(psum2[0]), .Y(n7) );
  inv1a3 U99 ( .A(n481), .Y(n482) );
  buf1a9 U100 ( .A(n68), .Y(n11) );
  inv1a2 U101 ( .A(mac_en), .Y(n949) );
  or2c3 U102 ( .A(n201), .B(n200), .Y(n202) );
  ao1f3 U103 ( .A(n199), .B(n198), .C(n197), .Y(n201) );
  mx2a15 U104 ( .D0(n171), .D1(n103), .S(rg_bypass_mean), .Y(n609) );
  ao4f3 U105 ( .A(n454), .B(n480), .C(n452), .D(n14), .Y(n550) );
  or2a1 U106 ( .A(n328), .B(n329), .Y(n327) );
  or2c1 U107 ( .A(n889), .B(n888), .Y(n890) );
  and2c2 U108 ( .A(n949), .B(mac_cnt[0]), .Y(n1123) );
  inv1a3 U109 ( .A(mac_cnt[0]), .Y(n22) );
  ao1d3 U110 ( .A(n866), .B(n920), .C(n874), .Y(N160) );
  ao1d3 U111 ( .A(n790), .B(n920), .C(n874), .Y(N158) );
  ao1d3 U112 ( .A(n852), .B(n920), .C(n874), .Y(N156) );
  ao1d3 U113 ( .A(n364), .B(n920), .C(n874), .Y(N157) );
  ao1d3 U114 ( .A(n734), .B(n1106), .C(n919), .Y(N176) );
  ao1d3 U115 ( .A(n756), .B(n1106), .C(n919), .Y(N178) );
  ao1d3 U116 ( .A(n748), .B(n1106), .C(n919), .Y(N179) );
  or2c3 U117 ( .A(n896), .B(n895), .Y(n897) );
  xor2a2 U118 ( .A(n718), .B(n717), .Y(n728) );
  or2c6 U119 ( .A(n727), .B(n68), .Y(n919) );
  or2a6 U120 ( .A(n691), .B(n690), .Y(n702) );
  inv1a3 U121 ( .A(n803), .Y(n824) );
  ao1d3 U122 ( .A(n642), .B(n641), .C(n640), .Y(n700) );
  inv1a3 U123 ( .A(n600), .Y(n908) );
  inv1a3 U124 ( .A(n724), .Y(n762) );
  inv1a3 U125 ( .A(n639), .Y(n642) );
  and2a3 U126 ( .A(n870), .B(n868), .Y(n854) );
  and2a3 U127 ( .A(n753), .B(n750), .Y(n739) );
  and2c6 U128 ( .A(n531), .B(n532), .Y(n639) );
  or3d3 U129 ( .A(n902), .B(n261), .C(n260), .Y(n298) );
  inv1a3 U130 ( .A(n622), .Y(n974) );
  or2c3 U131 ( .A(n529), .B(n528), .Y(n531) );
  and2c6 U132 ( .A(n643), .B(n644), .Y(n688) );
  xor2a3 U133 ( .A(n256), .B(n262), .Y(n325) );
  or2c3 U134 ( .A(n574), .B(n573), .Y(n578) );
  or2c3 U135 ( .A(n577), .B(psum2[7]), .Y(n528) );
  ao1f3 U136 ( .A(n577), .B(psum2[7]), .C(n575), .Y(n529) );
  and2c2 U137 ( .A(n844), .B(n842), .Y(n847) );
  inv1a3 U138 ( .A(n942), .Y(n1061) );
  and2a3 U139 ( .A(n836), .B(n843), .Y(n837) );
  and2c2 U140 ( .A(n893), .B(n891), .Y(n892) );
  and2c3 U141 ( .A(n562), .B(n542), .Y(n1002) );
  xor3a3 U142 ( .A(n616), .B(n615), .C(n614), .Y(n525) );
  or2c3 U143 ( .A(n426), .B(n425), .Y(n534) );
  or2c3 U144 ( .A(n558), .B(n557), .Y(n1016) );
  ao1d2 U145 ( .A(n422), .B(n421), .C(n420), .Y(n426) );
  or2c3 U146 ( .A(n155), .B(n337), .Y(n1081) );
  buf1a1 U147 ( .A(n1014), .Y(n1015) );
  fa1a3 U148 ( .A(n160), .B(n159), .CI(n158), .CO(n338), .S(n337) );
  ao1d2 U149 ( .A(n539), .B(n538), .C(n544), .Y(n541) );
  or2c3 U150 ( .A(n137), .B(n136), .Y(n157) );
  xor2a3 U151 ( .A(n203), .B(n202), .Y(n204) );
  or2a1 U152 ( .A(n466), .B(n555), .Y(n465) );
  ao1f3 U153 ( .A(n333), .B(psum1[2]), .C(n141), .Y(n137) );
  or2c3 U154 ( .A(n333), .B(psum1[2]), .Y(n136) );
  or2c3 U155 ( .A(n135), .B(n134), .Y(n141) );
  and2a3 U156 ( .A(n458), .B(n457), .Y(n459) );
  ao4e9 U157 ( .B(n482), .A(n523), .C(n498), .D(n522), .Y(n493) );
  or2c3 U158 ( .A(n417), .B(n416), .Y(n418) );
  or2c3 U159 ( .A(n500), .B(n499), .Y(n501) );
  or2a1 U160 ( .A(n549), .B(n550), .Y(n453) );
  or2c3 U161 ( .A(n170), .B(n169), .Y(n174) );
  ha1a3 U162 ( .A(n328), .B(psum1[0]), .CO(n145), .S(n1116) );
  inv1a3 U163 ( .A(n498), .Y(n500) );
  or2c3 U164 ( .A(n130), .B(n375), .Y(n131) );
  inv1a3 U165 ( .A(n147), .Y(n132) );
  inv1a15 U166 ( .A(n36), .Y(n447) );
  or2c3 U167 ( .A(n199), .B(n198), .Y(n200) );
  xor3a3 U168 ( .A(n93), .B(n95), .C(n94), .Y(n65) );
  or2c3 U169 ( .A(n172), .B(n171), .Y(n173) );
  buf1a6 U170 ( .A(n393), .Y(n455) );
  inv1a3 U171 ( .A(mean[4]), .Y(n109) );
  inv1a3 U172 ( .A(mean[3]), .Y(n93) );
  or3d6 U173 ( .A(n34), .B(n33), .C(n32), .Y(n45) );
  and2a3 U174 ( .A(n31), .B(n30), .Y(n34) );
  or3d6 U175 ( .A(n71), .B(n70), .C(n69), .Y(n233) );
  oa1f3 U176 ( .A(n434), .B(vn_in_5[0]), .C(n1), .Y(n31) );
  ao1d2 U177 ( .A(psum1[10]), .B(n956), .C(n955), .Y(psum_out1[10]) );
  ao1d2 U178 ( .A(psum1[13]), .B(n956), .C(n955), .Y(psum_out1[13]) );
  ao1d2 U179 ( .A(psum1[12]), .B(n956), .C(n955), .Y(psum_out1[12]) );
  ao1d2 U180 ( .A(psum1[11]), .B(n956), .C(n955), .Y(psum_out1[11]) );
  ao1d2 U181 ( .A(psum1[0]), .B(n956), .C(n955), .Y(psum_out1[0]) );
  ao1d2 U182 ( .A(psum1[6]), .B(n956), .C(n955), .Y(psum_out1[6]) );
  ao1d2 U183 ( .A(psum1[5]), .B(n956), .C(n955), .Y(psum_out1[5]) );
  ao4f2 U184 ( .A(n952), .B(n951), .C(n950), .D(n949), .Y(N182) );
  buf1a6 U185 ( .A(n51), .Y(n439) );
  and2a3 U186 ( .A(n736), .B(n735), .Y(n737) );
  or2a3 U187 ( .A(n_zz_10_0_), .B(n861), .Y(n21) );
  inv1a9 U188 ( .A(n950), .Y(n438) );
  oa4f3 U189 ( .A(n15), .B(rg_sin_table_1[2]), .C(rg_sin_table_2[2]), .D(n439), 
        .Y(n69) );
  fa1a3 U190 ( .A(n473), .B(n472), .CI(n471), .CO(n561), .S(n557) );
  or2c1 U191 ( .A(n543), .B(psum2[3]), .Y(n540) );
  inv1a1 U192 ( .A(n543), .Y(n538) );
  fa1a3 U193 ( .A(n470), .B(n469), .CI(n468), .CO(n543), .S(n555) );
  or2c9 U194 ( .A(n221), .B(n14), .Y(n480) );
  or2a3 U195 ( .A(n_zz_10_2_), .B(n861), .Y(n868) );
  clk1b6 U196 ( .A(psum1[14]), .Y(n861) );
  or2a3 U197 ( .A(n_zz_12_2_), .B(n743), .Y(n750) );
  clk1b6 U198 ( .A(psum2[14]), .Y(n743) );
  or2c1 U199 ( .A(n731), .B(n6), .Y(n738) );
  or2c1 U200 ( .A(n782), .B(n21), .Y(n853) );
  inv1a9 U201 ( .A(n11), .Y(n1106) );
  buf1a6 U202 ( .A(n37), .Y(n396) );
  inv1a3 U203 ( .A(n502), .Y(n18) );
  inv1a2 U204 ( .A(n522), .Y(n502) );
  xor2b9 U205 ( .A(n609), .B(n207), .Y(n19) );
  ao4f3 U206 ( .A(n234), .B(n705), .C(n254), .D(n19), .Y(n249) );
  xor2b2 U207 ( .A(n609), .B(n207), .Y(n704) );
  xor2b9 U208 ( .A(n119), .B(n497), .Y(n20) );
  and2b2 U209 ( .B(n455), .A(n20), .Y(n470) );
  and2b2 U210 ( .B(n210), .A(n20), .Y(n140) );
  xor2b2 U211 ( .A(n119), .B(n497), .Y(n625) );
  mx2a3 U212 ( .D0(n113), .D1(n112), .S(rg_bypass_mean), .Y(n119) );
  oa1f1 U213 ( .A(n970), .B(mac_en), .C(vn_vld), .Y(n971) );
  and2c15 U214 ( .A(n947), .B(n951), .Y(n434) );
  or2c3 U215 ( .A(n962), .B(mac_cnt[0]), .Y(n947) );
  or2c3 U216 ( .A(n303), .B(n302), .Y(n825) );
  fa1a3 U217 ( .A(n272), .B(n271), .CI(n270), .CO(n283), .S(n262) );
  xor2b2 U218 ( .A(n221), .B(n253), .Y(n129) );
  clk1b9 U219 ( .A(n221), .Y(n36) );
  and2c3 U220 ( .A(n522), .B(n451), .Y(n549) );
  and2b3 U221 ( .B(n210), .A(n522), .Y(n328) );
  inv1a3 U222 ( .A(n809), .Y(n826) );
  or2c15 U223 ( .A(n522), .B(n77), .Y(n523) );
  or2c1 U224 ( .A(n861), .B(n_zz_10_0_), .Y(n783) );
  and2a3 U225 ( .A(n21), .B(n783), .Y(n324) );
  and2c3 U226 ( .A(mac_cnt[0]), .B(mac_cnt[1]), .Y(n26) );
  inv1a2 U227 ( .A(n26), .Y(n961) );
  clk1b6 U228 ( .A(mac_cnt[2]), .Y(n951) );
  and2c6 U229 ( .A(n961), .B(n951), .Y(n408) );
  inv1a3 U230 ( .A(mac_cnt[1]), .Y(n962) );
  oa4f3 U231 ( .A(n408), .B(vn_in_4[1]), .C(n434), .D(vn_in_5[1]), .Y(n24) );
  or2c3 U232 ( .A(n22), .B(mac_cnt[1]), .Y(n959) );
  and2c3 U233 ( .A(n959), .B(mac_cnt[2]), .Y(n51) );
  and2c9 U234 ( .A(n959), .B(n951), .Y(n433) );
  oa4f3 U235 ( .A(n51), .B(vn_in_2[1]), .C(n433), .D(vn_in_6[1]), .Y(n23) );
  and2a3 U236 ( .A(n24), .B(n23), .Y(n29) );
  or2c3 U237 ( .A(mac_cnt[0]), .B(mac_cnt[1]), .Y(n25) );
  and2c3 U238 ( .A(n25), .B(n951), .Y(n37) );
  buf1a9 U239 ( .A(n37), .Y(n435) );
  oa4f3 U240 ( .A(n435), .B(vn_in_7[1]), .C(n438), .D(vn_in_3[1]), .Y(n28) );
  and2c9 U241 ( .A(n947), .B(mac_cnt[2]), .Y(n440) );
  and2a6 U242 ( .A(n26), .B(n951), .Y(n68) );
  oa4f3 U243 ( .A(n440), .B(vn_in_1[1]), .C(n68), .D(vn_in_0[1]), .Y(n27) );
  or3d3 U244 ( .A(n29), .B(n28), .C(n27), .Y(n63) );
  oa4f3 U245 ( .A(n51), .B(vn_in_2[0]), .C(n433), .D(vn_in_6[0]), .Y(n30) );
  oa4f3 U246 ( .A(n37), .B(vn_in_7[0]), .C(n438), .D(vn_in_3[0]), .Y(n33) );
  oa4f3 U247 ( .A(n440), .B(vn_in_1[0]), .C(n68), .D(vn_in_0[0]), .Y(n32) );
  inv1a3 U248 ( .A(mean[0]), .Y(n43) );
  or2a3 U249 ( .A(n45), .B(n43), .Y(n62) );
  mx2a15 U250 ( .D0(n63), .D1(n35), .S(rg_bypass_mean), .Y(n221) );
  buf1a6 U251 ( .A(n433), .Y(n394) );
  oa4f3 U252 ( .A(n394), .B(rg_sin_table_6[4]), .C(rg_sin_table_4[4]), .D(n16), 
        .Y(n39) );
  buf1a6 U253 ( .A(n434), .Y(n395) );
  oa4f3 U254 ( .A(n396), .B(rg_sin_table_7[4]), .C(rg_sin_table_5[4]), .D(n395), .Y(n38) );
  and2a3 U255 ( .A(n39), .B(n38), .Y(n42) );
  oa4f3 U256 ( .A(n68), .B(rg_sin_table_0[4]), .C(rg_sin_table_3[4]), .D(n438), 
        .Y(n41) );
  buf1a6 U257 ( .A(n51), .Y(n399) );
  oa4f3 U258 ( .A(n15), .B(rg_sin_table_1[4]), .C(rg_sin_table_2[4]), .D(n399), 
        .Y(n40) );
  or3d3 U259 ( .A(n42), .B(n41), .C(n40), .Y(n268) );
  xor2b2 U260 ( .A(n447), .B(n268), .Y(n124) );
  xor2b2 U261 ( .A(n43), .B(n45), .Y(n44) );
  mx2a3 U262 ( .D0(n45), .D1(n44), .S(rg_bypass_mean), .Y(n375) );
  oa4f3 U263 ( .A(n394), .B(rg_sin_table_6[5]), .C(rg_sin_table_4[5]), .D(n16), 
        .Y(n47) );
  oa4f3 U264 ( .A(n396), .B(rg_sin_table_7[5]), .C(rg_sin_table_5[5]), .D(n395), .Y(n46) );
  and2a3 U265 ( .A(n47), .B(n46), .Y(n50) );
  oa4f3 U266 ( .A(n11), .B(rg_sin_table_0[5]), .C(rg_sin_table_3[5]), .D(n438), 
        .Y(n49) );
  oa4f3 U267 ( .A(n15), .B(rg_sin_table_1[5]), .C(rg_sin_table_2[5]), .D(n399), 
        .Y(n48) );
  or3d3 U268 ( .A(n50), .B(n49), .C(n48), .Y(n276) );
  xor2b2 U269 ( .A(n221), .B(n276), .Y(n184) );
  ao4f3 U270 ( .A(n124), .B(n480), .C(n184), .D(n14), .Y(n160) );
  oa4f3 U271 ( .A(n408), .B(vn_in_4[3]), .C(n434), .D(vn_in_5[3]), .Y(n53) );
  oa4f3 U272 ( .A(n439), .B(vn_in_2[3]), .C(n433), .D(vn_in_6[3]), .Y(n52) );
  and2a3 U273 ( .A(n53), .B(n52), .Y(n56) );
  oa4f3 U274 ( .A(n435), .B(vn_in_7[3]), .C(n438), .D(vn_in_3[3]), .Y(n55) );
  oa4f3 U275 ( .A(n15), .B(vn_in_1[3]), .C(n11), .D(vn_in_0[3]), .Y(n54) );
  or3d3 U276 ( .A(n56), .B(n55), .C(n54), .Y(n95) );
  oa4f3 U277 ( .A(n16), .B(vn_in_4[2]), .C(n434), .D(vn_in_5[2]), .Y(n58) );
  oa4f3 U278 ( .A(n439), .B(vn_in_2[2]), .C(n433), .D(vn_in_6[2]), .Y(n57) );
  and2a3 U279 ( .A(n58), .B(n57), .Y(n61) );
  oa4f3 U280 ( .A(n435), .B(vn_in_7[2]), .C(n438), .D(vn_in_3[2]), .Y(n60) );
  oa4f3 U281 ( .A(n440), .B(vn_in_1[2]), .C(n11), .D(vn_in_0[2]), .Y(n59) );
  or3d3 U282 ( .A(n61), .B(n60), .C(n59), .Y(n75) );
  fa1a2 U283 ( .A(n64), .B(n63), .CI(n62), .CO(n72), .S(n35) );
  mx2a15 U284 ( .D0(n95), .D1(n65), .S(rg_bypass_mean), .Y(n497) );
  oa4f3 U285 ( .A(n394), .B(rg_sin_table_6[2]), .C(rg_sin_table_4[2]), .D(n16), 
        .Y(n67) );
  oa4f3 U286 ( .A(n435), .B(rg_sin_table_7[2]), .C(rg_sin_table_5[2]), .D(n434), .Y(n66) );
  and2a3 U287 ( .A(n67), .B(n66), .Y(n71) );
  inv1a3 U288 ( .A(n950), .Y(n217) );
  oa4f3 U289 ( .A(n11), .B(rg_sin_table_0[2]), .C(rg_sin_table_3[2]), .D(n217), 
        .Y(n70) );
  xor2b2 U290 ( .A(n497), .B(n233), .Y(n125) );
  fa1a3 U291 ( .A(n73), .B(n75), .CI(n72), .CO(n94), .S(n74) );
  mx2a6 U292 ( .D0(n75), .D1(n74), .S(rg_bypass_mean), .Y(n76) );
  xor2b15 U293 ( .A(n76), .B(n221), .Y(n522) );
  xor2a2 U294 ( .A(n497), .B(n76), .Y(n77) );
  oa4f3 U295 ( .A(n394), .B(rg_sin_table_6[3]), .C(rg_sin_table_4[3]), .D(n16), 
        .Y(n79) );
  oa4f3 U296 ( .A(n435), .B(rg_sin_table_7[3]), .C(rg_sin_table_5[3]), .D(n434), .Y(n78) );
  and2a3 U297 ( .A(n79), .B(n78), .Y(n82) );
  oa4f3 U298 ( .A(n68), .B(rg_sin_table_0[3]), .C(rg_sin_table_3[3]), .D(n217), 
        .Y(n81) );
  oa4f3 U299 ( .A(n15), .B(rg_sin_table_1[3]), .C(rg_sin_table_2[3]), .D(n439), 
        .Y(n80) );
  or3d6 U300 ( .A(n82), .B(n81), .C(n80), .Y(n253) );
  xor2b2 U301 ( .A(n449), .B(n253), .Y(n185) );
  ao4f3 U302 ( .A(n125), .B(n523), .C(n185), .D(n18), .Y(n159) );
  oa4f3 U303 ( .A(n16), .B(vn_in_4[5]), .C(n434), .D(vn_in_5[5]), .Y(n84) );
  oa4f3 U304 ( .A(n439), .B(vn_in_2[5]), .C(n433), .D(vn_in_6[5]), .Y(n83) );
  and2a3 U305 ( .A(n84), .B(n83), .Y(n87) );
  oa4f3 U306 ( .A(n435), .B(vn_in_7[5]), .C(n438), .D(vn_in_3[5]), .Y(n86) );
  oa4f3 U307 ( .A(n440), .B(vn_in_1[5]), .C(n11), .D(vn_in_0[5]), .Y(n85) );
  or3d3 U308 ( .A(n87), .B(n86), .C(n85), .Y(n171) );
  inv1a3 U309 ( .A(mean[5]), .Y(n172) );
  xor2b2 U310 ( .A(n171), .B(n172), .Y(n102) );
  oa4f3 U311 ( .A(n16), .B(vn_in_4[4]), .C(n434), .D(vn_in_5[4]), .Y(n89) );
  oa4f3 U312 ( .A(n439), .B(vn_in_2[4]), .C(n433), .D(vn_in_6[4]), .Y(n88) );
  and2a3 U313 ( .A(n89), .B(n88), .Y(n92) );
  oa4f3 U314 ( .A(n435), .B(vn_in_7[4]), .C(n438), .D(vn_in_3[4]), .Y(n91) );
  oa4f3 U315 ( .A(n440), .B(vn_in_1[4]), .C(n11), .D(vn_in_0[4]), .Y(n90) );
  or3d3 U316 ( .A(n92), .B(n91), .C(n90), .Y(n113) );
  or2c3 U317 ( .A(n93), .B(n95), .Y(n98) );
  or2c3 U318 ( .A(n93), .B(n94), .Y(n97) );
  or2c3 U319 ( .A(n95), .B(n94), .Y(n96) );
  or3d6 U320 ( .A(n98), .B(n97), .C(n96), .Y(n110) );
  or2c3 U321 ( .A(n113), .B(n110), .Y(n101) );
  or2c3 U322 ( .A(n109), .B(n110), .Y(n100) );
  or2c3 U323 ( .A(n113), .B(n109), .Y(n99) );
  or3d6 U324 ( .A(n101), .B(n100), .C(n99), .Y(n170) );
  xor2b2 U325 ( .A(n102), .B(n170), .Y(n103) );
  oa4f3 U326 ( .A(n394), .B(rg_sin_table_6[1]), .C(rg_sin_table_4[1]), .D(n16), 
        .Y(n105) );
  oa4f3 U327 ( .A(n435), .B(rg_sin_table_7[1]), .C(rg_sin_table_5[1]), .D(n434), .Y(n104) );
  and2a3 U328 ( .A(n105), .B(n104), .Y(n108) );
  oa4f3 U329 ( .A(n11), .B(rg_sin_table_0[1]), .C(rg_sin_table_3[1]), .D(n217), 
        .Y(n107) );
  oa4f3 U330 ( .A(n15), .B(rg_sin_table_1[1]), .C(rg_sin_table_2[1]), .D(n439), 
        .Y(n106) );
  or3d3 U331 ( .A(n108), .B(n107), .C(n106), .Y(n206) );
  xor2b2 U332 ( .A(n10), .B(n206), .Y(n161) );
  xor2a2 U333 ( .A(n113), .B(n109), .Y(n111) );
  xor2a2 U334 ( .A(n111), .B(n110), .Y(n112) );
  inv1a1 U335 ( .A(n394), .Y(n386) );
  oa4e3 U336 ( .C(rg_sin_table_4[0]), .D(n16), .B(n386), .A(rg_sin_table_6[0]), 
        .Y(n115) );
  oa4f3 U337 ( .A(rg_sin_table_7[0]), .B(n435), .C(rg_sin_table_5[0]), .D(n434), .Y(n114) );
  and2a3 U338 ( .A(n115), .B(n114), .Y(n118) );
  oa4f3 U339 ( .A(n11), .B(rg_sin_table_0[0]), .C(rg_sin_table_3[0]), .D(n217), 
        .Y(n117) );
  oa4f3 U340 ( .A(n15), .B(rg_sin_table_1[0]), .C(rg_sin_table_2[0]), .D(n439), 
        .Y(n116) );
  or3d6 U341 ( .A(n118), .B(n117), .C(n116), .Y(n210) );
  xor2b2 U342 ( .A(n10), .B(n210), .Y(n121) );
  xor2a2 U343 ( .A(n609), .B(n119), .Y(n120) );
  ao4f3 U344 ( .A(n161), .B(n20), .C(n121), .D(n626), .Y(n163) );
  inv1a1 U345 ( .A(n10), .Y(n123) );
  or2b2 U346 ( .B(n210), .A(n10), .Y(n122) );
  ao4f3 U347 ( .A(n626), .B(n123), .C(n122), .D(n20), .Y(n162) );
  ao4f3 U348 ( .A(n129), .B(n480), .C(n124), .D(n14), .Y(n139) );
  xor2b2 U349 ( .A(n497), .B(n206), .Y(n127) );
  ao4f3 U350 ( .A(n127), .B(n523), .C(n125), .D(n522), .Y(n138) );
  xor2b2 U351 ( .A(n449), .B(n210), .Y(n126) );
  ao4f3 U352 ( .A(n127), .B(n522), .C(n126), .D(n523), .Y(n144) );
  or2b2 U353 ( .B(n210), .A(n449), .Y(n128) );
  ao4f3 U354 ( .A(n523), .B(n13), .C(n128), .D(n522), .Y(n143) );
  xor2b2 U355 ( .A(n221), .B(n233), .Y(n147) );
  ao1e6 U356 ( .B(n132), .A(n480), .C(n131), .Y(n331) );
  inv1a3 U357 ( .A(n331), .Y(n133) );
  inv1a1 U358 ( .A(psum1[1]), .Y(n146) );
  or2a3 U359 ( .A(n337), .B(n155), .Y(n1082) );
  fa1a3 U360 ( .A(n140), .B(n139), .CI(n138), .CO(n336), .S(n334) );
  inv1a1 U361 ( .A(psum1[2]), .Y(n142) );
  xor3b3 U362 ( .A(n142), .B(n333), .C(n141), .Y(n154) );
  and2c3 U363 ( .A(n334), .B(n154), .Y(n1090) );
  ha1a3 U364 ( .A(n144), .B(n143), .CO(n333), .S(n332) );
  xor3b3 U365 ( .A(n331), .B(n146), .C(n145), .Y(n152) );
  or2a1 U366 ( .A(n332), .B(n152), .Y(n1103) );
  ao4f3 U367 ( .A(n206), .B(n480), .C(n147), .D(n14), .Y(n329) );
  ao4f3 U368 ( .A(n206), .B(n14), .C(n210), .D(n480), .Y(n150) );
  or2b2 U369 ( .B(n210), .A(n447), .Y(n148) );
  inv1a1 U370 ( .A(n148), .Y(n149) );
  and2a3 U371 ( .A(n150), .B(n149), .Y(n1111) );
  and2c3 U372 ( .A(n329), .B(n1111), .Y(n1112) );
  inv1a1 U373 ( .A(n1116), .Y(n151) );
  or2c1 U374 ( .A(n1111), .B(n329), .Y(n1113) );
  ao1f2 U375 ( .A(n1112), .B(n151), .C(n1113), .Y(n1105) );
  or2c1 U376 ( .A(n152), .B(n332), .Y(n1102) );
  oa1f3 U377 ( .A(n1103), .B(n1105), .C(n153), .Y(n1093) );
  or2c1 U378 ( .A(n154), .B(n334), .Y(n1091) );
  ao1f2 U379 ( .A(n1090), .B(n1093), .C(n1091), .Y(n1083) );
  inv1a1 U380 ( .A(n1081), .Y(n156) );
  oa1f3 U381 ( .A(n1082), .B(n1083), .C(n156), .Y(n1072) );
  fa1a2 U382 ( .A(psum1[3]), .B(n336), .CI(n157), .CO(n186), .S(n155) );
  xor2b2 U383 ( .A(n10), .B(n233), .Y(n223) );
  ao4f3 U384 ( .A(n161), .B(n626), .C(n223), .D(n20), .Y(n190) );
  ha1a3 U385 ( .A(n163), .B(n162), .CO(n189), .S(n158) );
  oa4f3 U386 ( .A(n16), .B(vn_in_4[6]), .C(n434), .D(vn_in_5[6]), .Y(n165) );
  oa4f3 U387 ( .A(n439), .B(vn_in_2[6]), .C(n433), .D(vn_in_6[6]), .Y(n164) );
  and2a3 U388 ( .A(n165), .B(n164), .Y(n168) );
  oa4f3 U389 ( .A(n435), .B(vn_in_7[6]), .C(n438), .D(vn_in_3[6]), .Y(n167) );
  oa4f3 U390 ( .A(n440), .B(vn_in_1[6]), .C(n11), .D(vn_in_0[6]), .Y(n166) );
  or3d3 U391 ( .A(n168), .B(n167), .C(n166), .Y(n198) );
  inv1a3 U392 ( .A(mean[6]), .Y(n199) );
  or2c6 U393 ( .A(n174), .B(n173), .Y(n197) );
  xor3b3 U394 ( .A(n175), .B(n199), .C(n197), .Y(n176) );
  mx2a6 U395 ( .D0(n198), .D1(n176), .S(rg_bypass_mean), .Y(n207) );
  and2b2 U396 ( .B(n210), .A(n19), .Y(n214) );
  oa4f3 U397 ( .A(n394), .B(rg_sin_table_6[6]), .C(rg_sin_table_4[6]), .D(n16), 
        .Y(n178) );
  oa4f3 U398 ( .A(n396), .B(rg_sin_table_7[6]), .C(rg_sin_table_5[6]), .D(n395), .Y(n177) );
  and2a3 U399 ( .A(n178), .B(n177), .Y(n181) );
  oa4f3 U400 ( .A(n11), .B(rg_sin_table_0[6]), .C(rg_sin_table_3[6]), .D(n217), 
        .Y(n180) );
  oa4f3 U401 ( .A(n15), .B(rg_sin_table_1[6]), .C(rg_sin_table_2[6]), .D(n399), 
        .Y(n179) );
  or3d3 U402 ( .A(n181), .B(n180), .C(n179), .Y(n286) );
  xor2b2 U403 ( .A(n221), .B(n286), .Y(n222) );
  ao4f3 U404 ( .A(n184), .B(n480), .C(n222), .D(n14), .Y(n213) );
  xor2b2 U405 ( .A(n497), .B(n268), .Y(n224) );
  ao4f3 U406 ( .A(n185), .B(n523), .C(n224), .D(n522), .Y(n212) );
  and2c3 U407 ( .A(n186), .B(n187), .Y(n1069) );
  or2c3 U408 ( .A(n187), .B(n186), .Y(n1070) );
  ao1f3 U409 ( .A(n1072), .B(n1069), .C(n1070), .Y(n942) );
  fa1a2 U410 ( .A(psum1[4]), .B(n338), .CI(n339), .CO(n239), .S(n187) );
  fa1a3 U411 ( .A(n190), .B(n189), .CI(n188), .CO(n340), .S(n339) );
  oa4f3 U412 ( .A(n16), .B(vn_in_4[7]), .C(n434), .D(vn_in_5[7]), .Y(n192) );
  oa4f3 U413 ( .A(n439), .B(vn_in_2[7]), .C(n433), .D(vn_in_6[7]), .Y(n191) );
  and2a3 U414 ( .A(n192), .B(n191), .Y(n195) );
  oa4f3 U415 ( .A(n435), .B(vn_in_7[7]), .C(n438), .D(vn_in_3[7]), .Y(n194) );
  oa4f3 U416 ( .A(n440), .B(vn_in_1[7]), .C(n11), .D(vn_in_0[7]), .Y(n193) );
  or3d3 U417 ( .A(n195), .B(n194), .C(n193), .Y(n205) );
  inv1a3 U418 ( .A(mean[7]), .Y(n196) );
  xor2a2 U419 ( .A(n196), .B(n205), .Y(n203) );
  mx2a15 U420 ( .D0(n205), .D1(n204), .S(rg_bypass_mean), .Y(n428) );
  xor2b2 U421 ( .A(n9), .B(n206), .Y(n234) );
  xor2b2 U422 ( .A(n428), .B(n210), .Y(n209) );
  xor2a2 U423 ( .A(n207), .B(n428), .Y(n208) );
  ao4f3 U424 ( .A(n234), .B(n19), .C(n209), .D(n705), .Y(n237) );
  or2b2 U425 ( .B(n210), .A(n9), .Y(n211) );
  ao4f3 U426 ( .A(n705), .B(n8), .C(n211), .D(n19), .Y(n236) );
  fa1a2 U427 ( .A(n214), .B(n213), .CI(n212), .CO(n226), .S(n188) );
  oa4f3 U428 ( .A(n394), .B(rg_sin_table_6[7]), .C(rg_sin_table_4[7]), .D(n16), 
        .Y(n216) );
  oa4f3 U429 ( .A(n396), .B(rg_sin_table_7[7]), .C(rg_sin_table_5[7]), .D(n395), .Y(n215) );
  and2a3 U430 ( .A(n216), .B(n215), .Y(n220) );
  oa4f3 U431 ( .A(n11), .B(rg_sin_table_0[7]), .C(rg_sin_table_3[7]), .D(n217), 
        .Y(n219) );
  oa4f3 U432 ( .A(n15), .B(rg_sin_table_1[7]), .C(rg_sin_table_2[7]), .D(n399), 
        .Y(n218) );
  or3d3 U433 ( .A(n220), .B(n219), .C(n218), .Y(n291) );
  xor2b2 U434 ( .A(n221), .B(n291), .Y(n228) );
  ao4f3 U435 ( .A(n222), .B(n480), .C(n228), .D(n14), .Y(n232) );
  xor2b2 U436 ( .A(n10), .B(n253), .Y(n235) );
  ao4f3 U437 ( .A(n223), .B(n626), .C(n235), .D(n20), .Y(n231) );
  xor2b2 U438 ( .A(n497), .B(n276), .Y(n229) );
  ao4f3 U439 ( .A(n224), .B(n523), .C(n229), .D(n522), .Y(n230) );
  and2c3 U440 ( .A(n239), .B(n240), .Y(n1057) );
  fa1a2 U441 ( .A(psum1[5]), .B(n340), .CI(n341), .CO(n241), .S(n240) );
  fa1a2 U442 ( .A(n227), .B(n226), .CI(n225), .CO(n344), .S(n341) );
  ao1a3 U443 ( .A(n480), .B(n14), .C(n228), .Y(n245) );
  xor2b2 U444 ( .A(n497), .B(n286), .Y(n255) );
  ao4f3 U445 ( .A(n229), .B(n523), .C(n255), .D(n522), .Y(n246) );
  xor2b2 U446 ( .A(n245), .B(n246), .Y(n259) );
  fa1a2 U447 ( .A(n232), .B(n231), .CI(n230), .CO(n258), .S(n225) );
  xor2b2 U448 ( .A(n428), .B(n233), .Y(n254) );
  xor2b2 U449 ( .A(n10), .B(n268), .Y(n252) );
  ao4f3 U450 ( .A(n235), .B(n626), .C(n252), .D(n20), .Y(n248) );
  ha1a3 U451 ( .A(n237), .B(n236), .CO(n247), .S(n227) );
  clk1b6 U452 ( .A(n247), .Y(n238) );
  xor3b3 U453 ( .A(n249), .B(n248), .C(n238), .Y(n257) );
  or2c3 U454 ( .A(n240), .B(n239), .Y(n1058) );
  or2c3 U455 ( .A(n242), .B(n241), .Y(n940) );
  ao1f6 U456 ( .A(n939), .B(n1058), .C(n940), .Y(n243) );
  oa1f6 U457 ( .A(n942), .B(n244), .C(n243), .Y(n600) );
  or2a3 U458 ( .A(n246), .B(n245), .Y(n263) );
  ao1f3 U459 ( .A(n249), .B(n248), .C(n247), .Y(n251) );
  or2c3 U460 ( .A(n249), .B(n248), .Y(n250) );
  or2c6 U461 ( .A(n251), .B(n250), .Y(n264) );
  xor2a2 U462 ( .A(n263), .B(n264), .Y(n256) );
  xor2b2 U463 ( .A(n10), .B(n276), .Y(n274) );
  ao4f3 U464 ( .A(n252), .B(n626), .C(n274), .D(n20), .Y(n272) );
  xor2b2 U465 ( .A(n9), .B(n253), .Y(n269) );
  ao4f3 U466 ( .A(n254), .B(n705), .C(n269), .D(n19), .Y(n271) );
  xor2b2 U467 ( .A(n497), .B(n291), .Y(n273) );
  ao4f3 U468 ( .A(n255), .B(n523), .C(n273), .D(n522), .Y(n279) );
  inv1a3 U469 ( .A(n279), .Y(n270) );
  fa1a2 U470 ( .A(n259), .B(n258), .CI(n257), .CO(n326), .S(n345) );
  or2c3 U471 ( .A(n325), .B(n326), .Y(n902) );
  or2c1 U472 ( .A(n326), .B(psum1[7]), .Y(n260) );
  or2c3 U473 ( .A(n262), .B(n264), .Y(n267) );
  or2c3 U474 ( .A(n262), .B(n263), .Y(n266) );
  or2c1 U475 ( .A(n264), .B(n263), .Y(n265) );
  or3d3 U476 ( .A(n267), .B(n266), .C(n265), .Y(n346) );
  xor2b2 U477 ( .A(n428), .B(n268), .Y(n277) );
  ao4f3 U478 ( .A(n269), .B(n705), .C(n277), .D(n19), .Y(n284) );
  ao1a3 U479 ( .A(n523), .B(n522), .C(n273), .Y(n281) );
  xor2b2 U480 ( .A(n10), .B(n286), .Y(n278) );
  ao4f3 U481 ( .A(n274), .B(n626), .C(n278), .D(n20), .Y(n280) );
  and2c6 U482 ( .A(n298), .B(n299), .Y(n597) );
  fa1a2 U483 ( .A(psum1[6]), .B(n344), .CI(n345), .CO(n296), .S(n242) );
  xor2a2 U484 ( .A(psum1[7]), .B(n326), .Y(n275) );
  xor2a3 U485 ( .A(n275), .B(n325), .Y(n297) );
  and2c3 U486 ( .A(n296), .B(n297), .Y(n601) );
  and2c6 U487 ( .A(n597), .B(n601), .Y(n809) );
  fa1a2 U488 ( .A(psum1[8]), .B(n346), .CI(n347), .CO(n300), .S(n299) );
  xor2b2 U489 ( .A(n9), .B(n276), .Y(n287) );
  ao4f3 U490 ( .A(n277), .B(n705), .C(n287), .D(n19), .Y(n290) );
  xor2b2 U491 ( .A(n10), .B(n291), .Y(n285) );
  ao4f3 U492 ( .A(n278), .B(n626), .C(n285), .D(n20), .Y(n293) );
  fa1a2 U493 ( .A(n281), .B(n280), .CI(n279), .CO(n288), .S(n282) );
  fa1a2 U494 ( .A(n284), .B(n283), .CI(n282), .CO(n349), .S(n347) );
  and2c6 U495 ( .A(n300), .B(n301), .Y(n828) );
  ao1a3 U496 ( .A(n626), .B(n20), .C(n285), .Y(n295) );
  xor2b2 U497 ( .A(n428), .B(n286), .Y(n292) );
  ao4f3 U498 ( .A(n287), .B(n705), .C(n292), .D(n19), .Y(n294) );
  fa1a3 U499 ( .A(n290), .B(n289), .CI(n288), .CO(n355), .S(n348) );
  fa1a3 U500 ( .A(psum1[9]), .B(n348), .CI(n349), .CO(n303), .S(n301) );
  xor2b2 U501 ( .A(n9), .B(n291), .Y(n313) );
  fa1a3 U502 ( .A(n295), .B(n294), .CI(n293), .CO(n357), .S(n354) );
  fa1a2 U503 ( .A(psum1[10]), .B(n354), .CI(n355), .CO(n305), .S(n302) );
  or2a3 U504 ( .A(n304), .B(n305), .Y(n807) );
  or2c3 U505 ( .A(n3), .B(n807), .Y(n308) );
  and2c3 U506 ( .A(n828), .B(n308), .Y(n309) );
  or2c3 U507 ( .A(n809), .B(n309), .Y(n311) );
  or2c3 U508 ( .A(n297), .B(n296), .Y(n906) );
  or2c3 U509 ( .A(n299), .B(n298), .Y(n598) );
  ao1f3 U510 ( .A(n597), .B(n906), .C(n598), .Y(n663) );
  or2c3 U511 ( .A(n301), .B(n300), .Y(n827) );
  or2c1 U512 ( .A(n305), .B(n304), .Y(n806) );
  inv1a1 U513 ( .A(n806), .Y(n306) );
  oa1f3 U514 ( .A(n810), .B(n807), .C(n306), .Y(n307) );
  oa1f3 U515 ( .A(n663), .B(n309), .C(n4), .Y(n310) );
  ao1f3 U516 ( .A(n600), .B(n311), .C(n310), .Y(n312) );
  buf1a15 U517 ( .A(n312), .Y(n871) );
  inv1a1 U518 ( .A(psum1[13]), .Y(n316) );
  ao1a3 U519 ( .A(n705), .B(n19), .C(n313), .Y(n361) );
  and2c3 U520 ( .A(n316), .B(n317), .Y(n844) );
  or2a3 U521 ( .A(psum1[13]), .B(n861), .Y(n849) );
  fa1a2 U522 ( .A(psum1[12]), .B(n361), .CI(n362), .CO(n317), .S(n314) );
  fa1a2 U523 ( .A(psum1[11]), .B(n356), .CI(n357), .CO(n315), .S(n304) );
  and2c3 U524 ( .A(n314), .B(n315), .Y(n842) );
  and2c3 U525 ( .A(n321), .B(n842), .Y(n782) );
  or2c3 U526 ( .A(n315), .B(n314), .Y(n845) );
  or2c3 U527 ( .A(n317), .B(n316), .Y(n843) );
  inv1a1 U528 ( .A(n843), .Y(n319) );
  or2c1 U529 ( .A(n861), .B(psum1[13]), .Y(n848) );
  inv1a1 U530 ( .A(n848), .Y(n318) );
  oa1f3 U531 ( .A(n319), .B(n849), .C(n318), .Y(n320) );
  ao1f3 U532 ( .A(n845), .B(n321), .C(n320), .Y(n785) );
  inv1a1 U533 ( .A(n785), .Y(n322) );
  clk1b6 U534 ( .A(n68), .Y(n920) );
  and2c3 U535 ( .A(n326), .B(n325), .Y(n901) );
  and2c3 U536 ( .A(n344), .B(n345), .Y(n899) );
  and2c3 U537 ( .A(n901), .B(n899), .Y(n594) );
  and2c3 U538 ( .A(n348), .B(n349), .Y(n655) );
  and2c3 U539 ( .A(n346), .B(n347), .Y(n659) );
  and2c3 U540 ( .A(n655), .B(n659), .Y(n351) );
  and2c3 U541 ( .A(n338), .B(n339), .Y(n1064) );
  and2c3 U542 ( .A(n340), .B(n341), .Y(n1051) );
  and2c3 U543 ( .A(n1064), .B(n1051), .Y(n343) );
  and2c3 U544 ( .A(n331), .B(n332), .Y(n1097) );
  inv1a1 U545 ( .A(n1109), .Y(n330) );
  oa1f3 U546 ( .A(n327), .B(n1111), .C(n330), .Y(n1100) );
  or2c1 U547 ( .A(n332), .B(n331), .Y(n1098) );
  or2c1 U548 ( .A(n334), .B(n333), .Y(n1087) );
  inv1a1 U549 ( .A(n1087), .Y(n335) );
  oa1f3 U550 ( .A(n1089), .B(n5), .C(n335), .Y(n1079) );
  and2c3 U551 ( .A(n336), .B(n337), .Y(n1076) );
  or2c1 U552 ( .A(n337), .B(n336), .Y(n1077) );
  ao1f3 U553 ( .A(n1079), .B(n1076), .C(n1077), .Y(n1054) );
  or2c3 U554 ( .A(n339), .B(n338), .Y(n1065) );
  or2c1 U555 ( .A(n341), .B(n340), .Y(n1052) );
  ao1f2 U556 ( .A(n1051), .B(n1065), .C(n1052), .Y(n342) );
  oa1f3 U557 ( .A(n343), .B(n1054), .C(n342), .Y(n592) );
  or2c3 U558 ( .A(n345), .B(n344), .Y(n935) );
  ao1f2 U559 ( .A(n901), .B(n935), .C(n902), .Y(n593) );
  or2c3 U560 ( .A(n347), .B(n346), .Y(n658) );
  or2c1 U561 ( .A(n349), .B(n348), .Y(n656) );
  ao1f2 U562 ( .A(n658), .B(n655), .C(n656), .Y(n350) );
  oa1f3 U563 ( .A(n593), .B(n351), .C(n350), .Y(n352) );
  ao1f3 U564 ( .A(n353), .B(n592), .C(n352), .Y(n803) );
  and2c3 U565 ( .A(n356), .B(n357), .Y(n800) );
  and2c3 U566 ( .A(n354), .B(n355), .Y(n820) );
  and2c3 U567 ( .A(n800), .B(n820), .Y(n360) );
  or2c3 U568 ( .A(n355), .B(n354), .Y(n821) );
  ao1f2 U569 ( .A(n821), .B(n800), .C(n801), .Y(n358) );
  inv1a1 U570 ( .A(n358), .Y(n359) );
  oa1c6 U571 ( .A(n803), .B(n360), .C(n359), .Y(n588) );
  and2c3 U572 ( .A(n361), .B(n362), .Y(n584) );
  oa1a3 U573 ( .A(n588), .B(n584), .C(n585), .Y(n363) );
  oa4f3 U574 ( .A(n433), .B(rg_cos_table_6[4]), .C(rg_cos_table_4[4]), .D(n16), 
        .Y(n366) );
  oa4f3 U575 ( .A(n396), .B(rg_cos_table_7[4]), .C(rg_cos_table_5[4]), .D(n395), .Y(n365) );
  and2a3 U576 ( .A(n366), .B(n365), .Y(n369) );
  oa4f3 U577 ( .A(n11), .B(rg_cos_table_0[4]), .C(rg_cos_table_3[4]), .D(n438), 
        .Y(n368) );
  oa4f3 U578 ( .A(n15), .B(rg_cos_table_1[4]), .C(rg_cos_table_2[4]), .D(n399), 
        .Y(n367) );
  or3d3 U579 ( .A(n369), .B(n368), .C(n367), .Y(n516) );
  xor2b2 U580 ( .A(n447), .B(n516), .Y(n461) );
  oa4f3 U581 ( .A(n394), .B(rg_cos_table_6[5]), .C(rg_cos_table_4[5]), .D(n16), 
        .Y(n371) );
  oa4f3 U582 ( .A(n396), .B(rg_cos_table_7[5]), .C(rg_cos_table_5[5]), .D(n395), .Y(n370) );
  and2a3 U583 ( .A(n371), .B(n370), .Y(n374) );
  oa4f3 U584 ( .A(n11), .B(rg_cos_table_0[5]), .C(rg_cos_table_3[5]), .D(n438), 
        .Y(n373) );
  oa4f3 U585 ( .A(n15), .B(rg_cos_table_1[5]), .C(rg_cos_table_2[5]), .D(n399), 
        .Y(n372) );
  xor2b2 U586 ( .A(n447), .B(n607), .Y(n414) );
  ao4f3 U587 ( .A(n461), .B(n480), .C(n414), .D(n14), .Y(n473) );
  oa4f3 U588 ( .A(n394), .B(rg_cos_table_6[2]), .C(rg_cos_table_4[2]), .D(n16), 
        .Y(n377) );
  oa4f3 U589 ( .A(n396), .B(rg_cos_table_7[2]), .C(rg_cos_table_5[2]), .D(n395), .Y(n376) );
  and2a3 U590 ( .A(n377), .B(n376), .Y(n380) );
  oa4f3 U591 ( .A(n11), .B(rg_cos_table_0[2]), .C(rg_cos_table_3[2]), .D(n438), 
        .Y(n379) );
  oa4f3 U592 ( .A(n15), .B(rg_cos_table_1[2]), .C(rg_cos_table_2[2]), .D(n399), 
        .Y(n378) );
  or3d3 U593 ( .A(n380), .B(n379), .C(n378), .Y(n483) );
  xor2b2 U594 ( .A(n497), .B(n483), .Y(n463) );
  oa4f3 U595 ( .A(n394), .B(rg_cos_table_6[3]), .C(rg_cos_table_4[3]), .D(n16), 
        .Y(n382) );
  oa4f3 U596 ( .A(n396), .B(rg_cos_table_7[3]), .C(rg_cos_table_5[3]), .D(n395), .Y(n381) );
  and2a3 U597 ( .A(n382), .B(n381), .Y(n385) );
  oa4f3 U598 ( .A(n11), .B(rg_cos_table_0[3]), .C(rg_cos_table_3[3]), .D(n438), 
        .Y(n384) );
  oa4f3 U599 ( .A(n15), .B(rg_cos_table_1[3]), .C(rg_cos_table_2[3]), .D(n399), 
        .Y(n383) );
  or3d3 U600 ( .A(n385), .B(n384), .C(n383), .Y(n495) );
  xor2b2 U601 ( .A(n449), .B(n495), .Y(n415) );
  ao4f3 U602 ( .A(n463), .B(n523), .C(n415), .D(n18), .Y(n472) );
  oa4e3 U603 ( .C(rg_cos_table_4[0]), .D(n16), .B(n386), .A(rg_cos_table_6[0]), 
        .Y(n389) );
  inv1a1 U604 ( .A(n396), .Y(n387) );
  oa4e3 U605 ( .C(rg_cos_table_5[0]), .D(n395), .B(n387), .A(rg_cos_table_7[0]), .Y(n388) );
  and2a3 U606 ( .A(n389), .B(n388), .Y(n392) );
  oa4f3 U607 ( .A(n11), .B(rg_cos_table_0[0]), .C(rg_cos_table_3[0]), .D(n438), 
        .Y(n391) );
  oa4f3 U608 ( .A(n15), .B(rg_cos_table_1[0]), .C(rg_cos_table_2[0]), .D(n399), 
        .Y(n390) );
  or3d3 U609 ( .A(n392), .B(n391), .C(n390), .Y(n393) );
  xor2b2 U610 ( .A(n455), .B(n10), .Y(n403) );
  oa4f3 U611 ( .A(n394), .B(rg_cos_table_6[1]), .C(rg_cos_table_4[1]), .D(n16), 
        .Y(n398) );
  oa4f3 U612 ( .A(n396), .B(rg_cos_table_7[1]), .C(rg_cos_table_5[1]), .D(n395), .Y(n397) );
  and2a3 U613 ( .A(n398), .B(n397), .Y(n402) );
  oa4f3 U614 ( .A(n11), .B(rg_cos_table_0[1]), .C(rg_cos_table_3[1]), .D(n438), 
        .Y(n401) );
  oa4f3 U615 ( .A(n15), .B(rg_cos_table_1[1]), .C(rg_cos_table_2[1]), .D(n399), 
        .Y(n400) );
  or3d3 U616 ( .A(n402), .B(n401), .C(n400), .Y(n454) );
  xor2b2 U617 ( .A(n609), .B(n454), .Y(n407) );
  ao4f3 U618 ( .A(n403), .B(n626), .C(n407), .D(n20), .Y(n406) );
  or2b2 U619 ( .B(n455), .A(n10), .Y(n404) );
  ao4f3 U620 ( .A(n626), .B(n12), .C(n404), .D(n20), .Y(n405) );
  ha1a3 U621 ( .A(n406), .B(n405), .CO(n424), .S(n471) );
  xor2b2 U622 ( .A(n609), .B(n483), .Y(n446) );
  ao4f3 U623 ( .A(n407), .B(n626), .C(n446), .D(n20), .Y(n423) );
  xor2b2 U624 ( .A(n424), .B(n423), .Y(n419) );
  and2b2 U625 ( .B(n455), .A(n19), .Y(n432) );
  oa4f3 U626 ( .A(n433), .B(rg_cos_table_6[6]), .C(rg_cos_table_4[6]), .D(n408), .Y(n410) );
  oa4f3 U627 ( .A(n435), .B(rg_cos_table_7[6]), .C(rg_cos_table_5[6]), .D(n434), .Y(n409) );
  and2a3 U628 ( .A(n410), .B(n409), .Y(n413) );
  oa4f3 U629 ( .A(n11), .B(rg_cos_table_0[6]), .C(rg_cos_table_3[6]), .D(n438), 
        .Y(n412) );
  oa4f3 U630 ( .A(n440), .B(rg_cos_table_1[6]), .C(rg_cos_table_2[6]), .D(n439), .Y(n411) );
  or3d3 U631 ( .A(n413), .B(n412), .C(n411), .Y(n627) );
  xor2b2 U632 ( .A(n447), .B(n627), .Y(n444) );
  ao4f3 U633 ( .A(n414), .B(n480), .C(n444), .D(n14), .Y(n431) );
  xor2b2 U634 ( .A(n449), .B(n516), .Y(n445) );
  ao1f3 U635 ( .A(n445), .B(n18), .C(n418), .Y(n430) );
  and2c3 U636 ( .A(n561), .B(n560), .Y(n997) );
  xor2b2 U637 ( .A(n9), .B(n455), .Y(n427) );
  ao4f3 U638 ( .A(n484), .B(n19), .C(n427), .D(n705), .Y(n487) );
  or2b2 U639 ( .B(n455), .A(n9), .Y(n429) );
  ao4f3 U640 ( .A(n705), .B(n8), .C(n429), .D(n19), .Y(n486) );
  fa1a2 U641 ( .A(n432), .B(n431), .CI(n430), .CO(n507), .S(n420) );
  oa4f3 U642 ( .A(n433), .B(rg_cos_table_6[7]), .C(rg_cos_table_4[7]), .D(n16), 
        .Y(n437) );
  oa4f3 U643 ( .A(n435), .B(rg_cos_table_7[7]), .C(rg_cos_table_5[7]), .D(n434), .Y(n436) );
  and2a3 U644 ( .A(n437), .B(n436), .Y(n443) );
  oa4f3 U645 ( .A(n68), .B(rg_cos_table_0[7]), .C(rg_cos_table_3[7]), .D(n438), 
        .Y(n442) );
  oa4f3 U646 ( .A(n440), .B(rg_cos_table_1[7]), .C(rg_cos_table_2[7]), .D(n439), .Y(n441) );
  or3d3 U647 ( .A(n443), .B(n442), .C(n441), .Y(n681) );
  xor2b2 U648 ( .A(n447), .B(n681), .Y(n479) );
  ao4f3 U649 ( .A(n444), .B(n480), .C(n479), .D(n14), .Y(n478) );
  xor2b2 U650 ( .A(n449), .B(n607), .Y(n481) );
  ao4f3 U651 ( .A(n445), .B(n523), .C(n481), .D(n522), .Y(n477) );
  xor2b2 U652 ( .A(n609), .B(n495), .Y(n485) );
  ao4f3 U653 ( .A(n446), .B(n626), .C(n485), .D(n20), .Y(n476) );
  and2c3 U654 ( .A(n534), .B(n533), .Y(n984) );
  and2c3 U655 ( .A(n997), .B(n984), .Y(n475) );
  xor2b2 U656 ( .A(n447), .B(n483), .Y(n452) );
  xor2b2 U657 ( .A(n447), .B(n495), .Y(n462) );
  ao4f3 U658 ( .A(n452), .B(n480), .C(n462), .D(n14), .Y(n548) );
  xor2b2 U659 ( .A(n497), .B(n454), .Y(n464) );
  xor2b2 U660 ( .A(n449), .B(n455), .Y(n448) );
  ao4f3 U661 ( .A(n464), .B(n522), .C(n448), .D(n523), .Y(n537) );
  or2b2 U662 ( .B(n455), .A(n449), .Y(n450) );
  ao4f3 U663 ( .A(n523), .B(n13), .C(n450), .D(n522), .Y(n536) );
  and2c3 U664 ( .A(n548), .B(n552), .Y(n1031) );
  ao4f3 U665 ( .A(n454), .B(n14), .C(n455), .D(n480), .Y(n458) );
  or2b2 U666 ( .B(n455), .A(n447), .Y(n456) );
  inv1a1 U667 ( .A(n456), .Y(n457) );
  or2c3 U668 ( .A(n550), .B(n549), .Y(n1042) );
  inv1a1 U669 ( .A(n1042), .Y(n460) );
  oa1f3 U670 ( .A(n453), .B(n459), .C(n460), .Y(n1034) );
  or2c1 U671 ( .A(n552), .B(n548), .Y(n1032) );
  and2a3 U672 ( .A(n537), .B(n536), .Y(n466) );
  ao4f3 U673 ( .A(n462), .B(n480), .C(n461), .D(n14), .Y(n469) );
  ao4f3 U674 ( .A(n464), .B(n523), .C(n463), .D(n522), .Y(n468) );
  or2c1 U675 ( .A(n555), .B(n466), .Y(n1021) );
  inv1a1 U676 ( .A(n1021), .Y(n467) );
  oa1f3 U677 ( .A(n1023), .B(n465), .C(n467), .Y(n1012) );
  and2c3 U678 ( .A(n543), .B(n557), .Y(n1009) );
  or2c1 U679 ( .A(n557), .B(n543), .Y(n1010) );
  ao1f3 U680 ( .A(n1012), .B(n1009), .C(n1010), .Y(n987) );
  or2c3 U681 ( .A(n560), .B(n561), .Y(n998) );
  or2c1 U682 ( .A(n533), .B(n534), .Y(n985) );
  ao1f2 U683 ( .A(n984), .B(n998), .C(n985), .Y(n474) );
  oa1f3 U684 ( .A(n475), .B(n987), .C(n474), .Y(n622) );
  fa1a2 U685 ( .A(n478), .B(n477), .CI(n476), .CO(n509), .S(n506) );
  ao1a3 U686 ( .A(n480), .B(n14), .C(n479), .Y(n492) );
  xor2b2 U687 ( .A(n497), .B(n627), .Y(n498) );
  xor2b2 U688 ( .A(n492), .B(n493), .Y(n510) );
  xor2b2 U689 ( .A(n9), .B(n483), .Y(n496) );
  ao4f3 U690 ( .A(n484), .B(n705), .C(n496), .D(n19), .Y(n505) );
  xor2b2 U691 ( .A(n609), .B(n516), .Y(n494) );
  ao4f3 U692 ( .A(n485), .B(n626), .C(n494), .D(n20), .Y(n504) );
  ha1a3 U693 ( .A(n487), .B(n486), .CO(n503), .S(n508) );
  ao1d3 U694 ( .A(n489), .B(n488), .C(n512), .Y(n491) );
  or2c6 U695 ( .A(n491), .B(n490), .Y(n577) );
  xor2b2 U696 ( .A(n609), .B(n607), .Y(n524) );
  ao4f3 U697 ( .A(n494), .B(n626), .C(n524), .D(n20), .Y(n520) );
  xor2b2 U698 ( .A(n9), .B(n495), .Y(n517) );
  ao4f3 U699 ( .A(n496), .B(n705), .C(n517), .D(n19), .Y(n519) );
  xor2b2 U700 ( .A(n497), .B(n681), .Y(n521) );
  clk1b6 U701 ( .A(n523), .Y(n499) );
  ao1e6 U702 ( .B(n502), .A(n521), .C(n501), .Y(n611) );
  clk1b6 U703 ( .A(n611), .Y(n518) );
  fa1a2 U704 ( .A(n505), .B(n504), .CI(n503), .CO(n513), .S(n512) );
  and2c3 U705 ( .A(n577), .B(n575), .Y(n924) );
  fa1a3 U706 ( .A(n508), .B(n507), .CI(n506), .CO(n572), .S(n533) );
  xor2b2 U707 ( .A(n510), .B(n509), .Y(n511) );
  and2c3 U708 ( .A(n572), .B(n571), .Y(n922) );
  and2c3 U709 ( .A(n924), .B(n922), .Y(n617) );
  or2c3 U710 ( .A(n571), .B(n572), .Y(n972) );
  ao1f2 U711 ( .A(n924), .B(n972), .C(n925), .Y(n620) );
  oa1f3 U712 ( .A(n974), .B(n617), .C(n620), .Y(n673) );
  fa1a3 U713 ( .A(n515), .B(n514), .CI(n513), .CO(n635), .S(n575) );
  xor2b2 U714 ( .A(n9), .B(n516), .Y(n608) );
  ao4f6 U715 ( .A(n517), .B(n705), .C(n608), .D(n19), .Y(n616) );
  fa1a2 U716 ( .A(n520), .B(n519), .CI(n518), .CO(n615), .S(n514) );
  ao1a3 U717 ( .A(n523), .B(n522), .C(n521), .Y(n613) );
  xor2b2 U718 ( .A(n609), .B(n627), .Y(n610) );
  ao4f3 U719 ( .A(n524), .B(n626), .C(n610), .D(n20), .Y(n612) );
  and2c3 U720 ( .A(n635), .B(n525), .Y(n672) );
  inv1a1 U721 ( .A(n672), .Y(n526) );
  or2c3 U722 ( .A(n525), .B(n635), .Y(n671) );
  or2c1 U723 ( .A(n526), .B(n671), .Y(n527) );
  xor2a2 U724 ( .A(n673), .B(n527), .Y(n583) );
  inv1a1 U725 ( .A(psum2[8]), .Y(n530) );
  xor3b3 U726 ( .A(n635), .B(n530), .C(n634), .Y(n532) );
  or2c3 U727 ( .A(n532), .B(n531), .Y(n640) );
  or2c1 U728 ( .A(n642), .B(n640), .Y(n581) );
  and2c3 U729 ( .A(n565), .B(n566), .Y(n990) );
  fa1a2 U730 ( .A(psum2[5]), .B(n534), .CI(n533), .CO(n567), .S(n566) );
  inv1a1 U731 ( .A(psum2[6]), .Y(n535) );
  xor3b3 U732 ( .A(n572), .B(n535), .C(n571), .Y(n568) );
  and2c3 U733 ( .A(n990), .B(n976), .Y(n570) );
  inv1a1 U734 ( .A(psum2[3]), .Y(n539) );
  ha1a3 U735 ( .A(n537), .B(n536), .CO(n547), .S(n552) );
  fa1a2 U736 ( .A(psum2[4]), .B(n561), .CI(n560), .CO(n565), .S(n542) );
  xor2b2 U737 ( .A(psum2[3]), .B(n543), .Y(n545) );
  xor2b2 U738 ( .A(n545), .B(n544), .Y(n558) );
  or2a1 U739 ( .A(n557), .B(n558), .Y(n1017) );
  fa1a2 U740 ( .A(psum2[2]), .B(n547), .CI(n546), .CO(n544), .S(n556) );
  and2c3 U741 ( .A(n555), .B(n556), .Y(n1024) );
  fa1a2 U742 ( .A(psum2[1]), .B(n7), .CI(n548), .CO(n546), .S(n553) );
  or2a1 U743 ( .A(n552), .B(n553), .Y(n1037) );
  and2c3 U744 ( .A(n550), .B(n459), .Y(n1044) );
  xor2a2 U745 ( .A(n549), .B(psum2[0]), .Y(n1048) );
  inv1a1 U746 ( .A(n1048), .Y(n551) );
  or2c1 U747 ( .A(n459), .B(n550), .Y(n1045) );
  ao1f2 U748 ( .A(n1044), .B(n551), .C(n1045), .Y(n1038) );
  inv1a1 U749 ( .A(n1036), .Y(n554) );
  oa1f3 U750 ( .A(n1037), .B(n1038), .C(n554), .Y(n1027) );
  or2c1 U751 ( .A(n556), .B(n555), .Y(n1025) );
  ao1f3 U752 ( .A(n1024), .B(n1027), .C(n1025), .Y(n1014) );
  inv1a1 U753 ( .A(n1016), .Y(n559) );
  oa1f3 U754 ( .A(n1017), .B(n1014), .C(n559), .Y(n1005) );
  xor3a3 U755 ( .A(psum2[4]), .B(n561), .C(n560), .Y(n563) );
  or2c3 U756 ( .A(n563), .B(n562), .Y(n1003) );
  or2c3 U757 ( .A(n566), .B(n565), .Y(n991) );
  ao1f3 U758 ( .A(n976), .B(n991), .C(n977), .Y(n569) );
  oa1f6 U759 ( .A(n570), .B(n979), .C(n569), .Y(n691) );
  inv1a3 U760 ( .A(n691), .Y(n931) );
  inv1a1 U761 ( .A(psum2[7]), .Y(n576) );
  xor3b3 U762 ( .A(n577), .B(n576), .C(n575), .Y(n579) );
  and2c3 U763 ( .A(n578), .B(n579), .Y(n638) );
  inv1a1 U764 ( .A(n638), .Y(n930) );
  or2c3 U765 ( .A(n579), .B(n578), .Y(n929) );
  inv1a3 U766 ( .A(n929), .Y(n641) );
  oa1f3 U767 ( .A(n931), .B(n930), .C(n641), .Y(n580) );
  xor2a2 U768 ( .A(n581), .B(n580), .Y(n582) );
  inv1a1 U769 ( .A(n584), .Y(n586) );
  or2c1 U770 ( .A(n586), .B(n585), .Y(n587) );
  xor2a2 U771 ( .A(n588), .B(n587), .Y(n591) );
  inv1a1 U772 ( .A(n842), .Y(n839) );
  or2c1 U773 ( .A(n839), .B(n845), .Y(n589) );
  xor2b2 U774 ( .A(n589), .B(n871), .Y(n590) );
  clk1b6 U775 ( .A(n68), .Y(n1117) );
  oa1f3 U776 ( .A(n937), .B(n594), .C(n593), .Y(n660) );
  inv1a1 U777 ( .A(n659), .Y(n595) );
  or2c1 U778 ( .A(n595), .B(n658), .Y(n596) );
  xor2a2 U779 ( .A(n660), .B(n596), .Y(n606) );
  inv1a1 U780 ( .A(n597), .Y(n599) );
  or2c1 U781 ( .A(n599), .B(n598), .Y(n604) );
  inv1a1 U782 ( .A(n601), .Y(n907) );
  inv1a1 U783 ( .A(n906), .Y(n602) );
  oa1f3 U784 ( .A(n908), .B(n907), .C(n602), .Y(n603) );
  xor2a2 U785 ( .A(n604), .B(n603), .Y(n605) );
  xor2b2 U786 ( .A(n9), .B(n607), .Y(n628) );
  ao4f3 U787 ( .A(n608), .B(n705), .C(n628), .D(n19), .Y(n631) );
  xor2b2 U788 ( .A(n609), .B(n681), .Y(n624) );
  ao4f3 U789 ( .A(n610), .B(n626), .C(n624), .D(n20), .Y(n683) );
  fa1a2 U790 ( .A(n613), .B(n612), .CI(n611), .CO(n629), .S(n614) );
  fa1a3 U791 ( .A(n616), .B(n615), .CI(n614), .CO(n647), .S(n634) );
  and2c3 U792 ( .A(n648), .B(n647), .Y(n668) );
  and2c3 U793 ( .A(n668), .B(n672), .Y(n619) );
  or2c3 U794 ( .A(n617), .B(n619), .Y(n623) );
  or2c1 U795 ( .A(n647), .B(n648), .Y(n669) );
  ao1f2 U796 ( .A(n671), .B(n668), .C(n669), .Y(n618) );
  oa1f3 U797 ( .A(n620), .B(n619), .C(n618), .Y(n621) );
  ao1f3 U798 ( .A(n623), .B(n622), .C(n621), .Y(n724) );
  ao1a3 U799 ( .A(n626), .B(n20), .C(n624), .Y(n685) );
  xor2b2 U800 ( .A(n9), .B(n627), .Y(n682) );
  ao4f3 U801 ( .A(n628), .B(n705), .C(n682), .D(n19), .Y(n684) );
  fa1a3 U802 ( .A(n631), .B(n630), .CI(n629), .CO(n686), .S(n648) );
  and2c3 U803 ( .A(n687), .B(n686), .Y(n761) );
  inv1a1 U804 ( .A(n761), .Y(n632) );
  or2c3 U805 ( .A(n686), .B(n687), .Y(n760) );
  or2c1 U806 ( .A(n632), .B(n760), .Y(n633) );
  xor2a2 U807 ( .A(n762), .B(n633), .Y(n654) );
  or2c1 U808 ( .A(n635), .B(psum2[8]), .Y(n636) );
  or2c3 U809 ( .A(n637), .B(n636), .Y(n643) );
  and2c3 U810 ( .A(n639), .B(n638), .Y(n689) );
  inv1a1 U811 ( .A(n689), .Y(n766) );
  and2c3 U812 ( .A(n688), .B(n766), .Y(n646) );
  inv1a3 U813 ( .A(n700), .Y(n772) );
  or2c3 U814 ( .A(n644), .B(n643), .Y(n767) );
  ao1f2 U815 ( .A(n772), .B(n688), .C(n767), .Y(n645) );
  oa1f3 U816 ( .A(n931), .B(n646), .C(n645), .Y(n652) );
  fa1a2 U817 ( .A(psum2[9]), .B(n648), .CI(n647), .CO(n650), .S(n644) );
  or2c3 U818 ( .A(n650), .B(n649), .Y(n692) );
  or2c1 U819 ( .A(n2), .B(n692), .Y(n651) );
  xor2a2 U820 ( .A(n652), .B(n651), .Y(n653) );
  inv1a1 U821 ( .A(n655), .Y(n657) );
  or2c1 U822 ( .A(n657), .B(n656), .Y(n662) );
  ao1f2 U823 ( .A(n660), .B(n659), .C(n658), .Y(n661) );
  xor2b2 U824 ( .A(n662), .B(n661), .Y(n667) );
  inv1a3 U825 ( .A(n663), .Y(n829) );
  oa1c3 U826 ( .A(n908), .B(n809), .C(n829), .Y(n665) );
  or2c1 U827 ( .A(n808), .B(n827), .Y(n664) );
  xor2a2 U828 ( .A(n665), .B(n664), .Y(n666) );
  mx2a6 U829 ( .D0(n667), .D1(n666), .S(n1106), .Y(N151) );
  inv1a1 U830 ( .A(n668), .Y(n670) );
  or2c1 U831 ( .A(n670), .B(n669), .Y(n675) );
  ao1f2 U832 ( .A(n673), .B(n672), .C(n671), .Y(n674) );
  xor2b2 U833 ( .A(n675), .B(n674), .Y(n679) );
  oa1f3 U834 ( .A(n931), .B(n689), .C(n700), .Y(n677) );
  inv1a1 U835 ( .A(n688), .Y(n765) );
  or2c1 U836 ( .A(n765), .B(n767), .Y(n676) );
  xor2a2 U837 ( .A(n677), .B(n676), .Y(n678) );
  and2c3 U838 ( .A(n_zz_12_1_), .B(n743), .Y(n741) );
  inv1a1 U839 ( .A(n741), .Y(n680) );
  or2c1 U840 ( .A(n743), .B(n_zz_12_1_), .Y(n740) );
  or2c1 U841 ( .A(n680), .B(n740), .Y(n718) );
  xor2b2 U842 ( .A(n9), .B(n681), .Y(n703) );
  inv1a3 U843 ( .A(n726), .Y(n719) );
  fa1a2 U844 ( .A(n685), .B(n684), .CI(n683), .CO(n720), .S(n687) );
  fa1a2 U845 ( .A(psum2[10]), .B(n687), .CI(n686), .CO(n694), .S(n649) );
  or2a3 U846 ( .A(n693), .B(n694), .Y(n776) );
  or2c3 U847 ( .A(n2), .B(n776), .Y(n697) );
  and2c3 U848 ( .A(n688), .B(n697), .Y(n699) );
  or2c3 U849 ( .A(n689), .B(n699), .Y(n690) );
  inv1a1 U850 ( .A(n692), .Y(n768) );
  or2c1 U851 ( .A(n694), .B(n693), .Y(n775) );
  inv1a1 U852 ( .A(n775), .Y(n695) );
  oa1f3 U853 ( .A(n768), .B(n776), .C(n695), .Y(n696) );
  ao1f2 U854 ( .A(n697), .B(n767), .C(n696), .Y(n698) );
  oa1f3 U855 ( .A(n700), .B(n699), .C(n698), .Y(n701) );
  inv1a1 U856 ( .A(psum2[13]), .Y(n708) );
  ao1a3 U857 ( .A(n705), .B(n19), .C(n703), .Y(n725) );
  and2c3 U858 ( .A(n708), .B(n709), .Y(n893) );
  or2a3 U859 ( .A(psum2[13]), .B(n743), .Y(n889) );
  fa1a2 U860 ( .A(psum2[12]), .B(n725), .CI(n726), .CO(n709), .S(n706) );
  fa1a2 U861 ( .A(psum2[11]), .B(n719), .CI(n720), .CO(n707), .S(n693) );
  and2c3 U862 ( .A(n706), .B(n707), .Y(n891) );
  and2c3 U863 ( .A(n713), .B(n891), .Y(n731) );
  inv1a1 U864 ( .A(n738), .Y(n716) );
  or2c3 U865 ( .A(n707), .B(n706), .Y(n915) );
  or2c3 U866 ( .A(n709), .B(n708), .Y(n912) );
  inv1a1 U867 ( .A(n912), .Y(n711) );
  or2c1 U868 ( .A(n743), .B(psum2[13]), .Y(n888) );
  inv1a1 U869 ( .A(n888), .Y(n710) );
  oa1f3 U870 ( .A(n711), .B(n889), .C(n710), .Y(n712) );
  ao1f3 U871 ( .A(n915), .B(n713), .C(n712), .Y(n730) );
  or2c1 U872 ( .A(n743), .B(n_zz_12_0_), .Y(n729) );
  inv1a1 U873 ( .A(n729), .Y(n714) );
  oa1f3 U874 ( .A(n730), .B(n6), .C(n714), .Y(n742) );
  inv1a1 U875 ( .A(n742), .Y(n715) );
  oa1f3 U876 ( .A(n917), .B(n716), .C(n715), .Y(n717) );
  and2c3 U877 ( .A(n719), .B(n720), .Y(n757) );
  and2c3 U878 ( .A(n757), .B(n761), .Y(n723) );
  or2c1 U879 ( .A(n720), .B(n719), .Y(n758) );
  ao1f2 U880 ( .A(n760), .B(n757), .C(n758), .Y(n721) );
  inv1a1 U881 ( .A(n721), .Y(n722) );
  and2c3 U882 ( .A(n725), .B(n726), .Y(n791) );
  oa1a3 U883 ( .A(n795), .B(n791), .C(n792), .Y(n727) );
  or2c1 U884 ( .A(n6), .B(n729), .Y(n733) );
  oa1f3 U885 ( .A(n917), .B(n731), .C(n730), .Y(n732) );
  or2a1 U886 ( .A(psum_out2[15]), .B(n743), .Y(n736) );
  or2c1 U887 ( .A(n743), .B(psum_out2[15]), .Y(n735) );
  and2c3 U888 ( .A(n741), .B(n738), .Y(n753) );
  ao1f2 U889 ( .A(n742), .B(n741), .C(n740), .Y(n751) );
  or2c1 U890 ( .A(n743), .B(n_zz_12_2_), .Y(n749) );
  inv1a1 U891 ( .A(n749), .Y(n744) );
  oa1f3 U892 ( .A(n751), .B(n750), .C(n744), .Y(n745) );
  inv1a1 U893 ( .A(n745), .Y(n746) );
  oa1f3 U894 ( .A(n917), .B(n739), .C(n746), .Y(n747) );
  xor2b2 U895 ( .A(n737), .B(n747), .Y(n748) );
  and2a3 U896 ( .A(n750), .B(n749), .Y(n755) );
  inv1a1 U897 ( .A(n751), .Y(n752) );
  xor2a2 U898 ( .A(n755), .B(n754), .Y(n756) );
  inv1a1 U899 ( .A(n757), .Y(n759) );
  or2c1 U900 ( .A(n759), .B(n758), .Y(n764) );
  xor2b2 U901 ( .A(n764), .B(n763), .Y(n780) );
  or2c3 U902 ( .A(n765), .B(n2), .Y(n771) );
  and2c3 U903 ( .A(n771), .B(n766), .Y(n774) );
  inv1a1 U904 ( .A(n767), .Y(n769) );
  oa1f1 U905 ( .A(n769), .B(n2), .C(n768), .Y(n770) );
  ao1f2 U906 ( .A(n772), .B(n771), .C(n770), .Y(n773) );
  oa1f3 U907 ( .A(n931), .B(n774), .C(n773), .Y(n778) );
  or2c1 U908 ( .A(n776), .B(n775), .Y(n777) );
  xor2a2 U909 ( .A(n778), .B(n777), .Y(n779) );
  and2c3 U910 ( .A(n_zz_10_1_), .B(n861), .Y(n856) );
  inv1a1 U911 ( .A(n856), .Y(n781) );
  or2c1 U912 ( .A(n861), .B(n_zz_10_1_), .Y(n855) );
  or2c1 U913 ( .A(n781), .B(n855), .Y(n789) );
  inv1a1 U914 ( .A(n853), .Y(n787) );
  inv1a1 U915 ( .A(n783), .Y(n784) );
  oa1f3 U916 ( .A(n785), .B(n21), .C(n784), .Y(n857) );
  inv1a1 U917 ( .A(n857), .Y(n786) );
  oa1f3 U918 ( .A(n871), .B(n787), .C(n786), .Y(n788) );
  inv1a1 U919 ( .A(n791), .Y(n793) );
  or2c1 U920 ( .A(n793), .B(n792), .Y(n794) );
  xor2a2 U921 ( .A(n795), .B(n794), .Y(n799) );
  inv1a1 U922 ( .A(n891), .Y(n916) );
  or2c1 U923 ( .A(n916), .B(n915), .Y(n797) );
  mx2a6 U924 ( .D0(n799), .D1(n798), .S(n920), .Y(N173) );
  inv1a1 U925 ( .A(n800), .Y(n802) );
  or2c1 U926 ( .A(n802), .B(n801), .Y(n805) );
  ao1f2 U927 ( .A(n824), .B(n820), .C(n821), .Y(n804) );
  xor2b2 U928 ( .A(n805), .B(n804), .Y(n819) );
  or2c1 U929 ( .A(n807), .B(n806), .Y(n817) );
  or2c3 U930 ( .A(n808), .B(n3), .Y(n813) );
  and2c3 U931 ( .A(n813), .B(n826), .Y(n815) );
  inv1a1 U932 ( .A(n827), .Y(n811) );
  oa1f3 U933 ( .A(n811), .B(n3), .C(n810), .Y(n812) );
  ao1f2 U934 ( .A(n829), .B(n813), .C(n812), .Y(n814) );
  oa1f3 U935 ( .A(n908), .B(n815), .C(n814), .Y(n816) );
  xor2a2 U936 ( .A(n817), .B(n816), .Y(n818) );
  mx2a6 U937 ( .D0(n819), .D1(n818), .S(n1106), .Y(N153) );
  inv1a1 U938 ( .A(n820), .Y(n822) );
  or2c1 U939 ( .A(n822), .B(n821), .Y(n823) );
  xor2a2 U940 ( .A(n824), .B(n823), .Y(n835) );
  or2c1 U941 ( .A(n3), .B(n825), .Y(n833) );
  and2c3 U942 ( .A(n828), .B(n826), .Y(n831) );
  ao1f2 U943 ( .A(n829), .B(n828), .C(n827), .Y(n830) );
  oa1f3 U944 ( .A(n908), .B(n831), .C(n830), .Y(n832) );
  xor2a2 U945 ( .A(n833), .B(n832), .Y(n834) );
  inv1a1 U946 ( .A(n845), .Y(n838) );
  oa1f3 U947 ( .A(n871), .B(n839), .C(n838), .Y(n840) );
  xor2b2 U948 ( .A(n837), .B(n840), .Y(n841) );
  ao1f2 U949 ( .A(n845), .B(n844), .C(n843), .Y(n846) );
  oa1f3 U950 ( .A(n871), .B(n847), .C(n846), .Y(n851) );
  or2c1 U951 ( .A(n849), .B(n848), .Y(n850) );
  xor2a2 U952 ( .A(n851), .B(n850), .Y(n852) );
  and2c3 U953 ( .A(n856), .B(n853), .Y(n870) );
  ao1f2 U954 ( .A(n857), .B(n856), .C(n855), .Y(n869) );
  or2c1 U955 ( .A(n861), .B(n_zz_10_2_), .Y(n867) );
  inv1a1 U956 ( .A(n867), .Y(n858) );
  oa1f3 U957 ( .A(n869), .B(n868), .C(n858), .Y(n859) );
  inv1a1 U958 ( .A(n859), .Y(n860) );
  oa1f3 U959 ( .A(n871), .B(n854), .C(n860), .Y(n865) );
  or2a1 U960 ( .A(psum_out1[15]), .B(n861), .Y(n863) );
  or2c1 U961 ( .A(n861), .B(psum_out1[15]), .Y(n862) );
  or2c1 U962 ( .A(n863), .B(n862), .Y(n864) );
  xor2a2 U963 ( .A(n865), .B(n864), .Y(n866) );
  and2a3 U964 ( .A(n868), .B(n867), .Y(n873) );
  oa1f3 U965 ( .A(n871), .B(n870), .C(n869), .Y(n872) );
  xor2b2 U966 ( .A(n873), .B(n872), .Y(n875) );
  or3d3 U967 ( .A(n_zz_12_0_), .B(n_zz_12_2_), .C(n_zz_12_1_), .Y(n876) );
  or2c6 U968 ( .A(n876), .B(psum_out2[15]), .Y(n954) );
  inv1a1 U969 ( .A(n_zz_12_0_), .Y(n879) );
  inv1a1 U970 ( .A(n_zz_12_2_), .Y(n878) );
  inv1a1 U971 ( .A(n_zz_12_1_), .Y(n877) );
  or3d3 U972 ( .A(n879), .B(n878), .C(n877), .Y(n881) );
  inv1a1 U973 ( .A(psum_out2[15]), .Y(n880) );
  or2c6 U974 ( .A(n881), .B(n880), .Y(n953) );
  ao1d1 U975 ( .A(psum2[13]), .B(n954), .C(n953), .Y(psum_out2[13]) );
  or3d3 U976 ( .A(n_zz_10_0_), .B(n_zz_10_2_), .C(n_zz_10_1_), .Y(n882) );
  or2c6 U977 ( .A(n882), .B(psum_out1[15]), .Y(n956) );
  inv1a1 U978 ( .A(n_zz_10_0_), .Y(n885) );
  inv1a1 U979 ( .A(n_zz_10_2_), .Y(n884) );
  or3d3 U980 ( .A(n885), .B(n884), .C(n883), .Y(n887) );
  inv1a1 U981 ( .A(psum_out1[15]), .Y(n886) );
  or2c6 U982 ( .A(n887), .B(n886), .Y(n955) );
  ao1d2 U983 ( .A(psum1[8]), .B(n956), .C(n955), .Y(psum_out1[8]) );
  ao1d2 U984 ( .A(psum1[9]), .B(n956), .C(n955), .Y(psum_out1[9]) );
  ao1d2 U985 ( .A(psum1[14]), .B(n956), .C(n955), .Y(psum_out1[14]) );
  or2c3 U986 ( .A(n917), .B(n892), .Y(n896) );
  ao1f2 U987 ( .A(n915), .B(n893), .C(n912), .Y(n894) );
  inv1a1 U988 ( .A(n894), .Y(n895) );
  xor2b2 U989 ( .A(n890), .B(n897), .Y(n898) );
  ao1d3 U990 ( .A(n898), .B(n1106), .C(n919), .Y(N175) );
  inv1a1 U991 ( .A(n899), .Y(n936) );
  inv1a1 U992 ( .A(n935), .Y(n900) );
  oa1f3 U993 ( .A(n937), .B(n936), .C(n900), .Y(n905) );
  inv1a1 U994 ( .A(n901), .Y(n903) );
  or2c1 U995 ( .A(n903), .B(n902), .Y(n904) );
  xor2a2 U996 ( .A(n905), .B(n904), .Y(n911) );
  or2c1 U997 ( .A(n907), .B(n906), .Y(n909) );
  xor2b2 U998 ( .A(n909), .B(n908), .Y(n910) );
  mx2a1 U999 ( .D0(n911), .D1(n910), .S(n1106), .Y(N149) );
  ao1d2 U1000 ( .A(psum2[14]), .B(n954), .C(n953), .Y(psum_out2[14]) );
  ao1d3 U1001 ( .A(n917), .B(n916), .C(n915), .Y(n918) );
  xor2b2 U1002 ( .A(n914), .B(n918), .Y(n921) );
  ao1d3 U1003 ( .A(n921), .B(n920), .C(n919), .Y(N174) );
  inv1a1 U1004 ( .A(n922), .Y(n973) );
  inv1a1 U1005 ( .A(n972), .Y(n923) );
  oa1f3 U1006 ( .A(n974), .B(n973), .C(n923), .Y(n928) );
  inv1a1 U1007 ( .A(n924), .Y(n926) );
  or2c1 U1008 ( .A(n926), .B(n925), .Y(n927) );
  xor2a2 U1009 ( .A(n928), .B(n927), .Y(n934) );
  or2c1 U1010 ( .A(n930), .B(n929), .Y(n932) );
  xor2b2 U1011 ( .A(n932), .B(n931), .Y(n933) );
  mx2a1 U1012 ( .D0(n934), .D1(n933), .S(n1117), .Y(N168) );
  ao1d2 U1013 ( .A(psum2[2]), .B(n954), .C(n953), .Y(psum_out2[2]) );
  or2c1 U1014 ( .A(n936), .B(n935), .Y(n938) );
  xor2b2 U1015 ( .A(n938), .B(n937), .Y(n946) );
  inv1a1 U1016 ( .A(n939), .Y(n941) );
  or2c1 U1017 ( .A(n941), .B(n940), .Y(n944) );
  ao1f2 U1018 ( .A(n1061), .B(n1057), .C(n1058), .Y(n943) );
  xor2b2 U1019 ( .A(n944), .B(n943), .Y(n945) );
  mx2a1 U1020 ( .D0(n946), .D1(n945), .S(n1106), .Y(N148) );
  inv1a1 U1021 ( .A(n1123), .Y(n948) );
  ao4f1 U1022 ( .A(n948), .B(n962), .C(n947), .D(n949), .Y(N181) );
  oa1f1 U1023 ( .A(mac_en), .B(n962), .C(n1123), .Y(n952) );
  buf1a9 U1024 ( .A(resetn), .Y(n1121) );
  buf1a9 U1025 ( .A(resetn), .Y(n1122) );
  ao1d2 U1026 ( .A(psum2[0]), .B(n954), .C(n953), .Y(psum_out2[0]) );
  ao1d2 U1027 ( .A(psum2[1]), .B(n954), .C(n953), .Y(psum_out2[1]) );
  ao1d2 U1028 ( .A(psum2[3]), .B(n954), .C(n953), .Y(psum_out2[3]) );
  ao1d2 U1029 ( .A(psum2[4]), .B(n954), .C(n953), .Y(psum_out2[4]) );
  ao1d2 U1030 ( .A(psum2[5]), .B(n954), .C(n953), .Y(psum_out2[5]) );
  ao1d2 U1031 ( .A(psum2[6]), .B(n954), .C(n953), .Y(psum_out2[6]) );
  ao1d2 U1032 ( .A(psum2[7]), .B(n954), .C(n953), .Y(psum_out2[7]) );
  ao1d2 U1033 ( .A(psum2[8]), .B(n954), .C(n953), .Y(psum_out2[8]) );
  ao1d2 U1034 ( .A(psum2[9]), .B(n954), .C(n953), .Y(psum_out2[9]) );
  ao1d2 U1035 ( .A(psum2[10]), .B(n954), .C(n953), .Y(psum_out2[10]) );
  ao1d2 U1036 ( .A(psum2[11]), .B(n954), .C(n953), .Y(psum_out2[11]) );
  ao1d2 U1037 ( .A(psum2[12]), .B(n954), .C(n953), .Y(psum_out2[12]) );
  ao1d2 U1038 ( .A(psum1[1]), .B(n956), .C(n955), .Y(psum_out1[1]) );
  ao1d2 U1039 ( .A(psum1[2]), .B(n956), .C(n955), .Y(psum_out1[2]) );
  ao1d2 U1040 ( .A(psum1[3]), .B(n956), .C(n955), .Y(psum_out1[3]) );
  ao1d2 U1041 ( .A(psum1[4]), .B(n956), .C(n955), .Y(psum_out1[4]) );
  ao1d2 U1042 ( .A(psum1[7]), .B(n956), .C(n955), .Y(psum_out1[7]) );
  and2c3 U1043 ( .A(valid_num[0]), .B(valid_num[1]), .Y(n969) );
  xor2a2 U1044 ( .A(valid_num[2]), .B(mac_cnt[2]), .Y(n958) );
  or2c1 U1045 ( .A(n958), .B(mac_cnt[1]), .Y(n968) );
  inv1a1 U1046 ( .A(n969), .Y(n957) );
  or2c1 U1047 ( .A(n958), .B(n957), .Y(n966) );
  and2c1 U1048 ( .A(valid_num[1]), .B(n959), .Y(n960) );
  oa1f1 U1049 ( .A(valid_num[0]), .B(mac_cnt[0]), .C(n960), .Y(n965) );
  ao1f1 U1050 ( .A(valid_num[0]), .B(n962), .C(n961), .Y(n963) );
  or2c1 U1051 ( .A(n963), .B(valid_num[1]), .Y(n964) );
  or3d1 U1052 ( .A(n966), .B(n965), .C(n964), .Y(n967) );
  oa1f3 U1053 ( .A(n969), .B(n968), .C(n967), .Y(n1120) );
  inv1a1 U1054 ( .A(n1120), .Y(n970) );
  and2b2 U1055 ( .B(en), .A(n971), .Y(n183) );
  or2c1 U1056 ( .A(n973), .B(n972), .Y(n975) );
  xor2b2 U1057 ( .A(n975), .B(n974), .Y(n983) );
  inv1a1 U1058 ( .A(n976), .Y(n978) );
  or2c1 U1059 ( .A(n978), .B(n977), .Y(n981) );
  inv1a2 U1060 ( .A(n979), .Y(n994) );
  ao1f2 U1061 ( .A(n994), .B(n990), .C(n991), .Y(n980) );
  xor2b2 U1062 ( .A(n981), .B(n980), .Y(n982) );
  mx2a1 U1063 ( .D0(n983), .D1(n982), .S(n1117), .Y(N167) );
  inv1a1 U1064 ( .A(n984), .Y(n986) );
  or2c1 U1065 ( .A(n986), .B(n985), .Y(n989) );
  inv1a1 U1066 ( .A(n987), .Y(n1000) );
  ao1f2 U1067 ( .A(n1000), .B(n997), .C(n998), .Y(n988) );
  xor2b2 U1068 ( .A(n989), .B(n988), .Y(n996) );
  inv1a1 U1069 ( .A(n990), .Y(n992) );
  or2c1 U1070 ( .A(n992), .B(n991), .Y(n993) );
  xor2a2 U1071 ( .A(n994), .B(n993), .Y(n995) );
  mx2a1 U1072 ( .D0(n996), .D1(n995), .S(n1117), .Y(N166) );
  inv1a1 U1073 ( .A(n997), .Y(n999) );
  or2c1 U1074 ( .A(n999), .B(n998), .Y(n1001) );
  xor2a2 U1075 ( .A(n1001), .B(n1000), .Y(n1008) );
  inv1a1 U1076 ( .A(n1002), .Y(n1004) );
  or2c1 U1077 ( .A(n1004), .B(n1003), .Y(n1006) );
  xor2a2 U1078 ( .A(n1006), .B(n1005), .Y(n1007) );
  mx2a1 U1079 ( .D0(n1008), .D1(n1007), .S(n1117), .Y(N165) );
  inv1a1 U1080 ( .A(n1009), .Y(n1011) );
  or2c1 U1081 ( .A(n1011), .B(n1010), .Y(n1013) );
  xor2a2 U1082 ( .A(n1013), .B(n1012), .Y(n1020) );
  or2c1 U1083 ( .A(n1017), .B(n1016), .Y(n1018) );
  xor2b2 U1084 ( .A(n1015), .B(n1018), .Y(n1019) );
  mx2a1 U1085 ( .D0(n1020), .D1(n1019), .S(n1117), .Y(N164) );
  or2c1 U1086 ( .A(n465), .B(n1021), .Y(n1022) );
  xor2b2 U1087 ( .A(n1023), .B(n1022), .Y(n1030) );
  inv1a1 U1088 ( .A(n1024), .Y(n1026) );
  or2c1 U1089 ( .A(n1026), .B(n1025), .Y(n1028) );
  xor2a2 U1090 ( .A(n1028), .B(n1027), .Y(n1029) );
  mx2a1 U1091 ( .D0(n1030), .D1(n1029), .S(n1117), .Y(N163) );
  inv1a1 U1092 ( .A(n1031), .Y(n1033) );
  or2c1 U1093 ( .A(n1033), .B(n1032), .Y(n1035) );
  xor2a2 U1094 ( .A(n1035), .B(n1034), .Y(n1041) );
  or2c1 U1095 ( .A(n1037), .B(n1036), .Y(n1039) );
  xor2b2 U1096 ( .A(n1039), .B(n1038), .Y(n1040) );
  mx2a1 U1097 ( .D0(n1041), .D1(n1040), .S(n1117), .Y(N162) );
  or2c1 U1098 ( .A(n453), .B(n1042), .Y(n1043) );
  xor2b2 U1099 ( .A(n459), .B(n1043), .Y(n1050) );
  inv1a1 U1100 ( .A(n1044), .Y(n1046) );
  or2c1 U1101 ( .A(n1046), .B(n1045), .Y(n1047) );
  xor2b2 U1102 ( .A(n1048), .B(n1047), .Y(n1049) );
  mx2a1 U1103 ( .D0(n1050), .D1(n1049), .S(n1117), .Y(N161) );
  inv1a1 U1104 ( .A(n1051), .Y(n1053) );
  or2c1 U1105 ( .A(n1053), .B(n1052), .Y(n1056) );
  inv1a1 U1106 ( .A(n1054), .Y(n1067) );
  ao1f2 U1107 ( .A(n1067), .B(n1064), .C(n1065), .Y(n1055) );
  xor2b2 U1108 ( .A(n1056), .B(n1055), .Y(n1063) );
  inv1a1 U1109 ( .A(n1057), .Y(n1059) );
  or2c1 U1110 ( .A(n1059), .B(n1058), .Y(n1060) );
  xor2a2 U1111 ( .A(n1061), .B(n1060), .Y(n1062) );
  mx2a1 U1112 ( .D0(n1063), .D1(n1062), .S(n1106), .Y(N147) );
  inv1a1 U1113 ( .A(n1064), .Y(n1066) );
  or2c1 U1114 ( .A(n1066), .B(n1065), .Y(n1068) );
  xor2a2 U1115 ( .A(n1068), .B(n1067), .Y(n1075) );
  inv1a1 U1116 ( .A(n1069), .Y(n1071) );
  or2c1 U1117 ( .A(n1071), .B(n1070), .Y(n1073) );
  xor2a2 U1118 ( .A(n1073), .B(n1072), .Y(n1074) );
  mx2a1 U1119 ( .D0(n1075), .D1(n1074), .S(n1106), .Y(N146) );
  inv1a1 U1120 ( .A(n1076), .Y(n1078) );
  or2c1 U1121 ( .A(n1078), .B(n1077), .Y(n1080) );
  xor2a2 U1122 ( .A(n1080), .B(n1079), .Y(n1086) );
  or2c1 U1123 ( .A(n1082), .B(n1081), .Y(n1084) );
  xor2b2 U1124 ( .A(n1084), .B(n1083), .Y(n1085) );
  mx2a1 U1125 ( .D0(n1086), .D1(n1085), .S(n1106), .Y(N145) );
  or2c1 U1126 ( .A(n5), .B(n1087), .Y(n1088) );
  xor2b2 U1127 ( .A(n1089), .B(n1088), .Y(n1096) );
  inv1a1 U1128 ( .A(n1090), .Y(n1092) );
  or2c1 U1129 ( .A(n1092), .B(n1091), .Y(n1094) );
  xor2a2 U1130 ( .A(n1094), .B(n1093), .Y(n1095) );
  mx2a1 U1131 ( .D0(n1096), .D1(n1095), .S(n1106), .Y(N144) );
  inv1a1 U1132 ( .A(n1097), .Y(n1099) );
  or2c1 U1133 ( .A(n1099), .B(n1098), .Y(n1101) );
  xor2a2 U1134 ( .A(n1101), .B(n1100), .Y(n1108) );
  or2c1 U1135 ( .A(n1103), .B(n1102), .Y(n1104) );
  xor2b2 U1136 ( .A(n1105), .B(n1104), .Y(n1107) );
  mx2a1 U1137 ( .D0(n1108), .D1(n1107), .S(n1106), .Y(N143) );
  or2c1 U1138 ( .A(n327), .B(n1109), .Y(n1110) );
  xor2b2 U1139 ( .A(n1111), .B(n1110), .Y(n1119) );
  inv1a1 U1140 ( .A(n1112), .Y(n1114) );
  or2c1 U1141 ( .A(n1114), .B(n1113), .Y(n1115) );
  xor2b2 U1142 ( .A(n1116), .B(n1115), .Y(n1118) );
  mx2a1 U1143 ( .D0(n1119), .D1(n1118), .S(n1117), .Y(N142) );
  or3d1 U1144 ( .A(n1120), .B(mac_en), .C(en), .Y(n182) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cordic_int_0 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3285;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3285) );
  and2a3 main_gate ( .A(net3285), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cordic_int_2 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3285;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3285) );
  and2a3 main_gate ( .A(net3285), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cordic_int_1 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3285;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3285) );
  and2a3 main_gate ( .A(net3285), .B(CLK), .Y(ENCLK) );
endmodule


module cordic_int ( en, rg_cordic_iternum, vld, y, x, res, res_vld, clk, 
        resetn );
  input [2:0] rg_cordic_iternum;
  input [15:0] y;
  input [15:0] x;
  output [7:0] res;
  input en, vld, clk, resetn;
  output res_vld;
  wire   n_zz_15_0_, cal_en, cal_en_regNext, xn_rightshift_18_, N121, N255,
         N256, N257, N258, N259, N260, N261, N262, N265, N266, N267, N268,
         N269, N270, N271, N272, N273, N274, N275, N276, N277, N278, N279,
         N280, N281, N282, N283, N284, N285, N286, N288, N294, N295, N296,
         N299, N300, N301, N302, N303, N304, N305, N306, N307, N308, N309,
         N310, N311, N312, N313, N314, N315, N316, N317, N319, N320, N321,
         N323, net3291, net3296, net3301, n198, n199, n200,
         DP_OP_38J1_122_4721_n19, DP_OP_38J1_122_4721_n18,
         DP_OP_38J1_122_4721_n17, DP_OP_38J1_122_4721_n16,
         DP_OP_38J1_122_4721_n15, DP_OP_38J1_122_4721_n14,
         DP_OP_38J1_122_4721_n9, DP_OP_38J1_122_4721_n8,
         DP_OP_38J1_122_4721_n7, DP_OP_38J1_122_4721_n6,
         DP_OP_38J1_122_4721_n5, DP_OP_38J1_122_4721_n4,
         DP_OP_38J1_122_4721_n3, DP_OP_38J1_122_4721_n2, n1, n2, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504,
         n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515,
         n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, n537,
         n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, n548,
         n549, n550, n551, n552, n553, n554, n555, n556, n557, n558, n559,
         n560, n561, n562, n563, n564, n565, n566, n567, n568, n569, n570,
         n571, n572, n573, n574, n575, n576, n577, n578, n579, n580, n581,
         n582, n583, n584, n585, n586, n587, n588, n589, n590, n591, n592,
         n593, n594, n595, n596, n597, n598, n599, n600, n601, n602, n603,
         n604, n605, n606, n607, n608, n609, n610, n611, n612, n613, n614,
         n615, n616, n617, n618, n619, n620, n621, n622, n623, n624, n625,
         n626, n627, n628, n629, n630, n631, n632, n633, n634, n635, n636,
         n637, n638, n639, n640, n641, n642, n643, n644, n645, n646, n647,
         n648, n649, n650, n651, n652, n653, n654, n655, n656, n657, n658,
         n659, n660, n661, n662, n663;
  wire   [6:0] res_rg;
  wire   [2:0] cal_cnt;
  wire   [17:0] xn;
  wire   [17:0] yn;

  SNPS_CLOCK_GATE_HIGH_cordic_int_0 clk_gate_cal_cnt_reg ( .CLK(clk), .EN(N320), .ENCLK(net3291) );
  SNPS_CLOCK_GATE_HIGH_cordic_int_2 clk_gate_res_rg_reg ( .CLK(clk), .EN(N321), 
        .ENCLK(net3296) );
  SNPS_CLOCK_GATE_HIGH_cordic_int_1 clk_gate_yn_reg ( .CLK(clk), .EN(N319), 
        .ENCLK(net3301) );
  fdf2a3 cal_en_regNext_reg ( .D(cal_en), .CLK(clk), .CLR(resetn), .Q(
        cal_en_regNext) );
  fdf2a3 finish_reg ( .D(N323), .CLK(clk), .CLR(resetn), .Q(res_vld) );
  fdf2a3 res_rg_reg_7_ ( .D(N295), .CLK(net3296), .CLR(n662), .Q(n_zz_15_0_)
         );
  fdf2a3 res_rg_reg_6_ ( .D(N294), .CLK(net3296), .CLR(n662), .Q(res_rg[6]) );
  fdf2a3 res_rg_reg_5_ ( .D(n656), .CLK(net3296), .CLR(resetn), .Q(res_rg[5])
         );
  fdf2a3 res_rg_reg_4_ ( .D(n659), .CLK(net3296), .CLR(resetn), .Q(res_rg[4])
         );
  fdf2a3 res_rg_reg_3_ ( .D(n658), .CLK(net3296), .CLR(n661), .Q(res_rg[3]) );
  fdf2a3 res_rg_reg_2_ ( .D(n657), .CLK(net3296), .CLR(n663), .Q(res_rg[2]) );
  fdf2a3 res_rg_reg_1_ ( .D(n660), .CLK(net3296), .CLR(n662), .Q(res_rg[1]) );
  fdf2a3 res_rg_reg_0_ ( .D(N288), .CLK(net3296), .CLR(n661), .Q(res_rg[0]) );
  fdf2a3 xn_reg_18_ ( .D(N317), .CLK(net3301), .CLR(n661), .Q(
        xn_rightshift_18_) );
  fdf2a3 yn_reg_16_ ( .D(N284), .CLK(net3301), .CLR(n661), .Q(yn[16]) );
  fdf2a3 xn_reg_8_ ( .D(N307), .CLK(net3301), .CLR(n661), .Q(xn[8]) );
  fdf2a3 yn_reg_8_ ( .D(N276), .CLK(net3301), .CLR(n662), .Q(yn[8]) );
  fdf2a3 xn_reg_7_ ( .D(N306), .CLK(net3301), .CLR(n662), .Q(xn[7]) );
  fdf2a3 yn_reg_7_ ( .D(N275), .CLK(net3301), .CLR(n663), .Q(yn[7]) );
  fdf2a3 xn_reg_6_ ( .D(N305), .CLK(net3301), .CLR(n662), .Q(xn[6]) );
  fdf2a3 yn_reg_6_ ( .D(N274), .CLK(net3301), .CLR(n661), .Q(yn[6]) );
  fdf2a3 yn_reg_5_ ( .D(N273), .CLK(net3301), .CLR(n661), .Q(yn[5]) );
  fdf2a3 xn_reg_4_ ( .D(N303), .CLK(net3301), .CLR(n663), .Q(xn[4]) );
  fdf2a3 yn_reg_4_ ( .D(N272), .CLK(net3301), .CLR(n661), .Q(yn[4]) );
  fdf2a3 xn_reg_3_ ( .D(N302), .CLK(net3301), .CLR(n661), .Q(xn[3]) );
  fdf2a3 yn_reg_3_ ( .D(N271), .CLK(net3301), .CLR(resetn), .Q(yn[3]) );
  fdf2a3 xn_reg_2_ ( .D(N301), .CLK(net3301), .CLR(resetn), .Q(xn[2]) );
  fdf2a3 yn_reg_2_ ( .D(N270), .CLK(net3301), .CLR(resetn), .Q(yn[2]) );
  fdf2a3 xn_reg_1_ ( .D(N300), .CLK(net3301), .CLR(resetn), .Q(xn[1]) );
  fdf2a3 yn_reg_1_ ( .D(N269), .CLK(net3301), .CLR(resetn), .Q(yn[1]) );
  fdf2a3 xn_reg_0_ ( .D(N299), .CLK(net3301), .CLR(resetn), .Q(xn[0]) );
  fdf2a3 yn_reg_0_ ( .D(N268), .CLK(net3301), .CLR(resetn), .Q(yn[0]) );
  fdf2a3 nozero_flg_reg ( .D(n199), .CLK(clk), .CLR(n661), .Q(n198) );
  fdf2a3 cal_cnt_reg_0_ ( .D(N265), .CLK(net3291), .CLR(resetn), .Q(cal_cnt[0]) );
  fdf2a3 xn_reg_5_ ( .D(N304), .CLK(net3301), .CLR(n663), .Q(xn[5]) );
  fa1a2 DP_OP_38J1_122_4721_U10 ( .A(N121), .B(res_rg[0]), .CI(
        DP_OP_38J1_122_4721_n19), .CO(DP_OP_38J1_122_4721_n9), .S(N255) );
  fa1a2 DP_OP_38J1_122_4721_U9 ( .A(res_rg[1]), .B(DP_OP_38J1_122_4721_n18), 
        .CI(DP_OP_38J1_122_4721_n9), .CO(DP_OP_38J1_122_4721_n8), .S(N256) );
  fa1a2 DP_OP_38J1_122_4721_U8 ( .A(res_rg[2]), .B(DP_OP_38J1_122_4721_n17), 
        .CI(DP_OP_38J1_122_4721_n8), .CO(DP_OP_38J1_122_4721_n7), .S(N257) );
  fa1a2 DP_OP_38J1_122_4721_U7 ( .A(res_rg[3]), .B(DP_OP_38J1_122_4721_n16), 
        .CI(DP_OP_38J1_122_4721_n7), .CO(DP_OP_38J1_122_4721_n6), .S(N258) );
  fa1a2 DP_OP_38J1_122_4721_U6 ( .A(res_rg[4]), .B(DP_OP_38J1_122_4721_n15), 
        .CI(DP_OP_38J1_122_4721_n6), .CO(DP_OP_38J1_122_4721_n5), .S(N259) );
  fa1a2 DP_OP_38J1_122_4721_U5 ( .A(res_rg[5]), .B(DP_OP_38J1_122_4721_n14), 
        .CI(DP_OP_38J1_122_4721_n5), .CO(DP_OP_38J1_122_4721_n4), .S(N260) );
  fa1a2 DP_OP_38J1_122_4721_U4 ( .A(res_rg[6]), .B(N121), .CI(
        DP_OP_38J1_122_4721_n4), .CO(DP_OP_38J1_122_4721_n3), .S(N261) );
  fa1a2 DP_OP_38J1_122_4721_U3 ( .A(n_zz_15_0_), .B(N121), .CI(
        DP_OP_38J1_122_4721_n3), .CO(DP_OP_38J1_122_4721_n2), .S(N262) );
  fdf2a6 cal_cnt_reg_1_ ( .D(N266), .CLK(net3291), .CLR(resetn), .Q(cal_cnt[1]) );
  fdf2a3 yn_reg_9_ ( .D(N277), .CLK(net3301), .CLR(n661), .Q(yn[9]) );
  fdf2a3 xn_reg_9_ ( .D(N308), .CLK(net3301), .CLR(n663), .Q(xn[9]) );
  fdf2a3 yn_reg_10_ ( .D(N278), .CLK(net3301), .CLR(n661), .Q(yn[10]) );
  fdf2a3 xn_reg_10_ ( .D(N309), .CLK(net3301), .CLR(n663), .Q(xn[10]) );
  fdf2a3 yn_reg_11_ ( .D(N279), .CLK(net3301), .CLR(n662), .Q(yn[11]) );
  fdf2a3 xn_reg_11_ ( .D(N310), .CLK(net3301), .CLR(n661), .Q(xn[11]) );
  fdf2a3 xn_reg_12_ ( .D(N311), .CLK(net3301), .CLR(n663), .Q(xn[12]) );
  fdf2a3 yn_reg_12_ ( .D(N280), .CLK(net3301), .CLR(n662), .Q(yn[12]) );
  fdf2a3 yn_reg_13_ ( .D(N281), .CLK(net3301), .CLR(n661), .Q(yn[13]) );
  fdf2a3 xn_reg_13_ ( .D(N312), .CLK(net3301), .CLR(n663), .Q(xn[13]) );
  fdf2a3 yn_reg_14_ ( .D(N282), .CLK(net3301), .CLR(n662), .Q(yn[14]) );
  fdf2a3 xn_reg_14_ ( .D(N313), .CLK(net3301), .CLR(n661), .Q(xn[14]) );
  fdf2a3 yn_reg_15_ ( .D(N283), .CLK(net3301), .CLR(n661), .Q(yn[15]) );
  fdf2a3 xn_reg_15_ ( .D(N314), .CLK(net3301), .CLR(n663), .Q(xn[15]) );
  fdf2a3 xn_reg_16_ ( .D(N315), .CLK(net3301), .CLR(n662), .Q(xn[16]) );
  fdf2a9 yn_reg_18_ ( .D(N286), .CLK(net3301), .CLR(n663), .Q(N121) );
  fdf2a3 cal_en_reg ( .D(n200), .CLK(clk), .CLR(resetn), .Q(cal_en) );
  fdf2a6 res_rg_reg_8_ ( .D(N296), .CLK(net3296), .CLR(resetn), .Q(res[7]) );
  fdf2a3 yn_reg_17_ ( .D(N285), .CLK(net3301), .CLR(n663), .Q(yn[17]) );
  fdf2a3 cal_cnt_reg_2_ ( .D(N267), .CLK(net3291), .CLR(resetn), .Q(cal_cnt[2]) );
  fdf2a3 xn_reg_17_ ( .D(N316), .CLK(net3301), .CLR(n662), .Q(xn[17]) );
  or2c1 U3 ( .A(n336), .B(n335), .Y(n564) );
  or2c1 U4 ( .A(n316), .B(n315), .Y(n540) );
  ao1f2 U5 ( .A(n507), .B(n503), .C(n504), .Y(n518) );
  or2c1 U6 ( .A(n255), .B(n254), .Y(n455) );
  or2c1 U7 ( .A(n186), .B(n194), .Y(n228) );
  or2a1 U8 ( .A(n219), .B(n220), .Y(n218) );
  or2c1 U9 ( .A(n223), .B(n222), .Y(n399) );
  or2c1 U10 ( .A(n220), .B(n219), .Y(n388) );
  or2c1 U11 ( .A(n225), .B(n224), .Y(n413) );
  or2c9 U12 ( .A(N121), .B(n135), .Y(n7) );
  or2c9 U13 ( .A(cal_cnt[0]), .B(n611), .Y(n31) );
  and2a3 U14 ( .A(cal_en), .B(n6), .Y(n643) );
  inv1a1 U15 ( .A(cal_en_regNext), .Y(n6) );
  ao2i1 U16 ( .A(n119), .B(n606), .C(n92), .D(n1), .Y(n93) );
  oa2i2 U17 ( .A(n119), .B(n610), .C(n118), .D(n117), .Y(n120) );
  inv1a1 U18 ( .A(n421), .Y(n143) );
  inv1a1 U19 ( .A(n399), .Y(n411) );
  inv1a1 U20 ( .A(res[7]), .Y(n523) );
  ao1f2 U21 ( .A(n567), .B(n563), .C(n564), .Y(n577) );
  or2c3 U22 ( .A(n_zz_15_0_), .B(n523), .Y(n530) );
  inv1a3 U23 ( .A(n522), .Y(n532) );
  ao1f2 U24 ( .A(n532), .B(n524), .C(n530), .Y(res[0]) );
  inv1a3 U25 ( .A(cal_cnt[2]), .Y(n48) );
  ao4e3 U26 ( .B(n437), .A(n195), .C(xn[4]), .D(n208), .Y(n103) );
  or2c1 U27 ( .A(n305), .B(n304), .Y(n517) );
  or2c1 U28 ( .A(n472), .B(n473), .Y(n152) );
  or2c1 U29 ( .A(n328), .B(n327), .Y(n552) );
  inv1a1 U30 ( .A(n511), .Y(n159) );
  or2c1 U31 ( .A(n448), .B(n449), .Y(n148) );
  or2c1 U32 ( .A(n264), .B(n263), .Y(n467) );
  inv1a1 U33 ( .A(n546), .Y(n163) );
  or2c1 U34 ( .A(n283), .B(n282), .Y(n492) );
  or2c1 U35 ( .A(n342), .B(n341), .Y(n576) );
  inv1a1 U36 ( .A(n581), .Y(n170) );
  xor2a2 U37 ( .A(n334), .B(n355), .Y(n336) );
  xor2a2 U38 ( .A(n314), .B(n355), .Y(n316) );
  mx2d1 U39 ( .D0(n5), .D1(n300), .S(n606), .Y(n259) );
  and2c2 U40 ( .A(n355), .B(n206), .Y(n375) );
  and2c2 U41 ( .A(n354), .B(n426), .Y(n241) );
  and2c2 U42 ( .A(n354), .B(n398), .Y(n222) );
  oa1f1 U43 ( .A(n58), .B(n57), .C(n41), .Y(n59) );
  oa1f3 U44 ( .A(n330), .B(n287), .C(n41), .Y(n288) );
  oa1f2 U45 ( .A(n404), .B(n607), .C(n365), .Y(N319) );
  clk1b6 U46 ( .A(n607), .Y(n1) );
  inv1a1 U47 ( .A(xn[14]), .Y(n562) );
  ao1d2 U48 ( .A(n155), .B(n154), .C(n487), .Y(n157) );
  or2c3 U49 ( .A(n153), .B(n152), .Y(n487) );
  ao1d2 U50 ( .A(n151), .B(n150), .C(n474), .Y(n153) );
  or2c3 U51 ( .A(n149), .B(n148), .Y(n461) );
  ao1d2 U52 ( .A(n147), .B(n146), .C(n450), .Y(n149) );
  fa1a2 U53 ( .A(n434), .B(n433), .CI(n432), .CO(n450), .S(n435) );
  ao1f2 U54 ( .A(n482), .B(n478), .C(n479), .Y(n493) );
  ao1f2 U55 ( .A(n458), .B(n454), .C(n455), .Y(n468) );
  ao1d2 U56 ( .A(n143), .B(n142), .C(n423), .Y(n145) );
  ao1f2 U57 ( .A(n228), .B(n400), .C(n227), .Y(n427) );
  or2c1 U58 ( .A(n480), .B(n479), .Y(n481) );
  or2c1 U59 ( .A(n440), .B(n439), .Y(n445) );
  inv1a1 U60 ( .A(n552), .Y(n329) );
  inv1a1 U61 ( .A(n517), .Y(n306) );
  or2c1 U62 ( .A(n303), .B(n517), .Y(n519) );
  or2c1 U63 ( .A(n326), .B(n552), .Y(n554) );
  or2a1 U64 ( .A(n304), .B(n305), .Y(n303) );
  or2c1 U65 ( .A(n511), .B(n512), .Y(n160) );
  or2c1 U66 ( .A(n262), .B(n467), .Y(n469) );
  inv1a1 U67 ( .A(n472), .Y(n151) );
  and2c3 U68 ( .A(n241), .B(n242), .Y(n442) );
  inv1a1 U69 ( .A(n388), .Y(n221) );
  or2a1 U70 ( .A(n327), .B(n328), .Y(n326) );
  or2c1 U71 ( .A(n281), .B(n492), .Y(n494) );
  ao1f2 U72 ( .A(n207), .B(n375), .C(n376), .Y(n389) );
  inv1a1 U73 ( .A(n576), .Y(n343) );
  inv1a1 U74 ( .A(n503), .Y(n505) );
  or2c1 U75 ( .A(n340), .B(n576), .Y(n578) );
  inv1a1 U76 ( .A(n448), .Y(n147) );
  inv1a1 U77 ( .A(n539), .Y(n541) );
  inv1a1 U78 ( .A(n467), .Y(n265) );
  inv1a1 U79 ( .A(n492), .Y(n284) );
  and2c3 U80 ( .A(n335), .B(n336), .Y(n563) );
  or2c1 U81 ( .A(n357), .B(n601), .Y(n603) );
  inv1a1 U82 ( .A(n485), .Y(n155) );
  or2c1 U83 ( .A(n485), .B(n486), .Y(n156) );
  or2c1 U84 ( .A(n546), .B(n547), .Y(n164) );
  or2c1 U85 ( .A(n581), .B(n582), .Y(n171) );
  and2c3 U86 ( .A(n315), .B(n316), .Y(n539) );
  or2a1 U87 ( .A(n263), .B(n264), .Y(n262) );
  or2c1 U88 ( .A(n295), .B(n294), .Y(n504) );
  inv1a1 U89 ( .A(n559), .Y(n168) );
  or2a1 U90 ( .A(n341), .B(n342), .Y(n340) );
  or2a1 U91 ( .A(n282), .B(n283), .Y(n281) );
  inv1a1 U92 ( .A(n547), .Y(n162) );
  inv1a1 U93 ( .A(n512), .Y(n158) );
  ao1d1 U94 ( .A(y[6]), .B(n177), .C(n252), .Y(n253) );
  xor2a2 U95 ( .A(n293), .B(n355), .Y(n295) );
  or2c1 U96 ( .A(n349), .B(n348), .Y(n588) );
  or2a1 U97 ( .A(n358), .B(n359), .Y(n357) );
  or2c1 U98 ( .A(n359), .B(n358), .Y(n601) );
  ao4f2 U99 ( .A(n204), .B(n490), .C(n607), .D(n203), .Y(n205) );
  ao4f2 U100 ( .A(n490), .B(n216), .C(n215), .D(n2), .Y(n217) );
  ao4f2 U101 ( .A(n260), .B(n490), .C(n354), .D(n259), .Y(n261) );
  ao4f2 U102 ( .A(n192), .B(n490), .C(n2), .D(n191), .Y(n193) );
  inv1a1 U103 ( .A(n449), .Y(n146) );
  inv1a1 U104 ( .A(n473), .Y(n150) );
  inv1a1 U105 ( .A(n422), .Y(n142) );
  inv1a1 U106 ( .A(n486), .Y(n154) );
  and2c3 U107 ( .A(n607), .B(n562), .Y(n335) );
  and2c3 U108 ( .A(n607), .B(n538), .Y(n315) );
  and2c2 U109 ( .A(n354), .B(n410), .Y(n224) );
  and2c2 U110 ( .A(n2), .B(n387), .Y(n219) );
  and2c2 U111 ( .A(n2), .B(n374), .Y(n206) );
  or2a1 U112 ( .A(n2), .B(n176), .Y(n361) );
  buf1a6 U113 ( .A(n2), .Y(n354) );
  ao2i3 U114 ( .A(yn[14]), .B(n367), .C(n276), .D(n275), .Y(n321) );
  ao2i2 U115 ( .A(yn[12]), .B(n31), .C(n230), .D(n229), .Y(n277) );
  ao4f2 U116 ( .A(n398), .B(n212), .C(n652), .D(n410), .Y(n117) );
  ao2i3 U117 ( .A(xn[12]), .B(n367), .C(n50), .D(n49), .Y(n81) );
  oa1f1 U118 ( .A(n35), .B(n88), .C(n26), .Y(n13) );
  ao2i1 U119 ( .A(n367), .B(n551), .C(n610), .D(n70), .Y(n74) );
  oa4f2 U120 ( .A(n286), .B(n496), .C(n307), .D(n510), .Y(n229) );
  ao4f2 U121 ( .A(n651), .B(n410), .C(n426), .D(n211), .Y(n126) );
  oa4f2 U122 ( .A(n286), .B(n477), .C(n307), .D(n491), .Y(n71) );
  oa4f2 U123 ( .A(n286), .B(n484), .C(n307), .D(n496), .Y(n235) );
  clk1b6 U124 ( .A(n323), .Y(n2) );
  oa1f1 U125 ( .A(n296), .B(yn[13]), .C(n88), .Y(n249) );
  or2c3 U126 ( .A(n27), .B(x[15]), .Y(n22) );
  inv1a9 U127 ( .A(n16), .Y(n652) );
  inv1a9 U128 ( .A(n27), .Y(n121) );
  ao1f1 U129 ( .A(n31), .B(n580), .C(n610), .Y(n267) );
  inv1a3 U130 ( .A(n135), .Y(n27) );
  clk1a3 U131 ( .A(n88), .Y(n41) );
  inv1a9 U132 ( .A(cal_cnt[2]), .Y(n88) );
  ao1f2 U133 ( .A(n176), .B(n599), .C(n175), .Y(N286) );
  xor2b2 U134 ( .A(n174), .B(n173), .Y(n175) );
  xor2a2 U135 ( .A(n584), .B(n583), .Y(n585) );
  xor2a2 U136 ( .A(n549), .B(n548), .Y(n550) );
  ao1f2 U137 ( .A(n121), .B(n364), .C(n363), .Y(N317) );
  fa1a3 U138 ( .A(n535), .B(n534), .CI(n533), .CO(n548), .S(n536) );
  xor2b2 U139 ( .A(n362), .B(n361), .Y(n363) );
  xor2a2 U140 ( .A(n514), .B(n513), .Y(n515) );
  xor2a2 U141 ( .A(n603), .B(n602), .Y(n604) );
  xor2b2 U142 ( .A(n591), .B(n590), .Y(n592) );
  oa1f3 U143 ( .A(n577), .B(n340), .C(n343), .Y(n591) );
  or2c3 U144 ( .A(n157), .B(n156), .Y(n497) );
  xor2a2 U145 ( .A(n578), .B(n577), .Y(n579) );
  xor2b2 U146 ( .A(n567), .B(n566), .Y(n568) );
  xor2a2 U147 ( .A(n488), .B(n487), .Y(n489) );
  xor2a2 U148 ( .A(n554), .B(n553), .Y(n555) );
  xor2a2 U149 ( .A(n475), .B(n474), .Y(n476) );
  xor2b2 U150 ( .A(n543), .B(n542), .Y(n544) );
  xor2a2 U151 ( .A(n519), .B(n518), .Y(n520) );
  oa1f3 U152 ( .A(n518), .B(n303), .C(n306), .Y(n543) );
  fa1a3 U153 ( .A(n463), .B(n462), .CI(n461), .CO(n474), .S(n464) );
  ao1f2 U154 ( .A(n453), .B(n490), .C(n452), .Y(N274) );
  xor2b2 U155 ( .A(n507), .B(n506), .Y(n508) );
  xor2a2 U156 ( .A(n451), .B(n450), .Y(n452) );
  xor2a2 U157 ( .A(n494), .B(n493), .Y(n495) );
  xor2b2 U158 ( .A(n482), .B(n481), .Y(n483) );
  xor2a2 U159 ( .A(n469), .B(n468), .Y(n470) );
  xor2a2 U160 ( .A(n445), .B(n444), .Y(n446) );
  or2c3 U161 ( .A(n145), .B(n144), .Y(n432) );
  ao1f2 U162 ( .A(n443), .B(n442), .C(n441), .Y(n444) );
  xor2b2 U163 ( .A(n458), .B(n457), .Y(n459) );
  ao1d2 U164 ( .A(n420), .B(n1), .C(n419), .Y(N296) );
  xor2b2 U165 ( .A(n443), .B(n429), .Y(n430) );
  xor2b2 U166 ( .A(n415), .B(n414), .Y(n416) );
  xor2a2 U167 ( .A(n424), .B(n423), .Y(n425) );
  inv1a3 U168 ( .A(n427), .Y(n443) );
  xor2a2 U169 ( .A(n401), .B(n412), .Y(n402) );
  or2c1 U170 ( .A(n505), .B(n504), .Y(n506) );
  or2c1 U171 ( .A(n428), .B(n441), .Y(n429) );
  or2c1 U172 ( .A(n456), .B(n455), .Y(n457) );
  inv1a1 U173 ( .A(n400), .Y(n412) );
  or2c1 U174 ( .A(n541), .B(n540), .Y(n542) );
  xor2a2 U175 ( .A(n390), .B(n389), .Y(n391) );
  and2c3 U176 ( .A(n438), .B(n442), .Y(n246) );
  or2c1 U177 ( .A(n565), .B(n564), .Y(n566) );
  or2c1 U178 ( .A(n186), .B(n413), .Y(n414) );
  ao1f2 U179 ( .A(n438), .B(n441), .C(n439), .Y(n245) );
  or2c1 U180 ( .A(n218), .B(n388), .Y(n390) );
  xor2a2 U181 ( .A(n396), .B(n395), .Y(n397) );
  or2c1 U182 ( .A(n194), .B(n399), .Y(n401) );
  ao1f2 U183 ( .A(n374), .B(n490), .C(n373), .Y(N268) );
  and2c3 U184 ( .A(n254), .B(n255), .Y(n454) );
  or2c1 U185 ( .A(n589), .B(n588), .Y(n590) );
  xor2a2 U186 ( .A(n379), .B(n378), .Y(n380) );
  or2a3 U187 ( .A(n224), .B(n225), .Y(n186) );
  inv1a1 U188 ( .A(n601), .Y(n360) );
  or2a3 U189 ( .A(n222), .B(n223), .Y(n194) );
  xor2a2 U190 ( .A(n272), .B(n355), .Y(n274) );
  xor2a2 U191 ( .A(n302), .B(n355), .Y(n305) );
  xor2a2 U192 ( .A(n280), .B(n355), .Y(n283) );
  ao1d1 U193 ( .A(y[11]), .B(n177), .C(n301), .Y(n302) );
  and2c3 U194 ( .A(n348), .B(n349), .Y(n587) );
  xor2a2 U195 ( .A(n261), .B(n355), .Y(n264) );
  inv1a3 U196 ( .A(n166), .Y(n558) );
  inv1a1 U197 ( .A(n582), .Y(n169) );
  ao2i1 U198 ( .A(n75), .B(n74), .C(n323), .D(n73), .Y(n76) );
  ao2i1 U199 ( .A(n133), .B(n610), .C(n106), .D(n1), .Y(n107) );
  ao2i1 U200 ( .A(n238), .B(n606), .C(n237), .D(n1), .Y(n239) );
  oa1f1 U201 ( .A(n177), .B(y[8]), .C(n270), .Y(n271) );
  ao2i1 U202 ( .A(n88), .B(n352), .C(n323), .D(n322), .Y(n324) );
  ao2i1 U203 ( .A(n41), .B(n35), .C(n323), .D(n34), .Y(n36) );
  ao2i1 U204 ( .A(n521), .B(n367), .C(n249), .D(n248), .Y(n250) );
  ao2i1 U205 ( .A(n516), .B(n367), .C(n91), .D(n90), .Y(n92) );
  ao4f2 U206 ( .A(n392), .B(n212), .C(n652), .D(n403), .Y(n213) );
  ao4f2 U207 ( .A(n651), .B(n447), .C(n460), .D(n211), .Y(n181) );
  oa1f3 U208 ( .A(n52), .B(n88), .C(n26), .Y(n23) );
  ao4f2 U209 ( .A(n652), .B(n551), .C(n575), .D(n211), .Y(n43) );
  ao2i2 U210 ( .A(xn[10]), .B(n368), .C(n72), .D(n71), .Y(n105) );
  ao4f2 U211 ( .A(n652), .B(n516), .C(n551), .D(n211), .Y(n60) );
  ao4f1 U212 ( .A(n58), .B(n606), .C(n652), .D(n575), .Y(n25) );
  ao4f2 U213 ( .A(n417), .B(n212), .C(n652), .D(n431), .Y(n180) );
  and2c2 U214 ( .A(n608), .B(n607), .Y(N267) );
  ao2i2 U215 ( .A(yn[10]), .B(n368), .C(n236), .D(n235), .Y(n269) );
  clk1a3 U216 ( .A(n258), .Y(n5) );
  ao4f2 U217 ( .A(n652), .B(n521), .C(n556), .D(n211), .Y(n289) );
  ao4f2 U218 ( .A(n410), .B(n212), .C(n652), .D(n426), .Y(n111) );
  ao4f2 U219 ( .A(n652), .B(n556), .C(n580), .D(n211), .Y(n309) );
  ao4f1 U220 ( .A(n330), .B(n610), .C(n652), .D(n580), .Y(n331) );
  oa1f1 U221 ( .A(yn[17]), .B(n307), .C(n345), .Y(n308) );
  ao4f2 U222 ( .A(n651), .B(n426), .C(n437), .D(n211), .Y(n118) );
  ao4f2 U223 ( .A(n651), .B(n431), .C(n447), .D(n211), .Y(n190) );
  ao4f2 U224 ( .A(n651), .B(n437), .C(n453), .D(n211), .Y(n112) );
  ao4f2 U225 ( .A(n651), .B(n417), .C(n431), .D(n211), .Y(n214) );
  ao4f2 U226 ( .A(n651), .B(n403), .C(n417), .D(n211), .Y(n202) );
  oa4f2 U227 ( .A(yn[14]), .B(n286), .C(n285), .D(yn[16]), .Y(n330) );
  oa4f2 U228 ( .A(xn[14]), .B(n286), .C(n285), .D(xn[16]), .Y(n58) );
  oa1f1 U229 ( .A(xn[17]), .B(n307), .C(n40), .Y(n42) );
  oa4f2 U230 ( .A(n286), .B(n491), .C(n307), .D(n502), .Y(n64) );
  ao4f2 U231 ( .A(yn[5]), .B(n208), .C(n367), .D(yn[6]), .Y(n209) );
  and2c2 U232 ( .A(n607), .B(n609), .Y(N265) );
  inv1a3 U233 ( .A(n643), .Y(n639) );
  and2a6 U234 ( .A(n643), .B(y[15]), .Y(n177) );
  inv1a3 U235 ( .A(xn[8]), .Y(n477) );
  inv1a3 U236 ( .A(yn[8]), .Y(n484) );
  inv1a3 U237 ( .A(yn[9]), .Y(n496) );
  inv1a3 U238 ( .A(yn[15]), .Y(n580) );
  inv1a3 U239 ( .A(xn[13]), .Y(n551) );
  inv1a3 U240 ( .A(yn[13]), .Y(n556) );
  inv1a3 U241 ( .A(xn[10]), .Y(n502) );
  inv1a3 U242 ( .A(yn[10]), .Y(n510) );
  inv1a3 U243 ( .A(xn[9]), .Y(n491) );
  inv1a3 U244 ( .A(yn[5]), .Y(n447) );
  inv1a3 U245 ( .A(yn[4]), .Y(n431) );
  inv1a3 U246 ( .A(xn[2]), .Y(n398) );
  inv1a3 U247 ( .A(yn[2]), .Y(n403) );
  inv1a3 U248 ( .A(xn[4]), .Y(n426) );
  inv1a3 U249 ( .A(xn[7]), .Y(n466) );
  inv1a3 U250 ( .A(yn[7]), .Y(n471) );
  inv1a3 U251 ( .A(xn[1]), .Y(n387) );
  inv1a3 U252 ( .A(yn[1]), .Y(n392) );
  inv1a3 U253 ( .A(xn[5]), .Y(n437) );
  inv1a3 U254 ( .A(n198), .Y(n646) );
  or2c1 U255 ( .A(n244), .B(n243), .Y(n439) );
  and2c3 U256 ( .A(n243), .B(n244), .Y(n438) );
  or2c1 U257 ( .A(n274), .B(n273), .Y(n479) );
  and2c3 U258 ( .A(n273), .B(n274), .Y(n478) );
  and2c3 U259 ( .A(n294), .B(n295), .Y(n503) );
  inv1a3 U260 ( .A(xn_rightshift_18_), .Y(n176) );
  inv1a3 U261 ( .A(yn[17]), .Y(n605) );
  inv1a3 U262 ( .A(xn[17]), .Y(n600) );
  inv1a3 U263 ( .A(xn[16]), .Y(n586) );
  inv1a3 U264 ( .A(yn[16]), .Y(n593) );
  or2c6 U265 ( .A(n639), .B(n646), .Y(n607) );
  xor2a2 U266 ( .A(n356), .B(n355), .Y(n359) );
  xor2a2 U267 ( .A(n347), .B(n355), .Y(n349) );
  xor2a2 U268 ( .A(n339), .B(n355), .Y(n342) );
  xor2a2 U269 ( .A(n325), .B(n355), .Y(n328) );
  xor2a2 U270 ( .A(n253), .B(n355), .Y(n255) );
  xor2a2 U271 ( .A(n234), .B(n355), .Y(n244) );
  xor2a2 U272 ( .A(n240), .B(n355), .Y(n242) );
  or2c1 U273 ( .A(n206), .B(n355), .Y(n376) );
  xor2a2 U274 ( .A(n193), .B(n355), .Y(n223) );
  xor2a2 U275 ( .A(n185), .B(n355), .Y(n225) );
  xor2a2 U276 ( .A(n217), .B(n355), .Y(n220) );
  xor2a2 U277 ( .A(n205), .B(n355), .Y(n378) );
  ao4f1 U278 ( .A(n403), .B(n212), .C(n652), .D(n417), .Y(n189) );
  inv1a3 U279 ( .A(yn[12]), .Y(n545) );
  inv1a3 U280 ( .A(xn[12]), .Y(n538) );
  oa1f1 U281 ( .A(n352), .B(n88), .C(n351), .Y(n353) );
  buf1a9 U282 ( .A(resetn), .Y(n661) );
  inv1a9 U283 ( .A(n177), .Y(n490) );
  inv1a3 U284 ( .A(xn[6]), .Y(n453) );
  inv1a3 U285 ( .A(yn[6]), .Y(n460) );
  ao4f1 U286 ( .A(n381), .B(n212), .C(n652), .D(n392), .Y(n201) );
  inv1a3 U287 ( .A(yn[0]), .Y(n381) );
  inv1a3 U288 ( .A(xn[0]), .Y(n374) );
  clk1b6 U289 ( .A(n177), .Y(n599) );
  inv1a3 U290 ( .A(n607), .Y(n323) );
  or2c3 U291 ( .A(n323), .B(N121), .Y(n184) );
  inv1a1 U292 ( .A(n184), .Y(n10) );
  inv1a1 U293 ( .A(y[15]), .Y(n618) );
  or2c3 U294 ( .A(n643), .B(n618), .Y(n135) );
  or2c1 U295 ( .A(n361), .B(n22), .Y(n8) );
  inv1a3 U296 ( .A(N121), .Y(n364) );
  xor2a2 U297 ( .A(n8), .B(n7), .Y(n9) );
  xor2a2 U298 ( .A(n10), .B(n9), .Y(n174) );
  and2c3 U299 ( .A(n124), .B(n605), .Y(n596) );
  buf1a6 U300 ( .A(n354), .Y(n350) );
  clk1b6 U301 ( .A(cal_cnt[0]), .Y(n110) );
  inv1a3 U302 ( .A(n110), .Y(n609) );
  inv1a3 U303 ( .A(cal_cnt[1]), .Y(n318) );
  or2c1 U304 ( .A(n176), .B(n609), .Y(n11) );
  ao2i1 U305 ( .A(n609), .B(xn[17]), .C(n318), .D(n11), .Y(n12) );
  buf1a6 U306 ( .A(cal_cnt[1]), .Y(n611) );
  or2c1 U307 ( .A(n611), .B(xn_rightshift_18_), .Y(n15) );
  or2c1 U308 ( .A(n12), .B(n15), .Y(n35) );
  clk1b6 U309 ( .A(n88), .Y(n606) );
  and2a3 U310 ( .A(n606), .B(xn_rightshift_18_), .Y(n26) );
  ao1f2 U311 ( .A(n350), .B(n13), .C(n22), .Y(n14) );
  xor2a2 U312 ( .A(n14), .B(n7), .Y(n595) );
  or2c3 U313 ( .A(n110), .B(n318), .Y(n208) );
  buf1a6 U314 ( .A(n208), .Y(n653) );
  ao1f2 U315 ( .A(n653), .B(n586), .C(n15), .Y(n40) );
  or2c3 U316 ( .A(n318), .B(cal_cnt[0]), .Y(n195) );
  and2c3 U317 ( .A(n195), .B(cal_cnt[2]), .Y(n16) );
  and2c1 U318 ( .A(n652), .B(n600), .Y(n17) );
  oa2i2 U319 ( .A(n88), .B(n40), .C(n26), .D(n17), .Y(n18) );
  ao1f2 U320 ( .A(n18), .B(n350), .C(n22), .Y(n19) );
  xor2a2 U321 ( .A(n19), .B(n7), .Y(n581) );
  buf1a6 U322 ( .A(n2), .Y(n124) );
  and2c3 U323 ( .A(n124), .B(n593), .Y(n582) );
  and2c3 U324 ( .A(n350), .B(n580), .Y(n572) );
  clk1b6 U325 ( .A(n653), .Y(n286) );
  inv1a3 U326 ( .A(xn[15]), .Y(n575) );
  buf1a6 U327 ( .A(n195), .Y(n367) );
  and2c1 U328 ( .A(n367), .B(xn[16]), .Y(n21) );
  or2c6 U329 ( .A(n110), .B(n611), .Y(n368) );
  ao4f1 U330 ( .A(n368), .B(xn[17]), .C(xn_rightshift_18_), .D(n31), .Y(n20)
         );
  oa2i2 U331 ( .A(n286), .B(n575), .C(n21), .D(n20), .Y(n52) );
  ao1f2 U332 ( .A(n23), .B(n350), .C(n22), .Y(n24) );
  xor2a2 U333 ( .A(n24), .B(n7), .Y(n571) );
  inv1a1 U334 ( .A(yn[14]), .Y(n569) );
  and2c3 U335 ( .A(n350), .B(n569), .Y(n166) );
  or2b6 U336 ( .B(n31), .A(n48), .Y(n211) );
  inv1a3 U337 ( .A(n211), .Y(n650) );
  inv1a3 U338 ( .A(n368), .Y(n285) );
  oa2i2 U339 ( .A(n650), .B(xn[17]), .C(n26), .D(n25), .Y(n29) );
  buf1a6 U340 ( .A(n121), .Y(n509) );
  inv1a1 U341 ( .A(x[14]), .Y(n28) );
  ao4f3 U342 ( .A(n29), .B(n354), .C(n509), .D(n28), .Y(n30) );
  xor2a2 U343 ( .A(n30), .B(n7), .Y(n559) );
  inv1a1 U344 ( .A(x[13]), .Y(n37) );
  or2c1 U345 ( .A(n285), .B(n575), .Y(n33) );
  oa4a2 U346 ( .A(xn[13]), .B(n653), .C(n367), .D(xn[14]), .Y(n32) );
  ao2i3 U347 ( .A(xn[16]), .B(n31), .C(n33), .D(n32), .Y(n66) );
  or2c1 U348 ( .A(n66), .B(n88), .Y(n34) );
  ao1f2 U349 ( .A(n37), .B(n121), .C(n36), .Y(n38) );
  xor2a2 U350 ( .A(n38), .B(n7), .Y(n546) );
  and2c3 U351 ( .A(n350), .B(n556), .Y(n547) );
  and2c3 U352 ( .A(n350), .B(n545), .Y(n535) );
  or2c1 U353 ( .A(n285), .B(xn[14]), .Y(n39) );
  ao1f2 U354 ( .A(n653), .B(n538), .C(n39), .Y(n75) );
  clk1b6 U355 ( .A(n367), .Y(n307) );
  and2c1 U356 ( .A(n42), .B(n41), .Y(n44) );
  oa2i2 U357 ( .A(n88), .B(n75), .C(n44), .D(n43), .Y(n46) );
  inv1a1 U358 ( .A(x[12]), .Y(n45) );
  ao4f3 U359 ( .A(n46), .B(n124), .C(n45), .D(n509), .Y(n47) );
  xor2a2 U360 ( .A(n47), .B(n7), .Y(n534) );
  inv1a1 U361 ( .A(x[11]), .Y(n54) );
  inv1a3 U362 ( .A(xn[11]), .Y(n516) );
  or2c1 U363 ( .A(n286), .B(n516), .Y(n50) );
  oa4a2 U364 ( .A(n368), .B(xn[13]), .C(xn[14]), .D(n31), .Y(n49) );
  or2c1 U365 ( .A(n81), .B(n48), .Y(n51) );
  ao2i1 U366 ( .A(n52), .B(n48), .C(n1), .D(n51), .Y(n53) );
  ao1f2 U367 ( .A(n54), .B(n121), .C(n53), .Y(n55) );
  xor2a2 U368 ( .A(n55), .B(n7), .Y(n511) );
  inv1a3 U369 ( .A(yn[11]), .Y(n521) );
  and2c3 U370 ( .A(n350), .B(n521), .Y(n512) );
  and2c3 U371 ( .A(n124), .B(n510), .Y(n499) );
  or2c1 U372 ( .A(n285), .B(xn[12]), .Y(n56) );
  ao1f2 U373 ( .A(n653), .B(n502), .C(n56), .Y(n89) );
  clk1b6 U374 ( .A(n31), .Y(n296) );
  oa4f1 U375 ( .A(n307), .B(xn[15]), .C(xn[17]), .D(n296), .Y(n57) );
  oa2i2 U376 ( .A(n41), .B(n89), .C(n60), .D(n59), .Y(n62) );
  inv1a1 U377 ( .A(x[10]), .Y(n61) );
  ao4f3 U378 ( .A(n62), .B(n354), .C(n509), .D(n61), .Y(n63) );
  xor2a2 U379 ( .A(n63), .B(n7), .Y(n498) );
  inv1a1 U380 ( .A(x[9]), .Y(n68) );
  or2c1 U381 ( .A(n285), .B(n516), .Y(n65) );
  ao2i3 U382 ( .A(xn[12]), .B(n31), .C(n65), .D(n64), .Y(n98) );
  mx2a1 U383 ( .D0(n98), .D1(n66), .S(n606), .Y(n67) );
  ao4f3 U384 ( .A(n68), .B(n509), .C(n124), .D(n67), .Y(n69) );
  xor2a2 U385 ( .A(n69), .B(n7), .Y(n485) );
  and2c3 U386 ( .A(n124), .B(n496), .Y(n486) );
  inv1a1 U387 ( .A(x[8]), .Y(n77) );
  clk1b6 U388 ( .A(n88), .Y(n610) );
  or2c1 U389 ( .A(n296), .B(xn[15]), .Y(n70) );
  or2c1 U390 ( .A(n296), .B(n516), .Y(n72) );
  or2c1 U391 ( .A(n105), .B(n88), .Y(n73) );
  ao1f2 U392 ( .A(n77), .B(n121), .C(n76), .Y(n78) );
  xor2a2 U393 ( .A(n78), .B(n7), .Y(n472) );
  and2c3 U394 ( .A(n124), .B(n484), .Y(n473) );
  and2c3 U395 ( .A(n350), .B(n471), .Y(n463) );
  inv1a1 U396 ( .A(x[7]), .Y(n84) );
  and2c1 U397 ( .A(n367), .B(xn[8]), .Y(n80) );
  ao4f1 U398 ( .A(n368), .B(xn[9]), .C(xn[10]), .D(n31), .Y(n79) );
  oa2i2 U399 ( .A(n286), .B(n466), .C(n80), .D(n79), .Y(n113) );
  or2c1 U400 ( .A(n81), .B(n606), .Y(n82) );
  ao2i1 U401 ( .A(n113), .B(n610), .C(n82), .D(n1), .Y(n83) );
  ao1f2 U402 ( .A(n84), .B(n121), .C(n83), .Y(n85) );
  xor2a2 U403 ( .A(n85), .B(n7), .Y(n462) );
  inv1a1 U404 ( .A(x[6]), .Y(n94) );
  and2c1 U405 ( .A(n208), .B(xn[6]), .Y(n87) );
  ao4f3 U406 ( .A(n368), .B(xn[8]), .C(xn[9]), .D(n31), .Y(n86) );
  oa2i2 U407 ( .A(n307), .B(n466), .C(n87), .D(n86), .Y(n119) );
  oa1f1 U408 ( .A(n296), .B(xn[13]), .C(n88), .Y(n91) );
  inv1a1 U409 ( .A(n89), .Y(n90) );
  ao1f2 U410 ( .A(n94), .B(n121), .C(n93), .Y(n95) );
  xor2a2 U411 ( .A(n95), .B(n7), .Y(n448) );
  and2c3 U412 ( .A(n350), .B(n460), .Y(n449) );
  and2c3 U413 ( .A(n124), .B(n447), .Y(n434) );
  inv1a1 U414 ( .A(x[5]), .Y(n101) );
  and2c1 U415 ( .A(n368), .B(xn[7]), .Y(n97) );
  ao4f3 U416 ( .A(xn[5]), .B(n208), .C(n367), .D(xn[6]), .Y(n96) );
  oa2i2 U417 ( .A(n296), .B(n477), .C(n97), .D(n96), .Y(n127) );
  or2c1 U418 ( .A(n98), .B(n606), .Y(n99) );
  ao2i3 U419 ( .A(n127), .B(n606), .C(n99), .D(n1), .Y(n100) );
  ao1f2 U420 ( .A(n101), .B(n121), .C(n100), .Y(n102) );
  xor2a2 U421 ( .A(n102), .B(n7), .Y(n433) );
  inv1a1 U422 ( .A(x[4]), .Y(n108) );
  and2c3 U423 ( .A(n368), .B(xn[6]), .Y(n104) );
  oa2i3 U424 ( .A(n296), .B(n466), .C(n104), .D(n103), .Y(n133) );
  or2c1 U425 ( .A(n105), .B(n610), .Y(n106) );
  ao1f2 U426 ( .A(n108), .B(n121), .C(n107), .Y(n109) );
  xor2a2 U427 ( .A(n109), .B(n7), .Y(n421) );
  and2c3 U428 ( .A(n124), .B(n431), .Y(n422) );
  inv1a3 U429 ( .A(yn[3]), .Y(n417) );
  and2c3 U430 ( .A(n124), .B(n417), .Y(n407) );
  inv1a1 U431 ( .A(x[3]), .Y(n115) );
  or2c3 U432 ( .A(n110), .B(n48), .Y(n655) );
  or2a6 U433 ( .A(n655), .B(n318), .Y(n651) );
  inv1a3 U434 ( .A(xn[3]), .Y(n410) );
  and2c3 U435 ( .A(n655), .B(n611), .Y(n647) );
  inv1a3 U436 ( .A(n647), .Y(n212) );
  oa2i2 U437 ( .A(n113), .B(n606), .C(n112), .D(n111), .Y(n114) );
  ao4f3 U438 ( .A(n115), .B(n121), .C(n354), .D(n114), .Y(n116) );
  xor2a2 U439 ( .A(n116), .B(n7), .Y(n406) );
  inv1a1 U440 ( .A(x[2]), .Y(n122) );
  ao4f3 U441 ( .A(n122), .B(n121), .C(n2), .D(n120), .Y(n123) );
  xor2a2 U442 ( .A(n123), .B(n7), .Y(n393) );
  inv1a1 U443 ( .A(n393), .Y(n139) );
  and2c3 U444 ( .A(n124), .B(n403), .Y(n394) );
  inv1a1 U445 ( .A(n394), .Y(n138) );
  and2c3 U446 ( .A(n124), .B(n392), .Y(n384) );
  inv1a1 U447 ( .A(x[1]), .Y(n129) );
  ao4f3 U448 ( .A(n387), .B(n212), .C(n652), .D(n398), .Y(n125) );
  oa2i2 U449 ( .A(n127), .B(n606), .C(n126), .D(n125), .Y(n128) );
  ao4f3 U450 ( .A(n135), .B(n129), .C(n128), .D(n2), .Y(n130) );
  xor2a2 U451 ( .A(n130), .B(n7), .Y(n383) );
  and2c3 U452 ( .A(n2), .B(n381), .Y(n370) );
  inv1a1 U453 ( .A(x[0]), .Y(n136) );
  ao4f3 U454 ( .A(n651), .B(n398), .C(n410), .D(n211), .Y(n132) );
  ao4f3 U455 ( .A(n374), .B(n212), .C(n652), .D(n387), .Y(n131) );
  oa2i2 U456 ( .A(n133), .B(n610), .C(n132), .D(n131), .Y(n134) );
  ao4f3 U457 ( .A(n136), .B(n135), .C(n134), .D(n607), .Y(n137) );
  xor2a2 U458 ( .A(n137), .B(n7), .Y(n369) );
  ao1d2 U459 ( .A(n139), .B(n138), .C(n395), .Y(n141) );
  or2c3 U460 ( .A(n393), .B(n394), .Y(n140) );
  or2c3 U461 ( .A(n141), .B(n140), .Y(n405) );
  or2c3 U462 ( .A(n421), .B(n422), .Y(n144) );
  ao1d6 U463 ( .A(n159), .B(n158), .C(n513), .Y(n161) );
  or2c6 U464 ( .A(n161), .B(n160), .Y(n533) );
  ao1d3 U465 ( .A(n163), .B(n162), .C(n548), .Y(n165) );
  or2c6 U466 ( .A(n165), .B(n164), .Y(n557) );
  ao1f6 U467 ( .A(n559), .B(n166), .C(n557), .Y(n167) );
  ao1f6 U468 ( .A(n558), .B(n168), .C(n167), .Y(n570) );
  ao1d3 U469 ( .A(n170), .B(n169), .C(n583), .Y(n172) );
  or2c6 U470 ( .A(n172), .B(n171), .Y(n594) );
  inv1a1 U471 ( .A(y[3]), .Y(n183) );
  and2c1 U472 ( .A(n367), .B(yn[8]), .Y(n179) );
  ao4f1 U473 ( .A(n368), .B(yn[9]), .C(yn[10]), .D(n31), .Y(n178) );
  oa2i2 U474 ( .A(n286), .B(n471), .C(n179), .D(n178), .Y(n258) );
  oa2i2 U475 ( .A(n5), .B(n610), .C(n181), .D(n180), .Y(n182) );
  ao4f3 U476 ( .A(n183), .B(n490), .C(n354), .D(n182), .Y(n185) );
  or2c9 U477 ( .A(n184), .B(n599), .Y(n355) );
  inv1a1 U478 ( .A(y[2]), .Y(n192) );
  and2c1 U479 ( .A(n653), .B(yn[6]), .Y(n188) );
  ao4f1 U480 ( .A(n368), .B(yn[8]), .C(yn[9]), .D(n31), .Y(n187) );
  oa2i2 U481 ( .A(n307), .B(n471), .C(n188), .D(n187), .Y(n251) );
  oa2i2 U482 ( .A(n251), .B(n606), .C(n190), .D(n189), .Y(n191) );
  inv1a1 U483 ( .A(y[0]), .Y(n204) );
  and2c1 U484 ( .A(n368), .B(yn[6]), .Y(n197) );
  ao4f1 U485 ( .A(yn[4]), .B(n208), .C(n195), .D(yn[5]), .Y(n196) );
  oa2i2 U486 ( .A(n296), .B(n471), .C(n197), .D(n196), .Y(n238) );
  oa2i2 U487 ( .A(n238), .B(n610), .C(n202), .D(n201), .Y(n203) );
  inv1a1 U488 ( .A(n378), .Y(n207) );
  inv1a1 U489 ( .A(y[1]), .Y(n216) );
  and2c1 U490 ( .A(n368), .B(yn[7]), .Y(n210) );
  oa2i2 U491 ( .A(n296), .B(n484), .C(n210), .D(n209), .Y(n232) );
  oa2i2 U492 ( .A(n232), .B(n610), .C(n214), .D(n213), .Y(n215) );
  oa1f3 U493 ( .A(n389), .B(n218), .C(n221), .Y(n400) );
  inv1a1 U494 ( .A(n413), .Y(n226) );
  oa1f3 U495 ( .A(n186), .B(n411), .C(n226), .Y(n227) );
  and2c3 U496 ( .A(n350), .B(n437), .Y(n243) );
  or2c1 U497 ( .A(n285), .B(n521), .Y(n230) );
  or2c1 U498 ( .A(n277), .B(n610), .Y(n231) );
  ao2i3 U499 ( .A(n232), .B(n610), .C(n231), .D(n1), .Y(n233) );
  ao1d2 U500 ( .A(y[5]), .B(n177), .C(n233), .Y(n234) );
  or2c1 U501 ( .A(n296), .B(n521), .Y(n236) );
  or2c1 U502 ( .A(n269), .B(n606), .Y(n237) );
  ao1d2 U503 ( .A(y[4]), .B(n177), .C(n239), .Y(n240) );
  or2c3 U504 ( .A(n242), .B(n241), .Y(n441) );
  oa1f3 U505 ( .A(n427), .B(n246), .C(n245), .Y(n458) );
  and2c3 U506 ( .A(n350), .B(n453), .Y(n254) );
  or2c1 U507 ( .A(n285), .B(yn[12]), .Y(n247) );
  ao1f2 U508 ( .A(n653), .B(n510), .C(n247), .Y(n290) );
  inv1a1 U509 ( .A(n290), .Y(n248) );
  ao2i3 U510 ( .A(n251), .B(n606), .C(n250), .D(n1), .Y(n252) );
  and2c3 U511 ( .A(n350), .B(n466), .Y(n263) );
  inv1a1 U512 ( .A(y[7]), .Y(n260) );
  and2c1 U513 ( .A(n367), .B(yn[12]), .Y(n257) );
  ao4f1 U514 ( .A(n368), .B(yn[13]), .C(yn[14]), .D(n31), .Y(n256) );
  oa2i2 U515 ( .A(n286), .B(n521), .C(n257), .D(n256), .Y(n300) );
  oa1f3 U516 ( .A(n468), .B(n262), .C(n265), .Y(n482) );
  and2c3 U517 ( .A(n350), .B(n477), .Y(n273) );
  or2c1 U518 ( .A(n285), .B(yn[14]), .Y(n266) );
  ao1f2 U519 ( .A(n653), .B(n545), .C(n266), .Y(n311) );
  oa2i2 U520 ( .A(yn[13]), .B(n307), .C(n267), .D(n311), .Y(n268) );
  oa2i2 U521 ( .A(n88), .B(n269), .C(n354), .D(n268), .Y(n270) );
  inv1a1 U522 ( .A(n271), .Y(n272) );
  and2c3 U523 ( .A(n2), .B(n491), .Y(n282) );
  inv1a1 U524 ( .A(y[9]), .Y(n279) );
  or2c1 U525 ( .A(n286), .B(n556), .Y(n276) );
  oa4a2 U526 ( .A(n368), .B(yn[15]), .C(yn[16]), .D(n31), .Y(n275) );
  mx2a1 U527 ( .D0(n277), .D1(n321), .S(n610), .Y(n278) );
  ao4f3 U528 ( .A(n279), .B(n490), .C(n354), .D(n278), .Y(n280) );
  oa1f3 U529 ( .A(n493), .B(n281), .C(n284), .Y(n507) );
  and2c3 U530 ( .A(n2), .B(n502), .Y(n294) );
  oa4f1 U531 ( .A(n307), .B(yn[15]), .C(yn[17]), .D(n296), .Y(n287) );
  oa2i2 U532 ( .A(n88), .B(n290), .C(n289), .D(n288), .Y(n292) );
  inv1a1 U533 ( .A(y[10]), .Y(n291) );
  ao4f3 U534 ( .A(n292), .B(n354), .C(n490), .D(n291), .Y(n293) );
  and2c3 U535 ( .A(n607), .B(n516), .Y(n304) );
  or2c1 U536 ( .A(n296), .B(n364), .Y(n298) );
  oa4a2 U537 ( .A(n653), .B(yn[15]), .C(n367), .D(yn[16]), .Y(n297) );
  ao2i3 U538 ( .A(yn[17]), .B(n368), .C(n298), .D(n297), .Y(n337) );
  or2c1 U539 ( .A(n337), .B(n610), .Y(n299) );
  ao2i1 U540 ( .A(n300), .B(n606), .C(n299), .D(n323), .Y(n301) );
  or2c1 U541 ( .A(N121), .B(n611), .Y(n319) );
  ao1f2 U542 ( .A(n653), .B(n593), .C(n319), .Y(n345) );
  and2c1 U543 ( .A(n308), .B(n41), .Y(n310) );
  oa2i2 U544 ( .A(n41), .B(n311), .C(n310), .D(n309), .Y(n313) );
  inv1a1 U545 ( .A(y[12]), .Y(n312) );
  ao4f3 U546 ( .A(n313), .B(n354), .C(n312), .D(n490), .Y(n314) );
  ao1f3 U547 ( .A(n543), .B(n539), .C(n540), .Y(n553) );
  and2c3 U548 ( .A(n607), .B(n551), .Y(n327) );
  or2c1 U549 ( .A(n364), .B(n609), .Y(n317) );
  ao2i1 U550 ( .A(yn[17]), .B(n609), .C(n318), .D(n317), .Y(n320) );
  or2c1 U551 ( .A(n320), .B(n319), .Y(n352) );
  or2c1 U552 ( .A(n321), .B(n88), .Y(n322) );
  ao1d1 U553 ( .A(y[13]), .B(n177), .C(n324), .Y(n325) );
  oa1f3 U554 ( .A(n553), .B(n326), .C(n329), .Y(n567) );
  and2a3 U555 ( .A(N121), .B(n610), .Y(n351) );
  oa2i2 U556 ( .A(n650), .B(yn[17]), .C(n351), .D(n331), .Y(n333) );
  inv1a1 U557 ( .A(y[14]), .Y(n332) );
  ao4f3 U558 ( .A(n333), .B(n354), .C(n490), .D(n332), .Y(n334) );
  and2c3 U559 ( .A(n2), .B(n575), .Y(n341) );
  oa1d2 U560 ( .A(n337), .B(n606), .C(n351), .Y(n338) );
  ao1f2 U561 ( .A(n338), .B(n607), .C(n490), .Y(n339) );
  and2c3 U562 ( .A(n2), .B(n586), .Y(n348) );
  and2c1 U563 ( .A(n652), .B(n605), .Y(n344) );
  oa2i2 U564 ( .A(n88), .B(n345), .C(n351), .D(n344), .Y(n346) );
  ao1f2 U565 ( .A(n346), .B(n2), .C(n490), .Y(n347) );
  ao1f3 U566 ( .A(n591), .B(n587), .C(n588), .Y(n602) );
  and2c3 U567 ( .A(n350), .B(n600), .Y(n358) );
  ao1f2 U568 ( .A(n354), .B(n353), .C(n599), .Y(n356) );
  oa1f3 U569 ( .A(n602), .B(n357), .C(n360), .Y(n362) );
  or2c1 U570 ( .A(n643), .B(x[15]), .Y(n404) );
  inv1a1 U571 ( .A(cal_en), .Y(n365) );
  or2c1 U572 ( .A(n646), .B(cal_en), .Y(n366) );
  or2c1 U573 ( .A(n639), .B(n366), .Y(N320) );
  oa1f1 U574 ( .A(n368), .B(n367), .C(n607), .Y(N266) );
  buf1a6 U575 ( .A(resetn), .Y(n663) );
  buf1a6 U576 ( .A(resetn), .Y(n662) );
  and2a3 U577 ( .A(N255), .B(n1), .Y(N288) );
  and2a3 U578 ( .A(N256), .B(n1), .Y(n660) );
  and2a3 U579 ( .A(N257), .B(n1), .Y(n657) );
  and2a3 U580 ( .A(N258), .B(n1), .Y(n658) );
  fa1a2 U581 ( .A(n7), .B(n370), .CI(n369), .CO(n382), .S(n372) );
  inv1a1 U582 ( .A(n372), .Y(n373) );
  inv1a1 U583 ( .A(n375), .Y(n377) );
  or2c1 U584 ( .A(n377), .B(n376), .Y(n379) );
  ao1f2 U585 ( .A(n381), .B(n509), .C(n380), .Y(N299) );
  and2a3 U586 ( .A(N259), .B(n1), .Y(n659) );
  fa1a2 U587 ( .A(n384), .B(n383), .CI(n382), .CO(n395), .S(n385) );
  inv1a1 U588 ( .A(n385), .Y(n386) );
  ao1f2 U589 ( .A(n387), .B(n490), .C(n386), .Y(N269) );
  ao1f2 U590 ( .A(n392), .B(n509), .C(n391), .Y(N300) );
  and2a3 U591 ( .A(N260), .B(n1), .Y(n656) );
  xor2b2 U592 ( .A(n394), .B(n393), .Y(n396) );
  ao1f2 U593 ( .A(n398), .B(n490), .C(n397), .Y(N270) );
  ao1f2 U594 ( .A(n403), .B(n509), .C(n402), .Y(N301) );
  ao1d2 U595 ( .A(N261), .B(n1), .C(n404), .Y(N294) );
  fa1a2 U596 ( .A(n407), .B(n406), .CI(n405), .CO(n423), .S(n408) );
  inv1a1 U597 ( .A(n408), .Y(n409) );
  ao1f2 U598 ( .A(n410), .B(n490), .C(n409), .Y(N271) );
  oa1f3 U599 ( .A(n412), .B(n194), .C(n411), .Y(n415) );
  ao1f2 U600 ( .A(n417), .B(n509), .C(n416), .Y(N302) );
  or2c1 U601 ( .A(n177), .B(x[15]), .Y(n419) );
  ao1d2 U602 ( .A(N262), .B(n1), .C(n419), .Y(N295) );
  xor2a2 U603 ( .A(res[7]), .B(N121), .Y(n418) );
  xor2a2 U604 ( .A(n418), .B(DP_OP_38J1_122_4721_n2), .Y(n420) );
  xor2b2 U605 ( .A(n422), .B(n421), .Y(n424) );
  ao1f2 U606 ( .A(n426), .B(n490), .C(n425), .Y(N272) );
  inv1a1 U607 ( .A(n442), .Y(n428) );
  ao1f2 U608 ( .A(n431), .B(n509), .C(n430), .Y(N303) );
  inv1a1 U609 ( .A(n435), .Y(n436) );
  ao1f2 U610 ( .A(n437), .B(n490), .C(n436), .Y(N273) );
  inv1a1 U611 ( .A(n438), .Y(n440) );
  ao1f2 U612 ( .A(n447), .B(n509), .C(n446), .Y(N304) );
  xor2b2 U613 ( .A(n449), .B(n448), .Y(n451) );
  inv1a1 U614 ( .A(n454), .Y(n456) );
  ao1f2 U615 ( .A(n460), .B(n509), .C(n459), .Y(N305) );
  inv1a1 U616 ( .A(n464), .Y(n465) );
  ao1f2 U617 ( .A(n466), .B(n599), .C(n465), .Y(N275) );
  ao1f2 U618 ( .A(n471), .B(n509), .C(n470), .Y(N306) );
  xor2b2 U619 ( .A(n473), .B(n472), .Y(n475) );
  ao1f2 U620 ( .A(n477), .B(n599), .C(n476), .Y(N276) );
  inv1a1 U621 ( .A(n478), .Y(n480) );
  ao1f2 U622 ( .A(n484), .B(n509), .C(n483), .Y(N307) );
  xor2b2 U623 ( .A(n486), .B(n485), .Y(n488) );
  ao1f2 U624 ( .A(n491), .B(n490), .C(n489), .Y(N277) );
  ao1f2 U625 ( .A(n496), .B(n509), .C(n495), .Y(N308) );
  fa1a3 U626 ( .A(n499), .B(n498), .CI(n497), .CO(n513), .S(n500) );
  inv1a1 U627 ( .A(n500), .Y(n501) );
  ao1f2 U628 ( .A(n502), .B(n599), .C(n501), .Y(N278) );
  ao1f2 U629 ( .A(n510), .B(n509), .C(n508), .Y(N309) );
  xor2b2 U630 ( .A(n512), .B(n511), .Y(n514) );
  ao1f2 U631 ( .A(n516), .B(n599), .C(n515), .Y(N279) );
  ao1f2 U632 ( .A(n521), .B(n121), .C(n520), .Y(N310) );
  or2b2 U633 ( .B(n_zz_15_0_), .A(res[7]), .Y(n522) );
  inv1a1 U634 ( .A(res_rg[0]), .Y(n524) );
  inv1a1 U635 ( .A(res_rg[3]), .Y(n525) );
  ao1f2 U636 ( .A(n532), .B(n525), .C(n530), .Y(res[3]) );
  inv1a1 U637 ( .A(res_rg[4]), .Y(n526) );
  ao1f2 U638 ( .A(n532), .B(n526), .C(n530), .Y(res[4]) );
  inv1a1 U639 ( .A(res_rg[1]), .Y(n527) );
  ao1f2 U640 ( .A(n532), .B(n527), .C(n530), .Y(res[1]) );
  inv1a1 U641 ( .A(res_rg[2]), .Y(n528) );
  ao1f2 U642 ( .A(n532), .B(n528), .C(n530), .Y(res[2]) );
  inv1a1 U643 ( .A(res_rg[5]), .Y(n529) );
  ao1f2 U644 ( .A(n532), .B(n529), .C(n530), .Y(res[5]) );
  inv1a1 U645 ( .A(res_rg[6]), .Y(n531) );
  ao1f2 U646 ( .A(n532), .B(n531), .C(n530), .Y(res[6]) );
  inv1a1 U647 ( .A(n536), .Y(n537) );
  ao1f2 U648 ( .A(n538), .B(n599), .C(n537), .Y(N280) );
  ao1f2 U649 ( .A(n545), .B(n121), .C(n544), .Y(N311) );
  xor2b2 U650 ( .A(n547), .B(n546), .Y(n549) );
  ao1f2 U651 ( .A(n551), .B(n599), .C(n550), .Y(N281) );
  ao1f2 U652 ( .A(n556), .B(n121), .C(n555), .Y(N312) );
  xor3b3 U653 ( .A(n559), .B(n558), .C(n557), .Y(n560) );
  inv1a1 U654 ( .A(n560), .Y(n561) );
  ao1f2 U655 ( .A(n562), .B(n599), .C(n561), .Y(N282) );
  inv1a1 U656 ( .A(n563), .Y(n565) );
  ao1f2 U657 ( .A(n569), .B(n121), .C(n568), .Y(N313) );
  fa1a2 U658 ( .A(n572), .B(n571), .CI(n570), .CO(n583), .S(n573) );
  inv1a1 U659 ( .A(n573), .Y(n574) );
  ao1f2 U660 ( .A(n575), .B(n599), .C(n574), .Y(N283) );
  ao1f2 U661 ( .A(n580), .B(n121), .C(n579), .Y(N314) );
  xor2b2 U662 ( .A(n582), .B(n581), .Y(n584) );
  ao1f2 U663 ( .A(n586), .B(n599), .C(n585), .Y(N284) );
  inv1a1 U664 ( .A(n587), .Y(n589) );
  ao1f2 U665 ( .A(n593), .B(n121), .C(n592), .Y(N315) );
  fa1a2 U666 ( .A(n596), .B(n595), .CI(n594), .CO(n173), .S(n597) );
  inv1a1 U667 ( .A(n597), .Y(n598) );
  ao1f2 U668 ( .A(n600), .B(n599), .C(n598), .Y(N285) );
  ao1f2 U669 ( .A(n605), .B(n121), .C(n604), .Y(N316) );
  oa1f3 U670 ( .A(n606), .B(n31), .C(n650), .Y(n608) );
  xor2b2 U671 ( .A(n609), .B(rg_cordic_iternum[0]), .Y(n614) );
  xor2b2 U672 ( .A(n610), .B(rg_cordic_iternum[2]), .Y(n613) );
  xor2b2 U673 ( .A(n611), .B(rg_cordic_iternum[1]), .Y(n612) );
  or3d1 U674 ( .A(n614), .B(n613), .C(n612), .Y(n615) );
  inv1a1 U675 ( .A(en), .Y(n616) );
  and2c3 U676 ( .A(n615), .B(n616), .Y(N323) );
  oa1f1 U677 ( .A(n615), .B(cal_en), .C(vld), .Y(n617) );
  and2c3 U678 ( .A(n617), .B(n616), .Y(n200) );
  and2c1 U679 ( .A(x[14]), .B(y[14]), .Y(n620) );
  inv1a1 U680 ( .A(x[15]), .Y(n619) );
  or3d1 U681 ( .A(n620), .B(n619), .C(n618), .Y(n621) );
  and3d2 U682 ( .A(x[11]), .B(y[11]), .C(n621), .Y(n627) );
  and2c1 U683 ( .A(x[9]), .B(y[9]), .Y(n624) );
  and2c1 U684 ( .A(x[8]), .B(y[8]), .Y(n623) );
  and2c1 U685 ( .A(x[13]), .B(y[13]), .Y(n622) );
  or3d1 U686 ( .A(n624), .B(n623), .C(n622), .Y(n625) );
  and3d2 U687 ( .A(x[12]), .B(y[12]), .C(n625), .Y(n626) );
  or2c1 U688 ( .A(n627), .B(n626), .Y(n628) );
  and3d2 U689 ( .A(y[10]), .B(x[10]), .C(n628), .Y(n634) );
  and2c1 U690 ( .A(x[3]), .B(y[3]), .Y(n631) );
  and2c1 U691 ( .A(x[7]), .B(y[7]), .Y(n630) );
  and2c1 U692 ( .A(x[2]), .B(y[2]), .Y(n629) );
  or3d1 U693 ( .A(n631), .B(n630), .C(n629), .Y(n632) );
  and3d2 U694 ( .A(x[0]), .B(y[0]), .C(n632), .Y(n633) );
  and2a3 U695 ( .A(n634), .B(n633), .Y(n644) );
  and2c1 U696 ( .A(x[6]), .B(y[6]), .Y(n637) );
  and2c1 U697 ( .A(x[1]), .B(y[1]), .Y(n636) );
  and2c1 U698 ( .A(x[4]), .B(y[4]), .Y(n635) );
  or3d1 U699 ( .A(n637), .B(n636), .C(n635), .Y(n638) );
  and3d2 U700 ( .A(x[5]), .B(y[5]), .C(n638), .Y(n642) );
  oa2i2 U701 ( .A(n644), .B(n642), .C(x[15]), .D(n639), .Y(n641) );
  inv1a1 U702 ( .A(N320), .Y(n640) );
  and2c3 U703 ( .A(n641), .B(n640), .Y(N321) );
  or3d1 U704 ( .A(n644), .B(n643), .C(n642), .Y(n645) );
  ao1f1 U705 ( .A(cal_en), .B(n646), .C(n645), .Y(n199) );
  xor2a2 U706 ( .A(n647), .B(N121), .Y(DP_OP_38J1_122_4721_n14) );
  inv1a1 U707 ( .A(n652), .Y(n648) );
  xor2a2 U708 ( .A(n648), .B(N121), .Y(DP_OP_38J1_122_4721_n15) );
  inv1a1 U709 ( .A(n651), .Y(n649) );
  xor2a2 U710 ( .A(n649), .B(N121), .Y(DP_OP_38J1_122_4721_n16) );
  xor2a2 U711 ( .A(n650), .B(N121), .Y(DP_OP_38J1_122_4721_n17) );
  ao2i3 U712 ( .A(n653), .B(n88), .C(n652), .D(n651), .Y(n654) );
  xor2a2 U713 ( .A(n654), .B(N121), .Y(DP_OP_38J1_122_4721_n18) );
  xor2a2 U714 ( .A(n655), .B(N121), .Y(DP_OP_38J1_122_4721_n19) );
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
  wire   n47, n48, n49, n50, n51, n52, n53, calvn_finish_1, dot_psum_vld, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n46;
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

  cal_vn calvn ( .en(rg_calphase_en), .rg_bypass_mean(n46), .valid_num({n3, 
        n27, n30}), .vin_vld(vin_vld), .vin1({n4, n25, n34, n23, n33, n21, 
        vin1[1], n6}), .vin2({n5, n19, n17, n15, n13, n11, vin2[1], n9}), 
        .rg_leakage_table_0(rg_leakage_table_0), .rg_leakage_table_1(
        rg_leakage_table_1), .rg_leakage_table_2(rg_leakage_table_2), 
        .rg_leakage_table_3(rg_leakage_table_3), .rg_leakage_table_4(
        rg_leakage_table_4), .rg_leakage_table_5(rg_leakage_table_5), 
        .rg_leakage_table_6(rg_leakage_table_6), .rg_leakage_table_7(
        rg_leakage_table_7), .mean(calvn_mean), .vn_0(calvn_vn_0), .vn_1(
        calvn_vn_1), .vn_2(calvn_vn_2), .vn_3(calvn_vn_3), .vn_4(calvn_vn_4), 
        .vn_5(calvn_vn_5), .vn_6(calvn_vn_6), .vn_7(calvn_vn_7), .finish(
        calvn_finish_1), .clk(clk), .resetn(n38) );
  dotVn_2 dot ( .en(n7), .rg_bypass_mean(rg_bypass_mean), .rg_sin_table_0(
        rg_sin_table_0), .rg_sin_table_1(rg_sin_table_1), .rg_sin_table_2(
        rg_sin_table_2), .rg_sin_table_3(rg_sin_table_3), .rg_sin_table_4(
        rg_sin_table_4), .rg_sin_table_5(rg_sin_table_5), .rg_sin_table_6(
        rg_sin_table_6), .rg_sin_table_7(rg_sin_table_7), .rg_cos_table_0(
        rg_cos_table_0), .rg_cos_table_1(rg_cos_table_1), .rg_cos_table_2(
        rg_cos_table_2), .rg_cos_table_3(rg_cos_table_3), .rg_cos_table_4(
        rg_cos_table_4), .rg_cos_table_5(rg_cos_table_5), .rg_cos_table_6(
        rg_cos_table_6), .rg_cos_table_7(rg_cos_table_7), .vn_vld(
        calvn_finish_1), .vn_in_0(calvn_vn_0), .vn_in_1(calvn_vn_1), .vn_in_2(
        calvn_vn_2), .vn_in_3(calvn_vn_3), .vn_in_4(calvn_vn_4), .vn_in_5(
        calvn_vn_5), .vn_in_6(calvn_vn_6), .vn_in_7(calvn_vn_7), .psum_out1(
        dot_psum_out1), .psum_out2(dot_psum_out2), .psum_vld(dot_psum_vld), 
        .valid_num({n2, n28, n31}), .mean(calvn_mean), .clk(clk), .resetn(n36)
         );
  cordic_int cordic ( .en(n7), .rg_cordic_iternum(rg_cordic_iternum), .vld(
        dot_psum_vld), .y(dot_psum_out2), .x(dot_psum_out1), .res({phase[7], 
        n47, n48, n49, n50, n51, n52, n53}), .res_vld(phase_vld), .clk(clk), 
        .resetn(n37) );
  clk1b6 U1 ( .A(n20), .Y(n21) );
  clk1b6 U2 ( .A(n32), .Y(n33) );
  inv1a9 U3 ( .A(n8), .Y(n9) );
  clk1b6 U4 ( .A(vin1[3]), .Y(n32) );
  clk1a3 U5 ( .A(vin1[5]), .Y(n34) );
  clk1a3 U6 ( .A(rg_calphase_en), .Y(n7) );
  clk1a3 U7 ( .A(vin1[7]), .Y(n4) );
  clk1a3 U8 ( .A(n53), .Y(phase[0]) );
  clk1a3 U9 ( .A(n52), .Y(phase[1]) );
  clk1a3 U10 ( .A(n50), .Y(phase[3]) );
  clk1a3 U11 ( .A(n49), .Y(phase[4]) );
  clk1a3 U12 ( .A(n47), .Y(phase[6]) );
  clk1a3 U13 ( .A(n48), .Y(phase[5]) );
  clk1a3 U14 ( .A(n51), .Y(phase[2]) );
  inv1a15 U15 ( .A(n35), .Y(n37) );
  inv1a2 U16 ( .A(n26), .Y(n28) );
  clk1b6 U17 ( .A(n35), .Y(n38) );
  inv1a2 U18 ( .A(n29), .Y(n31) );
  inv1a9 U19 ( .A(n35), .Y(n36) );
  clk1a3 U20 ( .A(vin1[0]), .Y(n6) );
  clk1a3 U21 ( .A(vin2[7]), .Y(n5) );
  clk1a3 U22 ( .A(rg_bypass_mean), .Y(n46) );
  inv1a15 U23 ( .A(vin2[0]), .Y(n8) );
  inv1a3 U24 ( .A(vin2[3]), .Y(n12) );
  inv1a1 U25 ( .A(vin2[5]), .Y(n16) );
  inv1a1 U26 ( .A(vin2[6]), .Y(n18) );
  clk1b6 U27 ( .A(vin1[2]), .Y(n20) );
  inv1a3 U28 ( .A(vin1[4]), .Y(n22) );
  inv1a1 U29 ( .A(valid_num[2]), .Y(n1) );
  inv1a1 U30 ( .A(n1), .Y(n2) );
  inv1a1 U31 ( .A(n1), .Y(n3) );
  inv1a27 U32 ( .A(vin2[2]), .Y(n10) );
  inv1a15 U33 ( .A(n10), .Y(n11) );
  clk1b6 U34 ( .A(n12), .Y(n13) );
  inv1a3 U35 ( .A(vin2[4]), .Y(n14) );
  inv1a3 U36 ( .A(n14), .Y(n15) );
  inv1a3 U37 ( .A(n16), .Y(n17) );
  inv1a3 U38 ( .A(n18), .Y(n19) );
  inv1a3 U39 ( .A(n22), .Y(n23) );
  inv1a1 U40 ( .A(vin1[6]), .Y(n24) );
  inv1a3 U41 ( .A(n24), .Y(n25) );
  inv1a1 U42 ( .A(valid_num[1]), .Y(n26) );
  inv1a1 U43 ( .A(n26), .Y(n27) );
  inv1a1 U44 ( .A(valid_num[0]), .Y(n29) );
  inv1a3 U45 ( .A(n29), .Y(n30) );
  inv1a3 U46 ( .A(resetn), .Y(n35) );
endmodule

