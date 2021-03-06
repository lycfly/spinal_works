// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : cal_phase
// Git hash  : 917c4ceee242fb9011d09d0562a43f468673e9a6



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
  input      [1:0]    rg_ac_table_0,
  input      [1:0]    rg_ac_table_1,
  input      [1:0]    rg_ac_table_2,
  input      [1:0]    rg_ac_table_3,
  input      [1:0]    rg_ac_table_4,
  input      [1:0]    rg_ac_table_5,
  input      [1:0]    rg_ac_table_6,
  input      [1:0]    rg_ac_table_7,
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
  output     [9:0]    phase,
  input               clk,
  input               reset
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
  wire       [9:0]    cordic_res;
  wire                cordic_res_vld;
  wire       [3:0]    _zz_1;
  wire       [3:0]    _zz_2;
  reg        [7:0]    vin1_reg;
  reg        [7:0]    vin2_reg;
  reg                 vin_vld_reg;
  wire       [2:0]    valid_num_true;
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
  wire                ph_vld /* verilator public */ ;
  wire       [9:0]    ph_cal;

  assign _zz_1 = (_zz_2 - 4'b0001);
  assign _zz_2 = ({1'd0,valid_num} <<< 1);
  cal_vn calvn (
    .en                    (rg_calphase_en           ), //i
    .rg_bypass_mean        (rg_bypass_mean           ), //i
    .valid_num             (valid_num[2:0]           ), //i
    .vin_vld               (vin_vld_reg              ), //i
    .vin1                  (vin1_reg[7:0]            ), //i
    .vin2                  (vin2_reg[7:0]            ), //i
    .rg_leakage_table_0    (rg_leakage_table_0[7:0]  ), //i
    .rg_leakage_table_1    (rg_leakage_table_1[7:0]  ), //i
    .rg_leakage_table_2    (rg_leakage_table_2[7:0]  ), //i
    .rg_leakage_table_3    (rg_leakage_table_3[7:0]  ), //i
    .rg_leakage_table_4    (rg_leakage_table_4[7:0]  ), //i
    .rg_leakage_table_5    (rg_leakage_table_5[7:0]  ), //i
    .rg_leakage_table_6    (rg_leakage_table_6[7:0]  ), //i
    .rg_leakage_table_7    (rg_leakage_table_7[7:0]  ), //i
    .rg_ac_table_0         (rg_ac_table_0[1:0]       ), //i
    .rg_ac_table_1         (rg_ac_table_1[1:0]       ), //i
    .rg_ac_table_2         (rg_ac_table_2[1:0]       ), //i
    .rg_ac_table_3         (rg_ac_table_3[1:0]       ), //i
    .rg_ac_table_4         (rg_ac_table_4[1:0]       ), //i
    .rg_ac_table_5         (rg_ac_table_5[1:0]       ), //i
    .rg_ac_table_6         (rg_ac_table_6[1:0]       ), //i
    .rg_ac_table_7         (rg_ac_table_7[1:0]       ), //i
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
    .reset                 (reset                    )  //i
  );
  dotVn_2 dot (
    .en                (rg_calphase_en       ), //i
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
    .valid_num         (valid_num_true[2:0]  ), //i
    .mean              (mean[7:0]            ), //i
    .clk               (clk                  ), //i
    .reset             (reset                )  //i
  );
  cordic_int cordic (
    .en                   (rg_calphase_en          ), //i
    .rg_cordic_iternum    (rg_cordic_iternum[2:0]  ), //i
    .vld                  (psum_vld                ), //i
    .y                    (psum_out2[15:0]         ), //i
    .x                    (psum_out1[15:0]         ), //i
    .res                  (cordic_res[9:0]         ), //o
    .res_vld              (cordic_res_vld          ), //o
    .clk                  (clk                     ), //i
    .reset                (reset                   )  //i
  );
  assign valid_num_true = _zz_1[2:0];
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
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      vin1_reg <= 8'h0;
      vin2_reg <= 8'h0;
      vin_vld_reg <= 1'b0;
    end else begin
      if(vin_vld)begin
        vin1_reg <= vin1;
        vin2_reg <= vin2;
      end
      vin_vld_reg <= vin_vld;
    end
  end


endmodule

module cordic_int (
  input               en,
  input      [2:0]    rg_cordic_iternum,
  input               vld,
  input      [15:0]   y,
  input      [15:0]   x,
  output     [9:0]    res,
  output              res_vld,
  input               clk,
  input               reset
);
  reg        [6:0]    _zz_7;
  wire       [2:0]    _zz_8;
  wire       [15:0]   _zz_9;
  wire       [15:0]   _zz_10;
  wire       [15:0]   _zz_11;
  wire       [15:0]   _zz_12;
  wire       [18:0]   _zz_13;
  wire       [10:0]   _zz_14;
  wire       [10:0]   _zz_15;
  wire       [1:0]    _zz_16;
  wire       [0:0]    _zz_17;
  wire       [6:0]    KAngle_0;
  wire       [6:0]    KAngle_1;
  wire       [6:0]    KAngle_2;
  wire       [6:0]    KAngle_3;
  wire       [6:0]    KAngle_4;
  wire       [6:0]    KAngle_5;
  wire       [6:0]    KAngle_6;
  reg        [18:0]   xn;
  reg        [18:0]   yn;
  reg        [10:0]   res_rg;
  reg        [9:0]    res_out;
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
  wire                cal_start_delay;
  wire                cal_finish;
  wire                normal_finish;
  wire                early_finish1;
  wire                early_finish2;
  reg                 finish;
  reg                 nozero_flg;
  reg                 cal_en_regNext;
  reg                 cal_start_regNext;
  reg                 nozero_flg_regNext;
  wire       [18:0]   xn_rightshift;
  wire       [18:0]   yn_rightshift;
  wire       [6:0]    _zz_5;
  reg                 cal_finish_delay;
  reg        [9:0]    _zz_6;

  assign _zz_8 = (rg_cordic_iternum - 3'b001);
  assign _zz_9 = 16'h0;
  assign _zz_10 = 16'h0;
  assign _zz_11 = 16'h0;
  assign _zz_12 = 16'h0;
  assign _zz_13 = 19'h0;
  assign _zz_14 = {{4{_zz_5[6]}}, _zz_5};
  assign _zz_15 = {{4{_zz_5[6]}}, _zz_5};
  assign _zz_16 = res_rg[10 : 9];
  assign _zz_17 = res_rg[9 : 9];
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
  assign cal_start_delay = cal_start_regNext;
  assign cal_finish = (((rg_cordic_iternum == 3'b001) ? cal_start_delay : normal_finish) || early_finish1);
  assign normal_finish = (cal_cnt == _zz_8);
  assign early_finish1 = ((! nozero_flg) && nozero_flg_regNext);
  assign early_finish2 = cal_start_delay;
  assign xn_rightshift = ($signed(xn) >>> cal_cnt);
  assign yn_rightshift = ($signed(yn) >>> cal_cnt);
  assign _zz_5 = _zz_7;
  always @ (*) begin
    if(res_rg[10])begin
      if((! (_zz_16 == 2'b11)))begin
        _zz_6 = 10'h200;
      end else begin
        _zz_6 = res_rg[9 : 0];
      end
    end else begin
      if((_zz_17 != 1'b0))begin
        _zz_6 = 10'h1ff;
      end else begin
        _zz_6 = res_rg[9 : 0];
      end
    end
  end

  assign res = res_out;
  assign res_vld = finish;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      xn <= 19'h0;
      yn <= 19'h0;
      res_rg <= 11'h0;
      res_out <= 10'h0;
      cal_cnt <= 3'b000;
      cal_en <= 1'b0;
      finish <= 1'b0;
      nozero_flg <= 1'b1;
      cal_en_regNext <= 1'b0;
      cal_start_regNext <= 1'b0;
      cal_finish_delay <= 1'b0;
    end else begin
      cal_en_regNext <= cal_en;
      cal_start_regNext <= cal_start;
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
        if(cal_start)begin
          cal_cnt <= 3'b000;
          if((($signed(x) == $signed(_zz_9)) || ($signed(y) == $signed(_zz_10))))begin
            res_rg <= 11'h0;
            nozero_flg <= 1'b0;
          end else begin
            nozero_flg <= 1'b1;
            if(($signed(x) < $signed(_zz_11)))begin
              if(($signed(y) < $signed(_zz_12)))begin
                xn <= y_ins;
                yn <= x_ext;
                res_rg <= 11'h7c0;
              end else begin
                xn <= y_ext;
                yn <= x_ins;
                res_rg <= 11'h040;
              end
            end else begin
              xn <= x_ext;
              yn <= y_ext;
              res_rg <= 11'h0;
            end
          end
        end else begin
          if(nozero_flg)begin
            cal_cnt <= (cal_cnt + 3'b001);
            if(($signed(yn) < $signed(_zz_13)))begin
              xn <= ($signed(xn) - $signed(yn_rightshift));
              yn <= ($signed(yn) + $signed(xn_rightshift));
              res_rg <= ($signed(res_rg) - $signed(_zz_14));
            end else begin
              xn <= ($signed(xn) + $signed(yn_rightshift));
              yn <= ($signed(yn) - $signed(xn_rightshift));
              res_rg <= ($signed(res_rg) + $signed(_zz_15));
            end
          end
        end
      end
      if(en)begin
        cal_finish_delay <= cal_finish;
      end
      if(cal_finish_delay)begin
        res_out <= _zz_6;
      end
      if(en)begin
        finish <= cal_finish_delay;
      end
    end
  end

  always @ (posedge clk) begin
    nozero_flg_regNext <= nozero_flg;
  end


endmodule

module dotVn_2 (
  input               en,
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
  input               reset
);
  wire       [7:0]    _zz_3;
  wire       [7:0]    _zz_4;
  reg        [7:0]    _zz_5;
  reg        [7:0]    _zz_6;
  reg        [7:0]    _zz_7;
  wire                booth_sin_io_dout_vld;
  wire       [15:0]   booth_sin_io_dout;
  wire                booth_cos_io_dout_vld;
  wire       [15:0]   booth_cos_io_dout;
  wire       [2:0]    _zz_8;
  wire       [13:0]   _zz_9;
  wire       [13:0]   _zz_10;
  wire       [3:0]    _zz_11;
  wire       [2:0]    _zz_12;
  wire       [3:0]    _zz_13;
  wire       [2:0]    _zz_14;
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
  wire                mul_done;
  reg                 booth_start;
  reg        [15:0]   _zz_1;
  reg        [15:0]   _zz_2;

  assign _zz_8 = (valid_num - 3'b001);
  assign _zz_9 = (product1 >>> 2);
  assign _zz_10 = (product2 >>> 2);
  assign _zz_11 = psum1[18 : 15];
  assign _zz_12 = psum1[17 : 15];
  assign _zz_13 = psum2[18 : 15];
  assign _zz_14 = psum2[17 : 15];
  booth4_v2 booth_sin (
    .io_din_vld     (booth_start              ), //i
    .io_dinA        (vin_true_in[7:0]         ), //i
    .io_dinB        (_zz_3[7:0]               ), //i
    .io_dout_vld    (booth_sin_io_dout_vld    ), //o
    .io_dout        (booth_sin_io_dout[15:0]  ), //o
    .clk            (clk                      ), //i
    .reset          (reset                    )  //i
  );
  booth4_v2 booth_cos (
    .io_din_vld     (booth_start              ), //i
    .io_dinA        (vin_true_in[7:0]         ), //i
    .io_dinB        (_zz_4[7:0]               ), //i
    .io_dout_vld    (booth_cos_io_dout_vld    ), //o
    .io_dout        (booth_cos_io_dout[15:0]  ), //o
    .clk            (clk                      ), //i
    .reset          (reset                    )  //i
  );
  always @(*) begin
    case(mac_cnt)
      3'b000 : begin
        _zz_5 = rg_sin_table_0;
        _zz_6 = rg_cos_table_0;
        _zz_7 = vn_in_0;
      end
      3'b001 : begin
        _zz_5 = rg_sin_table_1;
        _zz_6 = rg_cos_table_1;
        _zz_7 = vn_in_1;
      end
      3'b010 : begin
        _zz_5 = rg_sin_table_2;
        _zz_6 = rg_cos_table_2;
        _zz_7 = vn_in_2;
      end
      3'b011 : begin
        _zz_5 = rg_sin_table_3;
        _zz_6 = rg_cos_table_3;
        _zz_7 = vn_in_3;
      end
      3'b100 : begin
        _zz_5 = rg_sin_table_4;
        _zz_6 = rg_cos_table_4;
        _zz_7 = vn_in_4;
      end
      3'b101 : begin
        _zz_5 = rg_sin_table_5;
        _zz_6 = rg_cos_table_5;
        _zz_7 = vn_in_5;
      end
      3'b110 : begin
        _zz_5 = rg_sin_table_6;
        _zz_6 = rg_cos_table_6;
        _zz_7 = vn_in_6;
      end
      default : begin
        _zz_5 = rg_sin_table_7;
        _zz_6 = rg_cos_table_7;
        _zz_7 = vn_in_7;
      end
    endcase
  end

  assign _zz_3 = _zz_5;
  assign mul_done = booth_sin_io_dout_vld;
  assign product1 = booth_sin_io_dout;
  assign _zz_4 = _zz_6;
  assign product2 = booth_cos_io_dout;
  assign vin_minus_mean = ($signed(_zz_7) - $signed(mean));
  assign vin_true_in = vin_minus_mean;
  assign mac_start = ((mac_cnt == 3'b000) && mul_done);
  assign mac_finish = ((mac_cnt == _zz_8) && mul_done);
  assign s1 = {{5{_zz_9[13]}}, _zz_9};
  assign s2 = {{5{_zz_10[13]}}, _zz_10};
  always @ (*) begin
    if(psum1[18])begin
      if((! (_zz_11 == 4'b1111)))begin
        _zz_1 = 16'h8000;
      end else begin
        _zz_1 = psum1[15 : 0];
      end
    end else begin
      if((_zz_12 != 3'b000))begin
        _zz_1 = 16'h7fff;
      end else begin
        _zz_1 = psum1[15 : 0];
      end
    end
  end

  assign psum_out1 = _zz_1;
  always @ (*) begin
    if(psum2[18])begin
      if((! (_zz_13 == 4'b1111)))begin
        _zz_2 = 16'h8000;
      end else begin
        _zz_2 = psum2[15 : 0];
      end
    end else begin
      if((_zz_14 != 3'b000))begin
        _zz_2 = 16'h7fff;
      end else begin
        _zz_2 = psum2[15 : 0];
      end
    end
  end

  assign psum_out2 = _zz_2;
  assign psum_vld = finish;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      psum1 <= 19'h0;
      psum2 <= 19'h0;
      mac_cnt <= 3'b000;
      mac_en <= 1'b0;
      finish <= 1'b0;
      booth_start <= 1'b0;
    end else begin
      booth_start <= (vn_vld || (mac_en && mul_done));
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
      if(mac_start)begin
        psum1 <= s1;
        psum2 <= s2;
      end else begin
        if(mul_done)begin
          psum1 <= ($signed(psum1) + $signed(s1));
          psum2 <= ($signed(psum2) + $signed(s2));
        end
      end
      if(mul_done)begin
        if(mac_en)begin
          mac_cnt <= (mac_cnt + 3'b001);
        end else begin
          mac_cnt <= 3'b000;
        end
      end
      if(en)begin
        finish <= ((mac_cnt == valid_num) && mul_done);
      end else begin
        finish <= 1'b0;
      end
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
  input      [1:0]    rg_ac_table_0,
  input      [1:0]    rg_ac_table_1,
  input      [1:0]    rg_ac_table_2,
  input      [1:0]    rg_ac_table_3,
  input      [1:0]    rg_ac_table_4,
  input      [1:0]    rg_ac_table_5,
  input      [1:0]    rg_ac_table_6,
  input      [1:0]    rg_ac_table_7,
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
  input               reset
);
  reg        [7:0]    _zz_7;
  reg        [1:0]    _zz_8;
  reg        [7:0]    _zz_9;
  reg        [1:0]    _zz_10;
  wire       [2:0]    _zz_11;
  wire       [2:0]    _zz_12;
  wire       [8:0]    _zz_13;
  wire       [8:0]    _zz_14;
  wire       [1:0]    _zz_15;
  wire       [0:0]    _zz_16;
  wire       [7:0]    _zz_17;
  wire       [7:0]    _zz_18;
  wire       [7:0]    _zz_19;
  wire       [7:0]    _zz_20;
  wire       [7:0]    _zz_21;
  wire       [7:0]    _zz_22;
  reg                 vin_vld_d1;
  reg                 vin_vld_d2;
  wire       [7:0]    vin1_bias_shift;
  wire       [7:0]    vin2_bias_shift;
  wire       [7:0]    vin1_bias_shift_norm;
  wire       [7:0]    vin2_bias_shift_norm;
  reg        [7:0]    V_bias_ac_0;
  reg        [7:0]    V_bias_ac_1;
  reg        [7:0]    V_bias_ac_2;
  reg        [7:0]    V_bias_ac_3;
  reg        [7:0]    V_bias_ac_4;
  reg        [7:0]    V_bias_ac_5;
  reg        [7:0]    V_bias_ac_6;
  reg        [7:0]    V_bias_ac_7;
  reg        [2:0]    v_cnt;
  wire       [2:0]    v_cnt_group0;
  wire       [2:0]    v_cnt_group1;
  wire       [7:0]    bigger;
  wire       [7:0]    smaller;
  reg        [7:0]    max_v;
  reg        [7:0]    min_v;
  wire                mean_finish;
  wire                v1gtv2;
  wire                data_load_finish;
  wire       [7:0]    _zz_1;
  wire       [7:0]    _zz_2;
  wire       [8:0]    _zz_3;
  reg        [7:0]    _zz_4;
  reg                 mean_finish_regNext;
  wire       [7:0]    _zz_5;
  wire       [7:0]    _zz_6;

  assign _zz_11 = (v_cnt <<< 1);
  assign _zz_12 = (valid_num - 3'b001);
  assign _zz_13 = {_zz_1[7],_zz_1};
  assign _zz_14 = {_zz_2[7],_zz_2};
  assign _zz_15 = _zz_3[8 : 7];
  assign _zz_16 = _zz_3[7 : 7];
  assign _zz_17 = (vin1 - _zz_7);
  assign _zz_18 = (vin2 - _zz_9);
  assign _zz_19 = vin1_bias_shift;
  assign _zz_20 = 8'h80;
  assign _zz_21 = vin2_bias_shift;
  assign _zz_22 = 8'h80;
  always @(*) begin
    case(v_cnt_group0)
      3'b000 : begin
        _zz_7 = rg_leakage_table_0;
        _zz_8 = rg_ac_table_0;
      end
      3'b001 : begin
        _zz_7 = rg_leakage_table_1;
        _zz_8 = rg_ac_table_1;
      end
      3'b010 : begin
        _zz_7 = rg_leakage_table_2;
        _zz_8 = rg_ac_table_2;
      end
      3'b011 : begin
        _zz_7 = rg_leakage_table_3;
        _zz_8 = rg_ac_table_3;
      end
      3'b100 : begin
        _zz_7 = rg_leakage_table_4;
        _zz_8 = rg_ac_table_4;
      end
      3'b101 : begin
        _zz_7 = rg_leakage_table_5;
        _zz_8 = rg_ac_table_5;
      end
      3'b110 : begin
        _zz_7 = rg_leakage_table_6;
        _zz_8 = rg_ac_table_6;
      end
      default : begin
        _zz_7 = rg_leakage_table_7;
        _zz_8 = rg_ac_table_7;
      end
    endcase
  end

  always @(*) begin
    case(v_cnt_group1)
      3'b000 : begin
        _zz_9 = rg_leakage_table_0;
        _zz_10 = rg_ac_table_0;
      end
      3'b001 : begin
        _zz_9 = rg_leakage_table_1;
        _zz_10 = rg_ac_table_1;
      end
      3'b010 : begin
        _zz_9 = rg_leakage_table_2;
        _zz_10 = rg_ac_table_2;
      end
      3'b011 : begin
        _zz_9 = rg_leakage_table_3;
        _zz_10 = rg_ac_table_3;
      end
      3'b100 : begin
        _zz_9 = rg_leakage_table_4;
        _zz_10 = rg_ac_table_4;
      end
      3'b101 : begin
        _zz_9 = rg_leakage_table_5;
        _zz_10 = rg_ac_table_5;
      end
      3'b110 : begin
        _zz_9 = rg_leakage_table_6;
        _zz_10 = rg_ac_table_6;
      end
      default : begin
        _zz_9 = rg_leakage_table_7;
        _zz_10 = rg_ac_table_7;
      end
    endcase
  end

  assign v_cnt_group0 = (v_cnt <<< 1);
  assign v_cnt_group1 = (_zz_11 + 3'b001);
  assign v1gtv2 = ($signed(vin2_bias_shift_norm) < $signed(vin1_bias_shift_norm));
  assign bigger = (v1gtv2 ? vin1_bias_shift_norm : vin2_bias_shift_norm);
  assign smaller = (v1gtv2 ? vin2_bias_shift_norm : vin1_bias_shift_norm);
  assign data_load_finish = (v_cnt == _zz_12);
  assign _zz_1 = ($signed(max_v) >>> 1);
  assign _zz_2 = ($signed(min_v) >>> 1);
  assign _zz_3 = ($signed(_zz_13) + $signed(_zz_14));
  always @ (*) begin
    if(_zz_3[8])begin
      if((! (_zz_15 == 2'b11)))begin
        _zz_4 = 8'h80;
      end else begin
        _zz_4 = _zz_3[7 : 0];
      end
    end else begin
      if((_zz_16 != 1'b0))begin
        _zz_4 = 8'h7f;
      end else begin
        _zz_4 = _zz_3[7 : 0];
      end
    end
  end

  assign mean = _zz_4;
  assign mean_finish = ((en && vin_vld) && data_load_finish);
  assign finish = mean_finish_regNext;
  assign vin1_bias_shift = (_zz_17 <<< _zz_8);
  assign vin2_bias_shift = (_zz_18 <<< _zz_10);
  assign vin1_bias_shift_norm = ($signed(_zz_19) + $signed(_zz_20));
  assign vin2_bias_shift_norm = ($signed(_zz_21) + $signed(_zz_22));
  assign _zz_5 = ({7'd0,1'b1} <<< v_cnt_group0);
  assign _zz_6 = ({7'd0,1'b1} <<< v_cnt_group1);
  assign vn_0 = V_bias_ac_0;
  assign vn_1 = V_bias_ac_1;
  assign vn_2 = V_bias_ac_2;
  assign vn_3 = V_bias_ac_3;
  assign vn_4 = V_bias_ac_4;
  assign vn_5 = V_bias_ac_5;
  assign vn_6 = V_bias_ac_6;
  assign vn_7 = V_bias_ac_7;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      vin_vld_d1 <= 1'b0;
      vin_vld_d2 <= 1'b0;
      V_bias_ac_0 <= 8'h0;
      V_bias_ac_1 <= 8'h0;
      V_bias_ac_2 <= 8'h0;
      V_bias_ac_3 <= 8'h0;
      V_bias_ac_4 <= 8'h0;
      V_bias_ac_5 <= 8'h0;
      V_bias_ac_6 <= 8'h0;
      V_bias_ac_7 <= 8'h0;
      v_cnt <= 3'b000;
      max_v <= 8'h0;
      min_v <= 8'h0;
      mean_finish_regNext <= 1'b0;
    end else begin
      vin_vld_d1 <= vin_vld;
      vin_vld_d2 <= vin_vld_d1;
      mean_finish_regNext <= mean_finish;
      if((en && vin_vld))begin
        if(_zz_5[0])begin
          V_bias_ac_0 <= vin1_bias_shift_norm;
        end
        if(_zz_5[1])begin
          V_bias_ac_1 <= vin1_bias_shift_norm;
        end
        if(_zz_5[2])begin
          V_bias_ac_2 <= vin1_bias_shift_norm;
        end
        if(_zz_5[3])begin
          V_bias_ac_3 <= vin1_bias_shift_norm;
        end
        if(_zz_5[4])begin
          V_bias_ac_4 <= vin1_bias_shift_norm;
        end
        if(_zz_5[5])begin
          V_bias_ac_5 <= vin1_bias_shift_norm;
        end
        if(_zz_5[6])begin
          V_bias_ac_6 <= vin1_bias_shift_norm;
        end
        if(_zz_5[7])begin
          V_bias_ac_7 <= vin1_bias_shift_norm;
        end
        if(_zz_6[0])begin
          V_bias_ac_0 <= vin2_bias_shift_norm;
        end
        if(_zz_6[1])begin
          V_bias_ac_1 <= vin2_bias_shift_norm;
        end
        if(_zz_6[2])begin
          V_bias_ac_2 <= vin2_bias_shift_norm;
        end
        if(_zz_6[3])begin
          V_bias_ac_3 <= vin2_bias_shift_norm;
        end
        if(_zz_6[4])begin
          V_bias_ac_4 <= vin2_bias_shift_norm;
        end
        if(_zz_6[5])begin
          V_bias_ac_5 <= vin2_bias_shift_norm;
        end
        if(_zz_6[6])begin
          V_bias_ac_6 <= vin2_bias_shift_norm;
        end
        if(_zz_6[7])begin
          V_bias_ac_7 <= vin2_bias_shift_norm;
        end
        if(data_load_finish)begin
          v_cnt <= 3'b000;
        end else begin
          v_cnt <= (v_cnt + 3'b001);
        end
        if((! rg_bypass_mean))begin
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
        end else begin
          max_v <= 8'h0;
          min_v <= 8'h0;
        end
      end
    end
  end


endmodule

//booth4_v2 replaced by booth4_v2

module booth4_v2 (
  input               io_din_vld,
  input      [7:0]    io_dinA,
  input      [7:0]    io_dinB,
  output              io_dout_vld,
  output     [15:0]   io_dout,
  input               clk,
  input               reset
);
  wire       [18:0]   _zz_1;
  wire       [18:0]   _zz_2;
  reg        [7:0]    Breg;
  reg        [18:0]   shiftReg;
  wire       [2:0]    flag_bits;
  wire       [9:0]    NegativeB;
  wire       [9:0]    Negative2B;
  wire       [9:0]    PositiveB;
  wire       [9:0]    Positive2B;
  wire       [9:0]    AddB;
  wire       [9:0]    Add2B;
  wire       [9:0]    MinusB;
  wire       [9:0]    Minus2B;
  reg        [1:0]    cal_cnt;
  reg                 cal_en;
  wire       [8:0]    shiftReg_low;
  wire       [9:0]    shiftReg_high;
  reg        [9:0]    beforeshift;
  wire       [18:0]   aftershift;
  reg                 cal_en_regNext;

  assign _zz_1 = ($signed(_zz_2) >>> 2);
  assign _zz_2 = {beforeshift,shiftReg_low};
  assign flag_bits = shiftReg[2 : 0];
  assign NegativeB = (- PositiveB);
  assign PositiveB = {{2{Breg[7]}}, Breg};
  assign Negative2B = (NegativeB <<< 1);
  assign Positive2B = (PositiveB <<< 1);
  assign shiftReg_low = shiftReg[8 : 0];
  assign shiftReg_high = shiftReg[18 : 9];
  assign AddB = ($signed(shiftReg_high) + $signed(PositiveB));
  assign Add2B = ($signed(shiftReg_high) + $signed(Positive2B));
  assign MinusB = ($signed(shiftReg_high) + $signed(NegativeB));
  assign Minus2B = ($signed(shiftReg_high) + $signed(Negative2B));
  always @ (*) begin
    case(flag_bits)
      3'b000, 3'b111 : begin
        beforeshift = shiftReg_high;
      end
      3'b001, 3'b010 : begin
        beforeshift = AddB;
      end
      3'b101, 3'b110 : begin
        beforeshift = MinusB;
      end
      3'b011 : begin
        beforeshift = Add2B;
      end
      default : begin
        beforeshift = Minus2B;
      end
    endcase
  end

  assign aftershift = _zz_1;
  assign io_dout_vld = ((! cal_en) && cal_en_regNext);
  assign io_dout = shiftReg[16 : 1];
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      Breg <= 8'h0;
      shiftReg <= 19'h0;
      cal_cnt <= 2'b00;
      cal_en <= 1'b0;
    end else begin
      if(io_din_vld)begin
        cal_en <= 1'b1;
      end else begin
        if((cal_cnt == 2'b11))begin
          cal_en <= 1'b0;
        end
      end
      if(cal_en)begin
        cal_cnt <= (cal_cnt + 2'b01);
      end else begin
        if(io_din_vld)begin
          cal_cnt <= 2'b00;
        end
      end
      if(io_din_vld)begin
        shiftReg <= {{10'h0,io_dinA},1'b0};
        Breg <= io_dinB;
      end else begin
        if(cal_en)begin
          shiftReg <= aftershift;
        end
      end
    end
  end

  always @ (posedge clk) begin
    cal_en_regNext <= cal_en;
  end


endmodule
