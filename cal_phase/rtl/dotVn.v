// Generator : SpinalHDL v1.4.2    git head : 804c7bd7b7feaddcc1d25ecef6c208fd5f776f79
// Component : dotVn
// Git hash  : 402e7bd883d173ac81a885acc2a4c05d29757f48


module dotVn (
  input               en,
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
  input               clk,
  input               resetn
);
  wire       [7:0]    _zz_1;
  wire       [16:0]   _zz_2;
  wire       [16:0]   _zz_3;
  reg        [7:0]    _zz_4;
  wire       [18:0]   table_1_s1;
  wire       [18:0]   table_1_s2;
  wire       [15:0]   FloorWrapPsum1_dout;
  wire       [15:0]   FloorWrapPsum2_dout;
  wire       [16:0]   _zz_5;
  wire       [16:0]   _zz_6;
  wire       [18:0]   s1;
  wire       [18:0]   s2;
  reg        [18:0]   psum1;
  reg        [18:0]   psum2;
  reg        [2:0]    mac_cnt;
  reg                 mac_en;
  wire                mac_start;
  wire                mac_finish;
  reg                 finish;

  assign _zz_5 = (psum1 >>> 2);
  assign _zz_6 = (psum2 >>> 2);
  s_table table_1 (
    .index    (mac_cnt[2:0]      ), //i
    .din      (_zz_1[7:0]        ), //i
    .s1       (table_1_s1[18:0]  ), //o
    .s2       (table_1_s2[18:0]  )  //o
  );
  FloorAndWrap_8 FloorWrapPsum1 (
    .din     (_zz_2[16:0]                ), //i
    .dout    (FloorWrapPsum1_dout[15:0]  )  //o
  );
  FloorAndWrap_8 FloorWrapPsum2 (
    .din     (_zz_3[16:0]                ), //i
    .dout    (FloorWrapPsum2_dout[15:0]  )  //o
  );
  always @(*) begin
    case(mac_cnt)
      3'b000 : begin
        _zz_4 = vn_in_0;
      end
      3'b001 : begin
        _zz_4 = vn_in_1;
      end
      3'b010 : begin
        _zz_4 = vn_in_2;
      end
      3'b011 : begin
        _zz_4 = vn_in_3;
      end
      3'b100 : begin
        _zz_4 = vn_in_4;
      end
      3'b101 : begin
        _zz_4 = vn_in_5;
      end
      3'b110 : begin
        _zz_4 = vn_in_6;
      end
      default : begin
        _zz_4 = vn_in_7;
      end
    endcase
  end

  assign mac_start = (mac_cnt == 3'b000);
  assign mac_finish = (mac_cnt == 3'b111);
  assign _zz_1 = _zz_4;
  assign s1 = table_1_s1;
  assign s2 = table_1_s2;
  assign _zz_2 = _zz_5;
  assign psum_out1 = FloorWrapPsum1_dout;
  assign _zz_3 = _zz_6;
  assign psum_out2 = FloorWrapPsum2_dout;
  assign psum_vld = finish;
  always @ (posedge clk or negedge resetn) begin
    if (!resetn) begin
      psum1 <= 19'h0;
      psum2 <= 19'h0;
      mac_cnt <= 3'b000;
      mac_en <= 1'b0;
    end else begin
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
      if(mac_en)begin
        mac_cnt <= (mac_cnt + 3'b001);
        if(mac_start)begin
          psum1 <= s1;
          psum2 <= s2;
        end else begin
          psum1 <= ($signed(psum1) + $signed(s1));
          psum2 <= ($signed(psum2) + $signed(s2));
        end
      end else begin
        mac_cnt <= 3'b000;
      end
    end
  end

  always @ (posedge clk) begin
    if(en)begin
      finish <= (mac_finish && mac_en);
    end else begin
      finish <= 1'b0;
    end
  end


endmodule
