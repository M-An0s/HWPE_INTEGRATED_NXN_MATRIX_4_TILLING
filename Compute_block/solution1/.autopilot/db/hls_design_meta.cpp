#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("buffer_1_address0", 3, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("buffer_1_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("buffer_1_q0", 64, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("buffer_2_address0", 4, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("buffer_2_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("buffer_2_we0", 1, hls_out, 1, "ap_memory", "mem_we", 1),
	Port_Property("buffer_2_d0", 32, hls_out, 1, "ap_memory", "mem_din", 1),
	Port_Property("phase", 1, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("fwd_out1_din", 32, hls_out, 3, "ap_fifo", "fifo_port_we", 4),
	Port_Property("fwd_out1_full_n", 1, hls_in, 3, "ap_fifo", "fifo_status", 4),
	Port_Property("fwd_out1_write", 1, hls_out, 3, "ap_fifo", "fifo_data", 4),
	Port_Property("fwd_out2_din", 32, hls_out, 4, "ap_fifo", "fifo_port_we", 4),
	Port_Property("fwd_out2_full_n", 1, hls_in, 4, "ap_fifo", "fifo_status", 4),
	Port_Property("fwd_out2_write", 1, hls_out, 4, "ap_fifo", "fifo_data", 4),
};
const char* HLS_Design_Meta::dut_name = "compute";
