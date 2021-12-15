// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : cal_vn
// Git hash  : 09ea9d4f94094b8d5eb0b1619e98b47bd4969cc0


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
