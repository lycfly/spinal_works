// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : s_table
// Git hash  : 924b1b3ea195ed51b9bde2aaac749226b2c0509e


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
