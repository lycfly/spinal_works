// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : booth2
// Git hash  : 9d0b46dcf43db5bdc0c5d2eb735510925dbb419a


module booth2 (
  input               io_din_vld,
  input      [7:0]    io_dinA,
  input      [7:0]    io_dinB,
  output              io_dout_vld,
  output     [15:0]   io_dout,
  input               clk,
  input               resetn
);
  wire       [7:0]    _zz_1;
  wire       [7:0]    _zz_2;
  wire       [16:0]   _zz_3;
  wire       [7:0]    _zz_4;
  reg        [16:0]   shiftReg;
  wire       [1:0]    flag_bits;
  wire       [7:0]    NegativeB;
  wire       [7:0]    sumShiftB;
  wire       [7:0]    addMux;
  reg        [2:0]    cal_cnt;
  reg                 cal_en;
  reg                 cal_en_regNext;

  assign _zz_1 = ($signed(_zz_2) + $signed(addMux));
  assign _zz_2 = shiftReg[16 : 9];
  assign _zz_3 = shiftReg;
  assign _zz_4 = sumShiftB;
  assign flag_bits = shiftReg[1 : 0];
  assign NegativeB = (- io_dinB);
  assign addMux = ((flag_bits[1] && (! flag_bits[0])) ? NegativeB : io_dinB);
  assign sumShiftB = _zz_1;
  assign io_dout_vld = ((! cal_en) && cal_en_regNext);
  assign io_dout = shiftReg[16 : 1];
  always @ (posedge clk or negedge resetn) begin
    if (!resetn) begin
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
          case(flag_bits)
            2'b00, 2'b11 : begin
              shiftReg <= {_zz_3[16],shiftReg[16 : 1]};
            end
            default : begin
              shiftReg <= {{_zz_4[7],sumShiftB},shiftReg[8 : 1]};
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
