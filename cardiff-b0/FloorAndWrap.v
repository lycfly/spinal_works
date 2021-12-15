// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : FloorAndWrap
// Git hash  : 924b1b3ea195ed51b9bde2aaac749226b2c0509e


module FloorAndWrap (
  input      [16:0]   din,
  output     [15:0]   dout
);
  wire       [16:0]   _zz_1;
  wire       [15:0]   dataOut;

  assign _zz_1 = din;
  assign dataOut = _zz_1[15 : 0];
  assign dout = dataOut;

endmodule
