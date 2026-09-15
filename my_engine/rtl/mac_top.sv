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
  parameter int unsigned ID  = 10,
  parameter int unsigned N  = 128,
  parameter int unsigned N2 = 256,
  parameter int unsigned logN = 7,
  parameter int unsigned logN2 = 8
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
    logic [logN:0]  comp_b1_addr;    // AW for in_Mem
    logic        comp_b1_ce;
    logic [63:0] comp_b1_q;       // read data to compute (64-bit packed)
  
    logic [logN:0]  cont_wr_addr;    // cont writes inputs
    logic        cont_wr_ce;
    logic        cont_wr_we;
    logic [63:0] cont_wr_d;
  
    // res_Mem <-> compute (two write ports) and cont (FIFO drain)
    logic [logN:0]  comp_b2_addr0, comp_b2_addr1;
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

    logic        cont_rd_read2;    // cont FIFO pop
    logic [31:0] cont_rd_dout2;
    logic        cont_rd_empty_n2;
    logic        cont_rd_read3;    // cont FIFO pop
    logic [31:0] cont_rd_dout3;
    logic        cont_rd_empty_n3;


      // --- cont -> MEM2 write (second input memory) ---
    logic [logN:0]  cont_wr1_addr;   // AW=logN for DEPTH=N input mem -- MATCH your MEM2 depth
    logic        cont_wr1_ce;
    logic        cont_wr1_we;
    logic [63:0] cont_wr1_d;      // 64-bit packed input words
  
    // --- MPE2 <-> MEM2 read (compute reads its inputs) ---
    logic [logN:0]  mpe2_in_addr;    // AW=3, match MEM2
    logic        mpe2_in_ce;
    logic [63:0] mpe2_in_q;       // 64-bit packed read data
  
    // --- MPE2 -> res2 write (two write ports) ---
    logic [logN:0]  mpe2_res_addr0;  // AW=4 for DEPTH=16 result mem
    logic        mpe2_res_ce0;
    logic        mpe2_res_we0;
    logic [31:0] mpe2_res_d0;     // 32-bit results
    logic [logN:0]  mpe2_res_addr1;
    logic        mpe2_res_ce1;
    logic        mpe2_res_we1;
    logic [31:0] mpe2_res_d1;
  
    // --- MPE2 handshake ---
    logic        compute_start2;
    logic        compute_done2;

    // --- slave handshakes (from cont) ---
  logic slave_start1, slave_done1;
  logic slave_start2, slave_done2;

  //phase of computations 
  logic phase_c1;
  logic phase_c2;

  //TRY to pipeline: 
  logic [logN:0]  comp_b1_addr2;    // AW for in_Mem
  logic        comp_b1_ce2;
  logic [63:0] comp_b1_q2;       // read data to compute (64-bit packed)s

   logic [logN:0]  mpe2_in_addr2;    // AW=3, match MEM2
   logic        mpe2_in_ce2;
   logic [63:0] mpe2_in_q2;       // 64-bit packed read data

  //MEMORY FOR THE SECONDARIES

     logic [logN:0]  cont_wr_addr2a;    // cont writes inputs
  logic        cont_wr_ce2a;
  logic        cont_wr_we2a;
  logic [31:0] cont_wr_d2a;

  logic [logN:0]  cont_wr_addr2b;    // cont writes inputs
  logic        cont_wr_ce2b;
  logic        cont_wr_we2b;
  logic [31:0] cont_wr_d2b;

  logic [logN:0]  cont_wr_addr3a;    // cont writes inputs
  logic        cont_wr_ce3a;
  logic        cont_wr_we3a;
  logic [31:0] cont_wr_d3a;

  logic [logN:0]  cont_wr_addr3b;    // cont writes inputs
  logic        cont_wr_ce3b;
  logic        cont_wr_we3b;
  logic [31:0] cont_wr_d3b;

  //SLAVE SIDE MEMORY AND RESULTS 

  
   logic [logN:0]  comp_ba_addrs;    // AW for in_Mem
    logic        comp_ba_ces;
    logic [31:0] comp_ba_qs;  

    logic [logN:0]  comp_bb_addrs;    // AW for in_Mem
    logic        comp_bb_ces;
    logic [31:0] comp_bb_qs; 
    logic [logN:0]  comp_bb_addrs1;    // AW for in_Mem
    logic        comp_bb_ces1;
    logic [31:0] comp_bb_qs1;

    //for slave out mem
    logic [logN:0]  sl1_b2_addr1;
    logic        sl1_b2_ce1; 
    logic        sl1_b2_we1;   
    logic [31:0] sl1_b2_d1; 


    logic [logN:0]  comp_ba_addrs2;    // AW for in_Mem
    logic        comp_ba_ces2;
    logic [31:0] comp_ba_qs2;  

    logic [logN:0]  comp_bb_addrs2;    // AW for in_Mem
    logic        comp_bb_ces2;
    logic [31:0] comp_bb_qs2; 
    logic [logN:0]  comp_bb_addrs12;    // AW for in_Mem
    logic        comp_bb_ces12;
    logic [31:0] comp_bb_qs12;

    //for slave out mem
    logic [logN:0]  sl1_b2_addr12;
    logic        sl1_b2_ce12; 
    logic        sl1_b2_we12;   
    logic [31:0] sl1_b2_d12; 
  




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

    .buffer_1_rd2_dout    (cont_rd_dout2),
    .buffer_1_rd2_empty_n  (cont_rd_empty_n2),
    .buffer_1_rd2_read     (cont_rd_read2),
    .buffer_1_rd3_dout     (cont_rd_dout3),
    .buffer_1_rd3_empty_n   (cont_rd_empty_n3),
    .buffer_1_rd3_read      (cont_rd_read3),

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
    .compute_done2            ( compute_done2 ),

    //memories for 2a,2b,3a,3b:
    .buffer_1_wr2a_address0 ( cont_wr_addr2a),
    .buffer_1_wr2a_ce0  (cont_wr_ce2a),
    .buffer_1_wr2a_we0  (cont_wr_we2a),
    .buffer_1_wr2a_d0   (cont_wr_d2a),
    .buffer_1_wr2b_address0 (cont_wr_addr2b),
    .buffer_1_wr2b_ce0  (cont_wr_ce2b),
    .buffer_1_wr2b_we0  (cont_wr_we2b),
    .buffer_1_wr2b_d0 (cont_wr_d2b),
    .buffer_1_wr3a_address0 (cont_wr_addr3a),
    .buffer_1_wr3a_ce0  (cont_wr_ce3a),
    .buffer_1_wr3a_we0  (cont_wr_we3a),
    .buffer_1_wr3a_d0  (cont_wr_d3a),
    .buffer_1_wr3b_address0  (cont_wr_addr3b),
    .buffer_1_wr3b_ce0  (cont_wr_ce3b),
    .buffer_1_wr3b_we0  (cont_wr_we3b),
    .buffer_1_wr3b_d0  (cont_wr_d3b),

    //slaves:
    .slave_start1 (slave_start1 ), 
    .slave_done1  (slave_done1),    
    .slave_start2 (slave_start2 ),  
    .slave_done2  (slave_done2),  
    .phase1        (phase_c1),
    .phase2        (phase_c2)
  );

  
res_Mem #(.DEPTH(N2), .AW(logN2), .DW(32)) i_res_s2(
    .clk_i  ( clk_i           ),
    .rst_ni ( rst_ni          ),
    // port A : compute write 0  (during COMPUTE) / cont FIFO read (during UNLOAD)
    .a_addr (sl1_b2_addr12 ),
    .a_we   (  sl1_b2_we12 ),
    .a_ce   ( sl1_b2_ce12 | cont_rd_read3),  // compute writes OR cont reads (phase-separated)
    .f_mode (cont_rd_read3),
    .a_d    (sl1_b2_d12 ),  //
    .a_q    (cont_rd_dout3     ), //cont_rd_dout
    .a_q_valid (cont_rd_empty_n3 ), //cont_rd_empty_n
    // port B : compute write 1
    .b_addr ('0), 
    .b_ce   (1'b0),
    .b_we   (1'b0),
    .b_d    ('0),
    .b_q    (      )
  );  

  

    compute2in spe2(
    .ap_clk           ( clk_i          ),
    .ap_rst           ( ~rst_ni         ),
    .ap_start         (slave_start2),
    .ap_done          (slave_done2),
    .ap_idle          (),
    .ap_ready         (),
    .buffer_a_address0    (comp_ba_addrs2),
    .buffer_a_ce0         (comp_ba_ces2),
    .buffer_a_q0          (comp_ba_qs2),
    .buffer_b_address0    (comp_bb_addrs2),
    .buffer_b_ce0         (comp_bb_ces2),
    //.buffer_b_we0         (), //STRANGE PORTS 
    //.buffer_b_d0          (),
    .buffer_b_q0          (comp_bb_qs2),
    //.buffer_b_address1    (comp_bb_addrs12),
    //.buffer_b_ce1         (comp_bb_ces12),
    //.buffer_b_we1         (),
    //.buffer_b_d1          (),
    //.buffer_b_q1          (comp_bb_qs12),
    .buffer_2_address0    (sl1_b2_addr12 ),
    .buffer_2_ce0         (sl1_b2_ce12),
    .buffer_2_we0         (sl1_b2_we12),
    .buffer_2_d0          (sl1_b2_d12 ),
    .phase                (phase_c2)
);




  in_Mem #(.DEPTH(N), .AW(logN), .DW(32)) i_mem_3b(
    .clk_i  (clk_i), 
    .rst_ni (rst_ni),
    // port A -- read/write !!!!!
    .a_addr  ( cont_wr_addr3b),  //only control writes here -> TRY TO COMBINE THE FUNCTIONALITY
    .a_ce    (cont_wr_ce3b),
    .a_we    ( cont_wr_we3b ),
    .a_d     (cont_wr_d3b ),
    .a_q     (),
    // port B -- read/write
    .b_addr   (comp_bb_addrs2),
    .b_ce     (comp_bb_ces2),
    .b_we       (1'b0),
    .b_d         ('0),
    .b_q      (comp_bb_qs2), 
    .c_addr   (), //comp_b1_addr2
    .c_ce     (), //comp_b1_ce2
    .c_we       (1'b0),
    .c_d         ('0),
    .c_q      () ); //comp_b1_q2



    
  in_Mem #(.DEPTH(N), .AW(logN), .DW(32)) i_mem_3a(
    .clk_i  (clk_i), 
    .rst_ni (rst_ni),
    // port A -- read/write !!!!!
    .a_addr  ( cont_wr_addr3a),  //only control writes here -> TRY TO COMBINE THE FUNCTIONALITY
    .a_ce    (cont_wr_ce3a),
    .a_we    ( cont_wr_we3a ),
    .a_d     (cont_wr_d3a ),
    .a_q     (),
    // port B -- read/write
    .b_addr   (comp_ba_addrs2),
    .b_ce     (comp_ba_ces2),
    .b_we       (1'b0),
    .b_d         ('0),
    .b_q      (comp_ba_qs2), 
    .c_addr   (), //comp_b1_addr2
    .c_ce     (), //comp_b1_ce2
    .c_we       (1'b0),
    .c_d         ('0),
    .c_q      () ); //comp_b1_q2 
   

    compute2in spe1(
    .ap_clk           ( clk_i          ),
    .ap_rst           ( ~rst_ni         ),
    .ap_start         (slave_start1),
    .ap_done          (slave_done1),
    .ap_idle          (),
    .ap_ready         (),
    .buffer_a_address0    (comp_ba_addrs),
    .buffer_a_ce0         (comp_ba_ces),
    .buffer_a_q0          (comp_ba_qs),
    .buffer_b_address0    (comp_bb_addrs),
    .buffer_b_ce0         (comp_bb_ces),
    //.buffer_b_we0         (), //STRANGE PORTS 
    //.buffer_b_d0          (),
    .buffer_b_q0          (comp_bb_qs),
    //.buffer_b_address1    (comp_bb_addrs1),
    //.buffer_b_ce1         (comp_bb_ces1),
    //.buffer_b_we1         (),
    //.buffer_b_d1          (),
    //.buffer_b_q1          (comp_bb_qs1),
    .buffer_2_address0    (sl1_b2_addr1 ),
    .buffer_2_ce0         (sl1_b2_ce1),
    .buffer_2_we0         (sl1_b2_we1),
    .buffer_2_d0          (sl1_b2_d1 ),
    .phase                (phase_c2)
);

 

res_Mem #(.DEPTH(N2), .AW(logN2), .DW(32)) i_res_s1(
    .clk_i  ( clk_i           ),
    .rst_ni ( rst_ni          ),
    // port A : compute write 0  (during COMPUTE) / cont FIFO read (during UNLOAD)
    .a_addr (sl1_b2_addr1 ),
    .a_we   (  sl1_b2_we1 ),
    .a_ce   ( sl1_b2_ce1 | cont_rd_read2),  // compute writes OR cont reads (phase-separated)
    .f_mode (cont_rd_read2),
    .a_d    (sl1_b2_d1 ),  //
    .a_q    (cont_rd_dout2     ), //cont_rd_dout
    .a_q_valid (cont_rd_empty_n2 ), //cont_rd_empty_n
    // port B : compute write 1
    .b_addr ('0), 
    .b_ce   (1'b0),
    .b_we   (1'b0),
    .b_d    ('0),
    .b_q    (      )
  );  

  

  in_Mem #(.DEPTH(N), .AW(logN), .DW(32)) i_mem_2a(
    .clk_i  (clk_i), 
    .rst_ni (rst_ni),
    // port A -- read/write !!!!!
    .a_addr  ( cont_wr_addr2a),  //only control writes here -> TRY TO COMBINE THE FUNCTIONALITY
    .a_ce    (cont_wr_ce2a),
    .a_we    ( cont_wr_we2a ),
    .a_d     (cont_wr_d2a ),
    .a_q     (),
    // port B -- read/write
    .b_addr   (comp_ba_addrs),
    .b_ce     (comp_ba_ces),
    .b_we       (1'b0),
    .b_d         ('0),
    .b_q      (comp_ba_qs), 
    .c_addr   (), //comp_b1_addr2
    .c_ce     (), //comp_b1_ce2
    .c_we       (1'b0),
    .c_d         ('0),
    .c_q      () ); //comp_b1_q2


  in_Mem #(.DEPTH(N), .AW(logN), .DW(32)) i_mem_2b(
    .clk_i  (clk_i), 
    .rst_ni (rst_ni),
    // port A -- read/write !!!!!
    .a_addr  ( cont_wr_addr2b),  //only control writes here -> TRY TO COMBINE THE FUNCTIONALITY
    .a_ce    (cont_wr_ce2b),
    .a_we    ( cont_wr_we2b),
    .a_d     (cont_wr_d2b),
    .a_q     (),
    // port B -- read/write
    .b_addr   (comp_bb_addrs),
    .b_ce     (comp_bb_ces),
    .b_we       (1'b0),
    .b_d         ('0),
    .b_q      (comp_bb_qs));
    //.c_addr   (comp_bb_addrs1), //comp_b1_addr2
    //.c_ce     (comp_bb_ces1), //comp_b1_ce2
    //.c_we       (1'b0),
    //.c_d         ('0),
    //.c_q      (comp_bb_qs1)  //comp_b1_q2


  // --- second input memory (MEM2) ---
  in_Mem #(.DEPTH(N), .AW(logN), .DW(64)) i_mem2 (
    .clk_i  ( clk_i         ),
    .rst_ni ( rst_ni        ),
    .a_addr  (cont_wr1_addr),  //only control writes here -> TRY TO COMBINE THE FUNCTIONALITY
    .a_ce    (cont_wr1_ce ),
    .a_we    ( cont_wr1_we),
    .a_d     (cont_wr1_d ),
    .a_q     ( ),
    .b_addr ( mpe2_in_addr  ),   // MPE2 reads MEM2
    .b_ce   ( mpe2_in_ce    ),
    .b_we   ( 1'b0          ),
    .b_d    ( '0            ),
    .b_q    ( mpe2_in_q     ),
    .c_addr   (mpe2_in_addr2), //mpe2_in_addr2
    .c_ce     (mpe2_in_ce2), //mpe2_in_ce2
    .c_we       (1'b0),
    .c_d         ('0),
    .c_q      (mpe2_in_q2) 
  );


  //THIS IS NOW MEM1
  in_Mem #(.DEPTH(N), .AW(logN), .DW(64)) i_mem_1(
    .clk_i  (clk_i), 
    .rst_ni (rst_ni),
    // port A -- read/write !!!!!
    .a_addr  ( cont_wr_addr),  //only control writes here -> TRY TO COMBINE THE FUNCTIONALITY
    .a_ce    (cont_wr_ce),
    .a_we    ( cont_wr_we ),
    .a_d     (cont_wr_d ),
    .a_q     (),
    // port B -- read/write
    .b_addr   (comp_b1_addr),
    .b_ce     (comp_b1_ce),
    .b_we       (1'b0),
    .b_d         ('0),
    .b_q      (comp_b1_q), 
    .c_addr   (comp_b1_addr2), //comp_b1_addr2
    .c_ce     (comp_b1_ce2), //comp_b1_ce2
    .c_we       (1'b0),
    .c_d         ('0),
    .c_q      (comp_b1_q2) ); //comp_b1_q2


  res_Mem #(.DEPTH(N2), .AW(logN2), .DW(32)) i_buffer_2(
     .clk_i  ( clk_i           ),
    .rst_ni ( rst_ni          ),
    // port A : compute write 0  (during COMPUTE) / cont FIFO read (during UNLOAD)
    .a_addr ( comp_b2_addr0   ),
    .a_we   ( comp_b2_we0     ),
    .a_ce   ( comp_b2_ce0 | cont_rd_read ),  // compute writes OR cont reads (phase-separated)
    .f_mode (cont_rd_read),
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

   res_Mem #(.DEPTH(N2), .AW(logN2), .DW(32)) i_res2 (
    .clk_i  ( clk_i ), 
    .rst_ni( rst_ni ),
    .a_addr ( mpe2_res_addr0 ), 
    .a_we( mpe2_res_we0 ), 
    .a_ce( mpe2_res_ce0 | cont_rd_read1 ), 
    .f_mode (cont_rd_read1),
    .a_d( mpe2_res_d0 ),
    .a_q    (cont_rd_dout1  ), 
    .a_q_valid(cont_rd_empty_n1 ),   // DRAINED for observing purposes
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
    //Second read port: 
    //.buffer_1_address1( comp_b1_addr2 ),  // -> in_Mem port A, reading
    //.buffer_1_ce1     ( comp_b1_ce2   ),
    //.buffer_1_q1      ( comp_b1_q2    ),

    .buffer_2_address0 ( comp_b2_addr0 ),
    .buffer_2_ce0      ( comp_b2_ce0   ),
    .buffer_2_we0      ( comp_b2_we0   ),
    .buffer_2_d0       ( comp_b2_d0    ),
    //.fwd_out1_din       (m1_fwd1_din),
    //.fwd_out1_full_n    (m1_fwd1_full_n ),
    //.fwd_out1_write     (m1_fwd1_write),
    //.fwd_out2_din       (m1_fwd2_din ),
    //.fwd_out2_full_n    (m1_fwd2_full_n),
    //.fwd_out2_write     (m1_fwd2_write ),
    .phase              (phase_c1));

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
    //CAREFULLL
   // .buffer_1_address1( mpe2_in_addr2  ),   // NEW: 2nd read -> MEM2 port A
   // .buffer_1_ce1     ( mpe2_in_ce2    ),
    //.buffer_1_q1      ( mpe2_in_q2     ),

    .buffer_2_address0( mpe2_res_addr0 ),   // writes res2
    .buffer_2_ce0     ( mpe2_res_ce0   ),
    .buffer_2_we0     ( mpe2_res_we0   ),
    .buffer_2_d0      ( mpe2_res_d0    ),
    //.fwd_out1_din     (m2_fwd2_din     ),
    //.fwd_out1_full_n   (m2_fwd2_full_n),
    //.fwd_out1_write    (m2_fwd2_write  ),
    //.fwd_out2_din       ( m2_fwd1_din  ),
    //.fwd_out2_full_n    ( m2_fwd1_full_n),
    //.fwd_out2_write     (m2_fwd1_write ),
    .phase              (phase_c2)
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


 /*

  // ---- master1 -> slave1 (slave1's fwd_in1) ----
  stream_fifo #(.DW(32), .DEPTH(16), .AW(4)) i_fifo_m1s1 (
    .clk_i   ( clk_i          ),
    .rst_ni  ( rst_ni         ),
    .wr_data ( m1_fwd1_din    ),
    .wr_en   ( m1_fwd1_write  ),
    .full_n  ( m1_fwd1_full_n ),
    .rd_data ( s1_fwd1_dout   ),
    .empty_n ( s1_fwd1_empty_n),
    .rd_en   ( s1_fwd1_read   )
  );
 
  // ---- master1 -> slave2 (slave2's fwd_in1) ----
  stream_fifo #(.DW(32), .DEPTH(16), .AW(4)) i_fifo_m1s2 (
    .clk_i   ( clk_i          ),
    .rst_ni  ( rst_ni         ),
    .wr_data ( m1_fwd2_din    ),
    .wr_en   ( m1_fwd2_write  ),
    .full_n  ( m1_fwd2_full_n ),
    .rd_data ( s2_fwd1_dout   ),
    .empty_n ( s2_fwd1_empty_n),
    .rd_en   ( s2_fwd1_read   )
  );
 
  // ---- master2 -> slave1 (slave1's fwd_in2) ----
  stream_fifo #(.DW(32), .DEPTH(16), .AW(4)) i_fifo_m2s1 (
    .clk_i   ( clk_i          ),
    .rst_ni  ( rst_ni         ),
    .wr_data ( m2_fwd1_din    ),
    .wr_en   ( m2_fwd1_write  ),
    .full_n  ( m2_fwd1_full_n ),
    .rd_data ( s1_fwd2_dout   ),
    .empty_n ( s1_fwd2_empty_n),
    .rd_en   ( s1_fwd2_read   )
  );
 
  // ---- master2 -> slave2 (slave2's fwd_in2) ----
  stream_fifo #(.DW(32), .DEPTH(16), .AW(4)) i_fifo_m2s2 (
    .clk_i   ( clk_i          ),
    .rst_ni  ( rst_ni         ),
    .wr_data ( m2_fwd2_din    ),
    .wr_en   ( m2_fwd2_write  ),
    .full_n  ( m2_fwd2_full_n ),
    .rd_data ( s2_fwd2_dout   ),
    .empty_n ( s2_fwd2_empty_n),
    .rd_en   ( s2_fwd2_read   )
  );
*/