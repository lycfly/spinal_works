// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : cal_vn
// Git hash  : 4fa549902b849df099b030f0556e4e0470202670


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
  reg        [7:0]    _zz_13;
  reg        [7:0]    _zz_14;
  wire       [2:0]    _zz_15;
  wire       [8:0]    _zz_16;
  wire       [8:0]    _zz_17;
  wire       [1:0]    _zz_18;
  wire       [0:0]    _zz_19;
  wire       [2:0]    _zz_20;
  wire       [2:0]    _zz_21;
  wire       [8:0]    _zz_22;
  wire       [8:0]    _zz_23;
  wire       [1:0]    _zz_24;
  wire       [0:0]    _zz_25;
  wire       [2:0]    _zz_26;
  wire       [2:0]    _zz_27;
  wire       [2:0]    _zz_28;
  wire       [2:0]    _zz_29;
  wire       [8:0]    _zz_30;
  wire       [8:0]    _zz_31;
  wire       [1:0]    _zz_32;
  wire       [0:0]    _zz_33;
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
  wire       [8:0]    _zz_7;
  reg        [7:0]    _zz_8;
  wire       [7:0]    _zz_9;
  wire       [7:0]    _zz_10;
  wire       [8:0]    _zz_11;
  reg        [7:0]    _zz_12;

  assign _zz_15 = (valid_num - 3'b001);
  assign _zz_16 = {_zz_1[7],_zz_1};
  assign _zz_17 = {_zz_2[7],_zz_2};
  assign _zz_18 = _zz_3[8 : 7];
  assign _zz_19 = _zz_3[7 : 7];
  assign _zz_20 = (v_cnt <<< 1);
  assign _zz_21 = (v_cnt <<< 1);
  assign _zz_22 = {vin1[7],vin1};
  assign _zz_23 = {_zz_6[7],_zz_6};
  assign _zz_24 = _zz_7[8 : 7];
  assign _zz_25 = _zz_7[7 : 7];
  assign _zz_26 = (_zz_27 + 3'b001);
  assign _zz_27 = (v_cnt <<< 1);
  assign _zz_28 = (_zz_29 + 3'b001);
  assign _zz_29 = (v_cnt <<< 1);
  assign _zz_30 = {vin2[7],vin2};
  assign _zz_31 = {_zz_10[7],_zz_10};
  assign _zz_32 = _zz_11[8 : 7];
  assign _zz_33 = _zz_11[7 : 7];
  always @(*) begin
    case(_zz_21)
      3'b000 : begin
        _zz_13 = rg_leakage_table_0;
      end
      3'b001 : begin
        _zz_13 = rg_leakage_table_1;
      end
      3'b010 : begin
        _zz_13 = rg_leakage_table_2;
      end
      3'b011 : begin
        _zz_13 = rg_leakage_table_3;
      end
      3'b100 : begin
        _zz_13 = rg_leakage_table_4;
      end
      3'b101 : begin
        _zz_13 = rg_leakage_table_5;
      end
      3'b110 : begin
        _zz_13 = rg_leakage_table_6;
      end
      default : begin
        _zz_13 = rg_leakage_table_7;
      end
    endcase
  end

  always @(*) begin
    case(_zz_28)
      3'b000 : begin
        _zz_14 = rg_leakage_table_0;
      end
      3'b001 : begin
        _zz_14 = rg_leakage_table_1;
      end
      3'b010 : begin
        _zz_14 = rg_leakage_table_2;
      end
      3'b011 : begin
        _zz_14 = rg_leakage_table_3;
      end
      3'b100 : begin
        _zz_14 = rg_leakage_table_4;
      end
      3'b101 : begin
        _zz_14 = rg_leakage_table_5;
      end
      3'b110 : begin
        _zz_14 = rg_leakage_table_6;
      end
      default : begin
        _zz_14 = rg_leakage_table_7;
      end
    endcase
  end

  assign v1gtv2 = ($signed(vin2) < $signed(vin1));
  assign bigger = (v1gtv2 ? vin1 : vin2);
  assign smaller = (v1gtv2 ? vin2 : vin1);
  assign data_load_finish = (v_cnt == _zz_15);
  assign _zz_1 = ($signed(max_v) >>> 1);
  assign _zz_2 = ($signed(min_v) >>> 1);
  assign _zz_3 = ($signed(_zz_16) + $signed(_zz_17));
  always @ (*) begin
    if(_zz_3[8])begin
      if((! (_zz_18 == 2'b11)))begin
        _zz_4 = 8'h80;
      end else begin
        _zz_4 = _zz_3[7 : 0];
      end
    end else begin
      if((_zz_19 != 1'b0))begin
        _zz_4 = 8'h7f;
      end else begin
        _zz_4 = _zz_3[7 : 0];
      end
    end
  end

  assign mean = _zz_4;
  assign mean_finish = ((en && vin_vld) && data_load_finish);
  assign finish = mean_finish_regNext;
  assign _zz_5 = ({7'd0,1'b1} <<< _zz_20);
  assign _zz_6 = _zz_13;
  assign _zz_7 = ($signed(_zz_22) - $signed(_zz_23));
  always @ (*) begin
    if(_zz_7[8])begin
      if((! (_zz_24 == 2'b11)))begin
        _zz_8 = 8'h80;
      end else begin
        _zz_8 = _zz_7[7 : 0];
      end
    end else begin
      if((_zz_25 != 1'b0))begin
        _zz_8 = 8'h7f;
      end else begin
        _zz_8 = _zz_7[7 : 0];
      end
    end
  end

  assign _zz_9 = ({7'd0,1'b1} <<< _zz_26);
  assign _zz_10 = _zz_14;
  assign _zz_11 = ($signed(_zz_30) - $signed(_zz_31));
  always @ (*) begin
    if(_zz_11[8])begin
      if((! (_zz_32 == 2'b11)))begin
        _zz_12 = 8'h80;
      end else begin
        _zz_12 = _zz_11[7 : 0];
      end
    end else begin
      if((_zz_33 != 1'b0))begin
        _zz_12 = 8'h7f;
      end else begin
        _zz_12 = _zz_11[7 : 0];
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
      mean_finish_regNext <= 1'b0;
    end else begin
      mean_finish_regNext <= mean_finish;
      if((en && vin_vld))begin
        if(_zz_5[0])begin
          Vins_0 <= _zz_8;
        end
        if(_zz_5[1])begin
          Vins_1 <= _zz_8;
        end
        if(_zz_5[2])begin
          Vins_2 <= _zz_8;
        end
        if(_zz_5[3])begin
          Vins_3 <= _zz_8;
        end
        if(_zz_5[4])begin
          Vins_4 <= _zz_8;
        end
        if(_zz_5[5])begin
          Vins_5 <= _zz_8;
        end
        if(_zz_5[6])begin
          Vins_6 <= _zz_8;
        end
        if(_zz_5[7])begin
          Vins_7 <= _zz_8;
        end
        if(_zz_9[0])begin
          Vins_0 <= _zz_12;
        end
        if(_zz_9[1])begin
          Vins_1 <= _zz_12;
        end
        if(_zz_9[2])begin
          Vins_2 <= _zz_12;
        end
        if(_zz_9[3])begin
          Vins_3 <= _zz_12;
        end
        if(_zz_9[4])begin
          Vins_4 <= _zz_12;
        end
        if(_zz_9[5])begin
          Vins_5 <= _zz_12;
        end
        if(_zz_9[6])begin
          Vins_6 <= _zz_12;
        end
        if(_zz_9[7])begin
          Vins_7 <= _zz_12;
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
