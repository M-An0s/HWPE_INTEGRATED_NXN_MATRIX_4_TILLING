set moduleName compute2in
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
set C_modelName {compute2in}
set C_modelType { void 0 }
set C_modelArgList {
	{ buffer_a int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ buffer_b int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ buffer_2 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ phase uint 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buffer_a", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_b", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "phase", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buffer_a_address0 sc_out sc_lv 4 signal 0 } 
	{ buffer_a_ce0 sc_out sc_logic 1 signal 0 } 
	{ buffer_a_q0 sc_in sc_lv 32 signal 0 } 
	{ buffer_a_address1 sc_out sc_lv 4 signal 0 } 
	{ buffer_a_ce1 sc_out sc_logic 1 signal 0 } 
	{ buffer_a_q1 sc_in sc_lv 32 signal 0 } 
	{ buffer_b_address0 sc_out sc_lv 4 signal 1 } 
	{ buffer_b_ce0 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_q0 sc_in sc_lv 32 signal 1 } 
	{ buffer_b_address1 sc_out sc_lv 4 signal 1 } 
	{ buffer_b_ce1 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_q1 sc_in sc_lv 32 signal 1 } 
	{ buffer_2_address0 sc_out sc_lv 4 signal 2 } 
	{ buffer_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ buffer_2_we0 sc_out sc_logic 1 signal 2 } 
	{ buffer_2_d0 sc_out sc_lv 32 signal 2 } 
	{ phase sc_in sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buffer_a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_a", "role": "address0" }} , 
 	{ "name": "buffer_a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_a", "role": "ce0" }} , 
 	{ "name": "buffer_a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_a", "role": "q0" }} , 
 	{ "name": "buffer_a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_a", "role": "address1" }} , 
 	{ "name": "buffer_a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_a", "role": "ce1" }} , 
 	{ "name": "buffer_a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_a", "role": "q1" }} , 
 	{ "name": "buffer_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_b", "role": "address0" }} , 
 	{ "name": "buffer_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "ce0" }} , 
 	{ "name": "buffer_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "q0" }} , 
 	{ "name": "buffer_b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_b", "role": "address1" }} , 
 	{ "name": "buffer_b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "ce1" }} , 
 	{ "name": "buffer_b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "q1" }} , 
 	{ "name": "buffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_2", "role": "address0" }} , 
 	{ "name": "buffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "ce0" }} , 
 	{ "name": "buffer_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "we0" }} , 
 	{ "name": "buffer_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_2", "role": "d0" }} , 
 	{ "name": "phase", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phase", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "compute2in",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "97",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buffer_a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buffer_b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buffer_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "phase", "Type" : "None", "Direction" : "I"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_17ns_1ns_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_17ns_1ns_32_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16ns_1ns_32_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16ns_1ns_32_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_154_32_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_124_32_1_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_16ns_16ns_1ns_17s_32_4_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U20", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute2in {
		buffer_a {Type I LastRead 2 FirstWrite -1}
		buffer_b {Type I LastRead 2 FirstWrite -1}
		buffer_2 {Type O LastRead -1 FirstWrite 2}
		phase {Type I LastRead 0 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_15 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "97"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "98"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	buffer_a { ap_memory {  { buffer_a_address0 mem_address 1 4 }  { buffer_a_ce0 mem_ce 1 1 }  { buffer_a_q0 in_data 0 32 }  { buffer_a_address1 MemPortADDR2 1 4 }  { buffer_a_ce1 MemPortCE2 1 1 }  { buffer_a_q1 in_data 0 32 } } }
	buffer_b { ap_memory {  { buffer_b_address0 mem_address 1 4 }  { buffer_b_ce0 mem_ce 1 1 }  { buffer_b_q0 in_data 0 32 }  { buffer_b_address1 MemPortADDR2 1 4 }  { buffer_b_ce1 MemPortCE2 1 1 }  { buffer_b_q1 in_data 0 32 } } }
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
set moduleName compute2in
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
set C_modelName {compute2in}
set C_modelType { void 0 }
set C_modelArgList {
	{ buffer_a int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ buffer_b int 32 unused {array 16 { } 0 1 }  }
	{ buffer_2 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ phase uint 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buffer_a", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_b", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "buffer_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "phase", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buffer_a_address0 sc_out sc_lv 4 signal 0 } 
	{ buffer_a_ce0 sc_out sc_logic 1 signal 0 } 
	{ buffer_a_q0 sc_in sc_lv 32 signal 0 } 
	{ buffer_a_address1 sc_out sc_lv 4 signal 0 } 
	{ buffer_a_ce1 sc_out sc_logic 1 signal 0 } 
	{ buffer_a_q1 sc_in sc_lv 32 signal 0 } 
	{ buffer_b_address0 sc_out sc_lv 4 signal 1 } 
	{ buffer_b_ce0 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_we0 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_d0 sc_out sc_lv 32 signal 1 } 
	{ buffer_b_q0 sc_in sc_lv 32 signal 1 } 
	{ buffer_b_address1 sc_out sc_lv 4 signal 1 } 
	{ buffer_b_ce1 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_we1 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_d1 sc_out sc_lv 32 signal 1 } 
	{ buffer_b_q1 sc_in sc_lv 32 signal 1 } 
	{ buffer_2_address0 sc_out sc_lv 4 signal 2 } 
	{ buffer_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ buffer_2_we0 sc_out sc_logic 1 signal 2 } 
	{ buffer_2_d0 sc_out sc_lv 32 signal 2 } 
	{ phase sc_in sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buffer_a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_a", "role": "address0" }} , 
 	{ "name": "buffer_a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_a", "role": "ce0" }} , 
 	{ "name": "buffer_a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_a", "role": "q0" }} , 
 	{ "name": "buffer_a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_a", "role": "address1" }} , 
 	{ "name": "buffer_a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_a", "role": "ce1" }} , 
 	{ "name": "buffer_a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_a", "role": "q1" }} , 
 	{ "name": "buffer_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_b", "role": "address0" }} , 
 	{ "name": "buffer_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "ce0" }} , 
 	{ "name": "buffer_b_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "we0" }} , 
 	{ "name": "buffer_b_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "d0" }} , 
 	{ "name": "buffer_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "q0" }} , 
 	{ "name": "buffer_b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_b", "role": "address1" }} , 
 	{ "name": "buffer_b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "ce1" }} , 
 	{ "name": "buffer_b_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "we1" }} , 
 	{ "name": "buffer_b_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "d1" }} , 
 	{ "name": "buffer_b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "q1" }} , 
 	{ "name": "buffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_2", "role": "address0" }} , 
 	{ "name": "buffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "ce0" }} , 
 	{ "name": "buffer_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "we0" }} , 
 	{ "name": "buffer_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_2", "role": "d0" }} , 
 	{ "name": "phase", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phase", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "compute2in",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "97",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buffer_a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buffer_b", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "buffer_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "phase", "Type" : "None", "Direction" : "I"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_17ns_1ns_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_17ns_1ns_32_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16ns_1ns_32_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16ns_1ns_32_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_154_32_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_124_32_1_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_16ns_16ns_1ns_17s_32_4_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U20", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute2in {
		buffer_a {Type I LastRead 2 FirstWrite -1}
		buffer_b {Type X LastRead -1 FirstWrite -1}
		buffer_2 {Type O LastRead -1 FirstWrite 2}
		phase {Type I LastRead 0 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_15 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "97"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "98"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	buffer_a { ap_memory {  { buffer_a_address0 mem_address 1 4 }  { buffer_a_ce0 mem_ce 1 1 }  { buffer_a_q0 in_data 0 32 }  { buffer_a_address1 MemPortADDR2 1 4 }  { buffer_a_ce1 MemPortCE2 1 1 }  { buffer_a_q1 in_data 0 32 } } }
	buffer_b { ap_memory {  { buffer_b_address0 mem_address 1 4 }  { buffer_b_ce0 mem_ce 1 1 }  { buffer_b_we0 mem_we 1 1 }  { buffer_b_d0 mem_din 1 32 }  { buffer_b_q0 mem_dout 0 32 }  { buffer_b_address1 MemPortADDR2 1 4 }  { buffer_b_ce1 MemPortCE2 1 1 }  { buffer_b_we1 MemPortWE2 1 1 }  { buffer_b_d1 MemPortDIN2 1 32 }  { buffer_b_q1 MemPortDOUT2 0 32 } } }
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
set moduleName compute2in
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
set C_modelName {compute2in}
set C_modelType { void 0 }
set C_modelArgList {
	{ buffer_a int 32 regular {array 8 { 1 1 } 1 1 }  }
	{ buffer_b int 32 unused {array 8 { } 0 1 }  }
	{ buffer_2 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ phase uint 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buffer_a", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_b", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "buffer_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "phase", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buffer_a_address0 sc_out sc_lv 3 signal 0 } 
	{ buffer_a_ce0 sc_out sc_logic 1 signal 0 } 
	{ buffer_a_q0 sc_in sc_lv 32 signal 0 } 
	{ buffer_a_address1 sc_out sc_lv 3 signal 0 } 
	{ buffer_a_ce1 sc_out sc_logic 1 signal 0 } 
	{ buffer_a_q1 sc_in sc_lv 32 signal 0 } 
	{ buffer_b_address0 sc_out sc_lv 3 signal 1 } 
	{ buffer_b_ce0 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_we0 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_d0 sc_out sc_lv 32 signal 1 } 
	{ buffer_b_q0 sc_in sc_lv 32 signal 1 } 
	{ buffer_b_address1 sc_out sc_lv 3 signal 1 } 
	{ buffer_b_ce1 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_we1 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_d1 sc_out sc_lv 32 signal 1 } 
	{ buffer_b_q1 sc_in sc_lv 32 signal 1 } 
	{ buffer_2_address0 sc_out sc_lv 4 signal 2 } 
	{ buffer_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ buffer_2_we0 sc_out sc_logic 1 signal 2 } 
	{ buffer_2_d0 sc_out sc_lv 32 signal 2 } 
	{ phase sc_in sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buffer_a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_a", "role": "address0" }} , 
 	{ "name": "buffer_a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_a", "role": "ce0" }} , 
 	{ "name": "buffer_a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_a", "role": "q0" }} , 
 	{ "name": "buffer_a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_a", "role": "address1" }} , 
 	{ "name": "buffer_a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_a", "role": "ce1" }} , 
 	{ "name": "buffer_a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_a", "role": "q1" }} , 
 	{ "name": "buffer_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_b", "role": "address0" }} , 
 	{ "name": "buffer_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "ce0" }} , 
 	{ "name": "buffer_b_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "we0" }} , 
 	{ "name": "buffer_b_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "d0" }} , 
 	{ "name": "buffer_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "q0" }} , 
 	{ "name": "buffer_b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_b", "role": "address1" }} , 
 	{ "name": "buffer_b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "ce1" }} , 
 	{ "name": "buffer_b_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "we1" }} , 
 	{ "name": "buffer_b_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "d1" }} , 
 	{ "name": "buffer_b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "q1" }} , 
 	{ "name": "buffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_2", "role": "address0" }} , 
 	{ "name": "buffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "ce0" }} , 
 	{ "name": "buffer_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "we0" }} , 
 	{ "name": "buffer_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_2", "role": "d0" }} , 
 	{ "name": "phase", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phase", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "compute2in",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "97",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buffer_a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buffer_b", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "buffer_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "phase", "Type" : "None", "Direction" : "I"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_17ns_1ns_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_17ns_1ns_32_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16ns_1ns_32_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16ns_1ns_32_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_154_32_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_124_32_1_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_16ns_16ns_1ns_17s_32_4_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U20", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute2in {
		buffer_a {Type I LastRead 2 FirstWrite -1}
		buffer_b {Type X LastRead -1 FirstWrite -1}
		buffer_2 {Type O LastRead -1 FirstWrite 2}
		phase {Type I LastRead 0 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_15 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "97"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "98"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	buffer_a { ap_memory {  { buffer_a_address0 mem_address 1 3 }  { buffer_a_ce0 mem_ce 1 1 }  { buffer_a_q0 in_data 0 32 }  { buffer_a_address1 MemPortADDR2 1 3 }  { buffer_a_ce1 MemPortCE2 1 1 }  { buffer_a_q1 in_data 0 32 } } }
	buffer_b { ap_memory {  { buffer_b_address0 mem_address 1 3 }  { buffer_b_ce0 mem_ce 1 1 }  { buffer_b_we0 mem_we 1 1 }  { buffer_b_d0 mem_din 1 32 }  { buffer_b_q0 mem_dout 0 32 }  { buffer_b_address1 MemPortADDR2 1 3 }  { buffer_b_ce1 MemPortCE2 1 1 }  { buffer_b_we1 MemPortWE2 1 1 }  { buffer_b_d1 MemPortDIN2 1 32 }  { buffer_b_q1 MemPortDOUT2 0 32 } } }
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
set moduleName compute2in
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
set C_modelName {compute2in}
set C_modelType { void 0 }
set C_modelArgList {
	{ buffer_a int 32 regular {array 8 { 1 1 } 1 1 }  }
	{ buffer_b int 32 unused {array 8 { } 0 1 }  }
	{ buffer_2 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ phase uint 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buffer_a", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_b", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "buffer_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "phase", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buffer_a_address0 sc_out sc_lv 3 signal 0 } 
	{ buffer_a_ce0 sc_out sc_logic 1 signal 0 } 
	{ buffer_a_q0 sc_in sc_lv 32 signal 0 } 
	{ buffer_a_address1 sc_out sc_lv 3 signal 0 } 
	{ buffer_a_ce1 sc_out sc_logic 1 signal 0 } 
	{ buffer_a_q1 sc_in sc_lv 32 signal 0 } 
	{ buffer_b_address0 sc_out sc_lv 3 signal 1 } 
	{ buffer_b_ce0 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_we0 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_d0 sc_out sc_lv 32 signal 1 } 
	{ buffer_b_q0 sc_in sc_lv 32 signal 1 } 
	{ buffer_b_address1 sc_out sc_lv 3 signal 1 } 
	{ buffer_b_ce1 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_we1 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_d1 sc_out sc_lv 32 signal 1 } 
	{ buffer_b_q1 sc_in sc_lv 32 signal 1 } 
	{ buffer_2_address0 sc_out sc_lv 4 signal 2 } 
	{ buffer_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ buffer_2_we0 sc_out sc_logic 1 signal 2 } 
	{ buffer_2_d0 sc_out sc_lv 32 signal 2 } 
	{ phase sc_in sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buffer_a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_a", "role": "address0" }} , 
 	{ "name": "buffer_a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_a", "role": "ce0" }} , 
 	{ "name": "buffer_a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_a", "role": "q0" }} , 
 	{ "name": "buffer_a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_a", "role": "address1" }} , 
 	{ "name": "buffer_a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_a", "role": "ce1" }} , 
 	{ "name": "buffer_a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_a", "role": "q1" }} , 
 	{ "name": "buffer_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_b", "role": "address0" }} , 
 	{ "name": "buffer_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "ce0" }} , 
 	{ "name": "buffer_b_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "we0" }} , 
 	{ "name": "buffer_b_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "d0" }} , 
 	{ "name": "buffer_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "q0" }} , 
 	{ "name": "buffer_b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_b", "role": "address1" }} , 
 	{ "name": "buffer_b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "ce1" }} , 
 	{ "name": "buffer_b_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "we1" }} , 
 	{ "name": "buffer_b_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "d1" }} , 
 	{ "name": "buffer_b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "q1" }} , 
 	{ "name": "buffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_2", "role": "address0" }} , 
 	{ "name": "buffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "ce0" }} , 
 	{ "name": "buffer_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "we0" }} , 
 	{ "name": "buffer_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_2", "role": "d0" }} , 
 	{ "name": "phase", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phase", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "compute2in",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "97",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buffer_a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buffer_b", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "buffer_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "phase", "Type" : "None", "Direction" : "I"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_89_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_65_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_17ns_1ns_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_17ns_1ns_32_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16ns_1ns_32_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16ns_1ns_32_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_154_32_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_124_32_1_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_16ns_16ns_1ns_17s_32_4_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U20", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute2in {
		buffer_a {Type I LastRead 2 FirstWrite -1}
		buffer_b {Type X LastRead -1 FirstWrite -1}
		buffer_2 {Type O LastRead -1 FirstWrite 2}
		phase {Type I LastRead 0 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_15 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "97"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "98"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	buffer_a { ap_memory {  { buffer_a_address0 mem_address 1 3 }  { buffer_a_ce0 mem_ce 1 1 }  { buffer_a_q0 in_data 0 32 }  { buffer_a_address1 MemPortADDR2 1 3 }  { buffer_a_ce1 MemPortCE2 1 1 }  { buffer_a_q1 in_data 0 32 } } }
	buffer_b { ap_memory {  { buffer_b_address0 mem_address 1 3 }  { buffer_b_ce0 mem_ce 1 1 }  { buffer_b_we0 mem_we 1 1 }  { buffer_b_d0 mem_din 1 32 }  { buffer_b_q0 mem_dout 0 32 }  { buffer_b_address1 MemPortADDR2 1 3 }  { buffer_b_ce1 MemPortCE2 1 1 }  { buffer_b_we1 MemPortWE2 1 1 }  { buffer_b_d1 MemPortDIN2 1 32 }  { buffer_b_q1 MemPortDOUT2 0 32 } } }
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
set moduleName compute2in
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
set C_modelName {compute2in}
set C_modelType { void 0 }
set C_modelArgList {
	{ buffer_a int 32 regular {array 8 { 1 1 } 1 1 }  }
	{ buffer_b int 32 unused {array 8 { } 0 1 }  }
	{ buffer_2 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ phase uint 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buffer_a", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_b", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "buffer_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "phase", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buffer_a_address0 sc_out sc_lv 3 signal 0 } 
	{ buffer_a_ce0 sc_out sc_logic 1 signal 0 } 
	{ buffer_a_q0 sc_in sc_lv 32 signal 0 } 
	{ buffer_a_address1 sc_out sc_lv 3 signal 0 } 
	{ buffer_a_ce1 sc_out sc_logic 1 signal 0 } 
	{ buffer_a_q1 sc_in sc_lv 32 signal 0 } 
	{ buffer_b_address0 sc_out sc_lv 3 signal 1 } 
	{ buffer_b_ce0 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_we0 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_d0 sc_out sc_lv 32 signal 1 } 
	{ buffer_b_q0 sc_in sc_lv 32 signal 1 } 
	{ buffer_b_address1 sc_out sc_lv 3 signal 1 } 
	{ buffer_b_ce1 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_we1 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_d1 sc_out sc_lv 32 signal 1 } 
	{ buffer_b_q1 sc_in sc_lv 32 signal 1 } 
	{ buffer_2_address0 sc_out sc_lv 4 signal 2 } 
	{ buffer_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ buffer_2_we0 sc_out sc_logic 1 signal 2 } 
	{ buffer_2_d0 sc_out sc_lv 32 signal 2 } 
	{ phase sc_in sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buffer_a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_a", "role": "address0" }} , 
 	{ "name": "buffer_a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_a", "role": "ce0" }} , 
 	{ "name": "buffer_a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_a", "role": "q0" }} , 
 	{ "name": "buffer_a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_a", "role": "address1" }} , 
 	{ "name": "buffer_a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_a", "role": "ce1" }} , 
 	{ "name": "buffer_a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_a", "role": "q1" }} , 
 	{ "name": "buffer_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_b", "role": "address0" }} , 
 	{ "name": "buffer_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "ce0" }} , 
 	{ "name": "buffer_b_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "we0" }} , 
 	{ "name": "buffer_b_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "d0" }} , 
 	{ "name": "buffer_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "q0" }} , 
 	{ "name": "buffer_b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_b", "role": "address1" }} , 
 	{ "name": "buffer_b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "ce1" }} , 
 	{ "name": "buffer_b_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "we1" }} , 
 	{ "name": "buffer_b_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "d1" }} , 
 	{ "name": "buffer_b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "q1" }} , 
 	{ "name": "buffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_2", "role": "address0" }} , 
 	{ "name": "buffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "ce0" }} , 
 	{ "name": "buffer_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "we0" }} , 
 	{ "name": "buffer_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_2", "role": "d0" }} , 
 	{ "name": "phase", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phase", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "compute2in",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "97",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buffer_a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buffer_b", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "buffer_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "phase", "Type" : "None", "Direction" : "I"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_17ns_1ns_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_17ns_1ns_32_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16ns_1ns_32_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16ns_1ns_32_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_154_32_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_124_32_1_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_16ns_16ns_1ns_17s_32_4_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U20", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute2in {
		buffer_a {Type I LastRead 2 FirstWrite -1}
		buffer_b {Type X LastRead -1 FirstWrite -1}
		buffer_2 {Type O LastRead -1 FirstWrite 2}
		phase {Type I LastRead 0 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_15 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "97"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "98"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	buffer_a { ap_memory {  { buffer_a_address0 mem_address 1 3 }  { buffer_a_ce0 mem_ce 1 1 }  { buffer_a_q0 in_data 0 32 }  { buffer_a_address1 MemPortADDR2 1 3 }  { buffer_a_ce1 MemPortCE2 1 1 }  { buffer_a_q1 in_data 0 32 } } }
	buffer_b { ap_memory {  { buffer_b_address0 mem_address 1 3 }  { buffer_b_ce0 mem_ce 1 1 }  { buffer_b_we0 mem_we 1 1 }  { buffer_b_d0 mem_din 1 32 }  { buffer_b_q0 mem_dout 0 32 }  { buffer_b_address1 MemPortADDR2 1 3 }  { buffer_b_ce1 MemPortCE2 1 1 }  { buffer_b_we1 MemPortWE2 1 1 }  { buffer_b_d1 MemPortDIN2 1 32 }  { buffer_b_q1 MemPortDOUT2 0 32 } } }
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
set moduleName compute2in
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
set C_modelName {compute2in}
set C_modelType { void 0 }
set C_modelArgList {
	{ buffer_a int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ buffer_b int 32 unused {array 8 { } 0 1 }  }
	{ buffer_2 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ phase uint 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buffer_a", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_b", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE"} , 
 	{ "Name" : "buffer_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "phase", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buffer_a_address0 sc_out sc_lv 3 signal 0 } 
	{ buffer_a_ce0 sc_out sc_logic 1 signal 0 } 
	{ buffer_a_q0 sc_in sc_lv 32 signal 0 } 
	{ buffer_b_address0 sc_out sc_lv 3 signal 1 } 
	{ buffer_b_ce0 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_we0 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_d0 sc_out sc_lv 32 signal 1 } 
	{ buffer_b_q0 sc_in sc_lv 32 signal 1 } 
	{ buffer_b_address1 sc_out sc_lv 3 signal 1 } 
	{ buffer_b_ce1 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_we1 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_d1 sc_out sc_lv 32 signal 1 } 
	{ buffer_b_q1 sc_in sc_lv 32 signal 1 } 
	{ buffer_2_address0 sc_out sc_lv 4 signal 2 } 
	{ buffer_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ buffer_2_we0 sc_out sc_logic 1 signal 2 } 
	{ buffer_2_d0 sc_out sc_lv 32 signal 2 } 
	{ phase sc_in sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buffer_a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_a", "role": "address0" }} , 
 	{ "name": "buffer_a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_a", "role": "ce0" }} , 
 	{ "name": "buffer_a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_a", "role": "q0" }} , 
 	{ "name": "buffer_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_b", "role": "address0" }} , 
 	{ "name": "buffer_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "ce0" }} , 
 	{ "name": "buffer_b_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "we0" }} , 
 	{ "name": "buffer_b_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "d0" }} , 
 	{ "name": "buffer_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "q0" }} , 
 	{ "name": "buffer_b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_b", "role": "address1" }} , 
 	{ "name": "buffer_b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "ce1" }} , 
 	{ "name": "buffer_b_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "we1" }} , 
 	{ "name": "buffer_b_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "d1" }} , 
 	{ "name": "buffer_b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "q1" }} , 
 	{ "name": "buffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_2", "role": "address0" }} , 
 	{ "name": "buffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "ce0" }} , 
 	{ "name": "buffer_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "we0" }} , 
 	{ "name": "buffer_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_2", "role": "d0" }} , 
 	{ "name": "phase", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phase", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "5", "33"],
		"CDFG" : "compute2in",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "61", "EstimateLatencyMax" : "101",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buffer_a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_66_2_fu_389", "Port" : "buffer_a", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "buffer_b", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "buffer_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461", "Port" : "buffer_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "phase", "Type" : "None", "Direction" : "I"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461", "Port" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461", "Port" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461", "Port" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461", "Port" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461", "Port" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_66_2_fu_389", "Parent" : "0", "Child" : ["2", "3", "4"],
		"CDFG" : "compute2in_Pipeline_VITIS_LOOP_66_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
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
			{"Name" : "i_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "buffer_a", "Type" : "Memory", "Direction" : "I"},
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
			{"Name" : "VITIS_LOOP_66_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_66_2_fu_389.mul_1ns_16ns_32_1_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_66_2_fu_389.mac_muladd_1ns_16ns_17ns_33_4_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_66_2_fu_389.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "compute2in_Pipeline_VITIS_LOOP_87_3",
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
			{"Name" : "indvars_iv424", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "zext_ln63", "Type" : "None", "Direction" : "I"},
			{"Name" : "phase", "Type" : "None", "Direction" : "I"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mux_42_16_1_1_U72", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mux_32_16_1_1_U73", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mux_42_16_1_1_U74", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mux_32_16_1_1_U75", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mux_32_16_1_1_U76", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mux_42_16_1_1_U77", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mux_32_16_1_1_U78", "Parent" : "5"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mux_42_16_1_1_U79", "Parent" : "5"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mux_42_16_1_1_U80", "Parent" : "5"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mux_42_16_1_1_U81", "Parent" : "5"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mux_32_16_1_1_U82", "Parent" : "5"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mux_32_16_1_1_U83", "Parent" : "5"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mux_42_16_1_1_U84", "Parent" : "5"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mux_42_16_1_1_U85", "Parent" : "5"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mux_32_16_1_1_U86", "Parent" : "5"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mux_32_16_1_1_U87", "Parent" : "5"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mux_154_32_1_1_U88", "Parent" : "5"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mux_124_32_1_1_U89", "Parent" : "5"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mul_mul_16ns_16ns_32_4_1_U90", "Parent" : "5"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mul_mul_16ns_16ns_32_4_1_U91", "Parent" : "5"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mul_mul_16ns_16ns_32_4_1_U92", "Parent" : "5"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mul_mul_16ns_16ns_32_4_1_U93", "Parent" : "5"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mac_muladd_16ns_16ns_32ns_32_4_1_U94", "Parent" : "5"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mac_muladd_16ns_16ns_32ns_32_4_1_U95", "Parent" : "5"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mac_muladd_16ns_16ns_32ns_32_4_1_U96", "Parent" : "5"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.mac_muladd_16ns_16ns_32ns_32_4_1_U97", "Parent" : "5"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_461.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U145", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute2in {
		buffer_a {Type I LastRead 0 FirstWrite -1}
		buffer_b {Type X LastRead -1 FirstWrite -1}
		buffer_2 {Type O LastRead -1 FirstWrite 3}
		phase {Type I LastRead 0 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_15 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14 {Type IO LastRead -1 FirstWrite -1}}
	compute2in_Pipeline_VITIS_LOOP_66_2 {
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
		i_cast {Type I LastRead 0 FirstWrite -1}
		buffer_a {Type I LastRead 0 FirstWrite -1}
		REG_V_63_out {Type O LastRead -1 FirstWrite 4}
		REG_V_62_out {Type O LastRead -1 FirstWrite 4}
		REG_V_61_out {Type O LastRead -1 FirstWrite 4}
		REG_V_60_out {Type O LastRead -1 FirstWrite 4}
		REG_V_59_out {Type O LastRead -1 FirstWrite 4}
		REG_V_58_out {Type O LastRead -1 FirstWrite 4}
		REG_V_57_out {Type O LastRead -1 FirstWrite 4}
		REG_V_56_out {Type O LastRead -1 FirstWrite 4}
		REG_V_55_out {Type O LastRead -1 FirstWrite 4}
		REG_V_54_out {Type O LastRead -1 FirstWrite 4}
		REG_V_53_out {Type O LastRead -1 FirstWrite 4}
		REG_V_52_out {Type O LastRead -1 FirstWrite 4}
		REG_V_51_out {Type O LastRead -1 FirstWrite 4}
		REG_V_50_out {Type O LastRead -1 FirstWrite 4}
		REG_V_49_out {Type O LastRead -1 FirstWrite 4}
		REG_V_48_out {Type O LastRead -1 FirstWrite 4}
		REG_V_47_out {Type O LastRead -1 FirstWrite 4}
		REG_V_46_out {Type O LastRead -1 FirstWrite 4}
		REG_V_45_out {Type O LastRead -1 FirstWrite 4}
		REG_V_44_out {Type O LastRead -1 FirstWrite 4}
		REG_V_43_out {Type O LastRead -1 FirstWrite 4}
		REG_V_42_out {Type O LastRead -1 FirstWrite 4}
		REG_V_41_out {Type O LastRead -1 FirstWrite 4}
		REG_V_40_out {Type O LastRead -1 FirstWrite 4}
		REG_V_39_out {Type O LastRead -1 FirstWrite 4}
		REG_V_38_out {Type O LastRead -1 FirstWrite 4}
		REG_V_37_out {Type O LastRead -1 FirstWrite 4}
		REG_V_36_out {Type O LastRead -1 FirstWrite 4}
		REG_V_35_out {Type O LastRead -1 FirstWrite 4}
		REG_V_34_out {Type O LastRead -1 FirstWrite 4}
		REG_V_33_out {Type O LastRead -1 FirstWrite 4}
		REG_V_32_out {Type O LastRead -1 FirstWrite 4}
		self_sum_V_out {Type O LastRead -1 FirstWrite 4}}
	compute2in_Pipeline_VITIS_LOOP_87_3 {
		i {Type I LastRead 0 FirstWrite -1}
		buffer_2 {Type O LastRead -1 FirstWrite 5}
		REG_V_32_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_40_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_48_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_56_reload {Type I LastRead 0 FirstWrite -1}
		indvars_iv424 {Type I LastRead 0 FirstWrite -1}
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
		zext_ln63 {Type I LastRead 0 FirstWrite -1}
		phase {Type I LastRead 0 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1 {Type IO LastRead 5 FirstWrite 4}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5 {Type IO LastRead 5 FirstWrite 4}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10 {Type IO LastRead 5 FirstWrite 4}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "61", "Max" : "101"}
	, {"Name" : "Interval", "Min" : "62", "Max" : "102"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	buffer_a { ap_memory {  { buffer_a_address0 mem_address 1 3 }  { buffer_a_ce0 mem_ce 1 1 }  { buffer_a_q0 mem_dout 0 32 } } }
	buffer_b { ap_memory {  { buffer_b_address0 mem_address 1 3 }  { buffer_b_ce0 mem_ce 1 1 }  { buffer_b_we0 mem_we 1 1 }  { buffer_b_d0 mem_din 1 32 }  { buffer_b_q0 mem_dout 0 32 }  { buffer_b_address1 MemPortADDR2 1 3 }  { buffer_b_ce1 MemPortCE2 1 1 }  { buffer_b_we1 MemPortWE2 1 1 }  { buffer_b_d1 MemPortDIN2 1 32 }  { buffer_b_q1 MemPortDOUT2 0 32 } } }
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
set moduleName compute2in
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
set C_modelName {compute2in}
set C_modelType { void 0 }
set C_modelArgList {
	{ buffer_a int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ buffer_b int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ buffer_2 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ phase uint 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buffer_a", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_b", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
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
	{ buffer_a_address0 sc_out sc_lv 3 signal 0 } 
	{ buffer_a_ce0 sc_out sc_logic 1 signal 0 } 
	{ buffer_a_q0 sc_in sc_lv 32 signal 0 } 
	{ buffer_b_address0 sc_out sc_lv 3 signal 1 } 
	{ buffer_b_ce0 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_q0 sc_in sc_lv 32 signal 1 } 
	{ buffer_2_address0 sc_out sc_lv 4 signal 2 } 
	{ buffer_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ buffer_2_we0 sc_out sc_logic 1 signal 2 } 
	{ buffer_2_d0 sc_out sc_lv 32 signal 2 } 
	{ phase sc_in sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buffer_a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_a", "role": "address0" }} , 
 	{ "name": "buffer_a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_a", "role": "ce0" }} , 
 	{ "name": "buffer_a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_a", "role": "q0" }} , 
 	{ "name": "buffer_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_b", "role": "address0" }} , 
 	{ "name": "buffer_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "ce0" }} , 
 	{ "name": "buffer_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "q0" }} , 
 	{ "name": "buffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_2", "role": "address0" }} , 
 	{ "name": "buffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "ce0" }} , 
 	{ "name": "buffer_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "we0" }} , 
 	{ "name": "buffer_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_2", "role": "d0" }} , 
 	{ "name": "phase", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phase", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "5", "33"],
		"CDFG" : "compute2in",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "61", "EstimateLatencyMax" : "101",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buffer_a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_66_2_fu_389", "Port" : "buffer_a", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "buffer_b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_66_2_fu_389", "Port" : "buffer_b", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "buffer_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "buffer_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "phase", "Type" : "None", "Direction" : "I"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_66_2_fu_389", "Parent" : "0", "Child" : ["2", "3", "4"],
		"CDFG" : "compute2in_Pipeline_VITIS_LOOP_66_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
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
			{"Name" : "tmp_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "buffer_a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buffer_b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_7", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "VITIS_LOOP_66_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_66_2_fu_389.mul_1ns_16ns_32_1_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_66_2_fu_389.mac_muladd_1ns_16ns_17ns_33_4_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_66_2_fu_389.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "compute2in_Pipeline_VITIS_LOOP_87_3",
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
			{"Name" : "indvars_iv424", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "tmp_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln63", "Type" : "None", "Direction" : "I"},
			{"Name" : "phase", "Type" : "None", "Direction" : "I"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_42_16_1_1_U74", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_32_16_1_1_U75", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_42_16_1_1_U76", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_32_16_1_1_U77", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_32_16_1_1_U78", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_42_16_1_1_U79", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_32_16_1_1_U80", "Parent" : "5"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_42_16_1_1_U81", "Parent" : "5"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_42_16_1_1_U82", "Parent" : "5"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_42_16_1_1_U83", "Parent" : "5"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_32_16_1_1_U84", "Parent" : "5"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_32_16_1_1_U85", "Parent" : "5"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_42_16_1_1_U86", "Parent" : "5"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_42_16_1_1_U87", "Parent" : "5"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_32_16_1_1_U88", "Parent" : "5"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_32_16_1_1_U89", "Parent" : "5"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_154_32_1_1_U90", "Parent" : "5"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_124_32_1_1_U91", "Parent" : "5"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mul_mul_16ns_16ns_32_4_1_U92", "Parent" : "5"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mul_mul_16ns_16ns_32_4_1_U93", "Parent" : "5"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mul_mul_16ns_16ns_32_4_1_U94", "Parent" : "5"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mul_mul_16ns_16ns_32_4_1_U95", "Parent" : "5"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mac_muladd_16ns_16ns_32ns_32_4_1_U96", "Parent" : "5"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mac_muladd_16ns_16ns_32ns_32_4_1_U97", "Parent" : "5"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mac_muladd_16ns_16ns_32ns_32_4_1_U98", "Parent" : "5"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mac_muladd_16ns_16ns_32ns_32_4_1_U99", "Parent" : "5"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U147", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute2in {
		buffer_a {Type I LastRead 0 FirstWrite -1}
		buffer_b {Type I LastRead 0 FirstWrite -1}
		buffer_2 {Type O LastRead -1 FirstWrite 3}
		phase {Type I LastRead 0 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_15 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14 {Type IO LastRead -1 FirstWrite -1}}
	compute2in_Pipeline_VITIS_LOOP_66_2 {
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
		tmp_8 {Type I LastRead 0 FirstWrite -1}
		buffer_a {Type I LastRead 0 FirstWrite -1}
		buffer_b {Type I LastRead 0 FirstWrite -1}
		tmp_7 {Type I LastRead 0 FirstWrite -1}
		REG_V_63_out {Type O LastRead -1 FirstWrite 4}
		REG_V_62_out {Type O LastRead -1 FirstWrite 4}
		REG_V_61_out {Type O LastRead -1 FirstWrite 4}
		REG_V_60_out {Type O LastRead -1 FirstWrite 4}
		REG_V_59_out {Type O LastRead -1 FirstWrite 4}
		REG_V_58_out {Type O LastRead -1 FirstWrite 4}
		REG_V_57_out {Type O LastRead -1 FirstWrite 4}
		REG_V_56_out {Type O LastRead -1 FirstWrite 4}
		REG_V_55_out {Type O LastRead -1 FirstWrite 4}
		REG_V_54_out {Type O LastRead -1 FirstWrite 4}
		REG_V_53_out {Type O LastRead -1 FirstWrite 4}
		REG_V_52_out {Type O LastRead -1 FirstWrite 4}
		REG_V_51_out {Type O LastRead -1 FirstWrite 4}
		REG_V_50_out {Type O LastRead -1 FirstWrite 4}
		REG_V_49_out {Type O LastRead -1 FirstWrite 4}
		REG_V_48_out {Type O LastRead -1 FirstWrite 4}
		REG_V_47_out {Type O LastRead -1 FirstWrite 4}
		REG_V_46_out {Type O LastRead -1 FirstWrite 4}
		REG_V_45_out {Type O LastRead -1 FirstWrite 4}
		REG_V_44_out {Type O LastRead -1 FirstWrite 4}
		REG_V_43_out {Type O LastRead -1 FirstWrite 4}
		REG_V_42_out {Type O LastRead -1 FirstWrite 4}
		REG_V_41_out {Type O LastRead -1 FirstWrite 4}
		REG_V_40_out {Type O LastRead -1 FirstWrite 4}
		REG_V_39_out {Type O LastRead -1 FirstWrite 4}
		REG_V_38_out {Type O LastRead -1 FirstWrite 4}
		REG_V_37_out {Type O LastRead -1 FirstWrite 4}
		REG_V_36_out {Type O LastRead -1 FirstWrite 4}
		REG_V_35_out {Type O LastRead -1 FirstWrite 4}
		REG_V_34_out {Type O LastRead -1 FirstWrite 4}
		REG_V_33_out {Type O LastRead -1 FirstWrite 4}
		REG_V_32_out {Type O LastRead -1 FirstWrite 4}
		self_sum_V_out {Type O LastRead -1 FirstWrite 4}}
	compute2in_Pipeline_VITIS_LOOP_87_3 {
		i {Type I LastRead 0 FirstWrite -1}
		buffer_2 {Type O LastRead -1 FirstWrite 5}
		REG_V_32_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_40_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_48_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_56_reload {Type I LastRead 0 FirstWrite -1}
		indvars_iv424 {Type I LastRead 0 FirstWrite -1}
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
		tmp_7 {Type I LastRead 0 FirstWrite -1}
		zext_ln63 {Type I LastRead 0 FirstWrite -1}
		phase {Type I LastRead 0 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1 {Type IO LastRead 5 FirstWrite 4}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5 {Type IO LastRead 5 FirstWrite 4}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10 {Type IO LastRead 5 FirstWrite 4}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "61", "Max" : "101"}
	, {"Name" : "Interval", "Min" : "62", "Max" : "102"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	buffer_a { ap_memory {  { buffer_a_address0 mem_address 1 3 }  { buffer_a_ce0 mem_ce 1 1 }  { buffer_a_q0 mem_dout 0 32 } } }
	buffer_b { ap_memory {  { buffer_b_address0 mem_address 1 3 }  { buffer_b_ce0 mem_ce 1 1 }  { buffer_b_q0 mem_dout 0 32 } } }
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
set moduleName compute2in
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
set C_modelName {compute2in}
set C_modelType { void 0 }
set C_modelArgList {
	{ buffer_a int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ buffer_b int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ buffer_2 int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ phase uint 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buffer_a", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_b", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
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
	{ buffer_a_address0 sc_out sc_lv 3 signal 0 } 
	{ buffer_a_ce0 sc_out sc_logic 1 signal 0 } 
	{ buffer_a_q0 sc_in sc_lv 32 signal 0 } 
	{ buffer_b_address0 sc_out sc_lv 3 signal 1 } 
	{ buffer_b_ce0 sc_out sc_logic 1 signal 1 } 
	{ buffer_b_q0 sc_in sc_lv 32 signal 1 } 
	{ buffer_2_address0 sc_out sc_lv 4 signal 2 } 
	{ buffer_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ buffer_2_we0 sc_out sc_logic 1 signal 2 } 
	{ buffer_2_d0 sc_out sc_lv 32 signal 2 } 
	{ phase sc_in sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buffer_a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_a", "role": "address0" }} , 
 	{ "name": "buffer_a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_a", "role": "ce0" }} , 
 	{ "name": "buffer_a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_a", "role": "q0" }} , 
 	{ "name": "buffer_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_b", "role": "address0" }} , 
 	{ "name": "buffer_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_b", "role": "ce0" }} , 
 	{ "name": "buffer_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_b", "role": "q0" }} , 
 	{ "name": "buffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_2", "role": "address0" }} , 
 	{ "name": "buffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "ce0" }} , 
 	{ "name": "buffer_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "we0" }} , 
 	{ "name": "buffer_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_2", "role": "d0" }} , 
 	{ "name": "phase", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phase", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "5", "33"],
		"CDFG" : "compute2in",
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
			{"Name" : "buffer_a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_66_2_fu_389", "Port" : "buffer_a", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "buffer_b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_66_2_fu_389", "Port" : "buffer_b", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "buffer_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "buffer_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "phase", "Type" : "None", "Direction" : "I"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Port" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_66_2_fu_389", "Parent" : "0", "Child" : ["2", "3", "4"],
		"CDFG" : "compute2in_Pipeline_VITIS_LOOP_66_2",
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
			{"Name" : "tmp_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "buffer_a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buffer_b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_7", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "VITIS_LOOP_66_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_66_2_fu_389.mul_mul_16ns_16ns_32_4_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_66_2_fu_389.mac_muladd_16ns_16ns_32ns_33_4_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_66_2_fu_389.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "compute2in_Pipeline_VITIS_LOOP_87_3",
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
			{"Name" : "indvars_iv424", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "tmp_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln63", "Type" : "None", "Direction" : "I"},
			{"Name" : "phase", "Type" : "None", "Direction" : "I"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_42_16_1_1_U74", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_32_16_1_1_U75", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_42_16_1_1_U76", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_32_16_1_1_U77", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_32_16_1_1_U78", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_42_16_1_1_U79", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_32_16_1_1_U80", "Parent" : "5"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_42_16_1_1_U81", "Parent" : "5"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_42_16_1_1_U82", "Parent" : "5"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_42_16_1_1_U83", "Parent" : "5"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_32_16_1_1_U84", "Parent" : "5"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_32_16_1_1_U85", "Parent" : "5"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_42_16_1_1_U86", "Parent" : "5"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_42_16_1_1_U87", "Parent" : "5"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_32_16_1_1_U88", "Parent" : "5"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_32_16_1_1_U89", "Parent" : "5"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_154_32_1_1_U90", "Parent" : "5"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mux_124_32_1_1_U91", "Parent" : "5"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mul_mul_16ns_16ns_32_4_1_U92", "Parent" : "5"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mul_mul_16ns_16ns_32_4_1_U93", "Parent" : "5"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mul_mul_16ns_16ns_32_4_1_U94", "Parent" : "5"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mul_mul_16ns_16ns_32_4_1_U95", "Parent" : "5"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mac_muladd_16ns_16ns_32ns_32_4_1_U96", "Parent" : "5"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mac_muladd_16ns_16ns_32ns_32_4_1_U97", "Parent" : "5"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mac_muladd_16ns_16ns_32ns_32_4_1_U98", "Parent" : "5"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.mac_muladd_16ns_16ns_32ns_32_4_1_U99", "Parent" : "5"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute2in_Pipeline_VITIS_LOOP_87_3_fu_464.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U146", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute2in {
		buffer_a {Type I LastRead 0 FirstWrite -1}
		buffer_b {Type I LastRead 0 FirstWrite -1}
		buffer_2 {Type O LastRead -1 FirstWrite 3}
		phase {Type I LastRead 0 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_15 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14 {Type IO LastRead -1 FirstWrite -1}}
	compute2in_Pipeline_VITIS_LOOP_66_2 {
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
		tmp_8 {Type I LastRead 0 FirstWrite -1}
		buffer_a {Type I LastRead 0 FirstWrite -1}
		buffer_b {Type I LastRead 0 FirstWrite -1}
		tmp_7 {Type I LastRead 0 FirstWrite -1}
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
	compute2in_Pipeline_VITIS_LOOP_87_3 {
		i {Type I LastRead 0 FirstWrite -1}
		buffer_2 {Type O LastRead -1 FirstWrite 5}
		REG_V_32_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_40_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_48_reload {Type I LastRead 0 FirstWrite -1}
		REG_V_56_reload {Type I LastRead 0 FirstWrite -1}
		indvars_iv424 {Type I LastRead 0 FirstWrite -1}
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
		tmp_7 {Type I LastRead 0 FirstWrite -1}
		zext_ln63 {Type I LastRead 0 FirstWrite -1}
		phase {Type I LastRead 0 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1 {Type IO LastRead 5 FirstWrite 4}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_1 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_2 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_3 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_4 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_5 {Type IO LastRead 5 FirstWrite 4}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_6 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_7 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_8 {Type IO LastRead -1 FirstWrite -1}
		compute2in_ap_int_32_ap_int_32_ap_int_32_bool_REG1_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_10 {Type IO LastRead 5 FirstWrite 4}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10compute2inP6ap_intILi32EES1_S1_bE4REG1_14 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65", "Max" : "105"}
	, {"Name" : "Interval", "Min" : "66", "Max" : "106"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	buffer_a { ap_memory {  { buffer_a_address0 mem_address 1 3 }  { buffer_a_ce0 mem_ce 1 1 }  { buffer_a_q0 mem_dout 0 32 } } }
	buffer_b { ap_memory {  { buffer_b_address0 mem_address 1 3 }  { buffer_b_ce0 mem_ce 1 1 }  { buffer_b_q0 mem_dout 0 32 } } }
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
