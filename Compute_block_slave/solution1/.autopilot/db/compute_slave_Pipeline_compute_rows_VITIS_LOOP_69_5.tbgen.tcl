set moduleName compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5
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
set C_modelName {compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ REG1_V_6_reload int 16 regular  }
	{ REG1_V_4_reload int 16 regular  }
	{ REG1_V_2_reload int 16 regular  }
	{ REG1_V_1_reload int 16 regular  }
	{ REG2_V_6_reload int 16 regular  }
	{ REG2_V_4_reload int 16 regular  }
	{ REG2_V_2_reload int 16 regular  }
	{ REG2_V_1_reload int 16 regular  }
	{ REG1_V_7_reload int 16 regular  }
	{ REG1_V_9_reload int 16 regular  }
	{ REG1_V_11_reload int 16 regular  }
	{ REG1_V_14_reload int 16 regular  }
	{ REG2_V_7_reload int 16 regular  }
	{ REG2_V_9_reload int 16 regular  }
	{ REG2_V_11_reload int 16 regular  }
	{ REG2_V_14_reload int 16 regular  }
	{ REG1_V_5_reload int 16 regular  }
	{ REG1_V_3_reload int 16 regular  }
	{ REG1_V_12_reload int 16 regular  }
	{ REG1_V_reload int 16 regular  }
	{ REG2_V_5_reload int 16 regular  }
	{ REG2_V_3_reload int 16 regular  }
	{ REG2_V_12_reload int 16 regular  }
	{ REG2_V_reload int 16 regular  }
	{ REG1_V_8_reload int 16 regular  }
	{ REG1_V_10_reload int 16 regular  }
	{ REG1_V_13_reload int 16 regular  }
	{ REG1_V_15_reload int 16 regular  }
	{ REG2_V_8_reload int 16 regular  }
	{ REG2_V_10_reload int 16 regular  }
	{ REG2_V_13_reload int 16 regular  }
	{ REG2_V_15_reload int 16 regular  }
	{ result_out int 32 regular {array 16 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "REG1_V_6_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG1_V_4_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG1_V_2_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG1_V_1_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG2_V_6_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG2_V_4_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG2_V_2_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG2_V_1_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG1_V_7_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG1_V_9_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG1_V_11_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG1_V_14_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG2_V_7_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG2_V_9_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG2_V_11_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG2_V_14_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG1_V_5_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG1_V_3_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG1_V_12_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG1_V_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG2_V_5_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG2_V_3_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG2_V_12_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG2_V_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG1_V_8_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG1_V_10_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG1_V_13_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG1_V_15_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG2_V_8_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG2_V_10_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG2_V_13_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG2_V_15_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "result_out", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ REG1_V_6_reload sc_in sc_lv 16 signal 0 } 
	{ REG1_V_4_reload sc_in sc_lv 16 signal 1 } 
	{ REG1_V_2_reload sc_in sc_lv 16 signal 2 } 
	{ REG1_V_1_reload sc_in sc_lv 16 signal 3 } 
	{ REG2_V_6_reload sc_in sc_lv 16 signal 4 } 
	{ REG2_V_4_reload sc_in sc_lv 16 signal 5 } 
	{ REG2_V_2_reload sc_in sc_lv 16 signal 6 } 
	{ REG2_V_1_reload sc_in sc_lv 16 signal 7 } 
	{ REG1_V_7_reload sc_in sc_lv 16 signal 8 } 
	{ REG1_V_9_reload sc_in sc_lv 16 signal 9 } 
	{ REG1_V_11_reload sc_in sc_lv 16 signal 10 } 
	{ REG1_V_14_reload sc_in sc_lv 16 signal 11 } 
	{ REG2_V_7_reload sc_in sc_lv 16 signal 12 } 
	{ REG2_V_9_reload sc_in sc_lv 16 signal 13 } 
	{ REG2_V_11_reload sc_in sc_lv 16 signal 14 } 
	{ REG2_V_14_reload sc_in sc_lv 16 signal 15 } 
	{ REG1_V_5_reload sc_in sc_lv 16 signal 16 } 
	{ REG1_V_3_reload sc_in sc_lv 16 signal 17 } 
	{ REG1_V_12_reload sc_in sc_lv 16 signal 18 } 
	{ REG1_V_reload sc_in sc_lv 16 signal 19 } 
	{ REG2_V_5_reload sc_in sc_lv 16 signal 20 } 
	{ REG2_V_3_reload sc_in sc_lv 16 signal 21 } 
	{ REG2_V_12_reload sc_in sc_lv 16 signal 22 } 
	{ REG2_V_reload sc_in sc_lv 16 signal 23 } 
	{ REG1_V_8_reload sc_in sc_lv 16 signal 24 } 
	{ REG1_V_10_reload sc_in sc_lv 16 signal 25 } 
	{ REG1_V_13_reload sc_in sc_lv 16 signal 26 } 
	{ REG1_V_15_reload sc_in sc_lv 16 signal 27 } 
	{ REG2_V_8_reload sc_in sc_lv 16 signal 28 } 
	{ REG2_V_10_reload sc_in sc_lv 16 signal 29 } 
	{ REG2_V_13_reload sc_in sc_lv 16 signal 30 } 
	{ REG2_V_15_reload sc_in sc_lv 16 signal 31 } 
	{ result_out_address0 sc_out sc_lv 4 signal 32 } 
	{ result_out_ce0 sc_out sc_logic 1 signal 32 } 
	{ result_out_we0 sc_out sc_logic 1 signal 32 } 
	{ result_out_d0 sc_out sc_lv 32 signal 32 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "REG1_V_6_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_6_reload", "role": "default" }} , 
 	{ "name": "REG1_V_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_4_reload", "role": "default" }} , 
 	{ "name": "REG1_V_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_2_reload", "role": "default" }} , 
 	{ "name": "REG1_V_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_1_reload", "role": "default" }} , 
 	{ "name": "REG2_V_6_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG2_V_6_reload", "role": "default" }} , 
 	{ "name": "REG2_V_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG2_V_4_reload", "role": "default" }} , 
 	{ "name": "REG2_V_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG2_V_2_reload", "role": "default" }} , 
 	{ "name": "REG2_V_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG2_V_1_reload", "role": "default" }} , 
 	{ "name": "REG1_V_7_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_7_reload", "role": "default" }} , 
 	{ "name": "REG1_V_9_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_9_reload", "role": "default" }} , 
 	{ "name": "REG1_V_11_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_11_reload", "role": "default" }} , 
 	{ "name": "REG1_V_14_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_14_reload", "role": "default" }} , 
 	{ "name": "REG2_V_7_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG2_V_7_reload", "role": "default" }} , 
 	{ "name": "REG2_V_9_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG2_V_9_reload", "role": "default" }} , 
 	{ "name": "REG2_V_11_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG2_V_11_reload", "role": "default" }} , 
 	{ "name": "REG2_V_14_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG2_V_14_reload", "role": "default" }} , 
 	{ "name": "REG1_V_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_5_reload", "role": "default" }} , 
 	{ "name": "REG1_V_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_3_reload", "role": "default" }} , 
 	{ "name": "REG1_V_12_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_12_reload", "role": "default" }} , 
 	{ "name": "REG1_V_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_reload", "role": "default" }} , 
 	{ "name": "REG2_V_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG2_V_5_reload", "role": "default" }} , 
 	{ "name": "REG2_V_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG2_V_3_reload", "role": "default" }} , 
 	{ "name": "REG2_V_12_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG2_V_12_reload", "role": "default" }} , 
 	{ "name": "REG2_V_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG2_V_reload", "role": "default" }} , 
 	{ "name": "REG1_V_8_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_8_reload", "role": "default" }} , 
 	{ "name": "REG1_V_10_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_10_reload", "role": "default" }} , 
 	{ "name": "REG1_V_13_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_13_reload", "role": "default" }} , 
 	{ "name": "REG1_V_15_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG1_V_15_reload", "role": "default" }} , 
 	{ "name": "REG2_V_8_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG2_V_8_reload", "role": "default" }} , 
 	{ "name": "REG2_V_10_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG2_V_10_reload", "role": "default" }} , 
 	{ "name": "REG2_V_13_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG2_V_13_reload", "role": "default" }} , 
 	{ "name": "REG2_V_15_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG2_V_15_reload", "role": "default" }} , 
 	{ "name": "result_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "result_out", "role": "address0" }} , 
 	{ "name": "result_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_out", "role": "ce0" }} , 
 	{ "name": "result_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_out", "role": "we0" }} , 
 	{ "name": "result_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_out", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "REG1_V_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG1_V_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG1_V_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG1_V_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG2_V_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG2_V_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG2_V_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG2_V_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG1_V_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG1_V_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG1_V_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG1_V_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG2_V_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG2_V_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG2_V_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG2_V_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG1_V_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG1_V_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG1_V_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG1_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG2_V_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG2_V_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG2_V_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG2_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG1_V_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG1_V_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG1_V_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG1_V_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG2_V_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG2_V_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG2_V_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "REG2_V_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "result_out", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "compute_rows_VITIS_LOOP_69_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U35", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U36", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U37", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U38", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U39", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U40", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U41", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U42", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U43", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U44", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U45", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U46", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5 {
		REG1_V_6_reload {Type I LastRead 0 FirstWrite -1}
		REG1_V_4_reload {Type I LastRead 0 FirstWrite -1}
		REG1_V_2_reload {Type I LastRead 0 FirstWrite -1}
		REG1_V_1_reload {Type I LastRead 0 FirstWrite -1}
		REG2_V_6_reload {Type I LastRead 0 FirstWrite -1}
		REG2_V_4_reload {Type I LastRead 0 FirstWrite -1}
		REG2_V_2_reload {Type I LastRead 0 FirstWrite -1}
		REG2_V_1_reload {Type I LastRead 0 FirstWrite -1}
		REG1_V_7_reload {Type I LastRead 0 FirstWrite -1}
		REG1_V_9_reload {Type I LastRead 0 FirstWrite -1}
		REG1_V_11_reload {Type I LastRead 0 FirstWrite -1}
		REG1_V_14_reload {Type I LastRead 0 FirstWrite -1}
		REG2_V_7_reload {Type I LastRead 0 FirstWrite -1}
		REG2_V_9_reload {Type I LastRead 0 FirstWrite -1}
		REG2_V_11_reload {Type I LastRead 0 FirstWrite -1}
		REG2_V_14_reload {Type I LastRead 0 FirstWrite -1}
		REG1_V_5_reload {Type I LastRead 0 FirstWrite -1}
		REG1_V_3_reload {Type I LastRead 0 FirstWrite -1}
		REG1_V_12_reload {Type I LastRead 0 FirstWrite -1}
		REG1_V_reload {Type I LastRead 0 FirstWrite -1}
		REG2_V_5_reload {Type I LastRead 0 FirstWrite -1}
		REG2_V_3_reload {Type I LastRead 0 FirstWrite -1}
		REG2_V_12_reload {Type I LastRead 0 FirstWrite -1}
		REG2_V_reload {Type I LastRead 0 FirstWrite -1}
		REG1_V_8_reload {Type I LastRead 0 FirstWrite -1}
		REG1_V_10_reload {Type I LastRead 0 FirstWrite -1}
		REG1_V_13_reload {Type I LastRead 0 FirstWrite -1}
		REG1_V_15_reload {Type I LastRead 0 FirstWrite -1}
		REG2_V_8_reload {Type I LastRead 0 FirstWrite -1}
		REG2_V_10_reload {Type I LastRead 0 FirstWrite -1}
		REG2_V_13_reload {Type I LastRead 0 FirstWrite -1}
		REG2_V_15_reload {Type I LastRead 0 FirstWrite -1}
		result_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "21", "Max" : "21"}
	, {"Name" : "Interval", "Min" : "21", "Max" : "21"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	REG1_V_6_reload { ap_none {  { REG1_V_6_reload in_data 0 16 } } }
	REG1_V_4_reload { ap_none {  { REG1_V_4_reload in_data 0 16 } } }
	REG1_V_2_reload { ap_none {  { REG1_V_2_reload in_data 0 16 } } }
	REG1_V_1_reload { ap_none {  { REG1_V_1_reload in_data 0 16 } } }
	REG2_V_6_reload { ap_none {  { REG2_V_6_reload in_data 0 16 } } }
	REG2_V_4_reload { ap_none {  { REG2_V_4_reload in_data 0 16 } } }
	REG2_V_2_reload { ap_none {  { REG2_V_2_reload in_data 0 16 } } }
	REG2_V_1_reload { ap_none {  { REG2_V_1_reload in_data 0 16 } } }
	REG1_V_7_reload { ap_none {  { REG1_V_7_reload in_data 0 16 } } }
	REG1_V_9_reload { ap_none {  { REG1_V_9_reload in_data 0 16 } } }
	REG1_V_11_reload { ap_none {  { REG1_V_11_reload in_data 0 16 } } }
	REG1_V_14_reload { ap_none {  { REG1_V_14_reload in_data 0 16 } } }
	REG2_V_7_reload { ap_none {  { REG2_V_7_reload in_data 0 16 } } }
	REG2_V_9_reload { ap_none {  { REG2_V_9_reload in_data 0 16 } } }
	REG2_V_11_reload { ap_none {  { REG2_V_11_reload in_data 0 16 } } }
	REG2_V_14_reload { ap_none {  { REG2_V_14_reload in_data 0 16 } } }
	REG1_V_5_reload { ap_none {  { REG1_V_5_reload in_data 0 16 } } }
	REG1_V_3_reload { ap_none {  { REG1_V_3_reload in_data 0 16 } } }
	REG1_V_12_reload { ap_none {  { REG1_V_12_reload in_data 0 16 } } }
	REG1_V_reload { ap_none {  { REG1_V_reload in_data 0 16 } } }
	REG2_V_5_reload { ap_none {  { REG2_V_5_reload in_data 0 16 } } }
	REG2_V_3_reload { ap_none {  { REG2_V_3_reload in_data 0 16 } } }
	REG2_V_12_reload { ap_none {  { REG2_V_12_reload in_data 0 16 } } }
	REG2_V_reload { ap_none {  { REG2_V_reload in_data 0 16 } } }
	REG1_V_8_reload { ap_none {  { REG1_V_8_reload in_data 0 16 } } }
	REG1_V_10_reload { ap_none {  { REG1_V_10_reload in_data 0 16 } } }
	REG1_V_13_reload { ap_none {  { REG1_V_13_reload in_data 0 16 } } }
	REG1_V_15_reload { ap_none {  { REG1_V_15_reload in_data 0 16 } } }
	REG2_V_8_reload { ap_none {  { REG2_V_8_reload in_data 0 16 } } }
	REG2_V_10_reload { ap_none {  { REG2_V_10_reload in_data 0 16 } } }
	REG2_V_13_reload { ap_none {  { REG2_V_13_reload in_data 0 16 } } }
	REG2_V_15_reload { ap_none {  { REG2_V_15_reload in_data 0 16 } } }
	result_out { ap_memory {  { result_out_address0 mem_address 1 4 }  { result_out_ce0 mem_ce 1 1 }  { result_out_we0 mem_we 1 1 }  { result_out_d0 mem_din 1 32 } } }
}
