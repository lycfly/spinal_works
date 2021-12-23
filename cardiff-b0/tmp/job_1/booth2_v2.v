// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : booth2_v2
// Git hash  : deefa699849420e1dbdaa26347dab508ac586639



module booth2_v2 (
  input               io_din_vld,
  input      [7:0]    io_dinA,
  input      [7:0]    io_dinB,
  output              io_dout_vld,
  output     [15:0]   io_dout,
  input               clk,
  input               reset
);
  wire       [16:0]   _zz_1;
  wire       [16:0]   _zz_2;
  reg        [16:0]   shiftReg;
  wire       [1:0]    flag_bits;
  wire       [7:0]    NegativeB;
  wire       [7:0]    PositiveB;
  wire       [7:0]    AddB;
  wire       [7:0]    MinusB;
  reg        [2:0]    cal_cnt;
  reg                 cal_en;
  wire       [8:0]    shiftReg_low;
  wire       [7:0]    shiftReg_high;
  reg        [7:0]    beforeshift;
  wire       [16:0]   aftershift;
  reg                 cal_en_regNext;

  assign _zz_1 = ($signed(_zz_2) >>> 1);
  assign _zz_2 = {beforeshift,shiftReg_low};
  assign flag_bits = shiftReg[1 : 0];
  assign NegativeB = (- PositiveB);
  assign PositiveB = io_dinB;
  assign shiftReg_low = shiftReg[8 : 0];
  assign shiftReg_high = shiftReg[16 : 9];
  assign AddB = ($signed(shiftReg_high) + $signed(PositiveB));
  assign MinusB = ($signed(shiftReg_high) + $signed(NegativeB));
  always @ (*) begin
    case(flag_bits)
      2'b00, 2'b11 : begin
        beforeshift = shiftReg_high;
      end
      2'b10 : begin
        beforeshift = MinusB;
      end
      default : begin
        beforeshift = AddB;
      end
    endcase
  end

  assign aftershift = _zz_1;
  assign io_dout_vld = ((! cal_en) && cal_en_regNext);
  assign io_dout = shiftReg[16 : 1];
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      shiftReg <= 17'h0;
      cal_cnt <= 3'b000;
      cal_en <= 1'b0;
    end else begin
      if(io_din_vld)begin
        cal_en <= 1'b1;
      end else begin
        if((cal_cnt == 3'b111))begin
          cal_en <= 1'b0;
        end
      end
      if(cal_en)begin
        cal_cnt <= (cal_cnt + 3'b001);
      end else begin
        if(io_din_vld)begin
          cal_cnt <= 3'b000;
        end
      end
      if(io_din_vld)begin
        shiftReg <= {{8'h0,io_dinA},1'b0};
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
