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
  wire                ph_vld;
  wire       [7:0]    ph_cal;

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
    .resetn                (resetn                   )  //i
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
  always @ (posedge clk or negedge resetn) begin
    if (!resetn) begin
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
