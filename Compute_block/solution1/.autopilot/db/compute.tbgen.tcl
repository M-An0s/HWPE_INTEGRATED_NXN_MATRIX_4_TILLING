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
	{ buffer_1 int 64 regular {array 8 { 1 1 } 1 1 }  }
	{ buffer_2 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ phase uint 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buffer_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "phase", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
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
	{ buffer_1_address1 sc_out sc_lv 3 signal 0 } 
	{ buffer_1_ce1 sc_out sc_logic 1 signal 0 } 
	{ buffer_1_q1 sc_in sc_lv 64 signal 0 } 
	{ buffer_2_address0 sc_out sc_lv 4 signal 1 } 
	{ buffer_2_ce0 sc_out sc_logic 1 signal 1 } 
	{ buffer_2_we0 sc_out sc_logic 1 signal 1 } 
	{ buffer_2_d0 sc_out sc_lv 32 signal 1 } 
	{ phase sc_in sc_logic 1 signal 2 } 
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
 	{ "name": "buffer_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_1", "role": "address1" }} , 
 	{ "name": "buffer_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_1", "role": "ce1" }} , 
 	{ "name": "buffer_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "buffer_1", "role": "q1" }} , 
 	{ "name": "buffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_2", "role": "address0" }} , 
 	{ "name": "buffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "ce0" }} , 
 	{ "name": "buffer_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "we0" }} , 
 	{ "name": "buffer_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_2", "role": "d0" }} , 
 	{ "name": "phase", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phase", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"],
		"CDFG" : "compute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "113",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buffer_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buffer_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "phase", "Type" : "None", "Direction" : "I"},
			{"Name" : "compute_ap_int_64_ap_int_32_bool_REG1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_64_ap_int_32_bool_REG1_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ7computeP6ap_intILi64EEPS_ILi32EEbE4REG1_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ7computeP6ap_intILi64EEPS_ILi32EEbE4REG1_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_64_ap_int_32_bool_REG1_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_64_ap_int_32_bool_REG1_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_64_ap_int_32_bool_REG1_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_64_ap_int_32_bool_REG1_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_64_ap_int_32_bool_REG1_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_64_ap_int_32_bool_REG1_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_64_ap_int_32_bool_REG1_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute_ap_int_64_ap_int_32_bool_REG1_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ7computeP6ap_intILi64EEPS_ILi32EEbE4REG1_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ7computeP6ap_intILi64EEPS_ILi32EEbE4REG1_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ7computeP6ap_intILi64EEPS_ILi32EEbE4REG1_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ7computeP6ap_intILi64EEPS_ILi32EEbE4REG1_14", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_107_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "14", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_85_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "14", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_154_32_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_124_32_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U20", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U21", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U22", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U23", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute {
		buffer_1 {Type I LastRead 2 FirstWrite -1}
		buffer_2 {Type O LastRead -1 FirstWrite 6}
		phase {Type I LastRead 0 FirstWrite -1}
		compute_ap_int_64_ap_int_32_bool_REG1 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_64_ap_int_32_bool_REG1_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ7computeP6ap_intILi64EEPS_ILi32EEbE4REG1_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ7computeP6ap_intILi64EEPS_ILi32EEbE4REG1_15 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_64_ap_int_32_bool_REG1_1 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_64_ap_int_32_bool_REG1_2 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_64_ap_int_32_bool_REG1_3 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_64_ap_int_32_bool_REG1_4 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_64_ap_int_32_bool_REG1_6 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_64_ap_int_32_bool_REG1_7 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_64_ap_int_32_bool_REG1_8 {Type IO LastRead -1 FirstWrite -1}
		compute_ap_int_64_ap_int_32_bool_REG1_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ7computeP6ap_intILi64EEPS_ILi32EEbE4REG1_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ7computeP6ap_intILi64EEPS_ILi32EEbE4REG1_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ7computeP6ap_intILi64EEPS_ILi32EEbE4REG1_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ7computeP6ap_intILi64EEPS_ILi32EEbE4REG1_14 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "29", "Max" : "113"}
	, {"Name" : "Interval", "Min" : "30", "Max" : "114"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	buffer_1 { ap_memory {  { buffer_1_address0 mem_address 1 3 }  { buffer_1_ce0 mem_ce 1 1 }  { buffer_1_q0 in_data 0 64 }  { buffer_1_address1 MemPortADDR2 1 3 }  { buffer_1_ce1 MemPortCE2 1 1 }  { buffer_1_q1 in_data 0 64 } } }
	buffer_2 { ap_memory {  { buffer_2_address0 mem_address 1 4 }  { buffer_2_ce0 mem_ce 1 1 }  { buffer_2_we0 mem_we 1 1 }  { buffer_2_d0 mem_din 1 32 } } }
	phase { ap_none {  { phase in_data 0 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
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
