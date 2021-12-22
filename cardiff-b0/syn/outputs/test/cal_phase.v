/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Tue Dec 21 17:29:46 2021
/////////////////////////////////////////////////////////////


module SNPS_CLOCK_GATE_HIGH_cal_vn_10 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3351;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3351) );
  and2a3 main_gate ( .A(net3351), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_9 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3351;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3351) );
  and2a3 main_gate ( .A(net3351), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_7 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3351;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3351) );
  and2a3 main_gate ( .A(net3351), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_4 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3351;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3351) );
  and2a3 main_gate ( .A(net3351), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_3 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3351;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3351) );
  and2a3 main_gate ( .A(net3351), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_2 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3351;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3351) );
  and2a3 main_gate ( .A(net3351), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_1 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3351;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3351) );
  and2a3 main_gate ( .A(net3351), .B(CLK), .Y(ENCLK) );
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
         N190, N191, N192, N193, N194, N197, N198, N199, N200, N201, N202,
         N203, N207, N208, N209, N210, N211, N212, N213, N214, N219, N220,
         N221, N229, N230, N231, N232, N233, N234, N235, N236, N239, N240,
         N241, N242, N243, N244, N245, N246, N248, N250, N252, N254, N255,
         net3362, net3367, net3377, net3392, net3397, net3402, net3407, n1, n2,
         n3, n4, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248;
  wire   [5:0] n_zz_16;
  wire   [5:0] n_zz_17;
  wire   [2:1] n_zz_20;

  SNPS_CLOCK_GATE_HIGH_cal_vn_10 clk_gate_min_v_reg ( .CLK(clk), .EN(N255), 
        .ENCLK(net3362) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_9 clk_gate_max_v_reg ( .CLK(clk), .EN(N254), 
        .ENCLK(net3367) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_7 clk_gate_Vins_6_reg ( .CLK(clk), .EN(N252), 
        .ENCLK(net3377) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_4 clk_gate_Vins_4_reg ( .CLK(clk), .EN(N250), 
        .ENCLK(net3392) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_3 clk_gate_Vins_2_reg ( .CLK(clk), .EN(N248), 
        .ENCLK(net3397) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_2 clk_gate_v_cnt_reg ( .CLK(clk), .EN(N132), 
        .ENCLK(net3402) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_1 clk_gate_Vins_0_reg ( .CLK(clk), .EN(N246), 
        .ENCLK(net3407) );
  fdf2a3 v_cnt_reg_0_ ( .D(N219), .CLK(net3402), .CLR(n242), .Q(n_zz_20[1]) );
  fdf2a3 v_cnt_reg_2_ ( .D(N221), .CLK(net3402), .CLR(n248), .Q(v_cnt_2_) );
  fdf2a3 mean_finish_regNext_reg ( .D(mean_finish), .CLK(clk), .CLR(n244), .Q(
        finish) );
  fdf2a3 v_cnt_reg_1_ ( .D(N220), .CLK(net3402), .CLR(n245), .Q(n_zz_20[2]) );
  fdf2a3 min_v_reg_7_ ( .D(N236), .CLK(net3362), .CLR(n242), .Q(n_zz_17_8) );
  fdf2a3 min_v_reg_6_ ( .D(N235), .CLK(net3362), .CLR(n243), .Q(n_zz_17[5]) );
  fdf2a3 min_v_reg_5_ ( .D(N234), .CLK(net3362), .CLR(n244), .Q(n_zz_17[4]) );
  fdf2a3 min_v_reg_4_ ( .D(N233), .CLK(net3362), .CLR(n245), .Q(n_zz_17[3]) );
  fdf2a3 min_v_reg_3_ ( .D(N232), .CLK(net3362), .CLR(n247), .Q(n_zz_17[2]) );
  fdf2a3 min_v_reg_2_ ( .D(N231), .CLK(net3362), .CLR(n248), .Q(n_zz_17[1]) );
  fdf2a3 min_v_reg_1_ ( .D(N230), .CLK(net3362), .CLR(n242), .Q(n_zz_17[0]) );
  fdf2a3 min_v_reg_0_ ( .D(N229), .CLK(net3362), .CLR(n243), .Q(min_v_0_) );
  fdf2a3 max_v_reg_7_ ( .D(N245), .CLK(net3367), .CLR(n247), .Q(n_zz_16_8) );
  fdf2a3 max_v_reg_6_ ( .D(N244), .CLK(net3367), .CLR(n245), .Q(n_zz_16[5]) );
  fdf2a3 max_v_reg_5_ ( .D(N243), .CLK(net3367), .CLR(n242), .Q(n_zz_16[4]) );
  fdf2a3 max_v_reg_4_ ( .D(N242), .CLK(net3367), .CLR(n247), .Q(n_zz_16[3]) );
  fdf2a3 max_v_reg_3_ ( .D(N241), .CLK(net3367), .CLR(n243), .Q(n_zz_16[2]) );
  fdf2a3 max_v_reg_2_ ( .D(N240), .CLK(net3367), .CLR(n248), .Q(n_zz_16[1]) );
  fdf2a3 max_v_reg_1_ ( .D(N239), .CLK(net3367), .CLR(n244), .Q(n_zz_16[0]) );
  fdf2a3 max_v_reg_0_ ( .D(n241), .CLK(net3367), .CLR(n244), .Q(max_v_0_) );
  fdf2a3 Vins_5_reg_7_ ( .D(N194), .CLK(net3392), .CLR(n248), .Q(vn_5[7]) );
  fdf2a3 Vins_7_reg_7_ ( .D(N214), .CLK(net3377), .CLR(n242), .Q(vn_7[7]) );
  fdf2a3 Vins_3_reg_7_ ( .D(N174), .CLK(net3397), .CLR(n247), .Q(vn_3[7]) );
  fdf2a3 Vins_1_reg_7_ ( .D(N154), .CLK(net3407), .CLR(n246), .Q(vn_1[7]) );
  fdf2a3 Vins_4_reg_7_ ( .D(n_zz_24_1_), .CLK(net3392), .CLR(n246), .Q(vn_4[7]) );
  fdf2a3 Vins_4_reg_6_ ( .D(N203), .CLK(net3392), .CLR(n246), .Q(vn_4[6]) );
  fdf2a3 Vins_4_reg_5_ ( .D(N202), .CLK(net3392), .CLR(n246), .Q(vn_4[5]) );
  fdf2a3 Vins_4_reg_4_ ( .D(N201), .CLK(net3392), .CLR(n245), .Q(vn_4[4]) );
  fdf2a3 Vins_4_reg_3_ ( .D(N200), .CLK(net3392), .CLR(n248), .Q(vn_4[3]) );
  fdf2a3 Vins_4_reg_2_ ( .D(N199), .CLK(net3392), .CLR(n248), .Q(vn_4[2]) );
  fdf2a3 Vins_4_reg_1_ ( .D(N198), .CLK(net3392), .CLR(n242), .Q(vn_4[1]) );
  fdf2a3 Vins_4_reg_0_ ( .D(N197), .CLK(net3392), .CLR(n247), .Q(vn_4[0]) );
  fdf2a3 Vins_6_reg_7_ ( .D(n_zz_24_1_), .CLK(net3377), .CLR(n245), .Q(vn_6[7]) );
  fdf2a3 Vins_6_reg_6_ ( .D(N203), .CLK(net3377), .CLR(n248), .Q(vn_6[6]) );
  fdf2a3 Vins_6_reg_5_ ( .D(N202), .CLK(net3377), .CLR(n242), .Q(vn_6[5]) );
  fdf2a3 Vins_6_reg_4_ ( .D(N201), .CLK(net3377), .CLR(n247), .Q(vn_6[4]) );
  fdf2a3 Vins_6_reg_3_ ( .D(N200), .CLK(net3377), .CLR(n243), .Q(vn_6[3]) );
  fdf2a3 Vins_6_reg_2_ ( .D(N199), .CLK(net3377), .CLR(n244), .Q(vn_6[2]) );
  fdf2a3 Vins_6_reg_1_ ( .D(N198), .CLK(net3377), .CLR(n247), .Q(vn_6[1]) );
  fdf2a3 Vins_6_reg_0_ ( .D(N197), .CLK(net3377), .CLR(n244), .Q(vn_6[0]) );
  fdf2a3 Vins_2_reg_7_ ( .D(n_zz_24_1_), .CLK(net3397), .CLR(n248), .Q(vn_2[7]) );
  fdf2a3 Vins_0_reg_7_ ( .D(n_zz_24_1_), .CLK(net3407), .CLR(n243), .Q(vn_0[7]) );
  fdf2a3 Vins_2_reg_6_ ( .D(N203), .CLK(net3397), .CLR(n247), .Q(vn_2[6]) );
  fdf2a3 Vins_2_reg_5_ ( .D(N202), .CLK(net3397), .CLR(n243), .Q(vn_2[5]) );
  fdf2a3 Vins_2_reg_4_ ( .D(N201), .CLK(net3397), .CLR(n243), .Q(vn_2[4]) );
  fdf2a3 Vins_2_reg_3_ ( .D(N200), .CLK(net3397), .CLR(n245), .Q(vn_2[3]) );
  fdf2a3 Vins_2_reg_2_ ( .D(N199), .CLK(net3397), .CLR(n248), .Q(vn_2[2]) );
  fdf2a3 Vins_2_reg_1_ ( .D(N198), .CLK(net3397), .CLR(n242), .Q(vn_2[1]) );
  fdf2a3 Vins_2_reg_0_ ( .D(N197), .CLK(net3397), .CLR(n247), .Q(vn_2[0]) );
  fdf2a3 Vins_0_reg_6_ ( .D(N203), .CLK(net3407), .CLR(n243), .Q(vn_0[6]) );
  fdf2a3 Vins_0_reg_5_ ( .D(N202), .CLK(net3407), .CLR(n247), .Q(vn_0[5]) );
  fdf2a3 Vins_0_reg_4_ ( .D(N201), .CLK(net3407), .CLR(n242), .Q(vn_0[4]) );
  fdf2a3 Vins_0_reg_3_ ( .D(N200), .CLK(net3407), .CLR(n248), .Q(vn_0[3]) );
  fdf2a3 Vins_0_reg_2_ ( .D(N199), .CLK(net3407), .CLR(n248), .Q(vn_0[2]) );
  fdf2a3 Vins_0_reg_1_ ( .D(N198), .CLK(net3407), .CLR(n245), .Q(vn_0[1]) );
  fdf2a3 Vins_0_reg_0_ ( .D(N197), .CLK(net3407), .CLR(n244), .Q(vn_0[0]) );
  fdf2a3 Vins_7_reg_2_ ( .D(N209), .CLK(net3377), .CLR(n248), .Q(vn_7[2]) );
  fdf2a3 Vins_7_reg_6_ ( .D(N213), .CLK(net3377), .CLR(n248), .Q(vn_7[6]) );
  fdf2a3 Vins_7_reg_5_ ( .D(N212), .CLK(net3377), .CLR(n245), .Q(vn_7[5]) );
  fdf2a3 Vins_7_reg_4_ ( .D(N211), .CLK(net3377), .CLR(n244), .Q(vn_7[4]) );
  fdf2a3 Vins_7_reg_3_ ( .D(N210), .CLK(net3377), .CLR(n243), .Q(vn_7[3]) );
  fdf2a3 Vins_7_reg_1_ ( .D(N208), .CLK(net3377), .CLR(n245), .Q(vn_7[1]) );
  fdf2a3 Vins_5_reg_2_ ( .D(N189), .CLK(net3392), .CLR(n247), .Q(vn_5[2]) );
  fdf2a3 Vins_3_reg_2_ ( .D(N169), .CLK(net3397), .CLR(n244), .Q(vn_3[2]) );
  fdf2a3 Vins_1_reg_6_ ( .D(N153), .CLK(net3407), .CLR(n246), .Q(vn_1[6]) );
  fdf2a3 Vins_1_reg_5_ ( .D(N152), .CLK(net3407), .CLR(n246), .Q(vn_1[5]) );
  fdf2a3 Vins_1_reg_4_ ( .D(N151), .CLK(net3407), .CLR(n246), .Q(vn_1[4]) );
  fdf2a3 Vins_1_reg_3_ ( .D(N150), .CLK(net3407), .CLR(n246), .Q(vn_1[3]) );
  fdf2a3 Vins_1_reg_1_ ( .D(N148), .CLK(net3407), .CLR(n246), .Q(vn_1[1]) );
  fdf2a3 Vins_5_reg_6_ ( .D(N193), .CLK(net3392), .CLR(n242), .Q(vn_5[6]) );
  fdf2a3 Vins_5_reg_5_ ( .D(N192), .CLK(net3392), .CLR(n242), .Q(vn_5[5]) );
  fdf2a3 Vins_5_reg_4_ ( .D(N191), .CLK(net3392), .CLR(n248), .Q(vn_5[4]) );
  fdf2a3 Vins_5_reg_3_ ( .D(N190), .CLK(net3392), .CLR(n245), .Q(vn_5[3]) );
  fdf2a3 Vins_5_reg_1_ ( .D(N188), .CLK(net3392), .CLR(n244), .Q(vn_5[1]) );
  fdf2a3 Vins_3_reg_6_ ( .D(N173), .CLK(net3397), .CLR(n243), .Q(vn_3[6]) );
  fdf2a3 Vins_3_reg_5_ ( .D(N172), .CLK(net3397), .CLR(n247), .Q(vn_3[5]) );
  fdf2a3 Vins_3_reg_4_ ( .D(N171), .CLK(net3397), .CLR(n242), .Q(vn_3[4]) );
  fdf2a3 Vins_3_reg_3_ ( .D(N170), .CLK(net3397), .CLR(n248), .Q(vn_3[3]) );
  fdf2a3 Vins_3_reg_1_ ( .D(N168), .CLK(net3397), .CLR(n248), .Q(vn_3[1]) );
  fdf2a3 Vins_1_reg_0_ ( .D(N147), .CLK(net3407), .CLR(n246), .Q(vn_1[0]) );
  fdf2a3 Vins_1_reg_2_ ( .D(N149), .CLK(net3407), .CLR(n246), .Q(vn_1[2]) );
  fdf2a3 Vins_7_reg_0_ ( .D(N207), .CLK(net3377), .CLR(n245), .Q(vn_7[0]) );
  fdf2a3 Vins_5_reg_0_ ( .D(N187), .CLK(net3392), .CLR(n243), .Q(vn_5[0]) );
  fdf2a3 Vins_3_reg_0_ ( .D(N167), .CLK(net3397), .CLR(n244), .Q(vn_3[0]) );
  ao4f3 U3 ( .A(n226), .B(n215), .C(n19), .D(n214), .Y(N173) );
  ao4f3 U4 ( .A(n226), .B(n217), .C(n19), .D(n216), .Y(N172) );
  ao1d3 U5 ( .A(n112), .B(n117), .C(n116), .Y(N200) );
  ao1d3 U6 ( .A(n59), .B(n117), .C(n116), .Y(N197) );
  mx2d3 U7 ( .D0(vin1[6]), .D1(vin2[6]), .S(n154), .Y(n209) );
  inv1a1 U8 ( .A(n199), .Y(n202) );
  or2c1 U9 ( .A(n61), .B(n60), .Y(n84) );
  or2c1 U10 ( .A(n32), .B(n31), .Y(n56) );
  mx2d3 U11 ( .D0(vin1[0]), .D1(vin2[0]), .S(n154), .Y(n185) );
  mx2a3 U12 ( .D0(vin1[0]), .D1(vin2[0]), .S(n173), .Y(n158) );
  or2c1 U13 ( .A(n57), .B(vin2[7]), .Y(n144) );
  or2c1 U14 ( .A(n153), .B(vin1[6]), .Y(n140) );
  and2a9 U15 ( .A(n93), .B(n_zz_20[1]), .Y(n225) );
  and2a6 U16 ( .A(n_zz_20[2]), .B(n_zz_20[1]), .Y(n150) );
  or2c1 U17 ( .A(n175), .B(vin2[5]), .Y(n137) );
  or2c1 U18 ( .A(n170), .B(vin2[4]), .Y(n136) );
  inv1a1 U19 ( .A(vin2[6]), .Y(n153) );
  or2c1 U20 ( .A(n169), .B(vin1[4]), .Y(n134) );
  inv1a1 U21 ( .A(n_zz_20[2]), .Y(n93) );
  inv1a1 U22 ( .A(vin2[3]), .Y(n165) );
  inv1a1 U23 ( .A(n_zz_20[1]), .Y(n30) );
  or2c1 U24 ( .A(n174), .B(vin1[5]), .Y(n139) );
  inv1a1 U25 ( .A(n190), .Y(n191) );
  ao1d3 U26 ( .A(n98), .B(n117), .C(n116), .Y(N199) );
  inv1a3 U27 ( .A(n82), .Y(n149) );
  and2a3 U28 ( .A(n50), .B(n49), .Y(n1) );
  and2a3 U29 ( .A(n79), .B(n78), .Y(n2) );
  inv1a1 U30 ( .A(n150), .Y(n17) );
  oa4f3 U31 ( .A(n4), .B(rg_leakage_table_0[5]), .C(n226), .D(
        rg_leakage_table_2[5]), .Y(n37) );
  oa4f2 U32 ( .A(n4), .B(rg_leakage_table_1[3]), .C(n225), .D(
        rg_leakage_table_3[3]), .Y(n72) );
  oa4f2 U33 ( .A(n4), .B(rg_leakage_table_1[4]), .C(n225), .D(
        rg_leakage_table_3[4]), .Y(n69) );
  oa4f3 U34 ( .A(n4), .B(rg_leakage_table_1[6]), .C(n225), .D(
        rg_leakage_table_3[6]), .Y(n63) );
  clk1b6 U35 ( .A(n29), .Y(n3) );
  inv1a3 U36 ( .A(vin2[7]), .Y(n85) );
  ao4f2 U37 ( .A(n226), .B(n151), .C(n19), .D(n82), .Y(N174) );
  fa1a3 U38 ( .A(vin1[6]), .B(n35), .CI(n107), .CO(n55), .S(n108) );
  fa1a3 U39 ( .A(vin1[5]), .B(n38), .CI(n103), .CO(n107), .S(n104) );
  fa1a3 U40 ( .A(vin1[4]), .B(n42), .CI(n115), .CO(n103), .S(n118) );
  mx2a3 U41 ( .D0(n175), .D1(n174), .S(n173), .Y(n235) );
  mx2a3 U42 ( .D0(n170), .D1(n169), .S(n173), .Y(n231) );
  mx2d3 U43 ( .D0(vin1[3]), .D1(vin2[3]), .S(n154), .Y(n194) );
  xor2b2 U44 ( .A(vin2[0]), .B(n87), .Y(n88) );
  and2a3 U45 ( .A(n75), .B(n74), .Y(n76) );
  and2a3 U46 ( .A(n69), .B(n68), .Y(n70) );
  and2a3 U47 ( .A(n44), .B(n43), .Y(n45) );
  and2a3 U48 ( .A(n41), .B(n40), .Y(n42) );
  and2a3 U49 ( .A(n34), .B(n33), .Y(n35) );
  and2a3 U50 ( .A(n72), .B(n71), .Y(n73) );
  and2a3 U51 ( .A(n66), .B(n65), .Y(n67) );
  and2a3 U52 ( .A(n63), .B(n62), .Y(n64) );
  and2a3 U53 ( .A(n37), .B(n36), .Y(n38) );
  and2a3 U54 ( .A(n47), .B(n46), .Y(n48) );
  oa4f2 U55 ( .A(n150), .B(rg_leakage_table_7[3]), .C(n92), .D(
        rg_leakage_table_5[3]), .Y(n71) );
  or3d2 U56 ( .A(n132), .B(n131), .C(n130), .Y(n135) );
  clk1b6 U57 ( .A(n3), .Y(n4) );
  clk1b9 U58 ( .A(n224), .Y(n39) );
  oa4f2 U59 ( .A(vin2[6]), .B(n152), .C(n85), .D(vin1[7]), .Y(n142) );
  and2c6 U60 ( .A(n_zz_20[1]), .B(n_zz_20[2]), .Y(n29) );
  and2c2 U61 ( .A(vin2[7]), .B(vin1[7]), .Y(n211) );
  ao4f1 U62 ( .A(n39), .B(n215), .C(n224), .D(n214), .Y(N193) );
  and2c3 U63 ( .A(n182), .B(n17), .Y(N252) );
  and2c3 U64 ( .A(n182), .B(n19), .Y(N248) );
  and2c3 U65 ( .A(n182), .B(n224), .Y(N250) );
  inv1a3 U66 ( .A(n150), .Y(n18) );
  oa4f1 U67 ( .A(n4), .B(rg_leakage_table_1[7]), .C(n225), .D(
        rg_leakage_table_3[7]), .Y(n61) );
  oa4f1 U68 ( .A(n4), .B(rg_leakage_table_0[4]), .C(n225), .D(
        rg_leakage_table_2[4]), .Y(n41) );
  clk1b6 U69 ( .A(n225), .Y(n19) );
  oa1f1 U70 ( .A(n19), .B(n224), .C(n239), .Y(N220) );
  ao4f1 U71 ( .A(n39), .B(n237), .C(n224), .D(n236), .Y(N189) );
  ao4f1 U72 ( .A(n39), .B(n221), .C(n224), .D(n220), .Y(N190) );
  ao4f1 U73 ( .A(n39), .B(n219), .C(n224), .D(n218), .Y(N188) );
  ao4f1 U74 ( .A(n39), .B(n223), .C(n224), .D(n222), .Y(N191) );
  ao4f1 U75 ( .A(n39), .B(n151), .C(n224), .D(n82), .Y(N194) );
  ao4f1 U76 ( .A(n39), .B(n217), .C(n224), .D(n216), .Y(N192) );
  buf1a9 U77 ( .A(n246), .Y(n242) );
  buf1a9 U78 ( .A(n246), .Y(n247) );
  ao4f1 U79 ( .A(n29), .B(n228), .C(n3), .D(n227), .Y(N147) );
  ao4f1 U80 ( .A(n29), .B(n215), .C(n3), .D(n214), .Y(N153) );
  ao4f1 U81 ( .A(n29), .B(n217), .C(n3), .D(n216), .Y(N152) );
  ao4f1 U82 ( .A(n29), .B(n219), .C(n3), .D(n218), .Y(N148) );
  ao4f1 U83 ( .A(n29), .B(n221), .C(n3), .D(n220), .Y(N150) );
  ao4f1 U84 ( .A(n29), .B(n223), .C(n3), .D(n222), .Y(N151) );
  ao4f1 U85 ( .A(n29), .B(n151), .C(n3), .D(n82), .Y(N154) );
  buf1a9 U86 ( .A(n246), .Y(n248) );
  oa4f1 U87 ( .A(n4), .B(rg_leakage_table_0[6]), .C(n226), .D(
        rg_leakage_table_2[6]), .Y(n34) );
  buf1a6 U88 ( .A(n225), .Y(n226) );
  and2c3 U89 ( .A(valid_num[0]), .B(valid_num[1]), .Y(n94) );
  and2c3 U90 ( .A(n_zz_20[1]), .B(n239), .Y(N219) );
  inv1a3 U91 ( .A(n148), .Y(n239) );
  fa1a2 U92 ( .A(n_zz_17[1]), .B(n_zz_16[1]), .CI(n20), .CO(n21), .S(mean[1])
         );
  fa1a2 U93 ( .A(n_zz_17[2]), .B(n_zz_16[2]), .CI(n21), .CO(n22), .S(mean[2])
         );
  fa1a2 U94 ( .A(n_zz_17[3]), .B(n_zz_16[3]), .CI(n22), .CO(n23), .S(mean[3])
         );
  fa1a2 U95 ( .A(n_zz_17[4]), .B(n_zz_16[4]), .CI(n23), .CO(n24), .S(mean[4])
         );
  inv1a1 U96 ( .A(n_zz_17_8), .Y(n27) );
  inv1a1 U97 ( .A(n_zz_16_8), .Y(n26) );
  fa1a2 U98 ( .A(n_zz_17[5]), .B(n_zz_16[5]), .CI(n24), .CO(n25), .S(mean[5])
         );
  fa1a2 U99 ( .A(n27), .B(n26), .CI(n25), .CO(n28), .S(mean[6]) );
  inv1a1 U100 ( .A(n28), .Y(mean[7]) );
  ha1a2 U101 ( .A(n_zz_16[0]), .B(n_zz_17[0]), .CO(n20), .S(mean[0]) );
  inv1a3 U102 ( .A(vin1[7]), .Y(n57) );
  oa4f3 U103 ( .A(n4), .B(rg_leakage_table_0[7]), .C(n226), .D(
        rg_leakage_table_2[7]), .Y(n32) );
  buf1a6 U104 ( .A(n150), .Y(n240) );
  or2c3 U105 ( .A(n30), .B(n_zz_20[2]), .Y(n224) );
  oa4f3 U106 ( .A(n240), .B(rg_leakage_table_6[7]), .C(n39), .D(
        rg_leakage_table_4[7]), .Y(n31) );
  oa4f3 U107 ( .A(n240), .B(rg_leakage_table_6[6]), .C(n39), .D(
        rg_leakage_table_4[6]), .Y(n33) );
  oa4f3 U108 ( .A(n240), .B(rg_leakage_table_6[5]), .C(n39), .D(
        rg_leakage_table_4[5]), .Y(n36) );
  buf1a6 U109 ( .A(n39), .Y(n92) );
  oa4f3 U110 ( .A(n150), .B(rg_leakage_table_6[4]), .C(n92), .D(
        rg_leakage_table_4[4]), .Y(n40) );
  oa4f3 U111 ( .A(n4), .B(rg_leakage_table_0[3]), .C(n225), .D(
        rg_leakage_table_2[3]), .Y(n44) );
  oa4f3 U112 ( .A(n150), .B(rg_leakage_table_6[3]), .C(n92), .D(
        rg_leakage_table_4[3]), .Y(n43) );
  oa4f3 U113 ( .A(n4), .B(rg_leakage_table_0[2]), .C(n225), .D(
        rg_leakage_table_2[2]), .Y(n47) );
  oa4f3 U114 ( .A(n150), .B(rg_leakage_table_6[2]), .C(n92), .D(
        rg_leakage_table_4[2]), .Y(n46) );
  oa4f3 U115 ( .A(n4), .B(rg_leakage_table_0[1]), .C(n225), .D(
        rg_leakage_table_2[1]), .Y(n50) );
  oa4f3 U116 ( .A(n150), .B(rg_leakage_table_6[1]), .C(n92), .D(
        rg_leakage_table_4[1]), .Y(n49) );
  oa4f3 U117 ( .A(n4), .B(rg_leakage_table_0[0]), .C(n225), .D(
        rg_leakage_table_2[0]), .Y(n52) );
  oa4f3 U118 ( .A(n150), .B(rg_leakage_table_6[0]), .C(n92), .D(
        rg_leakage_table_4[0]), .Y(n51) );
  or2c3 U119 ( .A(n52), .B(n51), .Y(n54) );
  or2b2 U120 ( .B(vin1[0]), .A(n54), .Y(n99) );
  clk1b6 U121 ( .A(n53), .Y(n_zz_24_1_) );
  xor2a2 U122 ( .A(vin1[0]), .B(n54), .Y(n59) );
  fa1a2 U123 ( .A(n57), .B(n56), .CI(n55), .CO(n53), .S(n58) );
  or2b6 U124 ( .B(n58), .A(n_zz_24_1_), .Y(n117) );
  clk1b6 U125 ( .A(n_zz_24_1_), .Y(n151) );
  or2c6 U126 ( .A(n58), .B(n151), .Y(n116) );
  inv1a3 U127 ( .A(N197), .Y(n228) );
  oa4f3 U128 ( .A(n150), .B(rg_leakage_table_7[7]), .C(n92), .D(
        rg_leakage_table_5[7]), .Y(n60) );
  oa4f3 U129 ( .A(n150), .B(rg_leakage_table_7[6]), .C(n92), .D(
        rg_leakage_table_5[6]), .Y(n62) );
  oa4f3 U130 ( .A(n4), .B(rg_leakage_table_1[5]), .C(n225), .D(
        rg_leakage_table_3[5]), .Y(n66) );
  oa4f3 U131 ( .A(n150), .B(rg_leakage_table_7[5]), .C(n92), .D(
        rg_leakage_table_5[5]), .Y(n65) );
  oa4f3 U132 ( .A(n150), .B(rg_leakage_table_7[4]), .C(n92), .D(
        rg_leakage_table_5[4]), .Y(n68) );
  oa4f3 U133 ( .A(n4), .B(rg_leakage_table_1[2]), .C(n225), .D(
        rg_leakage_table_3[2]), .Y(n75) );
  oa4f3 U134 ( .A(n150), .B(rg_leakage_table_7[2]), .C(n92), .D(
        rg_leakage_table_5[2]), .Y(n74) );
  oa4f3 U135 ( .A(n4), .B(rg_leakage_table_1[1]), .C(n225), .D(
        rg_leakage_table_3[1]), .Y(n79) );
  oa4f3 U136 ( .A(n150), .B(rg_leakage_table_7[1]), .C(n92), .D(
        rg_leakage_table_5[1]), .Y(n78) );
  oa4f3 U137 ( .A(n4), .B(rg_leakage_table_1[0]), .C(n225), .D(
        rg_leakage_table_3[0]), .Y(n81) );
  oa4f3 U138 ( .A(n240), .B(rg_leakage_table_7[0]), .C(n92), .D(
        rg_leakage_table_5[0]), .Y(n80) );
  or2c3 U139 ( .A(n81), .B(n80), .Y(n87) );
  or2b2 U140 ( .B(vin2[0]), .A(n87), .Y(n101) );
  fa1a2 U141 ( .A(n85), .B(n84), .CI(n83), .CO(n82), .S(n86) );
  inv1a3 U142 ( .A(n86), .Y(n89) );
  and2c6 U143 ( .A(n149), .B(n89), .Y(n124) );
  or2b2 U144 ( .B(n124), .A(n88), .Y(n90) );
  or2c3 U145 ( .A(n149), .B(n89), .Y(n122) );
  or2c3 U146 ( .A(n90), .B(n122), .Y(n227) );
  mx2d1 U147 ( .D0(n228), .D1(n227), .S(n240), .Y(N207) );
  mx2d1 U148 ( .D0(n228), .D1(n227), .S(n225), .Y(N167) );
  mx2d1 U149 ( .D0(n228), .D1(n227), .S(n92), .Y(N187) );
  mulpa1b1 U150 ( .X0(n_zz_20[2]), .X1(n93), .S(valid_num[1]), .Z(valid_num[0]), .M(n_zz_20[1]), .P(n96) );
  xor3b3 U151 ( .A(v_cnt_2_), .B(n94), .C(valid_num[2]), .Y(n95) );
  ao2i3 U152 ( .A(n_zz_20[1]), .B(valid_num[0]), .C(n96), .D(n95), .Y(n148) );
  or2c15 U153 ( .A(vin_vld), .B(en), .Y(n182) );
  clk1b6 U154 ( .A(n182), .Y(N132) );
  fa1a2 U155 ( .A(vin1[2]), .B(n48), .CI(n97), .CO(n111), .S(n98) );
  buf1a9 U156 ( .A(resetn), .Y(n246) );
  buf1a6 U157 ( .A(n246), .Y(n243) );
  buf1a6 U158 ( .A(n246), .Y(n244) );
  buf1a6 U159 ( .A(n246), .Y(n245) );
  fa1a2 U160 ( .A(vin1[1]), .B(n1), .CI(n99), .CO(n97), .S(n100) );
  ao1d3 U161 ( .A(n100), .B(n117), .C(n116), .Y(N198) );
  inv1a3 U162 ( .A(N198), .Y(n219) );
  fa1a2 U163 ( .A(vin2[1]), .B(n2), .CI(n101), .CO(n121), .S(n102) );
  ao1f3 U164 ( .A(n124), .B(n102), .C(n122), .Y(n218) );
  ao4f3 U165 ( .A(n240), .B(n219), .C(n18), .D(n218), .Y(N208) );
  ao1d3 U166 ( .A(n104), .B(n117), .C(n116), .Y(N202) );
  inv1a3 U167 ( .A(N202), .Y(n217) );
  fa1a2 U168 ( .A(vin2[5]), .B(n67), .CI(n105), .CO(n109), .S(n106) );
  ao1f3 U169 ( .A(n124), .B(n106), .C(n122), .Y(n216) );
  ao4f3 U170 ( .A(n240), .B(n217), .C(n18), .D(n216), .Y(N212) );
  ao1d3 U171 ( .A(n108), .B(n117), .C(n116), .Y(N203) );
  inv1a3 U172 ( .A(N203), .Y(n215) );
  fa1a2 U173 ( .A(vin2[6]), .B(n64), .CI(n109), .CO(n83), .S(n110) );
  ao1f3 U174 ( .A(n124), .B(n110), .C(n122), .Y(n214) );
  ao4f3 U175 ( .A(n240), .B(n215), .C(n18), .D(n214), .Y(N213) );
  fa1a2 U176 ( .A(vin1[3]), .B(n45), .CI(n111), .CO(n115), .S(n112) );
  inv1a3 U177 ( .A(N200), .Y(n221) );
  fa1a2 U178 ( .A(vin2[3]), .B(n73), .CI(n113), .CO(n119), .S(n114) );
  ao1f3 U179 ( .A(n124), .B(n114), .C(n122), .Y(n220) );
  ao4f3 U180 ( .A(n240), .B(n221), .C(n18), .D(n220), .Y(N210) );
  ao1d3 U181 ( .A(n118), .B(n117), .C(n116), .Y(N201) );
  inv1a3 U182 ( .A(N201), .Y(n223) );
  fa1a2 U183 ( .A(vin2[4]), .B(n70), .CI(n119), .CO(n105), .S(n120) );
  ao1f3 U184 ( .A(n124), .B(n120), .C(n122), .Y(n222) );
  ao4f3 U185 ( .A(n240), .B(n223), .C(n18), .D(n222), .Y(N211) );
  inv1a3 U186 ( .A(N199), .Y(n237) );
  fa1a2 U187 ( .A(vin2[2]), .B(n76), .CI(n121), .CO(n113), .S(n123) );
  ao1f3 U188 ( .A(n124), .B(n123), .C(n122), .Y(n236) );
  ao4f3 U189 ( .A(n240), .B(n237), .C(n18), .D(n236), .Y(N209) );
  and2c3 U190 ( .A(rg_bypass_mean), .B(n211), .Y(N236) );
  inv1a3 U191 ( .A(vin1[5]), .Y(n175) );
  inv1a3 U192 ( .A(vin2[5]), .Y(n174) );
  clk1b6 U193 ( .A(vin1[1]), .Y(n155) );
  or2c1 U194 ( .A(n155), .B(vin2[1]), .Y(n126) );
  inv1a1 U195 ( .A(vin2[0]), .Y(n125) );
  or2c1 U196 ( .A(n126), .B(n125), .Y(n129) );
  inv1a3 U197 ( .A(vin2[2]), .Y(n161) );
  or2c1 U198 ( .A(n161), .B(vin1[2]), .Y(n128) );
  inv1a3 U199 ( .A(vin2[1]), .Y(n156) );
  or2c1 U200 ( .A(n156), .B(vin1[1]), .Y(n127) );
  or3d1 U201 ( .A(n129), .B(n128), .C(n127), .Y(n132) );
  inv1a1 U202 ( .A(vin1[3]), .Y(n166) );
  or2c1 U203 ( .A(n166), .B(vin2[3]), .Y(n131) );
  inv1a3 U204 ( .A(vin1[2]), .Y(n162) );
  or2c1 U205 ( .A(n162), .B(vin2[2]), .Y(n130) );
  inv1a3 U206 ( .A(vin2[4]), .Y(n169) );
  or2c3 U207 ( .A(n165), .B(vin1[3]), .Y(n133) );
  or3d3 U208 ( .A(n135), .B(n134), .C(n133), .Y(n138) );
  inv1a3 U209 ( .A(vin1[4]), .Y(n170) );
  or3d3 U210 ( .A(n138), .B(n137), .C(n136), .Y(n141) );
  or3d3 U211 ( .A(n141), .B(n140), .C(n139), .Y(n143) );
  inv1a1 U212 ( .A(vin1[6]), .Y(n152) );
  or2c3 U213 ( .A(n143), .B(n142), .Y(n145) );
  or2c9 U214 ( .A(n145), .B(n144), .Y(n154) );
  mx2d3 U215 ( .D0(n175), .D1(n174), .S(n154), .Y(n203) );
  inv1a1 U216 ( .A(rg_bypass_mean), .Y(n146) );
  and2a3 U217 ( .A(n203), .B(n146), .Y(N234) );
  and2c3 U218 ( .A(n185), .B(rg_bypass_mean), .Y(N229) );
  and2c3 U219 ( .A(n194), .B(rg_bypass_mean), .Y(N232) );
  and2c3 U220 ( .A(n209), .B(rg_bypass_mean), .Y(N235) );
  clk1b6 U221 ( .A(n154), .Y(n173) );
  and2a3 U222 ( .A(n158), .B(n146), .Y(n241) );
  mx2d1 U223 ( .D0(n155), .D1(n156), .S(n154), .Y(n186) );
  inv1a1 U224 ( .A(n186), .Y(n147) );
  and2c3 U225 ( .A(n147), .B(rg_bypass_mean), .Y(N230) );
  mx2d3 U226 ( .D0(n162), .D1(n161), .S(n154), .Y(n190) );
  and2c3 U227 ( .A(n191), .B(rg_bypass_mean), .Y(N231) );
  mx2d3 U228 ( .D0(n170), .D1(n169), .S(n154), .Y(n199) );
  and2c3 U229 ( .A(n202), .B(rg_bypass_mean), .Y(N233) );
  and2c3 U230 ( .A(n182), .B(n148), .Y(mean_finish) );
  ao4f3 U231 ( .A(n240), .B(n151), .C(n18), .D(n82), .Y(N214) );
  and2c3 U232 ( .A(n182), .B(n3), .Y(N246) );
  or2c1 U233 ( .A(vin1[7]), .B(vin2[7]), .Y(n229) );
  mx2a3 U234 ( .D0(n153), .D1(n152), .S(n154), .Y(n234) );
  mx2a3 U235 ( .D0(n156), .D1(n155), .S(n154), .Y(n230) );
  or2c1 U236 ( .A(n230), .B(n_zz_16[0]), .Y(n159) );
  inv1a1 U237 ( .A(max_v_0_), .Y(n157) );
  or3d1 U238 ( .A(n159), .B(n158), .C(n157), .Y(n160) );
  ao1f1 U239 ( .A(n_zz_16[0]), .B(n230), .C(n160), .Y(n164) );
  mx2a3 U240 ( .D0(n162), .D1(n161), .S(n173), .Y(n233) );
  or2c1 U241 ( .A(n233), .B(n_zz_16[1]), .Y(n163) );
  or2c1 U242 ( .A(n164), .B(n163), .Y(n168) );
  mx2a3 U243 ( .D0(n166), .D1(n165), .S(n173), .Y(n232) );
  oa4a2 U244 ( .A(n233), .B(n_zz_16[1]), .C(n232), .D(n_zz_16[2]), .Y(n167) );
  or2c3 U245 ( .A(n168), .B(n167), .Y(n172) );
  oa4f3 U246 ( .A(n_zz_16[2]), .B(n232), .C(n231), .D(n_zz_16[3]), .Y(n171) );
  or2c3 U247 ( .A(n172), .B(n171), .Y(n177) );
  oa4a2 U248 ( .A(n231), .B(n_zz_16[3]), .C(n235), .D(n_zz_16[4]), .Y(n176) );
  or2c3 U249 ( .A(n177), .B(n176), .Y(n179) );
  oa4f3 U250 ( .A(n235), .B(n_zz_16[4]), .C(n234), .D(n_zz_16[5]), .Y(n178) );
  or2c3 U251 ( .A(n179), .B(n178), .Y(n180) );
  ao1f3 U252 ( .A(n_zz_16[5]), .B(n234), .C(n180), .Y(n181) );
  fac2a1 U253 ( .A(n_zz_16_8), .B(n229), .CI(n181), .CO(n183) );
  oa4e3 U254 ( .C(N132), .D(rg_bypass_mean), .B(v_cnt_2_), .A(N246), .Y(n212)
         );
  ao1f2 U255 ( .A(n183), .B(n182), .C(n212), .Y(N254) );
  inv1a1 U256 ( .A(n_zz_17[4]), .Y(n184) );
  or2c1 U257 ( .A(n203), .B(n184), .Y(n201) );
  inv1a1 U258 ( .A(n_zz_17[3]), .Y(n198) );
  inv1a1 U259 ( .A(n_zz_17[0]), .Y(n188) );
  or2c3 U260 ( .A(n185), .B(min_v_0_), .Y(n187) );
  fac2a1 U261 ( .A(n188), .B(n187), .CI(n186), .CO(n193) );
  inv1a1 U262 ( .A(n_zz_17[1]), .Y(n189) );
  and2c1 U263 ( .A(n190), .B(n189), .Y(n192) );
  oa4a2 U264 ( .A(n193), .B(n192), .C(n_zz_17[1]), .D(n191), .Y(n195) );
  or2c1 U265 ( .A(n195), .B(n_zz_17[2]), .Y(n197) );
  ao1f2 U266 ( .A(n195), .B(n_zz_17[2]), .C(n194), .Y(n196) );
  ao2i3 U267 ( .A(n199), .B(n198), .C(n197), .D(n196), .Y(n200) );
  ao2i3 U268 ( .A(n_zz_17[3]), .B(n202), .C(n201), .D(n200), .Y(n207) );
  or2c1 U269 ( .A(n209), .B(n_zz_17[5]), .Y(n206) );
  inv1a1 U270 ( .A(n203), .Y(n204) );
  or2c1 U271 ( .A(n204), .B(n_zz_17[4]), .Y(n205) );
  or3d3 U272 ( .A(n207), .B(n206), .C(n205), .Y(n208) );
  ao1f3 U273 ( .A(n_zz_17[5]), .B(n209), .C(n208), .Y(n210) );
  fac2a1 U274 ( .A(n_zz_17_8), .B(n211), .CI(n210), .CO(n213) );
  ao1d2 U275 ( .A(N132), .B(n213), .C(n212), .Y(N255) );
  ao4f3 U276 ( .A(n226), .B(n219), .C(n19), .D(n218), .Y(N168) );
  ao4f3 U277 ( .A(n226), .B(n221), .C(n19), .D(n220), .Y(N170) );
  ao4f3 U278 ( .A(n226), .B(n223), .C(n19), .D(n222), .Y(N171) );
  ao4f3 U279 ( .A(n226), .B(n237), .C(n19), .D(n236), .Y(N169) );
  and2c3 U280 ( .A(n229), .B(rg_bypass_mean), .Y(N245) );
  and2c3 U281 ( .A(n230), .B(rg_bypass_mean), .Y(N239) );
  and2c3 U282 ( .A(n231), .B(rg_bypass_mean), .Y(N242) );
  and2c3 U283 ( .A(n232), .B(rg_bypass_mean), .Y(N241) );
  and2c3 U284 ( .A(n233), .B(rg_bypass_mean), .Y(N240) );
  and2c3 U285 ( .A(n234), .B(rg_bypass_mean), .Y(N244) );
  and2c3 U286 ( .A(n235), .B(rg_bypass_mean), .Y(N243) );
  ao4d2 U287 ( .B(n3), .A(n237), .D(n29), .C(n236), .Y(N149) );
  and2c1 U288 ( .A(n240), .B(v_cnt_2_), .Y(n238) );
  oa2i2 U289 ( .A(n240), .B(v_cnt_2_), .C(n239), .D(n238), .Y(N221) );
endmodule


module SNPS_CLOCK_GATE_HIGH_signMul_0_1 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3336;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3336) );
  and2a3 main_gate ( .A(net3336), .B(CLK), .Y(ENCLK) );
endmodule


module signMul_1 ( io_din_vld, io_dinA, io_dinB, io_dout_vld, io_dout, clk, 
        resetn );
  input [7:0] io_dinA;
  input [7:0] io_dinB;
  output [15:0] io_dout;
  input io_din_vld, clk, resetn;
  output io_dout_vld;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N17, net3342, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
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
         n209, n210, n211, n212;

  SNPS_CLOCK_GATE_HIGH_signMul_0_1 clk_gate_PsumReg_reg ( .CLK(clk), .EN(
        io_din_vld), .ENCLK(net3342) );
  fdf2a3 io_din_vld_regNext_reg ( .D(io_din_vld), .CLK(clk), .CLR(n212), .Q(
        io_dout_vld) );
  fdf2a3 PsumReg_reg_12_ ( .D(N14), .CLK(net3342), .CLR(n212), .Q(io_dout[12])
         );
  fdf2a3 PsumReg_reg_8_ ( .D(N10), .CLK(net3342), .CLR(n211), .Q(io_dout[8])
         );
  fdf2a3 PsumReg_reg_7_ ( .D(N9), .CLK(net3342), .CLR(n211), .Q(io_dout[7]) );
  fdf2a3 PsumReg_reg_6_ ( .D(N8), .CLK(net3342), .CLR(n211), .Q(io_dout[6]) );
  fdf2a3 PsumReg_reg_5_ ( .D(N7), .CLK(net3342), .CLR(n211), .Q(io_dout[5]) );
  fdf2a3 PsumReg_reg_4_ ( .D(N6), .CLK(net3342), .CLR(n211), .Q(io_dout[4]) );
  fdf2a3 PsumReg_reg_3_ ( .D(N5), .CLK(net3342), .CLR(n211), .Q(io_dout[3]) );
  fdf2a3 PsumReg_reg_2_ ( .D(N4), .CLK(net3342), .CLR(n211), .Q(io_dout[2]) );
  fdf2a3 PsumReg_reg_1_ ( .D(N3), .CLK(net3342), .CLR(n211), .Q(io_dout[1]) );
  fdf2a3 PsumReg_reg_0_ ( .D(N2), .CLK(net3342), .CLR(n211), .Q(io_dout[0]) );
  fdf2a3 PsumReg_reg_9_ ( .D(N11), .CLK(net3342), .CLR(n211), .Q(io_dout[9])
         );
  fdf2a3 PsumReg_reg_13_ ( .D(N15), .CLK(net3342), .CLR(n212), .Q(io_dout[13])
         );
  fdf2a3 PsumReg_reg_10_ ( .D(N12), .CLK(net3342), .CLR(n211), .Q(io_dout[10])
         );
  fdf2a3 PsumReg_reg_14_ ( .D(N16), .CLK(net3342), .CLR(n212), .Q(io_dout[14])
         );
  fdf2a3 PsumReg_reg_11_ ( .D(N13), .CLK(net3342), .CLR(n212), .Q(io_dout[11])
         );
  fdf2a6 PsumReg_reg_15_ ( .D(N17), .CLK(net3342), .CLR(n212), .Q(io_dout[15])
         );
  or2c1 U3 ( .A(n174), .B(n173), .Y(n176) );
  or2c1 U4 ( .A(n179), .B(n178), .Y(n181) );
  inv1a1 U5 ( .A(n169), .Y(n175) );
  or2c1 U6 ( .A(n127), .B(n126), .Y(n202) );
  ao1a3 U7 ( .A(n116), .B(n169), .C(n115), .Y(n146) );
  or2c1 U8 ( .A(n31), .B(n30), .Y(n159) );
  or2c1 U9 ( .A(n114), .B(n113), .Y(n167) );
  or2c1 U10 ( .A(n110), .B(n109), .Y(n178) );
  or2c1 U11 ( .A(n207), .B(n208), .Y(n209) );
  ao1f2 U12 ( .A(n158), .B(n163), .C(n159), .Y(n147) );
  or2c1 U13 ( .A(n168), .B(n167), .Y(n171) );
  oa1f3 U14 ( .A(n195), .B(n194), .C(n142), .Y(N17) );
  or2c3 U15 ( .A(n118), .B(n117), .Y(n204) );
  or2c3 U16 ( .A(n57), .B(n146), .Y(n117) );
  and2a3 U17 ( .A(n148), .B(n56), .Y(n57) );
  ha1a3 U18 ( .A(n67), .B(n66), .CO(n72), .S(n106) );
  or2a1 U19 ( .A(n100), .B(n101), .Y(n99) );
  xor2a3 U20 ( .A(n129), .B(io_dinA[6]), .Y(n7) );
  buf1a9 U21 ( .A(io_dinA[7]), .Y(n129) );
  ha1a3 U22 ( .A(n91), .B(n90), .CO(n100), .S(n89) );
  or2a1 U23 ( .A(n85), .B(n86), .Y(n82) );
  buf1a9 U24 ( .A(io_dinA[1]), .Y(n1) );
  buf1a6 U25 ( .A(resetn), .Y(n212) );
  or2c6 U26 ( .A(n1), .B(n206), .Y(n93) );
  or2c6 U27 ( .A(n2), .B(n95), .Y(n97) );
  clk1b6 U28 ( .A(io_dinA[0]), .Y(n206) );
  xor2b2 U29 ( .A(n1), .B(io_dinB[7]), .Y(n3) );
  ao1a3 U30 ( .A(n93), .B(n206), .C(n3), .Y(n12) );
  inv1a3 U31 ( .A(io_dinA[3]), .Y(n79) );
  inv1a9 U32 ( .A(n79), .Y(n78) );
  xor2b2 U33 ( .A(n78), .B(io_dinB[5]), .Y(n5) );
  xor2a2 U34 ( .A(n78), .B(io_dinA[2]), .Y(n2) );
  xor2b6 U35 ( .A(n1), .B(io_dinA[2]), .Y(n95) );
  xor2b2 U36 ( .A(n78), .B(io_dinB[6]), .Y(n19) );
  ao4f3 U37 ( .A(n5), .B(n97), .C(n19), .D(n95), .Y(n13) );
  xor2b2 U38 ( .A(n12), .B(n13), .Y(n22) );
  xor2b2 U39 ( .A(n1), .B(io_dinB[6]), .Y(n25) );
  ao4f3 U40 ( .A(n25), .B(n93), .C(n3), .D(n206), .Y(n29) );
  inv1a3 U41 ( .A(io_dinA[5]), .Y(n62) );
  inv1a9 U42 ( .A(n62), .Y(n61) );
  xor2b2 U43 ( .A(n61), .B(io_dinB[2]), .Y(n64) );
  xor2a2 U44 ( .A(n61), .B(io_dinA[4]), .Y(n4) );
  xor2b6 U45 ( .A(n78), .B(io_dinA[4]), .Y(n120) );
  or2c6 U46 ( .A(n4), .B(n120), .Y(n121) );
  xor2b2 U47 ( .A(n61), .B(io_dinB[3]), .Y(n6) );
  ao4f3 U48 ( .A(n64), .B(n121), .C(n6), .D(n120), .Y(n28) );
  xor2b2 U49 ( .A(n78), .B(io_dinB[4]), .Y(n26) );
  ao4f3 U50 ( .A(n26), .B(n97), .C(n5), .D(n95), .Y(n27) );
  xor2b2 U51 ( .A(n61), .B(io_dinB[4]), .Y(n17) );
  ao4f3 U52 ( .A(n6), .B(n121), .C(n17), .D(n120), .Y(n16) );
  xor2b2 U53 ( .A(n129), .B(io_dinB[1]), .Y(n9) );
  xor2b6 U54 ( .A(n61), .B(io_dinA[6]), .Y(n138) );
  or2c6 U55 ( .A(n7), .B(n138), .Y(n139) );
  xor2b2 U56 ( .A(n129), .B(io_dinB[2]), .Y(n18) );
  ao4f3 U57 ( .A(n9), .B(n139), .C(n18), .D(n138), .Y(n15) );
  xor2b2 U58 ( .A(n129), .B(io_dinB[0]), .Y(n8) );
  ao4f3 U59 ( .A(n9), .B(n138), .C(n8), .D(n139), .Y(n24) );
  or2b2 U60 ( .B(io_dinB[0]), .A(n129), .Y(n11) );
  inv1a1 U61 ( .A(n129), .Y(n10) );
  ao4f3 U62 ( .A(n11), .B(n138), .C(n139), .D(n10), .Y(n23) );
  or2a1 U63 ( .A(n13), .B(n12), .Y(n45) );
  fa1a2 U64 ( .A(n16), .B(n15), .CI(n14), .CO(n44), .S(n20) );
  xor2b2 U65 ( .A(n61), .B(io_dinB[5]), .Y(n34) );
  ao4f3 U66 ( .A(n17), .B(n121), .C(n34), .D(n120), .Y(n39) );
  xor2b2 U67 ( .A(n129), .B(io_dinB[3]), .Y(n36) );
  ao4f3 U68 ( .A(n18), .B(n139), .C(n36), .D(n138), .Y(n38) );
  xor2b2 U69 ( .A(n78), .B(io_dinB[7]), .Y(n32) );
  ao4f3 U70 ( .A(n19), .B(n97), .C(n32), .D(n95), .Y(n40) );
  inv1a1 U71 ( .A(n40), .Y(n37) );
  and2c3 U72 ( .A(n30), .B(n31), .Y(n158) );
  fa1a2 U73 ( .A(n22), .B(n21), .CI(n20), .CO(n30), .S(n54) );
  ha1a3 U74 ( .A(n24), .B(n23), .CO(n14), .S(n76) );
  and2b2 U75 ( .B(io_dinB[0]), .A(n138), .Y(n70) );
  xor2b2 U76 ( .A(n1), .B(io_dinB[5]), .Y(n58) );
  ao4f3 U77 ( .A(n58), .B(n93), .C(n25), .D(n206), .Y(n69) );
  xor2b2 U78 ( .A(n78), .B(io_dinB[3]), .Y(n59) );
  ao4f3 U79 ( .A(n59), .B(n97), .C(n26), .D(n95), .Y(n68) );
  fa1a2 U80 ( .A(n29), .B(n28), .CI(n27), .CO(n21), .S(n74) );
  or2c3 U81 ( .A(n54), .B(n55), .Y(n163) );
  xor2b2 U82 ( .A(n129), .B(io_dinB[4]), .Y(n35) );
  xor2b2 U83 ( .A(n129), .B(io_dinB[5]), .Y(n122) );
  ao4f3 U84 ( .A(n35), .B(n139), .C(n122), .D(n138), .Y(n125) );
  xor2b2 U85 ( .A(n61), .B(io_dinB[6]), .Y(n33) );
  xor2b2 U86 ( .A(n61), .B(io_dinB[7]), .Y(n119) );
  ao4f3 U87 ( .A(n33), .B(n121), .C(n119), .D(n120), .Y(n131) );
  inv1a1 U88 ( .A(n131), .Y(n124) );
  ao1a3 U89 ( .A(n97), .B(n95), .C(n32), .Y(n42) );
  ao4f3 U90 ( .A(n34), .B(n121), .C(n33), .D(n120), .Y(n41) );
  ao4f3 U91 ( .A(n36), .B(n139), .C(n35), .D(n138), .Y(n48) );
  fa1a2 U92 ( .A(n39), .B(n38), .CI(n37), .CO(n47), .S(n43) );
  fa1a2 U93 ( .A(n42), .B(n41), .CI(n40), .CO(n123), .S(n46) );
  and2c3 U94 ( .A(n51), .B(n52), .Y(n143) );
  fa1a2 U95 ( .A(n45), .B(n44), .CI(n43), .CO(n49), .S(n31) );
  fa1a2 U96 ( .A(n48), .B(n47), .CI(n46), .CO(n52), .S(n50) );
  and2c3 U97 ( .A(n49), .B(n50), .Y(n151) );
  and2c3 U98 ( .A(n143), .B(n151), .Y(n56) );
  or2c3 U99 ( .A(n50), .B(n49), .Y(n152) );
  or2c1 U100 ( .A(n52), .B(n51), .Y(n144) );
  ao1f2 U101 ( .A(n152), .B(n143), .C(n144), .Y(n53) );
  oa1f3 U102 ( .A(n147), .B(n56), .C(n53), .Y(n118) );
  and2c3 U103 ( .A(n55), .B(n54), .Y(n156) );
  and2c3 U104 ( .A(n158), .B(n156), .Y(n148) );
  xor2b2 U105 ( .A(n1), .B(io_dinB[4]), .Y(n92) );
  ao4f3 U106 ( .A(n92), .B(n93), .C(n58), .D(n206), .Y(n108) );
  xor2b2 U107 ( .A(n78), .B(io_dinB[2]), .Y(n96) );
  ao4f3 U108 ( .A(n96), .B(n97), .C(n59), .D(n95), .Y(n107) );
  xor2b2 U109 ( .A(n61), .B(io_dinB[1]), .Y(n65) );
  xor2b2 U110 ( .A(n61), .B(io_dinB[0]), .Y(n60) );
  ao4f3 U111 ( .A(n65), .B(n120), .C(n60), .D(n121), .Y(n67) );
  or2b2 U112 ( .B(io_dinB[0]), .A(n61), .Y(n63) );
  ao4f3 U113 ( .A(n63), .B(n120), .C(n121), .D(n62), .Y(n66) );
  ao4f3 U114 ( .A(n65), .B(n121), .C(n64), .D(n120), .Y(n73) );
  fa1a2 U115 ( .A(n70), .B(n69), .CI(n68), .CO(n75), .S(n71) );
  and2c3 U116 ( .A(n111), .B(n112), .Y(n172) );
  fa1a2 U117 ( .A(n73), .B(n72), .CI(n71), .CO(n113), .S(n112) );
  fa1a2 U118 ( .A(n76), .B(n75), .CI(n74), .CO(n55), .S(n114) );
  and2c3 U119 ( .A(n113), .B(n114), .Y(n166) );
  and2c3 U120 ( .A(n172), .B(n166), .Y(n116) );
  xor2b2 U121 ( .A(n1), .B(io_dinB[2]), .Y(n81) );
  xor2b2 U122 ( .A(n1), .B(io_dinB[3]), .Y(n94) );
  ao4f3 U123 ( .A(n81), .B(n93), .C(n94), .D(n206), .Y(n88) );
  xor2b2 U124 ( .A(n78), .B(io_dinB[1]), .Y(n98) );
  xor2b2 U125 ( .A(n78), .B(io_dinB[0]), .Y(n77) );
  ao4f3 U126 ( .A(n98), .B(n95), .C(n77), .D(n97), .Y(n91) );
  or2b2 U127 ( .B(io_dinB[0]), .A(n78), .Y(n80) );
  ao4f3 U128 ( .A(n80), .B(n95), .C(n97), .D(n79), .Y(n90) );
  and2c3 U129 ( .A(n88), .B(n89), .Y(n182) );
  and2b2 U130 ( .B(io_dinB[0]), .A(n95), .Y(n85) );
  xor2b2 U131 ( .A(n1), .B(io_dinB[1]), .Y(n83) );
  ao4f3 U132 ( .A(n83), .B(n93), .C(n81), .D(n206), .Y(n86) );
  ao4f3 U133 ( .A(n83), .B(n206), .C(io_dinB[0]), .D(n93), .Y(n207) );
  or2b2 U134 ( .B(io_dinB[0]), .A(n1), .Y(n84) );
  or2c1 U135 ( .A(n93), .B(n84), .Y(n208) );
  inv1a3 U136 ( .A(n209), .Y(n189) );
  or2c1 U137 ( .A(n86), .B(n85), .Y(n187) );
  inv1a1 U138 ( .A(n187), .Y(n87) );
  oa1f3 U139 ( .A(n82), .B(n189), .C(n87), .Y(n185) );
  or2c1 U140 ( .A(n89), .B(n88), .Y(n183) );
  ao1f2 U141 ( .A(n182), .B(n185), .C(n183), .Y(n192) );
  and2b2 U142 ( .B(io_dinB[0]), .A(n120), .Y(n105) );
  ao4f3 U143 ( .A(n94), .B(n93), .C(n92), .D(n206), .Y(n104) );
  ao4f3 U144 ( .A(n98), .B(n97), .C(n96), .D(n95), .Y(n103) );
  or2c1 U145 ( .A(n101), .B(n100), .Y(n190) );
  inv1a1 U146 ( .A(n190), .Y(n102) );
  oa1f3 U147 ( .A(n192), .B(n99), .C(n102), .Y(n180) );
  fa1a2 U148 ( .A(n105), .B(n104), .CI(n103), .CO(n109), .S(n101) );
  fa1a2 U149 ( .A(n108), .B(n107), .CI(n106), .CO(n111), .S(n110) );
  and2c3 U150 ( .A(n109), .B(n110), .Y(n177) );
  ao1f2 U151 ( .A(n180), .B(n177), .C(n178), .Y(n169) );
  or2c3 U152 ( .A(n112), .B(n111), .Y(n173) );
  ao1f2 U153 ( .A(n166), .B(n173), .C(n167), .Y(n115) );
  ao1a3 U154 ( .A(n121), .B(n120), .C(n119), .Y(n133) );
  xor2b2 U155 ( .A(n129), .B(io_dinB[6]), .Y(n130) );
  ao4f3 U156 ( .A(n122), .B(n139), .C(n130), .D(n138), .Y(n132) );
  fa1a2 U157 ( .A(n125), .B(n124), .CI(n123), .CO(n127), .S(n51) );
  or2a1 U158 ( .A(n126), .B(n127), .Y(n203) );
  inv1a1 U159 ( .A(n202), .Y(n128) );
  oa1f6 U160 ( .A(n204), .B(n203), .C(n128), .Y(n201) );
  xor2b2 U161 ( .A(n129), .B(io_dinB[7]), .Y(n137) );
  ao4f3 U162 ( .A(n130), .B(n139), .C(n137), .D(n138), .Y(n141) );
  inv1a1 U163 ( .A(n141), .Y(n134) );
  fa1a2 U164 ( .A(n133), .B(n132), .CI(n131), .CO(n135), .S(n126) );
  and2c3 U165 ( .A(n134), .B(n135), .Y(n197) );
  or2c1 U166 ( .A(n135), .B(n134), .Y(n198) );
  inv1a1 U167 ( .A(n198), .Y(n136) );
  ao1c6 U168 ( .A(n201), .B(n197), .C(n136), .Y(n195) );
  ao1a3 U169 ( .A(n139), .B(n138), .C(n137), .Y(n140) );
  or2a1 U170 ( .A(n140), .B(n141), .Y(n194) );
  or2c1 U171 ( .A(n141), .B(n140), .Y(n193) );
  inv1a1 U172 ( .A(n193), .Y(n142) );
  inv1a1 U173 ( .A(n143), .Y(n145) );
  or2c1 U174 ( .A(n145), .B(n144), .Y(n150) );
  oa1f3 U175 ( .A(n146), .B(n148), .C(n147), .Y(n155) );
  ao1f2 U176 ( .A(n155), .B(n151), .C(n152), .Y(n149) );
  xor2b2 U177 ( .A(n150), .B(n149), .Y(N13) );
  inv1a1 U178 ( .A(n151), .Y(n153) );
  or2c1 U179 ( .A(n153), .B(n152), .Y(n154) );
  xor2a2 U180 ( .A(n155), .B(n154), .Y(N12) );
  inv1a1 U181 ( .A(n156), .Y(n164) );
  inv1a1 U182 ( .A(n163), .Y(n157) );
  oa1f3 U183 ( .A(n146), .B(n164), .C(n157), .Y(n162) );
  inv1a1 U184 ( .A(n158), .Y(n160) );
  or2c1 U185 ( .A(n160), .B(n159), .Y(n161) );
  xor2a2 U186 ( .A(n162), .B(n161), .Y(N11) );
  or2c1 U187 ( .A(n164), .B(n163), .Y(n165) );
  xor2b2 U188 ( .A(n165), .B(n146), .Y(N10) );
  inv1a1 U189 ( .A(n166), .Y(n168) );
  ao1f2 U190 ( .A(n175), .B(n172), .C(n173), .Y(n170) );
  xor2b2 U191 ( .A(n171), .B(n170), .Y(N9) );
  inv1a1 U192 ( .A(n172), .Y(n174) );
  xor2a2 U193 ( .A(n176), .B(n175), .Y(N8) );
  inv1a1 U194 ( .A(n177), .Y(n179) );
  xor2a2 U195 ( .A(n181), .B(n180), .Y(N7) );
  inv1a1 U196 ( .A(n182), .Y(n184) );
  or2c1 U197 ( .A(n184), .B(n183), .Y(n186) );
  xor2a2 U198 ( .A(n186), .B(n185), .Y(N5) );
  or2c1 U199 ( .A(n82), .B(n187), .Y(n188) );
  xor2b2 U200 ( .A(n189), .B(n188), .Y(N4) );
  or2c1 U201 ( .A(n99), .B(n190), .Y(n191) );
  xor2b2 U202 ( .A(n192), .B(n191), .Y(N6) );
  or2c1 U203 ( .A(n194), .B(n193), .Y(n196) );
  xor2b2 U204 ( .A(n196), .B(n195), .Y(N16) );
  inv1a1 U205 ( .A(n197), .Y(n199) );
  or2c1 U206 ( .A(n199), .B(n198), .Y(n200) );
  xor2a2 U207 ( .A(n201), .B(n200), .Y(N15) );
  or2c1 U208 ( .A(n203), .B(n202), .Y(n205) );
  xor2b2 U209 ( .A(n205), .B(n204), .Y(N14) );
  and2b2 U210 ( .B(io_dinB[0]), .A(n206), .Y(N2) );
  or2a1 U211 ( .A(n208), .B(n207), .Y(n210) );
  and2a3 U212 ( .A(n210), .B(n209), .Y(N3) );
  buf1a6 U213 ( .A(resetn), .Y(n211) );
endmodule


module SNPS_CLOCK_GATE_HIGH_signMul_0_0 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3336;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3336) );
  and2a3 main_gate ( .A(net3336), .B(CLK), .Y(ENCLK) );
endmodule


module signMul_0 ( io_din_vld, io_dinA, io_dinB, io_dout_vld, io_dout, clk, 
        resetn );
  input [7:0] io_dinA;
  input [7:0] io_dinB;
  output [15:0] io_dout;
  input io_din_vld, clk, resetn;
  output io_dout_vld;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N17, net3342, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
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
         n209, n210, n211;

  SNPS_CLOCK_GATE_HIGH_signMul_0_0 clk_gate_PsumReg_reg ( .CLK(clk), .EN(
        io_din_vld), .ENCLK(net3342) );
  fdf2a3 io_din_vld_regNext_reg ( .D(io_din_vld), .CLK(clk), .CLR(n211), .Q(
        io_dout_vld) );
  fdf2a3 PsumReg_reg_8_ ( .D(N10), .CLK(net3342), .CLR(n210), .Q(io_dout[8])
         );
  fdf2a3 PsumReg_reg_7_ ( .D(N9), .CLK(net3342), .CLR(n210), .Q(io_dout[7]) );
  fdf2a3 PsumReg_reg_6_ ( .D(N8), .CLK(net3342), .CLR(n210), .Q(io_dout[6]) );
  fdf2a3 PsumReg_reg_5_ ( .D(N7), .CLK(net3342), .CLR(n210), .Q(io_dout[5]) );
  fdf2a3 PsumReg_reg_4_ ( .D(N6), .CLK(net3342), .CLR(n210), .Q(io_dout[4]) );
  fdf2a3 PsumReg_reg_3_ ( .D(N5), .CLK(net3342), .CLR(n210), .Q(io_dout[3]) );
  fdf2a3 PsumReg_reg_2_ ( .D(N4), .CLK(net3342), .CLR(n210), .Q(io_dout[2]) );
  fdf2a3 PsumReg_reg_1_ ( .D(N3), .CLK(net3342), .CLR(n210), .Q(io_dout[1]) );
  fdf2a3 PsumReg_reg_0_ ( .D(N2), .CLK(net3342), .CLR(n210), .Q(io_dout[0]) );
  fdf2a3 PsumReg_reg_12_ ( .D(N14), .CLK(net3342), .CLR(n211), .Q(io_dout[12])
         );
  fdf2a3 PsumReg_reg_9_ ( .D(N11), .CLK(net3342), .CLR(n210), .Q(io_dout[9])
         );
  fdf2a3 PsumReg_reg_13_ ( .D(N15), .CLK(net3342), .CLR(n211), .Q(io_dout[13])
         );
  fdf2a3 PsumReg_reg_10_ ( .D(N12), .CLK(net3342), .CLR(n210), .Q(io_dout[10])
         );
  fdf2a3 PsumReg_reg_11_ ( .D(N13), .CLK(net3342), .CLR(n211), .Q(io_dout[11])
         );
  fdf2a3 PsumReg_reg_14_ ( .D(N16), .CLK(net3342), .CLR(n211), .Q(io_dout[14])
         );
  fdf2a6 PsumReg_reg_15_ ( .D(N17), .CLK(net3342), .CLR(n211), .Q(io_dout[15])
         );
  or2c1 U3 ( .A(n173), .B(n172), .Y(n175) );
  or2c1 U4 ( .A(n163), .B(n162), .Y(n164) );
  or2c1 U5 ( .A(n178), .B(n177), .Y(n180) );
  inv1a1 U6 ( .A(n155), .Y(n163) );
  inv1a1 U7 ( .A(n168), .Y(n174) );
  or2c1 U8 ( .A(n133), .B(n132), .Y(n192) );
  ao1f2 U9 ( .A(n157), .B(n162), .C(n158), .Y(n146) );
  or2c1 U10 ( .A(n116), .B(n115), .Y(n166) );
  or2c1 U11 ( .A(n112), .B(n111), .Y(n177) );
  or2c1 U12 ( .A(n202), .B(n203), .Y(n204) );
  or2c1 U13 ( .A(n167), .B(n166), .Y(n170) );
  or2c3 U14 ( .A(n121), .B(n120), .Y(n194) );
  ao1a6 U15 ( .A(n118), .B(n168), .C(n117), .Y(n145) );
  ha1a3 U16 ( .A(n69), .B(n68), .CO(n74), .S(n108) );
  ao1a3 U17 ( .A(n127), .B(n125), .C(n2), .Y(n3) );
  or2c6 U18 ( .A(n1), .B(n125), .Y(n127) );
  or2a1 U19 ( .A(n102), .B(n103), .Y(n101) );
  ha1a3 U20 ( .A(n93), .B(n92), .CO(n102), .S(n91) );
  or2a1 U21 ( .A(n87), .B(n88), .Y(n84) );
  buf1a9 U22 ( .A(io_dinA[1]), .Y(n4) );
  buf1a6 U23 ( .A(resetn), .Y(n211) );
  or2c6 U24 ( .A(n4), .B(n201), .Y(n95) );
  or2c6 U25 ( .A(n5), .B(n97), .Y(n99) );
  buf1a15 U26 ( .A(io_dinA[7]), .Y(n34) );
  xor2a2 U27 ( .A(n34), .B(io_dinA[6]), .Y(n1) );
  inv1a3 U28 ( .A(io_dinA[5]), .Y(n64) );
  inv1a9 U29 ( .A(n64), .Y(n63) );
  xor2b6 U30 ( .A(n63), .B(io_dinA[6]), .Y(n125) );
  xor2b2 U31 ( .A(n34), .B(io_dinB[7]), .Y(n2) );
  xor2b2 U32 ( .A(n34), .B(io_dinB[6]), .Y(n126) );
  ao4f3 U33 ( .A(n126), .B(n127), .C(n2), .D(n125), .Y(n135) );
  or2a1 U34 ( .A(n3), .B(n135), .Y(n208) );
  or2c1 U35 ( .A(n135), .B(n3), .Y(n206) );
  or2c1 U36 ( .A(n208), .B(n206), .Y(n141) );
  clk1b6 U37 ( .A(io_dinA[0]), .Y(n201) );
  xor2b2 U38 ( .A(n4), .B(io_dinB[7]), .Y(n6) );
  ao1a3 U39 ( .A(n95), .B(n201), .C(n6), .Y(n14) );
  inv1a3 U40 ( .A(io_dinA[3]), .Y(n81) );
  inv1a9 U41 ( .A(n81), .Y(n80) );
  xor2b2 U42 ( .A(n80), .B(io_dinB[5]), .Y(n8) );
  xor2a2 U43 ( .A(n80), .B(io_dinA[2]), .Y(n5) );
  xor2b6 U44 ( .A(n4), .B(io_dinA[2]), .Y(n97) );
  xor2b2 U45 ( .A(n80), .B(io_dinB[6]), .Y(n21) );
  ao4f3 U46 ( .A(n8), .B(n99), .C(n21), .D(n97), .Y(n15) );
  xor2b2 U47 ( .A(n14), .B(n15), .Y(n24) );
  xor2b2 U48 ( .A(n4), .B(io_dinB[6]), .Y(n27) );
  ao4f3 U49 ( .A(n27), .B(n95), .C(n6), .D(n201), .Y(n31) );
  xor2b2 U50 ( .A(n63), .B(io_dinB[2]), .Y(n66) );
  xor2a2 U51 ( .A(n63), .B(io_dinA[4]), .Y(n7) );
  xor2b6 U52 ( .A(n80), .B(io_dinA[4]), .Y(n123) );
  or2c6 U53 ( .A(n7), .B(n123), .Y(n124) );
  xor2b2 U54 ( .A(n63), .B(io_dinB[3]), .Y(n9) );
  ao4f3 U55 ( .A(n66), .B(n124), .C(n9), .D(n123), .Y(n30) );
  xor2b2 U56 ( .A(n80), .B(io_dinB[4]), .Y(n28) );
  ao4f3 U57 ( .A(n28), .B(n99), .C(n8), .D(n97), .Y(n29) );
  xor2b2 U58 ( .A(n63), .B(io_dinB[4]), .Y(n19) );
  ao4f3 U59 ( .A(n9), .B(n124), .C(n19), .D(n123), .Y(n18) );
  xor2b2 U60 ( .A(n34), .B(io_dinB[1]), .Y(n11) );
  xor2b2 U61 ( .A(n34), .B(io_dinB[2]), .Y(n20) );
  ao4f3 U62 ( .A(n11), .B(n127), .C(n20), .D(n125), .Y(n17) );
  xor2b2 U63 ( .A(n34), .B(io_dinB[0]), .Y(n10) );
  ao4f3 U64 ( .A(n11), .B(n125), .C(n10), .D(n127), .Y(n26) );
  or2b2 U65 ( .B(io_dinB[0]), .A(n34), .Y(n13) );
  inv1a1 U66 ( .A(n34), .Y(n12) );
  ao4f3 U67 ( .A(n13), .B(n125), .C(n127), .D(n12), .Y(n25) );
  or2a1 U68 ( .A(n15), .B(n14), .Y(n48) );
  fa1a2 U69 ( .A(n18), .B(n17), .CI(n16), .CO(n47), .S(n22) );
  xor2b2 U70 ( .A(n63), .B(io_dinB[5]), .Y(n37) );
  ao4f3 U71 ( .A(n19), .B(n124), .C(n37), .D(n123), .Y(n42) );
  xor2b2 U72 ( .A(n34), .B(io_dinB[3]), .Y(n39) );
  ao4f3 U73 ( .A(n20), .B(n127), .C(n39), .D(n125), .Y(n41) );
  xor2b2 U74 ( .A(n80), .B(io_dinB[7]), .Y(n35) );
  ao4f3 U75 ( .A(n21), .B(n99), .C(n35), .D(n97), .Y(n43) );
  inv1a1 U76 ( .A(n43), .Y(n40) );
  and2c3 U77 ( .A(n32), .B(n33), .Y(n157) );
  fa1a2 U78 ( .A(n24), .B(n23), .CI(n22), .CO(n32), .S(n57) );
  ha1a3 U79 ( .A(n26), .B(n25), .CO(n16), .S(n78) );
  and2b2 U80 ( .B(io_dinB[0]), .A(n125), .Y(n72) );
  xor2b2 U81 ( .A(n4), .B(io_dinB[5]), .Y(n60) );
  ao4f3 U82 ( .A(n60), .B(n95), .C(n27), .D(n201), .Y(n71) );
  xor2b2 U83 ( .A(n80), .B(io_dinB[3]), .Y(n61) );
  ao4f3 U84 ( .A(n61), .B(n99), .C(n28), .D(n97), .Y(n70) );
  fa1a2 U85 ( .A(n31), .B(n30), .CI(n29), .CO(n23), .S(n76) );
  or2c3 U86 ( .A(n57), .B(n58), .Y(n162) );
  or2c1 U87 ( .A(n33), .B(n32), .Y(n158) );
  xor2b2 U88 ( .A(n34), .B(io_dinB[4]), .Y(n38) );
  xor2b2 U89 ( .A(n34), .B(io_dinB[5]), .Y(n128) );
  ao4f3 U90 ( .A(n38), .B(n127), .C(n128), .D(n125), .Y(n131) );
  xor2b2 U91 ( .A(n63), .B(io_dinB[6]), .Y(n36) );
  xor2b2 U92 ( .A(n63), .B(io_dinB[7]), .Y(n122) );
  ao4f3 U93 ( .A(n36), .B(n124), .C(n122), .D(n123), .Y(n136) );
  inv1a1 U94 ( .A(n136), .Y(n130) );
  ao1a3 U95 ( .A(n99), .B(n97), .C(n35), .Y(n45) );
  ao4f3 U96 ( .A(n37), .B(n124), .C(n36), .D(n123), .Y(n44) );
  ao4f3 U97 ( .A(n39), .B(n127), .C(n38), .D(n125), .Y(n51) );
  fa1a2 U98 ( .A(n42), .B(n41), .CI(n40), .CO(n50), .S(n46) );
  fa1a2 U99 ( .A(n45), .B(n44), .CI(n43), .CO(n129), .S(n49) );
  and2c3 U100 ( .A(n54), .B(n55), .Y(n142) );
  fa1a2 U101 ( .A(n48), .B(n47), .CI(n46), .CO(n52), .S(n33) );
  fa1a2 U102 ( .A(n51), .B(n50), .CI(n49), .CO(n55), .S(n53) );
  and2c3 U103 ( .A(n52), .B(n53), .Y(n150) );
  and2c3 U104 ( .A(n142), .B(n150), .Y(n59) );
  or2c3 U105 ( .A(n53), .B(n52), .Y(n151) );
  or2c1 U106 ( .A(n55), .B(n54), .Y(n143) );
  ao1f2 U107 ( .A(n151), .B(n142), .C(n143), .Y(n56) );
  oa1f3 U108 ( .A(n146), .B(n59), .C(n56), .Y(n121) );
  and2c3 U109 ( .A(n58), .B(n57), .Y(n155) );
  and2c3 U110 ( .A(n157), .B(n155), .Y(n147) );
  or2c1 U111 ( .A(n147), .B(n59), .Y(n119) );
  xor2b2 U112 ( .A(n4), .B(io_dinB[4]), .Y(n94) );
  ao4f3 U113 ( .A(n94), .B(n95), .C(n60), .D(n201), .Y(n110) );
  xor2b2 U114 ( .A(n80), .B(io_dinB[2]), .Y(n98) );
  ao4f3 U115 ( .A(n98), .B(n99), .C(n61), .D(n97), .Y(n109) );
  xor2b2 U116 ( .A(n63), .B(io_dinB[1]), .Y(n67) );
  xor2b2 U117 ( .A(n63), .B(io_dinB[0]), .Y(n62) );
  ao4f3 U118 ( .A(n67), .B(n123), .C(n62), .D(n124), .Y(n69) );
  or2b2 U119 ( .B(io_dinB[0]), .A(n63), .Y(n65) );
  ao4f3 U120 ( .A(n65), .B(n123), .C(n124), .D(n64), .Y(n68) );
  ao4f3 U121 ( .A(n67), .B(n124), .C(n66), .D(n123), .Y(n75) );
  fa1a2 U122 ( .A(n72), .B(n71), .CI(n70), .CO(n77), .S(n73) );
  and2c3 U123 ( .A(n113), .B(n114), .Y(n171) );
  fa1a2 U124 ( .A(n75), .B(n74), .CI(n73), .CO(n115), .S(n114) );
  fa1a2 U125 ( .A(n78), .B(n77), .CI(n76), .CO(n58), .S(n116) );
  and2c3 U126 ( .A(n115), .B(n116), .Y(n165) );
  and2c3 U127 ( .A(n171), .B(n165), .Y(n118) );
  xor2b2 U128 ( .A(n4), .B(io_dinB[2]), .Y(n83) );
  xor2b2 U129 ( .A(n4), .B(io_dinB[3]), .Y(n96) );
  ao4f3 U130 ( .A(n83), .B(n95), .C(n96), .D(n201), .Y(n90) );
  xor2b2 U131 ( .A(n80), .B(io_dinB[1]), .Y(n100) );
  xor2b2 U132 ( .A(n80), .B(io_dinB[0]), .Y(n79) );
  ao4f3 U133 ( .A(n100), .B(n97), .C(n79), .D(n99), .Y(n93) );
  or2b2 U134 ( .B(io_dinB[0]), .A(n80), .Y(n82) );
  ao4f3 U135 ( .A(n82), .B(n97), .C(n99), .D(n81), .Y(n92) );
  and2c3 U136 ( .A(n90), .B(n91), .Y(n184) );
  and2b2 U137 ( .B(io_dinB[0]), .A(n97), .Y(n87) );
  xor2b2 U138 ( .A(n4), .B(io_dinB[1]), .Y(n85) );
  ao4f3 U139 ( .A(n85), .B(n95), .C(n83), .D(n201), .Y(n88) );
  ao4f3 U140 ( .A(n85), .B(n201), .C(io_dinB[0]), .D(n95), .Y(n202) );
  or2b2 U141 ( .B(io_dinB[0]), .A(n4), .Y(n86) );
  or2c1 U142 ( .A(n95), .B(n86), .Y(n203) );
  inv1a3 U143 ( .A(n204), .Y(n191) );
  or2c1 U144 ( .A(n88), .B(n87), .Y(n189) );
  inv1a1 U145 ( .A(n189), .Y(n89) );
  oa1f3 U146 ( .A(n84), .B(n191), .C(n89), .Y(n187) );
  or2c1 U147 ( .A(n91), .B(n90), .Y(n185) );
  ao1f2 U148 ( .A(n184), .B(n187), .C(n185), .Y(n183) );
  and2b2 U149 ( .B(io_dinB[0]), .A(n123), .Y(n107) );
  ao4f3 U150 ( .A(n96), .B(n95), .C(n94), .D(n201), .Y(n106) );
  ao4f3 U151 ( .A(n100), .B(n99), .C(n98), .D(n97), .Y(n105) );
  or2c1 U152 ( .A(n103), .B(n102), .Y(n181) );
  inv1a1 U153 ( .A(n181), .Y(n104) );
  oa1f3 U154 ( .A(n183), .B(n101), .C(n104), .Y(n179) );
  fa1a2 U155 ( .A(n107), .B(n106), .CI(n105), .CO(n111), .S(n103) );
  fa1a2 U156 ( .A(n110), .B(n109), .CI(n108), .CO(n113), .S(n112) );
  and2c3 U157 ( .A(n111), .B(n112), .Y(n176) );
  ao1f2 U158 ( .A(n179), .B(n176), .C(n177), .Y(n168) );
  or2c3 U159 ( .A(n114), .B(n113), .Y(n172) );
  ao1f2 U160 ( .A(n165), .B(n172), .C(n166), .Y(n117) );
  or2b2 U161 ( .B(n119), .A(n145), .Y(n120) );
  ao1a3 U162 ( .A(n124), .B(n123), .C(n122), .Y(n138) );
  ao4f3 U163 ( .A(n128), .B(n127), .C(n126), .D(n125), .Y(n137) );
  fa1a2 U164 ( .A(n131), .B(n130), .CI(n129), .CO(n133), .S(n54) );
  or2a1 U165 ( .A(n132), .B(n133), .Y(n193) );
  inv1a1 U166 ( .A(n192), .Y(n134) );
  oa1f6 U167 ( .A(n194), .B(n193), .C(n134), .Y(n200) );
  inv1a1 U168 ( .A(n135), .Y(n139) );
  fa1a2 U169 ( .A(n138), .B(n137), .CI(n136), .CO(n140), .S(n132) );
  and2c3 U170 ( .A(n139), .B(n140), .Y(n196) );
  or2c1 U171 ( .A(n140), .B(n139), .Y(n197) );
  ao1f3 U172 ( .A(n200), .B(n196), .C(n197), .Y(n209) );
  xor2b2 U173 ( .A(n141), .B(n209), .Y(N16) );
  inv1a1 U174 ( .A(n142), .Y(n144) );
  or2c1 U175 ( .A(n144), .B(n143), .Y(n149) );
  oa1f3 U176 ( .A(n145), .B(n147), .C(n146), .Y(n154) );
  ao1f2 U177 ( .A(n154), .B(n150), .C(n151), .Y(n148) );
  xor2b2 U178 ( .A(n149), .B(n148), .Y(N13) );
  inv1a1 U179 ( .A(n150), .Y(n152) );
  or2c1 U180 ( .A(n152), .B(n151), .Y(n153) );
  xor2a2 U181 ( .A(n154), .B(n153), .Y(N12) );
  inv1a1 U182 ( .A(n162), .Y(n156) );
  oa1f3 U183 ( .A(n145), .B(n163), .C(n156), .Y(n161) );
  inv1a1 U184 ( .A(n157), .Y(n159) );
  or2c1 U185 ( .A(n159), .B(n158), .Y(n160) );
  xor2a2 U186 ( .A(n161), .B(n160), .Y(N11) );
  xor2b2 U187 ( .A(n164), .B(n145), .Y(N10) );
  inv1a1 U188 ( .A(n165), .Y(n167) );
  ao1f2 U189 ( .A(n174), .B(n171), .C(n172), .Y(n169) );
  xor2b2 U190 ( .A(n170), .B(n169), .Y(N9) );
  inv1a1 U191 ( .A(n171), .Y(n173) );
  xor2a2 U192 ( .A(n175), .B(n174), .Y(N8) );
  inv1a1 U193 ( .A(n176), .Y(n178) );
  xor2a2 U194 ( .A(n180), .B(n179), .Y(N7) );
  or2c1 U195 ( .A(n101), .B(n181), .Y(n182) );
  xor2b2 U196 ( .A(n183), .B(n182), .Y(N6) );
  inv1a1 U197 ( .A(n184), .Y(n186) );
  or2c1 U198 ( .A(n186), .B(n185), .Y(n188) );
  xor2a2 U199 ( .A(n188), .B(n187), .Y(N5) );
  or2c1 U200 ( .A(n84), .B(n189), .Y(n190) );
  xor2b2 U201 ( .A(n191), .B(n190), .Y(N4) );
  or2c1 U202 ( .A(n193), .B(n192), .Y(n195) );
  xor2b2 U203 ( .A(n195), .B(n194), .Y(N14) );
  inv1a1 U204 ( .A(n196), .Y(n198) );
  or2c1 U205 ( .A(n198), .B(n197), .Y(n199) );
  xor2a2 U206 ( .A(n200), .B(n199), .Y(N15) );
  and2b2 U207 ( .B(io_dinB[0]), .A(n201), .Y(N2) );
  or2a1 U208 ( .A(n203), .B(n202), .Y(n205) );
  and2a3 U209 ( .A(n205), .B(n204), .Y(N3) );
  inv1a1 U210 ( .A(n206), .Y(n207) );
  oa1f3 U211 ( .A(n209), .B(n208), .C(n207), .Y(N17) );
  buf1a6 U212 ( .A(resetn), .Y(n210) );
endmodule


module SNPS_CLOCK_GATE_HIGH_dotVn_2 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3321;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3321) );
  and2a3 main_gate ( .A(net3321), .B(CLK), .Y(ENCLK) );
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
         N174, N175, N176, N177, N184, N185, N189, net3327, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, intadd_0_CI, intadd_0_SUM_10_, intadd_0_SUM_9_,
         intadd_0_SUM_8_, intadd_0_SUM_7_, intadd_0_SUM_6_, intadd_0_SUM_5_,
         intadd_0_SUM_4_, intadd_0_SUM_3_, intadd_0_SUM_2_, intadd_0_SUM_1_,
         intadd_0_SUM_0_, intadd_0_n11, intadd_0_n10, intadd_0_n9, intadd_0_n8,
         intadd_0_n7, intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3,
         intadd_0_n2, intadd_0_n1, intadd_1_CI, intadd_1_SUM_10_,
         intadd_1_SUM_9_, intadd_1_SUM_8_, intadd_1_SUM_7_, intadd_1_SUM_6_,
         intadd_1_SUM_5_, intadd_1_SUM_4_, intadd_1_SUM_3_, intadd_1_SUM_2_,
         intadd_1_SUM_1_, intadd_1_SUM_0_, intadd_1_n11, intadd_1_n10,
         intadd_1_n9, intadd_1_n8, intadd_1_n7, intadd_1_n6, intadd_1_n5,
         intadd_1_n4, intadd_1_n3, intadd_1_n2, intadd_1_n1, n1, n2, n3, n4,
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
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4;
  wire   [13:0] n_zz_9;
  wire   [13:0] n_zz_10;
  wire   [14:0] psum1;
  wire   [14:0] psum2;
  wire   [2:0] mac_cnt;
  wire   [7:0] vin_minus_mean;

  signMul_1 booth_sin ( .io_din_vld(booth_start), .io_dinA(vin_minus_mean), 
        .io_dinB({n199, n198, n197, n196, n195, n194, n193, n192}), 
        .io_dout_vld(booth_sin_io_dout_vld), .io_dout({n_zz_9, 
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2}), .clk(clk), .resetn(
        resetn) );
  signMul_0 booth_cos ( .io_din_vld(booth_start), .io_dinA(vin_minus_mean), 
        .io_dinB({n207, n206, n205, n204, n203, n202, n201, n200}), .io_dout({
        n_zz_10, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4}), .clk(clk), 
        .resetn(n328) );
  SNPS_CLOCK_GATE_HIGH_dotVn_2 clk_gate_psum2_reg ( .CLK(clk), .EN(
        booth_sin_io_dout_vld), .ENCLK(net3327) );
  fdf2a3 booth_start_reg ( .D(N91), .CLK(clk), .CLR(resetn), .Q(booth_start)
         );
  fdf2a3 mac_en_reg ( .D(n191), .CLK(clk), .CLR(n328), .Q(mac_en) );
  fdf2a3 finish_reg ( .D(N189), .CLK(clk), .CLR(n328), .Q(psum_vld) );
  fdf2a3 psum2_reg_0_ ( .D(N159), .CLK(net3327), .CLR(resetn), .Q(psum2[0]) );
  fdf2a3 psum2_reg_1_ ( .D(N160), .CLK(net3327), .CLR(n328), .Q(psum2[1]) );
  fdf2a3 psum2_reg_2_ ( .D(N161), .CLK(net3327), .CLR(resetn), .Q(psum2[2]) );
  fdf2a3 psum2_reg_3_ ( .D(N162), .CLK(net3327), .CLR(n328), .Q(psum2[3]) );
  fdf2a3 psum2_reg_4_ ( .D(N163), .CLK(net3327), .CLR(resetn), .Q(psum2[4]) );
  fdf2a3 psum2_reg_5_ ( .D(N164), .CLK(net3327), .CLR(n328), .Q(psum2[5]) );
  fdf2a3 psum2_reg_6_ ( .D(N165), .CLK(net3327), .CLR(resetn), .Q(psum2[6]) );
  fdf2a3 psum2_reg_7_ ( .D(N166), .CLK(net3327), .CLR(n328), .Q(psum2[7]) );
  fdf2a3 psum2_reg_8_ ( .D(N167), .CLK(net3327), .CLR(resetn), .Q(psum2[8]) );
  fdf2a3 psum2_reg_9_ ( .D(N168), .CLK(net3327), .CLR(resetn), .Q(psum2[9]) );
  fdf2a3 psum2_reg_10_ ( .D(N169), .CLK(net3327), .CLR(n327), .Q(psum2[10]) );
  fdf2a3 psum2_reg_11_ ( .D(N170), .CLK(net3327), .CLR(n327), .Q(psum2[11]) );
  fdf2a3 psum2_reg_12_ ( .D(N171), .CLK(net3327), .CLR(n327), .Q(psum2[12]) );
  fdf2a3 psum2_reg_13_ ( .D(N172), .CLK(net3327), .CLR(n327), .Q(psum2[13]) );
  fdf2a3 psum2_reg_14_ ( .D(N173), .CLK(net3327), .CLR(n327), .Q(psum2[14]) );
  fdf2a3 psum2_reg_15_ ( .D(N174), .CLK(net3327), .CLR(n327), .Q(n_zz_13_0_)
         );
  fdf2a3 psum2_reg_16_ ( .D(N175), .CLK(net3327), .CLR(n327), .Q(n_zz_13_1_)
         );
  fdf2a3 psum2_reg_17_ ( .D(N176), .CLK(net3327), .CLR(n327), .Q(n_zz_13_2_)
         );
  fdf2a3 psum1_reg_17_ ( .D(N157), .CLK(net3327), .CLR(n327), .Q(n_zz_11_2_)
         );
  fdf2a3 psum1_reg_16_ ( .D(N156), .CLK(net3327), .CLR(n327), .Q(n_zz_11_1_)
         );
  fdf2a3 psum1_reg_14_ ( .D(N154), .CLK(net3327), .CLR(n327), .Q(psum1[14]) );
  fdf2a3 psum1_reg_13_ ( .D(N153), .CLK(net3327), .CLR(n327), .Q(psum1[13]) );
  fdf2a3 psum1_reg_12_ ( .D(N152), .CLK(net3327), .CLR(n327), .Q(psum1[12]) );
  fdf2a3 psum1_reg_11_ ( .D(N151), .CLK(net3327), .CLR(n327), .Q(psum1[11]) );
  fdf2a3 psum1_reg_10_ ( .D(N150), .CLK(net3327), .CLR(n327), .Q(psum1[10]) );
  fdf2a3 psum1_reg_9_ ( .D(N149), .CLK(net3327), .CLR(n327), .Q(psum1[9]) );
  fdf2a3 psum1_reg_8_ ( .D(N148), .CLK(net3327), .CLR(n327), .Q(psum1[8]) );
  fdf2a3 psum1_reg_7_ ( .D(N147), .CLK(net3327), .CLR(n328), .Q(psum1[7]) );
  fdf2a3 psum1_reg_6_ ( .D(N146), .CLK(net3327), .CLR(n328), .Q(psum1[6]) );
  fdf2a3 psum1_reg_5_ ( .D(N145), .CLK(net3327), .CLR(n328), .Q(psum1[5]) );
  fdf2a3 psum1_reg_4_ ( .D(N144), .CLK(net3327), .CLR(n328), .Q(psum1[4]) );
  fdf2a3 psum1_reg_3_ ( .D(N143), .CLK(net3327), .CLR(n328), .Q(psum1[3]) );
  fdf2a3 psum1_reg_2_ ( .D(N142), .CLK(net3327), .CLR(n328), .Q(psum1[2]) );
  fdf2a3 psum1_reg_1_ ( .D(N141), .CLK(net3327), .CLR(n328), .Q(psum1[1]) );
  fdf2a3 psum1_reg_0_ ( .D(N140), .CLK(net3327), .CLR(n328), .Q(psum1[0]) );
  fdf2a3 psum2_reg_18_ ( .D(N177), .CLK(net3327), .CLR(n327), .Q(psum_out2[15]) );
  fdf2a3 psum1_reg_18_ ( .D(N158), .CLK(net3327), .CLR(n327), .Q(psum_out1[15]) );
  fa1a2 intadd_0_U12 ( .A(n_zz_9[2]), .B(psum1[2]), .CI(intadd_0_CI), .CO(
        intadd_0_n11), .S(intadd_0_SUM_0_) );
  fa1a2 intadd_0_U11 ( .A(n_zz_9[3]), .B(psum1[3]), .CI(intadd_0_n11), .CO(
        intadd_0_n10), .S(intadd_0_SUM_1_) );
  fa1a2 intadd_0_U10 ( .A(n_zz_9[4]), .B(psum1[4]), .CI(intadd_0_n10), .CO(
        intadd_0_n9), .S(intadd_0_SUM_2_) );
  fa1a2 intadd_0_U9 ( .A(n_zz_9[5]), .B(psum1[5]), .CI(intadd_0_n9), .CO(
        intadd_0_n8), .S(intadd_0_SUM_3_) );
  fa1a2 intadd_1_U12 ( .A(n_zz_10[2]), .B(psum2[2]), .CI(intadd_1_CI), .CO(
        intadd_1_n11), .S(intadd_1_SUM_0_) );
  fa1a2 intadd_1_U11 ( .A(n_zz_10[3]), .B(psum2[3]), .CI(intadd_1_n11), .CO(
        intadd_1_n10), .S(intadd_1_SUM_1_) );
  fa1a2 intadd_1_U10 ( .A(n_zz_10[4]), .B(psum2[4]), .CI(intadd_1_n10), .CO(
        intadd_1_n9), .S(intadd_1_SUM_2_) );
  fa1a2 intadd_1_U9 ( .A(n_zz_10[5]), .B(psum2[5]), .CI(intadd_1_n9), .CO(
        intadd_1_n8), .S(intadd_1_SUM_3_) );
  fdf2a6 mac_cnt_reg_0_ ( .D(n329), .CLK(net3327), .CLR(resetn), .Q(mac_cnt[0]) );
  fdf2a6 mac_cnt_reg_2_ ( .D(N185), .CLK(net3327), .CLR(resetn), .Q(mac_cnt[2]) );
  fdf2a3 mac_cnt_reg_1_ ( .D(N184), .CLK(net3327), .CLR(resetn), .Q(mac_cnt[1]) );
  fa1a3 intadd_1_U8 ( .A(n_zz_10[6]), .B(psum2[6]), .CI(intadd_1_n8), .CO(
        intadd_1_n7), .S(intadd_1_SUM_4_) );
  fa1a3 intadd_1_U7 ( .A(n_zz_10[7]), .B(psum2[7]), .CI(intadd_1_n7), .CO(
        intadd_1_n6), .S(intadd_1_SUM_5_) );
  fa1a3 intadd_0_U7 ( .A(n_zz_9[7]), .B(psum1[7]), .CI(intadd_0_n7), .CO(
        intadd_0_n6), .S(intadd_0_SUM_5_) );
  fa1a3 intadd_0_U6 ( .A(n_zz_9[8]), .B(psum1[8]), .CI(intadd_0_n6), .CO(
        intadd_0_n5), .S(intadd_0_SUM_6_) );
  fa1a3 intadd_1_U6 ( .A(n_zz_10[8]), .B(psum2[8]), .CI(intadd_1_n6), .CO(
        intadd_1_n5), .S(intadd_1_SUM_6_) );
  fa1a3 intadd_0_U5 ( .A(n_zz_9[9]), .B(psum1[9]), .CI(intadd_0_n5), .CO(
        intadd_0_n4), .S(intadd_0_SUM_7_) );
  fa1a3 intadd_1_U5 ( .A(n_zz_10[9]), .B(psum2[9]), .CI(intadd_1_n5), .CO(
        intadd_1_n4), .S(intadd_1_SUM_7_) );
  fa1a3 intadd_0_U4 ( .A(n_zz_9[10]), .B(psum1[10]), .CI(intadd_0_n4), .CO(
        intadd_0_n3), .S(intadd_0_SUM_8_) );
  fa1a3 intadd_1_U4 ( .A(n_zz_10[10]), .B(psum2[10]), .CI(intadd_1_n4), .CO(
        intadd_1_n3), .S(intadd_1_SUM_8_) );
  fa1a3 intadd_0_U3 ( .A(n_zz_9[11]), .B(psum1[11]), .CI(intadd_0_n3), .CO(
        intadd_0_n2), .S(intadd_0_SUM_9_) );
  fa1a3 intadd_1_U3 ( .A(n_zz_10[11]), .B(psum2[11]), .CI(intadd_1_n3), .CO(
        intadd_1_n2), .S(intadd_1_SUM_9_) );
  fa1a3 intadd_1_U2 ( .A(n_zz_10[12]), .B(psum2[12]), .CI(intadd_1_n2), .CO(
        intadd_1_n1), .S(intadd_1_SUM_10_) );
  fa1a3 intadd_0_U2 ( .A(n_zz_9[12]), .B(psum1[12]), .CI(intadd_0_n2), .CO(
        intadd_0_n1), .S(intadd_0_SUM_10_) );
  fa1a3 intadd_0_U8 ( .A(n_zz_9[6]), .B(psum1[6]), .CI(intadd_0_n8), .CO(
        intadd_0_n7), .S(intadd_0_SUM_4_) );
  fdf2a3 psum1_reg_15_ ( .D(N155), .CLK(net3327), .CLR(n327), .Q(n_zz_11_0_)
         );
  or2c1 U3 ( .A(n306), .B(psum1[14]), .Y(n310) );
  inv1a1 U4 ( .A(mean[6]), .Y(n84) );
  or3d1 U5 ( .A(n61), .B(n60), .C(n59), .Y(n83) );
  inv1a1 U6 ( .A(mean[5]), .Y(n75) );
  or2c1 U7 ( .A(n68), .B(n67), .Y(n71) );
  or2c1 U8 ( .A(n45), .B(n46), .Y(n41) );
  inv1a1 U9 ( .A(n44), .Y(n36) );
  buf1a6 U10 ( .A(n170), .Y(n3) );
  and2c3 U11 ( .A(n4), .B(n266), .Y(n28) );
  oa1f9 U12 ( .A(n_zz_11_2_), .B(n130), .C(n324), .Y(n257) );
  inv1a1 U13 ( .A(n45), .Y(n40) );
  or2c1 U14 ( .A(n44), .B(n37), .Y(n38) );
  and2c3 U15 ( .A(n80), .B(n81), .Y(n35) );
  or2c3 U16 ( .A(n42), .B(n41), .Y(n70) );
  or3d1 U17 ( .A(n66), .B(n65), .C(n64), .Y(n76) );
  or2c1 U18 ( .A(n280), .B(psum2[14]), .Y(n284) );
  inv1a1 U19 ( .A(mean[2]), .Y(n37) );
  inv1a1 U20 ( .A(mean[4]), .Y(n67) );
  oa4f2 U21 ( .A(n1), .B(vn_in_2[7]), .C(n252), .D(vn_in_1[7]), .Y(n50) );
  buf1a6 U22 ( .A(n51), .Y(n249) );
  ao1f1 U23 ( .A(n264), .B(n263), .C(mac_en), .Y(n265) );
  and2c2 U24 ( .A(n89), .B(mac_cnt[0]), .Y(n329) );
  ao1e3 U25 ( .B(n71), .A(n70), .C(n69), .Y(n74) );
  fa1a3 U26 ( .A(psum1[13]), .B(n_zz_9[13]), .CI(intadd_0_n1), .CO(n304), .S(
        n122) );
  fa1a3 U27 ( .A(psum2[13]), .B(n_zz_10[13]), .CI(intadd_1_n1), .CO(n278), .S(
        n121) );
  or2c3 U28 ( .A(n39), .B(n38), .Y(n47) );
  and3a3 U29 ( .A(n54), .B(n53), .C(n52), .Y(n55) );
  oa1d1 U30 ( .A(n113), .B(n248), .C(n_zz_9[1]), .Y(n114) );
  oa4f2 U31 ( .A(n248), .B(rg_sin_table_0[5]), .C(rg_sin_table_3[5]), .D(n188), 
        .Y(n184) );
  oa1d1 U32 ( .A(n116), .B(n248), .C(n_zz_10[1]), .Y(n117) );
  oa1f2 U33 ( .A(n108), .B(n88), .C(n87), .Y(N159) );
  or2a3 U34 ( .A(n248), .B(n119), .Y(n120) );
  buf1a6 U35 ( .A(n159), .Y(n1) );
  ao1f2 U36 ( .A(n267), .B(n91), .C(n90), .Y(N184) );
  buf1a6 U37 ( .A(n160), .Y(n2) );
  or2a3 U38 ( .A(n110), .B(n85), .Y(n108) );
  clk1b6 U39 ( .A(n110), .Y(n211) );
  inv1a3 U40 ( .A(mean[0]), .Y(n81) );
  inv1a3 U41 ( .A(psum1[1]), .Y(n303) );
  inv1a3 U42 ( .A(psum2[1]), .Y(n277) );
  ao1f1 U43 ( .A(n85), .B(n89), .C(n125), .Y(N91) );
  inv1a3 U44 ( .A(n_zz_9[13]), .Y(n316) );
  inv1a3 U45 ( .A(n_zz_10[13]), .Y(n290) );
  inv1a3 U46 ( .A(psum_out1[15]), .Y(n324) );
  inv1a3 U47 ( .A(mac_cnt[1]), .Y(n91) );
  inv1a1 U48 ( .A(en), .Y(n269) );
  mulpa3b1 U49 ( .X0(n278), .X1(n281), .S(psum2[14]), .Z(n295), .M(n296), .P(
        n279) );
  mulpa3b1 U50 ( .X0(n_zz_13_0_), .X1(n283), .S(n285), .Z(n295), .M(n296), .P(
        n282) );
  clk1b6 U51 ( .A(n108), .Y(n273) );
  oa4f1 U52 ( .A(n248), .B(rg_sin_table_0[4]), .C(rg_sin_table_3[4]), .D(n188), 
        .Y(n158) );
  oa4f1 U53 ( .A(n248), .B(rg_sin_table_0[3]), .C(rg_sin_table_3[3]), .D(n188), 
        .Y(n165) );
  buf1a15 U54 ( .A(resetn), .Y(n327) );
  and2c3 U55 ( .A(mac_cnt[1]), .B(mac_cnt[0]), .Y(n7) );
  oa1f1 U56 ( .A(n118), .B(n108), .C(n117), .Y(N160) );
  oa1f1 U57 ( .A(n115), .B(n108), .C(n114), .Y(N141) );
  oa1f1 U58 ( .A(n108), .B(n112), .C(n111), .Y(N140) );
  mulpa3b1 U59 ( .X0(n_zz_11_0_), .X1(n309), .S(n311), .Z(n321), .M(n322), .P(
        n308) );
  mulpa3b1 U60 ( .X0(psum_out1[15]), .X1(n324), .S(n323), .Z(n322), .M(n321), 
        .P(n326) );
  inv1a3 U61 ( .A(mac_cnt[0]), .Y(n268) );
  or2c3 U62 ( .A(n268), .B(mac_cnt[1]), .Y(n4) );
  and2c3 U63 ( .A(n4), .B(mac_cnt[2]), .Y(n159) );
  buf1a6 U64 ( .A(n159), .Y(n173) );
  and3d2 U65 ( .A(n268), .B(mac_cnt[2]), .C(mac_cnt[1]), .Y(n12) );
  buf1a6 U66 ( .A(n12), .Y(n239) );
  oa4f3 U67 ( .A(n173), .B(vn_in_2[4]), .C(n239), .D(vn_in_1[4]), .Y(n6) );
  inv1a3 U68 ( .A(mac_cnt[2]), .Y(n266) );
  buf1a9 U69 ( .A(n28), .Y(n253) );
  or2c3 U70 ( .A(mac_cnt[1]), .B(mac_cnt[0]), .Y(n8) );
  and2c3 U71 ( .A(n8), .B(mac_cnt[2]), .Y(n146) );
  buf1a9 U72 ( .A(n146), .Y(n264) );
  oa4f3 U73 ( .A(n253), .B(vn_in_6[4]), .C(n264), .D(vn_in_3[4]), .Y(n5) );
  and2a3 U74 ( .A(n6), .B(n5), .Y(n11) );
  or2c3 U75 ( .A(n266), .B(n7), .Y(n110) );
  and2c9 U76 ( .A(n266), .B(n8), .Y(n170) );
  oa4f3 U77 ( .A(n211), .B(vn_in_0[4]), .C(n170), .D(vn_in_7[4]), .Y(n10) );
  or2c3 U78 ( .A(n91), .B(mac_cnt[2]), .Y(n262) );
  and2c3 U79 ( .A(n262), .B(mac_cnt[0]), .Y(n160) );
  buf1a6 U80 ( .A(n160), .Y(n174) );
  and2c3 U81 ( .A(n262), .B(n268), .Y(n51) );
  buf1a6 U82 ( .A(n51), .Y(n169) );
  oa4f3 U83 ( .A(n174), .B(vn_in_4[4]), .C(n169), .D(vn_in_5[4]), .Y(n9) );
  or3d3 U84 ( .A(n11), .B(n10), .C(n9), .Y(n68) );
  inv1a3 U85 ( .A(mean[3]), .Y(n46) );
  buf1a6 U86 ( .A(n12), .Y(n252) );
  oa4f3 U87 ( .A(n173), .B(vn_in_2[3]), .C(n252), .D(vn_in_1[3]), .Y(n14) );
  oa4f3 U88 ( .A(n28), .B(vn_in_6[3]), .C(n264), .D(vn_in_3[3]), .Y(n13) );
  and2a3 U89 ( .A(n14), .B(n13), .Y(n17) );
  oa4f3 U90 ( .A(n211), .B(vn_in_0[3]), .C(n170), .D(vn_in_7[3]), .Y(n16) );
  oa4f3 U91 ( .A(n174), .B(vn_in_4[3]), .C(n169), .D(vn_in_5[3]), .Y(n15) );
  or3d3 U92 ( .A(n17), .B(n16), .C(n15), .Y(n45) );
  oa4f3 U93 ( .A(n173), .B(vn_in_2[2]), .C(n239), .D(vn_in_1[2]), .Y(n19) );
  oa4f3 U94 ( .A(n28), .B(vn_in_6[2]), .C(n264), .D(vn_in_3[2]), .Y(n18) );
  and2a3 U95 ( .A(n19), .B(n18), .Y(n22) );
  oa4f3 U96 ( .A(n211), .B(vn_in_0[2]), .C(n170), .D(vn_in_7[2]), .Y(n21) );
  oa4f3 U97 ( .A(n174), .B(vn_in_4[2]), .C(n169), .D(vn_in_5[2]), .Y(n20) );
  or3d3 U98 ( .A(n22), .B(n21), .C(n20), .Y(n44) );
  inv1a1 U99 ( .A(mean[1]), .Y(n79) );
  oa4f3 U100 ( .A(n173), .B(vn_in_2[1]), .C(n252), .D(vn_in_1[1]), .Y(n24) );
  oa4f3 U101 ( .A(n28), .B(vn_in_6[1]), .C(n264), .D(vn_in_3[1]), .Y(n23) );
  and2a3 U102 ( .A(n24), .B(n23), .Y(n27) );
  oa4f3 U103 ( .A(n211), .B(vn_in_0[1]), .C(n3), .D(vn_in_7[1]), .Y(n26) );
  oa4f3 U104 ( .A(n174), .B(vn_in_4[1]), .C(n169), .D(vn_in_5[1]), .Y(n25) );
  or3d3 U105 ( .A(n27), .B(n26), .C(n25), .Y(n78) );
  oa4f3 U106 ( .A(n28), .B(vn_in_6[0]), .C(n264), .D(vn_in_3[0]), .Y(n31) );
  or2c3 U107 ( .A(n239), .B(vn_in_1[0]), .Y(n30) );
  or2c3 U108 ( .A(n173), .B(vn_in_2[0]), .Y(n29) );
  and3a3 U109 ( .A(n31), .B(n30), .C(n29), .Y(n34) );
  oa4f3 U110 ( .A(n211), .B(vn_in_0[0]), .C(n170), .D(vn_in_7[0]), .Y(n33) );
  oa4f3 U111 ( .A(n174), .B(vn_in_4[0]), .C(n169), .D(vn_in_5[0]), .Y(n32) );
  or3d3 U112 ( .A(n34), .B(n33), .C(n32), .Y(n80) );
  inv1a3 U113 ( .A(n35), .Y(n77) );
  ao1d3 U114 ( .A(n36), .B(mean[2]), .C(n43), .Y(n39) );
  ao1d3 U115 ( .A(mean[3]), .B(n40), .C(n47), .Y(n42) );
  xor3b3 U116 ( .A(n68), .B(mean[4]), .C(n70), .Y(vin_minus_mean[4]) );
  xor3b3 U117 ( .A(n44), .B(mean[2]), .C(n43), .Y(vin_minus_mean[2]) );
  xor2b2 U118 ( .A(n46), .B(n45), .Y(n48) );
  xor2b2 U119 ( .A(n48), .B(n47), .Y(vin_minus_mean[3]) );
  oa4f3 U120 ( .A(n253), .B(vn_in_6[7]), .C(n264), .D(vn_in_3[7]), .Y(n49) );
  and2a3 U121 ( .A(n50), .B(n49), .Y(n54) );
  buf1a9 U122 ( .A(n211), .Y(n248) );
  oa4f3 U123 ( .A(n248), .B(vn_in_0[7]), .C(n3), .D(vn_in_7[7]), .Y(n53) );
  oa4f3 U124 ( .A(n2), .B(vn_in_4[7]), .C(n249), .D(vn_in_5[7]), .Y(n52) );
  inv1a1 U125 ( .A(mean[7]), .Y(n56) );
  xor2b2 U126 ( .A(n55), .B(n56), .Y(n73) );
  oa4f3 U127 ( .A(n1), .B(vn_in_2[6]), .C(n239), .D(vn_in_1[6]), .Y(n58) );
  oa4f3 U128 ( .A(n253), .B(vn_in_6[6]), .C(n264), .D(vn_in_3[6]), .Y(n57) );
  and2a3 U129 ( .A(n58), .B(n57), .Y(n61) );
  oa4f3 U130 ( .A(n248), .B(vn_in_0[6]), .C(n3), .D(vn_in_7[6]), .Y(n60) );
  oa4f3 U131 ( .A(n2), .B(vn_in_4[6]), .C(n249), .D(vn_in_5[6]), .Y(n59) );
  oa4f3 U132 ( .A(n173), .B(vn_in_2[5]), .C(n252), .D(vn_in_1[5]), .Y(n63) );
  oa4f3 U133 ( .A(n253), .B(vn_in_6[5]), .C(n264), .D(vn_in_3[5]), .Y(n62) );
  and2a3 U134 ( .A(n63), .B(n62), .Y(n66) );
  oa4f3 U135 ( .A(n248), .B(vn_in_0[5]), .C(n170), .D(vn_in_7[5]), .Y(n65) );
  oa4f3 U136 ( .A(n174), .B(vn_in_4[5]), .C(n169), .D(vn_in_5[5]), .Y(n64) );
  or2b2 U137 ( .B(n68), .A(mean[4]), .Y(n69) );
  xor2b2 U138 ( .A(n73), .B(n72), .Y(vin_minus_mean[7]) );
  fa1b3 U139 ( .CI(n74), .B(n75), .A(n76), .S(vin_minus_mean[5]), .CO(n82) );
  fa1a2 U140 ( .A(n79), .B(n78), .CI(n77), .CO(n43), .S(vin_minus_mean[1]) );
  xor2b2 U141 ( .A(n81), .B(n80), .Y(vin_minus_mean[0]) );
  fa2a3 U142 ( .A(n84), .B(n83), .CI(n82), .CO(n72), .S(vin_minus_mean[6]) );
  inv1a1 U143 ( .A(booth_sin_io_dout_vld), .Y(n85) );
  inv1a1 U144 ( .A(mac_en), .Y(n89) );
  inv1a1 U145 ( .A(vn_vld), .Y(n125) );
  inv1a1 U146 ( .A(n_zz_10[0]), .Y(n86) );
  inv1a1 U147 ( .A(psum2[0]), .Y(n95) );
  ao1f1 U148 ( .A(n86), .B(n95), .C(booth_sin_io_dout_vld), .Y(n88) );
  oa1f1 U149 ( .A(n110), .B(psum2[0]), .C(n_zz_10[0]), .Y(n87) );
  inv1a1 U150 ( .A(n329), .Y(n267) );
  or3d1 U151 ( .A(n91), .B(mac_en), .C(mac_cnt[0]), .Y(n90) );
  buf1a9 U152 ( .A(resetn), .Y(n328) );
  inv1a3 U153 ( .A(n_zz_13_1_), .Y(n286) );
  inv1a3 U154 ( .A(n_zz_13_0_), .Y(n283) );
  and2c3 U155 ( .A(n286), .B(n283), .Y(n92) );
  inv1a3 U156 ( .A(psum_out2[15]), .Y(n298) );
  oa1f9 U157 ( .A(n_zz_13_2_), .B(n92), .C(n298), .Y(n129) );
  inv1a1 U158 ( .A(n_zz_13_2_), .Y(n93) );
  or3d3 U159 ( .A(n93), .B(n283), .C(n286), .Y(n94) );
  or2c6 U160 ( .A(n94), .B(n298), .Y(n127) );
  ao1f2 U161 ( .A(n129), .B(n95), .C(n127), .Y(psum_out2[0]) );
  ao1f2 U162 ( .A(n129), .B(n277), .C(n127), .Y(psum_out2[1]) );
  inv1a1 U163 ( .A(psum2[2]), .Y(n96) );
  ao1f2 U164 ( .A(n129), .B(n96), .C(n127), .Y(psum_out2[2]) );
  inv1a1 U165 ( .A(psum2[4]), .Y(n97) );
  ao1f2 U166 ( .A(n129), .B(n97), .C(n127), .Y(psum_out2[4]) );
  inv1a1 U167 ( .A(psum2[5]), .Y(n98) );
  ao1f2 U168 ( .A(n129), .B(n98), .C(n127), .Y(psum_out2[5]) );
  inv1a1 U169 ( .A(psum2[6]), .Y(n99) );
  ao1f2 U170 ( .A(n129), .B(n99), .C(n127), .Y(psum_out2[6]) );
  inv1a1 U171 ( .A(psum2[7]), .Y(n100) );
  ao1f2 U172 ( .A(n129), .B(n100), .C(n127), .Y(psum_out2[7]) );
  inv1a1 U173 ( .A(psum2[8]), .Y(n101) );
  ao1f2 U174 ( .A(n129), .B(n101), .C(n127), .Y(psum_out2[8]) );
  inv1a1 U175 ( .A(psum2[9]), .Y(n102) );
  ao1f2 U176 ( .A(n129), .B(n102), .C(n127), .Y(psum_out2[9]) );
  inv1a1 U177 ( .A(psum2[10]), .Y(n103) );
  ao1f2 U178 ( .A(n129), .B(n103), .C(n127), .Y(psum_out2[10]) );
  inv1a1 U179 ( .A(psum2[11]), .Y(n104) );
  ao1f2 U180 ( .A(n129), .B(n104), .C(n127), .Y(psum_out2[11]) );
  inv1a1 U181 ( .A(psum2[12]), .Y(n105) );
  ao1f2 U182 ( .A(n129), .B(n105), .C(n127), .Y(psum_out2[12]) );
  inv1a1 U183 ( .A(psum2[13]), .Y(n106) );
  ao1f2 U184 ( .A(n129), .B(n106), .C(n127), .Y(psum_out2[13]) );
  inv1a1 U185 ( .A(psum2[14]), .Y(n107) );
  ao1f2 U186 ( .A(n129), .B(n107), .C(n127), .Y(psum_out2[14]) );
  inv1a1 U187 ( .A(n_zz_9[0]), .Y(n109) );
  inv1a1 U188 ( .A(psum1[0]), .Y(n259) );
  ao1f1 U189 ( .A(n109), .B(n259), .C(booth_sin_io_dout_vld), .Y(n112) );
  oa1f1 U190 ( .A(n110), .B(psum1[0]), .C(n_zz_9[0]), .Y(n111) );
  or2c1 U191 ( .A(n_zz_9[0]), .B(psum1[0]), .Y(n302) );
  mx2a1 U192 ( .D0(psum1[1]), .D1(n303), .S(n302), .Y(n113) );
  inv1a1 U193 ( .A(n_zz_9[1]), .Y(n301) );
  ao1f1 U194 ( .A(n113), .B(n301), .C(booth_sin_io_dout_vld), .Y(n115) );
  or2c1 U195 ( .A(n_zz_10[0]), .B(psum2[0]), .Y(n276) );
  mx2a1 U196 ( .D0(psum2[1]), .D1(n277), .S(n276), .Y(n116) );
  inv1a1 U197 ( .A(n_zz_10[1]), .Y(n275) );
  ao1f1 U198 ( .A(n116), .B(n275), .C(booth_sin_io_dout_vld), .Y(n118) );
  inv1a1 U199 ( .A(booth_sin_io_dout_vld), .Y(n119) );
  clk1b6 U200 ( .A(n120), .Y(n272) );
  clk1b6 U201 ( .A(n108), .Y(n271) );
  or2c3 U202 ( .A(n271), .B(n_zz_10[13]), .Y(n299) );
  ao1d2 U203 ( .A(n121), .B(n272), .C(n299), .Y(N172) );
  or2c3 U204 ( .A(n271), .B(n_zz_9[13]), .Y(n325) );
  ao1d2 U205 ( .A(n122), .B(n272), .C(n325), .Y(N153) );
  xor2b2 U206 ( .A(mac_cnt[2]), .B(valid_num[2]), .Y(n124) );
  xor2b2 U207 ( .A(mac_cnt[1]), .B(valid_num[1]), .Y(n123) );
  or3d1 U208 ( .A(n124), .B(booth_sin_io_dout_vld), .C(n123), .Y(n270) );
  ao1f1 U209 ( .A(n270), .B(mac_cnt[0]), .C(mac_en), .Y(n126) );
  oa1f3 U210 ( .A(n126), .B(n125), .C(n269), .Y(n191) );
  inv1a1 U211 ( .A(psum2[3]), .Y(n128) );
  ao1f2 U212 ( .A(n129), .B(n128), .C(n127), .Y(psum_out2[3]) );
  inv1a3 U213 ( .A(n_zz_11_1_), .Y(n312) );
  inv1a3 U214 ( .A(n_zz_11_0_), .Y(n309) );
  and2c3 U215 ( .A(n312), .B(n309), .Y(n130) );
  inv1a1 U216 ( .A(psum1[2]), .Y(n133) );
  inv1a1 U217 ( .A(n_zz_11_2_), .Y(n131) );
  or3d1 U218 ( .A(n131), .B(n309), .C(n312), .Y(n132) );
  or2c1 U219 ( .A(n132), .B(n324), .Y(n258) );
  buf1a6 U220 ( .A(n258), .Y(n260) );
  ao1f2 U221 ( .A(n257), .B(n133), .C(n260), .Y(psum_out1[2]) );
  inv1a1 U222 ( .A(psum1[3]), .Y(n134) );
  ao1f2 U223 ( .A(n257), .B(n134), .C(n260), .Y(psum_out1[3]) );
  inv1a1 U224 ( .A(psum1[4]), .Y(n135) );
  ao1f2 U225 ( .A(n257), .B(n135), .C(n260), .Y(psum_out1[4]) );
  inv1a1 U226 ( .A(psum1[5]), .Y(n136) );
  ao1f2 U227 ( .A(n257), .B(n136), .C(n260), .Y(psum_out1[5]) );
  inv1a1 U228 ( .A(psum1[6]), .Y(n137) );
  ao1f2 U229 ( .A(n257), .B(n137), .C(n260), .Y(psum_out1[6]) );
  inv1a1 U230 ( .A(psum1[7]), .Y(n138) );
  ao1f2 U231 ( .A(n257), .B(n138), .C(n260), .Y(psum_out1[7]) );
  inv1a1 U232 ( .A(psum1[8]), .Y(n139) );
  ao1f2 U233 ( .A(n257), .B(n139), .C(n260), .Y(psum_out1[8]) );
  inv1a1 U234 ( .A(psum1[9]), .Y(n140) );
  ao1f2 U235 ( .A(n257), .B(n140), .C(n260), .Y(psum_out1[9]) );
  inv1a1 U236 ( .A(psum1[10]), .Y(n141) );
  ao1f2 U237 ( .A(n257), .B(n141), .C(n260), .Y(psum_out1[10]) );
  inv1a1 U238 ( .A(psum1[11]), .Y(n142) );
  ao1f2 U239 ( .A(n257), .B(n142), .C(n260), .Y(psum_out1[11]) );
  inv1a1 U240 ( .A(psum1[12]), .Y(n143) );
  ao1f2 U241 ( .A(n257), .B(n143), .C(n260), .Y(psum_out1[12]) );
  inv1a1 U242 ( .A(psum1[13]), .Y(n144) );
  ao1f2 U243 ( .A(n257), .B(n144), .C(n260), .Y(psum_out1[13]) );
  inv1a1 U244 ( .A(psum1[14]), .Y(n145) );
  ao1f2 U245 ( .A(n257), .B(n145), .C(n260), .Y(psum_out1[14]) );
  clk1a3 U246 ( .A(n146), .Y(n188) );
  oa4f3 U247 ( .A(n211), .B(rg_sin_table_0[0]), .C(rg_sin_table_3[0]), .D(n188), .Y(n148) );
  oa4f3 U248 ( .A(n170), .B(rg_sin_table_7[0]), .C(rg_sin_table_5[0]), .D(n169), .Y(n147) );
  and2a3 U249 ( .A(n148), .B(n147), .Y(n151) );
  oa4f3 U250 ( .A(n239), .B(rg_sin_table_1[0]), .C(rg_sin_table_2[0]), .D(n173), .Y(n150) );
  oa4f3 U251 ( .A(n253), .B(rg_sin_table_6[0]), .C(rg_sin_table_4[0]), .D(n174), .Y(n149) );
  or3d6 U252 ( .A(n151), .B(n150), .C(n149), .Y(n192) );
  oa4f3 U253 ( .A(n211), .B(rg_sin_table_0[1]), .C(rg_sin_table_3[1]), .D(n188), .Y(n153) );
  oa4f3 U254 ( .A(n170), .B(rg_sin_table_7[1]), .C(rg_sin_table_5[1]), .D(n169), .Y(n152) );
  and2a3 U255 ( .A(n153), .B(n152), .Y(n156) );
  oa4f3 U256 ( .A(n252), .B(rg_sin_table_1[1]), .C(rg_sin_table_2[1]), .D(n173), .Y(n155) );
  oa4f3 U257 ( .A(n253), .B(rg_sin_table_6[1]), .C(rg_sin_table_4[1]), .D(n174), .Y(n154) );
  or3d3 U258 ( .A(n156), .B(n155), .C(n154), .Y(n193) );
  oa4f3 U259 ( .A(n3), .B(rg_sin_table_7[4]), .C(rg_sin_table_5[4]), .D(n249), 
        .Y(n157) );
  and2a3 U260 ( .A(n158), .B(n157), .Y(n163) );
  oa4f3 U261 ( .A(n252), .B(rg_sin_table_1[4]), .C(rg_sin_table_2[4]), .D(n1), 
        .Y(n162) );
  oa4f3 U262 ( .A(n253), .B(rg_sin_table_6[4]), .C(rg_sin_table_4[4]), .D(n2), 
        .Y(n161) );
  or3d3 U263 ( .A(n163), .B(n162), .C(n161), .Y(n196) );
  oa4f3 U264 ( .A(n170), .B(rg_sin_table_7[3]), .C(rg_sin_table_5[3]), .D(n169), .Y(n164) );
  and2a3 U265 ( .A(n165), .B(n164), .Y(n168) );
  oa4f3 U266 ( .A(n239), .B(rg_sin_table_1[3]), .C(rg_sin_table_2[3]), .D(n173), .Y(n167) );
  oa4f3 U267 ( .A(n253), .B(rg_sin_table_6[3]), .C(rg_sin_table_4[3]), .D(n174), .Y(n166) );
  or3d3 U268 ( .A(n168), .B(n167), .C(n166), .Y(n195) );
  oa4f3 U269 ( .A(n248), .B(rg_sin_table_0[2]), .C(rg_sin_table_3[2]), .D(n188), .Y(n172) );
  oa4f3 U270 ( .A(n170), .B(rg_sin_table_7[2]), .C(rg_sin_table_5[2]), .D(n169), .Y(n171) );
  and2a3 U271 ( .A(n172), .B(n171), .Y(n177) );
  oa4f3 U272 ( .A(n239), .B(rg_sin_table_1[2]), .C(rg_sin_table_2[2]), .D(n173), .Y(n176) );
  oa4f3 U273 ( .A(n253), .B(rg_sin_table_6[2]), .C(rg_sin_table_4[2]), .D(n174), .Y(n175) );
  or3d3 U274 ( .A(n177), .B(n176), .C(n175), .Y(n194) );
  oa4f3 U275 ( .A(n248), .B(rg_sin_table_0[6]), .C(rg_sin_table_3[6]), .D(n188), .Y(n179) );
  oa4f3 U276 ( .A(n3), .B(rg_sin_table_7[6]), .C(rg_sin_table_5[6]), .D(n249), 
        .Y(n178) );
  and2a3 U277 ( .A(n179), .B(n178), .Y(n182) );
  oa4f3 U278 ( .A(n239), .B(rg_sin_table_1[6]), .C(rg_sin_table_2[6]), .D(n1), 
        .Y(n181) );
  oa4f3 U279 ( .A(n253), .B(rg_sin_table_6[6]), .C(rg_sin_table_4[6]), .D(n2), 
        .Y(n180) );
  or3d3 U280 ( .A(n182), .B(n181), .C(n180), .Y(n198) );
  oa4f3 U281 ( .A(n3), .B(rg_sin_table_7[5]), .C(rg_sin_table_5[5]), .D(n249), 
        .Y(n183) );
  and2a3 U282 ( .A(n184), .B(n183), .Y(n187) );
  oa4f3 U283 ( .A(n252), .B(rg_sin_table_1[5]), .C(rg_sin_table_2[5]), .D(n1), 
        .Y(n186) );
  oa4f3 U284 ( .A(n253), .B(rg_sin_table_6[5]), .C(rg_sin_table_4[5]), .D(n2), 
        .Y(n185) );
  or3d3 U285 ( .A(n187), .B(n186), .C(n185), .Y(n197) );
  oa4f3 U286 ( .A(n211), .B(rg_sin_table_0[7]), .C(rg_sin_table_3[7]), .D(n188), .Y(n190) );
  oa4f3 U287 ( .A(n3), .B(rg_sin_table_7[7]), .C(rg_sin_table_5[7]), .D(n249), 
        .Y(n189) );
  and2a3 U288 ( .A(n190), .B(n189), .Y(n210) );
  oa4f3 U289 ( .A(n239), .B(rg_sin_table_1[7]), .C(rg_sin_table_2[7]), .D(n1), 
        .Y(n209) );
  oa4f3 U290 ( .A(n253), .B(rg_sin_table_6[7]), .C(rg_sin_table_4[7]), .D(n2), 
        .Y(n208) );
  or3d3 U291 ( .A(n210), .B(n209), .C(n208), .Y(n199) );
  oa4f3 U292 ( .A(n211), .B(rg_cos_table_0[0]), .C(rg_cos_table_3[0]), .D(n264), .Y(n213) );
  oa4f3 U293 ( .A(n3), .B(rg_cos_table_7[0]), .C(rg_cos_table_5[0]), .D(n249), 
        .Y(n212) );
  and2a3 U294 ( .A(n213), .B(n212), .Y(n216) );
  oa4f3 U295 ( .A(n252), .B(rg_cos_table_1[0]), .C(rg_cos_table_2[0]), .D(n1), 
        .Y(n215) );
  oa4f3 U296 ( .A(n253), .B(rg_cos_table_6[0]), .C(rg_cos_table_4[0]), .D(n2), 
        .Y(n214) );
  or3d6 U297 ( .A(n216), .B(n215), .C(n214), .Y(n200) );
  oa4f3 U298 ( .A(n248), .B(rg_cos_table_0[1]), .C(rg_cos_table_3[1]), .D(n264), .Y(n218) );
  oa4f3 U299 ( .A(n3), .B(rg_cos_table_7[1]), .C(rg_cos_table_5[1]), .D(n249), 
        .Y(n217) );
  and2a3 U300 ( .A(n218), .B(n217), .Y(n221) );
  oa4f3 U301 ( .A(n252), .B(rg_cos_table_1[1]), .C(rg_cos_table_2[1]), .D(n1), 
        .Y(n220) );
  oa4f3 U302 ( .A(n253), .B(rg_cos_table_6[1]), .C(rg_cos_table_4[1]), .D(n2), 
        .Y(n219) );
  or3d3 U303 ( .A(n221), .B(n220), .C(n219), .Y(n201) );
  oa4f3 U304 ( .A(n248), .B(rg_cos_table_0[4]), .C(rg_cos_table_3[4]), .D(n264), .Y(n223) );
  oa4f3 U305 ( .A(n3), .B(rg_cos_table_7[4]), .C(rg_cos_table_5[4]), .D(n249), 
        .Y(n222) );
  and2a3 U306 ( .A(n223), .B(n222), .Y(n226) );
  oa4f3 U307 ( .A(n239), .B(rg_cos_table_1[4]), .C(rg_cos_table_2[4]), .D(n1), 
        .Y(n225) );
  oa4f3 U308 ( .A(n253), .B(rg_cos_table_6[4]), .C(rg_cos_table_4[4]), .D(n2), 
        .Y(n224) );
  or3d3 U309 ( .A(n226), .B(n225), .C(n224), .Y(n204) );
  oa4f3 U310 ( .A(n248), .B(rg_cos_table_0[3]), .C(rg_cos_table_3[3]), .D(n264), .Y(n228) );
  oa4f3 U311 ( .A(n3), .B(rg_cos_table_7[3]), .C(rg_cos_table_5[3]), .D(n249), 
        .Y(n227) );
  and2a3 U312 ( .A(n228), .B(n227), .Y(n231) );
  oa4f3 U313 ( .A(n252), .B(rg_cos_table_1[3]), .C(rg_cos_table_2[3]), .D(n1), 
        .Y(n230) );
  oa4f3 U314 ( .A(n253), .B(rg_cos_table_6[3]), .C(rg_cos_table_4[3]), .D(n2), 
        .Y(n229) );
  or3d3 U315 ( .A(n231), .B(n230), .C(n229), .Y(n203) );
  oa4f3 U316 ( .A(n248), .B(rg_cos_table_0[2]), .C(rg_cos_table_3[2]), .D(n264), .Y(n233) );
  oa4f3 U317 ( .A(n3), .B(rg_cos_table_7[2]), .C(rg_cos_table_5[2]), .D(n249), 
        .Y(n232) );
  and2a3 U318 ( .A(n233), .B(n232), .Y(n236) );
  oa4f3 U319 ( .A(n239), .B(rg_cos_table_1[2]), .C(rg_cos_table_2[2]), .D(n1), 
        .Y(n235) );
  oa4f3 U320 ( .A(n253), .B(rg_cos_table_6[2]), .C(rg_cos_table_4[2]), .D(n2), 
        .Y(n234) );
  or3d3 U321 ( .A(n236), .B(n235), .C(n234), .Y(n202) );
  oa4f3 U322 ( .A(n248), .B(rg_cos_table_0[5]), .C(rg_cos_table_3[5]), .D(n264), .Y(n238) );
  oa4f3 U323 ( .A(n3), .B(rg_cos_table_7[5]), .C(rg_cos_table_5[5]), .D(n249), 
        .Y(n237) );
  and2a3 U324 ( .A(n238), .B(n237), .Y(n242) );
  oa4f3 U325 ( .A(n239), .B(rg_cos_table_1[5]), .C(rg_cos_table_2[5]), .D(n1), 
        .Y(n241) );
  oa4f3 U326 ( .A(n253), .B(rg_cos_table_6[5]), .C(rg_cos_table_4[5]), .D(n2), 
        .Y(n240) );
  or3d3 U327 ( .A(n242), .B(n241), .C(n240), .Y(n205) );
  oa4f3 U328 ( .A(n248), .B(rg_cos_table_0[6]), .C(rg_cos_table_3[6]), .D(n264), .Y(n244) );
  oa4f3 U329 ( .A(n3), .B(rg_cos_table_7[6]), .C(rg_cos_table_5[6]), .D(n249), 
        .Y(n243) );
  and2a3 U330 ( .A(n244), .B(n243), .Y(n247) );
  oa4f3 U331 ( .A(n252), .B(rg_cos_table_1[6]), .C(rg_cos_table_2[6]), .D(n1), 
        .Y(n246) );
  oa4f3 U332 ( .A(n253), .B(rg_cos_table_6[6]), .C(rg_cos_table_4[6]), .D(n2), 
        .Y(n245) );
  or3d3 U333 ( .A(n247), .B(n246), .C(n245), .Y(n206) );
  oa4f3 U334 ( .A(n248), .B(rg_cos_table_0[7]), .C(rg_cos_table_3[7]), .D(n264), .Y(n251) );
  oa4f3 U335 ( .A(n3), .B(rg_cos_table_7[7]), .C(rg_cos_table_5[7]), .D(n249), 
        .Y(n250) );
  and2a3 U336 ( .A(n251), .B(n250), .Y(n256) );
  oa4f3 U337 ( .A(n252), .B(rg_cos_table_1[7]), .C(rg_cos_table_2[7]), .D(n1), 
        .Y(n255) );
  oa4f3 U338 ( .A(n253), .B(rg_cos_table_6[7]), .C(rg_cos_table_4[7]), .D(n2), 
        .Y(n254) );
  or3d3 U339 ( .A(n256), .B(n255), .C(n254), .Y(n207) );
  ao1f2 U340 ( .A(n257), .B(n259), .C(n258), .Y(psum_out1[0]) );
  ao1f2 U341 ( .A(n257), .B(n303), .C(n260), .Y(psum_out1[1]) );
  inv1a1 U342 ( .A(n262), .Y(n263) );
  ao1f1 U343 ( .A(n267), .B(n266), .C(n265), .Y(N185) );
  and3d2 U344 ( .A(n270), .B(n269), .C(n268), .Y(N189) );
  clk1b6 U345 ( .A(n120), .Y(n274) );
  ao4a3 U346 ( .A(intadd_0_SUM_0_), .B(n274), .C(n271), .D(n_zz_9[2]), .Y(N142) );
  ao4a3 U347 ( .A(intadd_0_SUM_1_), .B(n274), .C(n271), .D(n_zz_9[3]), .Y(N143) );
  ao4a3 U348 ( .A(intadd_0_SUM_2_), .B(n274), .C(n271), .D(n_zz_9[4]), .Y(N144) );
  ao4a3 U349 ( .A(intadd_0_SUM_3_), .B(n274), .C(n271), .D(n_zz_9[5]), .Y(N145) );
  ao4a3 U350 ( .A(intadd_0_SUM_4_), .B(n274), .C(n271), .D(n_zz_9[6]), .Y(N146) );
  ao4a3 U351 ( .A(intadd_0_SUM_5_), .B(n274), .C(n271), .D(n_zz_9[7]), .Y(N147) );
  ao4a3 U352 ( .A(intadd_0_SUM_6_), .B(n274), .C(n271), .D(n_zz_9[8]), .Y(N148) );
  ao4a3 U353 ( .A(intadd_0_SUM_7_), .B(n274), .C(n271), .D(n_zz_9[9]), .Y(N149) );
  ao4a3 U354 ( .A(intadd_0_SUM_8_), .B(n274), .C(n271), .D(n_zz_9[10]), .Y(
        N150) );
  ao4a3 U355 ( .A(intadd_0_SUM_9_), .B(n274), .C(n271), .D(n_zz_9[11]), .Y(
        N151) );
  ao4a3 U356 ( .A(intadd_0_SUM_10_), .B(n272), .C(n271), .D(n_zz_9[12]), .Y(
        N152) );
  ao4a3 U357 ( .A(intadd_1_SUM_10_), .B(n272), .C(n271), .D(n_zz_10[12]), .Y(
        N171) );
  ao4a3 U358 ( .A(intadd_1_SUM_9_), .B(n272), .C(n271), .D(n_zz_10[11]), .Y(
        N170) );
  ao4a3 U359 ( .A(intadd_1_SUM_8_), .B(n272), .C(n273), .D(n_zz_10[10]), .Y(
        N169) );
  ao4a3 U360 ( .A(intadd_1_SUM_7_), .B(n272), .C(n273), .D(n_zz_10[9]), .Y(
        N168) );
  ao4a3 U361 ( .A(intadd_1_SUM_6_), .B(n272), .C(n273), .D(n_zz_10[8]), .Y(
        N167) );
  ao4a3 U362 ( .A(intadd_1_SUM_5_), .B(n272), .C(n273), .D(n_zz_10[7]), .Y(
        N166) );
  ao4a3 U363 ( .A(intadd_1_SUM_4_), .B(n272), .C(n273), .D(n_zz_10[6]), .Y(
        N165) );
  ao4a3 U364 ( .A(intadd_1_SUM_3_), .B(n274), .C(n273), .D(n_zz_10[5]), .Y(
        N164) );
  ao4a3 U365 ( .A(intadd_1_SUM_2_), .B(n272), .C(n273), .D(n_zz_10[4]), .Y(
        N163) );
  ao4a3 U366 ( .A(intadd_1_SUM_1_), .B(n274), .C(n273), .D(n_zz_10[3]), .Y(
        N162) );
  ao4a3 U367 ( .A(intadd_1_SUM_0_), .B(n274), .C(n273), .D(n_zz_10[2]), .Y(
        N161) );
  fac2a1 U368 ( .A(n277), .B(n276), .CI(n275), .CO(intadd_1_CI) );
  inv1a1 U369 ( .A(n278), .Y(n281) );
  and2c3 U370 ( .A(n120), .B(n_zz_10[13]), .Y(n295) );
  and2c3 U371 ( .A(n120), .B(n290), .Y(n296) );
  or2c1 U372 ( .A(n279), .B(n299), .Y(N173) );
  ao1d2 U373 ( .A(intadd_1_n1), .B(psum2[13]), .C(n290), .Y(n280) );
  ao1f2 U374 ( .A(n290), .B(n281), .C(n284), .Y(n285) );
  or2c1 U375 ( .A(n282), .B(n299), .Y(N174) );
  oa1f3 U376 ( .A(n290), .B(n284), .C(n283), .Y(n288) );
  oa1f3 U377 ( .A(n_zz_10[13]), .B(n285), .C(n288), .Y(n291) );
  mulpa1b1 U378 ( .X0(n_zz_13_1_), .X1(n286), .S(n291), .Z(n296), .M(n295), 
        .P(n287) );
  or2c1 U379 ( .A(n287), .B(n299), .Y(N175) );
  ao1f2 U380 ( .A(n_zz_10[13]), .B(n288), .C(n_zz_13_1_), .Y(n289) );
  ao1f2 U381 ( .A(n291), .B(n290), .C(n289), .Y(n294) );
  inv1a1 U382 ( .A(n294), .Y(n292) );
  mulpa1b1 U383 ( .X0(n292), .X1(n294), .S(n_zz_13_2_), .Z(n296), .M(n295), 
        .P(n293) );
  or2c1 U384 ( .A(n293), .B(n299), .Y(N176) );
  fac2a1 U385 ( .A(n_zz_10[13]), .B(n_zz_13_2_), .CI(n294), .CO(n297) );
  mulpa1b1 U386 ( .X0(psum_out2[15]), .X1(n298), .S(n297), .Z(n296), .M(n295), 
        .P(n300) );
  or2c1 U387 ( .A(n300), .B(n299), .Y(N177) );
  fac2a1 U388 ( .A(n303), .B(n302), .CI(n301), .CO(intadd_0_CI) );
  inv1a1 U389 ( .A(n304), .Y(n307) );
  and2c3 U390 ( .A(n120), .B(n_zz_9[13]), .Y(n321) );
  and2c3 U391 ( .A(n120), .B(n316), .Y(n322) );
  mulpa1b1 U392 ( .X0(n304), .X1(n307), .S(psum1[14]), .Z(n321), .M(n322), .P(
        n305) );
  or2c1 U393 ( .A(n305), .B(n325), .Y(N154) );
  ao1d2 U394 ( .A(intadd_0_n1), .B(psum1[13]), .C(n316), .Y(n306) );
  ao1f2 U395 ( .A(n316), .B(n307), .C(n310), .Y(n311) );
  or2c1 U396 ( .A(n308), .B(n325), .Y(N155) );
  oa1f3 U397 ( .A(n316), .B(n310), .C(n309), .Y(n314) );
  oa1f3 U398 ( .A(n_zz_9[13]), .B(n311), .C(n314), .Y(n317) );
  mulpa1b1 U399 ( .X0(n_zz_11_1_), .X1(n312), .S(n317), .Z(n322), .M(n321), 
        .P(n313) );
  or2c1 U400 ( .A(n313), .B(n325), .Y(N156) );
  ao1f2 U401 ( .A(n_zz_9[13]), .B(n314), .C(n_zz_11_1_), .Y(n315) );
  ao1f2 U402 ( .A(n317), .B(n316), .C(n315), .Y(n320) );
  inv1a1 U403 ( .A(n320), .Y(n318) );
  mulpa1b1 U404 ( .X0(n318), .X1(n320), .S(n_zz_11_2_), .Z(n322), .M(n321), 
        .P(n319) );
  or2c1 U405 ( .A(n319), .B(n325), .Y(N157) );
  fac2a1 U406 ( .A(n_zz_9[13]), .B(n_zz_11_2_), .CI(n320), .CO(n323) );
  or2c1 U407 ( .A(n326), .B(n325), .Y(N158) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cordic_int_0 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3296;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3296) );
  and2a3 main_gate ( .A(net3296), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cordic_int_2 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3296;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3296) );
  and2a3 main_gate ( .A(net3296), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cordic_int_1 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3296;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3296) );
  and2a3 main_gate ( .A(net3296), .B(CLK), .Y(ENCLK) );
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
         N354, N355, net3302, net3307, net3312, n195, n197, n198, n199, n200,
         n201, n202, n203, n205, DP_OP_39J1_122_1632_n19,
         DP_OP_39J1_122_1632_n18, DP_OP_39J1_122_1632_n17,
         DP_OP_39J1_122_1632_n16, DP_OP_39J1_122_1632_n15,
         DP_OP_39J1_122_1632_n14, DP_OP_39J1_122_1632_n9,
         DP_OP_39J1_122_1632_n8, DP_OP_39J1_122_1632_n7,
         DP_OP_39J1_122_1632_n6, DP_OP_39J1_122_1632_n5,
         DP_OP_39J1_122_1632_n4, DP_OP_39J1_122_1632_n3,
         DP_OP_39J1_122_1632_n2, n1, n2, n3, n4, n5, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n196, n204,
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
         n679, n680, n681, n682, n683, n684, n685;
  wire   [1:0] n_zz_16;
  wire   [6:0] res_rg;
  wire   [2:0] cal_cnt;
  wire   [17:0] xn;
  wire   [17:0] yn;

  SNPS_CLOCK_GATE_HIGH_cordic_int_0 clk_gate_yn_reg ( .CLK(clk), .EN(N354), 
        .ENCLK(net3302) );
  SNPS_CLOCK_GATE_HIGH_cordic_int_2 clk_gate_res_rg_reg ( .CLK(clk), .EN(N355), 
        .ENCLK(net3307) );
  SNPS_CLOCK_GATE_HIGH_cordic_int_1 clk_gate_res_out_reg ( .CLK(clk), .EN(
        cal_finish_delay), .ENCLK(net3312) );
  fdf2a3 res_rg_reg_0_ ( .D(N324), .CLK(net3307), .CLR(n683), .Q(res_rg[0]) );
  fdf2a3 res_rg_reg_1_ ( .D(n678), .CLK(net3307), .CLR(n680), .Q(res_rg[1]) );
  fdf2a3 res_rg_reg_2_ ( .D(n677), .CLK(net3307), .CLR(n682), .Q(res_rg[2]) );
  fdf2a3 res_rg_reg_3_ ( .D(n676), .CLK(net3307), .CLR(n681), .Q(res_rg[3]) );
  fdf2a3 res_rg_reg_4_ ( .D(n675), .CLK(net3307), .CLR(n682), .Q(res_rg[4]) );
  fdf2a3 res_rg_reg_5_ ( .D(n674), .CLK(net3307), .CLR(n683), .Q(res_rg[5]) );
  fdf2a3 res_rg_reg_6_ ( .D(N330), .CLK(net3307), .CLR(n682), .Q(res_rg[6]) );
  fdf2a3 res_rg_reg_7_ ( .D(N331), .CLK(net3307), .CLR(n681), .Q(n_zz_16[0])
         );
  fdf2a3 res_rg_reg_8_ ( .D(N332), .CLK(net3307), .CLR(n680), .Q(n_zz_16[1])
         );
  fdf2a3 res_out_reg_7_ ( .D(n_zz_16[1]), .CLK(net3312), .CLR(n683), .Q(res[7]) );
  fdf2a3 res_out_reg_0_ ( .D(n203), .CLK(net3312), .CLR(n682), .Q(res[0]) );
  fdf2a3 res_out_reg_1_ ( .D(n202), .CLK(net3312), .CLR(n683), .Q(res[1]) );
  fdf2a3 res_out_reg_2_ ( .D(n201), .CLK(net3312), .CLR(n681), .Q(res[2]) );
  fdf2a3 res_out_reg_3_ ( .D(n200), .CLK(net3312), .CLR(n683), .Q(res[3]) );
  fdf2a3 res_out_reg_4_ ( .D(n199), .CLK(net3312), .CLR(n683), .Q(res[4]) );
  fdf2a3 res_out_reg_5_ ( .D(n198), .CLK(net3312), .CLR(n683), .Q(res[5]) );
  fdf2a3 res_out_reg_6_ ( .D(n197), .CLK(net3312), .CLR(n683), .Q(res[6]) );
  fdf2a3 yn_reg_0_ ( .D(N335), .CLK(net3302), .CLR(n679), .Q(yn[0]) );
  fdf2a3 yn_reg_1_ ( .D(N336), .CLK(net3302), .CLR(n679), .Q(yn[1]) );
  fdf2a3 yn_reg_2_ ( .D(N337), .CLK(net3302), .CLR(n680), .Q(yn[2]) );
  fdf2a3 yn_reg_3_ ( .D(N338), .CLK(net3302), .CLR(n682), .Q(yn[3]) );
  fdf2a3 yn_reg_4_ ( .D(N339), .CLK(net3302), .CLR(n679), .Q(yn[4]) );
  fdf2a3 yn_reg_5_ ( .D(N340), .CLK(net3302), .CLR(n679), .Q(yn[5]) );
  fdf2a3 yn_reg_6_ ( .D(N341), .CLK(net3302), .CLR(n679), .Q(yn[6]) );
  fdf2a3 yn_reg_7_ ( .D(N342), .CLK(net3302), .CLR(n679), .Q(yn[7]) );
  fdf2a3 yn_reg_8_ ( .D(N343), .CLK(net3302), .CLR(n679), .Q(yn[8]) );
  fdf2a3 yn_reg_9_ ( .D(N344), .CLK(net3302), .CLR(n679), .Q(yn[9]) );
  fdf2a3 yn_reg_10_ ( .D(N345), .CLK(net3302), .CLR(n679), .Q(yn[10]) );
  fdf2a3 yn_reg_11_ ( .D(N346), .CLK(net3302), .CLR(n682), .Q(yn[11]) );
  fdf2a3 yn_reg_12_ ( .D(N347), .CLK(net3302), .CLR(n682), .Q(yn[12]) );
  fdf2a3 yn_reg_13_ ( .D(N348), .CLK(net3302), .CLR(n681), .Q(yn[13]) );
  fdf2a3 yn_reg_14_ ( .D(N349), .CLK(net3302), .CLR(n680), .Q(yn[14]) );
  fdf2a3 yn_reg_15_ ( .D(N350), .CLK(net3302), .CLR(n682), .Q(yn[15]) );
  fdf2a3 yn_reg_16_ ( .D(N351), .CLK(net3302), .CLR(n681), .Q(yn[16]) );
  fdf2a3 yn_reg_17_ ( .D(N352), .CLK(net3302), .CLR(n680), .Q(yn[17]) );
  fdf2a3 xn_reg_0_ ( .D(N305), .CLK(net3302), .CLR(n680), .Q(xn[0]) );
  fdf2a3 xn_reg_1_ ( .D(N306), .CLK(net3302), .CLR(n682), .Q(xn[1]) );
  fdf2a3 xn_reg_2_ ( .D(N307), .CLK(net3302), .CLR(n681), .Q(xn[2]) );
  fdf2a3 xn_reg_3_ ( .D(N308), .CLK(net3302), .CLR(n680), .Q(xn[3]) );
  fdf2a3 xn_reg_4_ ( .D(N309), .CLK(net3302), .CLR(n681), .Q(xn[4]) );
  fdf2a3 xn_reg_5_ ( .D(N310), .CLK(net3302), .CLR(n680), .Q(xn[5]) );
  fdf2a3 xn_reg_6_ ( .D(N311), .CLK(net3302), .CLR(n681), .Q(xn[6]) );
  fdf2a3 xn_reg_7_ ( .D(N312), .CLK(net3302), .CLR(n682), .Q(xn[7]) );
  fdf2a3 xn_reg_8_ ( .D(N313), .CLK(net3302), .CLR(n680), .Q(xn[8]) );
  fdf2a3 xn_reg_9_ ( .D(N314), .CLK(net3302), .CLR(n682), .Q(xn[9]) );
  fdf2a3 xn_reg_10_ ( .D(N315), .CLK(net3302), .CLR(n680), .Q(xn[10]) );
  fdf2a3 xn_reg_11_ ( .D(N316), .CLK(net3302), .CLR(n681), .Q(xn[11]) );
  fdf2a3 xn_reg_12_ ( .D(N317), .CLK(net3302), .CLR(n680), .Q(xn[12]) );
  fdf2a3 xn_reg_13_ ( .D(N318), .CLK(net3302), .CLR(n682), .Q(xn[13]) );
  fdf2a3 xn_reg_14_ ( .D(N319), .CLK(net3302), .CLR(n682), .Q(xn[14]) );
  fdf2a3 xn_reg_15_ ( .D(n673), .CLK(net3302), .CLR(n681), .Q(xn[15]) );
  fdf2a3 xn_reg_17_ ( .D(N322), .CLK(net3302), .CLR(n680), .Q(xn[17]) );
  fdf2a3 xn_reg_18_ ( .D(N323), .CLK(net3302), .CLR(n682), .Q(
        xn_rightshift_18_) );
  fdef2a3 cal_finish_delay_reg ( .D(n205), .E(en), .CLK(clk), .CLR(n679), .Q(
        cal_finish_delay) );
  fdef2a3 finish_reg ( .D(cal_finish_delay), .E(en), .CLK(clk), .CLR(n679), 
        .Q(res_vld) );
  fdf2a3 xn_reg_16_ ( .D(N321), .CLK(net3302), .CLR(n681), .Q(xn[16]) );
  fdf2a3 cal_cnt_reg_0_ ( .D(N302), .CLK(net3307), .CLR(n679), .Q(cal_cnt[0])
         );
  fdf2a3 cal_en_regNext_reg ( .D(cal_en), .CLK(clk), .CLR(n682), .Q(
        cal_en_regNext) );
  fdef3a6 nozero_flg_reg ( .D(n685), .E(n684), .CLK(net3307), .PRE(n681), .Q(
        nozero_flg) );
  fdf2a3 cal_en_reg ( .D(n195), .CLK(clk), .CLR(n683), .Q(cal_en) );
  fdf2a9 cal_cnt_reg_2_ ( .D(N304), .CLK(net3307), .CLR(n683), .Q(cal_cnt[2])
         );
  fdf2a6 cal_cnt_reg_1_ ( .D(N303), .CLK(net3307), .CLR(n683), .Q(cal_cnt[1])
         );
  fa1a2 DP_OP_39J1_122_1632_U10 ( .A(N158), .B(res_rg[0]), .CI(
        DP_OP_39J1_122_1632_n19), .CO(DP_OP_39J1_122_1632_n9), .S(N292) );
  fa1a2 DP_OP_39J1_122_1632_U9 ( .A(res_rg[1]), .B(DP_OP_39J1_122_1632_n18), 
        .CI(DP_OP_39J1_122_1632_n9), .CO(DP_OP_39J1_122_1632_n8), .S(N293) );
  fa1a2 DP_OP_39J1_122_1632_U8 ( .A(res_rg[2]), .B(DP_OP_39J1_122_1632_n17), 
        .CI(DP_OP_39J1_122_1632_n8), .CO(DP_OP_39J1_122_1632_n7), .S(N294) );
  fa1a2 DP_OP_39J1_122_1632_U7 ( .A(res_rg[3]), .B(DP_OP_39J1_122_1632_n16), 
        .CI(DP_OP_39J1_122_1632_n7), .CO(DP_OP_39J1_122_1632_n6), .S(N295) );
  fa1a2 DP_OP_39J1_122_1632_U6 ( .A(res_rg[4]), .B(DP_OP_39J1_122_1632_n15), 
        .CI(DP_OP_39J1_122_1632_n6), .CO(DP_OP_39J1_122_1632_n5), .S(N296) );
  fa1a2 DP_OP_39J1_122_1632_U5 ( .A(res_rg[5]), .B(DP_OP_39J1_122_1632_n14), 
        .CI(DP_OP_39J1_122_1632_n5), .CO(DP_OP_39J1_122_1632_n4), .S(N297) );
  fa1a2 DP_OP_39J1_122_1632_U4 ( .A(res_rg[6]), .B(N158), .CI(
        DP_OP_39J1_122_1632_n4), .CO(DP_OP_39J1_122_1632_n3), .S(N298) );
  fa1a2 DP_OP_39J1_122_1632_U3 ( .A(n_zz_16[0]), .B(N158), .CI(
        DP_OP_39J1_122_1632_n3), .CO(DP_OP_39J1_122_1632_n2), .S(N299) );
  fdf2a9 yn_reg_18_ ( .D(N353), .CLK(net3302), .CLR(n682), .Q(N158) );
  and2c1 U3 ( .A(n264), .B(n58), .Y(n43) );
  inv1a1 U4 ( .A(n553), .Y(n180) );
  and2c1 U5 ( .A(n69), .B(yn[17]), .Y(n18) );
  ao1d3 U6 ( .A(n371), .B(n370), .C(n512), .Y(n373) );
  or2c3 U7 ( .A(n365), .B(n364), .Y(n487) );
  inv1a3 U8 ( .A(n669), .Y(n665) );
  inv1a3 U9 ( .A(n353), .Y(n669) );
  or2c1 U10 ( .A(N158), .B(n211), .Y(n212) );
  inv1a3 U11 ( .A(n5), .Y(n2) );
  clk1b6 U12 ( .A(n77), .Y(n659) );
  inv1a3 U13 ( .A(cal_cnt[0]), .Y(n48) );
  inv1a1 U14 ( .A(n579), .Y(n379) );
  ao2i1 U15 ( .A(n316), .B(n22), .C(n329), .D(n315), .Y(n317) );
  or2c1 U16 ( .A(n456), .B(n453), .Y(n166) );
  inv1a1 U17 ( .A(n638), .Y(n387) );
  or2c1 U18 ( .A(n510), .B(n511), .Y(n372) );
  or2c1 U19 ( .A(n473), .B(n474), .Y(n364) );
  buf1a9 U20 ( .A(n2), .Y(n296) );
  clk1b6 U21 ( .A(n2), .Y(n344) );
  inv1a3 U22 ( .A(cal_cnt[2]), .Y(n356) );
  clk1b6 U23 ( .A(cal_cnt[2]), .Y(n22) );
  oa4f3 U24 ( .A(n409), .B(xn[0]), .C(n353), .D(xn[1]), .Y(n354) );
  or2c3 U25 ( .A(n369), .B(n368), .Y(n498) );
  and2a3 U26 ( .A(N297), .B(n5), .Y(n674) );
  inv1a1 U27 ( .A(n516), .Y(n172) );
  inv1a1 U28 ( .A(n585), .Y(n184) );
  or2c1 U29 ( .A(n585), .B(n586), .Y(n185) );
  or2c1 U30 ( .A(n527), .B(n528), .Y(n177) );
  inv1a1 U31 ( .A(n527), .Y(n176) );
  or2c1 U32 ( .A(n605), .B(n606), .Y(n384) );
  inv1a1 U33 ( .A(n486), .Y(n367) );
  inv1a1 U34 ( .A(n605), .Y(n383) );
  or2c1 U35 ( .A(n553), .B(n554), .Y(n181) );
  or2c1 U36 ( .A(n491), .B(n492), .Y(n169) );
  inv1a1 U37 ( .A(n510), .Y(n371) );
  inv1a1 U38 ( .A(n491), .Y(n168) );
  inv1a1 U39 ( .A(n634), .Y(n192) );
  or2c1 U40 ( .A(n634), .B(n635), .Y(n193) );
  or2c1 U41 ( .A(n579), .B(n580), .Y(n380) );
  inv1a1 U42 ( .A(n534), .Y(n375) );
  or2c1 U43 ( .A(n612), .B(n613), .Y(n189) );
  or2c1 U44 ( .A(n534), .B(n535), .Y(n376) );
  inv1a1 U45 ( .A(n612), .Y(n188) );
  or2c1 U46 ( .A(n638), .B(n639), .Y(n388) );
  or2c1 U47 ( .A(n649), .B(n646), .Y(n390) );
  inv1a1 U48 ( .A(n473), .Y(n363) );
  inv1a1 U49 ( .A(n606), .Y(n382) );
  inv1a1 U50 ( .A(n580), .Y(n378) );
  inv1a1 U51 ( .A(n639), .Y(n386) );
  inv1a1 U52 ( .A(n586), .Y(n183) );
  oa1f2 U53 ( .A(n132), .B(n8), .C(n131), .Y(n133) );
  inv1a1 U54 ( .A(n474), .Y(n362) );
  buf1a9 U55 ( .A(n161), .Y(n1) );
  ao2i1 U56 ( .A(n73), .B(n22), .C(n329), .D(n72), .Y(n74) );
  ao2i3 U57 ( .A(n130), .B(n153), .C(n129), .D(n128), .Y(n131) );
  inv1a1 U58 ( .A(n535), .Y(n374) );
  inv1a1 U59 ( .A(n511), .Y(n370) );
  oa1f2 U60 ( .A(n138), .B(n8), .C(n137), .Y(n139) );
  inv1a1 U61 ( .A(n554), .Y(n179) );
  inv1a1 U62 ( .A(n528), .Y(n175) );
  inv1a1 U63 ( .A(n613), .Y(n187) );
  ao2i2 U64 ( .A(n333), .B(n101), .C(n332), .D(n331), .Y(n334) );
  oa1f2 U65 ( .A(n79), .B(n78), .C(n22), .Y(n84) );
  ao2i3 U66 ( .A(yn[10]), .B(n69), .C(n82), .D(n81), .Y(n122) );
  oa1f1 U67 ( .A(n103), .B(n102), .C(n22), .Y(n106) );
  ao4f3 U68 ( .A(n274), .B(n22), .C(n668), .D(n299), .Y(n275) );
  ao4f1 U69 ( .A(n668), .B(n57), .C(n239), .D(n104), .Y(n65) );
  oa1f1 U70 ( .A(n37), .B(xn[11]), .C(n300), .Y(n301) );
  oa4f1 U71 ( .A(n666), .B(yn[12]), .C(n667), .D(yn[13]), .Y(n62) );
  ao4f2 U72 ( .A(n3), .B(n298), .C(n264), .D(n299), .Y(n265) );
  oa1f1 U73 ( .A(n37), .B(xn[12]), .C(n288), .Y(n289) );
  oa1f1 U74 ( .A(n37), .B(xn[13]), .C(n282), .Y(n283) );
  oa1f1 U75 ( .A(n37), .B(yn[17]), .C(n38), .Y(n41) );
  oa4f1 U76 ( .A(n261), .B(yn[12]), .C(n307), .D(yn[16]), .Y(n39) );
  oa2i2 U77 ( .A(n290), .B(n58), .C(n18), .D(n17), .Y(n53) );
  ao4f2 U78 ( .A(n3), .B(n299), .C(n264), .D(n287), .Y(n256) );
  oa4f1 U79 ( .A(n261), .B(xn[11]), .C(n307), .D(xn[15]), .Y(n254) );
  clk1b6 U80 ( .A(n4), .Y(n428) );
  inv1a3 U81 ( .A(n356), .Y(n8) );
  inv1a3 U82 ( .A(xn[9]), .Y(n302) );
  inv1a3 U83 ( .A(xn[15]), .Y(n281) );
  inv1a1 U84 ( .A(xn[17]), .Y(n253) );
  clk1b6 U85 ( .A(cal_cnt[2]), .Y(n101) );
  inv1a3 U86 ( .A(yn[3]), .Y(n153) );
  or2b2 U87 ( .B(n658), .A(n657), .Y(N352) );
  xor2a2 U88 ( .A(n393), .B(n392), .Y(n394) );
  or2b2 U89 ( .B(n650), .A(n657), .Y(N351) );
  or2b2 U90 ( .B(n642), .A(n657), .Y(N350) );
  xor2a2 U91 ( .A(n615), .B(n614), .Y(n616) );
  ao1d3 U92 ( .A(n188), .B(n187), .C(n614), .Y(n190) );
  xor2a2 U93 ( .A(n608), .B(n607), .Y(n609) );
  xor2a2 U94 ( .A(n588), .B(n587), .Y(n589) );
  xor2a2 U95 ( .A(n556), .B(n555), .Y(n557) );
  xor2a2 U96 ( .A(n582), .B(n581), .Y(n583) );
  fa1a3 U97 ( .A(n542), .B(n541), .CI(n540), .CO(n555), .S(n543) );
  or2c3 U98 ( .A(n178), .B(n177), .Y(n540) );
  xor2a2 U99 ( .A(n530), .B(n529), .Y(n531) );
  or2c3 U100 ( .A(n174), .B(n173), .Y(n529) );
  xor2a2 U101 ( .A(n537), .B(n536), .Y(n538) );
  ao1d2 U102 ( .A(n172), .B(n171), .C(n517), .Y(n174) );
  xor2a2 U103 ( .A(n518), .B(n517), .Y(n519) );
  fa1a3 U104 ( .A(n97), .B(n505), .CI(n504), .CO(n517), .S(n506) );
  or2c3 U105 ( .A(n170), .B(n169), .Y(n504) );
  xor2a2 U106 ( .A(n513), .B(n512), .Y(n514) );
  ao1e3 U107 ( .B(n168), .A(n492), .C(n493), .Y(n170) );
  xor2a2 U108 ( .A(n494), .B(n493), .Y(n495) );
  xor2a2 U109 ( .A(n488), .B(n487), .Y(n489) );
  ao1d2 U110 ( .A(n363), .B(n362), .C(n475), .Y(n365) );
  ao1f2 U111 ( .A(n456), .B(n453), .C(n454), .Y(n167) );
  xor2a2 U112 ( .A(n476), .B(n475), .Y(n477) );
  xor2a2 U113 ( .A(n443), .B(n442), .Y(n444) );
  ao4f2 U114 ( .A(n533), .B(n345), .C(n2), .D(n285), .Y(n286) );
  ao2i1 U115 ( .A(n299), .B(n669), .C(n247), .D(n246), .Y(n248) );
  inv1a1 U116 ( .A(n646), .Y(n648) );
  ao2i1 U117 ( .A(n53), .B(n22), .C(n344), .D(n52), .Y(n54) );
  oa1f3 U118 ( .A(n316), .B(n22), .C(n275), .Y(n276) );
  ao1f1 U119 ( .A(n59), .B(n669), .C(n14), .Y(n15) );
  oa1f3 U120 ( .A(n326), .B(n22), .C(n284), .Y(n285) );
  ao2i1 U121 ( .A(n668), .B(n287), .C(n263), .D(n262), .Y(n266) );
  ao4f2 U122 ( .A(n283), .B(n22), .C(n668), .D(n298), .Y(n284) );
  ao1f1 U123 ( .A(n669), .B(n298), .C(n254), .Y(n255) );
  ao2i1 U124 ( .A(n290), .B(n243), .C(n234), .D(n233), .Y(n235) );
  oa1f3 U125 ( .A(n665), .B(xn[17]), .C(n221), .Y(n222) );
  inv1a1 U126 ( .A(n635), .Y(n191) );
  ao2i1 U127 ( .A(n41), .B(n22), .C(n40), .D(n39), .Y(n42) );
  ao2i2 U128 ( .A(n145), .B(n8), .C(n113), .D(n329), .Y(n114) );
  and2a3 U129 ( .A(n340), .B(xn[6]), .Y(n97) );
  and2a3 U130 ( .A(n340), .B(xn[3]), .Y(n127) );
  ao2i2 U131 ( .A(n326), .B(n101), .C(n340), .D(n325), .Y(n327) );
  and2a3 U132 ( .A(n340), .B(yn[3]), .Y(n330) );
  and2a3 U133 ( .A(n340), .B(xn[7]), .Y(n96) );
  and2a3 U134 ( .A(n344), .B(yn[8]), .Y(n278) );
  and2a3 U135 ( .A(n344), .B(yn[5]), .Y(n319) );
  ao2i1 U136 ( .A(n253), .B(n69), .C(n252), .D(n251), .Y(n257) );
  ao2i2 U137 ( .A(n239), .B(n281), .C(n243), .D(n252), .Y(n225) );
  ao2i1 U138 ( .A(n239), .B(n287), .C(n243), .D(n228), .Y(n230) );
  ao2i2 U139 ( .A(n73), .B(cal_cnt[2]), .C(n33), .D(n340), .Y(n34) );
  and2c2 U140 ( .A(n661), .B(n660), .Y(N304) );
  ao2i2 U141 ( .A(n669), .B(n153), .C(n136), .D(n135), .Y(n137) );
  oa1f3 U142 ( .A(cal_cnt[2]), .B(n659), .C(n667), .Y(n661) );
  inv1a9 U143 ( .A(n157), .Y(n611) );
  ao1f1 U144 ( .A(n63), .B(n22), .C(n62), .Y(n64) );
  oa4f2 U145 ( .A(n37), .B(n90), .C(n400), .D(n80), .Y(n81) );
  ao4f2 U146 ( .A(n659), .B(n299), .C(n69), .D(n298), .Y(n300) );
  ao2i2 U147 ( .A(yn[11]), .B(n69), .C(n71), .D(n70), .Y(n112) );
  ao2i2 U148 ( .A(n264), .B(n153), .C(n152), .D(n151), .Y(n154) );
  ao4f2 U149 ( .A(n324), .B(xn[8]), .C(xn[10]), .D(n69), .Y(n279) );
  ao2i2 U150 ( .A(n659), .B(xn[10]), .C(n292), .D(n291), .Y(n333) );
  oa4f2 U151 ( .A(n666), .B(xn[5]), .C(n667), .D(xn[6]), .Y(n332) );
  ao4f2 U152 ( .A(n659), .B(n287), .C(n69), .D(n299), .Y(n288) );
  oa4f2 U153 ( .A(n666), .B(yn[5]), .C(n667), .D(yn[6]), .Y(n129) );
  and2a1 U154 ( .A(n5), .B(xn[0]), .Y(n149) );
  ao1f1 U155 ( .A(rg_cordic_iternum[1]), .B(n402), .C(n401), .Y(n404) );
  oa4f2 U156 ( .A(n666), .B(xn[3]), .C(n352), .D(xn[4]), .Y(n347) );
  and2a1 U157 ( .A(n5), .B(yn[0]), .Y(n351) );
  buf1a6 U158 ( .A(n311), .Y(n37) );
  ao4f2 U159 ( .A(n659), .B(yn[9]), .C(yn[7]), .D(n402), .Y(n98) );
  and2c2 U160 ( .A(n660), .B(n410), .Y(N302) );
  oa4f2 U161 ( .A(n321), .B(n49), .C(n290), .D(n80), .Y(n50) );
  inv1a3 U162 ( .A(n666), .Y(n3) );
  buf1a6 U163 ( .A(n117), .Y(n69) );
  ao4f2 U164 ( .A(n659), .B(yn[10]), .C(yn[8]), .D(n402), .Y(n88) );
  ao4e2 U165 ( .B(n118), .A(n117), .C(n324), .D(yn[4]), .Y(n119) );
  inv1a3 U166 ( .A(n48), .Y(n410) );
  buf1a6 U167 ( .A(n427), .Y(n4) );
  or2c6 U168 ( .A(n48), .B(n101), .Y(n671) );
  inv1a9 U169 ( .A(n660), .Y(n5) );
  inv1a3 U170 ( .A(xn[12]), .Y(n298) );
  inv1a2 U171 ( .A(xn[7]), .Y(n312) );
  inv1a2 U172 ( .A(yn[9]), .Y(n90) );
  oa2i3 U173 ( .A(n290), .B(n121), .C(n111), .D(n110), .Y(n145) );
  ao4e1 U174 ( .B(n311), .A(yn[6]), .C(n659), .D(yn[8]), .Y(n110) );
  oa1f1 U175 ( .A(n662), .B(cal_en), .C(vld), .Y(n664) );
  ao1f1 U176 ( .A(n32), .B(cal_cnt[2]), .C(n24), .Y(n12) );
  buf1a9 U177 ( .A(n683), .Y(n679) );
  buf1a9 U178 ( .A(n683), .Y(n681) );
  buf1a9 U179 ( .A(n683), .Y(n680) );
  and2c15 U180 ( .A(n671), .B(n242), .Y(n666) );
  oa4f1 U181 ( .A(n321), .B(n302), .C(n290), .D(n312), .Y(n291) );
  oa4f1 U182 ( .A(n321), .B(yn[14]), .C(n400), .D(yn[15]), .Y(n79) );
  oa4f1 U183 ( .A(n321), .B(yn[12]), .C(n400), .D(yn[13]), .Y(n103) );
  oa4f1 U184 ( .A(n311), .B(n312), .C(n400), .D(n302), .Y(n304) );
  oa4f1 U185 ( .A(n311), .B(n320), .C(n400), .D(n310), .Y(n314) );
  buf1a9 U186 ( .A(n683), .Y(n682) );
  ao2i1 U187 ( .A(n156), .B(n8), .C(n123), .D(n329), .Y(n124) );
  ao2i1 U188 ( .A(n132), .B(cal_cnt[2]), .C(n92), .D(n344), .Y(n93) );
  inv1a3 U189 ( .A(x[12]), .Y(n604) );
  oa1f3 U190 ( .A(n397), .B(cal_en_regNext), .C(n398), .Y(N355) );
  inv1a3 U191 ( .A(x[13]), .Y(n618) );
  inv1a3 U192 ( .A(x[14]), .Y(n633) );
  and2c1 U193 ( .A(n402), .B(n58), .Y(n61) );
  inv1a3 U194 ( .A(yn[15]), .Y(n58) );
  and2c3 U195 ( .A(rg_cordic_iternum[0]), .B(rg_cordic_iternum[1]), .Y(n405)
         );
  or2c1 U196 ( .A(n96), .B(n516), .Y(n173) );
  inv1a1 U197 ( .A(n96), .Y(n171) );
  or2c1 U198 ( .A(n486), .B(n319), .Y(n368) );
  inv1a1 U199 ( .A(n319), .Y(n366) );
  ao1f1 U200 ( .A(n420), .B(n419), .C(n418), .Y(n202) );
  ao1f1 U201 ( .A(n420), .B(n417), .C(n418), .Y(n198) );
  ao1f1 U202 ( .A(n420), .B(n416), .C(n418), .Y(n197) );
  ao1f1 U203 ( .A(n420), .B(n415), .C(n418), .Y(n203) );
  ao1f1 U204 ( .A(n420), .B(n414), .C(n418), .Y(n200) );
  ao1f1 U205 ( .A(n420), .B(n413), .C(n418), .Y(n201) );
  ao1f1 U206 ( .A(n420), .B(n412), .C(n418), .Y(n199) );
  or2c3 U207 ( .A(n421), .B(nozero_flg), .Y(n660) );
  inv1a1 U208 ( .A(N158), .Y(n210) );
  or2c1 U209 ( .A(n5), .B(N158), .Y(n204) );
  inv1a3 U210 ( .A(cal_en_regNext), .Y(n684) );
  or2c6 U211 ( .A(n684), .B(cal_en), .Y(n421) );
  buf1a9 U212 ( .A(n344), .Y(n329) );
  and2a3 U213 ( .A(n329), .B(xn_rightshift_18_), .Y(n206) );
  and2a3 U214 ( .A(n329), .B(xn[17]), .Y(n653) );
  and2c1 U215 ( .A(n410), .B(yn[17]), .Y(n9) );
  oa2i2 U216 ( .A(n210), .B(n410), .C(cal_cnt[1]), .D(n9), .Y(n10) );
  and2a3 U217 ( .A(N158), .B(cal_cnt[1]), .Y(n38) );
  and2c3 U218 ( .A(n10), .B(n38), .Y(n32) );
  or2c1 U219 ( .A(N158), .B(cal_cnt[2]), .Y(n24) );
  inv1a3 U220 ( .A(n421), .Y(n577) );
  or2c3 U221 ( .A(n577), .B(y[15]), .Y(n657) );
  inv1a3 U222 ( .A(n657), .Y(n11) );
  and2a6 U223 ( .A(n11), .B(x[15]), .Y(n157) );
  inv1a9 U224 ( .A(n157), .Y(n625) );
  ao1d2 U225 ( .A(n12), .B(n329), .C(n625), .Y(n13) );
  or2c3 U226 ( .A(n611), .B(n204), .Y(n161) );
  xor2a2 U227 ( .A(n13), .B(n1), .Y(n652) );
  clk1b6 U228 ( .A(n2), .Y(n340) );
  and2a3 U229 ( .A(n340), .B(xn[16]), .Y(n645) );
  inv1a1 U230 ( .A(yn[17]), .Y(n59) );
  clk1b6 U231 ( .A(cal_cnt[1]), .Y(n242) );
  or2c9 U232 ( .A(n242), .B(cal_cnt[0]), .Y(n402) );
  and2c6 U233 ( .A(n402), .B(cal_cnt[2]), .Y(n353) );
  or2a6 U234 ( .A(cal_cnt[0]), .B(cal_cnt[1]), .Y(n324) );
  clk1b6 U235 ( .A(n324), .Y(n290) );
  or2c3 U236 ( .A(n290), .B(n22), .Y(n239) );
  inv1a3 U237 ( .A(n239), .Y(n261) );
  inv1a1 U238 ( .A(n24), .Y(n19) );
  oa2i2 U239 ( .A(n261), .B(yn[16]), .C(n19), .D(n38), .Y(n14) );
  ao1d2 U240 ( .A(n15), .B(n329), .C(n625), .Y(n16) );
  xor2a2 U241 ( .A(n16), .B(n1), .Y(n644) );
  or2c3 U242 ( .A(n48), .B(cal_cnt[1]), .Y(n117) );
  and2a3 U243 ( .A(cal_cnt[1]), .B(cal_cnt[0]), .Y(n77) );
  ao4f1 U244 ( .A(n659), .B(N158), .C(yn[16]), .D(n402), .Y(n17) );
  oa1f3 U245 ( .A(n53), .B(n22), .C(n19), .Y(n20) );
  ao1f2 U246 ( .A(n20), .B(n296), .C(n611), .Y(n21) );
  xor2a2 U247 ( .A(n21), .B(n1), .Y(n634) );
  and2a3 U248 ( .A(n344), .B(xn[15]), .Y(n635) );
  and2a3 U249 ( .A(n344), .B(xn[14]), .Y(n629) );
  inv1a1 U250 ( .A(y[14]), .Y(n28) );
  and2a3 U251 ( .A(n77), .B(n22), .Y(n352) );
  inv1a3 U252 ( .A(n352), .Y(n264) );
  clk1b6 U253 ( .A(n264), .Y(n667) );
  inv1a1 U254 ( .A(yn[14]), .Y(n57) );
  and2c1 U255 ( .A(n239), .B(n57), .Y(n26) );
  or2c1 U256 ( .A(n666), .B(yn[16]), .Y(n23) );
  ao2i1 U257 ( .A(n669), .B(n58), .C(n24), .D(n23), .Y(n25) );
  oa2i2 U258 ( .A(yn[17]), .B(n667), .C(n26), .D(n25), .Y(n27) );
  ao4f3 U259 ( .A(n28), .B(n625), .C(n296), .D(n27), .Y(n29) );
  xor2a2 U260 ( .A(n29), .B(n1), .Y(n628) );
  inv1a1 U261 ( .A(y[13]), .Y(n35) );
  inv1a1 U262 ( .A(yn[13]), .Y(n49) );
  and2c1 U263 ( .A(n69), .B(yn[15]), .Y(n31) );
  ao4f1 U264 ( .A(n659), .B(yn[16]), .C(yn[14]), .D(n402), .Y(n30) );
  oa2i2 U265 ( .A(n290), .B(n49), .C(n31), .D(n30), .Y(n73) );
  or2c1 U266 ( .A(n32), .B(cal_cnt[2]), .Y(n33) );
  ao1f2 U267 ( .A(n35), .B(n611), .C(n34), .Y(n36) );
  xor2a2 U268 ( .A(n36), .B(n1), .Y(n612) );
  and2a3 U269 ( .A(n340), .B(xn[13]), .Y(n613) );
  and2a3 U270 ( .A(n344), .B(xn[12]), .Y(n600) );
  inv1a1 U271 ( .A(y[12]), .Y(n45) );
  clk1b6 U272 ( .A(n402), .Y(n311) );
  or2c1 U273 ( .A(n666), .B(yn[14]), .Y(n40) );
  and2a3 U274 ( .A(n290), .B(n8), .Y(n307) );
  oa2i2 U275 ( .A(n665), .B(yn[13]), .C(n43), .D(n42), .Y(n44) );
  ao4f3 U276 ( .A(n45), .B(n625), .C(n296), .D(n44), .Y(n46) );
  xor2a2 U277 ( .A(n46), .B(n1), .Y(n599) );
  inv1a1 U278 ( .A(y[11]), .Y(n55) );
  inv1a1 U279 ( .A(yn[12]), .Y(n47) );
  or2c1 U280 ( .A(n37), .B(n47), .Y(n51) );
  and2a6 U281 ( .A(n48), .B(cal_cnt[1]), .Y(n321) );
  inv1a1 U282 ( .A(yn[11]), .Y(n80) );
  ao2i3 U283 ( .A(yn[14]), .B(n659), .C(n51), .D(n50), .Y(n91) );
  or2c1 U284 ( .A(n91), .B(n22), .Y(n52) );
  ao1f2 U285 ( .A(n55), .B(n611), .C(n54), .Y(n56) );
  xor2a2 U286 ( .A(n56), .B(n1), .Y(n585) );
  and2a3 U287 ( .A(n329), .B(xn[11]), .Y(n586) );
  inv1a1 U288 ( .A(y[10]), .Y(n67) );
  inv1a3 U289 ( .A(n307), .Y(n668) );
  inv1a1 U290 ( .A(yn[10]), .Y(n104) );
  and2c1 U291 ( .A(n659), .B(n59), .Y(n60) );
  oa2i2 U292 ( .A(yn[16]), .B(n321), .C(n61), .D(n60), .Y(n63) );
  oa2i2 U293 ( .A(n665), .B(yn[11]), .C(n65), .D(n64), .Y(n66) );
  ao4f3 U294 ( .A(n67), .B(n625), .C(n296), .D(n66), .Y(n68) );
  xor2a2 U295 ( .A(n68), .B(n1), .Y(n553) );
  and2a3 U296 ( .A(n344), .B(xn[10]), .Y(n554) );
  and2a3 U297 ( .A(n329), .B(xn[9]), .Y(n542) );
  inv1a1 U298 ( .A(y[9]), .Y(n75) );
  or2c1 U299 ( .A(n290), .B(n90), .Y(n71) );
  oa4a2 U300 ( .A(n659), .B(yn[12]), .C(yn[10]), .D(n402), .Y(n70) );
  or2c1 U301 ( .A(n112), .B(n22), .Y(n72) );
  ao1f2 U302 ( .A(n75), .B(n611), .C(n74), .Y(n76) );
  xor2a2 U303 ( .A(n76), .B(n1), .Y(n541) );
  inv1a1 U304 ( .A(y[8]), .Y(n86) );
  clk1a3 U305 ( .A(n77), .Y(n400) );
  or2c1 U306 ( .A(n37), .B(yn[13]), .Y(n78) );
  inv1a1 U307 ( .A(yn[8]), .Y(n100) );
  or2c1 U308 ( .A(n290), .B(n100), .Y(n82) );
  and2c1 U309 ( .A(n122), .B(cal_cnt[2]), .Y(n83) );
  oa2i2 U310 ( .A(yn[12]), .B(n307), .C(n84), .D(n83), .Y(n85) );
  ao4f3 U311 ( .A(n86), .B(n625), .C(n296), .D(n85), .Y(n87) );
  xor2a2 U312 ( .A(n87), .B(n1), .Y(n527) );
  and2a3 U313 ( .A(n340), .B(xn[8]), .Y(n528) );
  inv1a1 U314 ( .A(y[7]), .Y(n94) );
  and2c1 U315 ( .A(n324), .B(yn[7]), .Y(n89) );
  oa2i2 U316 ( .A(n321), .B(n90), .C(n89), .D(n88), .Y(n132) );
  or2c1 U317 ( .A(n91), .B(n8), .Y(n92) );
  ao1f2 U318 ( .A(n94), .B(n611), .C(n93), .Y(n95) );
  xor2a2 U319 ( .A(n95), .B(n1), .Y(n516) );
  inv1a1 U320 ( .A(y[6]), .Y(n108) );
  and2c1 U321 ( .A(n324), .B(yn[6]), .Y(n99) );
  oa2i2 U322 ( .A(n321), .B(n100), .C(n99), .D(n98), .Y(n138) );
  or2c1 U323 ( .A(n37), .B(yn[11]), .Y(n102) );
  and2c1 U324 ( .A(n668), .B(n104), .Y(n105) );
  oa2i2 U325 ( .A(n138), .B(n101), .C(n106), .D(n105), .Y(n107) );
  ao4f3 U326 ( .A(n108), .B(n625), .C(n296), .D(n107), .Y(n109) );
  xor2a2 U327 ( .A(n109), .B(n1), .Y(n505) );
  inv1a1 U328 ( .A(y[5]), .Y(n115) );
  inv1a1 U329 ( .A(yn[5]), .Y(n121) );
  and2c3 U330 ( .A(n69), .B(yn[7]), .Y(n111) );
  or2c1 U331 ( .A(n112), .B(n8), .Y(n113) );
  ao1f2 U332 ( .A(n115), .B(n611), .C(n114), .Y(n116) );
  xor2a2 U333 ( .A(n116), .B(n1), .Y(n491) );
  and2a3 U334 ( .A(n329), .B(xn[5]), .Y(n492) );
  and2a3 U335 ( .A(n329), .B(xn[4]), .Y(n481) );
  inv1a1 U336 ( .A(y[4]), .Y(n125) );
  and2c1 U337 ( .A(n659), .B(yn[7]), .Y(n120) );
  inv1a1 U338 ( .A(yn[6]), .Y(n118) );
  oa2i2 U339 ( .A(n311), .B(n121), .C(n120), .D(n119), .Y(n156) );
  or2c1 U340 ( .A(n122), .B(n8), .Y(n123) );
  ao1f2 U341 ( .A(n125), .B(n611), .C(n124), .Y(n126) );
  xor2a2 U342 ( .A(n126), .B(n1), .Y(n480) );
  inv1a1 U343 ( .A(y[3]), .Y(n461) );
  and2c6 U344 ( .A(n671), .B(cal_cnt[1]), .Y(n409) );
  inv1a1 U345 ( .A(n409), .Y(n130) );
  or2c1 U346 ( .A(n665), .B(yn[4]), .Y(n128) );
  ao4f3 U347 ( .A(n461), .B(n611), .C(n2), .D(n133), .Y(n134) );
  xor2a2 U348 ( .A(n134), .B(n1), .Y(n468) );
  inv1a1 U349 ( .A(y[2]), .Y(n140) );
  oa4f3 U350 ( .A(n666), .B(yn[4]), .C(n667), .D(yn[5]), .Y(n136) );
  or2c1 U351 ( .A(n409), .B(yn[2]), .Y(n135) );
  ao4f3 U352 ( .A(n140), .B(n625), .C(n296), .D(n139), .Y(n141) );
  xor2a2 U353 ( .A(n141), .B(n1), .Y(n456) );
  and2a3 U354 ( .A(n344), .B(xn[2]), .Y(n453) );
  inv1a1 U355 ( .A(y[1]), .Y(n147) );
  inv1a1 U356 ( .A(n356), .Y(n155) );
  oa4f1 U357 ( .A(n409), .B(yn[1]), .C(n353), .D(yn[2]), .Y(n143) );
  or2c1 U358 ( .A(n352), .B(yn[4]), .Y(n142) );
  ao2i3 U359 ( .A(n3), .B(n153), .C(n143), .D(n142), .Y(n144) );
  oa1f3 U360 ( .A(n145), .B(n155), .C(n144), .Y(n146) );
  ao4f3 U361 ( .A(n147), .B(n625), .C(n296), .D(n146), .Y(n148) );
  xor2a2 U362 ( .A(n148), .B(n1), .Y(n440) );
  inv1a1 U363 ( .A(n440), .Y(n163) );
  and2a3 U364 ( .A(n344), .B(xn[1]), .Y(n441) );
  inv1a1 U365 ( .A(n441), .Y(n162) );
  inv1a1 U366 ( .A(yn[1]), .Y(n150) );
  oa4e3 U367 ( .C(yn[0]), .D(n409), .B(n150), .A(n353), .Y(n152) );
  or2c1 U368 ( .A(n666), .B(yn[2]), .Y(n151) );
  oa1f3 U369 ( .A(n156), .B(n155), .C(n154), .Y(n159) );
  or2c1 U370 ( .A(y[0]), .B(n157), .Y(n158) );
  ao1f2 U371 ( .A(n2), .B(n159), .C(n158), .Y(n160) );
  xor2a2 U372 ( .A(n161), .B(n160), .Y(n429) );
  ao1d2 U373 ( .A(n163), .B(n162), .C(n442), .Y(n165) );
  or2c3 U374 ( .A(n440), .B(n441), .Y(n164) );
  or2c3 U375 ( .A(n165), .B(n164), .Y(n454) );
  or2c3 U376 ( .A(n167), .B(n166), .Y(n467) );
  ao1d3 U377 ( .A(n176), .B(n175), .C(n529), .Y(n178) );
  ao1d3 U378 ( .A(n180), .B(n179), .C(n555), .Y(n182) );
  or2c6 U379 ( .A(n182), .B(n181), .Y(n587) );
  ao1d3 U380 ( .A(n184), .B(n183), .C(n587), .Y(n186) );
  or2c6 U381 ( .A(n186), .B(n185), .Y(n598) );
  or2c6 U382 ( .A(n190), .B(n189), .Y(n627) );
  ao1d6 U383 ( .A(n192), .B(n191), .C(n636), .Y(n194) );
  or2c6 U384 ( .A(n194), .B(n193), .Y(n643) );
  xor2a2 U385 ( .A(n206), .B(n196), .Y(N323) );
  inv1a1 U386 ( .A(n204), .Y(n215) );
  inv1a1 U387 ( .A(n206), .Y(n209) );
  inv1a1 U388 ( .A(x[15]), .Y(n207) );
  and2c3 U389 ( .A(n421), .B(n207), .Y(n672) );
  inv1a1 U390 ( .A(y[15]), .Y(n208) );
  or2c3 U391 ( .A(n672), .B(n208), .Y(n211) );
  buf1a9 U392 ( .A(n211), .Y(n345) );
  or2c1 U393 ( .A(n209), .B(n345), .Y(n213) );
  buf1a9 U394 ( .A(n212), .Y(n423) );
  xor2a2 U395 ( .A(n213), .B(n423), .Y(n214) );
  xor2a2 U396 ( .A(n215), .B(n214), .Y(n393) );
  and2a3 U397 ( .A(n344), .B(yn[17]), .Y(n656) );
  or2c1 U398 ( .A(n261), .B(n253), .Y(n216) );
  ao2i1 U399 ( .A(n261), .B(xn_rightshift_18_), .C(n216), .D(n344), .Y(n217)
         );
  or2c1 U400 ( .A(n217), .B(n345), .Y(n218) );
  xor2a2 U401 ( .A(n218), .B(n423), .Y(n655) );
  inv1a1 U402 ( .A(xn[16]), .Y(n220) );
  or2c3 U403 ( .A(cal_cnt[2]), .B(xn_rightshift_18_), .Y(n243) );
  or2c1 U404 ( .A(cal_cnt[1]), .B(xn_rightshift_18_), .Y(n219) );
  ao2i3 U405 ( .A(n239), .B(n220), .C(n243), .D(n219), .Y(n221) );
  ao1f2 U406 ( .A(n222), .B(n296), .C(n345), .Y(n223) );
  xor2a2 U407 ( .A(n223), .B(n423), .Y(n649) );
  and2a3 U408 ( .A(n329), .B(yn[16]), .Y(n646) );
  or2c1 U409 ( .A(n400), .B(xn_rightshift_18_), .Y(n252) );
  and2c1 U410 ( .A(n3), .B(n253), .Y(n224) );
  oa2i2 U411 ( .A(xn[16]), .B(n665), .C(n225), .D(n224), .Y(n226) );
  ao1f2 U412 ( .A(n226), .B(n296), .C(n345), .Y(n227) );
  xor2a2 U413 ( .A(n227), .B(n423), .Y(n638) );
  and2a3 U414 ( .A(n329), .B(yn[15]), .Y(n639) );
  and2a3 U415 ( .A(n329), .B(yn[14]), .Y(n621) );
  inv1a3 U416 ( .A(xn[14]), .Y(n287) );
  or2c1 U417 ( .A(n667), .B(xn[17]), .Y(n228) );
  and2c1 U418 ( .A(n669), .B(n281), .Y(n229) );
  oa2i2 U419 ( .A(n666), .B(xn[16]), .C(n230), .D(n229), .Y(n231) );
  ao4f3 U420 ( .A(n633), .B(n345), .C(n296), .D(n231), .Y(n232) );
  xor2a2 U421 ( .A(n232), .B(n423), .Y(n620) );
  and2c1 U422 ( .A(n669), .B(n287), .Y(n236) );
  or2c1 U423 ( .A(n307), .B(xn[17]), .Y(n234) );
  oa4f1 U424 ( .A(n261), .B(xn[13]), .C(n666), .D(xn[15]), .Y(n233) );
  oa2i2 U425 ( .A(xn[16]), .B(n667), .C(n236), .D(n235), .Y(n237) );
  ao4f3 U426 ( .A(n618), .B(n345), .C(n296), .D(n237), .Y(n238) );
  xor2a2 U427 ( .A(n238), .B(n423), .Y(n605) );
  and2a3 U428 ( .A(n329), .B(yn[13]), .Y(n606) );
  and2a3 U429 ( .A(n329), .B(yn[12]), .Y(n594) );
  inv1a3 U430 ( .A(xn[13]), .Y(n299) );
  or2c1 U431 ( .A(n667), .B(xn[15]), .Y(n247) );
  and2c1 U432 ( .A(n239), .B(n298), .Y(n245) );
  or3d1 U433 ( .A(n37), .B(cal_cnt[2]), .C(xn[17]), .Y(n241) );
  or2c1 U434 ( .A(n307), .B(xn[16]), .Y(n240) );
  ao2i1 U435 ( .A(n243), .B(n242), .C(n241), .D(n240), .Y(n244) );
  oa2i2 U436 ( .A(xn[14]), .B(n666), .C(n245), .D(n244), .Y(n246) );
  or2c1 U437 ( .A(n248), .B(n340), .Y(n249) );
  ao1f2 U438 ( .A(n604), .B(n345), .C(n249), .Y(n250) );
  xor2a2 U439 ( .A(n250), .B(n423), .Y(n593) );
  inv1a2 U440 ( .A(x[11]), .Y(n591) );
  or2c1 U441 ( .A(n37), .B(xn[16]), .Y(n251) );
  oa2i2 U442 ( .A(cal_cnt[2]), .B(n257), .C(n256), .D(n255), .Y(n258) );
  ao4f3 U443 ( .A(n591), .B(n345), .C(n296), .D(n258), .Y(n259) );
  xor2a2 U444 ( .A(n259), .B(n423), .Y(n579) );
  and2a3 U445 ( .A(n329), .B(yn[11]), .Y(n580) );
  and2a3 U446 ( .A(n329), .B(yn[10]), .Y(n549) );
  inv1a2 U447 ( .A(x[10]), .Y(n559) );
  oa4f1 U448 ( .A(n321), .B(xn[16]), .C(n400), .D(xn[17]), .Y(n260) );
  ao1f1 U449 ( .A(n402), .B(n281), .C(n260), .Y(n267) );
  or2c1 U450 ( .A(n665), .B(xn[11]), .Y(n263) );
  or2c1 U451 ( .A(n261), .B(xn[10]), .Y(n262) );
  oa2i2 U452 ( .A(cal_cnt[2]), .B(n267), .C(n266), .D(n265), .Y(n268) );
  ao4f3 U453 ( .A(n559), .B(n345), .C(n296), .D(n268), .Y(n269) );
  xor2a2 U454 ( .A(n269), .B(n423), .Y(n548) );
  inv1a2 U455 ( .A(x[9]), .Y(n546) );
  and2c1 U456 ( .A(n69), .B(xn[11]), .Y(n271) );
  ao4f1 U457 ( .A(n659), .B(xn[12]), .C(xn[10]), .D(n402), .Y(n270) );
  oa2i2 U458 ( .A(n290), .B(n302), .C(n271), .D(n270), .Y(n316) );
  and2c1 U459 ( .A(n402), .B(n287), .Y(n273) );
  and2c1 U460 ( .A(n69), .B(n281), .Y(n272) );
  oa2i2 U461 ( .A(xn[16]), .B(n400), .C(n273), .D(n272), .Y(n274) );
  ao4f3 U462 ( .A(n546), .B(n345), .C(n296), .D(n276), .Y(n277) );
  xor2a2 U463 ( .A(n277), .B(n423), .Y(n534) );
  and2a3 U464 ( .A(n340), .B(yn[9]), .Y(n535) );
  inv1a2 U465 ( .A(x[8]), .Y(n533) );
  and2c1 U466 ( .A(n659), .B(xn[11]), .Y(n280) );
  oa2i2 U467 ( .A(n37), .B(n302), .C(n280), .D(n279), .Y(n326) );
  ao4f1 U468 ( .A(n659), .B(n281), .C(n69), .D(n287), .Y(n282) );
  xor2a2 U469 ( .A(n286), .B(n423), .Y(n523) );
  inv1a2 U470 ( .A(x[7]), .Y(n521) );
  and2c1 U471 ( .A(n289), .B(n356), .Y(n294) );
  inv1a1 U472 ( .A(xn[8]), .Y(n310) );
  or2c1 U473 ( .A(n311), .B(n310), .Y(n292) );
  and2c1 U474 ( .A(n333), .B(cal_cnt[2]), .Y(n293) );
  oa2i2 U475 ( .A(xn[11]), .B(n307), .C(n294), .D(n293), .Y(n295) );
  ao4f3 U476 ( .A(n521), .B(n345), .C(n296), .D(n295), .Y(n297) );
  xor2a2 U477 ( .A(n297), .B(n423), .Y(n510) );
  and2a3 U478 ( .A(n340), .B(yn[7]), .Y(n511) );
  and2a3 U479 ( .A(n344), .B(yn[6]), .Y(n500) );
  inv1a2 U480 ( .A(x[6]), .Y(n509) );
  and2c1 U481 ( .A(n301), .B(n101), .Y(n306) );
  or2c1 U482 ( .A(n321), .B(n310), .Y(n303) );
  ao2i3 U483 ( .A(n324), .B(xn[6]), .C(n304), .D(n303), .Y(n339) );
  and2c1 U484 ( .A(n339), .B(n8), .Y(n305) );
  oa2i2 U485 ( .A(xn[10]), .B(n307), .C(n306), .D(n305), .Y(n308) );
  ao4f3 U486 ( .A(n509), .B(n345), .C(n296), .D(n308), .Y(n309) );
  xor2a2 U487 ( .A(n309), .B(n423), .Y(n499) );
  inv1a2 U488 ( .A(x[5]), .Y(n497) );
  inv1a1 U489 ( .A(xn[6]), .Y(n320) );
  or2c1 U490 ( .A(n321), .B(n312), .Y(n313) );
  ao2i3 U491 ( .A(n324), .B(xn[5]), .C(n314), .D(n313), .Y(n348) );
  or2c1 U492 ( .A(n348), .B(n101), .Y(n315) );
  ao1f2 U493 ( .A(n497), .B(n345), .C(n317), .Y(n318) );
  xor2a2 U494 ( .A(n318), .B(n423), .Y(n486) );
  inv1a2 U495 ( .A(x[4]), .Y(n485) );
  oa4a2 U496 ( .A(n659), .B(xn[7]), .C(n402), .D(xn[5]), .Y(n323) );
  or2c1 U497 ( .A(n321), .B(n320), .Y(n322) );
  ao2i3 U498 ( .A(n324), .B(xn[4]), .C(n323), .D(n322), .Y(n357) );
  or2c1 U499 ( .A(n357), .B(n101), .Y(n325) );
  ao1f2 U500 ( .A(n485), .B(n345), .C(n327), .Y(n328) );
  xor2a2 U501 ( .A(n328), .B(n423), .Y(n473) );
  and2a3 U502 ( .A(n329), .B(yn[4]), .Y(n474) );
  inv1a2 U503 ( .A(x[3]), .Y(n472) );
  oa4f1 U504 ( .A(n409), .B(xn[3]), .C(n353), .D(xn[4]), .Y(n331) );
  or2c1 U505 ( .A(n334), .B(n344), .Y(n335) );
  ao1f2 U506 ( .A(n472), .B(n345), .C(n335), .Y(n336) );
  xor2a2 U507 ( .A(n336), .B(n423), .Y(n463) );
  and2a3 U508 ( .A(n344), .B(yn[2]), .Y(n449) );
  inv1a3 U509 ( .A(x[2]), .Y(n460) );
  oa4f3 U510 ( .A(n666), .B(xn[4]), .C(n667), .D(xn[5]), .Y(n338) );
  oa4f1 U511 ( .A(n409), .B(xn[2]), .C(n353), .D(xn[3]), .Y(n337) );
  ao2i3 U512 ( .A(n339), .B(n356), .C(n338), .D(n337), .Y(n341) );
  or2c1 U513 ( .A(n341), .B(n340), .Y(n342) );
  ao1f2 U514 ( .A(n460), .B(n345), .C(n342), .Y(n343) );
  xor2a2 U515 ( .A(n343), .B(n423), .Y(n448) );
  and2a3 U516 ( .A(n344), .B(yn[1]), .Y(n436) );
  clk1b6 U517 ( .A(n345), .Y(n626) );
  oa4f1 U518 ( .A(n409), .B(xn[1]), .C(n353), .D(xn[2]), .Y(n346) );
  ao2i3 U519 ( .A(n348), .B(n22), .C(n347), .D(n346), .Y(n349) );
  ao4a3 U520 ( .A(x[1]), .B(n626), .C(n5), .D(n349), .Y(n350) );
  xor2a2 U521 ( .A(n350), .B(n423), .Y(n435) );
  or2c1 U522 ( .A(x[0]), .B(n626), .Y(n360) );
  oa4f3 U523 ( .A(n666), .B(xn[2]), .C(n352), .D(xn[3]), .Y(n355) );
  ao2i3 U524 ( .A(n357), .B(n356), .C(n355), .D(n354), .Y(n358) );
  or2c1 U525 ( .A(n358), .B(n5), .Y(n359) );
  or2c3 U526 ( .A(n360), .B(n359), .Y(n361) );
  xor2a2 U527 ( .A(n361), .B(n423), .Y(n422) );
  ao1d3 U528 ( .A(n367), .B(n366), .C(n487), .Y(n369) );
  or2c6 U529 ( .A(n373), .B(n372), .Y(n522) );
  ao1d6 U530 ( .A(n375), .B(n374), .C(n536), .Y(n377) );
  or2c6 U531 ( .A(n377), .B(n376), .Y(n547) );
  ao1d6 U532 ( .A(n379), .B(n378), .C(n581), .Y(n381) );
  or2c6 U533 ( .A(n381), .B(n380), .Y(n592) );
  ao1d6 U534 ( .A(n383), .B(n382), .C(n607), .Y(n385) );
  or2c6 U535 ( .A(n385), .B(n384), .Y(n619) );
  ao1d3 U536 ( .A(n387), .B(n386), .C(n640), .Y(n389) );
  or2c6 U537 ( .A(n389), .B(n388), .Y(n647) );
  ao1f6 U538 ( .A(n649), .B(n646), .C(n647), .Y(n391) );
  or2c6 U539 ( .A(n391), .B(n390), .Y(n654) );
  or2b1 U540 ( .B(n394), .A(n657), .Y(N353) );
  and2a1 U541 ( .A(N295), .B(n5), .Y(n676) );
  and2a1 U542 ( .A(N296), .B(n5), .Y(n675) );
  and2a1 U543 ( .A(N293), .B(n5), .Y(n678) );
  and2a1 U544 ( .A(N294), .B(n5), .Y(n677) );
  ao1d1 U545 ( .A(N299), .B(n5), .C(n625), .Y(N331) );
  and2a1 U546 ( .A(N292), .B(n5), .Y(N324) );
  xor2a2 U547 ( .A(n_zz_16[1]), .B(N158), .Y(n395) );
  xor2a2 U548 ( .A(n395), .B(DP_OP_39J1_122_1632_n2), .Y(n396) );
  ao1d1 U549 ( .A(n396), .B(n5), .C(n611), .Y(N332) );
  inv1a1 U550 ( .A(nozero_flg), .Y(n397) );
  inv1a1 U551 ( .A(cal_en), .Y(n398) );
  buf1a9 U552 ( .A(resetn), .Y(n683) );
  oa1f1 U553 ( .A(n402), .B(n69), .C(n660), .Y(N303) );
  xor2a2 U554 ( .A(rg_cordic_iternum[1]), .B(cal_cnt[1]), .Y(n399) );
  or2c1 U555 ( .A(n399), .B(rg_cordic_iternum[0]), .Y(n408) );
  or2c1 U556 ( .A(rg_cordic_iternum[1]), .B(n400), .Y(n401) );
  and2c1 U557 ( .A(rg_cordic_iternum[0]), .B(n410), .Y(n403) );
  and2c1 U558 ( .A(n404), .B(n403), .Y(n407) );
  xor3b3 U559 ( .A(cal_cnt[2]), .B(n405), .C(rg_cordic_iternum[2]), .Y(n406)
         );
  or3d1 U560 ( .A(n408), .B(n407), .C(n406), .Y(n662) );
  inv1a1 U561 ( .A(n662), .Y(n205) );
  xor2a2 U562 ( .A(n409), .B(N158), .Y(DP_OP_39J1_122_1632_n14) );
  inv1a1 U563 ( .A(n_zz_16[1]), .Y(n411) );
  and2c3 U564 ( .A(n_zz_16[0]), .B(n411), .Y(n420) );
  inv1a1 U565 ( .A(res_rg[4]), .Y(n412) );
  or2c3 U566 ( .A(n_zz_16[0]), .B(n411), .Y(n418) );
  inv1a1 U567 ( .A(res_rg[2]), .Y(n413) );
  inv1a1 U568 ( .A(res_rg[3]), .Y(n414) );
  inv1a1 U569 ( .A(res_rg[0]), .Y(n415) );
  inv1a1 U570 ( .A(res_rg[6]), .Y(n416) );
  inv1a1 U571 ( .A(res_rg[5]), .Y(n417) );
  inv1a1 U572 ( .A(res_rg[1]), .Y(n419) );
  inv1a1 U573 ( .A(x[0]), .Y(n433) );
  and2c3 U574 ( .A(n421), .B(x[15]), .Y(n427) );
  or2c1 U575 ( .A(y[0]), .B(n4), .Y(n426) );
  fa1a2 U576 ( .A(n423), .B(n351), .CI(n422), .CO(n434), .S(n424) );
  inv1a1 U577 ( .A(n424), .Y(n425) );
  ao2i3 U578 ( .A(n625), .B(n433), .C(n426), .D(n425), .Y(N335) );
  or2c1 U579 ( .A(y[0]), .B(n626), .Y(n432) );
  fa1a2 U580 ( .A(n1), .B(n149), .CI(n429), .CO(n442), .S(n430) );
  inv1a1 U581 ( .A(n430), .Y(n431) );
  ao2i3 U582 ( .A(n433), .B(n428), .C(n432), .D(n431), .Y(N305) );
  inv1a1 U583 ( .A(x[1]), .Y(n446) );
  or2c1 U584 ( .A(y[1]), .B(n4), .Y(n439) );
  fa1a2 U585 ( .A(n436), .B(n435), .CI(n434), .CO(n447), .S(n437) );
  inv1a1 U586 ( .A(n437), .Y(n438) );
  ao2i3 U587 ( .A(n625), .B(n446), .C(n439), .D(n438), .Y(N336) );
  or2c1 U588 ( .A(y[1]), .B(n626), .Y(n445) );
  xor2b2 U589 ( .A(n441), .B(n440), .Y(n443) );
  ao2i3 U590 ( .A(n446), .B(n428), .C(n445), .D(n444), .Y(N306) );
  or2c1 U591 ( .A(y[2]), .B(n4), .Y(n452) );
  fa1a2 U592 ( .A(n449), .B(n448), .CI(n447), .CO(n462), .S(n450) );
  inv1a1 U593 ( .A(n450), .Y(n451) );
  ao2i3 U594 ( .A(n625), .B(n460), .C(n452), .D(n451), .Y(N337) );
  or2c1 U595 ( .A(y[2]), .B(n626), .Y(n459) );
  inv1a1 U596 ( .A(n453), .Y(n455) );
  xor3b3 U597 ( .A(n456), .B(n455), .C(n454), .Y(n457) );
  inv1a1 U598 ( .A(n457), .Y(n458) );
  ao2i3 U599 ( .A(n460), .B(n428), .C(n459), .D(n458), .Y(N307) );
  or2c1 U600 ( .A(y[3]), .B(n4), .Y(n466) );
  fa1a2 U601 ( .A(n330), .B(n463), .CI(n462), .CO(n475), .S(n464) );
  inv1a1 U602 ( .A(n464), .Y(n465) );
  ao2i3 U603 ( .A(n625), .B(n472), .C(n466), .D(n465), .Y(N338) );
  or2c1 U604 ( .A(y[3]), .B(n626), .Y(n471) );
  fa1a2 U605 ( .A(n127), .B(n468), .CI(n467), .CO(n479), .S(n469) );
  inv1a1 U606 ( .A(n469), .Y(n470) );
  ao2i3 U607 ( .A(n472), .B(n428), .C(n471), .D(n470), .Y(N308) );
  or2c1 U608 ( .A(y[4]), .B(n4), .Y(n478) );
  xor2b2 U609 ( .A(n474), .B(n473), .Y(n476) );
  ao2i3 U610 ( .A(n625), .B(n485), .C(n478), .D(n477), .Y(N339) );
  or2c1 U611 ( .A(y[4]), .B(n626), .Y(n484) );
  fa1a2 U612 ( .A(n481), .B(n480), .CI(n479), .CO(n493), .S(n482) );
  inv1a1 U613 ( .A(n482), .Y(n483) );
  ao2i3 U614 ( .A(n485), .B(n428), .C(n484), .D(n483), .Y(N309) );
  or2c1 U615 ( .A(y[5]), .B(n4), .Y(n490) );
  xor2b2 U616 ( .A(n319), .B(n486), .Y(n488) );
  ao2i3 U617 ( .A(n625), .B(n497), .C(n490), .D(n489), .Y(N340) );
  or2c1 U618 ( .A(y[5]), .B(n626), .Y(n496) );
  xor2b2 U619 ( .A(n492), .B(n491), .Y(n494) );
  ao2i3 U620 ( .A(n497), .B(n428), .C(n496), .D(n495), .Y(N310) );
  or2c1 U621 ( .A(y[6]), .B(n4), .Y(n503) );
  fa1a3 U622 ( .A(n500), .B(n499), .CI(n498), .CO(n512), .S(n501) );
  inv1a1 U623 ( .A(n501), .Y(n502) );
  ao2i3 U624 ( .A(n625), .B(n509), .C(n503), .D(n502), .Y(N341) );
  or2c1 U625 ( .A(y[6]), .B(n626), .Y(n508) );
  inv1a1 U626 ( .A(n506), .Y(n507) );
  ao2i3 U627 ( .A(n509), .B(n428), .C(n508), .D(n507), .Y(N311) );
  or2c1 U628 ( .A(y[7]), .B(n4), .Y(n515) );
  xor2b2 U629 ( .A(n511), .B(n510), .Y(n513) );
  ao2i3 U630 ( .A(n625), .B(n521), .C(n515), .D(n514), .Y(N342) );
  or2c1 U631 ( .A(y[7]), .B(n626), .Y(n520) );
  xor2b2 U632 ( .A(n516), .B(n96), .Y(n518) );
  ao2i3 U633 ( .A(n521), .B(n428), .C(n520), .D(n519), .Y(N312) );
  or2c1 U634 ( .A(y[8]), .B(n4), .Y(n526) );
  fa1a3 U635 ( .A(n278), .B(n523), .CI(n522), .CO(n536), .S(n524) );
  inv1a1 U636 ( .A(n524), .Y(n525) );
  ao2i3 U637 ( .A(n611), .B(n533), .C(n526), .D(n525), .Y(N343) );
  or2c1 U638 ( .A(y[8]), .B(n626), .Y(n532) );
  xor2b2 U639 ( .A(n528), .B(n527), .Y(n530) );
  ao2i3 U640 ( .A(n533), .B(n428), .C(n532), .D(n531), .Y(N313) );
  or2c1 U641 ( .A(y[9]), .B(n4), .Y(n539) );
  xor2b2 U642 ( .A(n535), .B(n534), .Y(n537) );
  ao2i3 U643 ( .A(n611), .B(n546), .C(n539), .D(n538), .Y(N344) );
  or2c1 U644 ( .A(y[9]), .B(n626), .Y(n545) );
  inv1a1 U645 ( .A(n543), .Y(n544) );
  ao2i3 U646 ( .A(n546), .B(n428), .C(n545), .D(n544), .Y(N314) );
  or2c1 U647 ( .A(y[10]), .B(n4), .Y(n552) );
  fa1a3 U648 ( .A(n549), .B(n548), .CI(n547), .CO(n581), .S(n550) );
  inv1a1 U649 ( .A(n550), .Y(n551) );
  ao2i3 U650 ( .A(n611), .B(n559), .C(n552), .D(n551), .Y(N345) );
  or2c1 U651 ( .A(y[10]), .B(n626), .Y(n558) );
  xor2b2 U652 ( .A(n554), .B(n553), .Y(n556) );
  ao2i3 U653 ( .A(n559), .B(n428), .C(n558), .D(n557), .Y(N315) );
  and3d2 U654 ( .A(y[14]), .B(y[13]), .C(y[12]), .Y(n562) );
  and3d2 U655 ( .A(y[10]), .B(y[9]), .C(y[8]), .Y(n561) );
  and2c1 U656 ( .A(y[15]), .B(y[11]), .Y(n560) );
  or3d1 U657 ( .A(n562), .B(n561), .C(n560), .Y(n575) );
  and3d2 U658 ( .A(y[6]), .B(y[5]), .C(y[4]), .Y(n565) );
  and3d2 U659 ( .A(y[2]), .B(y[1]), .C(y[0]), .Y(n564) );
  and2c1 U660 ( .A(y[7]), .B(y[3]), .Y(n563) );
  or3d1 U661 ( .A(n565), .B(n564), .C(n563), .Y(n574) );
  and3d2 U662 ( .A(x[14]), .B(x[13]), .C(x[12]), .Y(n568) );
  and3d2 U663 ( .A(x[10]), .B(x[9]), .C(x[8]), .Y(n567) );
  and2c1 U664 ( .A(x[15]), .B(x[11]), .Y(n566) );
  or3d1 U665 ( .A(n568), .B(n567), .C(n566), .Y(n573) );
  and3d2 U666 ( .A(x[6]), .B(x[5]), .C(x[4]), .Y(n571) );
  and3d2 U667 ( .A(x[2]), .B(x[1]), .C(x[0]), .Y(n570) );
  and2c1 U668 ( .A(x[7]), .B(x[3]), .Y(n569) );
  or3d1 U669 ( .A(n571), .B(n570), .C(n569), .Y(n572) );
  oa4a2 U670 ( .A(n575), .B(n574), .C(n573), .D(n572), .Y(n685) );
  inv1a1 U671 ( .A(n685), .Y(n578) );
  inv1a1 U672 ( .A(N355), .Y(n576) );
  oa1f3 U673 ( .A(n578), .B(n577), .C(n576), .Y(N354) );
  or2c1 U674 ( .A(y[11]), .B(n4), .Y(n584) );
  xor2b2 U675 ( .A(n580), .B(n579), .Y(n582) );
  ao2i3 U676 ( .A(n611), .B(n591), .C(n584), .D(n583), .Y(N346) );
  or2c1 U677 ( .A(y[11]), .B(n626), .Y(n590) );
  xor2b2 U678 ( .A(n586), .B(n585), .Y(n588) );
  ao2i3 U679 ( .A(n591), .B(n428), .C(n590), .D(n589), .Y(N316) );
  or2c1 U680 ( .A(y[12]), .B(n4), .Y(n597) );
  fa1a3 U681 ( .A(n594), .B(n593), .CI(n592), .CO(n607), .S(n595) );
  inv1a1 U682 ( .A(n595), .Y(n596) );
  ao2i3 U683 ( .A(n625), .B(n604), .C(n597), .D(n596), .Y(N347) );
  or2c1 U684 ( .A(y[12]), .B(n626), .Y(n603) );
  fa1a3 U685 ( .A(n600), .B(n599), .CI(n598), .CO(n614), .S(n601) );
  inv1a1 U686 ( .A(n601), .Y(n602) );
  ao2i3 U687 ( .A(n604), .B(n428), .C(n603), .D(n602), .Y(N317) );
  or2c1 U688 ( .A(y[13]), .B(n4), .Y(n610) );
  xor2b2 U689 ( .A(n606), .B(n605), .Y(n608) );
  ao2i3 U690 ( .A(n611), .B(n618), .C(n610), .D(n609), .Y(N348) );
  or2c1 U691 ( .A(y[13]), .B(n626), .Y(n617) );
  xor2b2 U692 ( .A(n613), .B(n612), .Y(n615) );
  ao2i3 U693 ( .A(n618), .B(n428), .C(n617), .D(n616), .Y(N318) );
  or2c1 U694 ( .A(y[14]), .B(n4), .Y(n624) );
  fa1a3 U695 ( .A(n621), .B(n620), .CI(n619), .CO(n640), .S(n622) );
  inv1a1 U696 ( .A(n622), .Y(n623) );
  ao2i3 U697 ( .A(n625), .B(n633), .C(n624), .D(n623), .Y(N349) );
  or2c1 U698 ( .A(y[14]), .B(n626), .Y(n632) );
  fa1a3 U699 ( .A(n629), .B(n628), .CI(n627), .CO(n636), .S(n630) );
  inv1a1 U700 ( .A(n630), .Y(n631) );
  ao2i3 U701 ( .A(n428), .B(n633), .C(n632), .D(n631), .Y(N319) );
  xor2b2 U702 ( .A(n635), .B(n634), .Y(n637) );
  xor2b2 U703 ( .A(n637), .B(n636), .Y(n673) );
  xor2b2 U704 ( .A(n639), .B(n638), .Y(n641) );
  xor2b2 U705 ( .A(n641), .B(n640), .Y(n642) );
  fa1a2 U706 ( .A(n645), .B(n644), .CI(n643), .CO(n651), .S(N321) );
  xor3b3 U707 ( .A(n649), .B(n648), .C(n647), .Y(n650) );
  fa1a2 U708 ( .A(n653), .B(n652), .CI(n651), .CO(n196), .S(N322) );
  fa1a2 U709 ( .A(n656), .B(n655), .CI(n654), .CO(n392), .S(n658) );
  inv1a1 U710 ( .A(en), .Y(n663) );
  and2c3 U711 ( .A(n664), .B(n663), .Y(n195) );
  xor2a2 U712 ( .A(n665), .B(N158), .Y(DP_OP_39J1_122_1632_n15) );
  xor2a2 U713 ( .A(n666), .B(N158), .Y(DP_OP_39J1_122_1632_n16) );
  xor2a2 U714 ( .A(n667), .B(N158), .Y(DP_OP_39J1_122_1632_n17) );
  or3d1 U715 ( .A(n3), .B(n669), .C(n668), .Y(n670) );
  xor2a2 U716 ( .A(n670), .B(N158), .Y(DP_OP_39J1_122_1632_n18) );
  xor2a2 U717 ( .A(n671), .B(N158), .Y(DP_OP_39J1_122_1632_n19) );
  ao4a3 U718 ( .A(N298), .B(n5), .C(n672), .D(n685), .Y(N330) );
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
         n25, n26, n27, n28, n30, n31, n32, n33;
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
        .valid_num({valid_num[2], n14, n27}), .vin_vld(vin_vld), .vin1({n26, 
        n21, n12, n11, n20, n10, vin1[1], n19}), .vin2({n25, n17, n8, n7, n16, 
        n6, n4, n24}), .rg_leakage_table_0(rg_leakage_table_0), 
        .rg_leakage_table_1(rg_leakage_table_1), .rg_leakage_table_2(
        rg_leakage_table_2), .rg_leakage_table_3(rg_leakage_table_3), 
        .rg_leakage_table_4(rg_leakage_table_4), .rg_leakage_table_5(
        rg_leakage_table_5), .rg_leakage_table_6(rg_leakage_table_6), 
        .rg_leakage_table_7(rg_leakage_table_7), .mean(calvn_mean), .vn_0(
        calvn_vn_0), .vn_1(calvn_vn_1), .vn_2(calvn_vn_2), .vn_3(calvn_vn_3), 
        .vn_4(calvn_vn_4), .vn_5(calvn_vn_5), .vn_6(calvn_vn_6), .vn_7(
        calvn_vn_7), .finish(calvn_finish_1), .clk(clk), .resetn(n33) );
  dotVn_2 dot ( .en(n28), .rg_sin_table_0(rg_sin_table_0), .rg_sin_table_1(
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
        1'b1}), .mean(calvn_mean), .clk(clk), .resetn(n31) );
  cordic_int cordic ( .en(n28), .rg_cordic_iternum({rg_cordic_iternum[2], n22, 
        n13}), .vld(dot_psum_vld), .y(dot_psum_out2), .x(dot_psum_out1), .res(
        phase), .res_vld(phase_vld), .clk(clk), .resetn(n32) );
  inv1a9 U6 ( .A(vin2[2]), .Y(n5) );
  buf1a6 U7 ( .A(vin1[3]), .Y(n20) );
  clk1a3 U8 ( .A(rg_calphase_en), .Y(n28) );
  inv1a3 U9 ( .A(vin1[0]), .Y(n18) );
  clk1a3 U10 ( .A(vin1[7]), .Y(n26) );
  inv1a9 U11 ( .A(n5), .Y(n6) );
  clk1b6 U12 ( .A(n18), .Y(n19) );
  clk1a3 U13 ( .A(valid_num[1]), .Y(n14) );
  clk1a3 U14 ( .A(valid_num[0]), .Y(n27) );
  clk1a3 U15 ( .A(rg_cordic_iternum[0]), .Y(n13) );
  clk1a3 U16 ( .A(rg_cordic_iternum[1]), .Y(n22) );
  clk1a3 U17 ( .A(vin1[4]), .Y(n11) );
  clk1a3 U18 ( .A(vin1[6]), .Y(n21) );
  clk1a3 U19 ( .A(vin2[7]), .Y(n25) );
  clk1a3 U20 ( .A(vin2[6]), .Y(n17) );
  clk1a3 U21 ( .A(vin2[4]), .Y(n7) );
  clk1a3 U22 ( .A(vin1[5]), .Y(n12) );
  clk1a3 U23 ( .A(vin2[5]), .Y(n8) );
  inv1a15 U24 ( .A(vin2[0]), .Y(n23) );
  inv1a3 U25 ( .A(vin1[2]), .Y(n9) );
  inv1a27 U26 ( .A(vin2[1]), .Y(n3) );
  inv1a15 U27 ( .A(n3), .Y(n4) );
  inv1a3 U28 ( .A(n9), .Y(n10) );
  inv1a3 U29 ( .A(vin2[3]), .Y(n15) );
  inv1a3 U30 ( .A(n15), .Y(n16) );
  inv1a15 U31 ( .A(n23), .Y(n24) );
  inv1a1 U32 ( .A(resetn), .Y(n30) );
  clk1b9 U33 ( .A(n30), .Y(n31) );
  inv1a1 U34 ( .A(n30), .Y(n32) );
  inv1a1 U35 ( .A(n30), .Y(n33) );
  inv1a1 U37 ( .A(n27), .Y(n2) );
  mx2a1 U38 ( .D0(n2), .D1(n27), .S(n14), .Y(n_zz_1[2]) );
endmodule

