// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : cordic_int
// Git hash  : 402e7bd883d173ac81a885acc2a4c05d29757f48


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
  always @ (posedge clk or negedge resetn) begin
    if (!resetn) begin
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
