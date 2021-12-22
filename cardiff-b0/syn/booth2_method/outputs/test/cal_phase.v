/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Tue Dec 21 17:48:36 2021
/////////////////////////////////////////////////////////////


module SNPS_CLOCK_GATE_HIGH_cal_vn_10 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3473;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3473) );
  and2a3 main_gate ( .A(net3473), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_9 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3473;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3473) );
  and2a3 main_gate ( .A(net3473), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_7 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3473;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3473) );
  and2a3 main_gate ( .A(net3473), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_4 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3473;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3473) );
  and2a3 main_gate ( .A(net3473), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_3 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3473;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3473) );
  and2a3 main_gate ( .A(net3473), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_2 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3473;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3473) );
  and2a3 main_gate ( .A(net3473), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cal_vn_1 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3473;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3473) );
  and2a3 main_gate ( .A(net3473), .B(CLK), .Y(ENCLK) );
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
         N242, N243, N244, N245, N246, N248, N250, N252, N254, N255, net3484,
         net3489, net3499, net3514, net3519, net3524, net3529, intadd_0_A_5_,
         intadd_0_B_5_, intadd_0_CI, intadd_0_n6, intadd_0_n5, intadd_0_n4,
         intadd_0_n3, intadd_0_n2, intadd_0_n1, n1, n2, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
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
  wire   [5:0] n_zz_16;
  wire   [5:0] n_zz_17;
  wire   [2:1] n_zz_20;

  SNPS_CLOCK_GATE_HIGH_cal_vn_10 clk_gate_min_v_reg ( .CLK(clk), .EN(N255), 
        .ENCLK(net3484) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_9 clk_gate_max_v_reg ( .CLK(clk), .EN(N254), 
        .ENCLK(net3489) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_7 clk_gate_Vins_6_reg ( .CLK(clk), .EN(N252), 
        .ENCLK(net3499) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_4 clk_gate_Vins_4_reg ( .CLK(clk), .EN(N250), 
        .ENCLK(net3514) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_3 clk_gate_Vins_2_reg ( .CLK(clk), .EN(N248), 
        .ENCLK(net3519) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_2 clk_gate_v_cnt_reg ( .CLK(clk), .EN(N132), 
        .ENCLK(net3524) );
  SNPS_CLOCK_GATE_HIGH_cal_vn_1 clk_gate_Vins_0_reg ( .CLK(clk), .EN(N246), 
        .ENCLK(net3529) );
  fdf2a3 v_cnt_reg_0_ ( .D(N219), .CLK(net3524), .CLR(n199), .Q(n_zz_20[1]) );
  fdf2a3 v_cnt_reg_2_ ( .D(N221), .CLK(net3524), .CLR(n199), .Q(v_cnt_2_) );
  fdf2a3 mean_finish_regNext_reg ( .D(mean_finish), .CLK(clk), .CLR(n199), .Q(
        finish) );
  fdf2a3 v_cnt_reg_1_ ( .D(N220), .CLK(net3524), .CLR(n199), .Q(n_zz_20[2]) );
  fdf2a3 min_v_reg_6_ ( .D(N235), .CLK(net3484), .CLR(n199), .Q(n_zz_17[5]) );
  fdf2a3 min_v_reg_5_ ( .D(N234), .CLK(net3484), .CLR(n199), .Q(n_zz_17[4]) );
  fdf2a3 min_v_reg_4_ ( .D(N233), .CLK(net3484), .CLR(n199), .Q(n_zz_17[3]) );
  fdf2a3 min_v_reg_3_ ( .D(N232), .CLK(net3484), .CLR(n199), .Q(n_zz_17[2]) );
  fdf2a3 min_v_reg_2_ ( .D(N231), .CLK(net3484), .CLR(n199), .Q(n_zz_17[1]) );
  fdf2a3 min_v_reg_1_ ( .D(N230), .CLK(net3484), .CLR(n199), .Q(n_zz_17[0]) );
  fdf2a3 min_v_reg_0_ ( .D(N229), .CLK(net3484), .CLR(resetn), .Q(min_v_0_) );
  fdf2a3 max_v_reg_7_ ( .D(N245), .CLK(net3489), .CLR(resetn), .Q(n_zz_16_8)
         );
  fdf2a3 max_v_reg_6_ ( .D(N244), .CLK(net3489), .CLR(resetn), .Q(n_zz_16[5])
         );
  fdf2a3 max_v_reg_5_ ( .D(N243), .CLK(net3489), .CLR(n205), .Q(n_zz_16[4]) );
  fdf2a3 max_v_reg_4_ ( .D(N242), .CLK(net3489), .CLR(n205), .Q(n_zz_16[3]) );
  fdf2a3 max_v_reg_3_ ( .D(N241), .CLK(net3489), .CLR(n205), .Q(n_zz_16[2]) );
  fdf2a3 max_v_reg_2_ ( .D(N240), .CLK(net3489), .CLR(n205), .Q(n_zz_16[1]) );
  fdf2a3 max_v_reg_1_ ( .D(N239), .CLK(net3489), .CLR(n205), .Q(n_zz_16[0]) );
  fdf2a3 max_v_reg_0_ ( .D(N238), .CLK(net3489), .CLR(n204), .Q(max_v_0_) );
  fdf2a3 Vins_5_reg_7_ ( .D(N194), .CLK(net3514), .CLR(n199), .Q(vn_5[7]) );
  fdf2a3 Vins_5_reg_6_ ( .D(N193), .CLK(net3514), .CLR(n205), .Q(vn_5[6]) );
  fdf2a3 Vins_5_reg_5_ ( .D(N192), .CLK(net3514), .CLR(n200), .Q(vn_5[5]) );
  fdf2a3 Vins_5_reg_4_ ( .D(N191), .CLK(net3514), .CLR(n200), .Q(vn_5[4]) );
  fdf2a3 Vins_5_reg_3_ ( .D(N190), .CLK(net3514), .CLR(n200), .Q(vn_5[3]) );
  fdf2a3 Vins_5_reg_2_ ( .D(N189), .CLK(net3514), .CLR(n200), .Q(vn_5[2]) );
  fdf2a3 Vins_5_reg_1_ ( .D(N188), .CLK(net3514), .CLR(n200), .Q(vn_5[1]) );
  fdf2a3 Vins_5_reg_0_ ( .D(N187), .CLK(net3514), .CLR(n200), .Q(vn_5[0]) );
  fdf2a3 Vins_7_reg_7_ ( .D(N214), .CLK(net3499), .CLR(n200), .Q(vn_7[7]) );
  fdf2a3 Vins_7_reg_6_ ( .D(N213), .CLK(net3499), .CLR(n200), .Q(vn_7[6]) );
  fdf2a3 Vins_7_reg_5_ ( .D(N212), .CLK(net3499), .CLR(n200), .Q(vn_7[5]) );
  fdf2a3 Vins_7_reg_4_ ( .D(N211), .CLK(net3499), .CLR(n200), .Q(vn_7[4]) );
  fdf2a3 Vins_7_reg_3_ ( .D(N210), .CLK(net3499), .CLR(n200), .Q(vn_7[3]) );
  fdf2a3 Vins_7_reg_2_ ( .D(N209), .CLK(net3499), .CLR(n201), .Q(vn_7[2]) );
  fdf2a3 Vins_7_reg_1_ ( .D(N208), .CLK(net3499), .CLR(n201), .Q(vn_7[1]) );
  fdf2a3 Vins_7_reg_0_ ( .D(N207), .CLK(net3499), .CLR(n201), .Q(vn_7[0]) );
  fdf2a3 Vins_3_reg_7_ ( .D(N174), .CLK(net3519), .CLR(n201), .Q(vn_3[7]) );
  fdf2a3 Vins_3_reg_6_ ( .D(N173), .CLK(net3519), .CLR(n201), .Q(vn_3[6]) );
  fdf2a3 Vins_3_reg_5_ ( .D(N172), .CLK(net3519), .CLR(n201), .Q(vn_3[5]) );
  fdf2a3 Vins_3_reg_4_ ( .D(N171), .CLK(net3519), .CLR(n201), .Q(vn_3[4]) );
  fdf2a3 Vins_3_reg_3_ ( .D(N170), .CLK(net3519), .CLR(n201), .Q(vn_3[3]) );
  fdf2a3 Vins_3_reg_2_ ( .D(N169), .CLK(net3519), .CLR(n201), .Q(vn_3[2]) );
  fdf2a3 Vins_3_reg_1_ ( .D(N168), .CLK(net3519), .CLR(n201), .Q(vn_3[1]) );
  fdf2a3 Vins_3_reg_0_ ( .D(N167), .CLK(net3519), .CLR(n201), .Q(vn_3[0]) );
  fdf2a3 Vins_1_reg_7_ ( .D(N154), .CLK(net3529), .CLR(n202), .Q(vn_1[7]) );
  fdf2a3 Vins_1_reg_6_ ( .D(N153), .CLK(net3529), .CLR(n202), .Q(vn_1[6]) );
  fdf2a3 Vins_1_reg_5_ ( .D(N152), .CLK(net3529), .CLR(n202), .Q(vn_1[5]) );
  fdf2a3 Vins_1_reg_4_ ( .D(N151), .CLK(net3529), .CLR(n202), .Q(vn_1[4]) );
  fdf2a3 Vins_1_reg_3_ ( .D(N150), .CLK(net3529), .CLR(n202), .Q(vn_1[3]) );
  fdf2a3 Vins_1_reg_2_ ( .D(N149), .CLK(net3529), .CLR(n202), .Q(vn_1[2]) );
  fdf2a3 Vins_1_reg_1_ ( .D(N148), .CLK(net3529), .CLR(n202), .Q(vn_1[1]) );
  fdf2a3 Vins_1_reg_0_ ( .D(N147), .CLK(net3529), .CLR(n202), .Q(vn_1[0]) );
  fdf2a3 Vins_4_reg_7_ ( .D(n_zz_24_1_), .CLK(net3514), .CLR(n202), .Q(vn_4[7]) );
  fdf2a3 Vins_4_reg_6_ ( .D(n159), .CLK(net3514), .CLR(n202), .Q(vn_4[6]) );
  fdf2a3 Vins_4_reg_5_ ( .D(N202), .CLK(net3514), .CLR(n202), .Q(vn_4[5]) );
  fdf2a3 Vins_4_reg_3_ ( .D(N200), .CLK(net3514), .CLR(n203), .Q(vn_4[3]) );
  fdf2a3 Vins_4_reg_2_ ( .D(n46), .CLK(net3514), .CLR(n203), .Q(vn_4[2]) );
  fdf2a3 Vins_4_reg_1_ ( .D(N198), .CLK(net3514), .CLR(n203), .Q(vn_4[1]) );
  fdf2a3 Vins_6_reg_7_ ( .D(n_zz_24_1_), .CLK(net3499), .CLR(n203), .Q(vn_6[7]) );
  fdf2a3 Vins_6_reg_6_ ( .D(n159), .CLK(net3499), .CLR(n203), .Q(vn_6[6]) );
  fdf2a3 Vins_6_reg_5_ ( .D(N202), .CLK(net3499), .CLR(n203), .Q(vn_6[5]) );
  fdf2a3 Vins_6_reg_3_ ( .D(N200), .CLK(net3499), .CLR(n203), .Q(vn_6[3]) );
  fdf2a3 Vins_6_reg_2_ ( .D(n46), .CLK(net3499), .CLR(n203), .Q(vn_6[2]) );
  fdf2a3 Vins_6_reg_1_ ( .D(N198), .CLK(net3499), .CLR(n204), .Q(vn_6[1]) );
  fdf2a3 Vins_2_reg_7_ ( .D(n_zz_24_1_), .CLK(net3519), .CLR(n204), .Q(vn_2[7]) );
  fdf2a3 Vins_2_reg_6_ ( .D(n159), .CLK(net3519), .CLR(n204), .Q(vn_2[6]) );
  fdf2a3 Vins_2_reg_5_ ( .D(N202), .CLK(net3519), .CLR(n204), .Q(vn_2[5]) );
  fdf2a3 Vins_2_reg_3_ ( .D(N200), .CLK(net3519), .CLR(n204), .Q(vn_2[3]) );
  fdf2a3 Vins_2_reg_2_ ( .D(n46), .CLK(net3519), .CLR(n204), .Q(vn_2[2]) );
  fdf2a3 Vins_2_reg_1_ ( .D(N198), .CLK(net3519), .CLR(n204), .Q(vn_2[1]) );
  fdf2a3 Vins_0_reg_7_ ( .D(n_zz_24_1_), .CLK(net3529), .CLR(n204), .Q(vn_0[7]) );
  fdf2a3 Vins_0_reg_6_ ( .D(n159), .CLK(net3529), .CLR(n205), .Q(vn_0[6]) );
  fdf2a3 Vins_0_reg_5_ ( .D(N202), .CLK(net3529), .CLR(n205), .Q(vn_0[5]) );
  fdf2a3 Vins_0_reg_3_ ( .D(N200), .CLK(net3529), .CLR(n205), .Q(vn_0[3]) );
  fdf2a3 Vins_0_reg_2_ ( .D(n46), .CLK(net3529), .CLR(n205), .Q(vn_0[2]) );
  fdf2a3 Vins_0_reg_1_ ( .D(N198), .CLK(net3529), .CLR(n205), .Q(vn_0[1]) );
  fdf2a3 Vins_0_reg_0_ ( .D(N197), .CLK(net3529), .CLR(n205), .Q(vn_0[0]) );
  fdf2a3 Vins_2_reg_0_ ( .D(N197), .CLK(net3519), .CLR(n204), .Q(vn_2[0]) );
  fdf2a3 Vins_4_reg_0_ ( .D(N197), .CLK(net3514), .CLR(n203), .Q(vn_4[0]) );
  fdf2a3 Vins_6_reg_0_ ( .D(N197), .CLK(net3499), .CLR(n204), .Q(vn_6[0]) );
  fdf2a3 Vins_0_reg_4_ ( .D(N201), .CLK(net3529), .CLR(n205), .Q(vn_0[4]) );
  fdf2a3 Vins_2_reg_4_ ( .D(N201), .CLK(net3519), .CLR(n204), .Q(vn_2[4]) );
  fdf2a3 Vins_4_reg_4_ ( .D(N201), .CLK(net3514), .CLR(n203), .Q(vn_4[4]) );
  fdf2a3 Vins_6_reg_4_ ( .D(N201), .CLK(net3499), .CLR(n203), .Q(vn_6[4]) );
  fa1a2 intadd_0_U7 ( .A(n_zz_17[1]), .B(n_zz_16[1]), .CI(intadd_0_CI), .CO(
        intadd_0_n6), .S(mean[1]) );
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
  fdf2a3 min_v_reg_7_ ( .D(N236), .CLK(net3484), .CLR(resetn), .Q(n_zz_17_8)
         );
  and2c1 U3 ( .A(n14), .B(v_cnt_2_), .Y(n196) );
  ao1d3 U4 ( .A(n48), .B(n174), .C(n173), .Y(N198) );
  or2c3 U5 ( .A(n151), .B(n150), .Y(n185) );
  ao1d3 U6 ( .A(n45), .B(n174), .C(n173), .Y(n46) );
  ao1d3 U7 ( .A(n154), .B(n174), .C(n173), .Y(N197) );
  ao1d3 U8 ( .A(n165), .B(n174), .C(n173), .Y(N202) );
  ao1d3 U9 ( .A(n169), .B(n174), .C(n173), .Y(N200) );
  ao1d3 U10 ( .A(n144), .B(n174), .C(n173), .Y(n159) );
  inv1a3 U11 ( .A(n148), .Y(n150) );
  mx2d3 U12 ( .D0(vin2[6]), .D1(vin1[6]), .S(n68), .Y(n115) );
  or2c6 U13 ( .A(n44), .B(n97), .Y(n173) );
  inv1a9 U14 ( .A(n_zz_24_1_), .Y(n97) );
  clk1b6 U15 ( .A(n39), .Y(n_zz_24_1_) );
  inv1a1 U16 ( .A(vin1[7]), .Y(n43) );
  inv1a1 U17 ( .A(vin1[5]), .Y(n62) );
  clk1b6 U18 ( .A(n189), .Y(n18) );
  clk1b6 U19 ( .A(n14), .Y(n2) );
  inv1a1 U20 ( .A(vin2[6]), .Y(n64) );
  or2c1 U21 ( .A(n95), .B(n94), .Y(n155) );
  or2c1 U22 ( .A(n17), .B(n16), .Y(n42) );
  or2c1 U23 ( .A(n72), .B(n71), .Y(n146) );
  ao1d3 U24 ( .A(n175), .B(n174), .C(n173), .Y(N201) );
  and2a3 U25 ( .A(n36), .B(n35), .Y(n1) );
  inv1a3 U26 ( .A(n96), .Y(n151) );
  fa1a3 U27 ( .A(n147), .B(n146), .CI(n145), .CO(n96), .S(n148) );
  clk1b6 U28 ( .A(n192), .Y(n191) );
  fa1a3 U29 ( .A(vin2[3]), .B(n85), .CI(n170), .CO(n176), .S(n171) );
  fa1a3 U30 ( .A(vin1[3]), .B(n31), .CI(n168), .CO(n172), .S(n169) );
  fa1a3 U31 ( .A(vin2[2]), .B(n88), .CI(n184), .CO(n170), .S(n186) );
  fa1a3 U32 ( .A(vin2[1]), .B(n91), .CI(n149), .CO(n184), .S(n152) );
  fa1a2 U33 ( .A(vin1[1]), .B(n1), .CI(n47), .CO(n40), .S(n48) );
  oa4f3 U34 ( .A(n198), .B(rg_leakage_table_7[2]), .C(n93), .D(
        rg_leakage_table_5[2]), .Y(n86) );
  oa4f3 U35 ( .A(n73), .B(rg_leakage_table_0[2]), .C(n18), .D(
        rg_leakage_table_2[2]), .Y(n33) );
  oa4f3 U36 ( .A(n191), .B(rg_leakage_table_1[3]), .C(n92), .D(
        rg_leakage_table_3[3]), .Y(n84) );
  fa1a3 U37 ( .A(vin2[4]), .B(n82), .CI(n176), .CO(n166), .S(n177) );
  fa1a3 U38 ( .A(vin1[4]), .B(n28), .CI(n172), .CO(n164), .S(n175) );
  inv1a1 U39 ( .A(n98), .Y(n112) );
  oa4f3 U40 ( .A(n191), .B(rg_leakage_table_1[4]), .C(n92), .D(
        rg_leakage_table_3[4]), .Y(n81) );
  oa4f2 U41 ( .A(n191), .B(rg_leakage_table_1[1]), .C(n92), .D(
        rg_leakage_table_3[1]), .Y(n90) );
  oa4f3 U42 ( .A(n191), .B(rg_leakage_table_0[7]), .C(n92), .D(
        rg_leakage_table_2[7]), .Y(n17) );
  oa4f3 U43 ( .A(n73), .B(rg_leakage_table_1[6]), .C(n18), .D(
        rg_leakage_table_3[6]), .Y(n75) );
  oa4f3 U44 ( .A(n73), .B(rg_leakage_table_0[6]), .C(n18), .D(
        rg_leakage_table_2[6]), .Y(n21) );
  oa4f3 U45 ( .A(n73), .B(rg_leakage_table_0[5]), .C(n18), .D(
        rg_leakage_table_2[5]), .Y(n24) );
  oa4f3 U46 ( .A(n73), .B(rg_leakage_table_0[4]), .C(n18), .D(
        rg_leakage_table_2[4]), .Y(n27) );
  oa4f2 U47 ( .A(n198), .B(rg_leakage_table_7[1]), .C(n93), .D(
        rg_leakage_table_5[1]), .Y(n89) );
  oa4f3 U48 ( .A(n198), .B(rg_leakage_table_7[3]), .C(n93), .D(
        rg_leakage_table_5[3]), .Y(n83) );
  oa4f3 U49 ( .A(n73), .B(rg_leakage_table_1[7]), .C(n18), .D(
        rg_leakage_table_3[7]), .Y(n72) );
  buf1a6 U50 ( .A(n191), .Y(n73) );
  or2c6 U51 ( .A(n_zz_20[1]), .B(n49), .Y(n189) );
  clk1b6 U52 ( .A(n_zz_20[1]), .Y(n15) );
  clk1b6 U53 ( .A(n_zz_20[2]), .Y(n49) );
  inv1a3 U54 ( .A(vin2[7]), .Y(n147) );
  fa1a3 U55 ( .A(n43), .B(n42), .CI(n41), .CO(n39), .S(n44) );
  fa1a3 U56 ( .A(vin1[6]), .B(n22), .CI(n143), .CO(n41), .S(n144) );
  fa1a3 U57 ( .A(vin2[6]), .B(n76), .CI(n160), .CO(n145), .S(n161) );
  fa1a3 U58 ( .A(vin1[5]), .B(n25), .CI(n164), .CO(n143), .S(n165) );
  fa1a3 U59 ( .A(vin2[5]), .B(n79), .CI(n166), .CO(n160), .S(n167) );
  mx2d3 U60 ( .D0(vin2[4]), .D1(vin1[4]), .S(n68), .Y(n110) );
  and2a3 U61 ( .A(n27), .B(n26), .Y(n28) );
  and2a3 U62 ( .A(n21), .B(n20), .Y(n22) );
  and2a3 U63 ( .A(n24), .B(n23), .Y(n25) );
  and2a3 U64 ( .A(n75), .B(n74), .Y(n76) );
  and2a3 U65 ( .A(n33), .B(n32), .Y(n34) );
  and2a3 U66 ( .A(n84), .B(n83), .Y(n85) );
  and2a3 U67 ( .A(n87), .B(n86), .Y(n88) );
  and2a3 U68 ( .A(n30), .B(n29), .Y(n31) );
  and2a3 U69 ( .A(n81), .B(n80), .Y(n82) );
  and2a3 U70 ( .A(n78), .B(n77), .Y(n79) );
  and2a3 U71 ( .A(n90), .B(n89), .Y(n91) );
  oa4f3 U72 ( .A(n191), .B(rg_leakage_table_1[5]), .C(n92), .D(
        rg_leakage_table_3[5]), .Y(n78) );
  oa4f2 U73 ( .A(n191), .B(rg_leakage_table_1[2]), .C(n92), .D(
        rg_leakage_table_3[2]), .Y(n87) );
  oa4f3 U74 ( .A(n198), .B(rg_leakage_table_7[7]), .C(n19), .D(
        rg_leakage_table_5[7]), .Y(n71) );
  buf1a6 U75 ( .A(n18), .Y(n92) );
  oa4f2 U76 ( .A(n198), .B(rg_leakage_table_6[1]), .C(n19), .D(
        rg_leakage_table_4[1]), .Y(n35) );
  oa4f3 U77 ( .A(n198), .B(rg_leakage_table_7[6]), .C(n19), .D(
        rg_leakage_table_5[6]), .Y(n74) );
  oa4f3 U78 ( .A(n198), .B(rg_leakage_table_6[2]), .C(n19), .D(
        rg_leakage_table_4[2]), .Y(n32) );
  oa4f3 U79 ( .A(n14), .B(rg_leakage_table_6[6]), .C(n19), .D(
        rg_leakage_table_4[6]), .Y(n20) );
  buf1a6 U80 ( .A(n19), .Y(n93) );
  clk1b6 U81 ( .A(n194), .Y(n19) );
  and2c6 U82 ( .A(n15), .B(n49), .Y(n14) );
  inv1a3 U83 ( .A(n_zz_16[0]), .Y(n123) );
  buf1a6 U84 ( .A(resetn), .Y(n200) );
  buf1a6 U85 ( .A(resetn), .Y(n202) );
  buf1a6 U86 ( .A(resetn), .Y(n203) );
  and2c2 U87 ( .A(vin2[7]), .B(vin1[7]), .Y(n117) );
  and2c3 U88 ( .A(n141), .B(n189), .Y(N248) );
  and2c3 U89 ( .A(n141), .B(n2), .Y(N252) );
  and2c3 U90 ( .A(n141), .B(n194), .Y(N250) );
  buf1a9 U91 ( .A(resetn), .Y(n204) );
  oa4f1 U92 ( .A(n14), .B(rg_leakage_table_6[7]), .C(n93), .D(
        rg_leakage_table_4[7]), .Y(n16) );
  buf1a9 U93 ( .A(resetn), .Y(n205) );
  inv1a9 U94 ( .A(n2), .Y(n198) );
  and2c3 U95 ( .A(valid_num[0]), .B(valid_num[1]), .Y(n50) );
  or2c6 U96 ( .A(n_zz_20[2]), .B(n15), .Y(n194) );
  or2c6 U97 ( .A(n15), .B(n49), .Y(n192) );
  and2c3 U98 ( .A(n_zz_20[1]), .B(n197), .Y(N219) );
  inv1a3 U99 ( .A(n53), .Y(n197) );
  oa4f3 U100 ( .A(n198), .B(rg_leakage_table_6[5]), .C(n19), .D(
        rg_leakage_table_4[5]), .Y(n23) );
  oa4f3 U101 ( .A(n198), .B(rg_leakage_table_6[4]), .C(n19), .D(
        rg_leakage_table_4[4]), .Y(n26) );
  oa4f3 U102 ( .A(n73), .B(rg_leakage_table_0[3]), .C(n18), .D(
        rg_leakage_table_2[3]), .Y(n30) );
  oa4f3 U103 ( .A(n198), .B(rg_leakage_table_6[3]), .C(n19), .D(
        rg_leakage_table_4[3]), .Y(n29) );
  oa4f3 U104 ( .A(n73), .B(rg_leakage_table_0[1]), .C(n18), .D(
        rg_leakage_table_2[1]), .Y(n36) );
  oa4f3 U105 ( .A(n73), .B(rg_leakage_table_0[0]), .C(n18), .D(
        rg_leakage_table_2[0]), .Y(n38) );
  oa4f3 U106 ( .A(n198), .B(rg_leakage_table_6[0]), .C(n19), .D(
        rg_leakage_table_4[0]), .Y(n37) );
  or2c3 U107 ( .A(n38), .B(n37), .Y(n153) );
  or2b2 U108 ( .B(vin1[0]), .A(n153), .Y(n47) );
  fa1a2 U109 ( .A(vin1[2]), .B(n34), .CI(n40), .CO(n168), .S(n45) );
  or2a6 U110 ( .A(n44), .B(n97), .Y(n174) );
  or2c15 U111 ( .A(vin_vld), .B(en), .Y(n141) );
  clk1b6 U112 ( .A(n141), .Y(N132) );
  mulpa1b1 U113 ( .X0(n_zz_20[2]), .X1(n49), .S(valid_num[1]), .Z(valid_num[0]), .M(n_zz_20[1]), .P(n52) );
  xor3b3 U114 ( .A(v_cnt_2_), .B(n50), .C(valid_num[2]), .Y(n51) );
  ao2i3 U115 ( .A(n_zz_20[1]), .B(valid_num[0]), .C(n52), .D(n51), .Y(n53) );
  buf1a6 U116 ( .A(resetn), .Y(n199) );
  buf1a6 U117 ( .A(resetn), .Y(n201) );
  or2c1 U118 ( .A(vin2[7]), .B(vin1[7]), .Y(n138) );
  and2c3 U119 ( .A(rg_bypass_mean), .B(n138), .Y(N245) );
  and2c3 U120 ( .A(rg_bypass_mean), .B(n117), .Y(N236) );
  and2c3 U121 ( .A(n141), .B(n53), .Y(mean_finish) );
  oa1f3 U122 ( .A(n189), .B(n194), .C(n197), .Y(N220) );
  inv1a3 U123 ( .A(vin2[4]), .Y(n60) );
  inv1a1 U124 ( .A(vin1[3]), .Y(n58) );
  inv1a1 U125 ( .A(vin2[2]), .Y(n56) );
  clk1b6 U126 ( .A(vin1[1]), .Y(n54) );
  fac2a1 U127 ( .A(n54), .B(vin2[1]), .CI(vin2[0]), .CO(n55) );
  fac2a1 U128 ( .A(vin1[2]), .B(n56), .CI(n55), .CO(n57) );
  fac2a1 U129 ( .A(n58), .B(vin2[3]), .CI(n57), .CO(n59) );
  fac2a1 U130 ( .A(n60), .B(n59), .CI(vin1[4]), .CO(n61) );
  fac2a1 U131 ( .A(n62), .B(vin2[5]), .CI(n61), .CO(n63) );
  fac2a1 U132 ( .A(n64), .B(vin1[6]), .CI(n63), .CO(n65) );
  fac2a1 U133 ( .A(n147), .B(vin1[7]), .CI(n65), .CO(n66) );
  buf1a9 U134 ( .A(n66), .Y(n69) );
  inv1a15 U135 ( .A(n69), .Y(n68) );
  ao4f3 U136 ( .A(n69), .B(vin1[5]), .C(n68), .D(vin2[5]), .Y(n98) );
  and2c3 U137 ( .A(rg_bypass_mean), .B(n98), .Y(N234) );
  ao4f3 U138 ( .A(n69), .B(vin2[0]), .C(n68), .D(vin1[0]), .Y(n120) );
  and2c3 U139 ( .A(rg_bypass_mean), .B(n120), .Y(N238) );
  ao4f3 U140 ( .A(n69), .B(vin1[1]), .C(n68), .D(vin2[1]), .Y(n102) );
  and2c3 U141 ( .A(rg_bypass_mean), .B(n102), .Y(N230) );
  ao4f3 U142 ( .A(n69), .B(vin2[2]), .C(n68), .D(vin1[2]), .Y(n126) );
  and2c3 U143 ( .A(rg_bypass_mean), .B(n126), .Y(N240) );
  oa4f3 U144 ( .A(n68), .B(vin2[5]), .C(n69), .D(vin1[5]), .Y(n119) );
  and2c3 U145 ( .A(rg_bypass_mean), .B(n119), .Y(N243) );
  oa4f3 U146 ( .A(n68), .B(vin2[3]), .C(n69), .D(vin1[3]), .Y(n127) );
  and2c3 U147 ( .A(rg_bypass_mean), .B(n127), .Y(N241) );
  oa4f3 U148 ( .A(n68), .B(vin2[1]), .C(n69), .D(vin1[1]), .Y(n121) );
  and2c3 U149 ( .A(rg_bypass_mean), .B(n121), .Y(N239) );
  inv1a1 U150 ( .A(vin1[0]), .Y(n67) );
  ao4c6 U151 ( .A(n68), .B(vin2[0]), .C(n68), .D(n67), .Y(n100) );
  and2c3 U152 ( .A(rg_bypass_mean), .B(n100), .Y(N229) );
  mx2d3 U153 ( .D0(vin2[2]), .D1(vin1[2]), .S(n68), .Y(n99) );
  and2c3 U154 ( .A(rg_bypass_mean), .B(n99), .Y(N231) );
  and2c3 U155 ( .A(rg_bypass_mean), .B(n115), .Y(N235) );
  and2c3 U156 ( .A(rg_bypass_mean), .B(n110), .Y(N233) );
  ao4f3 U157 ( .A(n69), .B(vin1[3]), .C(n68), .D(vin2[3]), .Y(n107) );
  and2c3 U158 ( .A(rg_bypass_mean), .B(n107), .Y(N232) );
  ao4f3 U159 ( .A(n69), .B(vin2[6]), .C(n68), .D(vin1[6]), .Y(n137) );
  and2c3 U160 ( .A(rg_bypass_mean), .B(n137), .Y(N244) );
  ao4f3 U161 ( .A(n69), .B(vin2[4]), .C(n68), .D(vin1[4]), .Y(n132) );
  and2c3 U162 ( .A(rg_bypass_mean), .B(n132), .Y(N242) );
  inv1a1 U163 ( .A(n_zz_17[0]), .Y(n70) );
  and2c3 U164 ( .A(n70), .B(n123), .Y(intadd_0_CI) );
  oa1f3 U165 ( .A(n70), .B(n123), .C(intadd_0_CI), .Y(mean[0]) );
  oa4f3 U166 ( .A(n198), .B(rg_leakage_table_7[5]), .C(n93), .D(
        rg_leakage_table_5[5]), .Y(n77) );
  oa4f3 U167 ( .A(n198), .B(rg_leakage_table_7[4]), .C(n93), .D(
        rg_leakage_table_5[4]), .Y(n80) );
  oa4f3 U168 ( .A(n191), .B(rg_leakage_table_1[0]), .C(n92), .D(
        rg_leakage_table_3[0]), .Y(n95) );
  oa4f3 U169 ( .A(n198), .B(rg_leakage_table_7[0]), .C(n93), .D(
        rg_leakage_table_5[0]), .Y(n94) );
  or2b2 U170 ( .B(vin2[0]), .A(n155), .Y(n149) );
  ao4f3 U171 ( .A(n191), .B(n97), .C(n192), .D(n96), .Y(N154) );
  ao4f3 U172 ( .A(n198), .B(n97), .C(n2), .D(n96), .Y(N214) );
  ao4f3 U173 ( .A(n92), .B(n97), .C(n189), .D(n96), .Y(N174) );
  ao4f3 U174 ( .A(n93), .B(n97), .C(n194), .D(n96), .Y(N194) );
  and2c3 U175 ( .A(n141), .B(n192), .Y(N246) );
  inv1a1 U176 ( .A(n_zz_17[4]), .Y(n113) );
  inv1a1 U177 ( .A(n99), .Y(n105) );
  and2a6 U178 ( .A(n100), .B(min_v_0_), .Y(n101) );
  fac2a1 U179 ( .A(n_zz_17[0]), .B(n102), .CI(n101), .CO(n104) );
  inv1a1 U180 ( .A(n_zz_17[1]), .Y(n103) );
  fac2a1 U181 ( .A(n105), .B(n104), .CI(n103), .CO(n106) );
  fac2a1 U182 ( .A(n_zz_17[2]), .B(n107), .CI(n106), .CO(n108) );
  inv1a2 U183 ( .A(n108), .Y(n109) );
  fac2a1 U184 ( .A(n_zz_17[3]), .B(n110), .CI(n109), .CO(n111) );
  fac2a1 U185 ( .A(n113), .B(n112), .CI(n111), .CO(n114) );
  fac2a1 U186 ( .A(n_zz_17[5]), .B(n115), .CI(n114), .CO(n116) );
  fac2a1 U187 ( .A(n117), .B(n_zz_17_8), .CI(n116), .CO(n118) );
  oa4e3 U188 ( .C(N132), .D(rg_bypass_mean), .B(v_cnt_2_), .A(N246), .Y(n140)
         );
  ao1d2 U189 ( .A(n118), .B(N132), .C(n140), .Y(N255) );
  inv1a1 U190 ( .A(n_zz_16[4]), .Y(n135) );
  inv1a1 U191 ( .A(n119), .Y(n134) );
  and2c3 U192 ( .A(max_v_0_), .B(n120), .Y(n124) );
  inv1a1 U193 ( .A(n121), .Y(n122) );
  fac2a1 U194 ( .A(n124), .B(n123), .CI(n122), .CO(n125) );
  fac2a1 U195 ( .A(n126), .B(n125), .CI(n_zz_16[1]), .CO(n130) );
  inv1a1 U196 ( .A(n_zz_16[2]), .Y(n129) );
  inv1a1 U197 ( .A(n127), .Y(n128) );
  fac2a1 U198 ( .A(n130), .B(n129), .CI(n128), .CO(n131) );
  fac2a1 U199 ( .A(n_zz_16[3]), .B(n132), .CI(n131), .CO(n133) );
  fac2a1 U200 ( .A(n135), .B(n134), .CI(n133), .CO(n136) );
  fac2a1 U201 ( .A(n_zz_16[5]), .B(n137), .CI(n136), .CO(n139) );
  fac2a1 U202 ( .A(n_zz_16_8), .B(n139), .CI(n138), .CO(n142) );
  ao1f2 U203 ( .A(n142), .B(n141), .C(n140), .Y(N254) );
  and2c6 U204 ( .A(n151), .B(n150), .Y(n187) );
  ao1f3 U205 ( .A(n187), .B(n152), .C(n185), .Y(n193) );
  ao4c2 U206 ( .A(n189), .B(n193), .C(n189), .D(N198), .Y(N168) );
  xor2a2 U207 ( .A(vin1[0]), .B(n153), .Y(n154) );
  inv1a3 U208 ( .A(N197), .Y(n158) );
  xor2a2 U209 ( .A(vin2[0]), .B(n155), .Y(n156) );
  ao1f3 U210 ( .A(n187), .B(n156), .C(n185), .Y(n157) );
  ao4f3 U211 ( .A(n198), .B(n158), .C(n2), .D(n157), .Y(N207) );
  ao4f3 U212 ( .A(n93), .B(n158), .C(n194), .D(n157), .Y(N187) );
  ao4f3 U213 ( .A(n92), .B(n158), .C(n189), .D(n157), .Y(N167) );
  ao4f3 U214 ( .A(n191), .B(n158), .C(n192), .D(n157), .Y(N147) );
  inv1a3 U215 ( .A(n159), .Y(n163) );
  ao1f3 U216 ( .A(n187), .B(n161), .C(n185), .Y(n162) );
  ao4f3 U217 ( .A(n14), .B(n163), .C(n2), .D(n162), .Y(N213) );
  ao4f3 U218 ( .A(n92), .B(n163), .C(n189), .D(n162), .Y(N173) );
  ao4f3 U219 ( .A(n191), .B(n163), .C(n192), .D(n162), .Y(N153) );
  ao4f3 U220 ( .A(n93), .B(n163), .C(n194), .D(n162), .Y(N193) );
  inv1a3 U221 ( .A(N202), .Y(n179) );
  ao1f3 U222 ( .A(n187), .B(n167), .C(n185), .Y(n178) );
  ao4f3 U223 ( .A(n14), .B(n179), .C(n2), .D(n178), .Y(N212) );
  inv1a3 U224 ( .A(N200), .Y(n181) );
  ao1f3 U225 ( .A(n187), .B(n171), .C(n185), .Y(n180) );
  ao4f3 U226 ( .A(n14), .B(n181), .C(n2), .D(n180), .Y(N210) );
  inv1a3 U227 ( .A(N201), .Y(n183) );
  ao1f3 U228 ( .A(n187), .B(n177), .C(n185), .Y(n182) );
  ao4f3 U229 ( .A(n198), .B(n183), .C(n2), .D(n182), .Y(N211) );
  ao4f3 U230 ( .A(n93), .B(n181), .C(n194), .D(n180), .Y(N190) );
  ao4f3 U231 ( .A(n93), .B(n179), .C(n194), .D(n178), .Y(N192) );
  ao4f3 U232 ( .A(n93), .B(n183), .C(n194), .D(n182), .Y(N191) );
  ao4f3 U233 ( .A(n191), .B(n181), .C(n192), .D(n180), .Y(N150) );
  ao4f3 U234 ( .A(n191), .B(n183), .C(n192), .D(n182), .Y(N151) );
  ao4f3 U235 ( .A(n191), .B(n179), .C(n192), .D(n178), .Y(N152) );
  ao4f3 U236 ( .A(n92), .B(n179), .C(n189), .D(n178), .Y(N172) );
  ao4f3 U237 ( .A(n92), .B(n181), .C(n189), .D(n180), .Y(N170) );
  ao4f3 U238 ( .A(n92), .B(n183), .C(n189), .D(n182), .Y(N171) );
  inv1a3 U239 ( .A(n46), .Y(n190) );
  ao1f3 U240 ( .A(n187), .B(n186), .C(n185), .Y(n188) );
  ao4f3 U241 ( .A(n14), .B(n190), .C(n2), .D(n188), .Y(N209) );
  ao4f3 U242 ( .A(n93), .B(n190), .C(n194), .D(n188), .Y(N189) );
  ao4f3 U243 ( .A(n191), .B(n190), .C(n192), .D(n188), .Y(N149) );
  ao4f3 U244 ( .A(n92), .B(n190), .C(n189), .D(n188), .Y(N169) );
  inv1a3 U245 ( .A(N198), .Y(n195) );
  ao4e3 U246 ( .B(n192), .A(n195), .C(n192), .D(n193), .Y(N148) );
  ao4f3 U247 ( .A(n14), .B(n195), .C(n2), .D(n193), .Y(N208) );
  ao4f3 U248 ( .A(n93), .B(n195), .C(n194), .D(n193), .Y(N188) );
  inv1a1 U249 ( .A(n_zz_16_8), .Y(intadd_0_A_5_) );
  inv1a1 U250 ( .A(n_zz_17_8), .Y(intadd_0_B_5_) );
  inv1a1 U251 ( .A(intadd_0_n1), .Y(mean[7]) );
  oa2i2 U252 ( .A(n198), .B(v_cnt_2_), .C(n197), .D(n196), .Y(N221) );
endmodule


module SNPS_CLOCK_GATE_HIGH_booth2_0_1 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3458;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3458) );
  and2a3 main_gate ( .A(net3458), .B(CLK), .Y(ENCLK) );
endmodule


module booth2_1 ( io_din_vld, io_dinA, io_dinB, io_dout_vld, io_dout, clk, 
        resetn );
  input [7:0] io_dinA;
  input [7:0] io_dinB;
  output [15:0] io_dout;
  input io_din_vld, clk, resetn;
  output io_dout_vld;
  wire   n_zz_3_0_, cal_en, cal_en_regNext, N19, N20, N21, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, net3464,
         n29, n30, n31, n32, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69;
  wire   [2:0] cal_cnt;

  SNPS_CLOCK_GATE_HIGH_booth2_0_1 clk_gate_shiftReg_reg ( .CLK(clk), .EN(n32), 
        .ENCLK(net3464) );
  fdf2a3 cal_cnt_reg_0_ ( .D(N19), .CLK(net3464), .CLR(n68), .Q(cal_cnt[0]) );
  fdf2a3 cal_en_reg ( .D(n31), .CLK(clk), .CLR(n68), .Q(cal_en) );
  fdf2a3 cal_cnt_reg_1_ ( .D(N20), .CLK(net3464), .CLR(n68), .Q(cal_cnt[1]) );
  fdf2a3 cal_cnt_reg_2_ ( .D(N21), .CLK(net3464), .CLR(n68), .Q(cal_cnt[2]) );
  fdf2a3 shiftReg_reg_15_ ( .D(N55), .CLK(net3464), .CLR(n68), .Q(io_dout[14])
         );
  fdf2a3 shiftReg_reg_14_ ( .D(N54), .CLK(net3464), .CLR(n68), .Q(io_dout[13])
         );
  fdf2a3 shiftReg_reg_13_ ( .D(N53), .CLK(net3464), .CLR(n68), .Q(io_dout[12])
         );
  fdf2a3 shiftReg_reg_12_ ( .D(N52), .CLK(net3464), .CLR(n68), .Q(io_dout[11])
         );
  fdf2a3 shiftReg_reg_11_ ( .D(N51), .CLK(net3464), .CLR(n68), .Q(io_dout[10])
         );
  fdf2a3 shiftReg_reg_10_ ( .D(N50), .CLK(net3464), .CLR(n68), .Q(io_dout[9])
         );
  fdf2a3 shiftReg_reg_9_ ( .D(N49), .CLK(net3464), .CLR(n69), .Q(io_dout[8])
         );
  fdf2a3 shiftReg_reg_8_ ( .D(N48), .CLK(net3464), .CLR(n69), .Q(io_dout[7])
         );
  fdf2a3 shiftReg_reg_7_ ( .D(N47), .CLK(net3464), .CLR(n69), .Q(io_dout[6])
         );
  fdf2a3 shiftReg_reg_6_ ( .D(N46), .CLK(net3464), .CLR(n69), .Q(io_dout[5])
         );
  fdf2a3 shiftReg_reg_5_ ( .D(N45), .CLK(net3464), .CLR(n69), .Q(io_dout[4])
         );
  fdf2a3 shiftReg_reg_4_ ( .D(N44), .CLK(net3464), .CLR(n69), .Q(io_dout[3])
         );
  fdf2a3 shiftReg_reg_3_ ( .D(N43), .CLK(net3464), .CLR(n69), .Q(io_dout[2])
         );
  fdf2a3 shiftReg_reg_2_ ( .D(N42), .CLK(net3464), .CLR(n69), .Q(io_dout[1])
         );
  fdf2a3 shiftReg_reg_1_ ( .D(N41), .CLK(net3464), .CLR(n69), .Q(io_dout[0])
         );
  fdf2a3 shiftReg_reg_0_ ( .D(N40), .CLK(net3464), .CLR(n69), .Q(n_zz_3_0_) );
  fdf1c2 cal_en_regNext_reg ( .D(n29), .CLK(clk), .QN(cal_en_regNext) );
  fdf2a6 shiftReg_reg_16_ ( .D(n30), .CLK(net3464), .CLR(n68), .Q(io_dout[15])
         );
  mx2a1 U3 ( .D0(n23), .D1(io_dinB[3]), .S(n45), .Y(n35) );
  inv1a1 U4 ( .A(io_dinB[4]), .Y(n33) );
  mx2a1 U5 ( .D0(n13), .D1(io_dinB[2]), .S(n45), .Y(n25) );
  inv1a1 U6 ( .A(io_dinB[3]), .Y(n23) );
  inv1a1 U7 ( .A(io_dinB[2]), .Y(n13) );
  inv1a1 U8 ( .A(io_dinB[1]), .Y(n8) );
  inv1a1 U9 ( .A(io_dinB[0]), .Y(n9) );
  or2c1 U10 ( .A(n59), .B(n58), .Y(n64) );
  or2c1 U11 ( .A(n64), .B(n63), .Y(n30) );
  fa1a3 U12 ( .A(io_dout[12]), .B(n41), .CI(n40), .CO(n47), .S(n36) );
  mx2a1 U13 ( .D0(n33), .D1(io_dinB[4]), .S(n45), .Y(n41) );
  mx2a1 U14 ( .D0(n39), .D1(io_dinB[5]), .S(n45), .Y(n48) );
  xor2a2 U15 ( .A(n57), .B(n56), .Y(n59) );
  mx2a3 U16 ( .D0(n8), .D1(io_dinB[1]), .S(n45), .Y(n15) );
  mx2a3 U17 ( .D0(n9), .D1(io_dinB[0]), .S(n45), .Y(n19) );
  xor2a2 U18 ( .A(n53), .B(io_dinB[7]), .Y(n57) );
  inv1a1 U19 ( .A(io_dinB[5]), .Y(n39) );
  oa4f3 U20 ( .A(io_din_vld), .B(io_dinA[7]), .C(n58), .D(n20), .Y(n21) );
  fa1a2 U21 ( .A(io_dout[14]), .B(n55), .CI(n54), .CO(n56), .S(n49) );
  fa1a2 U22 ( .A(io_dout[13]), .B(n48), .CI(n47), .CO(n54), .S(n42) );
  fa1a2 U23 ( .A(io_dout[11]), .B(n35), .CI(n34), .CO(n40), .S(n26) );
  fa1a2 U24 ( .A(io_dout[10]), .B(n25), .CI(n24), .CO(n34), .S(n16) );
  fa1a2 U25 ( .A(io_dout[9]), .B(n15), .CI(n14), .CO(n24), .S(n10) );
  fa1a2 U26 ( .A(io_dout[8]), .B(n52), .CI(n19), .CO(n14), .S(n20) );
  inv1a3 U27 ( .A(n45), .Y(n52) );
  and2c2 U28 ( .A(n5), .B(n6), .Y(N40) );
  and2c2 U29 ( .A(cal_cnt[0]), .B(n29), .Y(N19) );
  clk1b6 U30 ( .A(n7), .Y(n45) );
  and2c6 U31 ( .A(n62), .B(n6), .Y(n58) );
  inv1a3 U32 ( .A(n65), .Y(n6) );
  inv1a3 U33 ( .A(cal_en), .Y(n29) );
  inv1a3 U34 ( .A(io_dout[0]), .Y(n5) );
  oa1f1 U35 ( .A(n4), .B(n3), .C(n66), .Y(N21) );
  inv1a1 U36 ( .A(io_dinB[6]), .Y(n46) );
  mx2a1 U37 ( .D0(n46), .D1(io_dinB[6]), .S(n45), .Y(n55) );
  xor2a2 U38 ( .A(io_dout[15]), .B(n52), .Y(n53) );
  and2a3 U39 ( .A(cal_en_regNext), .B(n29), .Y(io_dout_vld) );
  or2c1 U40 ( .A(cal_cnt[1]), .B(cal_cnt[0]), .Y(n4) );
  ao2i1 U41 ( .A(cal_cnt[1]), .B(cal_cnt[0]), .C(cal_en), .D(n4), .Y(n2) );
  inv1a1 U42 ( .A(n2), .Y(N20) );
  buf1a6 U43 ( .A(resetn), .Y(n69) );
  buf1a6 U44 ( .A(resetn), .Y(n68) );
  inv1a1 U45 ( .A(cal_cnt[2]), .Y(n3) );
  ao1f1 U46 ( .A(n4), .B(n3), .C(cal_en), .Y(n66) );
  and2c6 U47 ( .A(io_din_vld), .B(n29), .Y(n65) );
  inv1a1 U48 ( .A(io_dout[9]), .Y(n12) );
  and2c3 U49 ( .A(n5), .B(n_zz_3_0_), .Y(n7) );
  oa1f3 U50 ( .A(n_zz_3_0_), .B(n5), .C(n7), .Y(n62) );
  or2c3 U51 ( .A(n62), .B(n65), .Y(n61) );
  or2c1 U52 ( .A(n58), .B(n10), .Y(n11) );
  ao1f2 U53 ( .A(n12), .B(n61), .C(n11), .Y(N49) );
  inv1a1 U54 ( .A(io_dout[10]), .Y(n18) );
  or2c1 U55 ( .A(n58), .B(n16), .Y(n17) );
  ao1f2 U56 ( .A(n18), .B(n61), .C(n17), .Y(N50) );
  inv1a1 U57 ( .A(io_dout[8]), .Y(n22) );
  ao1f2 U58 ( .A(n61), .B(n22), .C(n21), .Y(N48) );
  inv1a1 U59 ( .A(io_dout[11]), .Y(n28) );
  or2c1 U60 ( .A(n58), .B(n26), .Y(n27) );
  ao1f2 U61 ( .A(n28), .B(n61), .C(n27), .Y(N51) );
  inv1a1 U62 ( .A(io_dout[12]), .Y(n38) );
  or2c1 U63 ( .A(n58), .B(n36), .Y(n37) );
  ao1f2 U64 ( .A(n38), .B(n61), .C(n37), .Y(N52) );
  inv1a1 U65 ( .A(io_dout[13]), .Y(n44) );
  or2c1 U66 ( .A(n58), .B(n42), .Y(n43) );
  ao1f2 U67 ( .A(n44), .B(n61), .C(n43), .Y(N53) );
  inv1a1 U68 ( .A(io_dout[14]), .Y(n51) );
  or2c1 U69 ( .A(n58), .B(n49), .Y(n50) );
  ao1f2 U70 ( .A(n51), .B(n61), .C(n50), .Y(N54) );
  inv1a1 U71 ( .A(io_dout[15]), .Y(n60) );
  ao1f2 U72 ( .A(n61), .B(n60), .C(n64), .Y(N55) );
  inv1a1 U73 ( .A(io_din_vld), .Y(n67) );
  or3d1 U74 ( .A(n67), .B(io_dout[15]), .C(n62), .Y(n63) );
  ao4a3 U75 ( .A(io_din_vld), .B(io_dinA[0]), .C(n65), .D(io_dout[1]), .Y(N41)
         );
  ao4a3 U76 ( .A(io_din_vld), .B(io_dinA[1]), .C(n65), .D(io_dout[2]), .Y(N42)
         );
  ao4a3 U77 ( .A(io_din_vld), .B(io_dinA[2]), .C(n65), .D(io_dout[3]), .Y(N43)
         );
  ao4a3 U78 ( .A(io_din_vld), .B(io_dinA[3]), .C(n65), .D(io_dout[4]), .Y(N44)
         );
  ao4a3 U79 ( .A(io_din_vld), .B(io_dinA[4]), .C(n65), .D(io_dout[5]), .Y(N45)
         );
  ao4a3 U80 ( .A(io_din_vld), .B(io_dinA[5]), .C(n65), .D(io_dout[6]), .Y(N46)
         );
  ao4a3 U81 ( .A(io_din_vld), .B(io_dinA[6]), .C(n65), .D(io_dout[7]), .Y(N47)
         );
  or2c1 U82 ( .A(n67), .B(n29), .Y(n32) );
  or2c1 U83 ( .A(n67), .B(n66), .Y(n31) );
endmodule


module SNPS_CLOCK_GATE_HIGH_booth2_0_0 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3458;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3458) );
  and2a3 main_gate ( .A(net3458), .B(CLK), .Y(ENCLK) );
endmodule


module booth2_0 ( io_din_vld, io_dinA, io_dinB, io_dout_vld, io_dout, clk, 
        resetn );
  input [7:0] io_dinA;
  input [7:0] io_dinB;
  output [15:0] io_dout;
  input io_din_vld, clk, resetn;
  output io_dout_vld;
  wire   n_zz_3_0_, cal_en, cal_en_regNext, N19, N20, N21, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, net3464,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72;
  wire   [2:0] cal_cnt;

  SNPS_CLOCK_GATE_HIGH_booth2_0_0 clk_gate_shiftReg_reg ( .CLK(clk), .EN(n69), 
        .ENCLK(net3464) );
  fdf2a3 cal_cnt_reg_0_ ( .D(N19), .CLK(net3464), .CLR(n67), .Q(cal_cnt[0]) );
  fdf2a3 cal_en_reg ( .D(n70), .CLK(clk), .CLR(n67), .Q(cal_en) );
  fdf2a3 cal_cnt_reg_1_ ( .D(N20), .CLK(net3464), .CLR(n67), .Q(cal_cnt[1]) );
  fdf2a3 cal_cnt_reg_2_ ( .D(N21), .CLK(net3464), .CLR(n67), .Q(cal_cnt[2]) );
  fdf2a3 shiftReg_reg_15_ ( .D(N55), .CLK(net3464), .CLR(n67), .Q(io_dout[14])
         );
  fdf2a3 shiftReg_reg_14_ ( .D(N54), .CLK(net3464), .CLR(n67), .Q(io_dout[13])
         );
  fdf2a3 shiftReg_reg_13_ ( .D(N53), .CLK(net3464), .CLR(n67), .Q(io_dout[12])
         );
  fdf2a3 shiftReg_reg_12_ ( .D(N52), .CLK(net3464), .CLR(n67), .Q(io_dout[11])
         );
  fdf2a3 shiftReg_reg_11_ ( .D(N51), .CLK(net3464), .CLR(n67), .Q(io_dout[10])
         );
  fdf2a3 shiftReg_reg_10_ ( .D(N50), .CLK(net3464), .CLR(n67), .Q(io_dout[9])
         );
  fdf2a3 shiftReg_reg_9_ ( .D(N49), .CLK(net3464), .CLR(n68), .Q(io_dout[8])
         );
  fdf2a3 shiftReg_reg_8_ ( .D(N48), .CLK(net3464), .CLR(n68), .Q(io_dout[7])
         );
  fdf2a3 shiftReg_reg_7_ ( .D(N47), .CLK(net3464), .CLR(n68), .Q(io_dout[6])
         );
  fdf2a3 shiftReg_reg_6_ ( .D(N46), .CLK(net3464), .CLR(n68), .Q(io_dout[5])
         );
  fdf2a3 shiftReg_reg_5_ ( .D(N45), .CLK(net3464), .CLR(n68), .Q(io_dout[4])
         );
  fdf2a3 shiftReg_reg_4_ ( .D(N44), .CLK(net3464), .CLR(n68), .Q(io_dout[3])
         );
  fdf2a3 shiftReg_reg_3_ ( .D(N43), .CLK(net3464), .CLR(n68), .Q(io_dout[2])
         );
  fdf2a3 shiftReg_reg_2_ ( .D(N42), .CLK(net3464), .CLR(n68), .Q(io_dout[1])
         );
  fdf2a3 shiftReg_reg_1_ ( .D(N41), .CLK(net3464), .CLR(n68), .Q(io_dout[0])
         );
  fdf2a3 shiftReg_reg_0_ ( .D(N40), .CLK(net3464), .CLR(n68), .Q(n_zz_3_0_) );
  fdf1c2 cal_en_regNext_reg ( .D(n72), .CLK(clk), .QN(cal_en_regNext) );
  fdf2a6 shiftReg_reg_16_ ( .D(n71), .CLK(net3464), .CLR(n67), .Q(io_dout[15])
         );
  inv1a1 U3 ( .A(io_dinB[0]), .Y(n8) );
  or2c1 U4 ( .A(n63), .B(n62), .Y(n71) );
  xor2a2 U5 ( .A(n56), .B(n55), .Y(n58) );
  inv1a1 U6 ( .A(io_dinB[4]), .Y(n28) );
  xor2a2 U7 ( .A(n52), .B(io_dinB[7]), .Y(n56) );
  inv1a1 U8 ( .A(io_dinB[3]), .Y(n18) );
  inv1a1 U9 ( .A(io_dinB[1]), .Y(n7) );
  inv1a1 U10 ( .A(io_dinB[2]), .Y(n12) );
  and2c2 U11 ( .A(n4), .B(n5), .Y(N40) );
  oa4f3 U12 ( .A(io_din_vld), .B(io_dinA[7]), .C(n57), .D(n25), .Y(n26) );
  fa1a2 U13 ( .A(io_dout[14]), .B(n54), .CI(n53), .CO(n55), .S(n48) );
  fa1a2 U14 ( .A(io_dout[13]), .B(n47), .CI(n46), .CO(n53), .S(n41) );
  fa1a2 U15 ( .A(io_dout[12]), .B(n40), .CI(n39), .CO(n46), .S(n35) );
  fa1a2 U16 ( .A(io_dout[11]), .B(n34), .CI(n33), .CO(n39), .S(n21) );
  fa1a2 U17 ( .A(io_dout[10]), .B(n20), .CI(n19), .CO(n33), .S(n15) );
  fa1a2 U18 ( .A(io_dout[9]), .B(n14), .CI(n13), .CO(n19), .S(n9) );
  fa1a2 U19 ( .A(io_dout[8]), .B(n51), .CI(n24), .CO(n13), .S(n25) );
  and2c2 U20 ( .A(cal_cnt[0]), .B(n72), .Y(N19) );
  inv1a3 U21 ( .A(cal_en), .Y(n72) );
  and2c6 U22 ( .A(n61), .B(n5), .Y(n57) );
  inv1a3 U23 ( .A(n64), .Y(n5) );
  mx2a1 U24 ( .D0(n28), .D1(io_dinB[4]), .S(n44), .Y(n40) );
  mx2a1 U25 ( .D0(n18), .D1(io_dinB[3]), .S(n44), .Y(n34) );
  mx2a1 U26 ( .D0(n12), .D1(io_dinB[2]), .S(n44), .Y(n20) );
  mx2a1 U27 ( .D0(n7), .D1(io_dinB[1]), .S(n44), .Y(n14) );
  inv1a3 U28 ( .A(n44), .Y(n51) );
  mx2a1 U29 ( .D0(n8), .D1(io_dinB[0]), .S(n44), .Y(n24) );
  inv1a3 U30 ( .A(io_dout[0]), .Y(n4) );
  oa1f1 U31 ( .A(n3), .B(n2), .C(n65), .Y(N21) );
  ao1f1 U32 ( .A(n3), .B(n2), .C(cal_en), .Y(n65) );
  inv1a1 U33 ( .A(io_dinB[6]), .Y(n45) );
  mx2a1 U34 ( .D0(n45), .D1(io_dinB[6]), .S(n44), .Y(n54) );
  inv1a1 U35 ( .A(io_dinB[5]), .Y(n38) );
  mx2a1 U36 ( .D0(n38), .D1(io_dinB[5]), .S(n44), .Y(n47) );
  xor2a2 U37 ( .A(io_dout[15]), .B(n51), .Y(n52) );
  or2c1 U38 ( .A(cal_cnt[1]), .B(cal_cnt[0]), .Y(n3) );
  ao2i1 U39 ( .A(cal_cnt[1]), .B(cal_cnt[0]), .C(cal_en), .D(n3), .Y(n1) );
  inv1a1 U40 ( .A(n1), .Y(N20) );
  buf1a6 U41 ( .A(resetn), .Y(n68) );
  buf1a6 U42 ( .A(resetn), .Y(n67) );
  inv1a1 U43 ( .A(cal_cnt[2]), .Y(n2) );
  and2c6 U44 ( .A(io_din_vld), .B(n72), .Y(n64) );
  inv1a1 U45 ( .A(io_dout[9]), .Y(n11) );
  and2c3 U46 ( .A(n4), .B(n_zz_3_0_), .Y(n6) );
  oa1f3 U47 ( .A(n_zz_3_0_), .B(n4), .C(n6), .Y(n61) );
  or2c3 U48 ( .A(n61), .B(n64), .Y(n60) );
  inv1a3 U49 ( .A(n6), .Y(n44) );
  or2c1 U50 ( .A(n57), .B(n9), .Y(n10) );
  ao1f2 U51 ( .A(n11), .B(n60), .C(n10), .Y(N49) );
  inv1a1 U52 ( .A(io_dout[10]), .Y(n17) );
  or2c1 U53 ( .A(n57), .B(n15), .Y(n16) );
  ao1f2 U54 ( .A(n17), .B(n60), .C(n16), .Y(N50) );
  inv1a1 U55 ( .A(io_dout[11]), .Y(n23) );
  or2c1 U56 ( .A(n57), .B(n21), .Y(n22) );
  ao1f2 U57 ( .A(n23), .B(n60), .C(n22), .Y(N51) );
  inv1a1 U58 ( .A(io_dout[8]), .Y(n27) );
  ao1f2 U59 ( .A(n60), .B(n27), .C(n26), .Y(N48) );
  inv1a1 U60 ( .A(io_dout[12]), .Y(n37) );
  or2c1 U61 ( .A(n57), .B(n35), .Y(n36) );
  ao1f2 U62 ( .A(n37), .B(n60), .C(n36), .Y(N52) );
  inv1a1 U63 ( .A(io_dout[13]), .Y(n43) );
  or2c1 U64 ( .A(n57), .B(n41), .Y(n42) );
  ao1f2 U65 ( .A(n43), .B(n60), .C(n42), .Y(N53) );
  inv1a1 U66 ( .A(io_dout[14]), .Y(n50) );
  or2c1 U67 ( .A(n57), .B(n48), .Y(n49) );
  ao1f2 U68 ( .A(n50), .B(n60), .C(n49), .Y(N54) );
  inv1a1 U69 ( .A(io_dout[15]), .Y(n59) );
  or2c3 U70 ( .A(n58), .B(n57), .Y(n62) );
  ao1f2 U71 ( .A(n60), .B(n59), .C(n62), .Y(N55) );
  inv1a1 U72 ( .A(io_din_vld), .Y(n66) );
  or3d1 U73 ( .A(n66), .B(io_dout[15]), .C(n61), .Y(n63) );
  and2a1 U74 ( .A(cal_en_regNext), .B(n72), .Y(io_dout_vld) );
  ao4a3 U75 ( .A(io_din_vld), .B(io_dinA[0]), .C(n64), .D(io_dout[1]), .Y(N41)
         );
  ao4a3 U76 ( .A(io_din_vld), .B(io_dinA[1]), .C(n64), .D(io_dout[2]), .Y(N42)
         );
  ao4a3 U77 ( .A(io_din_vld), .B(io_dinA[2]), .C(n64), .D(io_dout[3]), .Y(N43)
         );
  ao4a3 U78 ( .A(io_din_vld), .B(io_dinA[3]), .C(n64), .D(io_dout[4]), .Y(N44)
         );
  ao4a3 U79 ( .A(io_din_vld), .B(io_dinA[4]), .C(n64), .D(io_dout[5]), .Y(N45)
         );
  ao4a3 U80 ( .A(io_din_vld), .B(io_dinA[5]), .C(n64), .D(io_dout[6]), .Y(N46)
         );
  ao4a3 U81 ( .A(io_din_vld), .B(io_dinA[6]), .C(n64), .D(io_dout[7]), .Y(N47)
         );
  or2c1 U82 ( .A(n66), .B(n72), .Y(n69) );
  or2c1 U83 ( .A(n66), .B(n65), .Y(n70) );
endmodule


module SNPS_CLOCK_GATE_HIGH_dotVn_2 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3441;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3441) );
  and2a3 main_gate ( .A(net3441), .B(CLK), .Y(ENCLK) );
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
         N174, N175, N176, N177, N183, N184, N185, N189, net3447, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, intadd_1_CI, intadd_1_SUM_10_,
         intadd_1_SUM_9_, intadd_1_SUM_8_, intadd_1_SUM_7_, intadd_1_SUM_6_,
         intadd_1_SUM_5_, intadd_1_SUM_4_, intadd_1_SUM_3_, intadd_1_SUM_2_,
         intadd_1_SUM_1_, intadd_1_SUM_0_, intadd_1_n11, intadd_1_n10,
         intadd_1_n9, intadd_1_n8, intadd_1_n7, intadd_1_n6, intadd_1_n5,
         intadd_1_n4, intadd_1_n3, intadd_1_n2, intadd_1_n1, intadd_2_CI,
         intadd_2_SUM_10_, intadd_2_SUM_9_, intadd_2_SUM_8_, intadd_2_SUM_7_,
         intadd_2_SUM_6_, intadd_2_SUM_5_, intadd_2_SUM_4_, intadd_2_SUM_3_,
         intadd_2_SUM_2_, intadd_2_SUM_1_, intadd_2_SUM_0_, intadd_2_n11,
         intadd_2_n10, intadd_2_n9, intadd_2_n8, intadd_2_n7, intadd_2_n6,
         intadd_2_n5, intadd_2_n4, intadd_2_n3, intadd_2_n2, intadd_2_n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
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
         n189, n190, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4;
  wire   [13:0] n_zz_9;
  wire   [13:0] n_zz_10;
  wire   [14:0] psum1;
  wire   [14:0] psum2;
  wire   [2:0] mac_cnt;
  wire   [7:0] vin_minus_mean;

  booth2_1 booth_sin ( .io_din_vld(booth_start), .io_dinA(vin_minus_mean), 
        .io_dinB({n199, n198, n197, n196, n195, n194, n193, n192}), 
        .io_dout_vld(booth_sin_io_dout_vld), .io_dout({n_zz_9, 
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2}), .clk(clk), .resetn(
        n333) );
  booth2_0 booth_cos ( .io_din_vld(booth_start), .io_dinA(vin_minus_mean), 
        .io_dinB({n207, n206, n205, n204, n203, n202, n201, n200}), .io_dout({
        n_zz_10, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4}), .clk(clk), 
        .resetn(n333) );
  SNPS_CLOCK_GATE_HIGH_dotVn_2 clk_gate_psum2_reg ( .CLK(clk), .EN(
        booth_sin_io_dout_vld), .ENCLK(net3447) );
  fdf2a3 mac_en_reg ( .D(n191), .CLK(clk), .CLR(n333), .Q(mac_en) );
  fdf2a3 mac_cnt_reg_2_ ( .D(N185), .CLK(net3447), .CLR(n333), .Q(mac_cnt[2])
         );
  fdf2a3 mac_cnt_reg_0_ ( .D(N183), .CLK(net3447), .CLR(n333), .Q(mac_cnt[0])
         );
  fdf2a3 mac_cnt_reg_1_ ( .D(N184), .CLK(net3447), .CLR(n333), .Q(mac_cnt[1])
         );
  fdf2a3 finish_reg ( .D(N189), .CLK(clk), .CLR(n333), .Q(psum_vld) );
  fdf2a3 psum2_reg_0_ ( .D(N159), .CLK(net3447), .CLR(n333), .Q(psum2[0]) );
  fdf2a3 psum2_reg_1_ ( .D(N160), .CLK(net3447), .CLR(n333), .Q(psum2[1]) );
  fdf2a3 psum2_reg_2_ ( .D(N161), .CLK(net3447), .CLR(n333), .Q(psum2[2]) );
  fdf2a3 psum2_reg_3_ ( .D(N162), .CLK(net3447), .CLR(n333), .Q(psum2[3]) );
  fdf2a3 psum2_reg_4_ ( .D(N163), .CLK(net3447), .CLR(n333), .Q(psum2[4]) );
  fdf2a3 psum2_reg_5_ ( .D(N164), .CLK(net3447), .CLR(n333), .Q(psum2[5]) );
  fdf2a3 psum2_reg_6_ ( .D(N165), .CLK(net3447), .CLR(n333), .Q(psum2[6]) );
  fdf2a3 psum2_reg_7_ ( .D(N166), .CLK(net3447), .CLR(n333), .Q(psum2[7]) );
  fdf2a3 psum2_reg_8_ ( .D(N167), .CLK(net3447), .CLR(n333), .Q(psum2[8]) );
  fdf2a3 psum2_reg_9_ ( .D(N168), .CLK(net3447), .CLR(n333), .Q(psum2[9]) );
  fdf2a3 psum2_reg_10_ ( .D(N169), .CLK(net3447), .CLR(n334), .Q(psum2[10]) );
  fdf2a3 psum2_reg_11_ ( .D(N170), .CLK(net3447), .CLR(n334), .Q(psum2[11]) );
  fdf2a3 psum2_reg_12_ ( .D(N171), .CLK(net3447), .CLR(n334), .Q(psum2[12]) );
  fdf2a3 psum2_reg_13_ ( .D(N172), .CLK(net3447), .CLR(n334), .Q(psum2[13]) );
  fdf2a3 psum2_reg_14_ ( .D(N173), .CLK(net3447), .CLR(n334), .Q(psum2[14]) );
  fdf2a3 psum2_reg_17_ ( .D(N176), .CLK(net3447), .CLR(n334), .Q(n_zz_13_2_)
         );
  fdf2a3 psum1_reg_17_ ( .D(N157), .CLK(net3447), .CLR(n334), .Q(n_zz_11_2_)
         );
  fdf2a3 psum1_reg_16_ ( .D(N156), .CLK(net3447), .CLR(n334), .Q(n_zz_11_1_)
         );
  fdf2a3 psum1_reg_15_ ( .D(N155), .CLK(net3447), .CLR(n334), .Q(n_zz_11_0_)
         );
  fdf2a3 psum1_reg_14_ ( .D(N154), .CLK(net3447), .CLR(n334), .Q(psum1[14]) );
  fdf2a3 psum1_reg_13_ ( .D(N153), .CLK(net3447), .CLR(n334), .Q(psum1[13]) );
  fdf2a3 psum1_reg_12_ ( .D(N152), .CLK(net3447), .CLR(n334), .Q(psum1[12]) );
  fdf2a3 psum1_reg_11_ ( .D(N151), .CLK(net3447), .CLR(n334), .Q(psum1[11]) );
  fdf2a3 psum1_reg_9_ ( .D(N149), .CLK(net3447), .CLR(n334), .Q(psum1[9]) );
  fdf2a3 psum1_reg_8_ ( .D(N148), .CLK(net3447), .CLR(resetn), .Q(psum1[8]) );
  fdf2a3 psum1_reg_7_ ( .D(N147), .CLK(net3447), .CLR(resetn), .Q(psum1[7]) );
  fdf2a3 psum1_reg_6_ ( .D(N146), .CLK(net3447), .CLR(resetn), .Q(psum1[6]) );
  fdf2a3 psum1_reg_5_ ( .D(N145), .CLK(net3447), .CLR(resetn), .Q(psum1[5]) );
  fdf2a3 psum1_reg_4_ ( .D(N144), .CLK(net3447), .CLR(resetn), .Q(psum1[4]) );
  fdf2a3 psum1_reg_3_ ( .D(N143), .CLK(net3447), .CLR(resetn), .Q(psum1[3]) );
  fdf2a3 psum1_reg_2_ ( .D(N142), .CLK(net3447), .CLR(resetn), .Q(psum1[2]) );
  fdf2a3 psum1_reg_1_ ( .D(N141), .CLK(net3447), .CLR(resetn), .Q(psum1[1]) );
  fdf2a3 psum1_reg_0_ ( .D(N140), .CLK(net3447), .CLR(resetn), .Q(psum1[0]) );
  fdf2a3 psum1_reg_18_ ( .D(N158), .CLK(net3447), .CLR(n334), .Q(psum_out1[15]) );
  fdf2a3 psum2_reg_15_ ( .D(N174), .CLK(net3447), .CLR(n334), .Q(n_zz_13_0_)
         );
  fdf2a3 psum2_reg_16_ ( .D(N175), .CLK(net3447), .CLR(n334), .Q(n_zz_13_1_)
         );
  fdf2a3 psum2_reg_18_ ( .D(N177), .CLK(net3447), .CLR(n334), .Q(psum_out2[15]) );
  fa1a2 intadd_2_U12 ( .A(n_zz_10[2]), .B(psum2[2]), .CI(intadd_2_CI), .CO(
        intadd_2_n11), .S(intadd_2_SUM_0_) );
  fa1a2 intadd_2_U11 ( .A(n_zz_10[3]), .B(psum2[3]), .CI(intadd_2_n11), .CO(
        intadd_2_n10), .S(intadd_2_SUM_1_) );
  fa1a2 intadd_2_U10 ( .A(n_zz_10[4]), .B(psum2[4]), .CI(intadd_2_n10), .CO(
        intadd_2_n9), .S(intadd_2_SUM_2_) );
  fa1a2 intadd_2_U9 ( .A(n_zz_10[5]), .B(psum2[5]), .CI(intadd_2_n9), .CO(
        intadd_2_n8), .S(intadd_2_SUM_3_) );
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
  fdf2c3 psum1_reg_10_ ( .D(N150), .CLK(net3447), .CLR(resetn), .QN(n332) );
  fdf2a9 booth_start_reg ( .D(N91), .CLK(clk), .CLR(n333), .Q(booth_start) );
  fa1a3 intadd_2_U6 ( .A(n_zz_10[8]), .B(psum2[8]), .CI(intadd_2_n6), .CO(
        intadd_2_n5), .S(intadd_2_SUM_6_) );
  fa1a3 intadd_1_U5 ( .A(n_zz_9[9]), .B(psum1[9]), .CI(intadd_1_n5), .CO(
        intadd_1_n4), .S(intadd_1_SUM_7_) );
  fa1a3 intadd_2_U5 ( .A(n_zz_10[9]), .B(psum2[9]), .CI(intadd_2_n5), .CO(
        intadd_2_n4), .S(intadd_2_SUM_7_) );
  fa1a3 intadd_2_U4 ( .A(n_zz_10[10]), .B(psum2[10]), .CI(intadd_2_n4), .CO(
        intadd_2_n3), .S(intadd_2_SUM_8_) );
  fa1a3 intadd_1_U4 ( .A(n_zz_9[10]), .B(psum1[10]), .CI(intadd_1_n4), .CO(
        intadd_1_n3), .S(intadd_1_SUM_8_) );
  fa1a3 intadd_1_U3 ( .A(n_zz_9[11]), .B(psum1[11]), .CI(intadd_1_n3), .CO(
        intadd_1_n2), .S(intadd_1_SUM_9_) );
  fa1a3 intadd_2_U3 ( .A(n_zz_10[11]), .B(psum2[11]), .CI(intadd_2_n3), .CO(
        intadd_2_n2), .S(intadd_2_SUM_9_) );
  fa1a3 intadd_2_U2 ( .A(n_zz_10[12]), .B(psum2[12]), .CI(intadd_2_n2), .CO(
        intadd_2_n1), .S(intadd_2_SUM_10_) );
  fa1a3 intadd_1_U2 ( .A(n_zz_9[12]), .B(psum1[12]), .CI(intadd_1_n2), .CO(
        intadd_1_n1), .S(intadd_1_SUM_10_) );
  fa1a3 intadd_2_U7 ( .A(n_zz_10[7]), .B(psum2[7]), .CI(intadd_2_n7), .CO(
        intadd_2_n6), .S(intadd_2_SUM_5_) );
  fa1a3 intadd_1_U6 ( .A(n_zz_9[8]), .B(psum1[8]), .CI(intadd_1_n6), .CO(
        intadd_1_n5), .S(intadd_1_SUM_6_) );
  fa1a3 intadd_2_U8 ( .A(n_zz_10[6]), .B(psum2[6]), .CI(intadd_2_n8), .CO(
        intadd_2_n7), .S(intadd_2_SUM_4_) );
  fa1a3 intadd_1_U7 ( .A(n_zz_9[7]), .B(psum1[7]), .CI(intadd_1_n7), .CO(
        intadd_1_n6), .S(intadd_1_SUM_5_) );
  or3d1 U3 ( .A(n27), .B(n26), .C(n25), .Y(n206) );
  or2c1 U4 ( .A(n229), .B(psum2[14]), .Y(n233) );
  or2c1 U5 ( .A(n265), .B(psum1[14]), .Y(n269) );
  or3d1 U6 ( .A(n15), .B(n14), .C(n13), .Y(n205) );
  or3d1 U7 ( .A(n319), .B(n318), .C(n317), .Y(n197) );
  or3d1 U8 ( .A(n47), .B(n46), .C(n45), .Y(n204) );
  or3d1 U9 ( .A(n331), .B(n330), .C(n329), .Y(n196) );
  or3d1 U10 ( .A(n179), .B(n178), .C(n177), .Y(n195) );
  or3d1 U11 ( .A(n21), .B(n20), .C(n19), .Y(n203) );
  or3d1 U12 ( .A(n208), .B(n190), .C(n189), .Y(n194) );
  or3d1 U13 ( .A(n185), .B(n184), .C(n183), .Y(n193) );
  or3d1 U14 ( .A(n41), .B(n40), .C(n39), .Y(n201) );
  buf1a6 U15 ( .A(n8), .Y(n35) );
  or2c1 U16 ( .A(n_zz_9[0]), .B(psum1[0]), .Y(n258) );
  or3d1 U17 ( .A(n60), .B(n232), .C(n235), .Y(n61) );
  or3d1 U18 ( .A(n33), .B(n32), .C(n31), .Y(n202) );
  or3d1 U19 ( .A(n313), .B(n312), .C(n311), .Y(n198) );
  inv1a1 U20 ( .A(n332), .Y(psum1[10]) );
  oa4f1 U21 ( .A(n307), .B(vn_in_4[7]), .C(n322), .D(vn_in_6[7]), .Y(n167) );
  oa4f2 U22 ( .A(n321), .B(vn_in_2[1]), .C(n320), .D(vn_in_1[1]), .Y(n117) );
  oa4f2 U23 ( .A(n321), .B(vn_in_2[6]), .C(n320), .D(vn_in_1[6]), .Y(n159) );
  oa4f2 U24 ( .A(n307), .B(vn_in_4[6]), .C(n322), .D(vn_in_6[6]), .Y(n158) );
  inv1a9 U25 ( .A(n262), .Y(n260) );
  and2c3 U26 ( .A(mac_cnt[2]), .B(n77), .Y(n7) );
  fa1a3 U27 ( .A(psum1[13]), .B(n_zz_9[13]), .CI(intadd_1_n1), .CO(n263), .S(
        n58) );
  fa1a3 U28 ( .A(psum2[13]), .B(n_zz_10[13]), .CI(intadd_2_n1), .CO(n227), .S(
        n80) );
  or3d3 U29 ( .A(n214), .B(n213), .C(n212), .Y(n192) );
  oa1f1 U30 ( .A(n293), .B(vn_in_0[7]), .C(n165), .Y(n166) );
  oa1f3 U31 ( .A(n34), .B(rg_sin_table_0[5]), .C(n316), .Y(n317) );
  oa1f3 U32 ( .A(n34), .B(rg_sin_table_0[3]), .C(n176), .Y(n177) );
  oa1f3 U33 ( .A(n34), .B(rg_sin_table_0[2]), .C(n188), .Y(n189) );
  oa1f3 U34 ( .A(n34), .B(rg_sin_table_0[4]), .C(n328), .Y(n329) );
  oa1f3 U35 ( .A(n34), .B(rg_sin_table_0[1]), .C(n182), .Y(n183) );
  oa4f2 U36 ( .A(n289), .B(vn_in_5[7]), .C(n324), .D(vn_in_7[7]), .Y(n163) );
  oa4f3 U37 ( .A(n35), .B(rg_cos_table_5[5]), .C(n9), .D(rg_cos_table_7[5]), 
        .Y(n10) );
  oa4f3 U38 ( .A(n35), .B(rg_cos_table_5[6]), .C(n9), .D(rg_cos_table_7[6]), 
        .Y(n22) );
  oa4f3 U39 ( .A(n35), .B(rg_cos_table_5[3]), .C(n9), .D(rg_cos_table_7[3]), 
        .Y(n16) );
  oa4f2 U40 ( .A(n321), .B(vn_in_2[7]), .C(n320), .D(vn_in_1[7]), .Y(n168) );
  oa4f3 U41 ( .A(n35), .B(rg_sin_table_5[7]), .C(n9), .D(rg_sin_table_7[7]), 
        .Y(n298) );
  oa4f3 U42 ( .A(n35), .B(rg_sin_table_5[6]), .C(n9), .D(rg_sin_table_7[6]), 
        .Y(n308) );
  oa4f2 U43 ( .A(n305), .B(rg_cos_table_2[2]), .C(n304), .D(rg_cos_table_1[2]), 
        .Y(n33) );
  ao1f2 U44 ( .A(mac_cnt[0]), .B(n287), .C(mac_en), .Y(n86) );
  buf1a9 U45 ( .A(n304), .Y(n320) );
  buf1a9 U46 ( .A(n306), .Y(n322) );
  buf1a6 U47 ( .A(n57), .Y(n226) );
  buf1a9 U48 ( .A(n9), .Y(n324) );
  clk1b6 U49 ( .A(n56), .Y(n34) );
  and2c3 U50 ( .A(n255), .B(n56), .Y(n57) );
  and2c6 U51 ( .A(n82), .B(n77), .Y(n9) );
  inv1a3 U52 ( .A(mac_cnt[2]), .Y(n82) );
  inv1a3 U53 ( .A(mac_cnt[1]), .Y(n85) );
  and2c2 U54 ( .A(mac_cnt[0]), .B(n79), .Y(N183) );
  inv1a3 U55 ( .A(mac_cnt[0]), .Y(n288) );
  inv1a3 U56 ( .A(n_zz_10[13]), .Y(n239) );
  inv1a3 U57 ( .A(n_zz_9[13]), .Y(n275) );
  inv1a3 U58 ( .A(psum2[1]), .Y(n224) );
  buf1a15 U59 ( .A(resetn), .Y(n333) );
  inv1a1 U60 ( .A(en), .Y(n286) );
  or2c3 U61 ( .A(mac_cnt[0]), .B(mac_cnt[1]), .Y(n77) );
  ao1d1 U62 ( .A(n225), .B(n80), .C(n248), .Y(N172) );
  ao1d1 U63 ( .A(n225), .B(n58), .C(n284), .Y(N153) );
  oa4f1 U64 ( .A(n305), .B(rg_sin_table_2[7]), .C(n304), .D(rg_sin_table_1[7]), 
        .Y(n303) );
  oa4f1 U65 ( .A(n305), .B(rg_cos_table_2[6]), .C(n320), .D(rg_cos_table_1[6]), 
        .Y(n27) );
  oa4f1 U66 ( .A(n305), .B(rg_sin_table_2[6]), .C(n304), .D(rg_sin_table_1[6]), 
        .Y(n313) );
  oa4f1 U67 ( .A(n305), .B(rg_cos_table_2[4]), .C(n320), .D(rg_cos_table_1[4]), 
        .Y(n47) );
  oa4f1 U68 ( .A(n305), .B(rg_cos_table_2[5]), .C(n320), .D(rg_cos_table_1[5]), 
        .Y(n15) );
  oa4f1 U69 ( .A(n305), .B(rg_cos_table_2[3]), .C(n320), .D(rg_cos_table_1[3]), 
        .Y(n21) );
  oa4f1 U70 ( .A(n305), .B(vn_in_2[4]), .C(n320), .D(vn_in_1[4]), .Y(n99) );
  oa4f1 U71 ( .A(n305), .B(rg_cos_table_2[1]), .C(n304), .D(rg_cos_table_1[1]), 
        .Y(n41) );
  buf1a6 U72 ( .A(n307), .Y(n323) );
  buf1a6 U73 ( .A(n5), .Y(n307) );
  buf1a6 U74 ( .A(n57), .Y(n261) );
  buf1a15 U75 ( .A(resetn), .Y(n334) );
  and2c3 U76 ( .A(mac_cnt[1]), .B(n4), .Y(n5) );
  and2c3 U77 ( .A(mac_cnt[2]), .B(n55), .Y(n2) );
  or2c3 U78 ( .A(mac_cnt[1]), .B(n288), .Y(n55) );
  inv1a3 U79 ( .A(mac_en), .Y(n79) );
  buf1a6 U80 ( .A(n2), .Y(n321) );
  clk1a3 U81 ( .A(n321), .Y(n305) );
  or2c1 U82 ( .A(mac_cnt[0]), .B(n85), .Y(n54) );
  and2c1 U83 ( .A(mac_cnt[2]), .B(n54), .Y(n3) );
  clk1a3 U84 ( .A(n3), .Y(n304) );
  or2c1 U85 ( .A(mac_cnt[2]), .B(n288), .Y(n4) );
  and2c1 U86 ( .A(n82), .B(n55), .Y(n6) );
  clk1a3 U87 ( .A(n6), .Y(n306) );
  oa4f3 U88 ( .A(n307), .B(rg_cos_table_4[5]), .C(n322), .D(rg_cos_table_6[5]), 
        .Y(n14) );
  or3d3 U89 ( .A(n288), .B(n82), .C(n85), .Y(n56) );
  buf1a9 U90 ( .A(n34), .Y(n293) );
  buf1a6 U91 ( .A(n7), .Y(n297) );
  or2c1 U92 ( .A(n297), .B(rg_cos_table_3[5]), .Y(n11) );
  and2c1 U93 ( .A(n82), .B(n54), .Y(n8) );
  or2c1 U94 ( .A(n11), .B(n10), .Y(n12) );
  oa1f3 U95 ( .A(n293), .B(rg_cos_table_0[5]), .C(n12), .Y(n13) );
  oa4f3 U96 ( .A(n307), .B(rg_cos_table_4[3]), .C(n322), .D(rg_cos_table_6[3]), 
        .Y(n20) );
  or2c1 U97 ( .A(n297), .B(rg_cos_table_3[3]), .Y(n17) );
  or2c1 U98 ( .A(n17), .B(n16), .Y(n18) );
  oa1f3 U99 ( .A(n293), .B(rg_cos_table_0[3]), .C(n18), .Y(n19) );
  oa4f3 U100 ( .A(n307), .B(rg_cos_table_4[6]), .C(n322), .D(rg_cos_table_6[6]), .Y(n26) );
  or2c1 U101 ( .A(n297), .B(rg_cos_table_3[6]), .Y(n23) );
  or2c1 U102 ( .A(n23), .B(n22), .Y(n24) );
  oa1f3 U103 ( .A(n293), .B(rg_cos_table_0[6]), .C(n24), .Y(n25) );
  oa4f3 U104 ( .A(n307), .B(rg_cos_table_4[2]), .C(n306), .D(rg_cos_table_6[2]), .Y(n32) );
  or2c1 U105 ( .A(n297), .B(rg_cos_table_3[2]), .Y(n29) );
  oa4f3 U106 ( .A(n35), .B(rg_cos_table_5[2]), .C(n9), .D(rg_cos_table_7[2]), 
        .Y(n28) );
  or2c1 U107 ( .A(n29), .B(n28), .Y(n30) );
  oa1f3 U108 ( .A(n293), .B(rg_cos_table_0[2]), .C(n30), .Y(n31) );
  oa4f3 U109 ( .A(n307), .B(rg_cos_table_4[1]), .C(n306), .D(rg_cos_table_6[1]), .Y(n40) );
  or2c1 U110 ( .A(n297), .B(rg_cos_table_3[1]), .Y(n37) );
  oa4f3 U111 ( .A(n35), .B(rg_cos_table_5[1]), .C(n9), .D(rg_cos_table_7[1]), 
        .Y(n36) );
  or2c1 U112 ( .A(n37), .B(n36), .Y(n38) );
  oa1f3 U113 ( .A(n34), .B(rg_cos_table_0[1]), .C(n38), .Y(n39) );
  oa4f3 U114 ( .A(n307), .B(rg_cos_table_4[4]), .C(n322), .D(rg_cos_table_6[4]), .Y(n46) );
  or2c1 U115 ( .A(n297), .B(rg_cos_table_3[4]), .Y(n43) );
  buf1a6 U116 ( .A(n35), .Y(n289) );
  oa4f3 U117 ( .A(n289), .B(rg_cos_table_5[4]), .C(n324), .D(rg_cos_table_7[4]), .Y(n42) );
  or2c1 U118 ( .A(n43), .B(n42), .Y(n44) );
  oa1f3 U119 ( .A(n293), .B(rg_cos_table_0[4]), .C(n44), .Y(n45) );
  inv1a3 U120 ( .A(booth_sin_io_dout_vld), .Y(n255) );
  inv1a1 U121 ( .A(vn_vld), .Y(n87) );
  ao1f2 U122 ( .A(n255), .B(n79), .C(n87), .Y(N91) );
  oa4f3 U123 ( .A(n305), .B(rg_cos_table_2[0]), .C(n304), .D(rg_cos_table_1[0]), .Y(n53) );
  oa4f3 U124 ( .A(n307), .B(rg_cos_table_4[0]), .C(n306), .D(rg_cos_table_6[0]), .Y(n52) );
  or2c1 U125 ( .A(n297), .B(rg_cos_table_3[0]), .Y(n49) );
  oa4f3 U126 ( .A(n35), .B(rg_cos_table_5[0]), .C(n9), .D(rg_cos_table_7[0]), 
        .Y(n48) );
  or2c1 U127 ( .A(n49), .B(n48), .Y(n50) );
  oa1f3 U128 ( .A(n34), .B(rg_cos_table_0[0]), .C(n50), .Y(n51) );
  or3d3 U129 ( .A(n53), .B(n52), .C(n51), .Y(n200) );
  oa1f1 U130 ( .A(n55), .B(n54), .C(n79), .Y(N184) );
  or2c3 U131 ( .A(booth_sin_io_dout_vld), .B(n56), .Y(n262) );
  clk1a3 U132 ( .A(n260), .Y(n225) );
  or2c3 U133 ( .A(n226), .B(n_zz_9[13]), .Y(n284) );
  and2a3 U134 ( .A(n_zz_13_1_), .B(n_zz_13_0_), .Y(n59) );
  inv1a3 U135 ( .A(psum_out2[15]), .Y(n247) );
  oa1f9 U136 ( .A(n_zz_13_2_), .B(n59), .C(n247), .Y(n76) );
  inv1a1 U137 ( .A(psum2[0]), .Y(n216) );
  inv1a1 U138 ( .A(n_zz_13_2_), .Y(n60) );
  inv1a3 U139 ( .A(n_zz_13_0_), .Y(n232) );
  inv1a3 U140 ( .A(n_zz_13_1_), .Y(n235) );
  or2c6 U141 ( .A(n61), .B(n247), .Y(n74) );
  ao1f2 U142 ( .A(n76), .B(n216), .C(n74), .Y(psum_out2[0]) );
  ao1f2 U143 ( .A(n76), .B(n224), .C(n74), .Y(psum_out2[1]) );
  inv1a1 U144 ( .A(psum2[2]), .Y(n62) );
  ao1f2 U145 ( .A(n76), .B(n62), .C(n74), .Y(psum_out2[2]) );
  inv1a1 U146 ( .A(psum2[3]), .Y(n63) );
  ao1f2 U147 ( .A(n76), .B(n63), .C(n74), .Y(psum_out2[3]) );
  inv1a1 U148 ( .A(psum2[4]), .Y(n64) );
  ao1f2 U149 ( .A(n76), .B(n64), .C(n74), .Y(psum_out2[4]) );
  inv1a1 U150 ( .A(psum2[5]), .Y(n65) );
  ao1f2 U151 ( .A(n76), .B(n65), .C(n74), .Y(psum_out2[5]) );
  inv1a1 U152 ( .A(psum2[6]), .Y(n66) );
  ao1f2 U153 ( .A(n76), .B(n66), .C(n74), .Y(psum_out2[6]) );
  inv1a1 U154 ( .A(psum2[7]), .Y(n67) );
  ao1f2 U155 ( .A(n76), .B(n67), .C(n74), .Y(psum_out2[7]) );
  inv1a1 U156 ( .A(psum2[8]), .Y(n68) );
  ao1f2 U157 ( .A(n76), .B(n68), .C(n74), .Y(psum_out2[8]) );
  inv1a1 U158 ( .A(psum2[9]), .Y(n69) );
  ao1f2 U159 ( .A(n76), .B(n69), .C(n74), .Y(psum_out2[9]) );
  inv1a1 U160 ( .A(psum2[10]), .Y(n70) );
  ao1f2 U161 ( .A(n76), .B(n70), .C(n74), .Y(psum_out2[10]) );
  inv1a1 U162 ( .A(psum2[11]), .Y(n71) );
  ao1f2 U163 ( .A(n76), .B(n71), .C(n74), .Y(psum_out2[11]) );
  inv1a1 U164 ( .A(psum2[12]), .Y(n72) );
  ao1f2 U165 ( .A(n76), .B(n72), .C(n74), .Y(psum_out2[12]) );
  inv1a1 U166 ( .A(psum2[13]), .Y(n73) );
  ao1f2 U167 ( .A(n76), .B(n73), .C(n74), .Y(psum_out2[13]) );
  inv1a1 U168 ( .A(psum2[14]), .Y(n75) );
  ao1f2 U169 ( .A(n76), .B(n75), .C(n74), .Y(psum_out2[14]) );
  oa1f1 U170 ( .A(n77), .B(mac_cnt[2]), .C(n297), .Y(n78) );
  and2c3 U171 ( .A(n79), .B(n78), .Y(N185) );
  or2c3 U172 ( .A(n_zz_10[13]), .B(n226), .Y(n248) );
  and2c1 U173 ( .A(valid_num[2]), .B(n82), .Y(n81) );
  oa2i2 U174 ( .A(valid_num[2]), .B(n82), .C(n255), .D(n81), .Y(n84) );
  or2c1 U175 ( .A(valid_num[1]), .B(n85), .Y(n83) );
  ao2i3 U176 ( .A(valid_num[1]), .B(n85), .C(n84), .D(n83), .Y(n287) );
  oa1f3 U177 ( .A(n87), .B(n86), .C(n286), .Y(n191) );
  oa4f3 U178 ( .A(n321), .B(vn_in_2[5]), .C(n320), .D(vn_in_1[5]), .Y(n93) );
  oa4f3 U179 ( .A(n307), .B(vn_in_4[5]), .C(n322), .D(vn_in_6[5]), .Y(n92) );
  or2c1 U180 ( .A(n297), .B(vn_in_3[5]), .Y(n89) );
  oa4f3 U181 ( .A(n289), .B(vn_in_5[5]), .C(n324), .D(vn_in_7[5]), .Y(n88) );
  or2c1 U182 ( .A(n89), .B(n88), .Y(n90) );
  oa1f3 U183 ( .A(n293), .B(vn_in_0[5]), .C(n90), .Y(n91) );
  or3d1 U184 ( .A(n93), .B(n92), .C(n91), .Y(n162) );
  inv1a1 U185 ( .A(mean[5]), .Y(n161) );
  oa4f3 U186 ( .A(n307), .B(vn_in_4[4]), .C(n322), .D(vn_in_6[4]), .Y(n98) );
  or2c1 U187 ( .A(n297), .B(vn_in_3[4]), .Y(n95) );
  oa4f3 U188 ( .A(n289), .B(vn_in_5[4]), .C(n324), .D(vn_in_7[4]), .Y(n94) );
  or2c1 U189 ( .A(n95), .B(n94), .Y(n96) );
  oa1f3 U190 ( .A(n293), .B(vn_in_0[4]), .C(n96), .Y(n97) );
  or3d1 U191 ( .A(n99), .B(n98), .C(n97), .Y(n126) );
  inv1a1 U192 ( .A(mean[4]), .Y(n125) );
  oa4f3 U193 ( .A(n321), .B(vn_in_2[3]), .C(n320), .D(vn_in_1[3]), .Y(n105) );
  oa4f3 U194 ( .A(n323), .B(vn_in_4[3]), .C(n322), .D(vn_in_6[3]), .Y(n104) );
  or2c1 U195 ( .A(n297), .B(vn_in_3[3]), .Y(n101) );
  oa4f3 U196 ( .A(n289), .B(vn_in_5[3]), .C(n324), .D(vn_in_7[3]), .Y(n100) );
  or2c1 U197 ( .A(n101), .B(n100), .Y(n102) );
  oa1f3 U198 ( .A(n293), .B(vn_in_0[3]), .C(n102), .Y(n103) );
  or3d1 U199 ( .A(n105), .B(n104), .C(n103), .Y(n129) );
  inv1a1 U200 ( .A(mean[3]), .Y(n128) );
  oa4f3 U201 ( .A(n321), .B(vn_in_2[2]), .C(n320), .D(vn_in_1[2]), .Y(n111) );
  oa4f3 U202 ( .A(n323), .B(vn_in_4[2]), .C(n322), .D(vn_in_6[2]), .Y(n110) );
  or2c1 U203 ( .A(n7), .B(vn_in_3[2]), .Y(n107) );
  oa4f3 U204 ( .A(n289), .B(vn_in_5[2]), .C(n324), .D(vn_in_7[2]), .Y(n106) );
  or2c1 U205 ( .A(n107), .B(n106), .Y(n108) );
  oa1f3 U206 ( .A(n293), .B(vn_in_0[2]), .C(n108), .Y(n109) );
  or3d1 U207 ( .A(n111), .B(n110), .C(n109), .Y(n132) );
  inv1a1 U208 ( .A(mean[2]), .Y(n131) );
  oa4f3 U209 ( .A(n323), .B(vn_in_4[1]), .C(n322), .D(vn_in_6[1]), .Y(n116) );
  or2c1 U210 ( .A(n297), .B(vn_in_3[1]), .Y(n113) );
  oa4f3 U211 ( .A(n289), .B(vn_in_5[1]), .C(n324), .D(vn_in_7[1]), .Y(n112) );
  or2c1 U212 ( .A(n113), .B(n112), .Y(n114) );
  oa1f3 U213 ( .A(n293), .B(vn_in_0[1]), .C(n114), .Y(n115) );
  or3d1 U214 ( .A(n117), .B(n116), .C(n115), .Y(n135) );
  inv1a1 U215 ( .A(mean[1]), .Y(n134) );
  oa4f3 U216 ( .A(n321), .B(vn_in_2[0]), .C(n320), .D(vn_in_1[0]), .Y(n123) );
  oa4f3 U217 ( .A(n323), .B(vn_in_4[0]), .C(n322), .D(vn_in_6[0]), .Y(n122) );
  or2c1 U218 ( .A(n297), .B(vn_in_3[0]), .Y(n119) );
  oa4f3 U219 ( .A(n289), .B(vn_in_5[0]), .C(n324), .D(vn_in_7[0]), .Y(n118) );
  or2c1 U220 ( .A(n119), .B(n118), .Y(n120) );
  oa1f3 U221 ( .A(n293), .B(vn_in_0[0]), .C(n120), .Y(n121) );
  or3d3 U222 ( .A(n123), .B(n122), .C(n121), .Y(n215) );
  or2b2 U223 ( .B(n215), .A(mean[0]), .Y(n133) );
  fa1a2 U224 ( .A(n126), .B(n125), .CI(n124), .CO(n160), .S(vin_minus_mean[4])
         );
  fa1a2 U225 ( .A(n129), .B(n128), .CI(n127), .CO(n124), .S(vin_minus_mean[3])
         );
  fa1a2 U226 ( .A(n132), .B(n131), .CI(n130), .CO(n127), .S(vin_minus_mean[2])
         );
  fa1a2 U227 ( .A(n135), .B(n134), .CI(n133), .CO(n130), .S(vin_minus_mean[1])
         );
  inv1a3 U228 ( .A(n_zz_11_1_), .Y(n271) );
  inv1a3 U229 ( .A(n_zz_11_0_), .Y(n268) );
  and2c3 U230 ( .A(n271), .B(n268), .Y(n136) );
  inv1a3 U231 ( .A(psum_out1[15]), .Y(n283) );
  oa1f9 U232 ( .A(n_zz_11_2_), .B(n136), .C(n283), .Y(n153) );
  inv1a1 U233 ( .A(psum1[0]), .Y(n250) );
  inv1a1 U234 ( .A(n_zz_11_2_), .Y(n137) );
  or3d1 U235 ( .A(n137), .B(n268), .C(n271), .Y(n138) );
  or2c3 U236 ( .A(n138), .B(n283), .Y(n139) );
  buf1a6 U237 ( .A(n139), .Y(n151) );
  ao1f2 U238 ( .A(n153), .B(n250), .C(n151), .Y(psum_out1[0]) );
  inv1a3 U239 ( .A(psum1[1]), .Y(n259) );
  ao1f2 U240 ( .A(n153), .B(n259), .C(n151), .Y(psum_out1[1]) );
  inv1a1 U241 ( .A(psum1[2]), .Y(n140) );
  ao1f2 U242 ( .A(n153), .B(n140), .C(n151), .Y(psum_out1[2]) );
  inv1a1 U243 ( .A(psum1[3]), .Y(n141) );
  ao1f2 U244 ( .A(n153), .B(n141), .C(n151), .Y(psum_out1[3]) );
  inv1a1 U245 ( .A(psum1[4]), .Y(n142) );
  ao1f2 U246 ( .A(n153), .B(n142), .C(n151), .Y(psum_out1[4]) );
  inv1a1 U247 ( .A(psum1[5]), .Y(n143) );
  ao1f2 U248 ( .A(n153), .B(n143), .C(n151), .Y(psum_out1[5]) );
  inv1a1 U249 ( .A(psum1[6]), .Y(n144) );
  ao1f2 U250 ( .A(n153), .B(n144), .C(n151), .Y(psum_out1[6]) );
  inv1a1 U251 ( .A(psum1[7]), .Y(n145) );
  ao1f2 U252 ( .A(n153), .B(n145), .C(n151), .Y(psum_out1[7]) );
  inv1a1 U253 ( .A(psum1[8]), .Y(n146) );
  ao1f2 U254 ( .A(n153), .B(n146), .C(n151), .Y(psum_out1[8]) );
  inv1a1 U255 ( .A(psum1[9]), .Y(n147) );
  ao1f2 U256 ( .A(n153), .B(n147), .C(n151), .Y(psum_out1[9]) );
  ao1f2 U257 ( .A(n153), .B(n332), .C(n151), .Y(psum_out1[10]) );
  inv1a1 U258 ( .A(psum1[11]), .Y(n148) );
  ao1f2 U259 ( .A(n153), .B(n148), .C(n151), .Y(psum_out1[11]) );
  inv1a1 U260 ( .A(psum1[12]), .Y(n149) );
  ao1f2 U261 ( .A(n153), .B(n149), .C(n151), .Y(psum_out1[12]) );
  inv1a1 U262 ( .A(psum1[13]), .Y(n150) );
  ao1f2 U263 ( .A(n153), .B(n150), .C(n151), .Y(psum_out1[13]) );
  inv1a1 U264 ( .A(psum1[14]), .Y(n152) );
  ao1f2 U265 ( .A(n153), .B(n152), .C(n151), .Y(psum_out1[14]) );
  or2c1 U266 ( .A(n297), .B(vn_in_3[6]), .Y(n155) );
  oa4f3 U267 ( .A(n289), .B(vn_in_5[6]), .C(n324), .D(vn_in_7[6]), .Y(n154) );
  or2c1 U268 ( .A(n155), .B(n154), .Y(n156) );
  oa1f3 U269 ( .A(n293), .B(vn_in_0[6]), .C(n156), .Y(n157) );
  or3d1 U270 ( .A(n159), .B(n158), .C(n157), .Y(n171) );
  inv1a1 U271 ( .A(mean[6]), .Y(n170) );
  fa1a2 U272 ( .A(n162), .B(n161), .CI(n160), .CO(n169), .S(vin_minus_mean[5])
         );
  or2c1 U273 ( .A(n297), .B(vn_in_3[7]), .Y(n164) );
  or2c1 U274 ( .A(n164), .B(n163), .Y(n165) );
  or3d1 U275 ( .A(n168), .B(n167), .C(n166), .Y(n173) );
  fa1a2 U276 ( .A(n171), .B(n170), .CI(n169), .CO(n172), .S(vin_minus_mean[6])
         );
  xor3b3 U277 ( .A(n173), .B(n172), .C(mean[7]), .Y(vin_minus_mean[7]) );
  oa4f3 U278 ( .A(n321), .B(rg_sin_table_2[3]), .C(n320), .D(rg_sin_table_1[3]), .Y(n179) );
  oa4f3 U279 ( .A(n323), .B(rg_sin_table_4[3]), .C(n322), .D(rg_sin_table_6[3]), .Y(n178) );
  or2c1 U280 ( .A(n7), .B(rg_sin_table_3[3]), .Y(n175) );
  oa4f3 U281 ( .A(n35), .B(rg_sin_table_5[3]), .C(n324), .D(rg_sin_table_7[3]), 
        .Y(n174) );
  or2c1 U282 ( .A(n175), .B(n174), .Y(n176) );
  oa4f3 U283 ( .A(n321), .B(rg_sin_table_2[1]), .C(n320), .D(rg_sin_table_1[1]), .Y(n185) );
  oa4f3 U284 ( .A(n323), .B(rg_sin_table_4[1]), .C(n322), .D(rg_sin_table_6[1]), .Y(n184) );
  or2c1 U285 ( .A(n297), .B(rg_sin_table_3[1]), .Y(n181) );
  oa4f3 U286 ( .A(n35), .B(rg_sin_table_5[1]), .C(n324), .D(rg_sin_table_7[1]), 
        .Y(n180) );
  or2c1 U287 ( .A(n181), .B(n180), .Y(n182) );
  oa4f3 U288 ( .A(n321), .B(rg_sin_table_2[2]), .C(n320), .D(rg_sin_table_1[2]), .Y(n208) );
  oa4f3 U289 ( .A(n323), .B(rg_sin_table_4[2]), .C(n322), .D(rg_sin_table_6[2]), .Y(n190) );
  or2c1 U290 ( .A(n7), .B(rg_sin_table_3[2]), .Y(n187) );
  oa4f3 U291 ( .A(n35), .B(rg_sin_table_5[2]), .C(n324), .D(rg_sin_table_7[2]), 
        .Y(n186) );
  or2c1 U292 ( .A(n187), .B(n186), .Y(n188) );
  oa4f3 U293 ( .A(n321), .B(rg_sin_table_2[0]), .C(n320), .D(rg_sin_table_1[0]), .Y(n214) );
  oa4f3 U294 ( .A(n323), .B(rg_sin_table_4[0]), .C(n322), .D(rg_sin_table_6[0]), .Y(n213) );
  or2c1 U295 ( .A(n297), .B(rg_sin_table_3[0]), .Y(n210) );
  oa4f3 U296 ( .A(n35), .B(rg_sin_table_5[0]), .C(n324), .D(rg_sin_table_7[0]), 
        .Y(n209) );
  or2c1 U297 ( .A(n210), .B(n209), .Y(n211) );
  oa1f3 U298 ( .A(n293), .B(rg_sin_table_0[0]), .C(n211), .Y(n212) );
  xor2a2 U299 ( .A(n215), .B(mean[0]), .Y(vin_minus_mean[0]) );
  and2c3 U300 ( .A(n293), .B(n216), .Y(n218) );
  and2c1 U301 ( .A(n_zz_10[0]), .B(n218), .Y(n217) );
  oa2i2 U302 ( .A(n_zz_10[0]), .B(n218), .C(n255), .D(n217), .Y(N159) );
  or2c1 U303 ( .A(n_zz_10[0]), .B(psum2[0]), .Y(n223) );
  mx2a1 U304 ( .D0(psum2[1]), .D1(n224), .S(n223), .Y(n219) );
  and2c3 U305 ( .A(n293), .B(n219), .Y(n221) );
  and2c1 U306 ( .A(n_zz_10[1]), .B(n221), .Y(n220) );
  oa2i2 U307 ( .A(n_zz_10[1]), .B(n221), .C(n255), .D(n220), .Y(N160) );
  inv1a1 U308 ( .A(n_zz_10[1]), .Y(n222) );
  fac2a1 U309 ( .A(n224), .B(n223), .CI(n222), .CO(intadd_2_CI) );
  ao4a3 U310 ( .A(n260), .B(intadd_2_SUM_0_), .C(n261), .D(n_zz_10[2]), .Y(
        N161) );
  ao4a3 U311 ( .A(n225), .B(intadd_2_SUM_1_), .C(n226), .D(n_zz_10[3]), .Y(
        N162) );
  ao4a3 U312 ( .A(n225), .B(intadd_2_SUM_2_), .C(n226), .D(n_zz_10[4]), .Y(
        N163) );
  ao4a3 U313 ( .A(n225), .B(intadd_2_SUM_3_), .C(n226), .D(n_zz_10[5]), .Y(
        N164) );
  ao4a3 U314 ( .A(n225), .B(intadd_2_SUM_4_), .C(n226), .D(n_zz_10[6]), .Y(
        N165) );
  ao4a3 U315 ( .A(n225), .B(intadd_2_SUM_5_), .C(n226), .D(n_zz_10[7]), .Y(
        N166) );
  ao4a3 U316 ( .A(n225), .B(intadd_2_SUM_6_), .C(n226), .D(n_zz_10[8]), .Y(
        N167) );
  ao4a3 U317 ( .A(n260), .B(intadd_2_SUM_7_), .C(n226), .D(n_zz_10[9]), .Y(
        N168) );
  ao4a3 U318 ( .A(n260), .B(intadd_2_SUM_8_), .C(n226), .D(n_zz_10[10]), .Y(
        N169) );
  ao4a3 U319 ( .A(n260), .B(intadd_2_SUM_9_), .C(n226), .D(n_zz_10[11]), .Y(
        N170) );
  ao4a3 U320 ( .A(n260), .B(intadd_2_SUM_10_), .C(n226), .D(n_zz_10[12]), .Y(
        N171) );
  inv1a1 U321 ( .A(n227), .Y(n230) );
  and2c3 U322 ( .A(n_zz_10[13]), .B(n262), .Y(n244) );
  and2c3 U323 ( .A(n262), .B(n239), .Y(n245) );
  mulpa1b1 U324 ( .X0(n227), .X1(n230), .S(psum2[14]), .Z(n244), .M(n245), .P(
        n228) );
  or2c1 U325 ( .A(n228), .B(n248), .Y(N173) );
  ao1d2 U326 ( .A(intadd_2_n1), .B(psum2[13]), .C(n239), .Y(n229) );
  ao1f2 U327 ( .A(n239), .B(n230), .C(n233), .Y(n234) );
  mulpa1b1 U328 ( .X0(n_zz_13_0_), .X1(n232), .S(n234), .Z(n244), .M(n245), 
        .P(n231) );
  or2c1 U329 ( .A(n231), .B(n248), .Y(N174) );
  oa1f3 U330 ( .A(n239), .B(n233), .C(n232), .Y(n237) );
  oa1f3 U331 ( .A(n_zz_10[13]), .B(n234), .C(n237), .Y(n240) );
  mulpa1b1 U332 ( .X0(n_zz_13_1_), .X1(n235), .S(n240), .Z(n245), .M(n244), 
        .P(n236) );
  or2c1 U333 ( .A(n236), .B(n248), .Y(N175) );
  ao1f2 U334 ( .A(n_zz_10[13]), .B(n237), .C(n_zz_13_1_), .Y(n238) );
  ao1f2 U335 ( .A(n240), .B(n239), .C(n238), .Y(n243) );
  inv1a1 U336 ( .A(n243), .Y(n241) );
  mulpa3b1 U337 ( .X0(n241), .X1(n243), .S(n_zz_13_2_), .Z(n245), .M(n244), 
        .P(n242) );
  or2c1 U338 ( .A(n242), .B(n248), .Y(N176) );
  fac2a1 U339 ( .A(n_zz_10[13]), .B(n_zz_13_2_), .CI(n243), .CO(n246) );
  mulpa3b1 U340 ( .X0(psum_out2[15]), .X1(n247), .S(n246), .Z(n245), .M(n244), 
        .P(n249) );
  or2c1 U341 ( .A(n249), .B(n248), .Y(N177) );
  and2c3 U342 ( .A(n293), .B(n250), .Y(n252) );
  and2c1 U343 ( .A(n_zz_9[0]), .B(n252), .Y(n251) );
  oa2i2 U344 ( .A(n_zz_9[0]), .B(n252), .C(n255), .D(n251), .Y(N140) );
  mx2a1 U345 ( .D0(psum1[1]), .D1(n259), .S(n258), .Y(n253) );
  and2c3 U346 ( .A(n293), .B(n253), .Y(n256) );
  and2c1 U347 ( .A(n_zz_9[1]), .B(n256), .Y(n254) );
  oa2i2 U348 ( .A(n_zz_9[1]), .B(n256), .C(n255), .D(n254), .Y(N141) );
  inv1a1 U349 ( .A(n_zz_9[1]), .Y(n257) );
  fac2a1 U350 ( .A(n259), .B(n258), .CI(n257), .CO(intadd_1_CI) );
  ao4a3 U351 ( .A(n260), .B(intadd_1_SUM_0_), .C(n226), .D(n_zz_9[2]), .Y(N142) );
  ao4a3 U352 ( .A(n260), .B(intadd_1_SUM_1_), .C(n261), .D(n_zz_9[3]), .Y(N143) );
  ao4a3 U353 ( .A(n260), .B(intadd_1_SUM_2_), .C(n261), .D(n_zz_9[4]), .Y(N144) );
  ao4a3 U354 ( .A(n260), .B(intadd_1_SUM_3_), .C(n261), .D(n_zz_9[5]), .Y(N145) );
  ao4a3 U355 ( .A(n260), .B(intadd_1_SUM_4_), .C(n261), .D(n_zz_9[6]), .Y(N146) );
  ao4a3 U356 ( .A(n260), .B(intadd_1_SUM_5_), .C(n226), .D(n_zz_9[7]), .Y(N147) );
  ao4a3 U357 ( .A(n260), .B(intadd_1_SUM_6_), .C(n261), .D(n_zz_9[8]), .Y(N148) );
  ao4a3 U358 ( .A(n260), .B(intadd_1_SUM_7_), .C(n261), .D(n_zz_9[9]), .Y(N149) );
  ao4a3 U359 ( .A(n260), .B(intadd_1_SUM_8_), .C(n261), .D(n_zz_9[10]), .Y(
        N150) );
  ao4a3 U360 ( .A(n260), .B(intadd_1_SUM_9_), .C(n261), .D(n_zz_9[11]), .Y(
        N151) );
  ao4a3 U361 ( .A(n260), .B(intadd_1_SUM_10_), .C(n261), .D(n_zz_9[12]), .Y(
        N152) );
  inv1a1 U362 ( .A(n263), .Y(n266) );
  and2c3 U363 ( .A(n_zz_9[13]), .B(n262), .Y(n280) );
  and2c3 U364 ( .A(n262), .B(n275), .Y(n281) );
  mulpa1b1 U365 ( .X0(n263), .X1(n266), .S(psum1[14]), .Z(n280), .M(n281), .P(
        n264) );
  or2c1 U366 ( .A(n264), .B(n284), .Y(N154) );
  ao1d2 U367 ( .A(intadd_1_n1), .B(psum1[13]), .C(n275), .Y(n265) );
  ao1f2 U368 ( .A(n275), .B(n266), .C(n269), .Y(n270) );
  mulpa1b1 U369 ( .X0(n_zz_11_0_), .X1(n268), .S(n270), .Z(n280), .M(n281), 
        .P(n267) );
  or2c1 U370 ( .A(n267), .B(n284), .Y(N155) );
  oa1f3 U371 ( .A(n275), .B(n269), .C(n268), .Y(n273) );
  oa1f3 U372 ( .A(n_zz_9[13]), .B(n270), .C(n273), .Y(n276) );
  mulpa3b1 U373 ( .X0(n_zz_11_1_), .X1(n271), .S(n276), .Z(n281), .M(n280), 
        .P(n272) );
  or2c1 U374 ( .A(n272), .B(n284), .Y(N156) );
  ao1f2 U375 ( .A(n_zz_9[13]), .B(n273), .C(n_zz_11_1_), .Y(n274) );
  ao1f2 U376 ( .A(n276), .B(n275), .C(n274), .Y(n279) );
  inv1a1 U377 ( .A(n279), .Y(n277) );
  mulpa3b1 U378 ( .X0(n277), .X1(n279), .S(n_zz_11_2_), .Z(n281), .M(n280), 
        .P(n278) );
  or2c1 U379 ( .A(n278), .B(n284), .Y(N157) );
  fac2a1 U380 ( .A(n_zz_9[13]), .B(n_zz_11_2_), .CI(n279), .CO(n282) );
  mulpa3b1 U381 ( .X0(psum_out1[15]), .X1(n283), .S(n282), .Z(n281), .M(n280), 
        .P(n285) );
  or2c1 U382 ( .A(n285), .B(n284), .Y(N158) );
  and3d2 U383 ( .A(n288), .B(n287), .C(n286), .Y(N189) );
  oa4f3 U384 ( .A(n321), .B(rg_cos_table_2[7]), .C(n320), .D(rg_cos_table_1[7]), .Y(n296) );
  oa4f3 U385 ( .A(n307), .B(rg_cos_table_4[7]), .C(n322), .D(rg_cos_table_6[7]), .Y(n295) );
  or2c1 U386 ( .A(n297), .B(rg_cos_table_3[7]), .Y(n291) );
  oa4f3 U387 ( .A(n289), .B(rg_cos_table_5[7]), .C(n324), .D(rg_cos_table_7[7]), .Y(n290) );
  or2c1 U388 ( .A(n291), .B(n290), .Y(n292) );
  oa1f3 U389 ( .A(n293), .B(rg_cos_table_0[7]), .C(n292), .Y(n294) );
  or3d1 U390 ( .A(n296), .B(n295), .C(n294), .Y(n207) );
  oa4f3 U391 ( .A(n307), .B(rg_sin_table_4[7]), .C(n306), .D(rg_sin_table_6[7]), .Y(n302) );
  or2c1 U392 ( .A(n297), .B(rg_sin_table_3[7]), .Y(n299) );
  or2c1 U393 ( .A(n299), .B(n298), .Y(n300) );
  oa1f3 U394 ( .A(n34), .B(rg_sin_table_0[7]), .C(n300), .Y(n301) );
  or3d1 U395 ( .A(n303), .B(n302), .C(n301), .Y(n199) );
  oa4f3 U396 ( .A(n307), .B(rg_sin_table_4[6]), .C(n306), .D(rg_sin_table_6[6]), .Y(n312) );
  or2c1 U397 ( .A(n297), .B(rg_sin_table_3[6]), .Y(n309) );
  or2c1 U398 ( .A(n309), .B(n308), .Y(n310) );
  oa1f3 U399 ( .A(n34), .B(rg_sin_table_0[6]), .C(n310), .Y(n311) );
  oa4f3 U400 ( .A(n321), .B(rg_sin_table_2[5]), .C(n320), .D(rg_sin_table_1[5]), .Y(n319) );
  oa4f3 U401 ( .A(n323), .B(rg_sin_table_4[5]), .C(n322), .D(rg_sin_table_6[5]), .Y(n318) );
  or2c1 U402 ( .A(n7), .B(rg_sin_table_3[5]), .Y(n315) );
  oa4f3 U403 ( .A(n35), .B(rg_sin_table_5[5]), .C(n324), .D(rg_sin_table_7[5]), 
        .Y(n314) );
  or2c1 U404 ( .A(n315), .B(n314), .Y(n316) );
  oa4f3 U405 ( .A(n321), .B(rg_sin_table_2[4]), .C(n320), .D(rg_sin_table_1[4]), .Y(n331) );
  oa4f3 U406 ( .A(n323), .B(rg_sin_table_4[4]), .C(n322), .D(rg_sin_table_6[4]), .Y(n330) );
  or2c1 U407 ( .A(n7), .B(rg_sin_table_3[4]), .Y(n327) );
  oa4f3 U408 ( .A(n35), .B(rg_sin_table_5[4]), .C(n324), .D(rg_sin_table_7[4]), 
        .Y(n326) );
  or2c1 U409 ( .A(n327), .B(n326), .Y(n328) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cordic_int_0 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3416;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3416) );
  and2a3 main_gate ( .A(net3416), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cordic_int_2 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3416;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3416) );
  and2a3 main_gate ( .A(net3416), .B(CLK), .Y(ENCLK) );
endmodule


module SNPS_CLOCK_GATE_HIGH_cordic_int_1 ( CLK, EN, ENCLK );
  input CLK, EN;
  output ENCLK;
  wire   net3416;

  ldf1b3 latch ( .D(EN), .G(CLK), .Q(net3416) );
  and2a3 main_gate ( .A(net3416), .B(CLK), .Y(ENCLK) );
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
         N354, N355, net3422, net3427, net3432, n195, n197, n198, n199, n200,
         n201, n202, n203, n205, DP_OP_39J1_122_1632_n19,
         DP_OP_39J1_122_1632_n18, DP_OP_39J1_122_1632_n17,
         DP_OP_39J1_122_1632_n16, DP_OP_39J1_122_1632_n15,
         DP_OP_39J1_122_1632_n14, DP_OP_39J1_122_1632_n9,
         DP_OP_39J1_122_1632_n8, DP_OP_39J1_122_1632_n7,
         DP_OP_39J1_122_1632_n6, DP_OP_39J1_122_1632_n5,
         DP_OP_39J1_122_1632_n4, DP_OP_39J1_122_1632_n3,
         DP_OP_39J1_122_1632_n2, n1, n2, n3, n4, n8, n9, n10, n11, n12, n13,
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
         n187, n188, n189, n190, n191, n192, n193, n194, n196, n204, n206,
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
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437,
         n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448,
         n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459,
         n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, n657,
         n658, n659, n660, n661, n662, n663, n664, n665, n666, n667, n668,
         n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679,
         n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, n690,
         n691, n692, n693, n694, n695, n696, n697, n698, n699, n700, n701,
         n702, n703, n704, n705, n706, n707, n708, n709, n710, n711, n712,
         n713;
  wire   [1:0] n_zz_16;
  wire   [6:0] res_rg;
  wire   [2:0] cal_cnt;
  wire   [17:0] xn;
  wire   [17:0] yn;

  SNPS_CLOCK_GATE_HIGH_cordic_int_0 clk_gate_yn_reg ( .CLK(clk), .EN(N354), 
        .ENCLK(net3422) );
  SNPS_CLOCK_GATE_HIGH_cordic_int_2 clk_gate_res_rg_reg ( .CLK(clk), .EN(N355), 
        .ENCLK(net3427) );
  SNPS_CLOCK_GATE_HIGH_cordic_int_1 clk_gate_res_out_reg ( .CLK(clk), .EN(
        cal_finish_delay), .ENCLK(net3432) );
  fdf2a3 res_rg_reg_0_ ( .D(N324), .CLK(net3427), .CLR(n710), .Q(res_rg[0]) );
  fdf2a3 res_rg_reg_1_ ( .D(n708), .CLK(net3427), .CLR(n711), .Q(res_rg[1]) );
  fdf2a3 res_rg_reg_2_ ( .D(n707), .CLK(net3427), .CLR(n709), .Q(res_rg[2]) );
  fdf2a3 res_rg_reg_3_ ( .D(n706), .CLK(net3427), .CLR(n710), .Q(res_rg[3]) );
  fdf2a3 res_rg_reg_4_ ( .D(n705), .CLK(net3427), .CLR(n709), .Q(res_rg[4]) );
  fdf2a3 res_rg_reg_5_ ( .D(n704), .CLK(net3427), .CLR(n711), .Q(res_rg[5]) );
  fdf2a3 res_rg_reg_6_ ( .D(N330), .CLK(net3427), .CLR(n709), .Q(res_rg[6]) );
  fdf2a3 res_rg_reg_7_ ( .D(N331), .CLK(net3427), .CLR(n710), .Q(n_zz_16[0])
         );
  fdf2a3 res_rg_reg_8_ ( .D(N332), .CLK(net3427), .CLR(n709), .Q(n_zz_16[1])
         );
  fdf2a3 res_out_reg_0_ ( .D(n203), .CLK(net3432), .CLR(n709), .Q(res[0]) );
  fdf2a3 res_out_reg_1_ ( .D(n202), .CLK(net3432), .CLR(n709), .Q(res[1]) );
  fdf2a3 res_out_reg_2_ ( .D(n201), .CLK(net3432), .CLR(n709), .Q(res[2]) );
  fdf2a3 res_out_reg_3_ ( .D(n200), .CLK(net3432), .CLR(n709), .Q(res[3]) );
  fdf2a3 res_out_reg_4_ ( .D(n199), .CLK(net3432), .CLR(n709), .Q(res[4]) );
  fdf2a3 res_out_reg_5_ ( .D(n198), .CLK(net3432), .CLR(n709), .Q(res[5]) );
  fdf2a3 res_out_reg_6_ ( .D(n197), .CLK(net3432), .CLR(n709), .Q(res[6]) );
  fdf2a3 yn_reg_0_ ( .D(N335), .CLK(net3422), .CLR(n710), .Q(yn[0]) );
  fdf2a3 yn_reg_1_ ( .D(N336), .CLK(net3422), .CLR(n710), .Q(yn[1]) );
  fdf2a3 yn_reg_2_ ( .D(N337), .CLK(net3422), .CLR(n710), .Q(yn[2]) );
  fdf2a3 yn_reg_3_ ( .D(N338), .CLK(net3422), .CLR(n710), .Q(yn[3]) );
  fdf2a3 yn_reg_4_ ( .D(N339), .CLK(net3422), .CLR(n710), .Q(yn[4]) );
  fdf2a3 yn_reg_5_ ( .D(N340), .CLK(net3422), .CLR(n710), .Q(yn[5]) );
  fdf2a3 yn_reg_6_ ( .D(N341), .CLK(net3422), .CLR(n710), .Q(yn[6]) );
  fdf2a3 yn_reg_7_ ( .D(N342), .CLK(net3422), .CLR(n710), .Q(yn[7]) );
  fdf2a3 yn_reg_8_ ( .D(N343), .CLK(net3422), .CLR(n710), .Q(yn[8]) );
  fdf2a3 yn_reg_9_ ( .D(N344), .CLK(net3422), .CLR(n710), .Q(yn[9]) );
  fdf2a3 yn_reg_10_ ( .D(N345), .CLK(net3422), .CLR(n710), .Q(yn[10]) );
  fdf2a3 yn_reg_11_ ( .D(N346), .CLK(net3422), .CLR(n711), .Q(yn[11]) );
  fdf2a3 yn_reg_12_ ( .D(N347), .CLK(net3422), .CLR(n711), .Q(yn[12]) );
  fdf2a3 yn_reg_13_ ( .D(N348), .CLK(net3422), .CLR(n711), .Q(yn[13]) );
  fdf2a3 yn_reg_14_ ( .D(N349), .CLK(net3422), .CLR(n711), .Q(yn[14]) );
  fdf2a3 yn_reg_15_ ( .D(N350), .CLK(net3422), .CLR(n711), .Q(yn[15]) );
  fdf2a3 yn_reg_16_ ( .D(N351), .CLK(net3422), .CLR(n711), .Q(yn[16]) );
  fdf2a3 yn_reg_17_ ( .D(N352), .CLK(net3422), .CLR(n711), .Q(yn[17]) );
  fdf2a3 xn_reg_0_ ( .D(N305), .CLK(net3422), .CLR(n711), .Q(xn[0]) );
  fdf2a3 xn_reg_1_ ( .D(N306), .CLK(net3422), .CLR(n711), .Q(xn[1]) );
  fdf2a3 xn_reg_2_ ( .D(N307), .CLK(net3422), .CLR(n711), .Q(xn[2]) );
  fdf2a3 xn_reg_3_ ( .D(N308), .CLK(net3422), .CLR(resetn), .Q(xn[3]) );
  fdf2a3 xn_reg_4_ ( .D(N309), .CLK(net3422), .CLR(n710), .Q(xn[4]) );
  fdf2a3 xn_reg_5_ ( .D(N310), .CLK(net3422), .CLR(n711), .Q(xn[5]) );
  fdf2a3 xn_reg_6_ ( .D(N311), .CLK(net3422), .CLR(n709), .Q(xn[6]) );
  fdf2a3 xn_reg_7_ ( .D(N312), .CLK(net3422), .CLR(resetn), .Q(xn[7]) );
  fdf2a3 xn_reg_8_ ( .D(N313), .CLK(net3422), .CLR(n710), .Q(xn[8]) );
  fdf2a3 xn_reg_9_ ( .D(N314), .CLK(net3422), .CLR(n711), .Q(xn[9]) );
  fdf2a3 xn_reg_10_ ( .D(N315), .CLK(net3422), .CLR(n709), .Q(xn[10]) );
  fdf2a3 xn_reg_11_ ( .D(N316), .CLK(net3422), .CLR(resetn), .Q(xn[11]) );
  fdf2a3 xn_reg_12_ ( .D(N317), .CLK(net3422), .CLR(resetn), .Q(xn[12]) );
  fdf2a3 xn_reg_13_ ( .D(N318), .CLK(net3422), .CLR(resetn), .Q(xn[13]) );
  fdf2a3 xn_reg_14_ ( .D(N319), .CLK(net3422), .CLR(resetn), .Q(xn[14]) );
  fdf2a3 xn_reg_15_ ( .D(n703), .CLK(net3422), .CLR(resetn), .Q(xn[15]) );
  fdf2a3 xn_reg_17_ ( .D(N322), .CLK(net3422), .CLR(resetn), .Q(xn[17]) );
  fdef2a3 cal_finish_delay_reg ( .D(n205), .E(en), .CLK(clk), .CLR(resetn), 
        .Q(cal_finish_delay) );
  fdef3a6 nozero_flg_reg ( .D(n713), .E(n712), .CLK(net3427), .PRE(resetn), 
        .Q(nozero_flg) );
  fdf2a3 cal_cnt_reg_2_ ( .D(N304), .CLK(net3427), .CLR(n709), .Q(cal_cnt[2])
         );
  fdf2a3 xn_reg_16_ ( .D(N321), .CLK(net3422), .CLR(resetn), .Q(xn[16]) );
  fdf2a3 cal_en_regNext_reg ( .D(cal_en), .CLK(clk), .CLR(n711), .Q(
        cal_en_regNext) );
  fdf2a3 cal_cnt_reg_0_ ( .D(N302), .CLK(net3427), .CLR(n709), .Q(cal_cnt[0])
         );
  fdf2a3 xn_reg_18_ ( .D(N323), .CLK(net3422), .CLR(resetn), .Q(
        xn_rightshift_18_) );
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
  fdef2a3 finish_reg ( .D(cal_finish_delay), .E(en), .CLK(clk), .CLR(resetn), 
        .Q(res_vld) );
  fdf2c3 res_out_reg_7_ ( .D(n_zz_16[1]), .CLK(net3432), .CLR(resetn), .QN(
        n702) );
  fa1a3 DP_OP_39J1_122_1632_U6 ( .A(res_rg[4]), .B(DP_OP_39J1_122_1632_n15), 
        .CI(DP_OP_39J1_122_1632_n6), .CO(DP_OP_39J1_122_1632_n5), .S(N296) );
  fa1a3 DP_OP_39J1_122_1632_U5 ( .A(res_rg[5]), .B(DP_OP_39J1_122_1632_n14), 
        .CI(DP_OP_39J1_122_1632_n5), .CO(DP_OP_39J1_122_1632_n4), .S(N297) );
  fdf2a9 cal_cnt_reg_1_ ( .D(N303), .CLK(net3427), .CLR(n709), .Q(cal_cnt[1])
         );
  fdf2a3 cal_en_reg ( .D(n195), .CLK(clk), .CLR(resetn), .Q(cal_en) );
  fdf2a9 yn_reg_18_ ( .D(N353), .CLK(net3422), .CLR(n711), .Q(N158) );
  or2c1 U3 ( .A(n193), .B(n192), .Y(n668) );
  or2c1 U4 ( .A(n179), .B(n178), .Y(n641) );
  or2c1 U5 ( .A(n190), .B(n189), .Y(n661) );
  or2c1 U6 ( .A(n158), .B(n157), .Y(n596) );
  or2c1 U7 ( .A(n142), .B(n141), .Y(n569) );
  or2c1 U8 ( .A(n155), .B(n154), .Y(n582) );
  or2c1 U9 ( .A(n100), .B(n91), .Y(n517) );
  or2c1 U10 ( .A(n60), .B(n71), .Y(n76) );
  or2c1 U11 ( .A(n89), .B(n77), .Y(n504) );
  or2a1 U12 ( .A(n47), .B(n48), .Y(n46) );
  inv1a1 U13 ( .A(n481), .Y(n491) );
  or2c1 U14 ( .A(n48), .B(n47), .Y(n470) );
  and2c1 U15 ( .A(n695), .B(n143), .Y(n103) );
  and2c1 U16 ( .A(n304), .B(n328), .Y(n309) );
  and2c1 U17 ( .A(n358), .B(n432), .Y(n320) );
  inv1a1 U18 ( .A(n675), .Y(n10) );
  clk1b6 U19 ( .A(n701), .Y(n57) );
  or2c1 U20 ( .A(N158), .B(n366), .Y(n229) );
  inv1a3 U21 ( .A(n376), .Y(n3) );
  inv1a3 U22 ( .A(n342), .Y(n305) );
  inv1a3 U23 ( .A(n697), .Y(n693) );
  inv1a3 U24 ( .A(n39), .Y(n342) );
  or2c3 U25 ( .A(n449), .B(nozero_flg), .Y(n687) );
  or2c6 U26 ( .A(n25), .B(cal_cnt[1]), .Y(n424) );
  or2c3 U27 ( .A(n712), .B(cal_en), .Y(n449) );
  ao4f3 U28 ( .A(n685), .B(N158), .C(yn[16]), .D(n428), .Y(n8) );
  inv1a1 U29 ( .A(n493), .Y(n74) );
  or2c1 U30 ( .A(n169), .B(n168), .Y(n628) );
  or2c1 U31 ( .A(n120), .B(n119), .Y(n543) );
  inv1a1 U32 ( .A(n449), .Y(n626) );
  inv1a1 U33 ( .A(N158), .Y(n228) );
  or2c1 U34 ( .A(n167), .B(n628), .Y(n630) );
  or2c1 U35 ( .A(n188), .B(n661), .Y(n663) );
  or2c1 U36 ( .A(n153), .B(n582), .Y(n584) );
  or2c1 U37 ( .A(n536), .B(n537), .Y(n396) );
  or2c1 U38 ( .A(n131), .B(n130), .Y(n556) );
  or2c1 U39 ( .A(n111), .B(n110), .Y(n530) );
  or2a1 U40 ( .A(n77), .B(n89), .Y(n88) );
  and2a1 U41 ( .A(N293), .B(n701), .Y(n708) );
  xor2a2 U42 ( .A(n166), .B(n216), .Y(n169) );
  xor2a2 U43 ( .A(n21), .B(n216), .Y(n158) );
  or2c1 U44 ( .A(n211), .B(n210), .Y(n677) );
  xor2a2 U45 ( .A(n187), .B(n216), .Y(n190) );
  ao2i2 U46 ( .A(n18), .B(n328), .C(n312), .D(n17), .Y(n19) );
  ao2i1 U47 ( .A(n2), .B(xn_rightshift_18_), .C(n233), .D(n312), .Y(n234) );
  ao2i1 U48 ( .A(n3), .B(n66), .C(n65), .D(n64), .Y(n67) );
  ao4f1 U49 ( .A(n695), .B(n180), .C(n3), .D(n143), .Y(n149) );
  ao2i3 U50 ( .A(yn[14]), .B(n685), .C(n16), .D(n15), .Y(n113) );
  ao2i3 U51 ( .A(yn[10]), .B(n424), .C(n81), .D(n80), .Y(n123) );
  clk1b6 U52 ( .A(n3), .Y(n2) );
  clk1b6 U53 ( .A(n701), .Y(n1) );
  clk1b6 U54 ( .A(n25), .Y(n438) );
  or2c3 U55 ( .A(n401), .B(n400), .Y(n578) );
  or2c3 U56 ( .A(n397), .B(n396), .Y(n550) );
  or2c1 U57 ( .A(n129), .B(n556), .Y(n558) );
  inv1a1 U58 ( .A(n504), .Y(n90) );
  or2c1 U59 ( .A(n109), .B(n530), .Y(n532) );
  inv1a1 U60 ( .A(n556), .Y(n132) );
  inv1a1 U61 ( .A(n530), .Y(n112) );
  or2c1 U62 ( .A(n88), .B(n504), .Y(n506) );
  inv1a1 U63 ( .A(n628), .Y(n170) );
  inv1a1 U64 ( .A(n568), .Y(n570) );
  inv1a1 U65 ( .A(n582), .Y(n156) );
  inv1a1 U66 ( .A(n661), .Y(n191) );
  or2a1 U67 ( .A(n157), .B(n158), .Y(n595) );
  or2c1 U68 ( .A(n209), .B(n677), .Y(n679) );
  or2c1 U69 ( .A(n576), .B(n577), .Y(n404) );
  and2c3 U70 ( .A(n119), .B(n120), .Y(n542) );
  or2a1 U71 ( .A(n110), .B(n111), .Y(n109) );
  inv1a1 U72 ( .A(n562), .Y(n399) );
  or2c1 U73 ( .A(n562), .B(n563), .Y(n400) );
  inv1a1 U74 ( .A(n576), .Y(n403) );
  or2a1 U75 ( .A(n154), .B(n155), .Y(n153) );
  and2c3 U76 ( .A(n141), .B(n142), .Y(n568) );
  inv1a1 U77 ( .A(n499), .Y(n389) );
  inv1a1 U78 ( .A(n634), .Y(n408) );
  inv1a1 U79 ( .A(n677), .Y(n212) );
  or2c1 U80 ( .A(n634), .B(n635), .Y(n409) );
  or2a1 U81 ( .A(n130), .B(n131), .Y(n129) );
  inv1a1 U82 ( .A(n536), .Y(n395) );
  or2c1 U83 ( .A(n591), .B(n588), .Y(n406) );
  or2a1 U84 ( .A(n189), .B(n190), .Y(n188) );
  inv1a1 U85 ( .A(n640), .Y(n642) );
  or2a1 U86 ( .A(n168), .B(n169), .Y(n167) );
  inv1a1 U87 ( .A(n460), .Y(n34) );
  xor2a2 U88 ( .A(n118), .B(n216), .Y(n120) );
  and2c3 U89 ( .A(n178), .B(n179), .Y(n640) );
  xor2a2 U90 ( .A(n108), .B(n216), .Y(n111) );
  or2a1 U91 ( .A(n192), .B(n193), .Y(n667) );
  xor2a2 U92 ( .A(n140), .B(n216), .Y(n142) );
  or2c1 U93 ( .A(n219), .B(n218), .Y(n681) );
  or2a1 U94 ( .A(n210), .B(n211), .Y(n209) );
  xor2a2 U95 ( .A(n152), .B(n216), .Y(n155) );
  xor2a2 U96 ( .A(n128), .B(n216), .Y(n131) );
  ao4f2 U97 ( .A(n549), .B(n366), .C(n57), .D(n310), .Y(n311) );
  or2c1 U98 ( .A(n674), .B(n671), .Y(n415) );
  or2c1 U99 ( .A(n655), .B(n656), .Y(n413) );
  inv1a1 U100 ( .A(n655), .Y(n412) );
  ao4f3 U101 ( .A(n575), .B(n366), .C(n57), .D(n291), .Y(n292) );
  xor2a2 U102 ( .A(n177), .B(n216), .Y(n179) );
  oa1f3 U103 ( .A(n330), .B(n328), .C(n290), .Y(n291) );
  ao2i1 U104 ( .A(n115), .B(n686), .C(n114), .D(n312), .Y(n116) );
  ao2i3 U105 ( .A(n695), .B(n302), .C(n278), .D(n277), .Y(n281) );
  inv1a1 U106 ( .A(n577), .Y(n402) );
  ao4f3 U107 ( .A(n297), .B(n328), .C(n695), .D(n313), .Y(n298) );
  ao4f3 U108 ( .A(n289), .B(n328), .C(n695), .D(n314), .Y(n290) );
  ao2i1 U109 ( .A(n351), .B(n24), .C(n350), .D(n349), .Y(n353) );
  oa1f1 U110 ( .A(n122), .B(n121), .C(n24), .Y(n125) );
  oa1f1 U111 ( .A(n102), .B(n101), .C(n328), .Y(n104) );
  ao4f3 U112 ( .A(n697), .B(n314), .C(n279), .D(n302), .Y(n272) );
  oa2i2 U113 ( .A(n337), .B(n38), .C(n23), .D(n22), .Y(n83) );
  ao2i1 U114 ( .A(n3), .B(n295), .C(n259), .D(n268), .Y(n242) );
  oa1f1 U115 ( .A(n337), .B(xn[12]), .C(n303), .Y(n304) );
  clk1b6 U116 ( .A(n4), .Y(n456) );
  inv1a9 U117 ( .A(n428), .Y(n337) );
  or2c3 U118 ( .A(n626), .B(y[15]), .Y(n675) );
  inv1a3 U119 ( .A(xn[9]), .Y(n317) );
  inv1a3 U120 ( .A(n702), .Y(res[7]) );
  inv1a3 U121 ( .A(xn[12]), .Y(n313) );
  or2b2 U122 ( .B(n419), .A(n675), .Y(N353) );
  or2b2 U123 ( .B(n423), .A(n675), .Y(N352) );
  or2b2 U124 ( .B(n676), .A(n675), .Y(N351) );
  ao1f3 U125 ( .A(n674), .B(n671), .C(n672), .Y(n416) );
  or2b2 U126 ( .B(n659), .A(n675), .Y(N350) );
  xor2a2 U127 ( .A(n637), .B(n636), .Y(n638) );
  fa1a3 U128 ( .A(n604), .B(n603), .CI(n602), .CO(n636), .S(n605) );
  ao1f3 U129 ( .A(n591), .B(n588), .C(n589), .Y(n407) );
  xor2a2 U130 ( .A(n684), .B(n683), .Y(N322) );
  ao1f2 U131 ( .A(n684), .B(n680), .C(n681), .Y(n220) );
  xor2b2 U132 ( .A(n679), .B(n678), .Y(N321) );
  xor2a2 U133 ( .A(n579), .B(n578), .Y(n580) );
  ao1e3 U134 ( .B(n667), .A(n670), .C(n668), .Y(n678) );
  xor2a2 U135 ( .A(n670), .B(n669), .Y(n703) );
  xor2a2 U136 ( .A(n663), .B(n662), .Y(n664) );
  oa1f3 U137 ( .A(n662), .B(n188), .C(n191), .Y(n670) );
  xor2b2 U138 ( .A(n644), .B(n643), .Y(n645) );
  xor2a2 U139 ( .A(n565), .B(n564), .Y(n566) );
  xor2a2 U140 ( .A(n630), .B(n629), .Y(n631) );
  fa1a3 U141 ( .A(n552), .B(n551), .CI(n550), .CO(n564), .S(n553) );
  xor2b2 U142 ( .A(n598), .B(n597), .Y(n599) );
  ao1e3 U143 ( .B(n595), .A(n598), .C(n596), .Y(n629) );
  xor2a2 U144 ( .A(n584), .B(n583), .Y(n585) );
  oa1f3 U145 ( .A(n583), .B(n153), .C(n156), .Y(n598) );
  xor2a2 U146 ( .A(n539), .B(n538), .Y(n540) );
  fa1a3 U147 ( .A(n526), .B(n525), .CI(n524), .CO(n538), .S(n527) );
  xor2b2 U148 ( .A(n572), .B(n571), .Y(n573) );
  xor2a2 U149 ( .A(n558), .B(n557), .Y(n559) );
  or2c3 U150 ( .A(n393), .B(n392), .Y(n524) );
  xor2b2 U151 ( .A(n546), .B(n545), .Y(n547) );
  or2c3 U152 ( .A(n391), .B(n390), .Y(n510) );
  ao1d2 U153 ( .A(n222), .B(n701), .C(n654), .Y(N332) );
  oa1f3 U154 ( .A(n531), .B(n109), .C(n112), .Y(n546) );
  xor2a2 U155 ( .A(n532), .B(n531), .Y(n533) );
  xor2a2 U156 ( .A(n501), .B(n500), .Y(n502) );
  ao1d2 U157 ( .A(n389), .B(n388), .C(n500), .Y(n391) );
  ao1f3 U158 ( .A(n520), .B(n516), .C(n517), .Y(n531) );
  ao1d2 U159 ( .A(N299), .B(n701), .C(n654), .Y(N331) );
  xor2b2 U160 ( .A(n495), .B(n494), .Y(n496) );
  xor2b2 U161 ( .A(n520), .B(n519), .Y(n521) );
  xor2a2 U162 ( .A(n483), .B(n492), .Y(n484) );
  xor2a2 U163 ( .A(n506), .B(n505), .Y(n507) );
  fa1a2 U164 ( .A(n348), .B(n487), .CI(n486), .CO(n500), .S(n488) );
  and2a3 U165 ( .A(N297), .B(n701), .Y(n704) );
  inv1a1 U166 ( .A(n482), .Y(n492) );
  ao1f2 U167 ( .A(n482), .B(n76), .C(n75), .Y(n505) );
  xor2a2 U168 ( .A(n472), .B(n471), .Y(n473) );
  or2c1 U169 ( .A(n595), .B(n596), .Y(n597) );
  or2c1 U170 ( .A(n544), .B(n543), .Y(n545) );
  or2c1 U171 ( .A(n60), .B(n481), .Y(n483) );
  or2c1 U172 ( .A(n71), .B(n493), .Y(n494) );
  or2c1 U173 ( .A(n46), .B(n470), .Y(n472) );
  and2a3 U174 ( .A(N296), .B(n701), .Y(n705) );
  or2c1 U175 ( .A(n570), .B(n569), .Y(n571) );
  or2c1 U176 ( .A(n518), .B(n517), .Y(n519) );
  xor2a2 U177 ( .A(n478), .B(n477), .Y(n479) );
  or2c1 U178 ( .A(n682), .B(n681), .Y(n683) );
  inv1a1 U179 ( .A(n470), .Y(n49) );
  or2c1 U180 ( .A(n667), .B(n668), .Y(n669) );
  and2a3 U181 ( .A(N295), .B(n701), .Y(n706) );
  or2c1 U182 ( .A(n642), .B(n641), .Y(n643) );
  and2a3 U183 ( .A(N294), .B(n701), .Y(n707) );
  ao1f2 U184 ( .A(n34), .B(n457), .C(n458), .Y(n471) );
  or2a3 U185 ( .A(n50), .B(n72), .Y(n60) );
  or2a3 U186 ( .A(n61), .B(n73), .Y(n71) );
  and2c3 U187 ( .A(n218), .B(n219), .Y(n680) );
  ao1f2 U188 ( .A(n498), .B(n366), .C(n354), .Y(n355) );
  ao1f2 U189 ( .A(n617), .B(n366), .C(n360), .Y(n361) );
  ao4f2 U190 ( .A(n535), .B(n366), .C(n1), .D(n323), .Y(n324) );
  xor2a2 U191 ( .A(n461), .B(n460), .Y(n462) );
  ao2i1 U192 ( .A(n330), .B(n24), .C(n352), .D(n329), .Y(n331) );
  ao2i1 U193 ( .A(n314), .B(n696), .C(n263), .D(n262), .Y(n264) );
  ao2i1 U194 ( .A(n83), .B(n686), .C(n82), .D(n352), .Y(n84) );
  xor2a2 U195 ( .A(n13), .B(n216), .Y(n193) );
  inv1a1 U196 ( .A(n563), .Y(n398) );
  inv1a1 U197 ( .A(n671), .Y(n673) );
  inv1a1 U198 ( .A(n656), .Y(n411) );
  ao1d2 U199 ( .A(n215), .B(n352), .C(n654), .Y(n217) );
  inv1a1 U200 ( .A(n537), .Y(n394) );
  oa1f3 U201 ( .A(n344), .B(n328), .C(n298), .Y(n299) );
  oa1f2 U202 ( .A(n105), .B(n686), .C(n55), .Y(n56) );
  oa1f2 U203 ( .A(n96), .B(n686), .C(n42), .Y(n43) );
  ao2i1 U204 ( .A(n96), .B(n686), .C(n95), .D(n312), .Y(n97) );
  ao2i2 U205 ( .A(n344), .B(n24), .C(n352), .D(n343), .Y(n345) );
  ao2i2 U206 ( .A(n174), .B(n686), .C(n173), .D(n312), .Y(n175) );
  oa1f3 U207 ( .A(n18), .B(n328), .C(n196), .Y(n11) );
  and2a3 U208 ( .A(n362), .B(yn[2]), .Y(n363) );
  ao2i2 U209 ( .A(n685), .B(xn[10]), .C(n307), .D(n306), .Y(n351) );
  and2a3 U210 ( .A(n364), .B(yn[1]), .Y(n365) );
  and2a3 U211 ( .A(n362), .B(yn[3]), .Y(n348) );
  and2a3 U212 ( .A(n362), .B(yn[5]), .Y(n333) );
  or2c3 U213 ( .A(n362), .B(xn_rightshift_18_), .Y(n224) );
  and2a3 U214 ( .A(n352), .B(yn[4]), .Y(n347) );
  and2a3 U215 ( .A(n362), .B(xn[4]), .Y(n77) );
  ao2i2 U216 ( .A(n305), .B(n259), .C(n251), .D(n250), .Y(n252) );
  ao2i2 U217 ( .A(n697), .B(n66), .C(n41), .D(n40), .Y(n42) );
  and2a1 U218 ( .A(y[0]), .B(n35), .Y(n30) );
  and2a3 U219 ( .A(n352), .B(xn[3]), .Y(n61) );
  and2a3 U220 ( .A(n312), .B(xn[5]), .Y(n91) );
  ao2i2 U221 ( .A(n161), .B(n328), .C(n160), .D(n159), .Y(n162) );
  oa1f2 U222 ( .A(n83), .B(n686), .C(n29), .Y(n31) );
  and2c2 U223 ( .A(n216), .B(n33), .Y(n457) );
  and2a3 U224 ( .A(n312), .B(xn[2]), .Y(n50) );
  oa4f2 U225 ( .A(n337), .B(n92), .C(n426), .D(n79), .Y(n80) );
  oa4f2 U226 ( .A(n693), .B(yn[5]), .C(n694), .D(yn[6]), .Y(n65) );
  oa4f2 U227 ( .A(n693), .B(xn[5]), .C(n694), .D(xn[6]), .Y(n350) );
  oa4f2 U228 ( .A(n376), .B(yn[1]), .C(n692), .D(yn[2]), .Y(n41) );
  ao2i2 U229 ( .A(yn[11]), .B(n424), .C(n94), .D(n93), .Y(n136) );
  oa4f2 U230 ( .A(n693), .B(yn[4]), .C(n694), .D(yn[5]), .Y(n54) );
  oa4f2 U231 ( .A(n2), .B(xn[3]), .C(n692), .D(xn[4]), .Y(n349) );
  inv1a3 U232 ( .A(x[13]), .Y(n647) );
  inv1a3 U233 ( .A(x[7]), .Y(n549) );
  oa1f3 U234 ( .A(n692), .B(xn[17]), .C(n238), .Y(n239) );
  inv1a3 U235 ( .A(x[9]), .Y(n575) );
  inv1a3 U236 ( .A(x[6]), .Y(n535) );
  inv1a3 U237 ( .A(x[10]), .Y(n587) );
  oa1f1 U238 ( .A(n337), .B(xn[11]), .C(n315), .Y(n316) );
  ao2i2 U239 ( .A(n279), .B(n66), .C(n28), .D(n27), .Y(n29) );
  oa4f2 U240 ( .A(n2), .B(xn[11]), .C(n322), .D(xn[15]), .Y(n270) );
  oa1f1 U241 ( .A(n337), .B(xn[13]), .C(n296), .Y(n297) );
  inv1a3 U242 ( .A(x[11]), .Y(n601) );
  inv1a3 U243 ( .A(x[8]), .Y(n561) );
  oa4f2 U244 ( .A(n339), .B(n317), .C(n305), .D(n334), .Y(n306) );
  buf1a6 U245 ( .A(n24), .Y(n328) );
  ao1f1 U246 ( .A(n428), .B(n295), .C(n276), .Y(n282) );
  and2c2 U247 ( .A(n688), .B(n687), .Y(N304) );
  oa4f2 U248 ( .A(n339), .B(n135), .C(n305), .D(n79), .Y(n15) );
  ao1f1 U249 ( .A(rg_cordic_iternum[1]), .B(n428), .C(n427), .Y(n430) );
  and2a1 U250 ( .A(n701), .B(yn[0]), .Y(n373) );
  and2a1 U251 ( .A(n701), .B(xn[0]), .Y(n33) );
  ao4f2 U252 ( .A(n342), .B(yn[4]), .C(yn[6]), .D(n424), .Y(n22) );
  oa1f3 U253 ( .A(n686), .B(n685), .C(n694), .Y(n688) );
  and2c1 U254 ( .A(n685), .B(yn[7]), .Y(n23) );
  and2c2 U255 ( .A(n687), .B(n438), .Y(N302) );
  inv1a3 U256 ( .A(n694), .Y(n279) );
  buf1a6 U257 ( .A(n455), .Y(n4) );
  inv1a3 U258 ( .A(yn[15]), .Y(n182) );
  inv1a3 U259 ( .A(yn[3]), .Y(n66) );
  inv1a9 U260 ( .A(cal_cnt[2]), .Y(n24) );
  inv1a3 U261 ( .A(xn[15]), .Y(n295) );
  inv1a3 U262 ( .A(xn[13]), .Y(n314) );
  inv1a2 U263 ( .A(yn[9]), .Y(n92) );
  inv1a3 U264 ( .A(cal_cnt[1]), .Y(n258) );
  buf1a9 U265 ( .A(resetn), .Y(n711) );
  inv1a9 U266 ( .A(n35), .Y(n654) );
  clk1b6 U267 ( .A(n35), .Y(n85) );
  ao2i1 U268 ( .A(n174), .B(n328), .C(n312), .D(n137), .Y(n138) );
  xor2b2 U269 ( .A(n224), .B(n220), .Y(N323) );
  oa4f1 U270 ( .A(n337), .B(n338), .C(n426), .D(n325), .Y(n327) );
  or2c1 U271 ( .A(n72), .B(n50), .Y(n481) );
  or2c1 U272 ( .A(n73), .B(n61), .Y(n493) );
  buf1a9 U273 ( .A(resetn), .Y(n709) );
  buf1a9 U274 ( .A(resetn), .Y(n710) );
  xor2a2 U275 ( .A(n99), .B(n216), .Y(n100) );
  xor2a2 U276 ( .A(n87), .B(n216), .Y(n89) );
  xor2a2 U277 ( .A(n217), .B(n216), .Y(n219) );
  xor2a2 U278 ( .A(n208), .B(n216), .Y(n211) );
  or2c1 U279 ( .A(n33), .B(n216), .Y(n458) );
  xor2a2 U280 ( .A(n70), .B(n216), .Y(n73) );
  xor2a2 U281 ( .A(n59), .B(n216), .Y(n72) );
  xor2a2 U282 ( .A(n45), .B(n216), .Y(n48) );
  xor2a2 U283 ( .A(n32), .B(n216), .Y(n460) );
  oa1f1 U284 ( .A(n115), .B(n686), .C(n67), .Y(n68) );
  inv1a3 U285 ( .A(x[12]), .Y(n633) );
  oa1f3 U286 ( .A(n437), .B(cal_en_regNext), .C(n436), .Y(N355) );
  inv1a3 U287 ( .A(x[14]), .Y(n666) );
  and2c3 U288 ( .A(rg_cordic_iternum[0]), .B(rg_cordic_iternum[1]), .Y(n431)
         );
  ao1f1 U289 ( .A(n214), .B(n432), .C(n213), .Y(n215) );
  ao2i1 U290 ( .A(n696), .B(n182), .C(n213), .D(n181), .Y(n183) );
  or2c1 U291 ( .A(n476), .B(n363), .Y(n386) );
  or2c1 U292 ( .A(n512), .B(n333), .Y(n392) );
  ao1f2 U293 ( .A(n512), .B(n333), .C(n510), .Y(n393) );
  or2c1 U294 ( .A(n499), .B(n347), .Y(n390) );
  and2c3 U295 ( .A(n91), .B(n100), .Y(n516) );
  ao1f1 U296 ( .A(n448), .B(n447), .C(n446), .Y(n200) );
  ao1f1 U297 ( .A(n448), .B(n445), .C(n446), .Y(n198) );
  ao1f1 U298 ( .A(n448), .B(n444), .C(n446), .Y(n202) );
  ao1f1 U299 ( .A(n448), .B(n443), .C(n446), .Y(n197) );
  ao1f1 U300 ( .A(n448), .B(n442), .C(n446), .Y(n199) );
  ao1f1 U301 ( .A(n448), .B(n441), .C(n446), .Y(n203) );
  ao1f1 U302 ( .A(n448), .B(n440), .C(n446), .Y(n201) );
  inv1a3 U303 ( .A(cal_en_regNext), .Y(n712) );
  inv1a15 U304 ( .A(n687), .Y(n701) );
  clk1b6 U305 ( .A(n57), .Y(n362) );
  clk1b6 U306 ( .A(n57), .Y(n312) );
  and2a3 U307 ( .A(n312), .B(xn[15]), .Y(n192) );
  clk1b6 U308 ( .A(cal_cnt[0]), .Y(n25) );
  and2a3 U309 ( .A(n25), .B(n258), .Y(n39) );
  and2c1 U310 ( .A(n424), .B(yn[17]), .Y(n9) );
  and2a3 U311 ( .A(cal_cnt[0]), .B(cal_cnt[1]), .Y(n335) );
  clk1b6 U312 ( .A(n335), .Y(n685) );
  or2c9 U313 ( .A(n258), .B(n438), .Y(n428) );
  oa2i2 U314 ( .A(n305), .B(n182), .C(n9), .D(n8), .Y(n18) );
  clk1b6 U315 ( .A(n24), .Y(n432) );
  or2c1 U316 ( .A(N158), .B(n432), .Y(n213) );
  inv1a1 U317 ( .A(n213), .Y(n196) );
  or2c3 U318 ( .A(n10), .B(x[15]), .Y(n12) );
  inv1a3 U319 ( .A(n12), .Y(n35) );
  ao1f2 U320 ( .A(n11), .B(n57), .C(n654), .Y(n13) );
  or2c3 U321 ( .A(n701), .B(N158), .Y(n223) );
  or2c9 U322 ( .A(n12), .B(n223), .Y(n216) );
  and2a3 U323 ( .A(n312), .B(xn[11]), .Y(n157) );
  inv1a1 U324 ( .A(y[11]), .Y(n20) );
  inv1a1 U325 ( .A(yn[12]), .Y(n14) );
  or2c1 U326 ( .A(n337), .B(n14), .Y(n16) );
  clk1b6 U327 ( .A(n424), .Y(n339) );
  inv1a1 U328 ( .A(yn[13]), .Y(n135) );
  inv1a1 U329 ( .A(yn[11]), .Y(n79) );
  or2c1 U330 ( .A(n113), .B(n328), .Y(n17) );
  ao1f2 U331 ( .A(n20), .B(n654), .C(n19), .Y(n21) );
  inv1a1 U332 ( .A(yn[5]), .Y(n38) );
  clk1b6 U333 ( .A(n24), .Y(n686) );
  and2a6 U334 ( .A(n24), .B(n335), .Y(n694) );
  or2c3 U335 ( .A(n25), .B(n24), .Y(n699) );
  and2c6 U336 ( .A(n699), .B(n258), .Y(n367) );
  clk1b6 U337 ( .A(n367), .Y(n697) );
  inv1a1 U338 ( .A(yn[2]), .Y(n26) );
  or2a1 U339 ( .A(n697), .B(n26), .Y(n28) );
  and2c6 U340 ( .A(n699), .B(cal_cnt[1]), .Y(n376) );
  and2c3 U341 ( .A(n432), .B(n428), .Y(n375) );
  oa4f1 U342 ( .A(n376), .B(yn[0]), .C(n375), .D(yn[1]), .Y(n27) );
  ao1c3 U343 ( .A(n31), .B(n1), .C(n30), .Y(n32) );
  inv1a3 U344 ( .A(n1), .Y(n364) );
  and2a3 U345 ( .A(n364), .B(xn[1]), .Y(n47) );
  inv1a1 U346 ( .A(y[1]), .Y(n44) );
  and2c1 U347 ( .A(n424), .B(yn[7]), .Y(n37) );
  ao4f1 U348 ( .A(n685), .B(yn[8]), .C(yn[6]), .D(n428), .Y(n36) );
  oa2i2 U349 ( .A(n39), .B(n38), .C(n37), .D(n36), .Y(n96) );
  buf1a6 U350 ( .A(n375), .Y(n692) );
  or2c1 U351 ( .A(n694), .B(yn[4]), .Y(n40) );
  ao4f3 U352 ( .A(n44), .B(n654), .C(n1), .D(n43), .Y(n45) );
  oa1f3 U353 ( .A(n471), .B(n46), .C(n49), .Y(n482) );
  inv1a1 U354 ( .A(y[2]), .Y(n58) );
  inv1a1 U355 ( .A(yn[8]), .Y(n78) );
  and2c1 U356 ( .A(n342), .B(yn[6]), .Y(n52) );
  ao4f1 U357 ( .A(n685), .B(yn[9]), .C(yn[7]), .D(n428), .Y(n51) );
  oa2i2 U358 ( .A(n339), .B(n78), .C(n52), .D(n51), .Y(n105) );
  inv1a3 U359 ( .A(n692), .Y(n696) );
  or2c1 U360 ( .A(n2), .B(yn[2]), .Y(n53) );
  ao2i3 U361 ( .A(n696), .B(n66), .C(n54), .D(n53), .Y(n55) );
  ao4f3 U362 ( .A(n58), .B(n654), .C(n57), .D(n56), .Y(n59) );
  clk1b6 U363 ( .A(n57), .Y(n352) );
  inv1a1 U364 ( .A(y[3]), .Y(n69) );
  and2c1 U365 ( .A(n342), .B(yn[7]), .Y(n63) );
  ao4f1 U366 ( .A(n685), .B(yn[10]), .C(yn[8]), .D(n428), .Y(n62) );
  oa2i2 U367 ( .A(n339), .B(n92), .C(n63), .D(n62), .Y(n115) );
  or2c1 U368 ( .A(n692), .B(yn[4]), .Y(n64) );
  ao4f3 U369 ( .A(n69), .B(n654), .C(n1), .D(n68), .Y(n70) );
  oa1f3 U370 ( .A(n71), .B(n491), .C(n74), .Y(n75) );
  inv1a1 U371 ( .A(y[4]), .Y(n86) );
  or2c1 U372 ( .A(n305), .B(n78), .Y(n81) );
  inv1a3 U373 ( .A(n685), .Y(n426) );
  or2c1 U374 ( .A(n123), .B(n686), .Y(n82) );
  ao1f2 U375 ( .A(n86), .B(n654), .C(n84), .Y(n87) );
  oa1f3 U376 ( .A(n505), .B(n88), .C(n90), .Y(n520) );
  inv1a1 U377 ( .A(y[5]), .Y(n98) );
  or2c1 U378 ( .A(n305), .B(n92), .Y(n94) );
  oa4a2 U379 ( .A(n685), .B(yn[12]), .C(yn[10]), .D(n428), .Y(n93) );
  or2c1 U380 ( .A(n136), .B(n432), .Y(n95) );
  ao1f2 U381 ( .A(n98), .B(n654), .C(n97), .Y(n99) );
  and2a3 U382 ( .A(n352), .B(xn[6]), .Y(n110) );
  inv1a1 U383 ( .A(y[6]), .Y(n107) );
  oa4f1 U384 ( .A(n339), .B(yn[12]), .C(n426), .D(yn[13]), .Y(n102) );
  or2c1 U385 ( .A(n337), .B(yn[11]), .Y(n101) );
  and2a3 U386 ( .A(n305), .B(n686), .Y(n322) );
  inv1a3 U387 ( .A(n322), .Y(n695) );
  inv1a1 U388 ( .A(yn[10]), .Y(n143) );
  oa2i2 U389 ( .A(n105), .B(n328), .C(n104), .D(n103), .Y(n106) );
  ao4f3 U390 ( .A(n107), .B(n654), .C(n1), .D(n106), .Y(n108) );
  and2a3 U391 ( .A(n362), .B(xn[7]), .Y(n119) );
  inv1a1 U392 ( .A(y[7]), .Y(n117) );
  or2c1 U393 ( .A(n113), .B(n432), .Y(n114) );
  ao1f2 U394 ( .A(n117), .B(n654), .C(n116), .Y(n118) );
  ao1f3 U395 ( .A(n546), .B(n542), .C(n543), .Y(n557) );
  and2a3 U396 ( .A(n362), .B(xn[8]), .Y(n130) );
  inv1a1 U397 ( .A(y[8]), .Y(n127) );
  clk1a3 U398 ( .A(n1), .Y(n300) );
  oa4f1 U399 ( .A(n339), .B(yn[14]), .C(n426), .D(yn[15]), .Y(n122) );
  or2c1 U400 ( .A(n337), .B(yn[13]), .Y(n121) );
  and2c1 U401 ( .A(n123), .B(n432), .Y(n124) );
  oa2i2 U402 ( .A(yn[12]), .B(n322), .C(n125), .D(n124), .Y(n126) );
  ao4f3 U403 ( .A(n127), .B(n654), .C(n300), .D(n126), .Y(n128) );
  oa1f3 U404 ( .A(n557), .B(n129), .C(n132), .Y(n572) );
  and2a3 U405 ( .A(n352), .B(xn[9]), .Y(n141) );
  inv1a1 U406 ( .A(y[9]), .Y(n139) );
  and2c1 U407 ( .A(n424), .B(yn[15]), .Y(n134) );
  ao4f1 U408 ( .A(n685), .B(yn[16]), .C(yn[14]), .D(n428), .Y(n133) );
  oa2i2 U409 ( .A(n305), .B(n135), .C(n134), .D(n133), .Y(n174) );
  or2c1 U410 ( .A(n136), .B(n24), .Y(n137) );
  ao1f2 U411 ( .A(n139), .B(n654), .C(n138), .Y(n140) );
  ao1f3 U412 ( .A(n572), .B(n568), .C(n569), .Y(n583) );
  and2a3 U413 ( .A(n352), .B(xn[10]), .Y(n154) );
  inv1a1 U414 ( .A(y[10]), .Y(n151) );
  inv1a1 U415 ( .A(yn[14]), .Y(n180) );
  and2c1 U416 ( .A(n428), .B(n182), .Y(n145) );
  inv1a1 U417 ( .A(yn[17]), .Y(n206) );
  and2c1 U418 ( .A(n685), .B(n206), .Y(n144) );
  oa2i2 U419 ( .A(yn[16]), .B(n339), .C(n145), .D(n144), .Y(n147) );
  oa4f1 U420 ( .A(n367), .B(yn[12]), .C(n694), .D(yn[13]), .Y(n146) );
  ao1f2 U421 ( .A(n147), .B(n328), .C(n146), .Y(n148) );
  oa2i2 U422 ( .A(n692), .B(yn[11]), .C(n149), .D(n148), .Y(n150) );
  ao4f3 U423 ( .A(n151), .B(n654), .C(n1), .D(n150), .Y(n152) );
  and2a3 U424 ( .A(n312), .B(xn[12]), .Y(n168) );
  inv1a1 U425 ( .A(y[12]), .Y(n165) );
  and2c1 U426 ( .A(n279), .B(n182), .Y(n163) );
  and2a3 U427 ( .A(N158), .B(cal_cnt[1]), .Y(n194) );
  oa1f1 U428 ( .A(n337), .B(yn[17]), .C(n194), .Y(n161) );
  or2c1 U429 ( .A(n367), .B(yn[14]), .Y(n160) );
  oa4f1 U430 ( .A(n2), .B(yn[12]), .C(n322), .D(yn[16]), .Y(n159) );
  oa2i2 U431 ( .A(n692), .B(yn[13]), .C(n163), .D(n162), .Y(n164) );
  ao4f3 U432 ( .A(n165), .B(n654), .C(n1), .D(n164), .Y(n166) );
  oa1f3 U433 ( .A(n629), .B(n167), .C(n170), .Y(n644) );
  and2a3 U434 ( .A(n352), .B(xn[13]), .Y(n178) );
  inv1a1 U435 ( .A(y[13]), .Y(n176) );
  and2c1 U436 ( .A(n438), .B(yn[17]), .Y(n171) );
  oa2i2 U437 ( .A(n228), .B(n438), .C(cal_cnt[1]), .D(n171), .Y(n172) );
  and2c3 U438 ( .A(n172), .B(n194), .Y(n214) );
  or2c1 U439 ( .A(n214), .B(n432), .Y(n173) );
  ao1f2 U440 ( .A(n176), .B(n654), .C(n175), .Y(n177) );
  ao1f3 U441 ( .A(n644), .B(n640), .C(n641), .Y(n662) );
  and2a3 U442 ( .A(n362), .B(xn[14]), .Y(n189) );
  inv1a1 U443 ( .A(y[14]), .Y(n186) );
  and2c1 U444 ( .A(n3), .B(n180), .Y(n184) );
  or2c1 U445 ( .A(n367), .B(yn[16]), .Y(n181) );
  oa2i2 U446 ( .A(yn[17]), .B(n694), .C(n184), .D(n183), .Y(n185) );
  ao4f3 U447 ( .A(n186), .B(n654), .C(n57), .D(n185), .Y(n187) );
  and2a3 U448 ( .A(n312), .B(xn[16]), .Y(n210) );
  oa2i2 U449 ( .A(n2), .B(yn[16]), .C(n196), .D(n194), .Y(n204) );
  ao1f2 U450 ( .A(n206), .B(n696), .C(n204), .Y(n207) );
  ao1d2 U451 ( .A(n207), .B(n352), .C(n654), .Y(n208) );
  oa1f3 U452 ( .A(n678), .B(n209), .C(n212), .Y(n684) );
  and2a3 U453 ( .A(n312), .B(xn[17]), .Y(n218) );
  xor2a2 U454 ( .A(n_zz_16[1]), .B(N158), .Y(n221) );
  xor2a2 U455 ( .A(n221), .B(DP_OP_39J1_122_1632_n2), .Y(n222) );
  inv1a1 U456 ( .A(n223), .Y(n232) );
  inv1a1 U457 ( .A(x[15]), .Y(n225) );
  and2c3 U458 ( .A(n449), .B(n225), .Y(n700) );
  inv1a1 U459 ( .A(y[15]), .Y(n226) );
  or2c3 U460 ( .A(n700), .B(n226), .Y(n227) );
  buf1a9 U461 ( .A(n227), .Y(n366) );
  or2c1 U462 ( .A(n224), .B(n366), .Y(n230) );
  buf1a9 U463 ( .A(n229), .Y(n451) );
  xor2a2 U464 ( .A(n230), .B(n451), .Y(n231) );
  xor2a2 U465 ( .A(n232), .B(n231), .Y(n418) );
  and2a3 U466 ( .A(n362), .B(yn[17]), .Y(n422) );
  inv1a1 U467 ( .A(xn[17]), .Y(n269) );
  or2c1 U468 ( .A(n2), .B(n269), .Y(n233) );
  or2c1 U469 ( .A(n234), .B(n366), .Y(n235) );
  xor2a2 U470 ( .A(n235), .B(n451), .Y(n421) );
  inv1a1 U471 ( .A(xn[16]), .Y(n237) );
  or2c3 U472 ( .A(n686), .B(xn_rightshift_18_), .Y(n259) );
  or2c1 U473 ( .A(cal_cnt[1]), .B(xn_rightshift_18_), .Y(n236) );
  ao2i3 U474 ( .A(n3), .B(n237), .C(n259), .D(n236), .Y(n238) );
  ao1f2 U475 ( .A(n239), .B(n57), .C(n366), .Y(n240) );
  xor2a2 U476 ( .A(n240), .B(n451), .Y(n674) );
  and2a3 U477 ( .A(n362), .B(yn[16]), .Y(n671) );
  or2c1 U478 ( .A(n426), .B(xn_rightshift_18_), .Y(n268) );
  and2c1 U479 ( .A(n697), .B(n269), .Y(n241) );
  oa2i2 U480 ( .A(xn[16]), .B(n692), .C(n242), .D(n241), .Y(n243) );
  ao1f2 U481 ( .A(n243), .B(n57), .C(n366), .Y(n244) );
  xor2a2 U482 ( .A(n244), .B(n451), .Y(n655) );
  and2a3 U483 ( .A(n362), .B(yn[15]), .Y(n656) );
  and2a3 U484 ( .A(n352), .B(yn[14]), .Y(n650) );
  inv1a3 U485 ( .A(xn[14]), .Y(n302) );
  or2c1 U486 ( .A(n694), .B(xn[17]), .Y(n245) );
  ao2i3 U487 ( .A(n3), .B(n302), .C(n259), .D(n245), .Y(n247) );
  and2c1 U488 ( .A(n696), .B(n295), .Y(n246) );
  oa2i2 U489 ( .A(n367), .B(xn[16]), .C(n247), .D(n246), .Y(n248) );
  ao4f3 U490 ( .A(n666), .B(n366), .C(n57), .D(n248), .Y(n249) );
  xor2a2 U491 ( .A(n249), .B(n451), .Y(n649) );
  and2c1 U492 ( .A(n696), .B(n302), .Y(n253) );
  or2c1 U493 ( .A(n322), .B(xn[17]), .Y(n251) );
  oa4f1 U494 ( .A(n2), .B(xn[13]), .C(n367), .D(xn[15]), .Y(n250) );
  oa2i2 U495 ( .A(xn[16]), .B(n694), .C(n253), .D(n252), .Y(n254) );
  ao4f3 U496 ( .A(n647), .B(n366), .C(n57), .D(n254), .Y(n255) );
  xor2a2 U497 ( .A(n255), .B(n451), .Y(n634) );
  and2a3 U498 ( .A(n312), .B(yn[13]), .Y(n635) );
  and2a3 U499 ( .A(n362), .B(yn[12]), .Y(n604) );
  or2c1 U500 ( .A(n694), .B(xn[15]), .Y(n263) );
  and2c1 U501 ( .A(n3), .B(n313), .Y(n261) );
  or3d1 U502 ( .A(n337), .B(n432), .C(xn[17]), .Y(n257) );
  or2c1 U503 ( .A(n322), .B(xn[16]), .Y(n256) );
  ao2i1 U504 ( .A(n259), .B(n258), .C(n257), .D(n256), .Y(n260) );
  oa2i2 U505 ( .A(xn[14]), .B(n693), .C(n261), .D(n260), .Y(n262) );
  or2c1 U506 ( .A(n264), .B(n352), .Y(n265) );
  ao1f2 U507 ( .A(n633), .B(n366), .C(n265), .Y(n266) );
  xor2a2 U508 ( .A(n266), .B(n451), .Y(n603) );
  or2c1 U509 ( .A(n337), .B(xn[16]), .Y(n267) );
  ao2i1 U510 ( .A(n269), .B(n424), .C(n268), .D(n267), .Y(n273) );
  ao1f2 U511 ( .A(n696), .B(n313), .C(n270), .Y(n271) );
  oa2i2 U512 ( .A(n686), .B(n273), .C(n272), .D(n271), .Y(n274) );
  ao4f3 U513 ( .A(n601), .B(n366), .C(n57), .D(n274), .Y(n275) );
  xor2a2 U514 ( .A(n275), .B(n451), .Y(n591) );
  and2a3 U515 ( .A(n362), .B(yn[11]), .Y(n588) );
  oa4f1 U516 ( .A(n339), .B(xn[16]), .C(n426), .D(xn[17]), .Y(n276) );
  or2c1 U517 ( .A(n692), .B(xn[11]), .Y(n278) );
  or2c1 U518 ( .A(n2), .B(xn[10]), .Y(n277) );
  ao4f1 U519 ( .A(n697), .B(n313), .C(n279), .D(n314), .Y(n280) );
  oa2i2 U520 ( .A(n686), .B(n282), .C(n281), .D(n280), .Y(n283) );
  ao4f3 U521 ( .A(n587), .B(n366), .C(n1), .D(n283), .Y(n284) );
  xor2a2 U522 ( .A(n284), .B(n451), .Y(n576) );
  and2a3 U523 ( .A(n362), .B(yn[10]), .Y(n577) );
  and2c1 U524 ( .A(n424), .B(xn[11]), .Y(n286) );
  ao4f1 U525 ( .A(n685), .B(xn[12]), .C(xn[10]), .D(n428), .Y(n285) );
  oa2i2 U526 ( .A(n305), .B(n317), .C(n286), .D(n285), .Y(n330) );
  and2c1 U527 ( .A(n428), .B(n302), .Y(n288) );
  and2c1 U528 ( .A(n424), .B(n295), .Y(n287) );
  oa2i2 U529 ( .A(xn[16]), .B(n426), .C(n288), .D(n287), .Y(n289) );
  xor2a2 U530 ( .A(n292), .B(n451), .Y(n562) );
  and2a3 U531 ( .A(n362), .B(yn[9]), .Y(n563) );
  and2a3 U532 ( .A(n312), .B(yn[8]), .Y(n552) );
  and2c1 U533 ( .A(n685), .B(xn[11]), .Y(n294) );
  ao4f1 U534 ( .A(n342), .B(xn[8]), .C(xn[10]), .D(n424), .Y(n293) );
  oa2i2 U535 ( .A(n337), .B(n317), .C(n294), .D(n293), .Y(n344) );
  ao4f1 U536 ( .A(n685), .B(n295), .C(n424), .D(n302), .Y(n296) );
  ao4f3 U537 ( .A(n561), .B(n366), .C(n300), .D(n299), .Y(n301) );
  xor2a2 U538 ( .A(n301), .B(n451), .Y(n551) );
  ao4f1 U539 ( .A(n685), .B(n302), .C(n424), .D(n314), .Y(n303) );
  inv1a1 U540 ( .A(xn[8]), .Y(n325) );
  or2c1 U541 ( .A(n337), .B(n325), .Y(n307) );
  inv1a2 U542 ( .A(xn[7]), .Y(n334) );
  and2c1 U543 ( .A(n351), .B(n432), .Y(n308) );
  oa2i2 U544 ( .A(xn[11]), .B(n322), .C(n309), .D(n308), .Y(n310) );
  xor2a2 U545 ( .A(n311), .B(n451), .Y(n536) );
  and2a3 U546 ( .A(n352), .B(yn[7]), .Y(n537) );
  and2a3 U547 ( .A(n312), .B(yn[6]), .Y(n526) );
  ao4f1 U548 ( .A(n685), .B(n314), .C(n424), .D(n313), .Y(n315) );
  and2c1 U549 ( .A(n316), .B(n328), .Y(n321) );
  oa4f3 U550 ( .A(n337), .B(n334), .C(n426), .D(n317), .Y(n319) );
  or2c1 U551 ( .A(n339), .B(n325), .Y(n318) );
  ao2i3 U552 ( .A(n342), .B(xn[6]), .C(n319), .D(n318), .Y(n358) );
  oa2i2 U553 ( .A(xn[10]), .B(n322), .C(n321), .D(n320), .Y(n323) );
  xor2a2 U554 ( .A(n324), .B(n451), .Y(n525) );
  inv1a3 U555 ( .A(x[5]), .Y(n523) );
  inv1a1 U556 ( .A(xn[6]), .Y(n338) );
  or2c1 U557 ( .A(n339), .B(n334), .Y(n326) );
  ao2i3 U558 ( .A(n342), .B(xn[5]), .C(n327), .D(n326), .Y(n370) );
  or2c1 U559 ( .A(n370), .B(n328), .Y(n329) );
  ao1f2 U560 ( .A(n523), .B(n366), .C(n331), .Y(n332) );
  xor2a2 U561 ( .A(n332), .B(n451), .Y(n512) );
  inv1a3 U562 ( .A(x[4]), .Y(n509) );
  inv1a1 U563 ( .A(xn[5]), .Y(n336) );
  oa4f3 U564 ( .A(n337), .B(n336), .C(n335), .D(n334), .Y(n341) );
  or2c1 U565 ( .A(n339), .B(n338), .Y(n340) );
  ao2i3 U566 ( .A(n342), .B(xn[4]), .C(n341), .D(n340), .Y(n379) );
  or2c1 U567 ( .A(n379), .B(n24), .Y(n343) );
  ao1f2 U568 ( .A(n509), .B(n366), .C(n345), .Y(n346) );
  xor2a2 U569 ( .A(n346), .B(n451), .Y(n499) );
  inv1a1 U570 ( .A(n347), .Y(n388) );
  inv1a3 U571 ( .A(x[3]), .Y(n498) );
  or2c1 U572 ( .A(n353), .B(n352), .Y(n354) );
  xor2a2 U573 ( .A(n355), .B(n451), .Y(n487) );
  inv1a3 U574 ( .A(x[2]), .Y(n617) );
  oa4f3 U575 ( .A(n693), .B(xn[4]), .C(n694), .D(xn[5]), .Y(n357) );
  oa4f3 U576 ( .A(n376), .B(xn[2]), .C(n692), .D(xn[3]), .Y(n356) );
  ao2i3 U577 ( .A(n358), .B(n24), .C(n357), .D(n356), .Y(n359) );
  or2c1 U578 ( .A(n359), .B(n364), .Y(n360) );
  xor2a2 U579 ( .A(n361), .B(n451), .Y(n476) );
  inv1a1 U580 ( .A(n476), .Y(n385) );
  inv1a1 U581 ( .A(n363), .Y(n384) );
  clk1b6 U582 ( .A(n366), .Y(n660) );
  oa4f1 U583 ( .A(n367), .B(xn[3]), .C(n694), .D(xn[4]), .Y(n369) );
  oa4f3 U584 ( .A(n376), .B(xn[1]), .C(n692), .D(xn[2]), .Y(n368) );
  ao2i3 U585 ( .A(n370), .B(n24), .C(n369), .D(n368), .Y(n371) );
  ao4a3 U586 ( .A(x[1]), .B(n660), .C(n701), .D(n371), .Y(n372) );
  xor2a2 U587 ( .A(n372), .B(n451), .Y(n466) );
  inv1a1 U588 ( .A(xn[2]), .Y(n374) );
  oa4c3 U589 ( .A(n694), .B(xn[3]), .C(n697), .D(n374), .Y(n378) );
  oa4f3 U590 ( .A(n376), .B(xn[0]), .C(n375), .D(xn[1]), .Y(n377) );
  ao2i3 U591 ( .A(n379), .B(n24), .C(n378), .D(n377), .Y(n380) );
  or2c1 U592 ( .A(n380), .B(n701), .Y(n382) );
  or2c1 U593 ( .A(x[0]), .B(n660), .Y(n381) );
  or2c3 U594 ( .A(n382), .B(n381), .Y(n383) );
  xor2a2 U595 ( .A(n383), .B(n451), .Y(n450) );
  ao1d2 U596 ( .A(n385), .B(n384), .C(n477), .Y(n387) );
  or2c3 U597 ( .A(n387), .B(n386), .Y(n486) );
  ao1d3 U598 ( .A(n395), .B(n394), .C(n538), .Y(n397) );
  ao1d3 U599 ( .A(n399), .B(n398), .C(n564), .Y(n401) );
  ao1d3 U600 ( .A(n403), .B(n402), .C(n578), .Y(n405) );
  or2c6 U601 ( .A(n405), .B(n404), .Y(n589) );
  or2c6 U602 ( .A(n407), .B(n406), .Y(n602) );
  ao1e6 U603 ( .B(n408), .A(n635), .C(n636), .Y(n410) );
  or2c6 U604 ( .A(n410), .B(n409), .Y(n648) );
  ao1d3 U605 ( .A(n412), .B(n411), .C(n657), .Y(n414) );
  or2c6 U606 ( .A(n414), .B(n413), .Y(n672) );
  or2c6 U607 ( .A(n416), .B(n415), .Y(n420) );
  xor2a2 U608 ( .A(n418), .B(n417), .Y(n419) );
  and2a1 U609 ( .A(N292), .B(n701), .Y(N324) );
  fa1a2 U610 ( .A(n422), .B(n421), .CI(n420), .CO(n417), .S(n423) );
  oa1f1 U611 ( .A(n428), .B(n424), .C(n687), .Y(N303) );
  xor2a2 U612 ( .A(rg_cordic_iternum[1]), .B(cal_cnt[1]), .Y(n425) );
  or2c1 U613 ( .A(n425), .B(rg_cordic_iternum[0]), .Y(n435) );
  or2c1 U614 ( .A(rg_cordic_iternum[1]), .B(n426), .Y(n427) );
  and2c1 U615 ( .A(rg_cordic_iternum[0]), .B(n438), .Y(n429) );
  and2c1 U616 ( .A(n430), .B(n429), .Y(n434) );
  xor3b3 U617 ( .A(n432), .B(n431), .C(rg_cordic_iternum[2]), .Y(n433) );
  or3d1 U618 ( .A(n435), .B(n434), .C(n433), .Y(n689) );
  inv1a1 U619 ( .A(n689), .Y(n205) );
  inv1a1 U620 ( .A(nozero_flg), .Y(n437) );
  inv1a1 U621 ( .A(cal_en), .Y(n436) );
  inv1a1 U622 ( .A(n_zz_16[1]), .Y(n439) );
  and2c3 U623 ( .A(n_zz_16[0]), .B(n439), .Y(n448) );
  inv1a1 U624 ( .A(res_rg[2]), .Y(n440) );
  or2c3 U625 ( .A(n_zz_16[0]), .B(n439), .Y(n446) );
  inv1a1 U626 ( .A(res_rg[0]), .Y(n441) );
  inv1a1 U627 ( .A(res_rg[4]), .Y(n442) );
  inv1a1 U628 ( .A(res_rg[6]), .Y(n443) );
  inv1a1 U629 ( .A(res_rg[1]), .Y(n444) );
  inv1a1 U630 ( .A(res_rg[5]), .Y(n445) );
  inv1a1 U631 ( .A(res_rg[3]), .Y(n447) );
  inv1a1 U632 ( .A(x[0]), .Y(n464) );
  and2c3 U633 ( .A(n449), .B(x[15]), .Y(n455) );
  or2c1 U634 ( .A(y[0]), .B(n4), .Y(n454) );
  fa1a2 U635 ( .A(n451), .B(n373), .CI(n450), .CO(n465), .S(n452) );
  inv1a1 U636 ( .A(n452), .Y(n453) );
  ao2i3 U637 ( .A(n654), .B(n464), .C(n454), .D(n453), .Y(N335) );
  or2c1 U638 ( .A(y[0]), .B(n660), .Y(n463) );
  inv1a1 U639 ( .A(n457), .Y(n459) );
  or2c1 U640 ( .A(n459), .B(n458), .Y(n461) );
  ao2i3 U641 ( .A(n464), .B(n456), .C(n463), .D(n462), .Y(N305) );
  inv1a1 U642 ( .A(x[1]), .Y(n475) );
  or2c1 U643 ( .A(y[1]), .B(n4), .Y(n469) );
  fa1a2 U644 ( .A(n365), .B(n466), .CI(n465), .CO(n477), .S(n467) );
  inv1a1 U645 ( .A(n467), .Y(n468) );
  ao2i3 U646 ( .A(n85), .B(n475), .C(n469), .D(n468), .Y(N336) );
  or2c1 U647 ( .A(y[1]), .B(n660), .Y(n474) );
  ao2i3 U648 ( .A(n475), .B(n456), .C(n474), .D(n473), .Y(N306) );
  or2c1 U649 ( .A(y[2]), .B(n4), .Y(n480) );
  xor2b2 U650 ( .A(n363), .B(n476), .Y(n478) );
  ao2i3 U651 ( .A(n85), .B(n617), .C(n480), .D(n479), .Y(N337) );
  or2c1 U652 ( .A(y[2]), .B(n660), .Y(n485) );
  ao2i3 U653 ( .A(n617), .B(n456), .C(n485), .D(n484), .Y(N307) );
  or2c1 U654 ( .A(y[3]), .B(n4), .Y(n490) );
  inv1a1 U655 ( .A(n488), .Y(n489) );
  ao2i3 U656 ( .A(n85), .B(n498), .C(n490), .D(n489), .Y(N338) );
  or2c1 U657 ( .A(y[3]), .B(n660), .Y(n497) );
  oa1f3 U658 ( .A(n492), .B(n60), .C(n491), .Y(n495) );
  ao2i3 U659 ( .A(n498), .B(n456), .C(n497), .D(n496), .Y(N308) );
  or2c1 U660 ( .A(y[4]), .B(n4), .Y(n503) );
  xor2b2 U661 ( .A(n347), .B(n499), .Y(n501) );
  ao2i3 U662 ( .A(n85), .B(n509), .C(n503), .D(n502), .Y(N339) );
  or2c1 U663 ( .A(y[4]), .B(n660), .Y(n508) );
  ao2i3 U664 ( .A(n509), .B(n456), .C(n508), .D(n507), .Y(N309) );
  or2c1 U665 ( .A(y[5]), .B(n4), .Y(n515) );
  inv1a1 U666 ( .A(n333), .Y(n511) );
  xor3b3 U667 ( .A(n512), .B(n511), .C(n510), .Y(n513) );
  inv1a1 U668 ( .A(n513), .Y(n514) );
  ao2i3 U669 ( .A(n85), .B(n523), .C(n515), .D(n514), .Y(N340) );
  or2c1 U670 ( .A(y[5]), .B(n660), .Y(n522) );
  inv1a1 U671 ( .A(n516), .Y(n518) );
  ao2i3 U672 ( .A(n523), .B(n456), .C(n522), .D(n521), .Y(N310) );
  or2c1 U673 ( .A(y[6]), .B(n4), .Y(n529) );
  inv1a1 U674 ( .A(n527), .Y(n528) );
  ao2i3 U675 ( .A(n85), .B(n535), .C(n529), .D(n528), .Y(N341) );
  or2c1 U676 ( .A(y[6]), .B(n660), .Y(n534) );
  ao2i3 U677 ( .A(n535), .B(n456), .C(n534), .D(n533), .Y(N311) );
  or2c1 U678 ( .A(y[7]), .B(n4), .Y(n541) );
  xor2b2 U679 ( .A(n537), .B(n536), .Y(n539) );
  ao2i3 U680 ( .A(n85), .B(n549), .C(n541), .D(n540), .Y(N342) );
  or2c1 U681 ( .A(y[7]), .B(n660), .Y(n548) );
  inv1a1 U682 ( .A(n542), .Y(n544) );
  ao2i3 U683 ( .A(n549), .B(n456), .C(n548), .D(n547), .Y(N312) );
  or2c1 U684 ( .A(y[8]), .B(n4), .Y(n555) );
  inv1a1 U685 ( .A(n553), .Y(n554) );
  ao2i3 U686 ( .A(n85), .B(n561), .C(n555), .D(n554), .Y(N343) );
  or2c1 U687 ( .A(y[8]), .B(n660), .Y(n560) );
  ao2i3 U688 ( .A(n561), .B(n456), .C(n560), .D(n559), .Y(N313) );
  or2c1 U689 ( .A(y[9]), .B(n4), .Y(n567) );
  xor2b2 U690 ( .A(n563), .B(n562), .Y(n565) );
  ao2i3 U691 ( .A(n85), .B(n575), .C(n567), .D(n566), .Y(N344) );
  or2c1 U692 ( .A(y[9]), .B(n660), .Y(n574) );
  ao2i3 U693 ( .A(n575), .B(n456), .C(n574), .D(n573), .Y(N314) );
  or2c1 U694 ( .A(y[10]), .B(n4), .Y(n581) );
  xor2b2 U695 ( .A(n577), .B(n576), .Y(n579) );
  ao2i3 U696 ( .A(n85), .B(n587), .C(n581), .D(n580), .Y(N345) );
  or2c1 U697 ( .A(y[10]), .B(n660), .Y(n586) );
  ao2i3 U698 ( .A(n587), .B(n456), .C(n586), .D(n585), .Y(N315) );
  or2c1 U699 ( .A(y[11]), .B(n4), .Y(n594) );
  inv1a1 U700 ( .A(n588), .Y(n590) );
  xor3b3 U701 ( .A(n591), .B(n590), .C(n589), .Y(n592) );
  inv1a1 U702 ( .A(n592), .Y(n593) );
  ao2i3 U703 ( .A(n85), .B(n601), .C(n594), .D(n593), .Y(N346) );
  or2c1 U704 ( .A(y[11]), .B(n660), .Y(n600) );
  ao2i3 U705 ( .A(n601), .B(n456), .C(n600), .D(n599), .Y(N316) );
  or2c1 U706 ( .A(y[12]), .B(n4), .Y(n607) );
  inv1a1 U707 ( .A(n605), .Y(n606) );
  ao2i3 U708 ( .A(n85), .B(n633), .C(n607), .D(n606), .Y(N347) );
  and3d2 U709 ( .A(y[14]), .B(y[13]), .C(y[12]), .Y(n610) );
  and3d2 U710 ( .A(y[10]), .B(y[9]), .C(y[8]), .Y(n609) );
  and2c1 U711 ( .A(y[15]), .B(y[11]), .Y(n608) );
  or3d1 U712 ( .A(n610), .B(n609), .C(n608), .Y(n624) );
  and3d2 U713 ( .A(y[6]), .B(y[5]), .C(y[4]), .Y(n613) );
  and3d2 U714 ( .A(y[2]), .B(y[1]), .C(y[0]), .Y(n612) );
  and2c1 U715 ( .A(y[7]), .B(y[3]), .Y(n611) );
  or3d1 U716 ( .A(n613), .B(n612), .C(n611), .Y(n623) );
  and3d2 U717 ( .A(x[14]), .B(x[13]), .C(x[12]), .Y(n616) );
  and3d2 U718 ( .A(x[10]), .B(x[9]), .C(x[8]), .Y(n615) );
  and2c1 U719 ( .A(x[15]), .B(x[11]), .Y(n614) );
  or3d1 U720 ( .A(n616), .B(n615), .C(n614), .Y(n622) );
  and3d2 U721 ( .A(x[6]), .B(x[5]), .C(x[4]), .Y(n620) );
  and3d2 U722 ( .A(x[2]), .B(x[1]), .C(x[0]), .Y(n619) );
  and2c1 U723 ( .A(x[7]), .B(x[3]), .Y(n618) );
  or3d1 U724 ( .A(n620), .B(n619), .C(n618), .Y(n621) );
  oa4a2 U725 ( .A(n624), .B(n623), .C(n622), .D(n621), .Y(n713) );
  inv1a1 U726 ( .A(n713), .Y(n627) );
  inv1a1 U727 ( .A(N355), .Y(n625) );
  oa1f3 U728 ( .A(n627), .B(n626), .C(n625), .Y(N354) );
  or2c1 U729 ( .A(y[12]), .B(n660), .Y(n632) );
  ao2i3 U730 ( .A(n633), .B(n456), .C(n632), .D(n631), .Y(N317) );
  or2c1 U731 ( .A(y[13]), .B(n4), .Y(n639) );
  xor2b2 U732 ( .A(n635), .B(n634), .Y(n637) );
  ao2i3 U733 ( .A(n85), .B(n647), .C(n639), .D(n638), .Y(N348) );
  or2c1 U734 ( .A(y[13]), .B(n660), .Y(n646) );
  ao2i3 U735 ( .A(n647), .B(n456), .C(n646), .D(n645), .Y(N318) );
  or2c1 U736 ( .A(y[14]), .B(n4), .Y(n653) );
  fa1a3 U737 ( .A(n650), .B(n649), .CI(n648), .CO(n657), .S(n651) );
  inv1a1 U738 ( .A(n651), .Y(n652) );
  ao2i3 U739 ( .A(n85), .B(n666), .C(n653), .D(n652), .Y(N349) );
  xor2b2 U740 ( .A(n656), .B(n655), .Y(n658) );
  xor2b2 U741 ( .A(n658), .B(n657), .Y(n659) );
  or2c1 U742 ( .A(y[14]), .B(n660), .Y(n665) );
  ao2i3 U743 ( .A(n456), .B(n666), .C(n665), .D(n664), .Y(N319) );
  xor3b3 U744 ( .A(n674), .B(n673), .C(n672), .Y(n676) );
  inv1a1 U745 ( .A(n680), .Y(n682) );
  oa1f1 U746 ( .A(n689), .B(cal_en), .C(vld), .Y(n691) );
  inv1a1 U747 ( .A(en), .Y(n690) );
  and2c3 U748 ( .A(n691), .B(n690), .Y(n195) );
  xor2a2 U749 ( .A(n2), .B(N158), .Y(DP_OP_39J1_122_1632_n14) );
  xor2a2 U750 ( .A(n692), .B(N158), .Y(DP_OP_39J1_122_1632_n15) );
  xor2a2 U751 ( .A(n693), .B(N158), .Y(DP_OP_39J1_122_1632_n16) );
  xor2a2 U752 ( .A(n694), .B(N158), .Y(DP_OP_39J1_122_1632_n17) );
  or3d1 U753 ( .A(n697), .B(n696), .C(n695), .Y(n698) );
  xor2a2 U754 ( .A(n698), .B(N158), .Y(DP_OP_39J1_122_1632_n18) );
  xor2a2 U755 ( .A(n699), .B(N158), .Y(DP_OP_39J1_122_1632_n19) );
  ao4a3 U756 ( .A(N298), .B(n701), .C(n700), .D(n713), .Y(N330) );
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
         n25, n26, n28, n29, n30, n31;
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
        .valid_num({valid_num[2], n4, n25}), .vin_vld(vin_vld), .vin1({n21, 
        n20, n19, n18, n17, n15, vin1[1], n13}), .vin2({n11, n10, n9, n8, n6, 
        vin2[2:1], n24}), .rg_leakage_table_0(rg_leakage_table_0), 
        .rg_leakage_table_1(rg_leakage_table_1), .rg_leakage_table_2(
        rg_leakage_table_2), .rg_leakage_table_3(rg_leakage_table_3), 
        .rg_leakage_table_4(rg_leakage_table_4), .rg_leakage_table_5(
        rg_leakage_table_5), .rg_leakage_table_6(rg_leakage_table_6), 
        .rg_leakage_table_7(rg_leakage_table_7), .mean(calvn_mean), .vn_0(
        calvn_vn_0), .vn_1(calvn_vn_1), .vn_2(calvn_vn_2), .vn_3(calvn_vn_3), 
        .vn_4(calvn_vn_4), .vn_5(calvn_vn_5), .vn_6(calvn_vn_6), .vn_7(
        calvn_vn_7), .finish(calvn_finish_1), .clk(clk), .resetn(n29) );
  dotVn_2 dot ( .en(n26), .rg_sin_table_0(rg_sin_table_0), .rg_sin_table_1(
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
        1'b1}), .mean(calvn_mean), .clk(clk), .resetn(n30) );
  cordic_int cordic ( .en(n26), .rg_cordic_iternum({rg_cordic_iternum[2], n22, 
        n3}), .vld(dot_psum_vld), .y(dot_psum_out2), .x(dot_psum_out1), .res(
        phase), .res_vld(phase_vld), .clk(clk), .resetn(n28) );
  inv1a9 U6 ( .A(n23), .Y(n24) );
  inv1a3 U7 ( .A(vin1[0]), .Y(n12) );
  clk1b6 U8 ( .A(vin1[2]), .Y(n14) );
  inv1a9 U9 ( .A(vin1[3]), .Y(n16) );
  clk1a3 U10 ( .A(vin1[6]), .Y(n20) );
  clk1a3 U11 ( .A(vin1[7]), .Y(n21) );
  clk1a3 U12 ( .A(rg_calphase_en), .Y(n26) );
  inv1a15 U13 ( .A(vin2[0]), .Y(n23) );
  inv1a3 U14 ( .A(n12), .Y(n13) );
  inv1a15 U15 ( .A(n31), .Y(n28) );
  inv1a9 U16 ( .A(n14), .Y(n15) );
  inv1a9 U17 ( .A(n16), .Y(n17) );
  clk1b6 U18 ( .A(n31), .Y(n29) );
  inv1a9 U19 ( .A(n31), .Y(n30) );
  clk1a3 U20 ( .A(valid_num[1]), .Y(n4) );
  clk1a3 U21 ( .A(vin2[7]), .Y(n11) );
  clk1a3 U22 ( .A(vin2[6]), .Y(n10) );
  clk1a3 U23 ( .A(vin1[5]), .Y(n19) );
  clk1a3 U24 ( .A(rg_cordic_iternum[0]), .Y(n3) );
  clk1a3 U25 ( .A(vin2[5]), .Y(n9) );
  clk1a3 U26 ( .A(valid_num[0]), .Y(n25) );
  clk1a3 U27 ( .A(vin1[4]), .Y(n18) );
  clk1a3 U28 ( .A(rg_cordic_iternum[1]), .Y(n22) );
  inv1a3 U29 ( .A(vin2[3]), .Y(n5) );
  inv1a1 U30 ( .A(vin2[4]), .Y(n7) );
  inv1a3 U31 ( .A(n5), .Y(n6) );
  inv1a3 U32 ( .A(n7), .Y(n8) );
  inv1a3 U33 ( .A(n25), .Y(n2) );
  inv1a3 U34 ( .A(resetn), .Y(n31) );
  mx2a1 U36 ( .D0(n2), .D1(n25), .S(n4), .Y(n_zz_1[2]) );
endmodule

