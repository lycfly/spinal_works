// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : cal_vn
// Git hash  : 402e7bd883d173ac81a885acc2a4c05d29757f48


module cal_vn (
  input               en,
  input               vin_vld,
  input      [7:0]    v_in_0,
  input      [7:0]    v_in_1,
  input      [7:0]    v_in_2,
  input      [7:0]    v_in_3,
  input      [7:0]    v_in_4,
  input      [7:0]    v_in_5,
  input      [7:0]    v_in_6,
  input      [7:0]    v_in_7,
  output     [7:0]    vn_0,
  output     [7:0]    vn_1,
  output     [7:0]    vn_2,
  output     [7:0]    vn_3,
  output     [7:0]    vn_4,
  output     [7:0]    vn_5,
  output     [7:0]    vn_6,
  output     [7:0]    vn_7,
  output              vn_vld,
  input               clk,
  input               resetn
);
  wire       [11:0]   _zz_7;
  wire       [11:0]   _zz_8;
  wire       [11:0]   _zz_9;
  wire       [11:0]   _zz_10;
  wire       [11:0]   _zz_11;
  wire       [11:0]   _zz_12;
  wire       [11:0]   _zz_13;
  wire       [11:0]   _zz_14;
  wire       [7:0]    FloorWrapVn_0_dout;
  wire       [7:0]    FloorWrapVn_1_dout;
  wire       [7:0]    FloorWrapVn_2_dout;
  wire       [7:0]    FloorWrapVn_3_dout;
  wire       [7:0]    FloorWrapVn_4_dout;
  wire       [7:0]    FloorWrapVn_5_dout;
  wire       [7:0]    FloorWrapVn_6_dout;
  wire       [7:0]    FloorWrapVn_7_dout;
  wire       [8:0]    _zz_15;
  wire       [8:0]    _zz_16;
  wire       [8:0]    _zz_17;
  wire       [8:0]    _zz_18;
  wire       [8:0]    _zz_19;
  wire       [8:0]    _zz_20;
  wire       [8:0]    _zz_21;
  wire       [8:0]    _zz_22;
  wire       [9:0]    _zz_23;
  wire       [9:0]    _zz_24;
  wire       [9:0]    _zz_25;
  wire       [9:0]    _zz_26;
  wire       [10:0]   _zz_27;
  wire       [10:0]   _zz_28;
  wire       [11:0]   _zz_29;
  wire       [11:0]   _zz_30;
  wire       [11:0]   _zz_31;
  wire       [11:0]   _zz_32;
  wire       [11:0]   _zz_33;
  wire       [11:0]   _zz_34;
  wire       [11:0]   _zz_35;
  wire       [11:0]   _zz_36;
  wire       [11:0]   _zz_37;
  wire       [11:0]   _zz_38;
  wire       [11:0]   _zz_39;
  wire       [11:0]   _zz_40;
  wire       [11:0]   _zz_41;
  wire       [11:0]   _zz_42;
  wire       [11:0]   _zz_43;
  wire       [11:0]   _zz_44;
  reg                 in_vld_dly1;
  reg                 in_vld_dly2;
  wire       [10:0]   SumXin;
  reg        [10:0]   SumXinReg;
  wire       [8:0]    _zz_1;
  wire       [8:0]    _zz_2;
  wire       [8:0]    _zz_3;
  wire       [8:0]    _zz_4;
  wire       [9:0]    _zz_5;
  wire       [9:0]    _zz_6;
  wire       [10:0]   vin_ext_0;
  wire       [10:0]   vin_ext_1;
  wire       [10:0]   vin_ext_2;
  wire       [10:0]   vin_ext_3;
  wire       [10:0]   vin_ext_4;
  wire       [10:0]   vin_ext_5;
  wire       [10:0]   vin_ext_6;
  wire       [10:0]   vin_ext_7;
  wire       [11:0]   VinMinusMean_0;
  wire       [11:0]   VinMinusMean_1;
  wire       [11:0]   VinMinusMean_2;
  wire       [11:0]   VinMinusMean_3;
  wire       [11:0]   VinMinusMean_4;
  wire       [11:0]   VinMinusMean_5;
  wire       [11:0]   VinMinusMean_6;
  wire       [11:0]   VinMinusMean_7;
  wire       [7:0]    Vn_floor_0;
  wire       [7:0]    Vn_floor_1;
  wire       [7:0]    Vn_floor_2;
  wire       [7:0]    Vn_floor_3;
  wire       [7:0]    Vn_floor_4;
  wire       [7:0]    Vn_floor_5;
  wire       [7:0]    Vn_floor_6;
  wire       [7:0]    Vn_floor_7;
  reg        [7:0]    VnReg_0;
  reg        [7:0]    VnReg_1;
  reg        [7:0]    VnReg_2;
  reg        [7:0]    VnReg_3;
  reg        [7:0]    VnReg_4;
  reg        [7:0]    VnReg_5;
  reg        [7:0]    VnReg_6;
  reg        [7:0]    VnReg_7;

  assign _zz_15 = {v_in_0[7],v_in_0};
  assign _zz_16 = {v_in_1[7],v_in_1};
  assign _zz_17 = {v_in_2[7],v_in_2};
  assign _zz_18 = {v_in_3[7],v_in_3};
  assign _zz_19 = {v_in_4[7],v_in_4};
  assign _zz_20 = {v_in_5[7],v_in_5};
  assign _zz_21 = {v_in_6[7],v_in_6};
  assign _zz_22 = {v_in_7[7],v_in_7};
  assign _zz_23 = {_zz_1[8],_zz_1};
  assign _zz_24 = {_zz_2[8],_zz_2};
  assign _zz_25 = {_zz_3[8],_zz_3};
  assign _zz_26 = {_zz_4[8],_zz_4};
  assign _zz_27 = {_zz_5[9],_zz_5};
  assign _zz_28 = {_zz_6[9],_zz_6};
  assign _zz_29 = {vin_ext_0[10],vin_ext_0};
  assign _zz_30 = {SumXinReg[10],SumXinReg};
  assign _zz_31 = {vin_ext_1[10],vin_ext_1};
  assign _zz_32 = {SumXinReg[10],SumXinReg};
  assign _zz_33 = {vin_ext_2[10],vin_ext_2};
  assign _zz_34 = {SumXinReg[10],SumXinReg};
  assign _zz_35 = {vin_ext_3[10],vin_ext_3};
  assign _zz_36 = {SumXinReg[10],SumXinReg};
  assign _zz_37 = {vin_ext_4[10],vin_ext_4};
  assign _zz_38 = {SumXinReg[10],SumXinReg};
  assign _zz_39 = {vin_ext_5[10],vin_ext_5};
  assign _zz_40 = {SumXinReg[10],SumXinReg};
  assign _zz_41 = {vin_ext_6[10],vin_ext_6};
  assign _zz_42 = {SumXinReg[10],SumXinReg};
  assign _zz_43 = {vin_ext_7[10],vin_ext_7};
  assign _zz_44 = {SumXinReg[10],SumXinReg};
  FloorAndWrap FloorWrapVn_0 (
    .din     (_zz_7[11:0]              ), //i
    .dout    (FloorWrapVn_0_dout[7:0]  )  //o
  );
  FloorAndWrap FloorWrapVn_1 (
    .din     (_zz_8[11:0]              ), //i
    .dout    (FloorWrapVn_1_dout[7:0]  )  //o
  );
  FloorAndWrap FloorWrapVn_2 (
    .din     (_zz_9[11:0]              ), //i
    .dout    (FloorWrapVn_2_dout[7:0]  )  //o
  );
  FloorAndWrap FloorWrapVn_3 (
    .din     (_zz_10[11:0]             ), //i
    .dout    (FloorWrapVn_3_dout[7:0]  )  //o
  );
  FloorAndWrap FloorWrapVn_4 (
    .din     (_zz_11[11:0]             ), //i
    .dout    (FloorWrapVn_4_dout[7:0]  )  //o
  );
  FloorAndWrap FloorWrapVn_5 (
    .din     (_zz_12[11:0]             ), //i
    .dout    (FloorWrapVn_5_dout[7:0]  )  //o
  );
  FloorAndWrap FloorWrapVn_6 (
    .din     (_zz_13[11:0]             ), //i
    .dout    (FloorWrapVn_6_dout[7:0]  )  //o
  );
  FloorAndWrap FloorWrapVn_7 (
    .din     (_zz_14[11:0]             ), //i
    .dout    (FloorWrapVn_7_dout[7:0]  )  //o
  );
  assign _zz_1 = ($signed(_zz_15) + $signed(_zz_16));
  assign _zz_2 = ($signed(_zz_17) + $signed(_zz_18));
  assign _zz_3 = ($signed(_zz_19) + $signed(_zz_20));
  assign _zz_4 = ($signed(_zz_21) + $signed(_zz_22));
  assign _zz_5 = ($signed(_zz_23) + $signed(_zz_24));
  assign _zz_6 = ($signed(_zz_25) + $signed(_zz_26));
  assign SumXin = ($signed(_zz_27) + $signed(_zz_28));
  assign vin_ext_0 = {v_in_0,3'b000};
  assign vin_ext_1 = {v_in_1,3'b000};
  assign vin_ext_2 = {v_in_2,3'b000};
  assign vin_ext_3 = {v_in_3,3'b000};
  assign vin_ext_4 = {v_in_4,3'b000};
  assign vin_ext_5 = {v_in_5,3'b000};
  assign vin_ext_6 = {v_in_6,3'b000};
  assign vin_ext_7 = {v_in_7,3'b000};
  assign VinMinusMean_0 = ($signed(_zz_29) - $signed(_zz_30));
  assign VinMinusMean_1 = ($signed(_zz_31) - $signed(_zz_32));
  assign VinMinusMean_2 = ($signed(_zz_33) - $signed(_zz_34));
  assign VinMinusMean_3 = ($signed(_zz_35) - $signed(_zz_36));
  assign VinMinusMean_4 = ($signed(_zz_37) - $signed(_zz_38));
  assign VinMinusMean_5 = ($signed(_zz_39) - $signed(_zz_40));
  assign VinMinusMean_6 = ($signed(_zz_41) - $signed(_zz_42));
  assign VinMinusMean_7 = ($signed(_zz_43) - $signed(_zz_44));
  assign _zz_7 = VinMinusMean_0;
  assign Vn_floor_0 = FloorWrapVn_0_dout;
  assign _zz_8 = VinMinusMean_1;
  assign Vn_floor_1 = FloorWrapVn_1_dout;
  assign _zz_9 = VinMinusMean_2;
  assign Vn_floor_2 = FloorWrapVn_2_dout;
  assign _zz_10 = VinMinusMean_3;
  assign Vn_floor_3 = FloorWrapVn_3_dout;
  assign _zz_11 = VinMinusMean_4;
  assign Vn_floor_4 = FloorWrapVn_4_dout;
  assign _zz_12 = VinMinusMean_5;
  assign Vn_floor_5 = FloorWrapVn_5_dout;
  assign _zz_13 = VinMinusMean_6;
  assign Vn_floor_6 = FloorWrapVn_6_dout;
  assign _zz_14 = VinMinusMean_7;
  assign Vn_floor_7 = FloorWrapVn_7_dout;
  assign vn_0 = VnReg_0;
  assign vn_1 = VnReg_1;
  assign vn_2 = VnReg_2;
  assign vn_3 = VnReg_3;
  assign vn_4 = VnReg_4;
  assign vn_5 = VnReg_5;
  assign vn_6 = VnReg_6;
  assign vn_7 = VnReg_7;
  assign vn_vld = in_vld_dly2;
  always @ (posedge clk or negedge resetn) begin
    if (!resetn) begin
      in_vld_dly1 <= 1'b0;
      in_vld_dly2 <= 1'b0;
      SumXinReg <= 11'h0;
      VnReg_0 <= 8'h0;
      VnReg_1 <= 8'h0;
      VnReg_2 <= 8'h0;
      VnReg_3 <= 8'h0;
      VnReg_4 <= 8'h0;
      VnReg_5 <= 8'h0;
      VnReg_6 <= 8'h0;
      VnReg_7 <= 8'h0;
    end else begin
      if(en)begin
        in_vld_dly1 <= vin_vld;
        in_vld_dly2 <= in_vld_dly1;
      end else begin
        in_vld_dly1 <= 1'b0;
        in_vld_dly2 <= 1'b0;
      end
      if((en && vin_vld))begin
        SumXinReg <= SumXin;
      end
      if(in_vld_dly1)begin
        VnReg_0 <= Vn_floor_0;
        VnReg_1 <= Vn_floor_1;
        VnReg_2 <= Vn_floor_2;
        VnReg_3 <= Vn_floor_3;
        VnReg_4 <= Vn_floor_4;
        VnReg_5 <= Vn_floor_5;
        VnReg_6 <= Vn_floor_6;
        VnReg_7 <= Vn_floor_7;
      end
    end
  end


endmodule
