// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : FloorAndWrap
// Git hash  : 402e7bd883d173ac81a885acc2a4c05d29757f48


module FloorAndWrap (
  input      [11:0]   din,
  output     [7:0]    dout
);
  wire       [8:0]    _zz_1;
  wire       [11:0]   _zz_2;
  wire       [7:0]    dataOut;

  assign _zz_1 = (_zz_2 >>> 3);
  assign _zz_2 = din;
  assign dataOut = _zz_1[7 : 0];
  assign dout = dataOut;

endmodule
