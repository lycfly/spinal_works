
module LATCH8 ( A, B, C, CLK1, CLK2, CLK3, ENABLE, LOAD_C, DR, test_si1, 
    test_so1, test_si2, test_so2, test_si3, test_se );
input  [3:0] A;
input  [3:0] B;
input  [3:0] C;
output [3:0] DR;
input  CLK1, CLK2, CLK3, ENABLE, LOAD_C, test_si1, test_si2, test_si3, test_se;
output test_so1, test_so2;
    wire AR_2_port, ARG148_3_port, CL_0_port, n279, n270, ABR_1_port, n265, 
        CL_1_port, ARG148_2_port, ABR_0_port, AR_3_port, BR_1_port, n55_3_port, 
        n276, BR_0_port, n281, X_return53_0_port, n271, ABCL_2_port, ENR, 
        X_return53_1_port, n268, ABR_2_port, ARG148_1_port, CL_2_port, 
        p3_sub_37_minus_minus_carry_1_port, n266, AR_0_port, ABR_3_port, n275, 
        n283, n267, ABCL_1_port, n269, BR_2_port, n285, X_return53_2_port, n4, 
        n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, 
        n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, 
        n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, net17, 
        net27, n46, n48;
    inv1a1 U2 ( .A(net27), .Y(n285) );
    inv1a1 U3 ( .A(test_so2), .Y(n283) );
    or3d1 U4 ( .A(n4), .B(n5), .C(n6), .Y(n45) );
    or3d1 U5 ( .A(n7), .B(n8), .C(n9), .Y(n42) );
    xor3b1 U6 ( .A(ABR_2_port), .B(n10), .C(n11), .Y(n44) );
    xor2a1 U14 ( .A(CL_0_port), .B(ABR_0_port), .Y(n43) );
    ao4f1 U15 ( .A(n20), .B(net17), .C(n21), .D(n14), .Y(n19) );
    ao4f1 U16 ( .A(n23), .B(ABR_3_port), .C(n24), .D(n12), .Y(n22) );
    ao4f1 U17 ( .A(n26), .B(net17), .C(n27), .D(n14), .Y(n25) );
    ao4f1 U18 ( .A(n29), .B(net17), .C(n30), .D(n14), .Y(n28) );
    ao4f1 U19 ( .A(n32), .B(ABR_2_port), .C(n33), .D(n13), .Y(n31) );
    and2c1 U20 ( .A(CL_1_port), .B(CL_0_port), .Y(n34) );
    and2c1 U21 ( .A(CL_0_port), .B(n16), .Y(n35) );
    and2c1 U22 ( .A(CL_1_port), .B(ABR_0_port), .Y(n36) );
    and2c1 U23 ( .A(ABR_0_port), .B(n16), .Y(n37) );
    and2c1 U24 ( .A(n19), .B(n22), .Y(n4) );
    and3d1 U25 ( .A(n31), .B(n25), .C(n28), .Y(n6) );
    or3d1 U28 ( .A(ABR_3_port), .B(CL_2_port), .C(ABR_2_port), .Y(n21) );
    or3d1 U33 ( .A(CL_2_port), .B(n12), .C(ABR_2_port), .Y(n20) );
    or3d1 U34 ( .A(n13), .B(n14), .C(n10), .Y(n24) );
    or3d1 U39 ( .A(n10), .B(n13), .C(net17), .Y(n23) );
    or3d1 U40 ( .A(n10), .B(n14), .C(n38), .Y(n39) );
    or3d1 U42 ( .A(net17), .B(n10), .C(n38), .Y(n40) );
    mx2a1 U45 ( .D0(n40), .D1(n39), .S(ABR_3_port), .Y(n5) );
    or3d1 U46 ( .A(ABR_3_port), .B(n11), .C(ABR_2_port), .Y(n27) );
    or3d1 U49 ( .A(ABR_3_port), .B(n13), .C(n38), .Y(n26) );
    or3d1 U50 ( .A(CL_2_port), .B(n11), .C(ABR_3_port), .Y(n30) );
    or3d1 U53 ( .A(n11), .B(n12), .C(CL_2_port), .Y(n29) );
    or3d1 U55 ( .A(n12), .B(n14), .C(n11), .Y(n33) );
    or3d1 U58 ( .A(net17), .B(n12), .C(n38), .Y(n32) );
    ao4f1 U59 ( .A(n35), .B(ABR_1_port), .C(n34), .D(n15), .Y(n8) );
    or3d1 U60 ( .A(CL_0_port), .B(ABR_0_port), .C(ABR_1_port), .Y(n18) );
    or3d1 U61 ( .A(ABR_0_port), .B(n15), .C(CL_0_port), .Y(n41) );
    mx2a1 U62 ( .D0(n41), .D1(n18), .S(CL_1_port), .Y(n7) );
    ao4f1 U63 ( .A(n37), .B(ABR_1_port), .C(n36), .D(n15), .Y(n9) );
    xor2a15 U54 ( .A(AR_3_port), .B(n283), .Y(n275) );
    or2c15 U41 ( .A(AR_0_port), .B(BR_0_port), .Y(n279) );
    xor2a15 U35 ( .A(n268), .B(n275), .Y(n55_3_port) );
    xor2a15 U47 ( .A(AR_2_port), .B(BR_2_port), .Y(n276) );
    fac2a3 U31 ( .A(AR_2_port), .B(n269), .CI(BR_2_port), .CO(n268) );
    xor2b15 U36 ( .A(n270), .B(n285), .Y(ARG148_3_port) );
    xor2a15 U38 ( .A(n276), .B(n269), .Y(X_return53_2_port) );
    xor2a15 U43 ( .A(n279), .B(n281), .Y(X_return53_1_port) );
    xor2a15 U44 ( .A(AR_0_port), .B(BR_0_port), .Y(X_return53_0_port) );
    inv1a27 U56 ( .A(n265), .Y(ARG148_1_port) );
    ldf1a1 ABCL_reg_1 ( .D(n42), .G(ENR), .Q(ABCL_1_port) );
    ldf1a1 ABCL_reg_3 ( .D(n45), .G(ENR), .Q(net27) );
    clk1b3 U64 ( .A(n266), .Y(n271) );
    clk1b3 U65 ( .A(ABR_2_port), .Y(n13) );
    ao2i6 U66 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(n11) );
    clk1b3 U67 ( .A(ABR_1_port), .Y(n15) );
    clk1b3 U68 ( .A(ABR_3_port), .Y(n12) );
    ldf1a3 CL_reg_2 ( .D(C[2]), .G(LOAD_C), .Q(CL_2_port) );
    clk1b3 U69 ( .A(CL_1_port), .Y(n16) );
    or3d6 U70 ( .A(CL_0_port), .B(ABR_0_port), .C(CL_1_port), .Y(n17) );
    ldf1a3 CL_reg_1 ( .D(C[1]), .G(LOAD_C), .Q(CL_1_port) );
    clk1b2 U71 ( .A(CL_2_port), .Y(n10) );
    oa4c3 U72 ( .A(ABCL_2_port), .B(n271), .C(ABCL_2_port), .D(n271), .Y(
        ARG148_2_port) );
    or2c3 U73 ( .A(n271), .B(ABCL_2_port), .Y(n270) );
    ldf1a3 ABCL_reg_2 ( .D(n44), .G(ENR), .Q(ABCL_2_port) );
    and2c3 U74 ( .A(p3_sub_37_minus_minus_carry_1_port), .B(ABCL_1_port), .Y(
        n266) );
    oa1f9 U75 ( .A(ABCL_1_port), .B(p3_sub_37_minus_minus_carry_1_port), .C(
        n266), .Y(n265) );
    inv1a9 U76 ( .A(p3_sub_37_minus_minus_carry_1_port), .Y(n46) );
    ldf1a3 ABCL_reg_0 ( .D(n43), .G(ENR), .Q(
        p3_sub_37_minus_minus_carry_1_port) );
    xor2b2 U77 ( .A(test_so1), .B(BR_1_port), .Y(n281) );
    and2c1 U78 ( .A(BR_1_port), .B(test_so1), .Y(n267) );
    ao4c2 U79 ( .A(n267), .B(n279), .C(BR_1_port), .D(test_so1), .Y(n269) );
    clk1b2 U80 ( .A(n11), .Y(n38) );
    ldf1a3 CL_reg_0 ( .D(C[0]), .G(LOAD_C), .Q(CL_0_port) );
    clk1b2 U81 ( .A(net17), .Y(n14) );
    ldf1a2 CL_reg_3 ( .D(C[3]), .G(LOAD_C), .Q(net17) );
    ldf1b15 LOCKUP ( .D(ENR), .G(CLK2), .Q(n48) );
    fdmf1a3 DR_reg_2 ( .D0(ARG148_2_port), .D1(DR[1]), .S(test_se), .CLK(CLK3), 
        .Q(DR[2]) );
    fdmf1a3 AR_reg_0 ( .D0(A[0]), .D1(ABR_3_port), .S(test_se), .CLK(CLK1), 
        .Q(AR_0_port) );
    fdmf1a3 ABR_reg_1 ( .D0(X_return53_1_port), .D1(ABR_0_port), .S(test_se), 
        .CLK(CLK1), .Q(ABR_1_port) );
    fdmf1a3 BR_reg_3 ( .D0(B[3]), .D1(BR_2_port), .S(test_se), .CLK(CLK1), .Q(
        test_so2) );
    fdmf1a3 ABR_reg_0 ( .D0(X_return53_0_port), .D1(test_si1), .S(test_se), 
        .CLK(CLK1), .Q(ABR_0_port) );
    fdmf1a3 BR_reg_2 ( .D0(B[2]), .D1(BR_1_port), .S(test_se), .CLK(CLK1), .Q(
        BR_2_port) );
    fdmf1a3 AR_reg_1 ( .D0(A[1]), .D1(AR_0_port), .S(test_se), .CLK(CLK1), .Q(
        test_so1) );
    fdmf1a3 DR_reg_3 ( .D0(ARG148_3_port), .D1(DR[2]), .S(test_se), .CLK(CLK3), 
        .Q(DR[3]) );
    fdmf1a3 ENR_reg ( .D0(ENABLE), .D1(test_si3), .S(test_se), .CLK(CLK2), .Q(
        ENR) );
    fdmf1a3 DR_reg_1 ( .D0(ARG148_1_port), .D1(DR[0]), .S(test_se), .CLK(CLK3), 
        .Q(DR[1]) );
    fdmf1a3 AR_reg_3 ( .D0(A[3]), .D1(AR_2_port), .S(test_se), .CLK(CLK1), .Q(
        AR_3_port) );
    fdmf1a3 ABR_reg_2 ( .D0(X_return53_2_port), .D1(ABR_1_port), .S(test_se), 
        .CLK(CLK1), .Q(ABR_2_port) );
    fdmf1a3 BR_reg_0 ( .D0(B[0]), .D1(AR_3_port), .S(test_se), .CLK(CLK1), .Q(
        BR_0_port) );
    fdmf1a3 ABR_reg_3 ( .D0(n55_3_port), .D1(ABR_2_port), .S(test_se), .CLK(
        CLK1), .Q(ABR_3_port) );
    fdmf1a3 BR_reg_1 ( .D0(B[1]), .D1(BR_0_port), .S(test_se), .CLK(CLK1), .Q(
        BR_1_port) );
    fdmf1a3 AR_reg_2 ( .D0(A[2]), .D1(test_si2), .S(test_se), .CLK(CLK1), .Q(
        AR_2_port) );
    fdmf1a3 DR_reg_0 ( .D0(n46), .D1(n48), .S(test_se), .CLK(CLK3), .Q(DR[0])
         );
endmodule

