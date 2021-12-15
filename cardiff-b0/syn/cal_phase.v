// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : cal_phase
// Git hash  : 09ea9d4f94094b8d5eb0b1619e98b47bd4969cc0



module cal_phase (
  input               rg_calphase_en,
  input               rg_bypass_mean,
  input      [2:0]    rg_cordic_iternum,
  input      [7:0]    rg_leakage_table_0,
  input      [7:0]    rg_leakage_table_1,
  input      [7:0]    rg_leakage_table_2,
  input      [7:0]    rg_leakage_table_3,
  input      [7:0]    rg_leakage_table_4,
  input      [7:0]    rg_leakage_table_5,
  input      [7:0]    rg_leakage_table_6,
  input      [7:0]    rg_leakage_table_7,
  input      [7:0]    rg_sin_table_0,
  input      [7:0]    rg_sin_table_1,
  input      [7:0]    rg_sin_table_2,
  input      [7:0]    rg_sin_table_3,
  input      [7:0]    rg_sin_table_4,
  input      [7:0]    rg_sin_table_5,
  input      [7:0]    rg_sin_table_6,
  input      [7:0]    rg_sin_table_7,
  input      [7:0]    rg_cos_table_0,
  input      [7:0]    rg_cos_table_1,
  input      [7:0]    rg_cos_table_2,
  input      [7:0]    rg_cos_table_3,
  input      [7:0]    rg_cos_table_4,
  input      [7:0]    rg_cos_table_5,
  input      [7:0]    rg_cos_table_6,
  input      [7:0]    rg_cos_table_7,
  input      [2:0]    valid_num,
  input               vin_vld,
  input      [7:0]    vin1,
  input      [7:0]    vin2,
  output              phase_vld,
  output     [7:0]    phase,
  input               clk,
  input               resetn
);
  wire       [7:0]    calvn_mean;
  wire       [7:0]    calvn_vn_0;
  wire       [7:0]    calvn_vn_1;
  wire       [7:0]    calvn_vn_2;
  wire       [7:0]    calvn_vn_3;
  wire       [7:0]    calvn_vn_4;
  wire       [7:0]    calvn_vn_5;
  wire       [7:0]    calvn_vn_6;
  wire       [7:0]    calvn_vn_7;
  wire                calvn_finish_1;
  wire       [15:0]   dot_psum_out1;
  wire       [15:0]   dot_psum_out2;
  wire                dot_psum_vld;
  wire       [7:0]    cordic_res;
  wire                cordic_res_vld;
  wire       [7:0]    mean;
  wire                calvn_finish;
  wire       [7:0]    vn_0;
  wire       [7:0]    vn_1;
  wire       [7:0]    vn_2;
  wire       [7:0]    vn_3;
  wire       [7:0]    vn_4;
  wire       [7:0]    vn_5;
  wire       [7:0]    vn_6;
  wire       [7:0]    vn_7;
  wire       [15:0]   psum_out1;
  wire       [15:0]   psum_out2;
  wire                psum_vld;
  wire                ph_vld;
  wire       [7:0]    ph_cal;

  cal_vn calvn (
    .en                    (rg_calphase_en           ), //i
    .rg_bypass_mean        (rg_bypass_mean           ), //i
    .valid_num             (valid_num[2:0]           ), //i
    .vin_vld               (vin_vld                  ), //i
    .vin1                  (vin1[7:0]                ), //i
    .vin2                  (vin2[7:0]                ), //i
    .rg_leakage_table_0    (rg_leakage_table_0[7:0]  ), //i
    .rg_leakage_table_1    (rg_leakage_table_1[7:0]  ), //i
    .rg_leakage_table_2    (rg_leakage_table_2[7:0]  ), //i
    .rg_leakage_table_3    (rg_leakage_table_3[7:0]  ), //i
    .rg_leakage_table_4    (rg_leakage_table_4[7:0]  ), //i
    .rg_leakage_table_5    (rg_leakage_table_5[7:0]  ), //i
    .rg_leakage_table_6    (rg_leakage_table_6[7:0]  ), //i
    .rg_leakage_table_7    (rg_leakage_table_7[7:0]  ), //i
    .mean                  (calvn_mean[7:0]          ), //o
    .vn_0                  (calvn_vn_0[7:0]          ), //o
    .vn_1                  (calvn_vn_1[7:0]          ), //o
    .vn_2                  (calvn_vn_2[7:0]          ), //o
    .vn_3                  (calvn_vn_3[7:0]          ), //o
    .vn_4                  (calvn_vn_4[7:0]          ), //o
    .vn_5                  (calvn_vn_5[7:0]          ), //o
    .vn_6                  (calvn_vn_6[7:0]          ), //o
    .vn_7                  (calvn_vn_7[7:0]          ), //o
    .finish                (calvn_finish_1           ), //o
    .clk                   (clk                      ), //i
    .resetn                (resetn                   )  //i
  );
  dotVn_2 dot (
    .en                (rg_calphase_en       ), //i
    .rg_bypass_mean    (rg_bypass_mean       ), //i
    .rg_sin_table_0    (rg_sin_table_0[7:0]  ), //i
    .rg_sin_table_1    (rg_sin_table_1[7:0]  ), //i
    .rg_sin_table_2    (rg_sin_table_2[7:0]  ), //i
    .rg_sin_table_3    (rg_sin_table_3[7:0]  ), //i
    .rg_sin_table_4    (rg_sin_table_4[7:0]  ), //i
    .rg_sin_table_5    (rg_sin_table_5[7:0]  ), //i
    .rg_sin_table_6    (rg_sin_table_6[7:0]  ), //i
    .rg_sin_table_7    (rg_sin_table_7[7:0]  ), //i
    .rg_cos_table_0    (rg_cos_table_0[7:0]  ), //i
    .rg_cos_table_1    (rg_cos_table_1[7:0]  ), //i
    .rg_cos_table_2    (rg_cos_table_2[7:0]  ), //i
    .rg_cos_table_3    (rg_cos_table_3[7:0]  ), //i
    .rg_cos_table_4    (rg_cos_table_4[7:0]  ), //i
    .rg_cos_table_5    (rg_cos_table_5[7:0]  ), //i
    .rg_cos_table_6    (rg_cos_table_6[7:0]  ), //i
    .rg_cos_table_7    (rg_cos_table_7[7:0]  ), //i
    .vn_vld            (calvn_finish         ), //i
    .vn_in_0           (vn_0[7:0]            ), //i
    .vn_in_1           (vn_1[7:0]            ), //i
    .vn_in_2           (vn_2[7:0]            ), //i
    .vn_in_3           (vn_3[7:0]            ), //i
    .vn_in_4           (vn_4[7:0]            ), //i
    .vn_in_5           (vn_5[7:0]            ), //i
    .vn_in_6           (vn_6[7:0]            ), //i
    .vn_in_7           (vn_7[7:0]            ), //i
    .psum_out1         (dot_psum_out1[15:0]  ), //o
    .psum_out2         (dot_psum_out2[15:0]  ), //o
    .psum_vld          (dot_psum_vld         ), //o
    .valid_num         (valid_num[2:0]       ), //i
    .mean              (mean[7:0]            ), //i
    .clk               (clk                  ), //i
    .resetn            (resetn               )  //i
  );
  cordic_int cordic (
    .en                   (rg_calphase_en          ), //i
    .rg_cordic_iternum    (rg_cordic_iternum[2:0]  ), //i
    .vld                  (psum_vld                ), //i
    .y                    (psum_out2[15:0]         ), //i
    .x                    (psum_out1[15:0]         ), //i
    .res                  (cordic_res[7:0]         ), //o
    .res_vld              (cordic_res_vld          ), //o
    .clk                  (clk                     ), //i
    .resetn               (resetn                  )  //i
  );
  assign mean = calvn_mean;
  assign vn_0 = calvn_vn_0;
  assign vn_1 = calvn_vn_1;
  assign vn_2 = calvn_vn_2;
  assign vn_3 = calvn_vn_3;
  assign vn_4 = calvn_vn_4;
  assign vn_5 = calvn_vn_5;
  assign vn_6 = calvn_vn_6;
  assign vn_7 = calvn_vn_7;
  assign calvn_finish = calvn_finish_1;
  assign psum_out1 = dot_psum_out1;
  assign psum_out2 = dot_psum_out2;
  assign psum_vld = dot_psum_vld;
  assign ph_cal = cordic_res;
  assign ph_vld = cordic_res_vld;
  assign phase = ph_cal;
  assign phase_vld = ph_vld;

endmodule

module cordic_int (
  input               en,
  input      [2:0]    rg_cordic_iternum,
  input               vld,
  input      [15:0]   y,
  input      [15:0]   x,
  output     [7:0]    res,
  output              res_vld,
  input               clk,
  input               resetn
);
  reg        [6:0]    _zz_7;
  wire       [15:0]   _zz_8;
  wire       [15:0]   _zz_9;
  wire       [15:0]   _zz_10;
  wire       [15:0]   _zz_11;
  wire       [18:0]   _zz_12;
  wire       [8:0]    _zz_13;
  wire       [8:0]    _zz_14;
  wire       [1:0]    _zz_15;
  wire       [0:0]    _zz_16;
  wire       [6:0]    KAngle_0;
  wire       [6:0]    KAngle_1;
  wire       [6:0]    KAngle_2;
  wire       [6:0]    KAngle_3;
  wire       [6:0]    KAngle_4;
  wire       [6:0]    KAngle_5;
  wire       [6:0]    KAngle_6;
  reg        [18:0]   xn;
  reg        [18:0]   yn;
  reg        [8:0]    res_rg;
  wire       [18:0]   x_ext;
  wire       [18:0]   y_ext;
  wire       [18:0]   x_ins;
  wire       [18:0]   y_ins;
  wire                _zz_1;
  reg        [2:0]    _zz_2;
  wire                _zz_3;
  reg        [2:0]    _zz_4;
  reg        [2:0]    cal_cnt;
  reg                 cal_en;
  wire                cal_start;
  wire                cal_finish;
  reg                 finish;
  reg                 nozero_flg;
  reg                 cal_en_regNext;
  wire       [18:0]   xn_rightshift;
  wire       [18:0]   yn_rightshift;
  wire       [7:0]    res_bias;
  wire       [6:0]    _zz_5;
  reg        [7:0]    _zz_6;

  assign _zz_8 = (x | y);
  assign _zz_9 = 16'h0;
  assign _zz_10 = 16'h0;
  assign _zz_11 = 16'h0;
  assign _zz_12 = 19'h0;
  assign _zz_13 = {{2{_zz_5[6]}}, _zz_5};
  assign _zz_14 = {{2{_zz_5[6]}}, _zz_5};
  assign _zz_15 = res_rg[8 : 7];
  assign _zz_16 = res_rg[7 : 7];
  always @(*) begin
    case(cal_cnt)
      3'b000 : begin
        _zz_7 = KAngle_0;
      end
      3'b001 : begin
        _zz_7 = KAngle_1;
      end
      3'b010 : begin
        _zz_7 = KAngle_2;
      end
      3'b011 : begin
        _zz_7 = KAngle_3;
      end
      3'b100 : begin
        _zz_7 = KAngle_4;
      end
      3'b101 : begin
        _zz_7 = KAngle_5;
      end
      default : begin
        _zz_7 = KAngle_6;
      end
    endcase
  end

  assign KAngle_0 = 7'h20;
  assign KAngle_1 = 7'h13;
  assign KAngle_2 = 7'h0a;
  assign KAngle_3 = 7'h05;
  assign KAngle_4 = 7'h03;
  assign KAngle_5 = 7'h01;
  assign KAngle_6 = 7'h01;
  assign _zz_1 = x[15];
  always @ (*) begin
    _zz_2[2] = _zz_1;
    _zz_2[1] = _zz_1;
    _zz_2[0] = _zz_1;
  end

  assign x_ext = {_zz_2,x};
  assign _zz_3 = y[15];
  always @ (*) begin
    _zz_4[2] = _zz_3;
    _zz_4[1] = _zz_3;
    _zz_4[0] = _zz_3;
  end

  assign y_ext = {_zz_4,y};
  assign x_ins = (- x_ext);
  assign y_ins = (- y_ext);
  assign cal_start = (cal_en && (! cal_en_regNext));
  assign cal_finish = (cal_cnt == rg_cordic_iternum);
  assign xn_rightshift = ($signed(xn) >>> cal_cnt);
  assign yn_rightshift = ($signed(yn) >>> cal_cnt);
  assign _zz_5 = _zz_7;
  always @ (*) begin
    if(res_rg[8])begin
      if((! (_zz_15 == 2'b11)))begin
        _zz_6 = 8'h80;
      end else begin
        _zz_6 = res_rg[7 : 0];
      end
    end else begin
      if((_zz_16 != 1'b0))begin
        _zz_6 = 8'h7f;
      end else begin
        _zz_6 = res_rg[7 : 0];
      end
    end
  end

  assign res = _zz_6;
  assign res_vld = finish;
  always @ (posedge clk or negedge resetn) begin
    if (!resetn) begin
      xn <= 19'h0;
      yn <= 19'h0;
      res_rg <= 9'h0;
      cal_cnt <= 3'b000;
      cal_en <= 1'b0;
      finish <= 1'b0;
      nozero_flg <= 1'b1;
      cal_en_regNext <= 1'b0;
    end else begin
      cal_en_regNext <= cal_en;
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
        nozero_flg <= 1'b1;
        if(cal_start)begin
          cal_cnt <= 3'b000;
          if(($signed(_zz_8) == $signed(_zz_9)))begin
            res_rg <= 9'h0;
            nozero_flg <= 1'b0;
          end else begin
            if(($signed(x) < $signed(_zz_10)))begin
              if(($signed(y) < $signed(_zz_11)))begin
                xn <= y_ins;
                yn <= xn;
                res_rg <= 9'h1c0;
              end else begin
                xn <= yn;
                yn <= x_ins;
                res_rg <= 9'h040;
              end
            end
          end
        end else begin
          if(nozero_flg)begin
            cal_cnt <= (cal_cnt + 3'b001);
            if(($signed(yn) < $signed(_zz_12)))begin
              xn <= ($signed(xn) - $signed(yn_rightshift));
              yn <= ($signed(yn) + $signed(xn_rightshift));
              res_rg <= ($signed(res_rg) - $signed(_zz_13));
            end else begin
              xn <= ($signed(xn) + $signed(yn_rightshift));
              yn <= ($signed(yn) - $signed(xn_rightshift));
              res_rg <= ($signed(res_rg) + $signed(_zz_14));
            end
          end
        end
      end
      if(en)begin
        finish <= cal_finish;
      end else begin
        finish <= 1'b0;
      end
    end
  end


endmodule

module dotVn_2 (
  input               en,
  input               rg_bypass_mean,
  input      [7:0]    rg_sin_table_0,
  input      [7:0]    rg_sin_table_1,
  input      [7:0]    rg_sin_table_2,
  input      [7:0]    rg_sin_table_3,
  input      [7:0]    rg_sin_table_4,
  input      [7:0]    rg_sin_table_5,
  input      [7:0]    rg_sin_table_6,
  input      [7:0]    rg_sin_table_7,
  input      [7:0]    rg_cos_table_0,
  input      [7:0]    rg_cos_table_1,
  input      [7:0]    rg_cos_table_2,
  input      [7:0]    rg_cos_table_3,
  input      [7:0]    rg_cos_table_4,
  input      [7:0]    rg_cos_table_5,
  input      [7:0]    rg_cos_table_6,
  input      [7:0]    rg_cos_table_7,
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
  input      [2:0]    valid_num,
  input      [7:0]    mean,
  input               clk,
  input               resetn
);
  reg        [7:0]    _zz_4;
  reg        [7:0]    _zz_5;
  reg        [7:0]    _zz_6;
  wire       [2:0]    _zz_7;
  wire       [13:0]   _zz_8;
  wire       [13:0]   _zz_9;
  wire       [3:0]    _zz_10;
  wire       [2:0]    _zz_11;
  wire       [3:0]    _zz_12;
  wire       [2:0]    _zz_13;
  wire       [15:0]   product1;
  wire       [15:0]   product2;
  wire       [18:0]   s1;
  wire       [18:0]   s2;
  reg        [18:0]   psum1;
  reg        [18:0]   psum2;
  wire       [7:0]    vin_true_in;
  wire       [7:0]    vin_minus_mean;
  reg        [2:0]    mac_cnt;
  reg                 mac_en;
  wire                mac_start;
  wire                mac_finish;
  reg                 finish;
  wire       [7:0]    _zz_1;
  reg        [15:0]   _zz_2;
  reg        [15:0]   _zz_3;

  assign _zz_7 = (valid_num - 3'b001);
  assign _zz_8 = (product1 >>> 2);
  assign _zz_9 = (product2 >>> 2);
  assign _zz_10 = psum1[18 : 15];
  assign _zz_11 = psum1[17 : 15];
  assign _zz_12 = psum2[18 : 15];
  assign _zz_13 = psum2[17 : 15];
  always @(*) begin
    case(mac_cnt)
      3'b000 : begin
        _zz_4 = vn_in_0;
        _zz_5 = rg_sin_table_0;
        _zz_6 = rg_cos_table_0;
      end
      3'b001 : begin
        _zz_4 = vn_in_1;
        _zz_5 = rg_sin_table_1;
        _zz_6 = rg_cos_table_1;
      end
      3'b010 : begin
        _zz_4 = vn_in_2;
        _zz_5 = rg_sin_table_2;
        _zz_6 = rg_cos_table_2;
      end
      3'b011 : begin
        _zz_4 = vn_in_3;
        _zz_5 = rg_sin_table_3;
        _zz_6 = rg_cos_table_3;
      end
      3'b100 : begin
        _zz_4 = vn_in_4;
        _zz_5 = rg_sin_table_4;
        _zz_6 = rg_cos_table_4;
      end
      3'b101 : begin
        _zz_4 = vn_in_5;
        _zz_5 = rg_sin_table_5;
        _zz_6 = rg_cos_table_5;
      end
      3'b110 : begin
        _zz_4 = vn_in_6;
        _zz_5 = rg_sin_table_6;
        _zz_6 = rg_cos_table_6;
      end
      default : begin
        _zz_4 = vn_in_7;
        _zz_5 = rg_sin_table_7;
        _zz_6 = rg_cos_table_7;
      end
    endcase
  end

  assign _zz_1 = _zz_4;
  assign vin_minus_mean = ($signed(_zz_1) - $signed(mean));
  assign vin_true_in = (rg_bypass_mean ? vin_minus_mean : _zz_1);
  assign mac_start = (mac_cnt == 3'b000);
  assign mac_finish = (mac_cnt == _zz_7);
  assign product1 = ($signed(vin_true_in) * $signed(_zz_5));
  assign product2 = ($signed(vin_true_in) * $signed(_zz_6));
  assign s1 = {{5{_zz_8[13]}}, _zz_8};
  assign s2 = {{5{_zz_9[13]}}, _zz_9};
  always @ (*) begin
    if(psum1[18])begin
      if((! (_zz_10 == 4'b1111)))begin
        _zz_2 = 16'h8000;
      end else begin
        _zz_2 = psum1[15 : 0];
      end
    end else begin
      if((_zz_11 != 3'b000))begin
        _zz_2 = 16'h7fff;
      end else begin
        _zz_2 = psum1[15 : 0];
      end
    end
  end

  assign psum_out1 = _zz_2;
  always @ (*) begin
    if(psum2[18])begin
      if((! (_zz_12 == 4'b1111)))begin
        _zz_3 = 16'h8000;
      end else begin
        _zz_3 = psum2[15 : 0];
      end
    end else begin
      if((_zz_13 != 3'b000))begin
        _zz_3 = 16'h7fff;
      end else begin
        _zz_3 = psum2[15 : 0];
      end
    end
  end

  assign psum_out2 = _zz_3;
  assign psum_vld = finish;
  always @ (posedge clk or negedge resetn) begin
    if (!resetn) begin
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
  input               rg_bypass_mean,
  input      [2:0]    valid_num,
  input               vin_vld,
  input      [7:0]    vin1,
  input      [7:0]    vin2,
  input      [7:0]    rg_leakage_table_0,
  input      [7:0]    rg_leakage_table_1,
  input      [7:0]    rg_leakage_table_2,
  input      [7:0]    rg_leakage_table_3,
  input      [7:0]    rg_leakage_table_4,
  input      [7:0]    rg_leakage_table_5,
  input      [7:0]    rg_leakage_table_6,
  input      [7:0]    rg_leakage_table_7,
  output     [7:0]    mean,
  output     [7:0]    vn_0,
  output     [7:0]    vn_1,
  output     [7:0]    vn_2,
  output     [7:0]    vn_3,
  output     [7:0]    vn_4,
  output     [7:0]    vn_5,
  output     [7:0]    vn_6,
  output     [7:0]    vn_7,
  output              finish,
  input               clk,
  input               resetn
);
  reg        [7:0]    _zz_11;
  reg        [7:0]    _zz_12;
  wire       [2:0]    _zz_13;
  wire       [8:0]    _zz_14;
  wire       [8:0]    _zz_15;
  wire       [8:0]    _zz_16;
  wire       [1:0]    _zz_17;
  wire       [0:0]    _zz_18;
  wire       [2:0]    _zz_19;
  wire       [2:0]    _zz_20;
  wire       [8:0]    _zz_21;
  wire       [8:0]    _zz_22;
  wire       [1:0]    _zz_23;
  wire       [0:0]    _zz_24;
  wire       [2:0]    _zz_25;
  wire       [2:0]    _zz_26;
  wire       [2:0]    _zz_27;
  wire       [2:0]    _zz_28;
  wire       [8:0]    _zz_29;
  wire       [8:0]    _zz_30;
  wire       [1:0]    _zz_31;
  wire       [0:0]    _zz_32;
  reg        [7:0]    Vins_0;
  reg        [7:0]    Vins_1;
  reg        [7:0]    Vins_2;
  reg        [7:0]    Vins_3;
  reg        [7:0]    Vins_4;
  reg        [7:0]    Vins_5;
  reg        [7:0]    Vins_6;
  reg        [7:0]    Vins_7;
  reg        [2:0]    v_cnt;
  wire       [7:0]    bigger;
  wire       [7:0]    smaller;
  reg        [7:0]    max_v;
  reg        [7:0]    min_v;
  wire                v1gtv2;
  wire                data_load_finish;
  wire                mean_doing;
  wire       [8:0]    _zz_1;
  reg        [7:0]    _zz_2;
  wire       [7:0]    _zz_3;
  wire       [7:0]    _zz_4;
  wire       [8:0]    _zz_5;
  reg        [7:0]    _zz_6;
  wire       [7:0]    _zz_7;
  wire       [7:0]    _zz_8;
  wire       [8:0]    _zz_9;
  reg        [7:0]    _zz_10;

  assign _zz_13 = (valid_num - 3'b001);
  assign _zz_14 = ($signed(_zz_15) + $signed(_zz_16));
  assign _zz_15 = {max_v[7],max_v};
  assign _zz_16 = {min_v[7],min_v};
  assign _zz_17 = _zz_1[8 : 7];
  assign _zz_18 = _zz_1[7 : 7];
  assign _zz_19 = (v_cnt <<< 1);
  assign _zz_20 = (v_cnt <<< 1);
  assign _zz_21 = {vin1[7],vin1};
  assign _zz_22 = {_zz_4[7],_zz_4};
  assign _zz_23 = _zz_5[8 : 7];
  assign _zz_24 = _zz_5[7 : 7];
  assign _zz_25 = (_zz_26 + 3'b001);
  assign _zz_26 = (v_cnt <<< 1);
  assign _zz_27 = (_zz_28 + 3'b001);
  assign _zz_28 = (v_cnt <<< 1);
  assign _zz_29 = {vin2[7],vin2};
  assign _zz_30 = {_zz_8[7],_zz_8};
  assign _zz_31 = _zz_9[8 : 7];
  assign _zz_32 = _zz_9[7 : 7];
  always @(*) begin
    case(_zz_20)
      3'b000 : begin
        _zz_11 = rg_leakage_table_0;
      end
      3'b001 : begin
        _zz_11 = rg_leakage_table_1;
      end
      3'b010 : begin
        _zz_11 = rg_leakage_table_2;
      end
      3'b011 : begin
        _zz_11 = rg_leakage_table_3;
      end
      3'b100 : begin
        _zz_11 = rg_leakage_table_4;
      end
      3'b101 : begin
        _zz_11 = rg_leakage_table_5;
      end
      3'b110 : begin
        _zz_11 = rg_leakage_table_6;
      end
      default : begin
        _zz_11 = rg_leakage_table_7;
      end
    endcase
  end

  always @(*) begin
    case(_zz_27)
      3'b000 : begin
        _zz_12 = rg_leakage_table_0;
      end
      3'b001 : begin
        _zz_12 = rg_leakage_table_1;
      end
      3'b010 : begin
        _zz_12 = rg_leakage_table_2;
      end
      3'b011 : begin
        _zz_12 = rg_leakage_table_3;
      end
      3'b100 : begin
        _zz_12 = rg_leakage_table_4;
      end
      3'b101 : begin
        _zz_12 = rg_leakage_table_5;
      end
      3'b110 : begin
        _zz_12 = rg_leakage_table_6;
      end
      default : begin
        _zz_12 = rg_leakage_table_7;
      end
    endcase
  end

  assign mean_doing = 1'b0;
  assign v1gtv2 = ($signed(vin2) < $signed(vin1));
  assign bigger = ((v1gtv2 && rg_bypass_mean) ? vin1 : vin2);
  assign smaller = ((v1gtv2 && rg_bypass_mean) ? vin2 : vin1);
  assign data_load_finish = (v_cnt == _zz_13);
  assign _zz_1 = ($signed(_zz_14) >>> 1);
  always @ (*) begin
    if(_zz_1[8])begin
      if((! (_zz_17 == 2'b11)))begin
        _zz_2 = 8'h80;
      end else begin
        _zz_2 = _zz_1[7 : 0];
      end
    end else begin
      if((_zz_18 != 1'b0))begin
        _zz_2 = 8'h7f;
      end else begin
        _zz_2 = _zz_1[7 : 0];
      end
    end
  end

  assign mean = _zz_2;
  assign finish = ((en && vin_vld) && data_load_finish);
  assign _zz_3 = ({7'd0,1'b1} <<< _zz_19);
  assign _zz_4 = _zz_11;
  assign _zz_5 = ($signed(_zz_21) - $signed(_zz_22));
  always @ (*) begin
    if(_zz_5[8])begin
      if((! (_zz_23 == 2'b11)))begin
        _zz_6 = 8'h80;
      end else begin
        _zz_6 = _zz_5[7 : 0];
      end
    end else begin
      if((_zz_24 != 1'b0))begin
        _zz_6 = 8'h7f;
      end else begin
        _zz_6 = _zz_5[7 : 0];
      end
    end
  end

  assign _zz_7 = ({7'd0,1'b1} <<< _zz_25);
  assign _zz_8 = _zz_12;
  assign _zz_9 = ($signed(_zz_29) - $signed(_zz_30));
  always @ (*) begin
    if(_zz_9[8])begin
      if((! (_zz_31 == 2'b11)))begin
        _zz_10 = 8'h80;
      end else begin
        _zz_10 = _zz_9[7 : 0];
      end
    end else begin
      if((_zz_32 != 1'b0))begin
        _zz_10 = 8'h7f;
      end else begin
        _zz_10 = _zz_9[7 : 0];
      end
    end
  end

  assign vn_0 = Vins_0;
  assign vn_1 = Vins_1;
  assign vn_2 = Vins_2;
  assign vn_3 = Vins_3;
  assign vn_4 = Vins_4;
  assign vn_5 = Vins_5;
  assign vn_6 = Vins_6;
  assign vn_7 = Vins_7;
  always @ (posedge clk or negedge resetn) begin
    if (!resetn) begin
      Vins_0 <= 8'h0;
      Vins_1 <= 8'h0;
      Vins_2 <= 8'h0;
      Vins_3 <= 8'h0;
      Vins_4 <= 8'h0;
      Vins_5 <= 8'h0;
      Vins_6 <= 8'h0;
      Vins_7 <= 8'h0;
      v_cnt <= 3'b000;
      max_v <= 8'h0;
      min_v <= 8'h0;
    end else begin
      if((en && vin_vld))begin
        if(_zz_3[0])begin
          Vins_0 <= _zz_6;
        end
        if(_zz_3[1])begin
          Vins_1 <= _zz_6;
        end
        if(_zz_3[2])begin
          Vins_2 <= _zz_6;
        end
        if(_zz_3[3])begin
          Vins_3 <= _zz_6;
        end
        if(_zz_3[4])begin
          Vins_4 <= _zz_6;
        end
        if(_zz_3[5])begin
          Vins_5 <= _zz_6;
        end
        if(_zz_3[6])begin
          Vins_6 <= _zz_6;
        end
        if(_zz_3[7])begin
          Vins_7 <= _zz_6;
        end
        if(_zz_7[0])begin
          Vins_0 <= _zz_10;
        end
        if(_zz_7[1])begin
          Vins_1 <= _zz_10;
        end
        if(_zz_7[2])begin
          Vins_2 <= _zz_10;
        end
        if(_zz_7[3])begin
          Vins_3 <= _zz_10;
        end
        if(_zz_7[4])begin
          Vins_4 <= _zz_10;
        end
        if(_zz_7[5])begin
          Vins_5 <= _zz_10;
        end
        if(_zz_7[6])begin
          Vins_6 <= _zz_10;
        end
        if(_zz_7[7])begin
          Vins_7 <= _zz_10;
        end
        if(data_load_finish)begin
          v_cnt <= 3'b000;
        end else begin
          v_cnt <= (v_cnt + 3'b001);
        end
        if(rg_bypass_mean)begin
          if((v_cnt == 3'b000))begin
            max_v <= bigger;
            min_v <= smaller;
          end else begin
            if(($signed(max_v) < $signed(bigger)))begin
              max_v <= bigger;
            end
            if(($signed(smaller) < $signed(min_v)))begin
              min_v <= smaller;
            end
          end
        end
      end
    end
  end


endmodule
