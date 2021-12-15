
module sync_fifo_spram_v2
  #( parameter AW = 3,    //地址宽度为3,
     parameter DW = 16,    //数据位宽
     parameter DEPTH = 8  //数据个数，FIFO深度
     )
   (
     input clk,
     input rst_n,
     input wr_en,
     input rd_en,
     input [DW-1:0] din,
     output [DW-1:0] dout,
     output full,
     output empty,
     output [AW:0] fifo_cnt
   );


  reg [AW-1:0] rd_ptr,wr_ptr; // 读写指针
  reg [DW-1:0] dout_reg;
  reg [AW:0] fifo_cnt_reg; // 存入数据的计数，0-8，位宽要比地址位宽大1

  //========= 数据计数 ============
  always @(posedge clk or negedge rst_n)
  begin
    if(!rst_n)
      fifo_cnt_reg <= {(AW+1){1'b0}};
    else if((wr_en&&!full)&&((rd_en&&!empty)))
      fifo_cnt_reg <= fifo_cnt_reg;
    else if(wr_en&&!full)
      fifo_cnt_reg <= fifo_cnt_reg+1'b1;
    else if(rd_en&&!empty)
      fifo_cnt_reg <= fifo_cnt_reg-1'b1;
  end
  assign fifo_cnt = fifo_cnt_reg;

  //========= 读写指针控制 ============
  always @(posedge clk or negedge rst_n)
  begin
    if(!rst_n)
      rd_ptr <= {AW{1'b0}};
    else if(rd_en&&!empty)
      rd_ptr <= rd_ptr + 1'b1;
  end

  always @(posedge clk or negedge rst_n)
  begin
    if(!rst_n)
      wr_ptr <= {AW{1'b0}};
    else if(wr_en&&!full)
      wr_ptr <= wr_ptr + 1'b1;
  end

  //========= 空满判断 ============
  assign full = (fifo_cnt_reg == DEPTH)?1'b1:1'b0;
  assign empty = (fifo_cnt_reg == {(AW+1){1'b0}})?1'b1:1'b0;


  wire even_rd;
  wire odd_rd;
  reg  even_rd_reg;
  //reg  odd_rd_reg;
  wire even_wr;
  wire odd_wr;
  wire [AW-2:0] even_addr;
  wire [AW-2:0] odd_addr;

  reg buffer_flag;
  wire conflict_flag;
  reg [DW-1:0] buffer_data;
  reg [AW-1:0] buffer_waddr;
  wire wr_en_thread1;
  wire wr_en_thread2;
  wire [DW-1:0] write_data_even;
  wire [DW-1:0] write_data_odd;
  wire [DW-1:0] read_data_even;
  wire [DW-1:0] read_data_odd;
  

  assign even_rd = rd_en & (~rd_ptr[0]);
  assign odd_rd  = rd_en & rd_ptr[0];
  assign conflict_flag = rd_en & wr_en & (~full & ~empty) & (rd_ptr[0] == wr_ptr[0]);
  assign wr_en_thread1 = ~conflict_flag & wr_en;
  assign wr_en_thread2 = buffer_flag;
  assign even_wr = (wr_en_thread1 & ~wr_ptr[0]) | (wr_en_thread2 & ~buffer_waddr[0]);
  assign odd_wr = (wr_en_thread1 & wr_ptr[0]) | (wr_en_thread2 & buffer_waddr[0]);

  assign even_addr = even_rd ? rd_ptr[AW-1:1] :
         (wr_en_thread1 & ~wr_ptr[0]) ? wr_ptr[AW-1:1] :
         (wr_en_thread2 & ~buffer_waddr[0]) ? buffer_waddr[AW-1:1] : rd_ptr[AW-1:1];

  assign odd_addr  = odd_rd ? rd_ptr[AW-1:1] :
         (wr_en_thread1 & wr_ptr[0]) ? wr_ptr[AW-1:1] :
         (wr_en_thread2 & buffer_waddr[0]) ? buffer_waddr[AW-1:1] : rd_ptr[AW-1:1];

  assign write_data_even =  (wr_en_thread2 & ~buffer_waddr[0])  ?  buffer_data : din ;
  assign write_data_odd =   (wr_en_thread2 &  buffer_waddr[0])  ?  buffer_data : din ;

  assign dout = even_rd_reg ? read_data_even : read_data_odd;

  always @(posedge clk or negedge rst_n)
  begin
    if(!rst_n)
      buffer_flag <= 1'b0;
    else if(conflict_flag)
      buffer_flag <= 1'b1;
    else
      buffer_flag <= 1'b0;
  end

  always @(posedge clk or negedge rst_n)
  begin
    if(!rst_n)
      buffer_data <= 'd0;
    else if(conflict_flag)
      buffer_data <= din;
  end

  always @(posedge clk or negedge rst_n)
  begin
    if(!rst_n)
      buffer_waddr <= 'd0;
    else if(conflict_flag)
      buffer_waddr <= wr_ptr;
  end

  always @(posedge clk or negedge rst_n)
  begin
    if(!rst_n)
      even_rd_reg <= 'd0;
    else
      even_rd_reg <= even_rd;
  end
  // always @(posedge clk or negedge rst_n)
  // begin
  //   if(!rst_n)
  //     odd_rd_reg <= 'd0;
  //   else
  //     odd_rd_reg <= odd_rd;
  // end

  wire ce_even;
  wire we_even;
  assign ce_even = even_rd | even_wr  ;
  assign we_even = (even_wr & ~full) & (~(even_rd & ~empty));

  sp_ram #(.AW (AW-1 ), .DW (DW ))
         sp_ram_1
         (
           .clk    ( clk ),
           .ce     ( ce_even  ),
           .we     ( we_even  ),
           .wdata  ( write_data_even   ),
           .addr   ( even_addr  ),
           .rdata  ( read_data_even  )
         );

  wire ce_odd;
  wire we_odd;
  assign ce_odd = odd_rd | odd_wr;
  assign we_odd = (odd_wr & ~full) & (~(odd_rd & ~empty));

  sp_ram #(.AW (AW-1 ), .DW (DW ))
         sp_ram_2
         (
           .clk    ( clk ),
           .ce     ( ce_odd  ),
           .we     ( we_odd  ),
           .wdata  ( write_data_odd   ),
           .addr   ( odd_addr  ),
           .rdata  ( read_data_odd  )
         );


endmodule
