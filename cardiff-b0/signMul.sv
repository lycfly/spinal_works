// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : signMul
// Git hash  : 0af3daec77d099208d061589aabe1993b5bb0a32


module signMul (
  input               io_din_vld,
  input      [7:0]    io_dinA,
  input      [7:0]    io_dinB,
  output              io_dout_vld,
  output     [15:0]   io_dout,
  input               clk,
  input               resetn
);
  reg        [15:0]   PsumReg;
  reg                 io_din_vld_regNext;

  assign io_dout_vld = io_din_vld_regNext;
  assign io_dout = PsumReg;
  always @ (posedge clk or negedge resetn) begin
    if (!resetn) begin
      PsumReg <= 16'h0;
      io_din_vld_regNext <= 1'b0;
    end else begin
      if(io_din_vld)begin
        PsumReg <= ($signed(io_dinA) * $signed(io_dinB));
      end
      io_din_vld_regNext <= io_din_vld;
    end
  end


endmodule
