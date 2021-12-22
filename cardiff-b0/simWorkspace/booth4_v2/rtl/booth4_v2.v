// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : booth4_v2
// Git hash  : ed79254912e4e0116b93338ee750ed4f28bc3df0



module booth4_v2 (
  input               io_din_vld,
  input      [7:0]    io_dinA,
  input      [7:0]    io_dinB,
  output              io_dout_vld,
  output     [15:0]   io_dout,
  input               clk,
  input               reset
);
  reg        [17:0]   shiftReg;
  wire       [2:0]    flag_bits;
  wire       [8:0]    NegativeB;
  wire       [8:0]    Negative2B;
  wire       [8:0]    PositiveB;
  wire       [8:0]    Positive2B;
  wire       [8:0]    AddB;
  wire       [8:0]    Add2B;
  wire       [8:0]    MinusB;
  wire       [8:0]    Minus2B;
  reg        [1:0]    cal_cnt;
  reg                 cal_en;
  wire       [8:0]    shiftReg_low;
  wire       [8:0]    shiftReg_high;
  reg        [8:0]    beforeshift;
  wire       [17:0]   aftershift;
  reg                 cal_en_regNext;

  assign flag_bits = shiftReg[2 : 0];
  assign NegativeB = (- PositiveB);
  assign PositiveB = {{1{io_dinB[7]}}, io_dinB};
  assign Negative2B = (NegativeB <<< 1);
  assign Positive2B = (PositiveB <<< 1);
  assign shiftReg_low = shiftReg[8 : 0];
  assign shiftReg_high = shiftReg[17 : 9];
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

  assign aftershift = ({beforeshift,shiftReg_low} >>> 2);
  assign io_dout_vld = ((! cal_en) && cal_en_regNext);
  assign io_dout = shiftReg[16 : 1];
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      shiftReg <= 18'h0;
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
        shiftReg <= {{9'h0,io_dinA},1'b0};
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
