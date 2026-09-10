set moduleName compute
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {compute}
set C_modelType { void 0 }
set C_modelArgList {
	{ buffer_1 int 64 regular {array 8 { 1 3 } 1 1 }  }
	{ buffer_2 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ phase uint 1 regular  }
	{ fwd_out1 int 32 regular {fifo 1 volatile }  }
	{ fwd_out2 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buffer_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "phase", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "fwd_out1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fwd_out2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buffer_1_address0 sc_out sc_lv 3 signal 0 } 
	{ buffer_1_ce0 sc_out sc_logic 1 signal 0 } 
	{ buffer_1_q0 sc_in sc_lv 64 signal 0 } 
	{ buffer_2_address0 sc_out sc_lv 4 signal 1 } 
	{ buffer_2_ce0 sc_out sc_logic 1 signal 1 } 
	{ buffer_2_we0 sc_out sc_logic 1 signal 1 } 
	{ buffer_2_d0 sc_out sc_lv 32 signal 1 } 
	{ phase sc_in sc_logic 1 signal 2 } 
	{ fwd_out1_din sc_out sc_lv 32 signal 3 } 
	{ fwd_out1_full_n sc_in sc_logic 1 signal 3 } 
	{ fwd_out1_write sc_out sc_logic 1 signal 3 } 
	{ fwd_out2_din sc_out sc_lv 32 signal 4 } 
	{ fwd_out2_full_n sc_in sc_logic 1 signal 4 } 
	{ fwd_out2_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buffer_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_1", "role": "address0" }} , 
 	{ "name": "buffer_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_1", "role": "ce0" }} , 
 	{ "name": "buffer_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "buffer_1", "role": "q0" }} , 
 	{ "name": "buffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_2", "role": "address0" }} , 
 	{ "name": "buffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "ce0" }} , 
 	{ "name": "buffer_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "we0" }} , 
 	{ "name": "buffer_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_2", "role": "d0" }} , 
 	{ "name": "phase", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phase", "role": "default" }} , 
 	{ "name": "fwd_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fwd_out1", "role": "din" }} , 
 	{ "name": "fwd_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fwd_out1", "role": "full_n" }} , 
 	{ "name": "fwd_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fwd_out1", "role": "write" }} , 
 	{ "name": "fwd_out2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fwd_out2", "role": "din" }} , 
 	{ "name": "fwd_out2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fwd_out2", "role": "full_n" }} , 
 	{ "name": "fwd_out2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fwd_out2", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "5", "33"],
		"CDFG" : "compute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65", "EstimateLatencyMax" : "105",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buffer_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_62_2_fu_395", "Port" : "buffer_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "buffer_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471", "Port" : "buffer_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "phase", "Type" : "None", "Direction" : "I"},
			{"Name" : "fwd_out1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_62_2_fu_395", "Port" : "fwd_out1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fwd_out2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_62_2_fu_395", "Port" : "fwd_out2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471", "Port" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_9", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471", "Port" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_4", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471", "Port" : "compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZZ7computeP6ap_intILi64EEPS_ILi32EEbRN3hls6streamI7ap_uintILi32EELi0EEES9_E4REG", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471", "Port" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_8", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471", "Port" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_7", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471", "Port" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_6", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471", "Port" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_5", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471", "Port" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_3", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471", "Port" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471", "Port" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471", "Port" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471", "Port" : "compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471", "Port" : "compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471", "Port" : "compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471", "Port" : "compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s_3", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_62_2_fu_395", "Parent" : "0", "Child" : ["2", "3", "4"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_62_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "REG_V_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "fwd_out1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fwd_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fwd_out2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fwd_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "i_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "buffer_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "REG_V_63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG_V_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "self_sum_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_62_2_fu_395.mul_mul_16ns_16ns_32_4_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_62_2_fu_395.mac_muladd_16ns_16ns_32ns_33_4_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_62_2_fu_395.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_81_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "buffer_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "REG_V_32_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_40_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_48_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_56_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv1", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_36_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_44_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_52_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_60_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_33_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_41_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_49_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_57_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_37_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_45_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_53_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_61_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_34_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_42_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_50_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_58_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_38_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_46_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_54_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_62_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_35_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_43_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_51_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_59_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_39_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_47_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_55_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG_V_63_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln60", "Type" : "None", "Direction" : "I"},
			{"Name" : "phase", "Type" : "None", "Direction" : "I"},
			{"Name" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s_3", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mux_42_16_1_1_U74", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mux_32_16_1_1_U75", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mux_42_16_1_1_U76", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mux_32_16_1_1_U77", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mux_32_16_1_1_U78", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mux_42_16_1_1_U79", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mux_32_16_1_1_U80", "Parent" : "5"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mux_42_16_1_1_U81", "Parent" : "5"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mux_42_16_1_1_U82", "Parent" : "5"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mux_42_16_1_1_U83", "Parent" : "5"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mux_32_16_1_1_U84", "Parent" : "5"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mux_32_16_1_1_U85", "Parent" : "5"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mux_42_16_1_1_U86", "Parent" : "5"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mux_42_16_1_1_U87", "Parent" : "5"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mux_32_16_1_1_U88", "Parent" : "5"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mux_32_16_1_1_U89", "Parent" : "5"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mux_154_32_1_1_U90", "Parent" : "5"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mux_124_32_1_1_U91", "Parent" : "5"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mul_mul_16ns_16ns_32_4_1_U92", "Parent" : "5"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mul_mul_16ns_16ns_32_4_1_U93", "Parent" : "5"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mul_mul_16ns_16ns_32_4_1_U94", "Parent" : "5"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mul_mul_16ns_16ns_32_4_1_U95", "Parent" : "5"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mac_muladd_16ns_16ns_32ns_32_4_1_U96", "Parent" : "5"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mac_muladd_16ns_16ns_32ns_32_4_1_U97", "Parent" : "5"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mac_muladd_16ns_16ns_32ns_32_4_1_U98", "Parent" : "5"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.mac_muladd_16ns_16ns_32ns_32_4_1_U99", "Parent" : "5"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_81_3_fu_471.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U146", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute {
		buffer_1 {Type I LastRead 0 FirstWrite -1}
		buffer_2 {Type O LastRead -1 FirstWrite 3}
		phase {Type I LastRead 0 FirstWrite -1}
		fwd_out1 {Type O LastRead -1 FirstWrite 1}
		fwd_out2 {Type O LastRead -1 FirstWrite 1}
		compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_9 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_4 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s {Type IO LastRead -1 FirstWrite -1}
		p_ZZ7computeP6ap_intILi64EEPS_ILi32EEbRN3hls6streamI7ap_uintILi32EELi0EEES9_E4REG {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_8 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_7 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_6 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_5 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_3 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_2 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_1 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s_0 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s_1 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s_2 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s_3 {Type IO LastRead -1 FirstWrite -1}}
	compute_Pipeline_VITIS_LOOP_62_2 {
		REG_V_31 {Type I LastRead 0 FirstWrite -1}
		REG_V_30 {Type I LastRead 0 FirstWrite -1}
		REG_V_29 {Type I LastRead 0 FirstWrite -1}
		REG_V_28 {Type I LastRead 0 FirstWrite -1}
		REG_V_27 {Type I LastRead 0 FirstWrite -1}
		REG_V_26 {Type I LastRead 0 FirstWrite -1}
		REG_V_25 {Type I LastRead 0 FirstWrite -1}
		REG_V_24 {Type I LastRead 0 FirstWrite -1}
		REG_V_23 {Type I LastRead 0 FirstWrite -1}
		REG_V_22 {Type I LastRead 0 FirstWrite -1}
		REG_V_21 {Type I LastRead 0 FirstWrite -1}
		REG_V_20 {Type I LastRead 0 FirstWrite -1}
		REG_V_19 {Type I LastRead 0 FirstWrite -1}
		REG_V_18 {Type I LastRead 0 FirstWrite -1}
		REG_V_17 {Type I LastRead 0 FirstWrite -1}
		REG_V_16 {Type I LastRead 0 FirstWrite -1}
		REG_V_15 {Type I LastRead 0 FirstWrite -1}
		REG_V_14 {Type I LastRead 0 FirstWrite -1}
		REG_V_13 {Type I LastRead 0 FirstWrite -1}
		REG_V_12 {Type I LastRead 0 FirstWrite -1}
		REG_V_11 {Type I LastRead 0 FirstWrite -1}
		REG_V_10 {Type I LastRead 0 FirstWrite -1}
		REG_V_9 {Type I LastRead 0 FirstWrite -1}
		REG_V_8 {Type I LastRead 0 FirstWrite -1}
		REG_V_7 {Type I LastRead 0 FirstWrite -1}
		REG_V_6 {Type I LastRead 0 FirstWrite -1}
		REG_V_5 {Type I LastRead 0 FirstWrite -1}
		REG_V_4 {Type I LastRead 0 FirstWrite -1}
		REG_V_3 {Type I LastRead 0 FirstWrite -1}
		REG_V_2 {Type I LastRead 0 FirstWrite -1}
		REG_V_1 {Type I LastRead 0 FirstWrite -1}
		REG_V {Type I LastRead 0 FirstWrite -1}
		fwd_out1 {Type O LastRead -1 FirstWrite 1}
		fwd_out2 {Type O LastRead -1 FirstWrite 1}
		i_cast {Type I LastRead 0 FirstWrite -1}
		buffer_1 {Type I LastRead 0 FirstWrite -1}
		REG_V_63_out {Type O LastRead -1 FirstWrite 5}
		REG_V_62_out {Type O LastRead -1 FirstWrite 5}
		REG_V_61_out {Type O LastRead -1 FirstWrite 5}
		REG_V_60_out {Type O LastRead -1 FirstWrite 5}
		REG_V_59_out {Type O LastRead -1 FirstWrite 5}
		REG_V_58_out {Type O LastRead -1 FirstWrite 5}
		REG_V_57_out {Type O LastRead -1 FirstWrite 5}
		REG_V_56_out {Type O LastRead -1 FirstWrite 5}
		REG_V_55_out {Type O LastRead -1 FirstWrite 5}
		REG_V_54_out {Type O LastRead -1 FirstWrite 5}
		REG_V_53_out {Type O LastRead -1 FirstWrite 5}
		REG_V_52_out {Type O LastRead -1 FirstWrite 5}
		REG_V_51_out {Type O LastRead -1 FirstWrite 5}
		REG_V_50_out {Type O LastRead -1 FirstWrite 5}
		REG_V_49_out {Type O LastRead -1 FirstWrite 5}
		REG_V_48_out {Type O LastRead -1 FirstWrite 5}
		REG_V_47_out {Type O LastRead -1 FirstWrite 5}
		REG_V_46_out {Type O LastRead -1 FirstWrite 5}
		REG_V_45_out {Type O LastRead -1 FirstWrite 5}
		REG_V_44_out {Type O LastRead -1 FirstWrite 5}
		REG_V_43_out {Type O LastRead -1 FirstWrite 5}
		REG_V_42_out {Type O LastRead -1 FirstWrite 5}
		REG_V_41_out {Type O LastRead -1 FirstWrite 5}
		REG_V_40_out {Type O LastRead -1 FirstWrite 5}
		REG_V_39_out {Type O LastRead -1 FirstWrite 5}
		REG_V_38_out {Type O LastRead -1 FirstWrite 5}
		REG_V_37_out {Type O LastRead -1 FirstWrite 5}
		REG_V_36_out {Type O LastRead -1 FirstWrite 5}
		REG_V_35_out {Type O LastRead -1 FirstWrite 5}
		REG_V_34_out {Type O LastRead -1 FirstWrite 5}
		REG_V_33_out {Type O LastRead -1 FirstWrite 5}
		REG_V_32_out {Type O LastRead -1 FirstWrite 5}
		self_sum_V_out {Type O LastRead -1 FirstWrite 5}}
	compute_Pipeline_VITIS_LOOP_81_3 {
		i {Type I LastRead 0 FirstWrite -1}
		buffer_2 {Type O LastRead -1 FirstWrite 5}
		REG_V_32_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_40_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_48_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_56_reload {Type I LastRead 0 FirstWrite -1}
		indvars_iv1 {Type I LastRead 0 FirstWrite -1}
		REG_V_36_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_44_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_52_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_60_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_33_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_41_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_49_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_57_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_37_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_45_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_53_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_61_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_34_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_42_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_50_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_58_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_38_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_46_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_54_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_62_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_35_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_43_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_51_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_59_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_39_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_47_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_55_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_63_reload {Type I LastRead 0 FirstWrite -1}
		i_cast {Type I LastRead 0 FirstWrite -1}
		zext_ln60 {Type I LastRead 0 FirstWrite -1}
		phase {Type I LastRead 0 FirstWrite -1}
		compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_9 {Type IO LastRead 5 FirstWrite 4}
		compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_8 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_7 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_6 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_5 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_4 {Type IO LastRead 5 FirstWrite 4}
		compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_3 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_2 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1_1 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_ap_int_bool_stream_stream_ap_uint_32_0_REG1 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s {Type IO LastRead 5 FirstWrite 4}
		compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s_0 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s_1 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s_2 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_64_ap_int_32_bool_hls_stream_ap_uint_32_0_hls_stream_ap_uint_32_0_REG_s_3 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65", "Max" : "105"}
	, {"Name" : "Interval", "Min" : "66", "Max" : "106"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	buffer_1 { ap_memory {  { buffer_1_address0 mem_address 1 3 }  { buffer_1_ce0 mem_ce 1 1 }  { buffer_1_q0 mem_dout 0 64 } } }
	buffer_2 { ap_memory {  { buffer_2_address0 mem_address 1 4 }  { buffer_2_ce0 mem_ce 1 1 }  { buffer_2_we0 mem_we 1 1 }  { buffer_2_d0 mem_din 1 32 } } }
	phase { ap_none {  { phase in_data 0 1 } } }
	fwd_out1 { ap_fifo {  { fwd_out1_din fifo_port_we 1 32 }  { fwd_out1_full_n fifo_status 0 1 }  { fwd_out1_write fifo_data 1 1 } } }
	fwd_out2 { ap_fifo {  { fwd_out2_din fifo_port_we 1 32 }  { fwd_out2_full_n fifo_status 0 1 }  { fwd_out2_write fifo_data 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	fwd_out1 { fifo_write 4 no_conditional }
	fwd_out2 { fifo_write 4 no_conditional }
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
