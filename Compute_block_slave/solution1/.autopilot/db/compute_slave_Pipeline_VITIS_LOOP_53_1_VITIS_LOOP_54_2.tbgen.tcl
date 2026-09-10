set moduleName compute_slave_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {compute_slave_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ fwd_in1 int 32 regular {fifo 0 volatile }  }
	{ REG1_V_15_out int 16 regular {pointer 1}  }
	{ REG1_V_out int 16 regular {pointer 1}  }
	{ REG1_V_14_out int 16 regular {pointer 1}  }
	{ REG1_V_1_out int 16 regular {pointer 1}  }
	{ REG1_V_13_out int 16 regular {pointer 1}  }
	{ REG1_V_12_out int 16 regular {pointer 1}  }
	{ REG1_V_11_out int 16 regular {pointer 1}  }
	{ REG1_V_2_out int 16 regular {pointer 1}  }
	{ REG1_V_10_out int 16 regular {pointer 1}  }
	{ REG1_V_3_out int 16 regular {pointer 1}  }
	{ REG1_V_9_out int 16 regular {pointer 1}  }
	{ REG1_V_4_out int 16 regular {pointer 1}  }
	{ REG1_V_8_out int 16 regular {pointer 1}  }
	{ REG1_V_5_out int 16 regular {pointer 1}  }
	{ REG1_V_7_out int 16 regular {pointer 1}  }
	{ REG1_V_6_out int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fwd_in1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "REG1_V_15_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG1_V_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG1_V_14_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG1_V_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG1_V_13_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG1_V_12_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG1_V_11_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG1_V_2_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG1_V_10_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG1_V_3_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG1_V_9_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG1_V_4_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG1_V_8_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG1_V_5_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG1_V_7_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG1_V_6_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fwd_in1_dout sc_in sc_lv 32 signal 0 } 
	{ fwd_in1_empty_n sc_in sc_logic 1 signal 0 } 
	{ fwd_in1_read sc_out sc_logic 1 signal 0 } 
	{ REG1_V_15_out sc_out sc_lv 16 signal 1 } 
	{ REG1_V_15_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ REG1_V_out sc_out sc_lv 16 signal 2 } 
	{ REG1_V_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ REG1_V_14_out sc_out sc_lv 16 signal 3 } 
	{ REG1_V_14_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ REG1_V_1_out sc_out sc_lv 16 signal 4 } 
	{ REG1_V_1_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ REG1_V_13_out sc_out sc_lv 16 signal 5 } 
	{ REG1_V_13_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ REG1_V_12_out sc_out sc_lv 16 signal 6 } 
	{ REG1_V_12_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ REG1_V_11_out sc_out sc_lv 16 signal 7 } 
	{ REG1_V_11_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ REG1_V_2_out sc_out sc_lv 16 signal 8 } 
	{ REG1_V_2_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ REG1_V_10_out sc_out sc_lv 16 signal 9 } 
	{ REG1_V_10_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ REG1_V_3_out sc_out sc_lv 16 signal 10 } 
	{ REG1_V_3_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ REG1_V_9_out sc_out sc_lv 16 signal 11 } 
	{ REG1_V_9_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ REG1_V_4_out sc_out sc_lv 16 signal 12 } 
	{ REG1_V_4_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ REG1_V_8_out sc_out sc_lv 16 signal 13 } 
	{ REG1_V_8_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ REG1_V_5_out sc_out sc_lv 16 signal 14 } 
	{ REG1_V_5_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ REG1_V_7_out sc_out sc_lv 16 signal 15 } 
	{ REG1_V_7_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ REG1_V_6_out sc_out sc_lv 16 signal 16 } 
	{ REG1_V_6_out_ap_vld sc_out sc_logic 1 outvld 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fwd_in1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fwd_in1", "role": "dout" }} , 
 	{ "name": "fwd_in1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fwd_in1", "role": "empty_n" }} , 
 	{ "name": "fwd_in1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fwd_in1", "role": "read" }} , 
 	{ "name": "REG1_V_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_15_out", "role": "default" }} , 
 	{ "name": "REG1_V_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG1_V_15_out", "role": "ap_vld" }} , 
 	{ "name": "REG1_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_out", "role": "default" }} , 
 	{ "name": "REG1_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG1_V_out", "role": "ap_vld" }} , 
 	{ "name": "REG1_V_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_14_out", "role": "default" }} , 
 	{ "name": "REG1_V_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG1_V_14_out", "role": "ap_vld" }} , 
 	{ "name": "REG1_V_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_1_out", "role": "default" }} , 
 	{ "name": "REG1_V_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG1_V_1_out", "role": "ap_vld" }} , 
 	{ "name": "REG1_V_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_13_out", "role": "default" }} , 
 	{ "name": "REG1_V_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG1_V_13_out", "role": "ap_vld" }} , 
 	{ "name": "REG1_V_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_12_out", "role": "default" }} , 
 	{ "name": "REG1_V_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG1_V_12_out", "role": "ap_vld" }} , 
 	{ "name": "REG1_V_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_11_out", "role": "default" }} , 
 	{ "name": "REG1_V_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG1_V_11_out", "role": "ap_vld" }} , 
 	{ "name": "REG1_V_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_2_out", "role": "default" }} , 
 	{ "name": "REG1_V_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG1_V_2_out", "role": "ap_vld" }} , 
 	{ "name": "REG1_V_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_10_out", "role": "default" }} , 
 	{ "name": "REG1_V_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG1_V_10_out", "role": "ap_vld" }} , 
 	{ "name": "REG1_V_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_3_out", "role": "default" }} , 
 	{ "name": "REG1_V_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG1_V_3_out", "role": "ap_vld" }} , 
 	{ "name": "REG1_V_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_9_out", "role": "default" }} , 
 	{ "name": "REG1_V_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG1_V_9_out", "role": "ap_vld" }} , 
 	{ "name": "REG1_V_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_4_out", "role": "default" }} , 
 	{ "name": "REG1_V_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG1_V_4_out", "role": "ap_vld" }} , 
 	{ "name": "REG1_V_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_8_out", "role": "default" }} , 
 	{ "name": "REG1_V_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG1_V_8_out", "role": "ap_vld" }} , 
 	{ "name": "REG1_V_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_5_out", "role": "default" }} , 
 	{ "name": "REG1_V_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG1_V_5_out", "role": "ap_vld" }} , 
 	{ "name": "REG1_V_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_7_out", "role": "default" }} , 
 	{ "name": "REG1_V_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG1_V_7_out", "role": "ap_vld" }} , 
 	{ "name": "REG1_V_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_6_out", "role": "default" }} , 
 	{ "name": "REG1_V_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG1_V_6_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "compute_slave_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "fwd_in1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fwd_in1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "REG1_V_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG1_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG1_V_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG1_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG1_V_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG1_V_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG1_V_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG1_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG1_V_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG1_V_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG1_V_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG1_V_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG1_V_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG1_V_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG1_V_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG1_V_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_1_VITIS_LOOP_54_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_slave_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2 {
		fwd_in1 {Type I LastRead 1 FirstWrite -1}
		REG1_V_15_out {Type O LastRead -1 FirstWrite 0}
		REG1_V_out {Type O LastRead -1 FirstWrite 0}
		REG1_V_14_out {Type O LastRead -1 FirstWrite 0}
		REG1_V_1_out {Type O LastRead -1 FirstWrite 0}
		REG1_V_13_out {Type O LastRead -1 FirstWrite 0}
		REG1_V_12_out {Type O LastRead -1 FirstWrite 0}
		REG1_V_11_out {Type O LastRead -1 FirstWrite 0}
		REG1_V_2_out {Type O LastRead -1 FirstWrite 0}
		REG1_V_10_out {Type O LastRead -1 FirstWrite 0}
		REG1_V_3_out {Type O LastRead -1 FirstWrite 0}
		REG1_V_9_out {Type O LastRead -1 FirstWrite 0}
		REG1_V_4_out {Type O LastRead -1 FirstWrite 0}
		REG1_V_8_out {Type O LastRead -1 FirstWrite 0}
		REG1_V_5_out {Type O LastRead -1 FirstWrite 0}
		REG1_V_7_out {Type O LastRead -1 FirstWrite 0}
		REG1_V_6_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fwd_in1 { ap_fifo {  { fwd_in1_dout fifo_port_we 0 32 }  { fwd_in1_empty_n fifo_status 0 1 }  { fwd_in1_read fifo_data 1 1 } } }
	REG1_V_15_out { ap_vld {  { REG1_V_15_out out_data 1 16 }  { REG1_V_15_out_ap_vld out_vld 1 1 } } }
	REG1_V_out { ap_vld {  { REG1_V_out out_data 1 16 }  { REG1_V_out_ap_vld out_vld 1 1 } } }
	REG1_V_14_out { ap_vld {  { REG1_V_14_out out_data 1 16 }  { REG1_V_14_out_ap_vld out_vld 1 1 } } }
	REG1_V_1_out { ap_vld {  { REG1_V_1_out out_data 1 16 }  { REG1_V_1_out_ap_vld out_vld 1 1 } } }
	REG1_V_13_out { ap_vld {  { REG1_V_13_out out_data 1 16 }  { REG1_V_13_out_ap_vld out_vld 1 1 } } }
	REG1_V_12_out { ap_vld {  { REG1_V_12_out out_data 1 16 }  { REG1_V_12_out_ap_vld out_vld 1 1 } } }
	REG1_V_11_out { ap_vld {  { REG1_V_11_out out_data 1 16 }  { REG1_V_11_out_ap_vld out_vld 1 1 } } }
	REG1_V_2_out { ap_vld {  { REG1_V_2_out out_data 1 16 }  { REG1_V_2_out_ap_vld out_vld 1 1 } } }
	REG1_V_10_out { ap_vld {  { REG1_V_10_out out_data 1 16 }  { REG1_V_10_out_ap_vld out_vld 1 1 } } }
	REG1_V_3_out { ap_vld {  { REG1_V_3_out out_data 1 16 }  { REG1_V_3_out_ap_vld out_vld 1 1 } } }
	REG1_V_9_out { ap_vld {  { REG1_V_9_out out_data 1 16 }  { REG1_V_9_out_ap_vld out_vld 1 1 } } }
	REG1_V_4_out { ap_vld {  { REG1_V_4_out out_data 1 16 }  { REG1_V_4_out_ap_vld out_vld 1 1 } } }
	REG1_V_8_out { ap_vld {  { REG1_V_8_out out_data 1 16 }  { REG1_V_8_out_ap_vld out_vld 1 1 } } }
	REG1_V_5_out { ap_vld {  { REG1_V_5_out out_data 1 16 }  { REG1_V_5_out_ap_vld out_vld 1 1 } } }
	REG1_V_7_out { ap_vld {  { REG1_V_7_out out_data 1 16 }  { REG1_V_7_out_ap_vld out_vld 1 1 } } }
	REG1_V_6_out { ap_vld {  { REG1_V_6_out out_data 1 16 }  { REG1_V_6_out_ap_vld out_vld 1 1 } } }
}
