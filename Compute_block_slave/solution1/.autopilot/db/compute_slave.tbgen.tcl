set moduleName compute_slave
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
set C_modelName {compute_slave}
set C_modelType { void 0 }
set C_modelArgList {
	{ fwd_in1 int 32 regular {fifo 0 volatile }  }
	{ fwd_in2 int 32 regular {fifo 0 volatile }  }
	{ result_out int 32 regular {array 16 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fwd_in1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fwd_in2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "result_out", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
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
	{ fwd_in2_dout sc_in sc_lv 32 signal 1 } 
	{ fwd_in2_empty_n sc_in sc_logic 1 signal 1 } 
	{ fwd_in2_read sc_out sc_logic 1 signal 1 } 
	{ result_out_address0 sc_out sc_lv 4 signal 2 } 
	{ result_out_ce0 sc_out sc_logic 1 signal 2 } 
	{ result_out_we0 sc_out sc_logic 1 signal 2 } 
	{ result_out_d0 sc_out sc_lv 32 signal 2 } 
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
 	{ "name": "fwd_in2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fwd_in2", "role": "dout" }} , 
 	{ "name": "fwd_in2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fwd_in2", "role": "empty_n" }} , 
 	{ "name": "fwd_in2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fwd_in2", "role": "read" }} , 
 	{ "name": "result_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "result_out", "role": "address0" }} , 
 	{ "name": "result_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_out", "role": "ce0" }} , 
 	{ "name": "result_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_out", "role": "we0" }} , 
 	{ "name": "result_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_out", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5"],
		"CDFG" : "compute_slave",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "47", "EstimateLatencyMax" : "47",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "fwd_in1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_slave_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2_fu_170", "Port" : "fwd_in1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "fwd_in2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_compute_slave_Pipeline_VITIS_LOOP_60_3_VITIS_LOOP_61_4_fu_192", "Port" : "fwd_in2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "result_out", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5_fu_214", "Port" : "result_out", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_slave_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2_fu_170", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_slave_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2_fu_170.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_slave_Pipeline_VITIS_LOOP_60_3_VITIS_LOOP_61_4_fu_192", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "compute_slave_Pipeline_VITIS_LOOP_60_3_VITIS_LOOP_61_4",
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
			{"Name" : "fwd_in2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fwd_in2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "REG2_V_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG2_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG2_V_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG2_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG2_V_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG2_V_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG2_V_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG2_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG2_V_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG2_V_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG2_V_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG2_V_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG2_V_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG2_V_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG2_V_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "REG2_V_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_3_VITIS_LOOP_61_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_slave_Pipeline_VITIS_LOOP_60_3_VITIS_LOOP_61_4_fu_192.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5_fu_214", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5_fu_214.mux_42_16_1_1_U35", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5_fu_214.mux_42_16_1_1_U36", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5_fu_214.mux_42_16_1_1_U37", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5_fu_214.mux_42_16_1_1_U38", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5_fu_214.mux_42_16_1_1_U39", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5_fu_214.mux_42_16_1_1_U40", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5_fu_214.mux_42_16_1_1_U41", "Parent" : "5"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5_fu_214.mux_42_16_1_1_U42", "Parent" : "5"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5_fu_214.mul_mul_16ns_16ns_32_4_1_U43", "Parent" : "5"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5_fu_214.mul_mul_16ns_16ns_32_4_1_U44", "Parent" : "5"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5_fu_214.mac_muladd_16ns_16ns_32ns_32_4_1_U45", "Parent" : "5"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5_fu_214.mac_muladd_16ns_16ns_32ns_32_4_1_U46", "Parent" : "5"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5_fu_214.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"}]}


set ArgLastReadFirstWriteLatency {
	compute_slave {
		fwd_in1 {Type I LastRead 1 FirstWrite -1}
		fwd_in2 {Type I LastRead 1 FirstWrite -1}
		result_out {Type O LastRead -1 FirstWrite 4}}
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
		REG1_V_6_out {Type O LastRead -1 FirstWrite 0}}
	compute_slave_Pipeline_VITIS_LOOP_60_3_VITIS_LOOP_61_4 {
		fwd_in2 {Type I LastRead 1 FirstWrite -1}
		REG2_V_15_out {Type O LastRead -1 FirstWrite 0}
		REG2_V_out {Type O LastRead -1 FirstWrite 0}
		REG2_V_14_out {Type O LastRead -1 FirstWrite 0}
		REG2_V_1_out {Type O LastRead -1 FirstWrite 0}
		REG2_V_13_out {Type O LastRead -1 FirstWrite 0}
		REG2_V_12_out {Type O LastRead -1 FirstWrite 0}
		REG2_V_11_out {Type O LastRead -1 FirstWrite 0}
		REG2_V_2_out {Type O LastRead -1 FirstWrite 0}
		REG2_V_10_out {Type O LastRead -1 FirstWrite 0}
		REG2_V_3_out {Type O LastRead -1 FirstWrite 0}
		REG2_V_9_out {Type O LastRead -1 FirstWrite 0}
		REG2_V_4_out {Type O LastRead -1 FirstWrite 0}
		REG2_V_8_out {Type O LastRead -1 FirstWrite 0}
		REG2_V_5_out {Type O LastRead -1 FirstWrite 0}
		REG2_V_7_out {Type O LastRead -1 FirstWrite 0}
		REG2_V_6_out {Type O LastRead -1 FirstWrite 0}}
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
	{"Name" : "Latency", "Min" : "47", "Max" : "47"}
	, {"Name" : "Interval", "Min" : "48", "Max" : "48"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fwd_in1 { ap_fifo {  { fwd_in1_dout fifo_port_we 0 32 }  { fwd_in1_empty_n fifo_status 0 1 }  { fwd_in1_read fifo_data 1 1 } } }
	fwd_in2 { ap_fifo {  { fwd_in2_dout fifo_port_we 0 32 }  { fwd_in2_empty_n fifo_status 0 1 }  { fwd_in2_read fifo_data 1 1 } } }
	result_out { ap_memory {  { result_out_address0 mem_address 1 4 }  { result_out_ce0 mem_ce 1 1 }  { result_out_we0 mem_we 1 1 }  { result_out_d0 mem_din 1 32 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	fwd_in1 { fifo_read 1 no_conditional }
	fwd_in2 { fifo_read 1 no_conditional }
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
