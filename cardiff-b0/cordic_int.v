// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : cordic_int
// Git hash  : 924b1b3ea195ed51b9bde2aaac749226b2c0509e


module cordic_int (
  input               en,
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
  wire       [21:0]   _zz_12;
  wire       [8:0]    _zz_13;
  wire       [8:0]    _zz_14;
  wire       [1:0]    _zz_15;
  wire       [0:0]    _zz_16;
  wire       [6:0]    KAngle_0;
  wire       [6:0]    KAngle_1;
  wire       [6:0]    KAngle_2;
  wire       [6:0]    KAngle_3;
  reg        [21:0]   xn;
  reg        [21:0]   yn;
  reg        [8:0]    res_rg;
  wire       [21:0]   x_ext;
  wire       [21:0]   y_ext;
  wire       [21:0]   x_ins;
  wire       [21:0]   y_ins;
  wire                _zz_1;
  reg        [1:0]    _zz_2;
  wire                _zz_3;
  reg        [1:0]    _zz_4;
  reg        [1:0]    cal_cnt;
  reg                 cal_en;
  wire                cal_start;
  wire                cal_finish;
  reg                 finish;
  reg                 nozero_flg;
  reg                 cal_en_regNext;
  wire       [21:0]   xn_rightshift;
  wire       [21:0]   yn_rightshift;
  wire       [7:0]    res_bias;
  wire       [6:0]    _zz_5;
  reg        [7:0]    _zz_6;

  assign _zz_8 = (x | y);
  assign _zz_9 = 16'h0;
  assign _zz_10 = 16'h0;
  assign _zz_11 = 16'h0;
  assign _zz_12 = 22'h0;
  assign _zz_13 = {{2{_zz_5[6]}}, _zz_5};
  assign _zz_14 = {{2{_zz_5[6]}}, _zz_5};
  assign _zz_15 = res_rg[8 : 7];
  assign _zz_16 = res_rg[7 : 7];
  always @(*) begin
    case(cal_cnt)
      2'b00 : begin
        _zz_7 = KAngle_0;
      end
      2'b01 : begin
        _zz_7 = KAngle_1;
      end
      2'b10 : begin
        _zz_7 = KAngle_2;
      end
      default : begin
        _zz_7 = KAngle_3;
      end
    endcase
  end

  assign KAngle_0 = 7'h20;
  assign KAngle_1 = 7'h13;
  assign KAngle_2 = 7'h0a;
  assign KAngle_3 = 7'h05;
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
  assign cal_start = (cal_en && (! cal_en_regNext));
  assign cal_finish = (cal_cnt == 2'b11);
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
      xn <= 22'h0;
      yn <= 22'h0;
      res_rg <= 9'h0;
      cal_cnt <= 2'b00;
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
          cal_cnt <= 2'b00;
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
            cal_cnt <= (cal_cnt + 2'b01);
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
