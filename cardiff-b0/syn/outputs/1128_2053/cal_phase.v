/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : L-2016.03-SP1
// Date      : Sun Nov 28 20:54:05 2021
/////////////////////////////////////////////////////////////


module FloorAndWrap ( din, dout );
  input [11:0] din;
  output [7:0] dout;

  assign dout[7] = din[10];
  assign dout[6] = din[9];
  assign dout[5] = din[8];
  assign dout[4] = din[7];
  assign dout[3] = din[6];
  assign dout[2] = din[5];
  assign dout[1] = din[4];
  assign dout[0] = din[3];

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
  wire   N0, N1, n_zz_23_9, n_zz_24_9, n_zz_25_9, n_zz_26_9, n_zz_27_10,
         n_zz_28_10, n_zz_30_11, in_vld_dly1, N2, N3, N4, N5, N6;
  wire   [7:0] n_zz_23;
  wire   [7:0] n_zz_24;
  wire   [7:0] n_zz_25;
  wire   [7:0] n_zz_26;
  wire   [8:0] n_zz_27;
  wire   [8:0] n_zz_28;
  wire   [9:0] n_zz_30;
  wire   [7:0] FloorWrapVn_0_dout;
  wire   [7:0] FloorWrapVn_1_dout;
  wire   [7:0] FloorWrapVn_2_dout;
  wire   [7:0] FloorWrapVn_3_dout;
  wire   [7:0] FloorWrapVn_4_dout;
  wire   [7:0] FloorWrapVn_5_dout;
  wire   [7:0] FloorWrapVn_6_dout;
  wire   [7:0] FloorWrapVn_7_dout;
  wire   [10:0] SumXin;
  wire   [11:0] VinMinusMean_0;
  wire   [11:0] VinMinusMean_1;
  wire   [11:0] VinMinusMean_2;
  wire   [11:0] VinMinusMean_3;
  wire   [11:0] VinMinusMean_4;
  wire   [11:0] VinMinusMean_5;
  wire   [11:0] VinMinusMean_6;
  wire   [11:0] VinMinusMean_7;

  FloorAndWrap FloorWrapVn_0 ( .din(VinMinusMean_0), .dout(FloorWrapVn_0_dout)
         );
  FloorAndWrap FloorWrapVn_1 ( .din(VinMinusMean_1), .dout(FloorWrapVn_1_dout)
         );
  FloorAndWrap FloorWrapVn_2 ( .din(VinMinusMean_2), .dout(FloorWrapVn_2_dout)
         );
  FloorAndWrap FloorWrapVn_3 ( .din(VinMinusMean_3), .dout(FloorWrapVn_3_dout)
         );
  FloorAndWrap FloorWrapVn_4 ( .din(VinMinusMean_4), .dout(FloorWrapVn_4_dout)
         );
  FloorAndWrap FloorWrapVn_5 ( .din(VinMinusMean_5), .dout(FloorWrapVn_5_dout)
         );
  FloorAndWrap FloorWrapVn_6 ( .din(VinMinusMean_6), .dout(FloorWrapVn_6_dout)
         );
  FloorAndWrap FloorWrapVn_7 ( .din(VinMinusMean_7), .dout(FloorWrapVn_7_dout)
         );
  \**SEQGEN**  VnReg_4_reg_7_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_4_dout[7]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_4[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_4_reg_6_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_4_dout[6]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_4[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_4_reg_5_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_4_dout[5]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_4[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_4_reg_4_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_4_dout[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_4[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_4_reg_3_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_4_dout[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_4[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_4_reg_2_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_4_dout[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_4[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_4_reg_1_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_4_dout[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_4[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_4_reg_0_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_4_dout[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_4[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_6_reg_7_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_6_dout[7]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_6[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_6_reg_6_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_6_dout[6]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_6[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_6_reg_5_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_6_dout[5]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_6[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_6_reg_4_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_6_dout[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_6[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_6_reg_3_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_6_dout[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_6[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_6_reg_2_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_6_dout[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_6[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_6_reg_1_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_6_dout[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_6[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_6_reg_0_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_6_dout[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_6[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_5_reg_7_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_5_dout[7]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_5[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_5_reg_6_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_5_dout[6]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_5[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_5_reg_5_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_5_dout[5]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_5[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_5_reg_4_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_5_dout[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_5[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_5_reg_3_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_5_dout[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_5[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_5_reg_2_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_5_dout[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_5[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_5_reg_1_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_5_dout[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_5[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_5_reg_0_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_5_dout[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_5[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_7_reg_7_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_7_dout[7]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_7[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_7_reg_6_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_7_dout[6]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_7[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_7_reg_5_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_7_dout[5]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_7[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_7_reg_4_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_7_dout[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_7[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_7_reg_3_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_7_dout[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_7[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_7_reg_2_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_7_dout[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_7[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_7_reg_1_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_7_dout[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_7[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_7_reg_0_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_7_dout[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_7[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  in_vld_dly1_reg ( .clear(N2), .preset(1'b0), .next_state(N4), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(in_vld_dly1), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  in_vld_dly2_reg ( .clear(N2), .preset(1'b0), .next_state(N5), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_vld), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  SumXinReg_reg_10_ ( .clear(N2), .preset(1'b0), .next_state(
        SumXin[10]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_30_11), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N6) );
  \**SEQGEN**  SumXinReg_reg_9_ ( .clear(N2), .preset(1'b0), .next_state(
        SumXin[9]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_30[9]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N6) );
  \**SEQGEN**  SumXinReg_reg_8_ ( .clear(N2), .preset(1'b0), .next_state(
        SumXin[8]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_30[8]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N6) );
  \**SEQGEN**  SumXinReg_reg_7_ ( .clear(N2), .preset(1'b0), .next_state(
        SumXin[7]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_30[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N6) );
  \**SEQGEN**  SumXinReg_reg_6_ ( .clear(N2), .preset(1'b0), .next_state(
        SumXin[6]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_30[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N6) );
  \**SEQGEN**  SumXinReg_reg_5_ ( .clear(N2), .preset(1'b0), .next_state(
        SumXin[5]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_30[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N6) );
  \**SEQGEN**  SumXinReg_reg_4_ ( .clear(N2), .preset(1'b0), .next_state(
        SumXin[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_30[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N6) );
  \**SEQGEN**  SumXinReg_reg_3_ ( .clear(N2), .preset(1'b0), .next_state(
        SumXin[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_30[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N6) );
  \**SEQGEN**  SumXinReg_reg_2_ ( .clear(N2), .preset(1'b0), .next_state(
        SumXin[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_30[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N6) );
  \**SEQGEN**  SumXinReg_reg_1_ ( .clear(N2), .preset(1'b0), .next_state(
        SumXin[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_30[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N6) );
  \**SEQGEN**  SumXinReg_reg_0_ ( .clear(N2), .preset(1'b0), .next_state(
        SumXin[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_30[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N6) );
  \**SEQGEN**  VnReg_0_reg_7_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_0_dout[7]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_0[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_0_reg_6_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_0_dout[6]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_0[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_0_reg_5_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_0_dout[5]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_0[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_0_reg_4_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_0_dout[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_0[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_0_reg_3_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_0_dout[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_0[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_0_reg_2_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_0_dout[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_0[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_0_reg_1_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_0_dout[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_0[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_0_reg_0_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_0_dout[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_0[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_1_reg_7_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_1_dout[7]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_1[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_1_reg_6_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_1_dout[6]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_1[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_1_reg_5_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_1_dout[5]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_1[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_1_reg_4_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_1_dout[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_1[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_1_reg_3_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_1_dout[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_1[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_1_reg_2_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_1_dout[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_1[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_1_reg_1_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_1_dout[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_1[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_1_reg_0_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_1_dout[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_1[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_2_reg_7_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_2_dout[7]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_2[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_2_reg_6_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_2_dout[6]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_2[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_2_reg_5_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_2_dout[5]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_2[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_2_reg_4_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_2_dout[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_2[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_2_reg_3_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_2_dout[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_2[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_2_reg_2_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_2_dout[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_2[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_2_reg_1_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_2_dout[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_2[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_2_reg_0_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_2_dout[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_2[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_3_reg_7_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_3_dout[7]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_3[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_3_reg_6_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_3_dout[6]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_3[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_3_reg_5_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_3_dout[5]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_3[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_3_reg_4_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_3_dout[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_3[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_3_reg_3_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_3_dout[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_3[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_3_reg_2_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_3_dout[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_3[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_3_reg_1_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_3_dout[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_3[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  \**SEQGEN**  VnReg_3_reg_0_ ( .clear(N2), .preset(1'b0), .next_state(
        FloorWrapVn_3_dout[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(vn_3[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(in_vld_dly1) );
  ADD_TC_OP add_641 ( .A(v_in_0), .B(v_in_1), .Z({n_zz_23_9, n_zz_23}) );
  ADD_TC_OP add_642 ( .A(v_in_2), .B(v_in_3), .Z({n_zz_24_9, n_zz_24}) );
  ADD_TC_OP add_643 ( .A(v_in_4), .B(v_in_5), .Z({n_zz_25_9, n_zz_25}) );
  ADD_TC_OP add_644 ( .A(v_in_6), .B(v_in_7), .Z({n_zz_26_9, n_zz_26}) );
  ADD_TC_OP add_645 ( .A({n_zz_23_9, n_zz_23}), .B({n_zz_24_9, n_zz_24}), .Z({
        n_zz_27_10, n_zz_27}) );
  ADD_TC_OP add_646 ( .A({n_zz_25_9, n_zz_25}), .B({n_zz_26_9, n_zz_26}), .Z({
        n_zz_28_10, n_zz_28}) );
  SUB_TC_OP sub_656 ( .A({v_in_0, 1'b0, 1'b0, 1'b0}), .B({n_zz_30_11, n_zz_30}), .Z(VinMinusMean_0) );
  SUB_TC_OP sub_657 ( .A({v_in_1, 1'b0, 1'b0, 1'b0}), .B({n_zz_30_11, n_zz_30}), .Z(VinMinusMean_1) );
  SUB_TC_OP sub_658 ( .A({v_in_2, 1'b0, 1'b0, 1'b0}), .B({n_zz_30_11, n_zz_30}), .Z(VinMinusMean_2) );
  SUB_TC_OP sub_659 ( .A({v_in_3, 1'b0, 1'b0, 1'b0}), .B({n_zz_30_11, n_zz_30}), .Z(VinMinusMean_3) );
  SUB_TC_OP sub_660 ( .A({v_in_4, 1'b0, 1'b0, 1'b0}), .B({n_zz_30_11, n_zz_30}), .Z(VinMinusMean_4) );
  SUB_TC_OP sub_661 ( .A({v_in_5, 1'b0, 1'b0, 1'b0}), .B({n_zz_30_11, n_zz_30}), .Z(VinMinusMean_5) );
  SUB_TC_OP sub_662 ( .A({v_in_6, 1'b0, 1'b0, 1'b0}), .B({n_zz_30_11, n_zz_30}), .Z(VinMinusMean_6) );
  SUB_TC_OP sub_663 ( .A({v_in_7, 1'b0, 1'b0, 1'b0}), .B({n_zz_30_11, n_zz_30}), .Z(VinMinusMean_7) );
  ADD_TC_OP add_647 ( .A({n_zz_27_10, n_zz_27}), .B({n_zz_28_10, n_zz_28}), 
        .Z(SumXin) );
  SELECT_OP C332 ( .DATA1(vin_vld), .DATA2(1'b0), .CONTROL1(N0), .CONTROL2(N1), 
        .Z(N4) );
  GTECH_BUF B_0 ( .A(en), .Z(N0) );
  GTECH_BUF B_1 ( .A(N3), .Z(N1) );
  SELECT_OP C333 ( .DATA1(in_vld_dly1), .DATA2(1'b0), .CONTROL1(N0), 
        .CONTROL2(N1), .Z(N5) );
  GTECH_NOT I_0 ( .A(resetn), .Z(N2) );
  GTECH_NOT I_1 ( .A(en), .Z(N3) );
  GTECH_AND2 C340 ( .A(en), .B(vin_vld), .Z(N6) );
endmodule


module s_table ( index, din, s1, s2 );
  input [2:0] index;
  input [7:0] din;
  output [18:0] s1;
  output [18:0] s2;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, n_zz_13_17, n_zz_16_16, n_zz_20_18,
         n_zz_19_18, n_zz_29_17, n_zz_28_17, n_zz_33_19, n_zz_39_19, N8, N9,
         N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23,
         N24, N25, N26, N27, N28, N29, N30;
  wire   [14:0] n_zz_13;
  wire   [11:0] n_zz_16;
  wire   [15:0] n_zz_20;
  wire   [16:0] n_zz_19;
  wire   [16:0] n_zz_23;
  wire   [14:0] n_zz_29;
  wire   [15:0] n_zz_28;
  wire   [17:0] n_zz_33;
  wire   [18:0] n_zz_32;
  wire   [17:0] n_zz_36;
  wire   [15:0] n_zz_37;
  wire   [17:0] n_zz_39;
  wire   [18:0] n_zz_38;

  GTECH_AND2 C7 ( .A(N8), .B(N9), .Z(N11) );
  GTECH_AND2 C8 ( .A(N11), .B(N10), .Z(N12) );
  GTECH_OR2 C10 ( .A(index[2]), .B(index[1]), .Z(N13) );
  GTECH_OR2 C11 ( .A(N13), .B(N10), .Z(N14) );
  GTECH_OR2 C14 ( .A(index[2]), .B(N9), .Z(N16) );
  GTECH_OR2 C15 ( .A(N16), .B(index[0]), .Z(N17) );
  GTECH_OR2 C20 ( .A(N16), .B(N10), .Z(N19) );
  GTECH_OR2 C23 ( .A(N8), .B(index[1]), .Z(N21) );
  GTECH_OR2 C24 ( .A(N21), .B(index[0]), .Z(N22) );
  GTECH_OR2 C29 ( .A(N21), .B(N10), .Z(N24) );
  GTECH_OR2 C33 ( .A(N8), .B(N9), .Z(N26) );
  GTECH_OR2 C34 ( .A(N26), .B(index[0]), .Z(N27) );
  GTECH_AND2 C36 ( .A(index[2]), .B(index[1]), .Z(N29) );
  GTECH_AND2 C37 ( .A(N29), .B(index[0]), .Z(N30) );
  SUB_UNS_OP sub_843 ( .A(1'b0), .B({din, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .Z(n_zz_37) );
  ADD_TC_OP add_893 ( .A({din, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B(
        {din, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Z({n_zz_13_17, n_zz_13})
         );
  ADD_TC_OP add_822 ( .A({din, 1'b0, 1'b0, 1'b0}), .B({din, 1'b0, 1'b0, 1'b0, 
        1'b0}), .Z({n_zz_16_16, n_zz_16}) );
  SUB_TC_OP sub_829 ( .A({din, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({din, 1'b0}), .Z(n_zz_23) );
  ADD_TC_OP add_898 ( .A({din, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B(
        {din, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Z({n_zz_29_17, n_zz_29}) );
  ADD_TC_OP add_894 ( .A({n_zz_13_17, n_zz_13}), .B({din, 1'b0, 1'b0, 1'b0}), 
        .Z({n_zz_20_18, n_zz_20}) );
  SUB_UNS_OP sub_900 ( .A(1'b0), .B({n_zz_16_16, n_zz_16_16, n_zz_16_16, 
        n_zz_16_16, n_zz_16_16, n_zz_16_16, n_zz_16_16, n_zz_16}), .Z({
        n_zz_33_19, n_zz_33}) );
  ADD_TC_OP add_834 ( .A({n_zz_29_17, n_zz_29}), .B({din, 1'b0}), .Z({
        n_zz_28_17, n_zz_28}) );
  SUB_TC_OP sub_825 ( .A({n_zz_20_18, n_zz_20}), .B({din, 1'b0}), .Z({
        n_zz_19_18, n_zz_19}) );
  SUB_UNS_OP sub_842 ( .A(1'b0), .B({n_zz_20_18, n_zz_20_18, n_zz_20}), .Z(
        n_zz_36) );
  SUB_TC_OP sub_838 ( .A({n_zz_33_19, n_zz_33}), .B({din, 1'b0}), .Z(n_zz_32)
         );
  SUB_UNS_OP sub_904 ( .A(1'b0), .B({n_zz_28_17, n_zz_28_17, n_zz_28_17, 
        n_zz_28}), .Z({n_zz_39_19, n_zz_39}) );
  SUB_TC_OP sub_844 ( .A({n_zz_39_19, n_zz_39}), .B({din, 1'b0}), .Z(n_zz_38)
         );
  SELECT_OP C143 ( .DATA1({n_zz_16_16, n_zz_16_16, n_zz_16_16, n_zz_16_16, 
        n_zz_16_16, n_zz_16_16, n_zz_16_16, n_zz_16}), .DATA2({n_zz_19_18, 
        n_zz_19_18, n_zz_19}), .DATA3({n_zz_23[16], n_zz_23[16], n_zz_23}), 
        .DATA4({n_zz_28_17, n_zz_28_17, n_zz_28_17, n_zz_28}), .DATA5(n_zz_32), 
        .DATA6({n_zz_36[17], n_zz_36}), .DATA7({n_zz_37[15], n_zz_37[15], 
        n_zz_37[15], n_zz_37}), .DATA8(n_zz_38), .CONTROL1(N0), .CONTROL2(N1), 
        .CONTROL3(N2), .CONTROL4(N3), .CONTROL5(N4), .CONTROL6(N5), .CONTROL7(
        N6), .CONTROL8(N7), .Z(s1) );
  GTECH_BUF B_0 ( .A(N12), .Z(N0) );
  GTECH_BUF B_1 ( .A(N15), .Z(N1) );
  GTECH_BUF B_2 ( .A(N18), .Z(N2) );
  GTECH_BUF B_3 ( .A(N20), .Z(N3) );
  GTECH_BUF B_4 ( .A(N23), .Z(N4) );
  GTECH_BUF B_5 ( .A(N25), .Z(N5) );
  GTECH_BUF B_6 ( .A(N28), .Z(N6) );
  GTECH_BUF B_7 ( .A(N30), .Z(N7) );
  SELECT_OP C144 ( .DATA1({n_zz_23[16], n_zz_23[16], n_zz_23}), .DATA2({
        n_zz_28_17, n_zz_28_17, n_zz_28_17, n_zz_28}), .DATA3(n_zz_32), 
        .DATA4({n_zz_36[17], n_zz_36}), .DATA5({n_zz_37[15], n_zz_37[15], 
        n_zz_37[15], n_zz_37}), .DATA6(n_zz_38), .DATA7({n_zz_16_16, 
        n_zz_16_16, n_zz_16_16, n_zz_16_16, n_zz_16_16, n_zz_16_16, n_zz_16_16, 
        n_zz_16}), .DATA8({n_zz_19_18, n_zz_19_18, n_zz_19}), .CONTROL1(N0), 
        .CONTROL2(N1), .CONTROL3(N2), .CONTROL4(N3), .CONTROL5(N4), .CONTROL6(
        N5), .CONTROL7(N6), .CONTROL8(N7), .Z(s2) );
  GTECH_NOT I_0 ( .A(index[2]), .Z(N8) );
  GTECH_NOT I_1 ( .A(index[1]), .Z(N9) );
  GTECH_NOT I_2 ( .A(index[0]), .Z(N10) );
  GTECH_NOT I_3 ( .A(N14), .Z(N15) );
  GTECH_NOT I_4 ( .A(N17), .Z(N18) );
  GTECH_NOT I_5 ( .A(N19), .Z(N20) );
  GTECH_NOT I_6 ( .A(N22), .Z(N23) );
  GTECH_NOT I_7 ( .A(N24), .Z(N25) );
  GTECH_NOT I_8 ( .A(N27), .Z(N28) );
endmodule


module FloorAndWrap_8 ( din, dout );
  input [16:0] din;
  output [15:0] dout;

  assign dout[15] = din[15];
  assign dout[14] = din[14];
  assign dout[13] = din[13];
  assign dout[12] = din[12];
  assign dout[11] = din[11];
  assign dout[10] = din[10];
  assign dout[9] = din[9];
  assign dout[8] = din[8];
  assign dout[7] = din[7];
  assign dout[6] = din[6];
  assign dout[5] = din[5];
  assign dout[4] = din[4];
  assign dout[3] = din[3];
  assign dout[2] = din[2];
  assign dout[1] = din[1];
  assign dout[0] = din[0];

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
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, mac_en, N47, N48, N49, N50, N51, N52, N53, N54, N55,
         N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69,
         N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83,
         N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97,
         N98, N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, N109,
         N110, N111, N112, N113, N114, N115, N116, N117, N118, N119, N120,
         N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131,
         N132, N133, N134, N135, N136, N137, N138, N139, N140, N141, N142,
         N143, N144, N145, N146, N147, N148, N149, net978, net979;
  wire   [1:0] psum1;
  wire   [16:0] n_zz_5;
  wire   [1:0] psum2;
  wire   [16:0] n_zz_6;
  wire   [2:0] mac_cnt;
  wire   [18:0] table_1_s1;
  wire   [18:0] table_1_s2;
  wire   [7:0] n_zz_4;

  s_table table_1 ( .index(mac_cnt), .din(n_zz_4), .s1(table_1_s1), .s2(
        table_1_s2) );
  FloorAndWrap_8 FloorWrapPsum1 ( .din(n_zz_5), .dout(psum_out1) );
  FloorAndWrap_8 FloorWrapPsum2 ( .din(n_zz_6), .dout(psum_out2) );
  GTECH_AND2 C7 ( .A(N13), .B(N14), .Z(N16) );
  GTECH_AND2 C8 ( .A(N16), .B(N15), .Z(N17) );
  GTECH_OR2 C10 ( .A(mac_cnt[2]), .B(mac_cnt[1]), .Z(N19) );
  GTECH_OR2 C11 ( .A(N19), .B(N18), .Z(N20) );
  GTECH_OR2 C14 ( .A(mac_cnt[2]), .B(N22), .Z(N23) );
  GTECH_OR2 C15 ( .A(N23), .B(mac_cnt[0]), .Z(N24) );
  GTECH_OR2 C19 ( .A(mac_cnt[2]), .B(N26), .Z(N28) );
  GTECH_OR2 C20 ( .A(N28), .B(N27), .Z(N29) );
  GTECH_OR2 C23 ( .A(N31), .B(mac_cnt[1]), .Z(N32) );
  GTECH_OR2 C24 ( .A(N32), .B(mac_cnt[0]), .Z(N33) );
  GTECH_OR2 C28 ( .A(N35), .B(mac_cnt[1]), .Z(N37) );
  GTECH_OR2 C29 ( .A(N37), .B(N36), .Z(N38) );
  GTECH_OR2 C33 ( .A(N40), .B(N41), .Z(N42) );
  GTECH_OR2 C34 ( .A(N42), .B(mac_cnt[0]), .Z(N43) );
  GTECH_AND2 C36 ( .A(mac_cnt[2]), .B(mac_cnt[1]), .Z(N45) );
  GTECH_AND2 C37 ( .A(N45), .B(mac_cnt[0]), .Z(N46) );
  \**SEQGEN**  mac_en_reg ( .clear(N47), .preset(1'b0), .next_state(N54), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(mac_en), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N53) );
  \**SEQGEN**  mac_cnt_reg_2_ ( .clear(N47), .preset(1'b0), .next_state(N101), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(mac_cnt[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mac_cnt_reg_1_ ( .clear(N47), .preset(1'b0), .next_state(N100), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(mac_cnt[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mac_cnt_reg_0_ ( .clear(N47), .preset(1'b0), .next_state(N99), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(mac_cnt[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  psum2_reg_18_ ( .clear(N47), .preset(1'b0), .next_state(N98), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_6[16]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum2_reg_17_ ( .clear(N47), .preset(1'b0), .next_state(N97), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_6[15]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum2_reg_16_ ( .clear(N47), .preset(1'b0), .next_state(N96), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_6[14]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum2_reg_15_ ( .clear(N47), .preset(1'b0), .next_state(N95), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_6[13]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum2_reg_14_ ( .clear(N47), .preset(1'b0), .next_state(N94), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_6[12]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum2_reg_13_ ( .clear(N47), .preset(1'b0), .next_state(N93), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_6[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum2_reg_12_ ( .clear(N47), .preset(1'b0), .next_state(N92), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_6[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum2_reg_11_ ( .clear(N47), .preset(1'b0), .next_state(N91), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_6[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum2_reg_10_ ( .clear(N47), .preset(1'b0), .next_state(N90), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_6[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum2_reg_9_ ( .clear(N47), .preset(1'b0), .next_state(N89), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_6[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum2_reg_8_ ( .clear(N47), .preset(1'b0), .next_state(N88), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_6[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum2_reg_7_ ( .clear(N47), .preset(1'b0), .next_state(N87), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_6[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum2_reg_6_ ( .clear(N47), .preset(1'b0), .next_state(N86), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_6[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum2_reg_5_ ( .clear(N47), .preset(1'b0), .next_state(N85), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_6[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum2_reg_4_ ( .clear(N47), .preset(1'b0), .next_state(N84), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_6[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum2_reg_3_ ( .clear(N47), .preset(1'b0), .next_state(N83), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_6[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum2_reg_2_ ( .clear(N47), .preset(1'b0), .next_state(N82), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_6[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum2_reg_1_ ( .clear(N47), .preset(1'b0), .next_state(N81), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(psum2[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum2_reg_0_ ( .clear(N47), .preset(1'b0), .next_state(N80), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(psum2[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum1_reg_18_ ( .clear(N47), .preset(1'b0), .next_state(N79), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_5[16]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum1_reg_17_ ( .clear(N47), .preset(1'b0), .next_state(N78), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_5[15]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum1_reg_16_ ( .clear(N47), .preset(1'b0), .next_state(N77), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_5[14]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum1_reg_15_ ( .clear(N47), .preset(1'b0), .next_state(N76), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_5[13]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum1_reg_14_ ( .clear(N47), .preset(1'b0), .next_state(N75), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_5[12]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum1_reg_13_ ( .clear(N47), .preset(1'b0), .next_state(N74), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_5[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum1_reg_12_ ( .clear(N47), .preset(1'b0), .next_state(N73), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_5[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum1_reg_11_ ( .clear(N47), .preset(1'b0), .next_state(N72), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_5[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum1_reg_10_ ( .clear(N47), .preset(1'b0), .next_state(N71), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_5[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum1_reg_9_ ( .clear(N47), .preset(1'b0), .next_state(N70), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_5[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum1_reg_8_ ( .clear(N47), .preset(1'b0), .next_state(N69), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_5[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum1_reg_7_ ( .clear(N47), .preset(1'b0), .next_state(N68), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_5[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum1_reg_6_ ( .clear(N47), .preset(1'b0), .next_state(N67), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_5[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum1_reg_5_ ( .clear(N47), .preset(1'b0), .next_state(N66), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_5[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum1_reg_4_ ( .clear(N47), .preset(1'b0), .next_state(N65), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_5[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum1_reg_3_ ( .clear(N47), .preset(1'b0), .next_state(N64), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_5[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum1_reg_2_ ( .clear(N47), .preset(1'b0), .next_state(N63), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(n_zz_5[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum1_reg_1_ ( .clear(N47), .preset(1'b0), .next_state(N62), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(psum1[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  psum1_reg_0_ ( .clear(N47), .preset(1'b0), .next_state(N61), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(psum1[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(mac_en) );
  \**SEQGEN**  finish_reg ( .clear(1'b0), .preset(1'b0), .next_state(N106), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(psum_vld), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  GTECH_OR2 C314 ( .A(mac_cnt[1]), .B(mac_cnt[2]), .Z(N107) );
  GTECH_OR2 C315 ( .A(mac_cnt[0]), .B(N107), .Z(N108) );
  GTECH_NOT I_0 ( .A(N108), .Z(N109) );
  GTECH_AND2 C317 ( .A(mac_cnt[1]), .B(mac_cnt[2]), .Z(N110) );
  GTECH_AND2 C318 ( .A(mac_cnt[0]), .B(N110), .Z(N111) );
  ADD_UNS_OP add_442 ( .A(mac_cnt), .B(1'b1), .Z({N59, N58, N57}) );
  ADD_TC_OP add_447_aco ( .A({N130, N129, N128, N127, N126, N125, N124, N123, 
        N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112}), 
        .B(table_1_s1), .Z({N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, 
        N69, N68, N67, N66, N65, N64, N63, N62, N61}) );
  ADD_TC_OP add_448_aco ( .A({N149, N148, N147, N146, N145, N144, N143, N142, 
        N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131}), 
        .B(table_1_s2), .Z({N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, 
        N88, N87, N86, N85, N84, N83, N82, N81, N80}) );
  SELECT_OP C320 ( .DATA1(vn_in_0), .DATA2(vn_in_1), .DATA3(vn_in_2), .DATA4(
        vn_in_3), .DATA5(vn_in_4), .DATA6(vn_in_5), .DATA7(vn_in_6), .DATA8(
        vn_in_7), .CONTROL1(N0), .CONTROL2(N1), .CONTROL3(N2), .CONTROL4(N3), 
        .CONTROL5(N4), .CONTROL6(N5), .CONTROL7(N6), .CONTROL8(N7), .Z(n_zz_4)
         );
  GTECH_BUF B_0 ( .A(N17), .Z(N0) );
  GTECH_BUF B_1 ( .A(N21), .Z(N1) );
  GTECH_BUF B_2 ( .A(N25), .Z(N2) );
  GTECH_BUF B_3 ( .A(N30), .Z(N3) );
  GTECH_BUF B_4 ( .A(N34), .Z(N4) );
  GTECH_BUF B_5 ( .A(N39), .Z(N5) );
  GTECH_BUF B_6 ( .A(N44), .Z(N6) );
  GTECH_BUF B_7 ( .A(N46), .Z(N7) );
  SELECT_OP C321 ( .DATA1(1'b1), .DATA2(1'b0), .CONTROL1(N8), .CONTROL2(N103), 
        .Z(N51) );
  GTECH_BUF B_8 ( .A(vn_vld), .Z(N8) );
  SELECT_OP C322 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b0), .CONTROL1(N8), 
        .CONTROL2(N103), .CONTROL3(N50), .Z(N52) );
  SELECT_OP C323 ( .DATA1(N52), .DATA2(1'b1), .CONTROL1(N9), .CONTROL2(N10), 
        .Z(N53) );
  GTECH_BUF B_9 ( .A(en), .Z(N9) );
  GTECH_BUF B_10 ( .A(N104), .Z(N10) );
  SELECT_OP C324 ( .DATA1(N51), .DATA2(1'b0), .CONTROL1(N9), .CONTROL2(N10), 
        .Z(N54) );
  SELECT_OP C327 ( .DATA1({N59, N58, N57}), .DATA2({1'b0, 1'b0, 1'b0}), 
        .CONTROL1(N11), .CONTROL2(N12), .Z({N101, N100, N99}) );
  GTECH_BUF B_11 ( .A(mac_en), .Z(N11) );
  GTECH_BUF B_12 ( .A(N55), .Z(N12) );
  SELECT_OP C328 ( .DATA1(N105), .DATA2(1'b0), .CONTROL1(N9), .CONTROL2(N10), 
        .Z(N106) );
  MULT_UNS_OP mult_add_447_aco ( .A({n_zz_5, psum1}), .B(N108), .Z({N130, N129, 
        N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, 
        N116, N115, N114, N113, N112}) );
  MULT_UNS_OP mult_add_448_aco ( .A({n_zz_6, psum2}), .B(N108), .Z({N149, N148, 
        N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, 
        N135, N134, N133, N132, N131}) );
  GTECH_NOT I_1 ( .A(mac_cnt[2]), .Z(N13) );
  GTECH_NOT I_2 ( .A(mac_cnt[1]), .Z(N14) );
  GTECH_NOT I_3 ( .A(mac_cnt[0]), .Z(N15) );
  GTECH_NOT I_4 ( .A(mac_cnt[0]), .Z(N18) );
  GTECH_NOT I_5 ( .A(N20), .Z(N21) );
  GTECH_NOT I_6 ( .A(mac_cnt[1]), .Z(N22) );
  GTECH_NOT I_7 ( .A(N24), .Z(N25) );
  GTECH_NOT I_8 ( .A(mac_cnt[1]), .Z(N26) );
  GTECH_NOT I_9 ( .A(mac_cnt[0]), .Z(N27) );
  GTECH_NOT I_10 ( .A(N29), .Z(N30) );
  GTECH_NOT I_11 ( .A(mac_cnt[2]), .Z(N31) );
  GTECH_NOT I_12 ( .A(N33), .Z(N34) );
  GTECH_NOT I_13 ( .A(mac_cnt[2]), .Z(N35) );
  GTECH_NOT I_14 ( .A(mac_cnt[0]), .Z(N36) );
  GTECH_NOT I_15 ( .A(N38), .Z(N39) );
  GTECH_NOT I_16 ( .A(mac_cnt[2]), .Z(N40) );
  GTECH_NOT I_17 ( .A(mac_cnt[1]), .Z(N41) );
  GTECH_NOT I_18 ( .A(N43), .Z(N44) );
  GTECH_NOT I_19 ( .A(resetn), .Z(N47) );
  GTECH_BUF B_13 ( .A(resetn), .Z(N48) );
  GTECH_OR2 C365 ( .A(N111), .B(vn_vld), .Z(N49) );
  GTECH_NOT I_20 ( .A(N49), .Z(N50) );
  GTECH_NOT I_21 ( .A(mac_en), .Z(N55) );
  GTECH_AND2 C370 ( .A(N48), .B(mac_en), .Z(N56) );
  GTECH_AND2 C374 ( .A(N56), .B(N108), .Z(N60) );
  GTECH_NOT I_22 ( .A(vn_vld), .Z(N102) );
  GTECH_AND2 C377 ( .A(N111), .B(N102), .Z(N103) );
  GTECH_NOT I_23 ( .A(en), .Z(N104) );
  GTECH_AND2 C381 ( .A(N111), .B(mac_en), .Z(N105) );
  GTECH_OR2 C382 ( .A(N60), .B(N109), .Z(net978) );
  GTECH_OR2 C383 ( .A(N60), .B(N109), .Z(net979) );
endmodule


module cordic_int ( en, vld, y, x, res, res_vld, clk, resetn );
  input [15:0] y;
  input [15:0] x;
  output [7:0] res;
  input en, vld, clk, resetn;
  output res_vld;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, cal_en, N11, nozero_flg,
         N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53,
         N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67,
         N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81,
         N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95,
         N96, N97, N98, N99, N100, N101, N102, N103, N104, N105, N106, N107,
         N108, N109, N110, N111, N112, N113, N114, N115, N116, N117, N118,
         N119, N120, N121, N122, N123, N124, N125, N126, N127, N128, N129,
         N130, N131, N132, N133, N134, N135, N136, N137, N138, N139, N140,
         N141, N142, N143, N144, N145, N146, N147, N148, N149, N150, N151,
         N152, N153, N154, N155, N156, N157, N158, N159, N160, N161, N162,
         N163, N164, N165, N166, N167, N168, N169, N170, N171, N172, N173,
         N174, N175, N176, N177, N178, N179, N180, N181, N182, N183, N184,
         N185, N186, N187, N188, N189, N190, N191, N192, N193, N194, N195,
         N196, N197, N198, N199, N200, N201, N202, N203, N204, N205, N206,
         N207, N208, N209, N210, N211, N212, N213, N214, N215, N216, N217,
         N218, N219, N220, N221, N222, N223, N224, N225, N226, N227, N228,
         N229, N230, N231, N232, N233, N234, N235, N236, N237, N238, N239,
         N240, N241, N242, N243, N244, N245, N246, N247, N248, N249, N250,
         N251, N252, N253, N254, N255, N256, N257, N258, N259, N260, N261,
         N262, N263, N264, N265, N266, N267, N268, N269, N270, N271, N272,
         N273, N274, N275, N276, N277, N278, N279, N280, N281, N282, N283,
         N284, N285, N286, N287, N288, N289, N290, N291, N292, N293, N294,
         N295, N296, N297, N298, N299, N300, N301, N302, N303, N304, N305,
         N306, N307, N308, N309, N310, N311, N312, N313, N314, N315, N316,
         N317, N318, N319, N320, N321, N322, N323, N324, N325, N326, N327,
         N328, N329, N330, net1282, net1283, net1284, net1285;
  wire   [2:0] cal_cnt;
  wire   [2:0] n_zz_5;
  wire   [2:0] n_zz_6;
  wire   [2:0] n_zz_8;
  wire   [15:0] n_zz_9;
  wire   [21:0] x_ins;
  wire   [21:0] y_ins;
  wire   [21:0] xn;
  wire   [21:0] xn_rightshift;
  wire   [21:0] yn;
  wire   [21:0] yn_rightshift;
  wire   [7:0] res_bias;

  ASHR_TC_UNS_OP sra_254 ( .A(xn), .SH(n_zz_5), .Z(xn_rightshift) );
  ASHR_TC_UNS_OP sra_255 ( .A(yn), .SH(n_zz_6), .Z(yn_rightshift) );
  ASH_UNS_UNS_OP sla_256 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), .SH(n_zz_8), .Z(res_bias) );
  LT_TC_OP lt_288 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B(x), .Z(N26) );
  LT_TC_OP lt_293 ( .A(y), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Z(N27) );
  LT_TC_OP lt_306 ( .A(yn), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .Z(N80) );
  \**SEQGEN**  xn_reg_21_ ( .clear(N11), .preset(1'b0), .next_state(N292), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[21]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  xn_reg_20_ ( .clear(N11), .preset(1'b0), .next_state(N291), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[20]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  xn_reg_19_ ( .clear(N11), .preset(1'b0), .next_state(N290), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[19]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  xn_reg_18_ ( .clear(N11), .preset(1'b0), .next_state(N289), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[18]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  xn_reg_17_ ( .clear(N11), .preset(1'b0), .next_state(N288), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[17]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  xn_reg_16_ ( .clear(N11), .preset(1'b0), .next_state(N287), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[16]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  xn_reg_15_ ( .clear(N11), .preset(1'b0), .next_state(N286), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[15]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  xn_reg_14_ ( .clear(N11), .preset(1'b0), .next_state(N285), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[14]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  xn_reg_13_ ( .clear(N11), .preset(1'b0), .next_state(N284), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[13]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  xn_reg_12_ ( .clear(N11), .preset(1'b0), .next_state(N283), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[12]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  xn_reg_11_ ( .clear(N11), .preset(1'b0), .next_state(N282), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  xn_reg_10_ ( .clear(N11), .preset(1'b0), .next_state(N281), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  xn_reg_9_ ( .clear(N11), .preset(1'b0), .next_state(N280), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  xn_reg_8_ ( .clear(N11), .preset(1'b0), .next_state(N279), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  xn_reg_7_ ( .clear(N11), .preset(1'b0), .next_state(N278), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  xn_reg_6_ ( .clear(N11), .preset(1'b0), .next_state(N277), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  xn_reg_5_ ( .clear(N11), .preset(1'b0), .next_state(N276), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  xn_reg_4_ ( .clear(N11), .preset(1'b0), .next_state(N275), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  xn_reg_3_ ( .clear(N11), .preset(1'b0), .next_state(N274), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  xn_reg_2_ ( .clear(N11), .preset(1'b0), .next_state(N273), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  xn_reg_1_ ( .clear(N11), .preset(1'b0), .next_state(N272), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  xn_reg_0_ ( .clear(N11), .preset(1'b0), .next_state(N271), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(xn[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  cal_en_reg ( .clear(N11), .preset(1'b0), .next_state(N18), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cal_en), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N17) );
  \**SEQGEN**  yn_reg_21_ ( .clear(N11), .preset(1'b0), .next_state(N259), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[21]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  yn_reg_20_ ( .clear(N11), .preset(1'b0), .next_state(N258), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[20]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  yn_reg_19_ ( .clear(N11), .preset(1'b0), .next_state(N257), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[19]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  yn_reg_18_ ( .clear(N11), .preset(1'b0), .next_state(N256), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[18]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  yn_reg_17_ ( .clear(N11), .preset(1'b0), .next_state(N255), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[17]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  yn_reg_16_ ( .clear(N11), .preset(1'b0), .next_state(N254), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[16]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  yn_reg_15_ ( .clear(N11), .preset(1'b0), .next_state(N253), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[15]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  yn_reg_14_ ( .clear(N11), .preset(1'b0), .next_state(N252), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[14]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  yn_reg_13_ ( .clear(N11), .preset(1'b0), .next_state(N251), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[13]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  yn_reg_12_ ( .clear(N11), .preset(1'b0), .next_state(N250), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[12]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  yn_reg_11_ ( .clear(N11), .preset(1'b0), .next_state(N249), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  yn_reg_10_ ( .clear(N11), .preset(1'b0), .next_state(N248), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  yn_reg_9_ ( .clear(N11), .preset(1'b0), .next_state(N247), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  yn_reg_8_ ( .clear(N11), .preset(1'b0), .next_state(N246), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  yn_reg_7_ ( .clear(N11), .preset(1'b0), .next_state(N245), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  yn_reg_6_ ( .clear(N11), .preset(1'b0), .next_state(N244), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  yn_reg_5_ ( .clear(N11), .preset(1'b0), .next_state(N243), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  yn_reg_4_ ( .clear(N11), .preset(1'b0), .next_state(N242), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  yn_reg_3_ ( .clear(N11), .preset(1'b0), .next_state(N241), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  yn_reg_2_ ( .clear(N11), .preset(1'b0), .next_state(N240), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  yn_reg_1_ ( .clear(N11), .preset(1'b0), .next_state(N239), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  yn_reg_0_ ( .clear(N11), .preset(1'b0), .next_state(N238), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(yn[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N296) );
  \**SEQGEN**  nozero_flg_reg ( .clear(1'b0), .preset(N11), .next_state(N269), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(nozero_flg), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(cal_en) );
  \**SEQGEN**  finish_reg ( .clear(N11), .preset(1'b0), .next_state(N299), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res_vld), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  res_rg_reg_7_ ( .clear(N11), .preset(1'b0), .next_state(N268), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N297) );
  \**SEQGEN**  res_rg_reg_6_ ( .clear(N11), .preset(1'b0), .next_state(N267), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N297) );
  \**SEQGEN**  res_rg_reg_5_ ( .clear(N11), .preset(1'b0), .next_state(N266), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N297) );
  \**SEQGEN**  res_rg_reg_4_ ( .clear(N11), .preset(1'b0), .next_state(N265), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N297) );
  \**SEQGEN**  res_rg_reg_3_ ( .clear(N11), .preset(1'b0), .next_state(N264), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N297) );
  \**SEQGEN**  res_rg_reg_2_ ( .clear(N11), .preset(1'b0), .next_state(N263), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N297) );
  \**SEQGEN**  res_rg_reg_1_ ( .clear(N11), .preset(1'b0), .next_state(N262), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N297) );
  \**SEQGEN**  res_rg_reg_0_ ( .clear(N11), .preset(1'b0), .next_state(N261), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N297) );
  \**SEQGEN**  cal_cnt_reg_2_ ( .clear(N11), .preset(1'b0), .next_state(N295), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cal_cnt[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  cal_cnt_reg_1_ ( .clear(N11), .preset(1'b0), .next_state(N294), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cal_cnt[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  cal_cnt_reg_0_ ( .clear(N11), .preset(1'b0), .next_state(N293), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cal_cnt[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  GTECH_OR2 C583 ( .A(n_zz_9[14]), .B(n_zz_9[15]), .Z(N307) );
  GTECH_OR2 C584 ( .A(n_zz_9[13]), .B(N307), .Z(N308) );
  GTECH_OR2 C585 ( .A(n_zz_9[12]), .B(N308), .Z(N309) );
  GTECH_OR2 C586 ( .A(n_zz_9[11]), .B(N309), .Z(N310) );
  GTECH_OR2 C587 ( .A(n_zz_9[10]), .B(N310), .Z(N311) );
  GTECH_OR2 C588 ( .A(n_zz_9[9]), .B(N311), .Z(N312) );
  GTECH_OR2 C589 ( .A(n_zz_9[8]), .B(N312), .Z(N313) );
  GTECH_OR2 C590 ( .A(n_zz_9[7]), .B(N313), .Z(N314) );
  GTECH_OR2 C591 ( .A(n_zz_9[6]), .B(N314), .Z(N315) );
  GTECH_OR2 C592 ( .A(n_zz_9[5]), .B(N315), .Z(N316) );
  GTECH_OR2 C593 ( .A(n_zz_9[4]), .B(N316), .Z(N317) );
  GTECH_OR2 C594 ( .A(n_zz_9[3]), .B(N317), .Z(N318) );
  GTECH_OR2 C595 ( .A(n_zz_9[2]), .B(N318), .Z(N319) );
  GTECH_OR2 C596 ( .A(n_zz_9[1]), .B(N319), .Z(N320) );
  GTECH_OR2 C597 ( .A(n_zz_9[0]), .B(N320), .Z(N321) );
  GTECH_NOT I_0 ( .A(N321), .Z(N322) );
  GTECH_NOT I_1 ( .A(cal_cnt[2]), .Z(N323) );
  GTECH_NOT I_2 ( .A(cal_cnt[0]), .Z(N324) );
  GTECH_OR2 C601 ( .A(cal_cnt[1]), .B(N323), .Z(N325) );
  GTECH_OR2 C602 ( .A(N324), .B(N325), .Z(N326) );
  GTECH_NOT I_3 ( .A(N326), .Z(N327) );
  GTECH_OR2 C604 ( .A(cal_cnt[1]), .B(cal_cnt[2]), .Z(N328) );
  GTECH_OR2 C605 ( .A(cal_cnt[0]), .B(N328), .Z(N329) );
  GTECH_NOT I_4 ( .A(N329), .Z(N330) );
  SUB_UNS_OP sub_250 ( .A(1'b0), .B({x[15], x[15], x, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .Z(x_ins) );
  SUB_UNS_OP sub_251 ( .A(1'b0), .B({y[15], y[15], y, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .Z(y_ins) );
  SUB_UNS_OP sub_227 ( .A(cal_cnt), .B(1'b1), .Z(n_zz_5) );
  SUB_UNS_OP sub_228 ( .A(cal_cnt), .B(1'b1), .Z(n_zz_6) );
  SUB_UNS_OP sub_230 ( .A({1'b1, 1'b0, 1'b1}), .B(cal_cnt), .Z(n_zz_8) );
  ADD_UNS_OP add_281 ( .A(cal_cnt), .B(1'b1), .Z({N23, N22, N21}) );
  SUB_TC_OP sub_307 ( .A(xn), .B(yn_rightshift), .Z({N103, N102, N101, N100, 
        N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, N84, N83, N82}) );
  ADD_TC_OP add_308 ( .A(yn), .B(xn_rightshift), .Z({N125, N124, N123, N122, 
        N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, 
        N109, N108, N107, N106, N105, N104}) );
  SUB_TC_OP sub_309 ( .A(res), .B(res_bias), .Z({N133, N132, N131, N130, N129, 
        N128, N127, N126}) );
  ADD_TC_OP add_311 ( .A(xn), .B(yn_rightshift), .Z({N155, N154, N153, N152, 
        N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, 
        N139, N138, N137, N136, N135, N134}) );
  SUB_TC_OP sub_312 ( .A(yn), .B(xn_rightshift), .Z({N177, N176, N175, N174, 
        N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, 
        N161, N160, N159, N158, N157, N156}) );
  ADD_TC_OP add_313 ( .A(res), .B(res_bias), .Z({N185, N184, N183, N182, N181, 
        N180, N179, N178}) );
  SELECT_OP C608 ( .DATA1(1'b1), .DATA2(1'b0), .CONTROL1(N0), .CONTROL2(N301), 
        .Z(N15) );
  GTECH_BUF B_0 ( .A(vld), .Z(N0) );
  SELECT_OP C609 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b0), .CONTROL1(N0), 
        .CONTROL2(N301), .CONTROL3(N14), .Z(N16) );
  SELECT_OP C610 ( .DATA1(N16), .DATA2(1'b1), .CONTROL1(N1), .CONTROL2(N2), 
        .Z(N17) );
  GTECH_BUF B_1 ( .A(en), .Z(N1) );
  GTECH_BUF B_2 ( .A(N298), .Z(N2) );
  SELECT_OP C611 ( .DATA1(N15), .DATA2(1'b0), .CONTROL1(N1), .CONTROL2(N2), 
        .Z(N18) );
  SELECT_OP C612 ( .DATA1({1'b0, 1'b0}), .DATA2({1'b0, 1'b0}), .DATA3({1'b1, 
        1'b1}), .DATA4({1'b0, 1'b1}), .CONTROL1(N3), .CONTROL2(N303), 
        .CONTROL3(N306), .CONTROL4(N30), .Z({N32, N31}) );
  GTECH_BUF B_3 ( .A(N322), .Z(N3) );
  SELECT_OP C613 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b1), 
        .CONTROL1(N3), .CONTROL2(N4), .CONTROL3(N5), .CONTROL4(N5), .Z(N33) );
  GTECH_BUF B_4 ( .A(N321), .Z(N4) );
  GTECH_BUF B_5 ( .A(1'b0), .Z(N5) );
  SELECT_OP C614 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b1), 
        .CONTROL1(N3), .CONTROL2(N303), .CONTROL3(N306), .CONTROL4(N30), .Z(
        N34) );
  SELECT_OP C615 ( .DATA1({x[15], x[15], x, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2(
        x_ins), .DATA3(x_ins), .CONTROL1(N303), .CONTROL2(N306), .CONTROL3(N30), .Z({N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, 
        N42, N41, N40, N39, N38, N37, N36, N35}) );
  SELECT_OP C616 ( .DATA1({y[15], y[15], y, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2(
        y_ins), .DATA3(y_ins), .CONTROL1(N303), .CONTROL2(N306), .CONTROL3(N30), .Z({N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, 
        N64, N63, N62, N61, N60, N59, N58, N57}) );
  SELECT_OP C617 ( .DATA1({N103, N102, N101, N100, N99, N98, N97, N96, N95, 
        N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82}), 
        .DATA2({N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, 
        N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, N134}), .CONTROL1(N6), .CONTROL2(N81), .Z({N207, N206, N205, N204, N203, N202, N201, 
        N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, 
        N188, N187, N186}) );
  GTECH_BUF B_6 ( .A(N80), .Z(N6) );
  SELECT_OP C618 ( .DATA1({N125, N124, N123, N122, N121, N120, N119, N118, 
        N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, 
        N105, N104}), .DATA2({N177, N176, N175, N174, N173, N172, N171, N170, 
        N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, 
        N157, N156}), .CONTROL1(N6), .CONTROL2(N81), .Z({N229, N228, N227, 
        N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, 
        N214, N213, N212, N211, N210, N209, N208}) );
  SELECT_OP C619 ( .DATA1({N133, N132, N131, N130, N129, N128, N127, N126}), 
        .DATA2({N185, N184, N183, N182, N181, N180, N179, N178}), .CONTROL1(N6), .CONTROL2(N81), .Z({N237, N236, N235, N234, N233, N232, N231, N230}) );
  SELECT_OP C620 ( .DATA1({N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, 
        N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57}), .DATA2({
        N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, 
        N217, N216, N215, N214, N213, N212, N211, N210, N209, N208}), 
        .CONTROL1(N7), .CONTROL2(N302), .Z({N259, N258, N257, N256, N255, N254, 
        N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, 
        N241, N240, N239, N238}) );
  GTECH_BUF B_7 ( .A(N330), .Z(N7) );
  SELECT_OP C621 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b0), .CONTROL1(N7), 
        .CONTROL2(N302), .CONTROL3(N25), .Z(N260) );
  SELECT_OP C622 ( .DATA1({N32, N31, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA2({N237, N236, N235, N234, N233, N232, N231, N230}), .CONTROL1(N7), .CONTROL2(N302), .Z({N268, N267, N266, N265, N264, N263, N262, N261}) );
  SELECT_OP C623 ( .DATA1(N33), .DATA2(1'b1), .DATA3(1'b1), .CONTROL1(N7), 
        .CONTROL2(N8), .CONTROL3(N5), .Z(N269) );
  GTECH_BUF B_8 ( .A(N329), .Z(N8) );
  SELECT_OP C624 ( .DATA1(N34), .DATA2(1'b1), .DATA3(1'b0), .CONTROL1(N7), 
        .CONTROL2(N302), .CONTROL3(N25), .Z(N270) );
  SELECT_OP C625 ( .DATA1({N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, 
        N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35}), .DATA2({
        N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, 
        N195, N194, N193, N192, N191, N190, N189, N188, N187, N186}), 
        .CONTROL1(N7), .CONTROL2(N302), .Z({N292, N291, N290, N289, N288, N287, 
        N286, N285, N284, N283, N282, N281, N280, N279, N278, N277, N276, N275, 
        N274, N273, N272, N271}) );
  SELECT_OP C626 ( .DATA1({N23, N22, N21}), .DATA2({1'b0, 1'b0, 1'b0}), 
        .CONTROL1(N9), .CONTROL2(N10), .Z({N295, N294, N293}) );
  GTECH_BUF B_9 ( .A(cal_en), .Z(N9) );
  GTECH_BUF B_10 ( .A(N19), .Z(N10) );
  SELECT_OP C627 ( .DATA1(N270), .DATA2(1'b0), .CONTROL1(N9), .CONTROL2(N10), 
        .Z(N296) );
  SELECT_OP C628 ( .DATA1(N260), .DATA2(1'b0), .CONTROL1(N9), .CONTROL2(N10), 
        .Z(N297) );
  SELECT_OP C629 ( .DATA1(N327), .DATA2(1'b0), .CONTROL1(N1), .CONTROL2(N2), 
        .Z(N299) );
  GTECH_OR2 C632 ( .A(x[15]), .B(y[15]), .Z(n_zz_9[15]) );
  GTECH_OR2 C633 ( .A(x[14]), .B(y[14]), .Z(n_zz_9[14]) );
  GTECH_OR2 C634 ( .A(x[13]), .B(y[13]), .Z(n_zz_9[13]) );
  GTECH_OR2 C635 ( .A(x[12]), .B(y[12]), .Z(n_zz_9[12]) );
  GTECH_OR2 C636 ( .A(x[11]), .B(y[11]), .Z(n_zz_9[11]) );
  GTECH_OR2 C637 ( .A(x[10]), .B(y[10]), .Z(n_zz_9[10]) );
  GTECH_OR2 C638 ( .A(x[9]), .B(y[9]), .Z(n_zz_9[9]) );
  GTECH_OR2 C639 ( .A(x[8]), .B(y[8]), .Z(n_zz_9[8]) );
  GTECH_OR2 C640 ( .A(x[7]), .B(y[7]), .Z(n_zz_9[7]) );
  GTECH_OR2 C641 ( .A(x[6]), .B(y[6]), .Z(n_zz_9[6]) );
  GTECH_OR2 C642 ( .A(x[5]), .B(y[5]), .Z(n_zz_9[5]) );
  GTECH_OR2 C643 ( .A(x[4]), .B(y[4]), .Z(n_zz_9[4]) );
  GTECH_OR2 C644 ( .A(x[3]), .B(y[3]), .Z(n_zz_9[3]) );
  GTECH_OR2 C645 ( .A(x[2]), .B(y[2]), .Z(n_zz_9[2]) );
  GTECH_OR2 C646 ( .A(x[1]), .B(y[1]), .Z(n_zz_9[1]) );
  GTECH_OR2 C647 ( .A(x[0]), .B(y[0]), .Z(n_zz_9[0]) );
  GTECH_NOT I_5 ( .A(resetn), .Z(N11) );
  GTECH_BUF B_11 ( .A(resetn), .Z(N12) );
  GTECH_OR2 C653 ( .A(N327), .B(vld), .Z(N13) );
  GTECH_NOT I_6 ( .A(N13), .Z(N14) );
  GTECH_NOT I_7 ( .A(cal_en), .Z(N19) );
  GTECH_AND2 C658 ( .A(N12), .B(cal_en), .Z(N20) );
  GTECH_OR2 C661 ( .A(nozero_flg), .B(N330), .Z(N24) );
  GTECH_NOT I_8 ( .A(N24), .Z(N25) );
  GTECH_AND2 C663 ( .A(N20), .B(N330), .Z(net1282) );
  GTECH_OR2 C667 ( .A(N26), .B(N322), .Z(N28) );
  GTECH_OR2 C668 ( .A(N27), .B(N28), .Z(N29) );
  GTECH_NOT I_9 ( .A(N29), .Z(N30) );
  GTECH_AND2 C671 ( .A(N20), .B(N302), .Z(N79) );
  GTECH_NOT I_10 ( .A(N80), .Z(N81) );
  GTECH_AND2 C674 ( .A(N79), .B(N80), .Z(net1284) );
  GTECH_AND2 C675 ( .A(N79), .B(N81), .Z(net1285) );
  GTECH_NOT I_11 ( .A(en), .Z(N298) );
  GTECH_NOT I_12 ( .A(vld), .Z(N300) );
  GTECH_AND2 C683 ( .A(N327), .B(N300), .Z(N301) );
  GTECH_AND2 C684 ( .A(nozero_flg), .B(N329), .Z(N302) );
  GTECH_AND2 C685 ( .A(N79), .B(N329), .Z(net1283) );
  GTECH_AND2 C686 ( .A(N26), .B(N321), .Z(N303) );
  GTECH_NOT I_13 ( .A(N26), .Z(N304) );
  GTECH_AND2 C688 ( .A(N321), .B(N304), .Z(N305) );
  GTECH_AND2 C689 ( .A(N27), .B(N305), .Z(N306) );
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
  wire   N0, N1, N2, N3, N4, n_zz_3_8, n_zz_4_8, N5, calvn_vn_vld,
         dot_psum_vld, cordic_res_vld, AbsGtPi, ph_vld_dly1, LastA2stZero, N6,
         N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34,
         N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48,
         N49, N50, N51, N52, net121, net122;
  wire   [6:0] n_zz_3;
  wire   [6:0] n_zz_4;
  wire   [8:0] n_zz_5;
  wire   [8:0] n_zz_6;
  wire   [0:0] n_zz_7;
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

  cal_vn calvn ( .en(en), .vin_vld(vin_vld), .v_in_0(v_in_0), .v_in_1(v_in_1), 
        .v_in_2(v_in_2), .v_in_3(v_in_3), .v_in_4(v_in_4), .v_in_5(v_in_5), 
        .v_in_6(v_in_6), .v_in_7(v_in_7), .vn_0(calvn_vn_0), .vn_1(calvn_vn_1), 
        .vn_2(calvn_vn_2), .vn_3(calvn_vn_3), .vn_4(calvn_vn_4), .vn_5(
        calvn_vn_5), .vn_6(calvn_vn_6), .vn_7(calvn_vn_7), .vn_vld(
        calvn_vn_vld), .clk(clk), .resetn(resetn) );
  dotVn dot ( .en(en), .vn_vld(calvn_vn_vld), .vn_in_0(calvn_vn_0), .vn_in_1(
        calvn_vn_1), .vn_in_2(calvn_vn_2), .vn_in_3(calvn_vn_3), .vn_in_4(
        calvn_vn_4), .vn_in_5(calvn_vn_5), .vn_in_6(calvn_vn_6), .vn_in_7(
        calvn_vn_7), .psum_out1(dot_psum_out1), .psum_out2(dot_psum_out2), 
        .psum_vld(dot_psum_vld), .clk(clk), .resetn(resetn) );
  cordic_int cordic ( .en(en), .vld(dot_psum_vld), .y(dot_psum_out2), .x(
        dot_psum_out1), .res(cordic_res), .res_vld(cordic_res_vld), .clk(clk), 
        .resetn(resetn) );
  LT_UNS_OP lt_149 ( .A({1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B(
        ph_delta_abs), .Z(AbsGtPi) );
  \**SEQGEN**  LastA2stZero_reg ( .clear(N6), .preset(1'b0), .next_state(
        dot_psum_out2[15]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(LastA2stZero), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(ph_vld_dly1) );
  \**SEQGEN**  ph_now_reg_7_ ( .clear(N6), .preset(1'b0), .next_state(
        cordic_res[7]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_3_8), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(cordic_res_vld) );
  \**SEQGEN**  ph_now_reg_6_ ( .clear(N6), .preset(1'b0), .next_state(
        cordic_res[6]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_3[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(cordic_res_vld) );
  \**SEQGEN**  ph_now_reg_5_ ( .clear(N6), .preset(1'b0), .next_state(
        cordic_res[5]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_3[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(cordic_res_vld) );
  \**SEQGEN**  ph_now_reg_4_ ( .clear(N6), .preset(1'b0), .next_state(
        cordic_res[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_3[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(cordic_res_vld) );
  \**SEQGEN**  ph_now_reg_3_ ( .clear(N6), .preset(1'b0), .next_state(
        cordic_res[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_3[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(cordic_res_vld) );
  \**SEQGEN**  ph_now_reg_2_ ( .clear(N6), .preset(1'b0), .next_state(
        cordic_res[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_3[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(cordic_res_vld) );
  \**SEQGEN**  ph_now_reg_1_ ( .clear(N6), .preset(1'b0), .next_state(
        cordic_res[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_3[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(cordic_res_vld) );
  \**SEQGEN**  ph_now_reg_0_ ( .clear(N6), .preset(1'b0), .next_state(
        cordic_res[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_3[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(cordic_res_vld) );
  \**SEQGEN**  ph_last_reg_7_ ( .clear(N6), .preset(1'b0), .next_state(
        n_zz_3_8), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_4_8), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(cordic_res_vld) );
  \**SEQGEN**  ph_last_reg_6_ ( .clear(N6), .preset(1'b0), .next_state(
        n_zz_3[6]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_4[6]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(cordic_res_vld) );
  \**SEQGEN**  ph_last_reg_5_ ( .clear(N6), .preset(1'b0), .next_state(
        n_zz_3[5]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_4[5]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(cordic_res_vld) );
  \**SEQGEN**  ph_last_reg_4_ ( .clear(N6), .preset(1'b0), .next_state(
        n_zz_3[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_4[4]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(cordic_res_vld) );
  \**SEQGEN**  ph_last_reg_3_ ( .clear(N6), .preset(1'b0), .next_state(
        n_zz_3[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_4[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(cordic_res_vld) );
  \**SEQGEN**  ph_last_reg_2_ ( .clear(N6), .preset(1'b0), .next_state(
        n_zz_3[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_4[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(cordic_res_vld) );
  \**SEQGEN**  ph_last_reg_1_ ( .clear(N6), .preset(1'b0), .next_state(
        n_zz_3[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_4[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(cordic_res_vld) );
  \**SEQGEN**  ph_last_reg_0_ ( .clear(N6), .preset(1'b0), .next_state(
        n_zz_3[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        n_zz_4[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(cordic_res_vld) );
  \**SEQGEN**  ph_vld_dly1_reg ( .clear(N6), .preset(1'b0), .next_state(
        cordic_res_vld), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        ph_vld_dly1), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  res_last_reg_9_ ( .clear(N6), .preset(1'b0), .next_state(N52), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(ph_vld_dly1) );
  \**SEQGEN**  res_last_reg_8_ ( .clear(N6), .preset(1'b0), .next_state(N51), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(ph_vld_dly1) );
  \**SEQGEN**  res_last_reg_7_ ( .clear(N6), .preset(1'b0), .next_state(N50), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(ph_vld_dly1) );
  \**SEQGEN**  res_last_reg_6_ ( .clear(N6), .preset(1'b0), .next_state(N49), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(ph_vld_dly1) );
  \**SEQGEN**  res_last_reg_5_ ( .clear(N6), .preset(1'b0), .next_state(N48), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(ph_vld_dly1) );
  \**SEQGEN**  res_last_reg_4_ ( .clear(N6), .preset(1'b0), .next_state(N47), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(ph_vld_dly1) );
  \**SEQGEN**  res_last_reg_3_ ( .clear(N6), .preset(1'b0), .next_state(N46), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(ph_vld_dly1) );
  \**SEQGEN**  res_last_reg_2_ ( .clear(N6), .preset(1'b0), .next_state(N45), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(ph_vld_dly1) );
  \**SEQGEN**  res_last_reg_1_ ( .clear(N6), .preset(1'b0), .next_state(N44), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(ph_vld_dly1) );
  \**SEQGEN**  res_last_reg_0_ ( .clear(N6), .preset(1'b0), .next_state(N43), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(res[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(ph_vld_dly1) );
  \**SEQGEN**  res_last_vld_reg ( .clear(N6), .preset(1'b0), .next_state(
        ph_vld_dly1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        res_vld), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  SUB_TC_OP sub_147 ( .A({n_zz_3_8, n_zz_3}), .B({n_zz_4_8, n_zz_4}), .Z({
        n_zz_7[0], n_zz_9}) );
  ADD_UNS_OP add_148 ( .A(n_zz_5), .B(n_zz_7[0]), .Z(ph_delta_abs) );
  SUB_TC_OP sub_173 ( .A({n_zz_7[0], n_zz_9}), .B({1'b0, 1'b1, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Z({N22, N21, N20, N19, N18, N17, N16, 
        N15, N14, N13}) );
  ADD_TC_OP add_175 ( .A({n_zz_7[0], n_zz_9}), .B({1'b0, 1'b1, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Z({N32, N31, N30, N29, N28, N27, N26, 
        N25, N24, N23}) );
  SELECT_OP C192 ( .DATA1(n_zz_6), .DATA2({n_zz_7[0], n_zz_9}), .CONTROL1(N0), 
        .CONTROL2(N5), .Z(n_zz_5) );
  GTECH_BUF B_0 ( .A(n_zz_7[0]), .Z(N0) );
  SELECT_OP C193 ( .DATA1({N22, N21, N20, N19, N18, N17, N16, N15, N14, N13}), 
        .DATA2({N32, N31, N30, N29, N28, N27, N26, N25, N24, N23}), .CONTROL1(
        N1), .CONTROL2(N2), .Z({N42, N41, N40, N39, N38, N37, N36, N35, N34, 
        N33}) );
  GTECH_BUF B_1 ( .A(LastA2stZero), .Z(N1) );
  GTECH_BUF B_2 ( .A(N12), .Z(N2) );
  SELECT_OP C194 ( .DATA1({N42, N41, N40, N39, N38, N37, N36, N35, N34, N33}), 
        .DATA2({n_zz_7[0], n_zz_7[0], n_zz_9}), .CONTROL1(N3), .CONTROL2(N4), 
        .Z({N52, N51, N50, N49, N48, N47, N46, N45, N44, N43}) );
  GTECH_BUF B_3 ( .A(AbsGtPi), .Z(N3) );
  GTECH_BUF B_4 ( .A(N10), .Z(N4) );
  GTECH_NOT I_0 ( .A(n_zz_7[0]), .Z(N5) );
  GTECH_NOT I_1 ( .A(n_zz_7[0]), .Z(n_zz_6[8]) );
  GTECH_NOT I_2 ( .A(n_zz_9[7]), .Z(n_zz_6[7]) );
  GTECH_NOT I_3 ( .A(n_zz_9[6]), .Z(n_zz_6[6]) );
  GTECH_NOT I_4 ( .A(n_zz_9[5]), .Z(n_zz_6[5]) );
  GTECH_NOT I_5 ( .A(n_zz_9[4]), .Z(n_zz_6[4]) );
  GTECH_NOT I_6 ( .A(n_zz_9[3]), .Z(n_zz_6[3]) );
  GTECH_NOT I_7 ( .A(n_zz_9[2]), .Z(n_zz_6[2]) );
  GTECH_NOT I_8 ( .A(n_zz_9[1]), .Z(n_zz_6[1]) );
  GTECH_NOT I_9 ( .A(n_zz_9[0]), .Z(n_zz_6[0]) );
  GTECH_NOT I_10 ( .A(resetn), .Z(N6) );
  GTECH_BUF B_5 ( .A(resetn), .Z(N7) );
  GTECH_BUF B_6 ( .A(N7), .Z(N8) );
  GTECH_AND2 C213 ( .A(N8), .B(ph_vld_dly1), .Z(N9) );
  GTECH_NOT I_11 ( .A(AbsGtPi), .Z(N10) );
  GTECH_AND2 C217 ( .A(N9), .B(AbsGtPi), .Z(N11) );
  GTECH_NOT I_12 ( .A(LastA2stZero), .Z(N12) );
  GTECH_AND2 C221 ( .A(N11), .B(LastA2stZero), .Z(net121) );
  GTECH_AND2 C222 ( .A(N11), .B(N12), .Z(net122) );
endmodule

