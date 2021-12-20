// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : booth4
// Git hash  : 7689016539fce71eac5b72b24831b097bb38ae23



module booth4 (
  input               io_din_vld,
  input      [7:0]    io_dinA,
  input      [7:0]    io_dinB,
  output              io_dout_vld,
  output     [15:0]   io_dout,
  input               clk,
  input               reset
);
  wire       [7:0]    _zz_1;
  wire       [7:0]    _zz_2;
  wire       [7:0]    _zz_3;
  wire       [7:0]    _zz_4;
  wire       [16:0]   _zz_5;
  wire       [16:0]   _zz_6;
  reg        [16:0]   shiftReg;
  wire       [2:0]    flag_bits;
  wire       [7:0]    NegativeB;
  wire       [7:0]    Negative2B;
  wire       [7:0]    PositiveB;
  wire       [7:0]    Positive2B;
  wire       [7:0]    AddB;
  wire       [7:0]    Add2B;
  wire       [7:0]    MinusB;
  wire       [7:0]    Minus2B;
  reg        [1:0]    cal_cnt;
  reg                 cal_en;
  reg                 cal_en_regNext;

  assign _zz_1 = shiftReg[16 : 9];
  assign _zz_2 = shiftReg[16 : 9];
  assign _zz_3 = shiftReg[16 : 9];
  assign _zz_4 = shiftReg[16 : 9];
  assign _zz_5 = ($signed(_zz_6) >>> 2);
  assign _zz_6 = shiftReg;
  assign flag_bits = shiftReg[2 : 0];
  assign NegativeB = (- PositiveB);
  assign PositiveB = io_dinB;
  assign Negative2B = (NegativeB <<< 1);
  assign Positive2B = (PositiveB <<< 1);
  assign AddB = ($signed(_zz_1) + $signed(PositiveB));
  assign Add2B = ($signed(_zz_2) + $signed(Positive2B));
  assign MinusB = ($signed(_zz_3) + $signed(NegativeB));
  assign Minus2B = ($signed(_zz_4) + $signed(Negative2B));
  assign io_dout_vld = ((! cal_en) && cal_en_regNext);
  assign io_dout = shiftReg[16 : 1];
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      shiftReg <= 17'h0;
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
        shiftReg[8 : 1] <= io_dinA;
      end else begin
        if(cal_en)begin
          case(flag_bits)
            3'b000, 3'b111 : begin
              shiftReg <= _zz_5;
            end
            3'b001, 3'b010 : begin
              shiftReg <= {{{AddB[7],AddB[7]},AddB},shiftReg[8 : 2]};
            end
            3'b101, 3'b110 : begin
              shiftReg <= {{{MinusB[7],MinusB[7]},MinusB},shiftReg[8 : 2]};
            end
            3'b011 : begin
              shiftReg <= {{{Add2B[7],Add2B[7]},Add2B},shiftReg[8 : 2]};
            end
            default : begin
              shiftReg <= {{{Minus2B[7],Minus2B[7]},Minus2B},shiftReg[8 : 2]};
            end
          endcase
        end
      end
    end
  end

  always @ (posedge clk) begin
    cal_en_regNext <= cal_en;
  end


endmodule
