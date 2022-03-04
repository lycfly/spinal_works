// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : cal_vn
// Git hash  : 917c4ceee242fb9011d09d0562a43f468673e9a6


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
  input               resetn
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
  always @ (posedge clk or negedge resetn) begin
    if (!resetn) begin
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
