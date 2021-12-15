// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : FloorAndWrap_8
// Git hash  : c4528966e2dc7c4cc138a867841564d7ddc04df3


module FloorAndWrap_8 (
  input      [16:0]   din,
  output     [15:0]   dout
);
  wire       [16:0]   _zz_1;
  wire       [15:0]   dataOut;

  assign _zz_1 = din;
  assign dataOut = _zz_1[15 : 0];
  assign dout = dataOut;

endmodule
