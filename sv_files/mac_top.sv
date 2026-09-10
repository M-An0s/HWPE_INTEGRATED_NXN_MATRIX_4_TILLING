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
 
  // cont FIFO-read side of the shared memory (results out)
  logic        cont_b1_ce;
  logic [63:0] cont_b1_q;
  logic        cont_b1_empty_n;   // <- Mem.a_q_valid (optional / debug)
 
  // compute read/write side of the shared memory
  logic [4:0]  comp_b1_addr;
  logic        comp_b1_ce;
  logic        comp_b1_we;
  logic [63:0] comp_b1_d;
  logic [63:0] comp_b1_q;



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
    .buffer_1_rd_dout     ( cont_b1_q            ),
    .buffer_1_rd_empty_n  ( cont_b1_empty_n       ),
    .buffer_1_rd_read     ( cont_b1_ce            ),
    // buffer_1_wr  (ap_memory write of inputs) -> shared BRAM write port
    .buffer_1_wr_address0 ( comp_b1_addr            ),
    .buffer_1_wr_ce0      ( comp_b1_ce              ),
    .buffer_1_wr_we0      ( comp_b1_we              ),
    .buffer_1_wr_d0       ( comp_b1_d               ),
    // handshake to compute
    .compute_start    ( compute_start           ),
    .compute_done     ( compute_done            )
  );


  Mem #(.DEPTH(20), .AW(5), .DW(64)) i_buffer_1 (
    .clk_i     ( clk_i           ),
    .rst_ni    ( rst_ni          ),
    .a_ce      ( cont_b1_ce      ),
    .a_q       ( cont_b1_q       ),
    .a_q_valid ( cont_b1_empty_n ),
    .b_addr    ( comp_b1_addr    ),
    .b_ce      ( comp_b1_ce      ),
    .b_we      ( comp_b1_we      ),
    .b_d       ( comp_b1_d       ),
    .b_q       ( comp_b1_q       )    // <-- read data out to compute
  );

   compute i_compute (     
    .ap_clk           ( clk_i         ),     
    .ap_rst           ( ~rst_ni        ),   // match cont's polarity (both use rst_ni)     
    .ap_start         ( compute_start ),     
    .ap_done          ( compute_done  ),     
    .ap_idle          (               ),     
    .ap_ready         (               ),     
    .buffer_1_address0 ( comp_b1_addr  ),     
    .buffer_1_ce0      ( comp_b1_ce    ),     
    .buffer_1_we0      ( comp_b1_we    ),     
    .buffer_1_d0       ( comp_b1_d     ),    
    .buffer_1_q0      (comp_b1_q)   ); 

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