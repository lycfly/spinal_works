// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : dotVn_2
// Git hash  : deefa699849420e1dbdaa26347dab508ac586639


module dotVn_2 (
  input               en,
  input      [7:0]    rg_sin_table_0,
  input      [7:0]    rg_sin_table_1,
  input      [7:0]    rg_sin_table_2,
  input      [7:0]    rg_sin_table_3,
  input      [7:0]    rg_sin_table_4,
  input      [7:0]    rg_sin_table_5,
  input      [7:0]    rg_sin_table_6,
  input      [7:0]    rg_sin_table_7,
  input      [7:0]    rg_cos_table_0,
  input      [7:0]    rg_cos_table_1,
  input      [7:0]    rg_cos_table_2,
  input      [7:0]    rg_cos_table_3,
  input      [7:0]    rg_cos_table_4,
  input      [7:0]    rg_cos_table_5,
  input      [7:0]    rg_cos_table_6,
  input      [7:0]    rg_cos_table_7,
  input               vn_vld,
  input      [7:0]    vn_in_0,
  input      [7:0]    vn_in_1,
  input      [7:0]    vn_in_2,
  input      [7:0]    vn_in_3,
  input      [7:0]    vn_in_4,
  input      [7:0]    vn_in_5,
  input      [7:0]    vn_in_6,
  input      [7:0]    vn_in_7,
  output     [15:0]   psum_out1,
  output     [15:0]   psum_out2,
  output              psum_vld,
  input      [2:0]    valid_num,
  input      [7:0]    mean,
  input               clk,
  input               resetn
);
  wire       [7:0]    _zz_3;
  wire       [7:0]    _zz_4;
  reg        [7:0]    _zz_5;
  reg        [7:0]    _zz_6;
  reg        [7:0]    _zz_7;
  wire                booth_sin_io_dout_vld;
  wire       [15:0]   booth_sin_io_dout;
  wire                booth_cos_io_dout_vld;
  wire       [15:0]   booth_cos_io_dout;
  wire       [2:0]    _zz_8;
  wire       [13:0]   _zz_9;
  wire       [13:0]   _zz_10;
  wire       [3:0]    _zz_11;
  wire       [2:0]    _zz_12;
  wire       [3:0]    _zz_13;
  wire       [2:0]    _zz_14;
  wire       [15:0]   product1;
  wire       [15:0]   product2;
  wire       [18:0]   s1;
  wire       [18:0]   s2;
  reg        [18:0]   psum1;
  reg        [18:0]   psum2;
  wire       [7:0]    vin_true_in;
  wire       [7:0]    vin_minus_mean;
  reg        [2:0]    mac_cnt;
  reg                 mac_en;
  wire                mac_start;
  wire                mac_finish;
  reg                 finish;
  wire                mul_done;
  reg                 booth_start;
  reg        [15:0]   _zz_1;
  reg        [15:0]   _zz_2;

  assign _zz_8 = (valid_num - 3'b001);
  assign _zz_9 = (product1 >>> 2);
  assign _zz_10 = (product2 >>> 2);
  assign _zz_11 = psum1[18 : 15];
  assign _zz_12 = psum1[17 : 15];
  assign _zz_13 = psum2[18 : 15];
  assign _zz_14 = psum2[17 : 15];
  booth2_v2 booth_sin (
    .io_din_vld     (booth_start              ), //i
    .io_dinA        (vin_true_in[7:0]         ), //i
    .io_dinB        (_zz_3[7:0]               ), //i
    .io_dout_vld    (booth_sin_io_dout_vld    ), //o
    .io_dout        (booth_sin_io_dout[15:0]  ), //o
    .clk            (clk                      ), //i
    .resetn         (resetn                   )  //i
  );
  booth2_v2 booth_cos (
    .io_din_vld     (booth_start              ), //i
    .io_dinA        (vin_true_in[7:0]         ), //i
    .io_dinB        (_zz_4[7:0]               ), //i
    .io_dout_vld    (booth_cos_io_dout_vld    ), //o
    .io_dout        (booth_cos_io_dout[15:0]  ), //o
    .clk            (clk                      ), //i
    .resetn         (resetn                   )  //i
  );
  always @(*) begin
    case(mac_cnt)
      3'b000 : begin
        _zz_5 = rg_sin_table_0;
        _zz_6 = rg_cos_table_0;
        _zz_7 = vn_in_0;
      end
      3'b001 : begin
        _zz_5 = rg_sin_table_1;
        _zz_6 = rg_cos_table_1;
        _zz_7 = vn_in_1;
      end
      3'b010 : begin
        _zz_5 = rg_sin_table_2;
        _zz_6 = rg_cos_table_2;
        _zz_7 = vn_in_2;
      end
      3'b011 : begin
        _zz_5 = rg_sin_table_3;
        _zz_6 = rg_cos_table_3;
        _zz_7 = vn_in_3;
      end
      3'b100 : begin
        _zz_5 = rg_sin_table_4;
        _zz_6 = rg_cos_table_4;
        _zz_7 = vn_in_4;
      end
      3'b101 : begin
        _zz_5 = rg_sin_table_5;
        _zz_6 = rg_cos_table_5;
        _zz_7 = vn_in_5;
      end
      3'b110 : begin
        _zz_5 = rg_sin_table_6;
        _zz_6 = rg_cos_table_6;
        _zz_7 = vn_in_6;
      end
      default : begin
        _zz_5 = rg_sin_table_7;
        _zz_6 = rg_cos_table_7;
        _zz_7 = vn_in_7;
      end
    endcase
  end

  assign _zz_3 = _zz_5;
  assign mul_done = booth_sin_io_dout_vld;
  assign product1 = booth_sin_io_dout;
  assign _zz_4 = _zz_6;
  assign product2 = booth_cos_io_dout;
  assign vin_minus_mean = ($signed(_zz_7) - $signed(mean));
  assign vin_true_in = vin_minus_mean;
  assign mac_start = ((mac_cnt == 3'b000) && mul_done);
  assign mac_finish = ((mac_cnt == _zz_8) && mul_done);
  assign s1 = {{5{_zz_9[13]}}, _zz_9};
  assign s2 = {{5{_zz_10[13]}}, _zz_10};
  always @ (*) begin
    if(psum1[18])begin
      if((! (_zz_11 == 4'b1111)))begin
        _zz_1 = 16'h8000;
      end else begin
        _zz_1 = psum1[15 : 0];
      end
    end else begin
      if((_zz_12 != 3'b000))begin
        _zz_1 = 16'h7fff;
      end else begin
        _zz_1 = psum1[15 : 0];
      end
    end
  end

  assign psum_out1 = _zz_1;
  always @ (*) begin
    if(psum2[18])begin
      if((! (_zz_13 == 4'b1111)))begin
        _zz_2 = 16'h8000;
      end else begin
        _zz_2 = psum2[15 : 0];
      end
    end else begin
      if((_zz_14 != 3'b000))begin
        _zz_2 = 16'h7fff;
      end else begin
        _zz_2 = psum2[15 : 0];
      end
    end
  end

  assign psum_out2 = _zz_2;
  assign psum_vld = finish;
  always @ (posedge clk or negedge resetn) begin
    if (!resetn) begin
      psum1 <= 19'h0;
      psum2 <= 19'h0;
      mac_cnt <= 3'b000;
      mac_en <= 1'b0;
      finish <= 1'b0;
      booth_start <= 1'b0;
    end else begin
      booth_start <= (vn_vld || (mac_en && mul_done));
      if(en)begin
        if(vn_vld)begin
          mac_en <= 1'b1;
        end else begin
          if(mac_finish)begin
            mac_en <= 1'b0;
          end
        end
      end else begin
        mac_en <= 1'b0;
      end
      if(mac_start)begin
        psum1 <= s1;
        psum2 <= s2;
      end else begin
        if(mul_done)begin
          psum1 <= ($signed(psum1) + $signed(s1));
          psum2 <= ($signed(psum2) + $signed(s2));
        end
      end
      if(mul_done)begin
        if(mac_en)begin
          mac_cnt <= (mac_cnt + 3'b001);
        end else begin
          mac_cnt <= 3'b000;
        end
      end
      if(en)begin
        finish <= ((mac_cnt == valid_num) && mul_done);
      end else begin
        finish <= 1'b0;
      end
    end
  end


endmodule
