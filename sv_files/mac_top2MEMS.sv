/* 
 * mac_top.sv
 * Francesco Conti <fconti@iis.ee.ethz.ch>
 *
 * Copyright (C) 2018 ETH Zurich, University of Bologna
 * Copyright and related rights are licensed under the Solderpad Hardware
 * License, Version 0.51 (the "License"); you may not use this file except in
 * compliance with the License.  You may obtain a copy of the License at
 * http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
 * or agreed to in writing, software, hardware and materials distributed under
 * this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
 * CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 */

import mac_package::*;
import hwpe_ctrl_package::*;

module mac_top
#(
  parameter int unsigned N_CORES = 2,
  parameter int unsigned MP  = 4,
  parameter int unsigned ID  = 10
)
(
  // global signals
  input  logic                                  clk_i,
  input  logic                                  rst_ni,
  input  logic                                  test_mode_i,
  // events
  output logic [N_CORES-1:0][REGFILE_N_EVT-1:0] evt_o,
  // tcdm master ports
  hwpe_stream_intf_tcdm.master                  tcdm[MP-1:0],
  // periph slave port
  hwpe_ctrl_intf_periph.slave                   periph
);

  logic enable, clear;
  ctrl_streamer_t  streamer_ctrl;
  flags_streamer_t streamer_flags;
  ctrl_engine_t    engine_ctrl;
  flags_engine_t   engine_flags;

  // compute <-> cont handshake
  logic        compute_start;
  logic        compute_done;
 
   // in_Mem <-> compute (read) and cont (write inputs)
    logic [3:0]  comp_b1_addr;    // AW for in_Mem
    logic        comp_b1_ce;
    logic [63:0] comp_b1_q;       // read data to compute (64-bit packed)
  
    logic [3:0]  cont_wr_addr;    // cont writes inputs
    logic        cont_wr_ce;
    logic        cont_wr_we;
    logic [63:0] cont_wr_d;
  
    // res_Mem <-> compute (two write ports) and cont (FIFO drain)
    logic [3:0]  comp_b2_addr0, comp_b2_addr1;
    logic        comp_b2_ce0,   comp_b2_ce1;
    logic        comp_b2_we0,   comp_b2_we1;
    logic [31:0] comp_b2_d0,    comp_b2_d1;
  
    logic        cont_rd_read;    // cont FIFO pop
    logic [31:0] cont_rd_dout;
    logic        cont_rd_empty_n;
    //for testing
    logic        cont_rd_read1;    // cont FIFO pop
    logic [31:0] cont_rd_dout1;
    logic        cont_rd_empty_n1;


      // --- cont -> MEM2 write (second input memory) ---
    logic [2:0]  cont_wr1_addr;   // AW=3 for DEPTH=8 input mem -- MATCH your MEM2 depth
    logic        cont_wr1_ce;
    logic        cont_wr1_we;
    logic [63:0] cont_wr1_d;      // 64-bit packed input words
  
    // --- MPE2 <-> MEM2 read (compute reads its inputs) ---
    logic [2:0]  mpe2_in_addr;    // AW=3, match MEM2
    logic        mpe2_in_ce;
    logic [63:0] mpe2_in_q;       // 64-bit packed read data
  
    // --- MPE2 -> res2 write (two write ports) ---
    logic [3:0]  mpe2_res_addr0;  // AW=4 for DEPTH=16 result mem
    logic        mpe2_res_ce0;
    logic        mpe2_res_we0;
    logic [31:0] mpe2_res_d0;     // 32-bit results
    logic [3:0]  mpe2_res_addr1;
    logic        mpe2_res_ce1;
    logic        mpe2_res_we1;
    logic [31:0] mpe2_res_d1;
  
    // --- MPE2 handshake ---
    logic        compute_start2;
    logic        compute_done2;



  hwpe_stream_intf_stream #(
    .DATA_WIDTH(32)
  ) a (
    .clk ( clk_i )
  );
  hwpe_stream_intf_stream #(
    .DATA_WIDTH(32)
  ) b (
    .clk ( clk_i )
  );
  hwpe_stream_intf_stream #(
    .DATA_WIDTH(32)
  ) c (
    .clk ( clk_i )
  );
  hwpe_stream_intf_stream #(
    .DATA_WIDTH(32)
  ) d (
    .clk ( clk_i )
  );

  cont i_engine (
    .ap_clk           ( clk_i                   ),
    .ap_rst           ( rst_ni                  ),
    .a_i_valid        ( a.valid                 ),
    .a_i_ready        ( a.ready                 ),
    .a_i_data         ( a.data                  ),
    .a_i_strb         ( a.strb                  ),
    .b_i_valid        ( b.valid                 ),
    .b_i_ready        ( b.ready                 ),
    .b_i_data         ( b.data                  ),
    .b_i_strb         ( b.strb                  ),
    .c_i_valid        ( c.valid                 ),
    .c_i_ready        ( c.ready                 ),
    .c_i_data         ( c.data                  ),
    .c_i_strb         ( c.strb                  ),
    .d_o_valid        ( d.valid                 ),
    .d_o_ready        ( d.ready                 ),
    .d_o_data         ( d.data                  ),
    .d_o_strb         ( d.strb                  ),
    .clear            ( engine_ctrl.clear       ),
    .enable           ( engine_ctrl.enable      ),
    .function_r       ( engine_ctrl.simple_mul  ),
    .start_r          ( engine_ctrl.start       ),
    .shift            ( engine_ctrl.shift       ),
    .len              ( engine_ctrl.len         ),
    .f_cnt            ( engine_flags.cnt        ),
    .f_cnt_ap_vld     (                         ),  // strobe, unused
    .f_valid          ( engine_flags.acc_valid  ),
    .f_valid_ap_vld   (                         ),  // strobe, unused
    // buffer_1 FIFO read (results out of shared memory)  -> Mem port A
    .buffer_1_rd_dout     ( cont_rd_dout           ),
    .buffer_1_rd_empty_n  ( cont_rd_empty_n      ),
    .buffer_1_rd_read     ( cont_rd_read          ),
    //second FIFO for testing
    .buffer_1_rd1_dout    (cont_rd_dout1   ),
    .buffer_1_rd1_empty_n  (cont_rd_empty_n1),
    .buffer_1_rd1_read     (cont_rd_read1),
    // buffer_1_wr  (ap_memory write of inputs) -> shared BRAM write port
    .buffer_1_wr_address0 ( cont_wr_addr            ),
    .buffer_1_wr_ce0      ( cont_wr_ce              ),
    .buffer_1_wr_we0      ( cont_wr_we             ),
    .buffer_1_wr_d0       ( cont_wr_d              ),

    //SECOND MEMORY 
    .buffer_1_wr1_address0    (cont_wr1_addr ),
    .buffer_1_wr1_ce0         (cont_wr1_ce ),
    .buffer_1_wr1_we0         (cont_wr1_we ),
    .buffer_1_wr1_d0          (cont_wr1_d),
    .compute_start1           (compute_start ),
    .compute_done1            (compute_done ),
    .compute_start2           (compute_start2),
    .compute_done2            ( compute_done2 )
  );


//  Mem #(.DEPTH(16), .AW(4), .DW(64)) i_buffer_1 (
//    .clk_i     ( clk_i           ),
//   .rst_ni    ( rst_ni          ),
//    .a_ce      ( cont_b1_ce      ),
//    .a_q       ( cont_b1_q       ),
//    .a_q_valid ( cont_b1_empty_n ),
//    .b_addr    ( comp_b1_addr    ),
//    .b_ce      ( comp_b1_ce      ),
//    .b_we      ( comp_b1_we      ),
//    .b_d       ( comp_b1_d       ),
//    .b_q       ( comp_b1_q       )
// );

  // --- second input memory (MEM2) ---
  in_Mem #(.DEPTH(8), .AW(3), .DW(64)) i_mem2 (
    .clk_i  ( clk_i         ),
    .rst_ni ( rst_ni        ),
    .a_addr ( cont_wr1_addr ),   // cont writes MEM2
    .a_ce   ( cont_wr1_ce   ),
    .a_we   ( cont_wr1_we   ),
    .a_d    ( cont_wr1_d    ),
    .a_q    (               ),
    .b_addr ( mpe2_in_addr  ),   // MPE2 reads MEM2
    .b_ce   ( mpe2_in_ce    ),
    .b_we   ( 1'b0          ),
    .b_d    ( '0            ),
    .b_q    ( mpe2_in_q     )
  );

  //THIS IS NOW MEM1
  in_Mem #(.DEPTH(8), .AW(3), .DW(64)) i_buffer_1(
    .clk_i  (clk_i), 
    .rst_ni (rst_ni),
    // port A -- read/write
    .a_addr  (cont_wr_addr),  //only control writes here
    .a_ce    (cont_wr_ce),
    .a_we    (cont_wr_we),
    .a_d     (cont_wr_d),
    .a_q     (),
    // port B -- read/write
    .b_addr   (comp_b1_addr),
    .b_ce     (comp_b1_ce),
    .b_we       (1'b0),
    .b_d         ('0),
    .b_q      (comp_b1_q));

  res_Mem #(.DEPTH(16), .AW(4), .DW(32)) i_buffer_2(
     .clk_i  ( clk_i           ),
    .rst_ni ( rst_ni          ),
    // port A : compute write 0  (during COMPUTE) / cont FIFO read (during UNLOAD)
    .a_addr ( comp_b2_addr0   ),
    .a_we   ( comp_b2_we0     ),
    .a_ce   ( comp_b2_ce0 | cont_rd_read ),  // compute writes OR cont reads (phase-separated)
    .a_d    ( comp_b2_d0      ),
    .a_q    ( cont_rd_dout    ),
    .a_q_valid ( cont_rd_empty_n ),
    // port B : compute write 1
    .b_addr ( comp_b2_addr1   ),
    .b_ce   ( comp_b2_ce1     ),
    .b_we   ( comp_b2_we1     ),
    .b_d    ( comp_b2_d1      ),
    .b_q    (                 )
  );  

   res_Mem #(.DEPTH(16), .AW(4), .DW(32)) i_res2 (
    .clk_i  ( clk_i ), 
    .rst_ni( rst_ni ),
    .a_addr ( mpe2_res_addr0 ), 
    .a_we( mpe2_res_we0 ), 
    .a_ce( mpe2_res_ce0 ), 
    .a_d( mpe2_res_d0 ),
    .a_q    (cont_rd_dout1  ), .a_q_valid(cont_rd_empty_n1 ),   // DRAINED for observing purposes
    .b_addr ( mpe2_res_addr1 ), 
    .b_ce( mpe2_res_ce1 ), 
    .b_we( mpe2_res_we1 ),
    .b_d( mpe2_res_d1 ), 
    .b_q(  )
  );

   compute i_compute (     
    .ap_clk           ( clk_i         ),     
    .ap_rst           ( ~rst_ni        ),   // match cont's polarity (both use rst_ni)     
    .ap_start         ( compute_start ),     
    .ap_done          ( compute_done  ),     
    .ap_idle          (               ),     
    .ap_ready         (               ),     
    //Buffer_1 Reads from in Mem
    .buffer_1_address0  (comp_b1_addr),
    .buffer_1_ce0 (comp_b1_ce ),
    .buffer_1_q0  (comp_b1_q),
    .buffer_2_address0 ( comp_b2_addr0 ),
    .buffer_2_ce0      ( comp_b2_ce0   ),
    .buffer_2_we0      ( comp_b2_we0   ),
    .buffer_2_d0       ( comp_b2_d0    ),
    .buffer_2_address1  ( comp_b2_addr1 ),
    .buffer_2_ce1       ( comp_b2_ce1   ),
    .buffer_2_we1       ( comp_b2_we1   ),
    .buffer_2_d1        ( comp_b2_d1    ));

     compute i_mpe2 (
    .ap_clk           ( clk_i          ),
    .ap_rst           ( ~rst_ni         ),
    .ap_start         ( compute_start2 ),
    .ap_done          ( compute_done2  ),
    .ap_idle          (                ),
    .ap_ready         (                ),
    .buffer_1_address0( mpe2_in_addr   ),   // reads MEM2
    .buffer_1_ce0     ( mpe2_in_ce     ),
    .buffer_1_q0      ( mpe2_in_q      ),
    .buffer_2_address0( mpe2_res_addr0 ),   // writes res2
    .buffer_2_ce0     ( mpe2_res_ce0   ),
    .buffer_2_we0     ( mpe2_res_we0   ),
    .buffer_2_d0      ( mpe2_res_d0    ),
    .buffer_2_address1( mpe2_res_addr1 ),
    .buffer_2_ce1     ( mpe2_res_ce1   ),
    .buffer_2_we1     ( mpe2_res_we1   ),
    .buffer_2_d1      ( mpe2_res_d1    )
  );



  mac_streamer #(
    .MP ( MP )
  ) i_streamer (
    .clk_i            ( clk_i          ),
    .rst_ni           ( rst_ni         ),
    .test_mode_i      ( test_mode_i    ),
    .enable_i         ( enable         ),
    .clear_i          ( clear          ),
    .a_o              ( a.source       ),
    .b_o              ( b.source       ),
    .c_o              ( c.source       ),
    .d_i              ( d.sink         ),
    .tcdm             ( tcdm           ),
    .ctrl_i           ( streamer_ctrl  ),
    .flags_o          ( streamer_flags )
  );

  mac_ctrl #(
    .N_CORES   ( 2  ),
    .N_CONTEXT ( 2  ),
    .N_IO_REGS ( 16 ),
    .ID ( ID )
  ) i_ctrl (
    .clk_i            ( clk_i          ),
    .rst_ni           ( rst_ni         ),
    .test_mode_i      ( test_mode_i    ),
    .evt_o            ( evt_o          ),
    .clear_o          ( clear          ),
    .ctrl_streamer_o  ( streamer_ctrl  ),
    .flags_streamer_i ( streamer_flags ),
    .ctrl_engine_o    ( engine_ctrl    ),
    .flags_engine_i   ( engine_flags   ),
    .periph           ( periph         )
  );

  assign enable = 1'b1;

endmodule // mac_top