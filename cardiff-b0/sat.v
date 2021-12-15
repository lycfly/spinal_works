// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : sat
// Git hash  : 54cd370b51a27c83db8bb8db494f2451add2a282



module sat (
  input      [9:0]    din,
  output     [7:0]    dout
);
  wire       [2:0]    _zz_3;
  wire       [1:0]    _zz_4;
  wire       [7:0]    dataOut;
  wire       [9:0]    _zz_1;
  reg        [7:0]    _zz_2;

  assign _zz_3 = _zz_1[9 : 7];
  assign _zz_4 = _zz_1[8 : 7];
  assign _zz_1 = din;
  always @ (*) begin
    if(_zz_1[9])begin
      if((! (_zz_3 == 3'b111)))begin
        _zz_2 = 8'h80;
      end else begin
        _zz_2 = _zz_1[7 : 0];
      end
    end else begin
      if((_zz_4 != 2'b00))begin
        _zz_2 = 8'h7f;
      end else begin
        _zz_2 = _zz_1[7 : 0];
      end
    end
  end

  assign dataOut = _zz_2;
  assign dout = dataOut;

endmodule
