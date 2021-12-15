
module CONVERTOR_CKT ( connect13, disp1, disp2 );
input  [9:0] connect13;
output [13:0] disp1;
output [13:0] disp2;
    wire \connect14[12] , \disp2[13] , \connect14[9] , n18, n19, n20, n21, n22, 
        n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, 
        n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, 
        n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, 
        n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, 
        n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, 
        n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, 
        n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, 
        n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, 
        n130, n131, n132, n133, n134, n135, n136, n137, n138, n139;
    assign disp1[13] = \connect14[9] ;
    assign disp1[12] = \connect14[12] ;
    assign disp1[11] = \connect14[12] ;
    assign disp1[10] = \connect14[9] ;
    assign disp1[9] = \connect14[9] ;
    assign disp1[7] = 1'b0;
    assign disp2[13] = \disp2[13] ;
    assign disp2[10] = \disp2[13] ;
    AO6 U2 ( .A(n18), .B(n19), .C(connect13[6]), .Z(disp1[2]) );
    AO3 U3 ( .A(n20), .B(n21), .C(n22), .D(n23), .Z(disp2[8]) );
    AO7 U4 ( .A(connect13[5]), .B(n24), .C(n25), .Z(disp2[9]) );
    AO3 U5 ( .A(connect13[3]), .B(n26), .C(n27), .D(n28), .Z(disp2[11]) );
    ND3 U6 ( .A(n29), .B(n30), .C(n27), .Z(disp2[12]) );
    AO3 U7 ( .A(connect13[4]), .B(n31), .C(n24), .D(n32), .Z(\disp2[13] ) );
    OR3 U8 ( .A(n33), .B(n34), .C(n35), .Z(disp2[0]) );
    ND4 U9 ( .A(n36), .B(n37), .C(n38), .D(n39), .Z(disp2[1]) );
    NR2 U10 ( .A(connect13[0]), .B(n40), .Z(disp2[2]) );
    ND4 U11 ( .A(n41), .B(n42), .C(n43), .D(n44), .Z(disp2[3]) );
    AO3 U12 ( .A(n45), .B(n46), .C(n47), .D(n48), .Z(disp2[4]) );
    ND4 U13 ( .A(n49), .B(n50), .C(n51), .D(n52), .Z(disp2[5]) );
    AO3 U14 ( .A(connect13[2]), .B(n53), .C(n54), .D(n55), .Z(disp2[6]) );
    ND3 U15 ( .A(n56), .B(n57), .C(n58), .Z(disp2[7]) );
    ND2 U16 ( .A(n59), .B(n18), .Z(disp1[5]) );
    ND3 U17 ( .A(n60), .B(n61), .C(n62), .Z(disp1[4]) );
    NR2 U18 ( .A(n63), .B(n64), .Z(disp1[3]) );
    AO7 U19 ( .A(connect13[6]), .B(n60), .C(n65), .Z(disp1[1]) );
    AO3 U20 ( .A(n66), .B(n61), .C(n67), .D(n18), .Z(disp1[6]) );
    AO6 U21 ( .A(n61), .B(connect13[8]), .C(n68), .Z(n63) );
    AO3 U22 ( .A(connect13[9]), .B(n69), .C(n62), .D(n19), .Z(\connect14[9] )
         );
    ND2 U23 ( .A(n70), .B(n71), .Z(\connect14[12] ) );
    AO7 U24 ( .A(connect13[9]), .B(n70), .C(n62), .Z(disp1[8]) );
    AO1P U25 ( .A(connect13[7]), .B(n72), .C(n73), .D(n74), .Z(n64) );
    AN3 U26 ( .A(n76), .B(n21), .C(connect13[2]), .Z(n75) );
    NR3 U27 ( .A(n78), .B(connect13[2]), .C(connect13[5]), .Z(n77) );
    NR3 U28 ( .A(n80), .B(connect13[2]), .C(connect13[1]), .Z(n79) );
    AO1P U29 ( .A(connect13[1]), .B(n21), .C(n82), .D(n83), .Z(n81) );
    NR4 U30 ( .A(n84), .B(n85), .C(n86), .D(n87), .Z(n40) );
    ND2 U31 ( .A(n78), .B(connect13[3]), .Z(n88) );
    AO4 U32 ( .A(connect13[2]), .B(n80), .C(n46), .D(connect13[3]), .Z(n89) );
    AO2 U33 ( .A(connect13[8]), .B(connect13[9]), .C(n66), .D(n71), .Z(n72) );
    IVA U34 ( .A(connect13[3]), .Z(n80) );
    NR2 U35 ( .A(n80), .B(connect13[5]), .Z(n45) );
    ND2 U36 ( .A(n45), .B(n78), .Z(n90) );
    ND2 U37 ( .A(connect13[4]), .B(n21), .Z(n29) );
    ND2 U38 ( .A(connect13[2]), .B(n91), .Z(n52) );
    ND2 U39 ( .A(connect13[1]), .B(n80), .Z(n76) );
    ND2 U40 ( .A(connect13[4]), .B(n92), .Z(n26) );
    ND2 U41 ( .A(connect13[3]), .B(n93), .Z(n20) );
    NR2 U42 ( .A(n20), .B(connect13[2]), .Z(n87) );
    ND2 U43 ( .A(connect13[5]), .B(n92), .Z(n56) );
    ND2 U44 ( .A(connect13[5]), .B(n80), .Z(n31) );
    ND2 U45 ( .A(n92), .B(n95), .Z(n94) );
    ND2 U46 ( .A(connect13[2]), .B(n93), .Z(n46) );
    ND2 U47 ( .A(connect13[5]), .B(connect13[1]), .Z(n96) );
    AO3 U48 ( .A(connect13[5]), .B(connect13[1]), .C(n96), .D(n80), .Z(n53) );
    AO6 U49 ( .A(n76), .B(n98), .C(n99), .Z(n97) );
    NR2 U50 ( .A(connect13[1]), .B(connect13[3]), .Z(n82) );
    AO6 U51 ( .A(n78), .B(n101), .C(n102), .Z(n100) );
    AO1P U52 ( .A(n78), .B(n91), .C(n98), .D(n103), .Z(n47) );
    AN3 U53 ( .A(n80), .B(n93), .C(connect13[0]), .Z(n104) );
    NR2 U54 ( .A(n94), .B(connect13[1]), .Z(n105) );
    ND2 U55 ( .A(n107), .B(n92), .Z(n106) );
    AO7 U56 ( .A(n93), .B(n53), .C(n51), .Z(n33) );
    AO1P U57 ( .A(n93), .B(n107), .C(n104), .D(n108), .Z(n24) );
    AO7 U58 ( .A(connect13[4]), .B(n105), .C(n20), .Z(n109) );
    AN2P U59 ( .A(connect13[1]), .B(n45), .Z(n103) );
    AO3 U60 ( .A(n100), .B(n92), .C(n110), .D(n90), .Z(n34) );
    ND2 U61 ( .A(connect13[7]), .B(n71), .Z(n19) );
    ND2 U62 ( .A(connect13[9]), .B(n111), .Z(n18) );
    AO3 U63 ( .A(n112), .B(n66), .C(n18), .D(n67), .Z(n68) );
    ND2 U64 ( .A(n18), .B(connect13[8]), .Z(n60) );
    NR2 U65 ( .A(connect13[6]), .B(connect13[8]), .Z(n69) );
    AN2P U66 ( .A(n69), .B(n111), .Z(n70) );
    NR3 U67 ( .A(connect13[4]), .B(connect13[5]), .C(n105), .Z(n113) );
    AO7 U68 ( .A(n98), .B(n76), .C(n97), .Z(n114) );
    AO1P U69 ( .A(n107), .B(n98), .C(n87), .D(n116), .Z(n115) );
    ND4 U70 ( .A(n118), .B(n119), .C(n53), .D(n120), .Z(n117) );
    ND4 U71 ( .A(n106), .B(n57), .C(n90), .D(n122), .Z(n121) );
    ND4 U72 ( .A(n124), .B(n125), .C(n120), .D(n52), .Z(n123) );
    EO1 U73 ( .A(connect13[0]), .B(n88), .C(connect13[5]), .D(n88), .Z(n126)
         );
    ND2 U74 ( .A(connect13[8]), .B(n19), .Z(n127) );
    NR2 U75 ( .A(n66), .B(n71), .Z(n128) );
    AO2 U76 ( .A(n129), .B(n92), .C(n116), .D(n78), .Z(n25) );
    AO2 U77 ( .A(n87), .B(n78), .C(n130), .D(connect13[4]), .Z(n23) );
    ND2 U78 ( .A(connect13[4]), .B(n78), .Z(n131) );
    AO4 U79 ( .A(n133), .B(n96), .C(n31), .D(n131), .Z(n132) );
    AO6 U80 ( .A(n129), .B(n94), .C(n132), .Z(n55) );
    AO1P U81 ( .A(n83), .B(n80), .C(n134), .D(n75), .Z(n122) );
    AO1P U82 ( .A(connect13[0]), .B(n135), .C(n102), .D(n79), .Z(n48) );
    AO2 U83 ( .A(n104), .B(n83), .C(n129), .D(n93), .Z(n43) );
    AO4 U84 ( .A(n90), .B(n92), .C(n81), .D(n93), .Z(n84) );
    NR2 U85 ( .A(connect13[5]), .B(connect13[1]), .Z(n136) );
    AO2 U86 ( .A(n136), .B(n89), .C(connect13[4]), .D(n137), .Z(n38) );
    EO1 U87 ( .A(n105), .B(connect13[3]), .C(n47), .D(connect13[0]), .Z(n36)
         );
    AO1P U88 ( .A(n129), .B(n92), .C(n102), .D(n116), .Z(n32) );
    AO1P U89 ( .A(n103), .B(connect13[2]), .C(n130), .D(n83), .Z(n28) );
    AO3 U90 ( .A(connect13[0]), .B(n97), .C(n138), .D(n30), .Z(n35) );
    ND2 U91 ( .A(n67), .B(n61), .Z(n73) );
    ND2 U92 ( .A(n112), .B(n66), .Z(n67) );
    NR2 U93 ( .A(n21), .B(n76), .Z(n102) );
    ND3 U94 ( .A(connect13[1]), .B(connect13[3]), .C(n83), .Z(n51) );
    ND2 U95 ( .A(n82), .B(n83), .Z(n30) );
    NR2 U96 ( .A(n96), .B(n46), .Z(n86) );
    ND3 U97 ( .A(connect13[4]), .B(n80), .C(connect13[2]), .Z(n57) );
    ND2 U98 ( .A(n82), .B(n92), .Z(n119) );
    AO7 U99 ( .A(n77), .B(n129), .C(n93), .Z(n50) );
    ND2 U100 ( .A(connect13[4]), .B(connect13[3]), .Z(n135) );
    ND3 U101 ( .A(n76), .B(n21), .C(n99), .Z(n110) );
    ND2 U102 ( .A(n98), .B(n80), .Z(n125) );
    ND2 U103 ( .A(n90), .B(n51), .Z(n137) );
    AO7 U104 ( .A(n103), .B(n126), .C(n99), .Z(n39) );
    ND2 U105 ( .A(n139), .B(n93), .Z(n138) );
    ND2 U106 ( .A(n74), .B(n66), .Z(n62) );
    AO2 U107 ( .A(n92), .B(n80), .C(n26), .D(connect13[3]), .Z(n108) );
    AO2 U108 ( .A(n83), .B(connect13[3]), .C(n113), .D(n80), .Z(n22) );
    AO2 U109 ( .A(n45), .B(connect13[4]), .C(connect13[5]), .D(n93), .Z(n58)
         );
    EO1 U110 ( .A(n114), .B(connect13[0]), .C(n115), .D(connect13[0]), .Z(n54)
         );
    AO2 U111 ( .A(n98), .B(connect13[1]), .C(n83), .D(n78), .Z(n118) );
    AO2 U112 ( .A(n117), .B(connect13[0]), .C(n121), .D(n95), .Z(n49) );
    AO2 U113 ( .A(n89), .B(connect13[1]), .C(n130), .D(n78), .Z(n124) );
    AO2 U114 ( .A(n105), .B(connect13[5]), .C(n139), .D(n21), .Z(n42) );
    AO2 U115 ( .A(n34), .B(connect13[0]), .C(n123), .D(n95), .Z(n41) );
    AO2 U116 ( .A(n85), .B(n98), .C(n102), .D(n26), .Z(n37) );
    AO2 U117 ( .A(n127), .B(connect13[6]), .C(n68), .D(n61), .Z(n59) );
    AO2 U118 ( .A(n128), .B(connect13[7]), .C(n72), .D(n111), .Z(n65) );
    IVA U119 ( .A(connect13[9]), .Z(n71) );
    IVA U120 ( .A(connect13[7]), .Z(n111) );
    IVA U121 ( .A(connect13[6]), .Z(n61) );
    IVA U122 ( .A(connect13[8]), .Z(n66) );
    IVA U123 ( .A(connect13[2]), .Z(n92) );
    IVA U124 ( .A(connect13[5]), .Z(n21) );
    IVA U125 ( .A(connect13[4]), .Z(n93) );
    IVA U126 ( .A(connect13[1]), .Z(n78) );
    IVA U127 ( .A(connect13[0]), .Z(n95) );
    IV U128 ( .A(n63), .Z(disp1[0]) );
    IV U129 ( .A(n89), .Z(n133) );
    IVA U130 ( .A(n90), .Z(n129) );
    IV U131 ( .A(n29), .Z(n91) );
    IVP U132 ( .A(n52), .Z(n116) );
    IV U133 ( .A(n76), .Z(n107) );
    IVP U134 ( .A(n26), .Z(n98) );
    IV U135 ( .A(n20), .Z(n101) );
    IVP U136 ( .A(n56), .Z(n83) );
    IVP U137 ( .A(n31), .Z(n130) );
    IV U138 ( .A(n46), .Z(n99) );
    IV U139 ( .A(n53), .Z(n85) );
    IVA U140 ( .A(n100), .Z(n134) );
    IVA U141 ( .A(n109), .Z(n27) );
    IV U142 ( .A(n106), .Z(n139) );
    IV U143 ( .A(n33), .Z(n44) );
    IV U144 ( .A(n19), .Z(n112) );
    IV U145 ( .A(n18), .Z(n74) );
    IV U146 ( .A(n86), .Z(n120) );
endmodule


module MUX ( SELECT_ALARM, S_ALARM, S_TIME, Z );
input  [9:0] S_ALARM;
input  [9:0] S_TIME;
output [9:0] Z;
input  SELECT_ALARM;
    wire n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;
    AO2 U8 ( .A(S_TIME[9]), .B(n18), .C(S_ALARM[9]), .D(SELECT_ALARM), .Z(n17)
         );
    AO2 U9 ( .A(S_TIME[8]), .B(n18), .C(S_ALARM[8]), .D(SELECT_ALARM), .Z(n19)
         );
    AO2 U10 ( .A(S_TIME[7]), .B(n18), .C(S_ALARM[7]), .D(SELECT_ALARM), .Z(n20
        ) );
    AO2 U11 ( .A(S_TIME[6]), .B(n18), .C(S_ALARM[6]), .D(SELECT_ALARM), .Z(n21
        ) );
    AO2 U12 ( .A(S_TIME[5]), .B(n18), .C(S_ALARM[5]), .D(SELECT_ALARM), .Z(n22
        ) );
    AO2 U13 ( .A(S_TIME[4]), .B(n18), .C(S_ALARM[4]), .D(SELECT_ALARM), .Z(n23
        ) );
    AO2 U14 ( .A(S_TIME[3]), .B(n18), .C(S_ALARM[3]), .D(SELECT_ALARM), .Z(n24
        ) );
    AO2 U15 ( .A(S_TIME[2]), .B(n18), .C(S_ALARM[2]), .D(SELECT_ALARM), .Z(n25
        ) );
    AO2 U16 ( .A(S_TIME[1]), .B(n18), .C(S_ALARM[1]), .D(SELECT_ALARM), .Z(n26
        ) );
    AO2 U17 ( .A(S_TIME[0]), .B(n18), .C(S_ALARM[0]), .D(SELECT_ALARM), .Z(n27
        ) );
    IVA U18 ( .A(SELECT_ALARM), .Z(n18) );
    IV U19 ( .A(n17), .Z(Z[9]) );
    IV U20 ( .A(n19), .Z(Z[8]) );
    IV U21 ( .A(n20), .Z(Z[7]) );
    IV U22 ( .A(n21), .Z(Z[6]) );
    IV U23 ( .A(n22), .Z(Z[5]) );
    IV U24 ( .A(n23), .Z(Z[4]) );
    IV U25 ( .A(n24), .Z(Z[3]) );
    IV U26 ( .A(n25), .Z(Z[2]) );
    IV U27 ( .A(n26), .Z(Z[1]) );
    IV U28 ( .A(n27), .Z(Z[0]) );
endmodule


module COMPARATOR ( ALARM_HRS, CLOCK_HRS, ALARM_MINS, CLOCK_MINS, ALARM_AM_PM, 
    CLOCK_AM_PM, RINGER );
input  [3:0] ALARM_HRS;
input  [3:0] CLOCK_HRS;
input  [5:0] ALARM_MINS;
input  [5:0] CLOCK_MINS;
input  ALARM_AM_PM, CLOCK_AM_PM;
output RINGER;
    wire n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91;
    NR4 U56 ( .A(n78), .B(n79), .C(n80), .D(n81), .Z(RINGER) );
    EO U57 ( .A(CLOCK_MINS[2]), .B(ALARM_MINS[2]), .Z(n80) );
    EO U58 ( .A(CLOCK_MINS[5]), .B(ALARM_MINS[5]), .Z(n81) );
    AN3 U59 ( .A(n83), .B(n84), .C(n85), .Z(n82) );
    ND4 U60 ( .A(n86), .B(n87), .C(n88), .D(n82), .Z(n78) );
    ND3 U61 ( .A(n89), .B(n90), .C(n91), .Z(n79) );
    EN U62 ( .A(CLOCK_MINS[0]), .B(ALARM_MINS[0]), .Z(n84) );
    EN U63 ( .A(CLOCK_MINS[1]), .B(ALARM_MINS[1]), .Z(n83) );
    EN U64 ( .A(CLOCK_MINS[4]), .B(ALARM_MINS[4]), .Z(n85) );
    EN U65 ( .A(CLOCK_HRS[0]), .B(ALARM_HRS[0]), .Z(n87) );
    EN U66 ( .A(CLOCK_HRS[1]), .B(ALARM_HRS[1]), .Z(n86) );
    EN U67 ( .A(CLOCK_HRS[2]), .B(ALARM_HRS[2]), .Z(n88) );
    EN U68 ( .A(CLOCK_AM_PM), .B(ALARM_AM_PM), .Z(n90) );
    EN U69 ( .A(CLOCK_HRS[3]), .B(ALARM_HRS[3]), .Z(n89) );
    EN U70 ( .A(CLOCK_MINS[3]), .B(ALARM_MINS[3]), .Z(n91) );
endmodule


module TIME_STATE_MACHINE_test_1 ( TIME_BUTTON, HOURS_BUTTON, MINUTES_BUTTON, 
    CLK, SECS, HOURS, MINS, test_si, test_so, test_se );
input  TIME_BUTTON, HOURS_BUTTON, MINUTES_BUTTON, CLK, test_si, test_se;
output SECS, HOURS, MINS, test_so;
    wire \CURRENT_STATE[0] , \*cell*213/CONTROL1 , \*cell*213/CONTROL2 , n390, 
        n391, n392, n393, n394, n395, n396, n397, n398, n399;
    AN2P U114 ( .A(n390), .B(\*cell*213/CONTROL1 ), .Z(HOURS) );
    NR2 U115 ( .A(test_so), .B(n391), .Z(MINS) );
    ND3 U116 ( .A(HOURS_BUTTON), .B(n393), .C(TIME_BUTTON), .Z(n392) );
    NR3 U117 ( .A(n395), .B(HOURS_BUTTON), .C(n393), .Z(n394) );
    ND2 U118 ( .A(n394), .B(n390), .Z(n391) );
    NR2 U119 ( .A(n392), .B(test_so), .Z(\*cell*213/CONTROL1 ) );
    AO2 U120 ( .A(n397), .B(n390), .C(n398), .D(\CURRENT_STATE[0] ), .Z(n396)
         );
    NR2 U121 ( .A(n399), .B(test_so), .Z(n398) );
    NR2 U122 ( .A(n394), .B(\*cell*213/CONTROL1 ), .Z(n397) );
    IVP U123 ( .A(\CURRENT_STATE[0] ), .Z(n390) );
    IVA U124 ( .A(MINUTES_BUTTON), .Z(n393) );
    IVA U125 ( .A(TIME_BUTTON), .Z(n395) );
    IV U126 ( .A(n392), .Z(n399) );
    IVA U127 ( .A(n391), .Z(\*cell*213/CONTROL2 ) );
    IV U128 ( .A(n396), .Z(SECS) );
    FD1S \CURRENT_STATE_reg[0]  ( .D(\*cell*213/CONTROL1 ), .CP(CLK), .TI(
        test_si), .TE(test_se), .Q(\CURRENT_STATE[0] ) );
    FD1S \CURRENT_STATE_reg[1]  ( .D(\*cell*213/CONTROL2 ), .CP(CLK), .TI(
        \CURRENT_STATE[0] ), .TE(test_se), .Q(test_so) );
endmodule


module TIME_COUNTER_DW01_inc_6_0 ( A, SUM );
input  [5:0] A;
output [5:0] SUM;
    wire n25, n26, n27, n28, n29;
    IV U36 ( .A(A[0]), .Z(SUM[0]) );
    NR2 U37 ( .A(n26), .B(n27), .Z(n25) );
    AN3 U38 ( .A(A[1]), .B(A[0]), .C(A[2]), .Z(n28) );
    ND2 U39 ( .A(n28), .B(A[3]), .Z(n26) );
    EO U40 ( .A(A[5]), .B(n25), .Z(SUM[5]) );
    EO1 U41 ( .A(n26), .B(n27), .C(n26), .D(n27), .Z(SUM[4]) );
    EO U42 ( .A(A[3]), .B(n28), .Z(SUM[3]) );
    EN U43 ( .A(n29), .B(A[2]), .Z(SUM[2]) );
    EO1 U44 ( .A(A[0]), .B(A[1]), .C(A[0]), .D(A[1]), .Z(SUM[1]) );
    ND2 U45 ( .A(A[1]), .B(A[0]), .Z(n29) );
    IVP U46 ( .A(A[4]), .Z(n27) );
endmodule


module TIME_COUNTER_test_1 ( HOURS, MINS, SECS, CLK, HOURS_OUT, MINUTES_OUT, 
    AM_PM_OUT, test_si, test_se );
output [3:0] HOURS_OUT;
output [5:0] MINUTES_OUT;
input  HOURS, MINS, SECS, CLK, test_si, test_se;
output AM_PM_OUT;
    wire n710, n711, n712, n713, n714, n701, n715, n702, n716, n703, n717, 
        n704, n705, n706, n707, n708, n709, \sum499[5] , \sum499[4] , 
        \sum499[3] , \*cell*205/Z_5 , \*cell*205/Z_4 , \sum499[2] , 
        \*cell*205/Z_3 , \*cell*205/Z_2 , \*cell*205/Z_1 , \sum499[1] , 
        \*cell*205/Z_0 , \sum499[0] , \CURRENT_SECS[5] , \CURRENT_SECS[4] , 
        \CURRENT_SECS[3] , \CURRENT_SECS[2] , \CURRENT_SECS[1] , 
        \CURRENT_SECS[0] , n824, n825, n826, n827, n828, n829, n830, n831, 
        n832, n833, n834, n835, n836, n837, n838, n839, n840, n841, n842, n843, 
        n844, n845, n846, n847, n848, n849, n850, n851, n852, n853, n854, n855, 
        n856, n857, n858, n859, n860, n861, n862, n863, n864, n865, n866, n867, 
        n868, n869, n870, n871, n872, n873, n874, n875, n876, n877, n878;
    TIME_COUNTER_DW01_inc_6_0 r65 ( .A({\*cell*205/Z_5 , \*cell*205/Z_4 , 
        \*cell*205/Z_3 , \*cell*205/Z_2 , \*cell*205/Z_1 , \*cell*205/Z_0 }), 
        .SUM({\sum499[5] , \sum499[4] , \sum499[3] , \sum499[2] , \sum499[1] , 
        \sum499[0] }) );
    AO4 U507 ( .A(n824), .B(n825), .C(n826), .D(n827), .Z(n716) );
    AO4 U508 ( .A(n828), .B(n829), .C(n830), .D(n831), .Z(n704) );
    AO6 U509 ( .A(HOURS_OUT[2]), .B(n833), .C(n834), .Z(n832) );
    AO4 U510 ( .A(n835), .B(n827), .C(n824), .D(n836), .Z(n706) );
    AO7 U511 ( .A(n826), .B(n824), .C(n837), .Z(\*cell*205/Z_3 ) );
    AO4 U512 ( .A(n838), .B(n827), .C(n824), .D(n839), .Z(n709) );
    AO4 U513 ( .A(n838), .B(n824), .C(n840), .D(n829), .Z(\*cell*205/Z_4 ) );
    AO4 U514 ( .A(n840), .B(n831), .C(n829), .D(n839), .Z(n710) );
    AO4 U515 ( .A(n841), .B(n824), .C(n842), .D(n829), .Z(\*cell*205/Z_5 ) );
    AO4 U516 ( .A(n825), .B(n829), .C(n843), .D(n831), .Z(n703) );
    AO4 U517 ( .A(n842), .B(n831), .C(n844), .D(n829), .Z(n702) );
    AO4 U518 ( .A(n824), .B(n845), .C(n827), .D(n846), .Z(n708) );
    AO4 U519 ( .A(n847), .B(n831), .C(n829), .D(n836), .Z(n712) );
    AO4 U520 ( .A(n829), .B(n845), .C(n831), .D(n848), .Z(n711) );
    AO4 U521 ( .A(n824), .B(n828), .C(n849), .D(n827), .Z(n714) );
    EON1 U522 ( .A(n850), .B(n851), .C(n852), .D(\sum499[1] ), .Z(n715) );
    AO4 U523 ( .A(n841), .B(n827), .C(n824), .D(n844), .Z(n717) );
    AO7 U524 ( .A(n835), .B(n824), .C(n853), .Z(\*cell*205/Z_0 ) );
    AO7 U525 ( .A(n849), .B(n824), .C(n854), .Z(\*cell*205/Z_1 ) );
    AO7 U526 ( .A(n855), .B(n856), .C(n851), .Z(n852) );
    ND2 U527 ( .A(n836), .B(n858), .Z(n857) );
    NR2 U528 ( .A(n856), .B(n858), .Z(n859) );
    OR3 U529 ( .A(MINS), .B(HOURS), .C(n861), .Z(n860) );
    NR4 U530 ( .A(n830), .B(\CURRENT_SECS[2] ), .C(n847), .D(n863), .Z(n862)
         );
    ND2 U531 ( .A(n827), .B(n864), .Z(n824) );
    AO6 U532 ( .A(n866), .B(n862), .C(n867), .Z(n865) );
    ND4 U533 ( .A(MINUTES_OUT[4]), .B(n846), .C(MINUTES_OUT[5]), .D(n868), .Z(
        n864) );
    AO7 U534 ( .A(n865), .B(n864), .C(n869), .Z(n850) );
    NR3 U535 ( .A(n870), .B(HOURS_OUT[0]), .C(n871), .Z(n855) );
    NR2 U536 ( .A(n860), .B(n862), .Z(n872) );
    NR2 U537 ( .A(n866), .B(n867), .Z(n873) );
    ND2 U538 ( .A(n873), .B(n869), .Z(n831) );
    ND2 U539 ( .A(n855), .B(n851), .Z(n858) );
    AO6 U540 ( .A(n864), .B(n874), .C(n872), .Z(n833) );
    EO U541 ( .A(AM_PM_OUT), .B(n859), .Z(n701) );
    AO2 U542 ( .A(n875), .B(n850), .C(n870), .D(n856), .Z(n713) );
    AO2 U543 ( .A(HOURS_OUT[0]), .B(n856), .C(n857), .D(n850), .Z(n876) );
    AO2 U544 ( .A(n877), .B(n850), .C(n871), .D(n856), .Z(n705) );
    AN3 U545 ( .A(MINUTES_OUT[1]), .B(MINUTES_OUT[3]), .C(MINUTES_OUT[0]), .Z(
        n868) );
    ND3 U546 ( .A(\CURRENT_SECS[5] ), .B(\CURRENT_SECS[4] ), .C(
        \CURRENT_SECS[3] ), .Z(n863) );
    AO2 U547 ( .A(n833), .B(HOURS_OUT[3]), .C(n872), .D(\CURRENT_SECS[3] ), 
        .Z(n837) );
    AO4 U548 ( .A(n846), .B(n824), .C(n848), .D(n829), .Z(n834) );
    AO2 U549 ( .A(n833), .B(HOURS_OUT[1]), .C(n872), .D(\CURRENT_SECS[1] ), 
        .Z(n854) );
    AO2 U550 ( .A(n872), .B(\CURRENT_SECS[0] ), .C(n833), .D(HOURS_OUT[0]), 
        .Z(n853) );
    OR3 U551 ( .A(MINS), .B(SECS), .C(n878), .Z(n869) );
    AN3 U552 ( .A(n878), .B(n861), .C(MINS), .Z(n867) );
    ND2 U553 ( .A(\sum499[3] ), .B(n858), .Z(n875) );
    ND2 U554 ( .A(\sum499[2] ), .B(n858), .Z(n877) );
    IV U555 ( .A(n832), .Z(\*cell*205/Z_2 ) );
    IVP U556 ( .A(MINUTES_OUT[0]), .Z(n835) );
    IV U557 ( .A(\sum499[1] ), .Z(n828) );
    IVP U558 ( .A(\sum499[3] ), .Z(n825) );
    IVP U559 ( .A(MINUTES_OUT[1]), .Z(n849) );
    IVP U560 ( .A(MINUTES_OUT[3]), .Z(n826) );
    IVP U561 ( .A(MINUTES_OUT[5]), .Z(n841) );
    IV U562 ( .A(\CURRENT_SECS[3] ), .Z(n843) );
    IVP U563 ( .A(MINUTES_OUT[4]), .Z(n838) );
    IVA U564 ( .A(HOURS), .Z(n878) );
    IVP U565 ( .A(\CURRENT_SECS[5] ), .Z(n842) );
    IVP U566 ( .A(\CURRENT_SECS[4] ), .Z(n840) );
    IVP U567 ( .A(\CURRENT_SECS[0] ), .Z(n847) );
    IVP U568 ( .A(\CURRENT_SECS[1] ), .Z(n830) );
    IVP U569 ( .A(\sum499[2] ), .Z(n845) );
    IVP U570 ( .A(SECS), .Z(n861) );
    IVP U571 ( .A(HOURS_OUT[2]), .Z(n871) );
    IVP U572 ( .A(HOURS_OUT[3]), .Z(n870) );
    IVP U573 ( .A(\CURRENT_SECS[2] ), .Z(n848) );
    IVP U574 ( .A(MINUTES_OUT[2]), .Z(n846) );
    IVP U575 ( .A(HOURS_OUT[1]), .Z(n851) );
    IVP U576 ( .A(\sum499[4] ), .Z(n839) );
    IVA U577 ( .A(\sum499[0] ), .Z(n836) );
    IVP U578 ( .A(\sum499[5] ), .Z(n844) );
    IVA U579 ( .A(n860), .Z(n866) );
    IVA U580 ( .A(n865), .Z(n827) );
    IV U581 ( .A(n850), .Z(n856) );
    IVP U582 ( .A(n872), .Z(n829) );
    IV U583 ( .A(n873), .Z(n874) );
    IV U584 ( .A(n876), .Z(n707) );
    FD1S AM_PM_OUT_reg ( .D(n701), .CP(CLK), .TI(test_si), .TE(test_se), .Q(
        AM_PM_OUT) );
    FD1S \CURRENT_SECS_reg[5]  ( .D(n702), .CP(CLK), .TI(\CURRENT_SECS[4] ), 
        .TE(test_se), .Q(\CURRENT_SECS[5] ) );
    FD1S \CURRENT_SECS_reg[4]  ( .D(n710), .CP(CLK), .TI(\CURRENT_SECS[3] ), 
        .TE(test_se), .Q(\CURRENT_SECS[4] ) );
    FD1S \CURRENT_SECS_reg[3]  ( .D(n703), .CP(CLK), .TI(\CURRENT_SECS[2] ), 
        .TE(test_se), .Q(\CURRENT_SECS[3] ) );
    FD1S \CURRENT_SECS_reg[2]  ( .D(n711), .CP(CLK), .TI(\CURRENT_SECS[1] ), 
        .TE(test_se), .Q(\CURRENT_SECS[2] ) );
    FD1S \CURRENT_SECS_reg[1]  ( .D(n704), .CP(CLK), .TI(\CURRENT_SECS[0] ), 
        .TE(test_se), .Q(\CURRENT_SECS[1] ) );
    FD1S \CURRENT_SECS_reg[0]  ( .D(n712), .CP(CLK), .TI(AM_PM_OUT), .TE(
        test_se), .Q(\CURRENT_SECS[0] ) );
    FD1S \HOURS_OUT_reg[3]  ( .D(n713), .CP(CLK), .TI(HOURS_OUT[2]), .TE(
        test_se), .Q(HOURS_OUT[3]) );
    FD1S \HOURS_OUT_reg[2]  ( .D(n705), .CP(CLK), .TI(HOURS_OUT[1]), .TE(
        test_se), .Q(HOURS_OUT[2]) );
    FD1S \MINUTES_OUT_reg[0]  ( .D(n706), .CP(CLK), .TI(HOURS_OUT[3]), .TE(
        test_se), .Q(MINUTES_OUT[0]) );
    FD1S \MINUTES_OUT_reg[1]  ( .D(n714), .CP(CLK), .TI(MINUTES_OUT[0]), .TE(
        test_se), .Q(MINUTES_OUT[1]) );
    FD1S \HOURS_OUT_reg[1]  ( .D(n715), .CP(CLK), .TI(HOURS_OUT[0]), .TE(
        test_se), .Q(HOURS_OUT[1]) );
    FD1S \HOURS_OUT_reg[0]  ( .D(n707), .CP(CLK), .TI(\CURRENT_SECS[5] ), .TE(
        test_se), .Q(HOURS_OUT[0]) );
    FD1S \MINUTES_OUT_reg[2]  ( .D(n708), .CP(CLK), .TI(MINUTES_OUT[1]), .TE(
        test_se), .Q(MINUTES_OUT[2]) );
    FD1S \MINUTES_OUT_reg[3]  ( .D(n716), .CP(CLK), .TI(MINUTES_OUT[2]), .TE(
        test_se), .Q(MINUTES_OUT[3]) );
    FD1S \MINUTES_OUT_reg[4]  ( .D(n709), .CP(CLK), .TI(MINUTES_OUT[3]), .TE(
        test_se), .Q(MINUTES_OUT[4]) );
    FD1S \MINUTES_OUT_reg[5]  ( .D(n717), .CP(CLK), .TI(MINUTES_OUT[4]), .TE(
        test_se), .Q(MINUTES_OUT[5]) );
endmodule


module TIME_BLOCK_test_1 ( SET_TIME, HRS, MINS, CLK, CONNECT6, CONNECT7, 
    CONNECT8, OUTBUS, AM_PM_OUT, test_si, test_se );
output [9:0] OUTBUS;
output [3:0] CONNECT6;
output [5:0] CONNECT7;
input  SET_TIME, HRS, MINS, CLK, test_si, test_se;
output CONNECT8, AM_PM_OUT;
    wire CONNECT4, CONNECT5, CONNECT3, \CONNECT6[3] , \CONNECT7[5] , 
        \CONNECT7[1] , \CONNECT7[3] , \CONNECT6[1] , \CONNECT6[2] , 
        \CONNECT6[0] , \CONNECT7[4] , \CONNECT7[2] , \CONNECT7[0] , n37;
    assign CONNECT6[3] = \CONNECT6[3] ;
    assign CONNECT6[2] = \CONNECT6[2] ;
    assign CONNECT6[1] = \CONNECT6[1] ;
    assign CONNECT6[0] = \CONNECT6[0] ;
    assign CONNECT7[5] = \CONNECT7[5] ;
    assign CONNECT7[4] = \CONNECT7[4] ;
    assign CONNECT7[3] = \CONNECT7[3] ;
    assign CONNECT7[2] = \CONNECT7[2] ;
    assign CONNECT7[1] = \CONNECT7[1] ;
    assign CONNECT7[0] = \CONNECT7[0] ;
    assign CONNECT8 = AM_PM_OUT;
    assign OUTBUS[9] = \CONNECT6[3] ;
    assign OUTBUS[8] = \CONNECT6[2] ;
    assign OUTBUS[7] = \CONNECT6[1] ;
    assign OUTBUS[6] = \CONNECT6[0] ;
    assign OUTBUS[5] = \CONNECT7[5] ;
    assign OUTBUS[4] = \CONNECT7[4] ;
    assign OUTBUS[3] = \CONNECT7[3] ;
    assign OUTBUS[2] = \CONNECT7[2] ;
    assign OUTBUS[1] = \CONNECT7[1] ;
    assign OUTBUS[0] = \CONNECT7[0] ;
    TIME_STATE_MACHINE_test_1 U1 ( .TIME_BUTTON(SET_TIME), .HOURS_BUTTON(HRS), 
        .MINUTES_BUTTON(MINS), .CLK(CLK), .SECS(CONNECT5), .HOURS(CONNECT3), 
        .MINS(CONNECT4), .test_si(test_si), .test_so(n37), .test_se(test_se)
         );
    TIME_COUNTER_test_1 U2 ( .HOURS(CONNECT3), .MINS(CONNECT4), .SECS(CONNECT5
        ), .CLK(CLK), .HOURS_OUT({\CONNECT6[3] , \CONNECT6[2] , \CONNECT6[1] , 
        \CONNECT6[0] }), .MINUTES_OUT({\CONNECT7[5] , \CONNECT7[4] , 
        \CONNECT7[3] , \CONNECT7[2] , \CONNECT7[1] , \CONNECT7[0] }), 
        .AM_PM_OUT(AM_PM_OUT), .test_si(n37), .test_se(test_se) );
endmodule


module ALARM_STATE_MACHINE_test_1 ( ALARM_BUTTON, HOURS_BUTTON, MINUTES_BUTTON, 
    CLK, HOURS, MINS, test_si, test_so, test_se );
input  ALARM_BUTTON, HOURS_BUTTON, MINUTES_BUTTON, CLK, test_si, test_se;
output HOURS, MINS, test_so;
    wire \CURRENT_STATE[0] , \*cell*179/CONTROL1 , \*cell*179/CONTROL2 , n386, 
        n387, n388, n389;
    AN2P U104 ( .A(n386), .B(\*cell*179/CONTROL1 ), .Z(HOURS) );
    NR2 U105 ( .A(test_so), .B(n387), .Z(MINS) );
    ND4 U106 ( .A(MINUTES_BUTTON), .B(ALARM_BUTTON), .C(n386), .D(n388), .Z(
        n387) );
    NR4 U107 ( .A(n388), .B(n389), .C(MINUTES_BUTTON), .D(test_so), .Z(
        \*cell*179/CONTROL1 ) );
    IVA U108 ( .A(HOURS_BUTTON), .Z(n388) );
    IVA U109 ( .A(ALARM_BUTTON), .Z(n389) );
    IVP U110 ( .A(n387), .Z(\*cell*179/CONTROL2 ) );
    IVP U111 ( .A(\CURRENT_STATE[0] ), .Z(n386) );
    FD1S \CURRENT_STATE_reg[0]  ( .D(\*cell*179/CONTROL1 ), .CP(CLK), .TI(
        test_si), .TE(test_se), .Q(\CURRENT_STATE[0] ) );
    FD1S \CURRENT_STATE_reg[1]  ( .D(\*cell*179/CONTROL2 ), .CP(CLK), .TI(
        \CURRENT_STATE[0] ), .TE(test_se), .Q(test_so) );
endmodule


module ALARM_COUNTER_DW01_inc_6_0 ( A, SUM );
input  [5:0] A;
output [5:0] SUM;
    wire n30, n31, n32, n33, n34;
    IV U58 ( .A(A[0]), .Z(SUM[0]) );
    NR2 U59 ( .A(n31), .B(n32), .Z(n30) );
    AN3 U60 ( .A(A[1]), .B(A[0]), .C(A[2]), .Z(n33) );
    ND2 U61 ( .A(n33), .B(A[3]), .Z(n31) );
    EO U62 ( .A(A[5]), .B(n30), .Z(SUM[5]) );
    EO1 U63 ( .A(n31), .B(n32), .C(n31), .D(n32), .Z(SUM[4]) );
    EO U64 ( .A(A[3]), .B(n33), .Z(SUM[3]) );
    EN U65 ( .A(n34), .B(A[2]), .Z(SUM[2]) );
    EO1 U66 ( .A(A[0]), .B(A[1]), .C(A[0]), .D(A[1]), .Z(SUM[1]) );
    ND2 U67 ( .A(A[1]), .B(A[0]), .Z(n34) );
    IVP U68 ( .A(A[4]), .Z(n32) );
endmodule


module ALARM_COUNTER_test_1 ( HOURS, MINS, CLK, HOURS_OUT, MINUTES_OUT, 
    AM_PM_OUT, test_si, test_se );
output [3:0] HOURS_OUT;
output [5:0] MINUTES_OUT;
input  HOURS, MINS, CLK, test_si, test_se;
output AM_PM_OUT;
    wire \*cell*171/Z_0 , \*cell*171/Z_1 , \*cell*171/Z_2 , \*cell*171/Z_3 , 
        \*cell*171/Z_4 , \*cell*171/Z_5 , \sum260[5] , \sum260[4] , 
        \sum260[3] , \sum260[2] , \sum260[1] , \sum260[0] , n350, n351, n352, 
        n353, n354, n355, n356, n357, n358, n359, n349, n498, n499, n500, n501, 
        n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, 
        n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, 
        n526, n527, n528, n529;
    ALARM_COUNTER_DW01_inc_6_0 r38 ( .A({\*cell*171/Z_5 , \*cell*171/Z_4 , 
        \*cell*171/Z_3 , \*cell*171/Z_2 , \*cell*171/Z_1 , \*cell*171/Z_0 }), 
        .SUM({\sum260[5] , \sum260[4] , \sum260[3] , \sum260[2] , \sum260[1] , 
        \sum260[0] }) );
    EON1 U386 ( .A(n498), .B(n499), .C(n500), .D(\sum260[0] ), .Z(n352) );
    AO4 U387 ( .A(n501), .B(n502), .C(n503), .D(n504), .Z(n353) );
    AO4 U388 ( .A(n505), .B(n504), .C(n498), .D(n506), .Z(n354) );
    AO4 U389 ( .A(n507), .B(n508), .C(n509), .D(n510), .Z(n356) );
    EON1 U390 ( .A(n498), .B(n511), .C(\sum260[5] ), .D(n500), .Z(n359) );
    AN2P U391 ( .A(MINUTES_OUT[4]), .B(n500), .Z(\*cell*171/Z_4 ) );
    NR2 U392 ( .A(n511), .B(n505), .Z(\*cell*171/Z_5 ) );
    AO2 U393 ( .A(n500), .B(\sum260[3] ), .C(n513), .D(MINUTES_OUT[3]), .Z(
        n512) );
    AO2 U394 ( .A(n513), .B(MINUTES_OUT[4]), .C(\sum260[4] ), .D(n500), .Z(
        n514) );
    NR2 U395 ( .A(\sum260[2] ), .B(n513), .Z(n507) );
    NR2 U396 ( .A(n516), .B(\sum260[0] ), .Z(n515) );
    AO6 U397 ( .A(n517), .B(n501), .C(HOURS_OUT[1]), .Z(n503) );
    ND2 U398 ( .A(n501), .B(n516), .Z(n518) );
    ND4 U399 ( .A(MINUTES_OUT[3]), .B(MINUTES_OUT[4]), .C(n520), .D(
        MINUTES_OUT[1]), .Z(n519) );
    NR2 U400 ( .A(n521), .B(HOURS), .Z(n498) );
    AO7 U401 ( .A(MINUTES_OUT[2]), .B(n519), .C(n498), .Z(n505) );
    ND3 U402 ( .A(HOURS_OUT[3]), .B(n522), .C(HOURS_OUT[2]), .Z(n517) );
    AO2 U403 ( .A(n521), .B(HOURS), .C(n498), .D(n524), .Z(n523) );
    NR2 U404 ( .A(n517), .B(HOURS_OUT[1]), .Z(n516) );
    EN U405 ( .A(AM_PM_OUT), .B(n518), .Z(n349) );
    AO2 U406 ( .A(n522), .B(n523), .C(n515), .D(n501), .Z(n355) );
    AO2 U407 ( .A(n525), .B(n523), .C(n526), .D(n501), .Z(n351) );
    EO1 U408 ( .A(n527), .B(n501), .C(HOURS_OUT[3]), .D(n501), .Z(n350) );
    AO2 U409 ( .A(MINUTES_OUT[3]), .B(n500), .C(HOURS_OUT[3]), .D(n505), .Z(
        n528) );
    AO2 U410 ( .A(n525), .B(n505), .C(n508), .D(n500), .Z(\*cell*171/Z_2 ) );
    AO2 U411 ( .A(n502), .B(n505), .C(n506), .D(n500), .Z(\*cell*171/Z_1 ) );
    AO2 U412 ( .A(n522), .B(n505), .C(n499), .D(n500), .Z(\*cell*171/Z_0 ) );
    NR2 U413 ( .A(n511), .B(n499), .Z(n520) );
    ND2 U414 ( .A(n498), .B(n519), .Z(n510) );
    NR2 U415 ( .A(n519), .B(MINUTES_OUT[2]), .Z(n524) );
    ND2 U416 ( .A(\sum260[2] ), .B(n529), .Z(n526) );
    ND2 U417 ( .A(\sum260[3] ), .B(n529), .Z(n527) );
    IVA U418 ( .A(n523), .Z(n501) );
    IVP U419 ( .A(\sum260[1] ), .Z(n504) );
    IVP U420 ( .A(MINUTES_OUT[1]), .Z(n506) );
    IV U421 ( .A(MINUTES_OUT[2]), .Z(n508) );
    IVP U422 ( .A(HOURS_OUT[2]), .Z(n525) );
    IV U423 ( .A(HOURS_OUT[1]), .Z(n502) );
    IV U424 ( .A(\sum260[2] ), .Z(n509) );
    IVP U425 ( .A(MINS), .Z(n521) );
    IVP U426 ( .A(HOURS_OUT[0]), .Z(n522) );
    IVP U427 ( .A(MINUTES_OUT[5]), .Z(n511) );
    IVP U428 ( .A(MINUTES_OUT[0]), .Z(n499) );
    IV U429 ( .A(n498), .Z(n513) );
    IV U430 ( .A(n514), .Z(n358) );
    IV U431 ( .A(n505), .Z(n500) );
    IV U432 ( .A(n512), .Z(n357) );
    IV U433 ( .A(n516), .Z(n529) );
    IVP U434 ( .A(n528), .Z(\*cell*171/Z_3 ) );
    FD1S \MINUTES_OUT_reg[0]  ( .D(n352), .CP(CLK), .TI(HOURS_OUT[3]), .TE(
        test_se), .Q(MINUTES_OUT[0]) );
    FD1S \HOURS_OUT_reg[2]  ( .D(n351), .CP(CLK), .TI(HOURS_OUT[1]), .TE(
        test_se), .Q(HOURS_OUT[2]) );
    FD1S AM_PM_OUT_reg ( .D(n349), .CP(CLK), .TI(test_si), .TE(test_se), .Q(
        AM_PM_OUT) );
    FD1S \MINUTES_OUT_reg[1]  ( .D(n354), .CP(CLK), .TI(MINUTES_OUT[0]), .TE(
        test_se), .Q(MINUTES_OUT[1]) );
    FD1S \HOURS_OUT_reg[1]  ( .D(n353), .CP(CLK), .TI(HOURS_OUT[0]), .TE(
        test_se), .Q(HOURS_OUT[1]) );
    FD1S \MINUTES_OUT_reg[2]  ( .D(n356), .CP(CLK), .TI(MINUTES_OUT[1]), .TE(
        test_se), .Q(MINUTES_OUT[2]) );
    FD1S \HOURS_OUT_reg[0]  ( .D(n355), .CP(CLK), .TI(AM_PM_OUT), .TE(test_se), 
        .Q(HOURS_OUT[0]) );
    FD1S \MINUTES_OUT_reg[3]  ( .D(n357), .CP(CLK), .TI(MINUTES_OUT[2]), .TE(
        test_se), .Q(MINUTES_OUT[3]) );
    FD1S \MINUTES_OUT_reg[4]  ( .D(n358), .CP(CLK), .TI(MINUTES_OUT[3]), .TE(
        test_se), .Q(MINUTES_OUT[4]) );
    FD1S \MINUTES_OUT_reg[5]  ( .D(n359), .CP(CLK), .TI(MINUTES_OUT[4]), .TE(
        test_se), .Q(MINUTES_OUT[5]) );
    FD1S \HOURS_OUT_reg[3]  ( .D(n350), .CP(CLK), .TI(HOURS_OUT[2]), .TE(
        test_se), .Q(HOURS_OUT[3]) );
endmodule


module ALARM_BLOCK_test_1 ( ALARM, HRS, MINS, CLK, CONNECT9, CONNECT10, 
    CONNECT11, AM_PM_OUT, OUTBUS, test_si, test_se );
output [9:0] OUTBUS;
output [5:0] CONNECT10;
output [3:0] CONNECT9;
input  ALARM, HRS, MINS, CLK, test_si, test_se;
output CONNECT11, AM_PM_OUT;
    wire CONNECT2, \CONNECT9[3] , \CONNECT10[5] , \CONNECT10[1] , 
        \CONNECT9[1] , \CONNECT10[3] , CONNECT1, \CONNECT9[2] , \CONNECT9[0] , 
        \CONNECT10[2] , \CONNECT10[0] , \CONNECT10[4] , n36;
    assign CONNECT9[3] = \CONNECT9[3] ;
    assign CONNECT9[2] = \CONNECT9[2] ;
    assign CONNECT9[1] = \CONNECT9[1] ;
    assign CONNECT9[0] = \CONNECT9[0] ;
    assign CONNECT10[5] = \CONNECT10[5] ;
    assign CONNECT10[4] = \CONNECT10[4] ;
    assign CONNECT10[3] = \CONNECT10[3] ;
    assign CONNECT10[2] = \CONNECT10[2] ;
    assign CONNECT10[1] = \CONNECT10[1] ;
    assign CONNECT10[0] = \CONNECT10[0] ;
    assign CONNECT11 = AM_PM_OUT;
    assign OUTBUS[9] = \CONNECT9[3] ;
    assign OUTBUS[8] = \CONNECT9[2] ;
    assign OUTBUS[7] = \CONNECT9[1] ;
    assign OUTBUS[6] = \CONNECT9[0] ;
    assign OUTBUS[5] = \CONNECT10[5] ;
    assign OUTBUS[4] = \CONNECT10[4] ;
    assign OUTBUS[3] = \CONNECT10[3] ;
    assign OUTBUS[2] = \CONNECT10[2] ;
    assign OUTBUS[1] = \CONNECT10[1] ;
    assign OUTBUS[0] = \CONNECT10[0] ;
    ALARM_STATE_MACHINE_test_1 U0 ( .ALARM_BUTTON(ALARM), .HOURS_BUTTON(HRS), 
        .MINUTES_BUTTON(MINS), .CLK(CLK), .HOURS(CONNECT1), .MINS(CONNECT2), 
        .test_si(test_si), .test_so(n36), .test_se(test_se) );
    ALARM_COUNTER_test_1 U3 ( .HOURS(CONNECT1), .MINS(CONNECT2), .CLK(CLK), 
        .HOURS_OUT({\CONNECT9[3] , \CONNECT9[2] , \CONNECT9[1] , \CONNECT9[0] 
        }), .MINUTES_OUT({\CONNECT10[5] , \CONNECT10[4] , \CONNECT10[3] , 
        \CONNECT10[2] , \CONNECT10[1] , \CONNECT10[0] }), .AM_PM_OUT(AM_PM_OUT
        ), .test_si(n36), .test_se(test_se) );
endmodule


module ALARM_SM_2_test_1 ( COMPARE_IN, TOGGLE_ON, CLOCK, RING, test_si, 
    test_se );
input  COMPARE_IN, TOGGLE_ON, CLOCK, test_si, test_se;
output RING;
    wire \*cell*143/CONTROL1 , n374;
    AO7 U37 ( .A(COMPARE_IN), .B(RING), .C(TOGGLE_ON), .Z(n374) );
    IVA U38 ( .A(n374), .Z(\*cell*143/CONTROL1 ) );
    FD1S CURRENT_STATE_reg ( .D(\*cell*143/CONTROL1 ), .CP(CLOCK), .TI(test_si
        ), .TE(test_se), .Q(RING) );
endmodule


module COMPUTE_BLOCK_test_1 ( SET_TIME, ALARM, HRS, MINS, TOGGLE_SWITCH, CLK, 
    KONNECT4, KONNECT5, KONNECT13, KONNECT14, SPEAKER_OUT, test_si, test_se );
output [9:0] KONNECT14;
output [9:0] KONNECT13;
input  SET_TIME, ALARM, HRS, MINS, TOGGLE_SWITCH, CLK, test_si, test_se;
output KONNECT4, KONNECT5, SPEAKER_OUT;
    wire \CONNECT6_pin[0] , \CONNECT6_pin[2] , \CONNECT10_pin[4] , 
        \CONNECT7_pin[1] , \CONNECT10_pin[0] , KONNECT8, \CONNECT7_pin[5] , 
        \CONNECT9_pin[0] , \CONNECT9_pin[2] , \CONNECT6_pin[1] , 
        \CONNECT7_pin[3] , \CONNECT10_pin[2] , KONNECT12, \CONNECT7_pin[2] , 
        \CONNECT10_pin[3] , \CONNECT9_pin[3] , \CONNECT6_pin[3] , KONNECT11, 
        \CONNECT10_pin[5] , \CONNECT7_pin[0] , \CONNECT7_pin[4] , 
        \CONNECT9_pin[1] , \CONNECT10_pin[1] ;
    COMPARATOR U4 ( .ALARM_HRS({\CONNECT9_pin[0] , \CONNECT9_pin[1] , 
        \CONNECT9_pin[2] , \CONNECT9_pin[3] }), .CLOCK_HRS({\CONNECT6_pin[0] , 
        \CONNECT6_pin[1] , \CONNECT6_pin[2] , \CONNECT6_pin[3] }), 
        .ALARM_MINS({\CONNECT10_pin[0] , \CONNECT10_pin[1] , 
        \CONNECT10_pin[2] , \CONNECT10_pin[3] , \CONNECT10_pin[4] , 
        \CONNECT10_pin[5] }), .CLOCK_MINS({\CONNECT7_pin[0] , 
        \CONNECT7_pin[1] , \CONNECT7_pin[2] , \CONNECT7_pin[3] , 
        \CONNECT7_pin[4] , \CONNECT7_pin[5] }), .ALARM_AM_PM(KONNECT11), 
        .CLOCK_AM_PM(KONNECT8), .RINGER(KONNECT12) );
    TIME_BLOCK_test_1 U1 ( .SET_TIME(SET_TIME), .HRS(HRS), .MINS(MINS), .CLK(
        CLK), .CONNECT6({\CONNECT6_pin[0] , \CONNECT6_pin[1] , 
        \CONNECT6_pin[2] , \CONNECT6_pin[3] }), .CONNECT7({\CONNECT7_pin[0] , 
        \CONNECT7_pin[1] , \CONNECT7_pin[2] , \CONNECT7_pin[3] , 
        \CONNECT7_pin[4] , \CONNECT7_pin[5] }), .CONNECT8(KONNECT8), .OUTBUS(
        KONNECT13), .AM_PM_OUT(KONNECT4), .test_si(test_si), .test_se(test_se)
         );
    ALARM_BLOCK_test_1 U2 ( .ALARM(ALARM), .HRS(HRS), .MINS(MINS), .CLK(CLK), 
        .CONNECT9({\CONNECT9_pin[0] , \CONNECT9_pin[1] , \CONNECT9_pin[2] , 
        \CONNECT9_pin[3] }), .CONNECT10({\CONNECT10_pin[0] , 
        \CONNECT10_pin[1] , \CONNECT10_pin[2] , \CONNECT10_pin[3] , 
        \CONNECT10_pin[4] , \CONNECT10_pin[5] }), .CONNECT11(KONNECT11), 
        .AM_PM_OUT(KONNECT5), .OUTBUS(KONNECT14), .test_si(\CONNECT7_pin[0] ), 
        .test_se(test_se) );
    ALARM_SM_2_test_1 U5 ( .COMPARE_IN(KONNECT12), .TOGGLE_ON(TOGGLE_SWITCH), 
        .CLOCK(CLK), .RING(SPEAKER_OUT), .test_si(\CONNECT10_pin[0] ), 
        .test_se(test_se) );
endmodule


module TPGF ( SET_TIME, ALARM, HRS, MINS, TOGGLE_SWITCH, CLK, SPEAKER_OUT, 
    DISP1, DISP2, AM_PM_4, AM_PM_5, test_si, test_se );
output [13:0] DISP2;
output [13:0] DISP1;
input  SET_TIME, ALARM, HRS, MINS, TOGGLE_SWITCH, CLK, test_si, test_se;
output SPEAKER_OUT, AM_PM_4, AM_PM_5;
    wire n204, n205, K13_5_port, K14_6_port, n207, n212, n217, n225, n227, 
        K14_0_port, K13_4_port, K13_3_port, K14_9_port, K14_7_port, n234, 
        K13_2_port, K14_1_port, K14_8_port, n214, n216, n221, KMUX_5_port, 
        n229, n238, KMUX_3_port, n223, n236, KMUX_4_port, n206, n209, n213, 
        n219, n232, n239, KMUX_2_port, n220, n231, K13_6_port, K14_5_port, 
        n215, n224, K13_9_port, K13_0_port, K14_3_port, n235, n208, n218, n222, 
        n237, n230, K13_7_port, K14_4_port, n210, n211, n233, K13_8_port, 
        K13_1_port, n226, K14_2_port, KMUX_9_port, KMUX_6_port, KMUX_0_port, 
        n228, KMUX_7_port, n240, KMUX_8_port, KMUX_1_port, n242, n241;
    CONVERTOR_CKT U3 ( .connect13({KMUX_9_port, KMUX_8_port, KMUX_7_port, 
        KMUX_6_port, KMUX_5_port, KMUX_4_port, KMUX_3_port, KMUX_2_port, 
        KMUX_1_port, KMUX_0_port}), .disp1({n211, n212, n213, n214, n215, n216, 
        n217, n218, n219, n220, n221, n222, n223, n224}), .disp2({n225, n226, 
        n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238
        }) );
    MUX U_MUX ( .SELECT_ALARM(n205), .S_ALARM({K14_9_port, K14_8_port, 
        K14_7_port, K14_6_port, K14_5_port, K14_4_port, K14_3_port, K14_2_port, 
        K14_1_port, K14_0_port}), .S_TIME({K13_9_port, K13_8_port, K13_7_port, 
        K13_6_port, K13_5_port, K13_4_port, K13_3_port, K13_2_port, K13_1_port, 
        K13_0_port}), .Z({KMUX_9_port, KMUX_8_port, KMUX_7_port, KMUX_6_port, 
        KMUX_5_port, KMUX_4_port, KMUX_3_port, KMUX_2_port, KMUX_1_port, 
        KMUX_0_port}) );
    COMPUTE_BLOCK_test_1 U1 ( .SET_TIME(n204), .ALARM(n205), .HRS(n206), 
        .MINS(n207), .TOGGLE_SWITCH(n208), .CLK(n209), .KONNECT4(n239), 
        .KONNECT5(n240), .KONNECT13({K13_9_port, K13_8_port, K13_7_port, 
        K13_6_port, K13_5_port, K13_4_port, K13_3_port, K13_2_port, K13_1_port, 
        K13_0_port}), .KONNECT14({K14_9_port, K14_8_port, K14_7_port, 
        K14_6_port, K14_5_port, K14_4_port, K14_3_port, K14_2_port, K14_1_port, 
        K14_0_port}), .SPEAKER_OUT(n210), .test_si(n241), .test_se(n242) );
    IBUF3 U2 ( .A(test_se), .Z(n242) );
    IBUF3 U4 ( .A(test_si), .Z(n241) );
    OBUF2 U5 ( .A(n240), .Z(AM_PM_5) );
    OBUF2 U6 ( .A(n239), .Z(AM_PM_4) );
    OBUF2 U7 ( .A(n238), .Z(DISP2[0]) );
    OBUF2 U8 ( .A(n237), .Z(DISP2[1]) );
    OBUF2 U9 ( .A(n236), .Z(DISP2[2]) );
    OBUF2 U10 ( .A(n235), .Z(DISP2[3]) );
    OBUF2 U11 ( .A(n234), .Z(DISP2[4]) );
    OBUF2 U12 ( .A(n233), .Z(DISP2[5]) );
    OBUF2 U13 ( .A(n232), .Z(DISP2[6]) );
    OBUF2 U14 ( .A(n231), .Z(DISP2[7]) );
    OBUF2 U15 ( .A(n230), .Z(DISP2[8]) );
    OBUF2 U16 ( .A(n229), .Z(DISP2[9]) );
    OBUF2 U17 ( .A(n228), .Z(DISP2[10]) );
    OBUF2 U18 ( .A(n227), .Z(DISP2[11]) );
    OBUF2 U19 ( .A(n226), .Z(DISP2[12]) );
    OBUF2 U20 ( .A(n225), .Z(DISP2[13]) );
    OBUF2 U21 ( .A(n224), .Z(DISP1[0]) );
    OBUF2 U22 ( .A(n223), .Z(DISP1[1]) );
    OBUF2 U23 ( .A(n222), .Z(DISP1[2]) );
    OBUF2 U24 ( .A(n221), .Z(DISP1[3]) );
    OBUF2 U25 ( .A(n220), .Z(DISP1[4]) );
    OBUF2 U26 ( .A(n219), .Z(DISP1[5]) );
    OBUF2 U27 ( .A(n218), .Z(DISP1[6]) );
    OBUF2 U28 ( .A(n217), .Z(DISP1[7]) );
    OBUF2 U29 ( .A(n216), .Z(DISP1[8]) );
    OBUF2 U30 ( .A(n215), .Z(DISP1[9]) );
    OBUF2 U31 ( .A(n214), .Z(DISP1[10]) );
    OBUF2 U32 ( .A(n213), .Z(DISP1[11]) );
    OBUF2 U33 ( .A(n212), .Z(DISP1[12]) );
    OBUF2 U34 ( .A(n211), .Z(DISP1[13]) );
    OBUF2 U35 ( .A(n210), .Z(SPEAKER_OUT) );
    IBUF5 U36 ( .A(CLK), .Z(n209) );
    IBUF3 U37 ( .A(TOGGLE_SWITCH), .Z(n208) );
    IBUF3 U38 ( .A(MINS), .Z(n207) );
    IBUF3 U39 ( .A(HRS), .Z(n206) );
    IBUF3 U40 ( .A(ALARM), .Z(n205) );
    IBUF3 U41 ( .A(SET_TIME), .Z(n204) );
endmodule

