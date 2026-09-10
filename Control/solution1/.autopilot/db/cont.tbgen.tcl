set moduleName cont
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {cont}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_i_valid int 1 regular {pointer 0}  }
	{ a_i_ready int 1 regular {pointer 1}  }
	{ a_i_data int 32 regular {pointer 0}  }
	{ a_i_strb int 4 unused {pointer 0}  }
	{ b_i_valid int 1 regular {pointer 0}  }
	{ b_i_ready int 1 regular {pointer 1}  }
	{ b_i_data int 32 regular {pointer 0}  }
	{ b_i_strb int 4 unused {pointer 0}  }
	{ c_i_valid int 1 unused {pointer 0}  }
	{ c_i_ready int 1 regular {pointer 1}  }
	{ c_i_data int 32 unused {pointer 0}  }
	{ c_i_strb int 4 unused {pointer 0}  }
	{ d_o_valid int 1 regular {pointer 1}  }
	{ d_o_ready int 1 regular {pointer 0}  }
	{ d_o_data int 32 regular {pointer 1}  }
	{ d_o_strb int 4 regular {pointer 1}  }
	{ clear uint 1 regular  }
	{ enable uint 1 regular  }
	{ function_r uint 1 unused  }
	{ start_r uint 1 unused  }
	{ shift int 5 regular  }
	{ len int 11 regular  }
	{ f_cnt int 11 regular {pointer 1}  }
	{ f_valid int 1 regular {pointer 1}  }
	{ buffer_1_rd int 32 regular {fifo 0 volatile }  }
	{ buffer_1_rd1 int 32 regular {fifo 0 volatile }  }
	{ buffer_1_wr int 64 regular {array 20 { 0 3 } 0 1 }  }
	{ buffer_1_wr1 int 64 regular {array 20 { 0 3 } 0 1 }  }
	{ compute_start1 int 1 regular {pointer 1}  }
	{ compute_done1 uint 1 regular  }
	{ compute_start2 int 1 regular {pointer 1}  }
	{ compute_done2 uint 1 regular  }
	{ slave_start1 int 1 regular {pointer 1}  }
	{ slave_done1 uint 1 unused  }
	{ slave_start2 int 1 regular {pointer 1}  }
	{ slave_done2 uint 1 unused  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_i_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "a_i_ready", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_i_data", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_i_strb", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b_i_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "b_i_ready", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_i_data", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_i_strb", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "c_i_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "c_i_ready", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_i_data", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_i_strb", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "d_o_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_ready", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "d_o_data", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_o_strb", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "clear", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "enable", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "function_r", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "start_r", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "shift", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "len", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "f_cnt", "interface" : "wire", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "f_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_1_rd", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_1_rd1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_1_wr", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buffer_1_wr1", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "compute_start1", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "compute_done1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "compute_start2", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "compute_done2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "slave_start1", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "slave_done1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "slave_start2", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "slave_done2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ a_i_valid sc_in sc_logic 1 signal 0 } 
	{ a_i_ready sc_out sc_logic 1 signal 1 } 
	{ a_i_data sc_in sc_lv 32 signal 2 } 
	{ a_i_strb sc_in sc_lv 4 signal 3 } 
	{ b_i_valid sc_in sc_logic 1 signal 4 } 
	{ b_i_ready sc_out sc_logic 1 signal 5 } 
	{ b_i_data sc_in sc_lv 32 signal 6 } 
	{ b_i_strb sc_in sc_lv 4 signal 7 } 
	{ c_i_valid sc_in sc_logic 1 signal 8 } 
	{ c_i_ready sc_out sc_logic 1 signal 9 } 
	{ c_i_data sc_in sc_lv 32 signal 10 } 
	{ c_i_strb sc_in sc_lv 4 signal 11 } 
	{ d_o_valid sc_out sc_logic 1 signal 12 } 
	{ d_o_ready sc_in sc_logic 1 signal 13 } 
	{ d_o_data sc_out sc_lv 32 signal 14 } 
	{ d_o_strb sc_out sc_lv 4 signal 15 } 
	{ clear sc_in sc_logic 1 signal 16 } 
	{ enable sc_in sc_logic 1 signal 17 } 
	{ function_r sc_in sc_logic 1 signal 18 } 
	{ start_r sc_in sc_logic 1 signal 19 } 
	{ shift sc_in sc_lv 5 signal 20 } 
	{ len sc_in sc_lv 11 signal 21 } 
	{ f_cnt sc_out sc_lv 11 signal 22 } 
	{ f_cnt_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ f_valid sc_out sc_logic 1 signal 23 } 
	{ f_valid_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ buffer_1_rd_dout sc_in sc_lv 32 signal 24 } 
	{ buffer_1_rd_empty_n sc_in sc_logic 1 signal 24 } 
	{ buffer_1_rd_read sc_out sc_logic 1 signal 24 } 
	{ buffer_1_rd1_dout sc_in sc_lv 32 signal 25 } 
	{ buffer_1_rd1_empty_n sc_in sc_logic 1 signal 25 } 
	{ buffer_1_rd1_read sc_out sc_logic 1 signal 25 } 
	{ buffer_1_wr_address0 sc_out sc_lv 5 signal 26 } 
	{ buffer_1_wr_ce0 sc_out sc_logic 1 signal 26 } 
	{ buffer_1_wr_we0 sc_out sc_logic 1 signal 26 } 
	{ buffer_1_wr_d0 sc_out sc_lv 64 signal 26 } 
	{ buffer_1_wr1_address0 sc_out sc_lv 5 signal 27 } 
	{ buffer_1_wr1_ce0 sc_out sc_logic 1 signal 27 } 
	{ buffer_1_wr1_we0 sc_out sc_logic 1 signal 27 } 
	{ buffer_1_wr1_d0 sc_out sc_lv 64 signal 27 } 
	{ compute_start1 sc_out sc_logic 1 signal 28 } 
	{ compute_done1 sc_in sc_logic 1 signal 29 } 
	{ compute_start2 sc_out sc_logic 1 signal 30 } 
	{ compute_done2 sc_in sc_logic 1 signal 31 } 
	{ slave_start1 sc_out sc_logic 1 signal 32 } 
	{ slave_done1 sc_in sc_logic 1 signal 33 } 
	{ slave_start2 sc_out sc_logic 1 signal 34 } 
	{ slave_done2 sc_in sc_logic 1 signal 35 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "a_i_valid", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_i_valid", "role": "default" }} , 
 	{ "name": "a_i_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_i_ready", "role": "default" }} , 
 	{ "name": "a_i_data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_i_data", "role": "default" }} , 
 	{ "name": "a_i_strb", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_i_strb", "role": "default" }} , 
 	{ "name": "b_i_valid", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_i_valid", "role": "default" }} , 
 	{ "name": "b_i_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_i_ready", "role": "default" }} , 
 	{ "name": "b_i_data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_i_data", "role": "default" }} , 
 	{ "name": "b_i_strb", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_i_strb", "role": "default" }} , 
 	{ "name": "c_i_valid", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_i_valid", "role": "default" }} , 
 	{ "name": "c_i_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_i_ready", "role": "default" }} , 
 	{ "name": "c_i_data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_i_data", "role": "default" }} , 
 	{ "name": "c_i_strb", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c_i_strb", "role": "default" }} , 
 	{ "name": "d_o_valid", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_valid", "role": "default" }} , 
 	{ "name": "d_o_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_ready", "role": "default" }} , 
 	{ "name": "d_o_data", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_o_data", "role": "default" }} , 
 	{ "name": "d_o_strb", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "d_o_strb", "role": "default" }} , 
 	{ "name": "clear", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "clear", "role": "default" }} , 
 	{ "name": "enable", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "enable", "role": "default" }} , 
 	{ "name": "function_r", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "function_r", "role": "default" }} , 
 	{ "name": "start_r", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_r", "role": "default" }} , 
 	{ "name": "shift", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "shift", "role": "default" }} , 
 	{ "name": "len", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "len", "role": "default" }} , 
 	{ "name": "f_cnt", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "f_cnt", "role": "default" }} , 
 	{ "name": "f_cnt_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "f_cnt", "role": "ap_vld" }} , 
 	{ "name": "f_valid", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f_valid", "role": "default" }} , 
 	{ "name": "f_valid_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "f_valid", "role": "ap_vld" }} , 
 	{ "name": "buffer_1_rd_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_1_rd", "role": "dout" }} , 
 	{ "name": "buffer_1_rd_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_1_rd", "role": "empty_n" }} , 
 	{ "name": "buffer_1_rd_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_1_rd", "role": "read" }} , 
 	{ "name": "buffer_1_rd1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_1_rd1", "role": "dout" }} , 
 	{ "name": "buffer_1_rd1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_1_rd1", "role": "empty_n" }} , 
 	{ "name": "buffer_1_rd1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_1_rd1", "role": "read" }} , 
 	{ "name": "buffer_1_wr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "buffer_1_wr", "role": "address0" }} , 
 	{ "name": "buffer_1_wr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_1_wr", "role": "ce0" }} , 
 	{ "name": "buffer_1_wr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_1_wr", "role": "we0" }} , 
 	{ "name": "buffer_1_wr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "buffer_1_wr", "role": "d0" }} , 
 	{ "name": "buffer_1_wr1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "buffer_1_wr1", "role": "address0" }} , 
 	{ "name": "buffer_1_wr1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_1_wr1", "role": "ce0" }} , 
 	{ "name": "buffer_1_wr1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_1_wr1", "role": "we0" }} , 
 	{ "name": "buffer_1_wr1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "buffer_1_wr1", "role": "d0" }} , 
 	{ "name": "compute_start1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compute_start1", "role": "default" }} , 
 	{ "name": "compute_done1", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compute_done1", "role": "default" }} , 
 	{ "name": "compute_start2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compute_start2", "role": "default" }} , 
 	{ "name": "compute_done2", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "compute_done2", "role": "default" }} , 
 	{ "name": "slave_start1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slave_start1", "role": "default" }} , 
 	{ "name": "slave_done1", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slave_done1", "role": "default" }} , 
 	{ "name": "slave_start2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slave_start2", "role": "default" }} , 
 	{ "name": "slave_done2", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slave_done2", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "cont",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_i_valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_i_ready", "Type" : "None", "Direction" : "O"},
			{"Name" : "a_i_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_i_strb", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_i_valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_i_ready", "Type" : "None", "Direction" : "O"},
			{"Name" : "b_i_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_i_strb", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_i_valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_i_ready", "Type" : "None", "Direction" : "O"},
			{"Name" : "c_i_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_i_strb", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_o_valid", "Type" : "None", "Direction" : "O"},
			{"Name" : "d_o_ready", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_o_data", "Type" : "None", "Direction" : "O"},
			{"Name" : "d_o_strb", "Type" : "None", "Direction" : "O"},
			{"Name" : "clear", "Type" : "None", "Direction" : "I"},
			{"Name" : "enable", "Type" : "None", "Direction" : "I"},
			{"Name" : "function_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "start_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_cnt", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "f_valid", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buffer_1_rd", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "buffer_1_rd_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "buffer_1_rd1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "buffer_1_rd1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "buffer_1_wr", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buffer_1_wr1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "compute_start1", "Type" : "None", "Direction" : "O"},
			{"Name" : "compute_done1", "Type" : "None", "Direction" : "I"},
			{"Name" : "compute_start2", "Type" : "None", "Direction" : "O"},
			{"Name" : "compute_done2", "Type" : "None", "Direction" : "I"},
			{"Name" : "slave_start1", "Type" : "None", "Direction" : "O"},
			{"Name" : "slave_done1", "Type" : "None", "Direction" : "I"},
			{"Name" : "slave_start2", "Type" : "None", "Direction" : "O"},
			{"Name" : "slave_done2", "Type" : "None", "Direction" : "I"},
			{"Name" : "buffer_ok", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "r_acc_valid", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "b_count_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "r_cnt_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "i", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "done1_seen", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "done2_seen", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "j_a", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "j_b", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "r_acc_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "store_result_valid", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "buffer_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_launched", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_launched2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "slave_launched", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "store_result_ready", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	cont {
		a_i_valid {Type I LastRead 0 FirstWrite -1}
		a_i_ready {Type O LastRead -1 FirstWrite 0}
		a_i_data {Type I LastRead 0 FirstWrite -1}
		a_i_strb {Type I LastRead -1 FirstWrite -1}
		b_i_valid {Type I LastRead 0 FirstWrite -1}
		b_i_ready {Type O LastRead -1 FirstWrite 0}
		b_i_data {Type I LastRead 0 FirstWrite -1}
		b_i_strb {Type I LastRead -1 FirstWrite -1}
		c_i_valid {Type I LastRead -1 FirstWrite -1}
		c_i_ready {Type O LastRead -1 FirstWrite 0}
		c_i_data {Type I LastRead -1 FirstWrite -1}
		c_i_strb {Type I LastRead -1 FirstWrite -1}
		d_o_valid {Type O LastRead -1 FirstWrite 0}
		d_o_ready {Type I LastRead 0 FirstWrite -1}
		d_o_data {Type O LastRead -1 FirstWrite 0}
		d_o_strb {Type O LastRead -1 FirstWrite 0}
		clear {Type I LastRead 0 FirstWrite -1}
		enable {Type I LastRead 0 FirstWrite -1}
		function_r {Type I LastRead -1 FirstWrite -1}
		start_r {Type I LastRead -1 FirstWrite -1}
		shift {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}
		f_cnt {Type O LastRead -1 FirstWrite 0}
		f_valid {Type O LastRead -1 FirstWrite 0}
		buffer_1_rd {Type I LastRead 0 FirstWrite -1}
		buffer_1_rd1 {Type I LastRead 0 FirstWrite -1}
		buffer_1_wr {Type O LastRead -1 FirstWrite 0}
		buffer_1_wr1 {Type O LastRead -1 FirstWrite 0}
		compute_start1 {Type O LastRead -1 FirstWrite 0}
		compute_done1 {Type I LastRead 0 FirstWrite -1}
		compute_start2 {Type O LastRead -1 FirstWrite 0}
		compute_done2 {Type I LastRead 0 FirstWrite -1}
		slave_start1 {Type O LastRead -1 FirstWrite 0}
		slave_done1 {Type I LastRead -1 FirstWrite -1}
		slave_start2 {Type O LastRead -1 FirstWrite 0}
		slave_done2 {Type I LastRead -1 FirstWrite -1}
		buffer_ok {Type IO LastRead -1 FirstWrite -1}
		r_acc_valid {Type IO LastRead -1 FirstWrite -1}
		state {Type IO LastRead -1 FirstWrite -1}
		b_count_V {Type IO LastRead -1 FirstWrite -1}
		r_cnt_V {Type IO LastRead -1 FirstWrite -1}
		i {Type IO LastRead -1 FirstWrite -1}
		done1_seen {Type IO LastRead -1 FirstWrite -1}
		done2_seen {Type IO LastRead -1 FirstWrite -1}
		j_a {Type IO LastRead -1 FirstWrite -1}
		j_b {Type IO LastRead -1 FirstWrite -1}
		r_acc_V {Type IO LastRead -1 FirstWrite -1}
		store_result_valid {Type IO LastRead -1 FirstWrite -1}
		buffer_V {Type IO LastRead -1 FirstWrite -1}
		compute_launched {Type IO LastRead -1 FirstWrite -1}
		compute_launched2 {Type IO LastRead -1 FirstWrite -1}
		slave_launched {Type IO LastRead -1 FirstWrite -1}
		store_result_ready {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_i_valid { ap_none {  { a_i_valid in_data 0 1 } } }
	a_i_ready { ap_none {  { a_i_ready out_data 1 1 } } }
	a_i_data { ap_none {  { a_i_data in_data 0 32 } } }
	a_i_strb { ap_none {  { a_i_strb in_data 0 4 } } }
	b_i_valid { ap_none {  { b_i_valid in_data 0 1 } } }
	b_i_ready { ap_none {  { b_i_ready out_data 1 1 } } }
	b_i_data { ap_none {  { b_i_data in_data 0 32 } } }
	b_i_strb { ap_none {  { b_i_strb in_data 0 4 } } }
	c_i_valid { ap_none {  { c_i_valid in_data 0 1 } } }
	c_i_ready { ap_none {  { c_i_ready out_data 1 1 } } }
	c_i_data { ap_none {  { c_i_data in_data 0 32 } } }
	c_i_strb { ap_none {  { c_i_strb in_data 0 4 } } }
	d_o_valid { ap_none {  { d_o_valid out_data 1 1 } } }
	d_o_ready { ap_none {  { d_o_ready in_data 0 1 } } }
	d_o_data { ap_none {  { d_o_data out_data 1 32 } } }
	d_o_strb { ap_none {  { d_o_strb out_data 1 4 } } }
	clear { ap_none {  { clear in_data 0 1 } } }
	enable { ap_none {  { enable in_data 0 1 } } }
	function_r { ap_none {  { function_r in_data 0 1 } } }
	start_r { ap_none {  { start_r in_data 0 1 } } }
	shift { ap_none {  { shift in_data 0 5 } } }
	len { ap_none {  { len in_data 0 11 } } }
	f_cnt { ap_vld {  { f_cnt out_data 1 11 }  { f_cnt_ap_vld out_vld 1 1 } } }
	f_valid { ap_vld {  { f_valid out_data 1 1 }  { f_valid_ap_vld out_vld 1 1 } } }
	buffer_1_rd { ap_fifo {  { buffer_1_rd_dout fifo_port_we 0 32 }  { buffer_1_rd_empty_n fifo_status 0 1 }  { buffer_1_rd_read fifo_data 1 1 } } }
	buffer_1_rd1 { ap_fifo {  { buffer_1_rd1_dout fifo_port_we 0 32 }  { buffer_1_rd1_empty_n fifo_status 0 1 }  { buffer_1_rd1_read fifo_data 1 1 } } }
	buffer_1_wr { ap_memory {  { buffer_1_wr_address0 mem_address 1 5 }  { buffer_1_wr_ce0 mem_ce 1 1 }  { buffer_1_wr_we0 mem_we 1 1 }  { buffer_1_wr_d0 mem_din 1 64 } } }
	buffer_1_wr1 { ap_memory {  { buffer_1_wr1_address0 mem_address 1 5 }  { buffer_1_wr1_ce0 mem_ce 1 1 }  { buffer_1_wr1_we0 mem_we 1 1 }  { buffer_1_wr1_d0 mem_din 1 64 } } }
	compute_start1 { ap_none {  { compute_start1 out_data 1 1 } } }
	compute_done1 { ap_none {  { compute_done1 in_data 0 1 } } }
	compute_start2 { ap_none {  { compute_start2 out_data 1 1 } } }
	compute_done2 { ap_none {  { compute_done2 in_data 0 1 } } }
	slave_start1 { ap_none {  { slave_start1 out_data 1 1 } } }
	slave_done1 { ap_none {  { slave_done1 in_data 0 1 } } }
	slave_start2 { ap_none {  { slave_start2 out_data 1 1 } } }
	slave_done2 { ap_none {  { slave_done2 in_data 0 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	buffer_1_rd { fifo_read 2 has_conditional }
	buffer_1_rd1 { fifo_read 2 has_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
