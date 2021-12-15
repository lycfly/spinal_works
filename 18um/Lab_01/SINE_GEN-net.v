
module ROM_8x4 ( ADDR, SINE );
input  [2:0] ADDR;
output [3:0] SINE;
    wire n16, n17, n18, n19;
    ao1d2 U10 ( .A(ADDR[1]), .B(ADDR[2]), .C(n16), .Y(SINE[0]) );
    inv1a1 U11 ( .A(ADDR[0]), .Y(n17) );
    ao1d2 U12 ( .A(ADDR[0]), .B(ADDR[2]), .C(n19), .Y(SINE[2]) );
    ao1d2 U13 ( .A(ADDR[0]), .B(ADDR[1]), .C(n18), .Y(SINE[3]) );
    inv1a3 U14 ( .A(ADDR[2]), .Y(n18) );
    ao2i3 U15 ( .A(ADDR[1]), .B(n17), .C(n18), .D(n19), .Y(SINE[1]) );
    or2b2 U16 ( .A(ADDR[1]), .B(ADDR[0]), .Y(n19) );
    xor2a2 U17 ( .A(n18), .B(ADDR[0]), .Y(n16) );
endmodule


module SINE_GEN ( CLOCK, SINE, test_si, test_so, test_se );
output [3:0] SINE;
input  CLOCK, test_si, test_se;
output test_so;
    wire \ANGLE[2] , \ROM_OUT[0] , \ANGLE[0] , \ANGLE20[3] , \ANGLE20[1] , 
        \ROM_OUT[2] , \ANGLE[3] , \ANGLE[1] , \ROM_IN[1] , \ANGLE20[2] , 
        \ROM_IN[0] , \ROM_OUT[3] , \ROM_OUT[1] , \ANGLE20[0] , \ROM_IN[2] , 
        \ANGLE20[4] , n56, n57, n73, n74, n75, n76, n77, n78;
    ROM_8x4 U_ROM ( .ADDR({\ROM_IN[2] , \ROM_IN[1] , \ROM_IN[0] }), .SINE({
        \ROM_OUT[3] , \ROM_OUT[2] , \ROM_OUT[1] , \ROM_OUT[0] }) );
    xor2a2 U11 ( .A(n57), .B(\ANGLE[3] ), .Y(\ROM_IN[0] ) );
    xor2a1 U12 ( .A(test_so), .B(\ROM_OUT[3] ), .Y(SINE[3]) );
    xor2a1 U13 ( .A(test_so), .B(\ROM_OUT[2] ), .Y(SINE[2]) );
    xor2a1 U14 ( .A(test_so), .B(\ROM_OUT[1] ), .Y(SINE[1]) );
    fdmf1a6 \ANGLE_reg[3]  ( .D0(\ANGLE20[3] ), .D1(\ANGLE[2] ), .S(test_se), 
        .CLK(CLOCK), .Q(\ANGLE[3] ) );
    fdmf1a3 \ANGLE_reg[4]  ( .D0(\ANGLE20[4] ), .D1(\ANGLE[3] ), .S(test_se), 
        .CLK(CLOCK), .Q(test_so) );
    inv1a1 U15 ( .A(\ANGLE[0] ), .Y(n56) );
    inv1a3 U16 ( .A(n56), .Y(n57) );
    fdmf1a6 \ANGLE_reg[1]  ( .D0(\ANGLE20[1] ), .D1(n57), .S(test_se), .CLK(
        CLOCK), .Q(\ANGLE[1] ) );
    fdmf1a6 \ANGLE_reg[0]  ( .D0(\ANGLE20[0] ), .D1(test_si), .S(test_se), 
        .CLK(CLOCK), .Q(\ANGLE[0] ) );
    fdmf1a3 \ANGLE_reg[2]  ( .D0(\ANGLE20[2] ), .D1(\ANGLE[1] ), .S(test_se), 
        .CLK(CLOCK), .Q(\ANGLE[2] ) );
    xor2a2 U22 ( .A(\ROM_OUT[0] ), .B(test_so), .Y(SINE[0]) );
    xor2a2 U23 ( .A(\ANGLE[3] ), .B(\ANGLE[2] ), .Y(\ROM_IN[2] ) );
    xor2a2 U24 ( .A(\ANGLE[3] ), .B(\ANGLE[1] ), .Y(\ROM_IN[1] ) );
    inv1a3 U5 ( .A(\ANGLE[3] ), .Y(n75) );
    inv1a1 U6 ( .A(\ANGLE[0] ), .Y(\ANGLE20[0] ) );
    xor2a1 U7 ( .A(test_so), .B(n73), .Y(\ANGLE20[4] ) );
    and2c6 \*cell*128/syn468  ( .A(n74), .B(n75), .Y(n73) );
    or2c6 \*cell*128/syn542  ( .A(\ANGLE[1] ), .B(\ANGLE[0] ), .Y(n76) );
    or2c6 \*cell*128/syn544  ( .A(\ANGLE[2] ), .B(n77), .Y(n74) );
    xor2a2 \*cell*128/syn549  ( .A(\ANGLE[3] ), .B(n78), .Y(\ANGLE20[3] ) );
    xor2b2 \*cell*128/syn550  ( .A(\ANGLE[2] ), .B(n76), .Y(\ANGLE20[2] ) );
    xor2a2 \*cell*128/syn551  ( .A(\ANGLE[1] ), .B(\ANGLE[0] ), .Y(
        \ANGLE20[1] ) );
    clk1b3 \*cell*128/syn567  ( .A(n76), .Y(n77) );
    clk1b3 \*cell*128/syn569  ( .A(n74), .Y(n78) );
endmodule

