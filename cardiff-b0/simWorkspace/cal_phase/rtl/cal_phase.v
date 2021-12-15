// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : cal_phase
// Git hash  : c4528966e2dc7c4cc138a867841564d7ddc04df3



module cal_phase (
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
  output              res_vld,
  output     [9:0]    res,
  input               clk,
  input               reset
);
  wire       [7:0]    calvn_vn_0;
  wire       [7:0]    calvn_vn_1;
  wire       [7:0]    calvn_vn_2;
  wire       [7:0]    calvn_vn_3;
  wire       [7:0]    calvn_vn_4;
  wire       [7:0]    calvn_vn_5;
  wire       [7:0]    calvn_vn_6;
  wire       [7:0]    calvn_vn_7;
  wire                calvn_vn_vld;
  wire       [15:0]   dot_psum_out1;
  wire       [15:0]   dot_psum_out2;
  wire                dot_psum_vld;
  wire       [7:0]    cordic_res;
  wire                cordic_res_vld;
  wire       [8:0]    _zz_3;
  wire       [8:0]    _zz_4;
  wire       [8:0]    _zz_5;
  wire       [8:0]    _zz_6;
  wire       [0:0]    _zz_7;
  wire       [8:0]    _zz_8;
  wire       [9:0]    _zz_9;
  wire       [9:0]    _zz_10;
  wire       [9:0]    _zz_11;
  wire       [9:0]    _zz_12;
  wire       [7:0]    vn_0;
  wire       [7:0]    vn_1;
  wire       [7:0]    vn_2;
  wire       [7:0]    vn_3;
  wire       [7:0]    vn_4;
  wire       [7:0]    vn_5;
  wire       [7:0]    vn_6;
  wire       [7:0]    vn_7;
  wire                vn_vld;
  wire       [15:0]   psum_out1;
  wire       [15:0]   psum_out2;
  wire                psum_vld;
  wire                ph_vld /* verilator public */ ;
  wire       [7:0]    ph_cal;
  reg                 LastA2stZero;
  reg        [7:0]    ph_now;
  reg        [7:0]    ph_last;
  reg                 ph_vld_dly1 /* verilator public */ ;
  wire       [8:0]    ph_delta;
  wire       [8:0]    ph_delta_abs;
  wire                AbsGtPi;
  reg        [9:0]    res_last;
  reg                 res_last_vld;
  wire       [8:0]    _zz_1;
  wire       [8:0]    _zz_2;

  assign _zz_3 = {ph_now[7],ph_now};
  assign _zz_4 = {ph_last[7],ph_last};
  assign _zz_5 = (ph_delta[8] ? _zz_6 : ph_delta);
  assign _zz_6 = (~ ph_delta);
  assign _zz_7 = ph_delta[8];
  assign _zz_8 = {8'd0, _zz_7};
  assign _zz_9 = {ph_delta[8],ph_delta};
  assign _zz_10 = {_zz_1[8],_zz_1};
  assign _zz_11 = {ph_delta[8],ph_delta};
  assign _zz_12 = {_zz_2[8],_zz_2};
  cal_vn calvn (
    .en         (en               ), //i
    .vin_vld    (vin_vld          ), //i
    .v_in_0     (v_in_0[7:0]      ), //i
    .v_in_1     (v_in_1[7:0]      ), //i
    .v_in_2     (v_in_2[7:0]      ), //i
    .v_in_3     (v_in_3[7:0]      ), //i
    .v_in_4     (v_in_4[7:0]      ), //i
    .v_in_5     (v_in_5[7:0]      ), //i
    .v_in_6     (v_in_6[7:0]      ), //i
    .v_in_7     (v_in_7[7:0]      ), //i
    .vn_0       (calvn_vn_0[7:0]  ), //o
    .vn_1       (calvn_vn_1[7:0]  ), //o
    .vn_2       (calvn_vn_2[7:0]  ), //o
    .vn_3       (calvn_vn_3[7:0]  ), //o
    .vn_4       (calvn_vn_4[7:0]  ), //o
    .vn_5       (calvn_vn_5[7:0]  ), //o
    .vn_6       (calvn_vn_6[7:0]  ), //o
    .vn_7       (calvn_vn_7[7:0]  ), //o
    .vn_vld     (calvn_vn_vld     ), //o
    .clk        (clk              ), //i
    .reset      (reset            )  //i
  );
  dotVn dot (
    .en           (en                   ), //i
    .vn_vld       (vn_vld               ), //i
    .vn_in_0      (vn_0[7:0]            ), //i
    .vn_in_1      (vn_1[7:0]            ), //i
    .vn_in_2      (vn_2[7:0]            ), //i
    .vn_in_3      (vn_3[7:0]            ), //i
    .vn_in_4      (vn_4[7:0]            ), //i
    .vn_in_5      (vn_5[7:0]            ), //i
    .vn_in_6      (vn_6[7:0]            ), //i
    .vn_in_7      (vn_7[7:0]            ), //i
    .psum_out1    (dot_psum_out1[15:0]  ), //o
    .psum_out2    (dot_psum_out2[15:0]  ), //o
    .psum_vld     (dot_psum_vld         ), //o
    .clk          (clk                  ), //i
    .reset        (reset                )  //i
  );
  cordic_int cordic (
    .en         (en               ), //i
    .vld        (psum_vld         ), //i
    .y          (psum_out2[15:0]  ), //i
    .x          (psum_out1[15:0]  ), //i
    .res        (cordic_res[7:0]  ), //o
    .res_vld    (cordic_res_vld   ), //o
    .clk        (clk              ), //i
    .reset      (reset            )  //i
  );
  assign vn_0 = calvn_vn_0;
  assign vn_1 = calvn_vn_1;
  assign vn_2 = calvn_vn_2;
  assign vn_3 = calvn_vn_3;
  assign vn_4 = calvn_vn_4;
  assign vn_5 = calvn_vn_5;
  assign vn_6 = calvn_vn_6;
  assign vn_7 = calvn_vn_7;
  assign vn_vld = calvn_vn_vld;
  assign psum_out1 = dot_psum_out1;
  assign psum_out2 = dot_psum_out2;
  assign psum_vld = dot_psum_vld;
  assign ph_cal = cordic_res;
  assign ph_vld = cordic_res_vld;
  assign ph_delta = ($signed(_zz_3) - $signed(_zz_4));
  assign ph_delta_abs = (_zz_5 + _zz_8);
  assign AbsGtPi = (9'h040 < ph_delta_abs);
  assign _zz_1 = 9'h080;
  assign _zz_2 = 9'h080;
  assign res = res_last;
  assign res_vld = res_last_vld;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      LastA2stZero <= 1'b0;
      ph_now <= 8'h0;
      ph_last <= 8'h0;
      ph_vld_dly1 <= 1'b0;
      res_last <= 10'h0;
      res_last_vld <= 1'b0;
    end else begin
      ph_vld_dly1 <= ph_vld;
      if(ph_vld)begin
        ph_last <= ph_now;
        ph_now <= ph_cal;
      end
      res_last_vld <= ph_vld_dly1;
      if(ph_vld_dly1)begin
        LastA2stZero <= psum_out2[15];
        if(AbsGtPi)begin
          if(LastA2stZero)begin
            res_last <= ($signed(_zz_9) - $signed(_zz_10));
          end else begin
            res_last <= ($signed(_zz_11) + $signed(_zz_12));
          end
        end else begin
          res_last <= {{1{ph_delta[8]}}, ph_delta};
        end
      end
    end
  end


endmodule

module cordic_int (
  input               en,
  input               vld,
  input      [15:0]   y,
  input      [15:0]   x,
  output     [7:0]    res,
  output              res_vld,
  input               clk,
  input               reset
);
  wire       [2:0]    _zz_5;
  wire       [2:0]    _zz_6;
  wire       [7:0]    _zz_7;
  wire       [2:0]    _zz_8;
  wire       [15:0]   _zz_9;
  wire       [15:0]   _zz_10;
  wire       [15:0]   _zz_11;
  wire       [15:0]   _zz_12;
  wire       [21:0]   _zz_13;
  reg        [21:0]   xn;
  reg        [21:0]   yn;
  reg        [7:0]    res_rg;
  wire       [21:0]   x_ext;
  wire       [21:0]   y_ext;
  wire       [21:0]   x_ins;
  wire       [21:0]   y_ins;
  wire                _zz_1;
  reg        [1:0]    _zz_2;
  wire                _zz_3;
  reg        [1:0]    _zz_4;
  reg        [2:0]    cal_cnt;
  reg                 cal_en;
  wire                cal_start;
  wire                cal_finish;
  reg                 finish;
  reg                 nozero_flg;
  wire       [21:0]   xn_rightshift;
  wire       [21:0]   yn_rightshift;
  wire       [7:0]    res_bias;

  assign _zz_5 = (cal_cnt - 3'b001);
  assign _zz_6 = (cal_cnt - 3'b001);
  assign _zz_7 = 8'h01;
  assign _zz_8 = (3'b101 - cal_cnt);
  assign _zz_9 = (x | y);
  assign _zz_10 = 16'h0;
  assign _zz_11 = 16'h0;
  assign _zz_12 = 16'h0;
  assign _zz_13 = 22'h0;
  assign _zz_1 = x[15];
  always @ (*) begin
    _zz_2[1] = _zz_1;
    _zz_2[0] = _zz_1;
  end

  assign x_ext = {{_zz_2,x},4'b0000};
  assign _zz_3 = y[15];
  always @ (*) begin
    _zz_4[1] = _zz_3;
    _zz_4[0] = _zz_3;
  end

  assign y_ext = {{_zz_4,y},4'b0000};
  assign x_ins = (- x_ext);
  assign y_ins = (- y_ext);
  assign cal_start = (cal_cnt == 3'b000);
  assign cal_finish = (cal_cnt == 3'b101);
  assign xn_rightshift = ($signed(xn) >>> _zz_5);
  assign yn_rightshift = ($signed(yn) >>> _zz_6);
  assign res_bias = ($signed(_zz_7) <<< _zz_8);
  assign res = res_rg;
  assign res_vld = finish;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      xn <= 22'h0;
      yn <= 22'h0;
      res_rg <= 8'h0;
      cal_cnt <= 3'b000;
      cal_en <= 1'b0;
      finish <= 1'b0;
      nozero_flg <= 1'b1;
    end else begin
      if(en)begin
        if(vld)begin
          cal_en <= 1'b1;
        end else begin
          if(cal_finish)begin
            cal_en <= 1'b0;
          end
        end
      end else begin
        cal_en <= 1'b0;
      end
      if(cal_en)begin
        cal_cnt <= (cal_cnt + 3'b001);
        nozero_flg <= 1'b1;
        if(cal_start)begin
          if(($signed(_zz_9) == $signed(_zz_10)))begin
            res_rg <= 8'h0;
            nozero_flg <= 1'b0;
          end else begin
            if(($signed(_zz_11) < $signed(x)))begin
              xn <= x_ext;
              yn <= y_ext;
              res_rg <= 8'h0;
            end else begin
              if(($signed(y) < $signed(_zz_12)))begin
                xn <= x_ins;
                yn <= y_ins;
                res_rg <= 8'hc0;
              end else begin
                xn <= x_ins;
                yn <= y_ins;
                res_rg <= 8'h40;
              end
            end
          end
        end else begin
          if(nozero_flg)begin
            if(($signed(yn) < $signed(_zz_13)))begin
              xn <= ($signed(xn) - $signed(yn_rightshift));
              yn <= ($signed(yn) + $signed(xn_rightshift));
              res_rg <= ($signed(res_rg) - $signed(res_bias));
            end else begin
              xn <= ($signed(xn) + $signed(yn_rightshift));
              yn <= ($signed(yn) - $signed(xn_rightshift));
              res_rg <= ($signed(res_rg) + $signed(res_bias));
            end
          end
        end
      end else begin
        cal_cnt <= 3'b000;
      end
      if(en)begin
        finish <= cal_finish;
      end else begin
        finish <= 1'b0;
      end
    end
  end


endmodule

module dotVn (
  input               en,
  input               vn_vld,
  input      [7:0]    vn_in_0,
  input      [7:0]    vn_in_1,
  input      [7:0]    vn_in_2,
  input      [7:0]    vn_in_3,
  input      [7:0]    vn_in_4,
  input      [7:0]    vn_in_5,
  input      [7:0]    vn_in_6,
  input      [7:0]    vn_in_7,
  output     [15:0]   psum_out1,
  output     [15:0]   psum_out2,
  output              psum_vld,
  input               clk,
  input               reset
);
  wire       [7:0]    _zz_1;
  wire       [16:0]   _zz_2;
  wire       [16:0]   _zz_3;
  reg        [7:0]    _zz_4;
  wire       [18:0]   table_1_s1;
  wire       [18:0]   table_1_s2;
  wire       [15:0]   FloorWrapPsum1_dout;
  wire       [15:0]   FloorWrapPsum2_dout;
  wire       [16:0]   _zz_5;
  wire       [16:0]   _zz_6;
  wire       [18:0]   s1;
  wire       [18:0]   s2;
  reg        [18:0]   psum1;
  reg        [18:0]   psum2;
  reg        [2:0]    mac_cnt;
  reg                 mac_en;
  wire                mac_start;
  wire                mac_finish;
  reg                 finish;

  assign _zz_5 = (psum1 >>> 2);
  assign _zz_6 = (psum2 >>> 2);
  s_table table_1 (
    .index    (mac_cnt[2:0]      ), //i
    .din      (_zz_1[7:0]        ), //i
    .s1       (table_1_s1[18:0]  ), //o
    .s2       (table_1_s2[18:0]  )  //o
  );
  FloorAndWrap_8 FloorWrapPsum1 (
    .din     (_zz_2[16:0]                ), //i
    .dout    (FloorWrapPsum1_dout[15:0]  )  //o
  );
  FloorAndWrap_8 FloorWrapPsum2 (
    .din     (_zz_3[16:0]                ), //i
    .dout    (FloorWrapPsum2_dout[15:0]  )  //o
  );
  always @(*) begin
    case(mac_cnt)
      3'b000 : begin
        _zz_4 = vn_in_0;
      end
      3'b001 : begin
        _zz_4 = vn_in_1;
      end
      3'b010 : begin
        _zz_4 = vn_in_2;
      end
      3'b011 : begin
        _zz_4 = vn_in_3;
      end
      3'b100 : begin
        _zz_4 = vn_in_4;
      end
      3'b101 : begin
        _zz_4 = vn_in_5;
      end
      3'b110 : begin
        _zz_4 = vn_in_6;
      end
      default : begin
        _zz_4 = vn_in_7;
      end
    endcase
  end

  assign mac_start = (mac_cnt == 3'b000);
  assign mac_finish = (mac_cnt == 3'b111);
  assign _zz_1 = _zz_4;
  assign s1 = table_1_s1;
  assign s2 = table_1_s2;
  assign _zz_2 = _zz_5;
  assign psum_out1 = FloorWrapPsum1_dout;
  assign _zz_3 = _zz_6;
  assign psum_out2 = FloorWrapPsum2_dout;
  assign psum_vld = finish;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      psum1 <= 19'h0;
      psum2 <= 19'h0;
      mac_cnt <= 3'b000;
      mac_en <= 1'b0;
    end else begin
      if(en)begin
        if(vn_vld)begin
          mac_en <= 1'b1;
        end else begin
          if(mac_finish)begin
            mac_en <= 1'b0;
          end
        end
      end else begin
        mac_en <= 1'b0;
      end
      if(mac_en)begin
        mac_cnt <= (mac_cnt + 3'b001);
        if(mac_start)begin
          psum1 <= s1;
          psum2 <= s2;
        end else begin
          psum1 <= ($signed(psum1) + $signed(s1));
          psum2 <= ($signed(psum2) + $signed(s2));
        end
      end else begin
        mac_cnt <= 3'b000;
      end
    end
  end

  always @ (posedge clk) begin
    if(en)begin
      finish <= (mac_finish && mac_en);
    end else begin
      finish <= 1'b0;
    end
  end


endmodule

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
  input               reset
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
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
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

//FloorAndWrap_8 replaced by FloorAndWrap_8

module FloorAndWrap_8 (
  input      [16:0]   din,
  output     [15:0]   dout
);
  wire       [16:0]   _zz_1;
  wire       [15:0]   dataOut;

  assign _zz_1 = din;
  assign dataOut = _zz_1[15 : 0];
  assign dout = dataOut;

endmodule

module s_table (
  input      [2:0]    index,
  input      [7:0]    din,
  output reg [18:0]   s1,
  output reg [18:0]   s2
);
  wire       [16:0]   _zz_11;
  wire       [16:0]   _zz_12;
  wire       [17:0]   _zz_13;
  wire       [16:0]   _zz_14;
  wire       [17:0]   _zz_15;
  wire       [16:0]   _zz_16;
  wire       [16:0]   _zz_17;
  wire       [16:0]   _zz_18;
  wire       [18:0]   _zz_19;
  wire       [18:0]   _zz_20;
  wire       [16:0]   _zz_21;
  wire       [18:0]   _zz_22;
  wire       [16:0]   _zz_23;
  wire       [16:0]   _zz_24;
  wire       [16:0]   _zz_25;
  wire       [16:0]   _zz_26;
  wire       [16:0]   _zz_27;
  wire       [17:0]   _zz_28;
  wire       [17:0]   _zz_29;
  wire       [16:0]   _zz_30;
  wire       [17:0]   _zz_31;
  wire       [19:0]   _zz_32;
  wire       [19:0]   _zz_33;
  wire       [16:0]   _zz_34;
  wire       [19:0]   _zz_35;
  wire       [17:0]   _zz_36;
  wire       [15:0]   _zz_37;
  wire       [19:0]   _zz_38;
  wire       [19:0]   _zz_39;
  wire       [16:0]   _zz_40;
  wire       [19:0]   _zz_41;
  wire       [18:0]   S_table_0;
  wire       [18:0]   S_table_1;
  wire       [18:0]   S_table_2;
  wire       [18:0]   S_table_3;
  wire       [18:0]   S_table_4;
  wire       [18:0]   S_table_5;
  wire       [18:0]   S_table_6;
  wire       [18:0]   S_table_7;
  wire       [15:0]   m128;
  wire       [15:0]   m32;
  wire       [15:0]   m16;
  wire       [15:0]   m8;
  wire       [15:0]   m4;
  wire       [15:0]   m2;
  wire       [15:0]   m1;
  wire                din_msb;
  reg        [6:0]    _zz_1;
  reg        [4:0]    _zz_2;
  reg        [3:0]    _zz_3;
  reg        [2:0]    _zz_4;
  reg        [1:0]    _zz_5;
  wire       [0:0]    _zz_6;
  wire       [17:0]   tmp1;
  wire       [16:0]   _zz_7;
  wire       [18:0]   Coef12;
  wire       [18:0]   Coef99;
  wire       [18:0]   Coef127;
  wire       [18:0]   Coef81;
  wire       [18:0]   Coefm13;
  wire       [18:0]   Coefm100;
  wire       [18:0]   Coefm128;
  wire       [18:0]   Coefm82;
  wire       [16:0]   _zz_8;
  wire       [18:0]   _zz_9;
  wire       [18:0]   _zz_10;

  assign _zz_11 = {m2[15],m2};
  assign _zz_12 = {m4[15],m4};
  assign _zz_13 = {_zz_7[16],_zz_7};
  assign _zz_14 = {m32[15],m32};
  assign _zz_15 = {{1{_zz_14[16]}}, _zz_14};
  assign _zz_16 = ($signed(_zz_17) + $signed(_zz_18));
  assign _zz_17 = {m32[15],m32};
  assign _zz_18 = {m16[15],m16};
  assign _zz_19 = ($signed(_zz_20) - $signed(_zz_22));
  assign _zz_20 = {tmp1[17],tmp1};
  assign _zz_21 = {m128[15],m128};
  assign _zz_22 = {{2{_zz_21[16]}}, _zz_21};
  assign _zz_23 = ($signed(_zz_24) - $signed(_zz_25));
  assign _zz_24 = {m1[15],m1};
  assign _zz_25 = {m128[15],m128};
  assign _zz_26 = {m2[15],m2};
  assign _zz_27 = {m8[15],m8};
  assign _zz_28 = ($signed(_zz_29) + $signed(_zz_31));
  assign _zz_29 = {_zz_8[16],_zz_8};
  assign _zz_30 = {m128[15],m128};
  assign _zz_31 = {{1{_zz_30[16]}}, _zz_30};
  assign _zz_32 = ($signed(_zz_33) - $signed(_zz_35));
  assign _zz_33 = {_zz_9[18],_zz_9};
  assign _zz_34 = {m128[15],m128};
  assign _zz_35 = {{3{_zz_34[16]}}, _zz_34};
  assign _zz_36 = (- tmp1);
  assign _zz_37 = (- m1);
  assign _zz_38 = ($signed(_zz_39) - $signed(_zz_41));
  assign _zz_39 = {_zz_10[18],_zz_10};
  assign _zz_40 = {m128[15],m128};
  assign _zz_41 = {{3{_zz_40[16]}}, _zz_40};
  assign din_msb = din[7];
  always @ (*) begin
    _zz_1[6] = din_msb;
    _zz_1[5] = din_msb;
    _zz_1[4] = din_msb;
    _zz_1[3] = din_msb;
    _zz_1[2] = din_msb;
    _zz_1[1] = din_msb;
    _zz_1[0] = din_msb;
  end

  assign m128 = {{_zz_1,din},1'b0};
  always @ (*) begin
    _zz_2[4] = din_msb;
    _zz_2[3] = din_msb;
    _zz_2[2] = din_msb;
    _zz_2[1] = din_msb;
    _zz_2[0] = din_msb;
  end

  assign m32 = {{_zz_2,din},3'b000};
  always @ (*) begin
    _zz_3[3] = din_msb;
    _zz_3[2] = din_msb;
    _zz_3[1] = din_msb;
    _zz_3[0] = din_msb;
  end

  assign m16 = {{_zz_3,din},4'b0000};
  always @ (*) begin
    _zz_4[2] = din_msb;
    _zz_4[1] = din_msb;
    _zz_4[0] = din_msb;
  end

  assign m8 = {{_zz_4,din},5'h0};
  always @ (*) begin
    _zz_5[1] = din_msb;
    _zz_5[0] = din_msb;
  end

  assign m4 = {{_zz_5,din},6'h0};
  assign _zz_6[0] = din_msb;
  assign m2 = {{_zz_6,din},7'h0};
  assign m1 = {din,8'h0};
  assign _zz_7 = ($signed(_zz_11) + $signed(_zz_12));
  assign tmp1 = ($signed(_zz_13) + $signed(_zz_15));
  assign Coef12 = {{2{_zz_16[16]}}, _zz_16};
  assign Coef99 = _zz_19;
  assign Coef127 = {{2{_zz_23[16]}}, _zz_23};
  assign _zz_8 = ($signed(_zz_26) + $signed(_zz_27));
  assign Coef81 = {{1{_zz_28[17]}}, _zz_28};
  assign _zz_9 = (- Coef12);
  assign Coefm13 = _zz_32[18:0];
  assign Coefm100 = {{1{_zz_36[17]}}, _zz_36};
  assign Coefm128 = {{3{_zz_37[15]}}, _zz_37};
  assign _zz_10 = (- Coef81);
  assign Coefm82 = _zz_38[18:0];
  always @ (*) begin
    case(index)
      3'b000 : begin
        s1 = Coef12;
      end
      3'b001 : begin
        s1 = Coef99;
      end
      3'b010 : begin
        s1 = Coef127;
      end
      3'b011 : begin
        s1 = Coef81;
      end
      3'b100 : begin
        s1 = Coefm13;
      end
      3'b101 : begin
        s1 = Coefm100;
      end
      3'b110 : begin
        s1 = Coefm128;
      end
      default : begin
        s1 = Coefm82;
      end
    endcase
  end

  always @ (*) begin
    case(index)
      3'b000 : begin
        s2 = Coef127;
      end
      3'b001 : begin
        s2 = Coef81;
      end
      3'b010 : begin
        s2 = Coefm13;
      end
      3'b011 : begin
        s2 = Coefm100;
      end
      3'b100 : begin
        s2 = Coefm128;
      end
      3'b101 : begin
        s2 = Coefm82;
      end
      3'b110 : begin
        s2 = Coef12;
      end
      default : begin
        s2 = Coef99;
      end
    endcase
  end


endmodule

//FloorAndWrap replaced by FloorAndWrap

//FloorAndWrap replaced by FloorAndWrap

//FloorAndWrap replaced by FloorAndWrap

//FloorAndWrap replaced by FloorAndWrap

//FloorAndWrap replaced by FloorAndWrap

//FloorAndWrap replaced by FloorAndWrap

//FloorAndWrap replaced by FloorAndWrap

module FloorAndWrap (
  input      [11:0]   din,
  output     [7:0]    dout
);
  wire       [8:0]    _zz_1;
  wire       [11:0]   _zz_2;
  wire       [7:0]    dataOut;

  assign _zz_1 = (_zz_2 >>> 3);
  assign _zz_2 = din;
  assign dataOut = _zz_1[7 : 0];
  assign dout = dataOut;

endmodule
