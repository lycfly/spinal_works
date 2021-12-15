/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Mon Oct 25 22:30:14 2021
/////////////////////////////////////////////////////////////


module seq_mod3_detector ( clk, rst_n, data, success );
  input clk, rst_n, data;
  output success;
  wire   N23, n4, n5, n6, n7, n8;
  wire   [1:0] current_state;
  wire   [1:0] next_state;

  DFCNQD1BWP7T35P140 current_state_reg_0_ ( .D(next_state[0]), .CP(clk), .CDN(
        rst_n), .Q(current_state[0]) );
  DFCNQD1BWP7T35P140 success_reg ( .D(N23), .CP(clk), .CDN(rst_n), .Q(success)
         );
  DFCND1BWP7T35P140 current_state_reg_1_ ( .D(next_state[1]), .CP(clk), .CDN(
        rst_n), .Q(current_state[1]), .QN(n8) );
  INVD1BWP7T35P140 U9 ( .I(data), .ZN(n4) );
  INVD1BWP7T35P140 U10 ( .I(n4), .ZN(n5) );
  INVD1BWP7T35P140 U11 ( .I(n5), .ZN(n6) );
  AOI221D1BWP7T35P140 U12 ( .A1(n5), .A2(current_state[1]), .B1(n6), .B2(n8), 
        .C(current_state[0]), .ZN(next_state[0]) );
  INVD1BWP7T35P140 U13 ( .I(current_state[0]), .ZN(n7) );
  AO33D1BWP7T35P140 U14 ( .A1(current_state[0]), .A2(n6), .A3(n8), .B1(n7), 
        .B2(n5), .B3(current_state[1]), .Z(next_state[1]) );
  AOI221D1BWP7T35P140 U15 ( .A1(n5), .A2(n7), .B1(n6), .B2(current_state[0]), 
        .C(current_state[1]), .ZN(N23) );
endmodule

