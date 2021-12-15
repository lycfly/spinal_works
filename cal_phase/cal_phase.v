// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : cal_phase
// Git hash  : 402e7bd883d173ac81a885acc2a4c05d29757f48


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
  input               resetn
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
  wire                ph_vld;
  wire       [7:0]    ph_cal;
  reg                 LastA2stZero;
  reg        [7:0]    ph_now;
  reg        [7:0]    ph_last;
  reg                 ph_vld_dly1;
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
    .resetn     (resetn           )  //i
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
    .resetn       (resetn               )  //i
  );
  cordic_int cordic (
    .en         (en               ), //i
    .vld        (psum_vld         ), //i
    .y          (psum_out2[15:0]  ), //i
    .x          (psum_out1[15:0]  ), //i
    .res        (cordic_res[7:0]  ), //o
    .res_vld    (cordic_res_vld   ), //o
    .clk        (clk              ), //i
    .resetn     (resetn           )  //i
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
  always @ (posedge clk or negedge resetn) begin
    if (!resetn) begin
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
