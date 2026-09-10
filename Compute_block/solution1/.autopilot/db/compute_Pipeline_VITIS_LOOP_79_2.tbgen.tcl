set moduleName compute_Pipeline_VITIS_LOOP_79_2
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
set C_modelName {compute_Pipeline_VITIS_LOOP_79_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ i int 3 regular  }
	{ REG_V_32_reload int 16 regular  }
	{ REG_V_40_reload int 16 regular  }
	{ REG_V_48_reload int 16 regular  }
	{ REG_V_56_reload int 16 regular  }
	{ indvars_iv1 int 2 regular  }
	{ REG_V_36_reload int 16 regular  }
	{ REG_V_44_reload int 16 regular  }
	{ REG_V_52_reload int 16 regular  }
	{ REG_V_60_reload int 16 regular  }
	{ REG_V_33_reload int 16 regular  }
	{ REG_V_41_reload int 16 regular  }
	{ REG_V_49_reload int 16 regular  }
	{ REG_V_57_reload int 16 regular  }
	{ REG_V_37_reload int 16 regular  }
	{ REG_V_45_reload int 16 regular  }
	{ REG_V_53_reload int 16 regular  }
	{ REG_V_61_reload int 16 regular  }
	{ REG_V_34_reload int 16 regular  }
	{ REG_V_42_reload int 16 regular  }
	{ REG_V_50_reload int 16 regular  }
	{ REG_V_58_reload int 16 regular  }
	{ REG_V_38_reload int 16 regular  }
	{ REG_V_46_reload int 16 regular  }
	{ REG_V_54_reload int 16 regular  }
	{ REG_V_62_reload int 16 regular  }
	{ REG_V_35_reload int 16 regular  }
	{ REG_V_43_reload int 16 regular  }
	{ REG_V_51_reload int 16 regular  }
	{ REG_V_59_reload int 16 regular  }
	{ REG_V_39_reload int 16 regular  }
	{ REG_V_47_reload int 16 regular  }
	{ REG_V_55_reload int 16 regular  }
	{ REG_V_63_reload int 16 regular  }
	{ phase int 1 regular  }
	{ i_cast int 2 regular  }
	{ buffer_2 int 32 regular {array 16 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "i", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_32_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_40_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_48_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_56_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "indvars_iv1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_36_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_44_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_52_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_60_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_33_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_41_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_49_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_57_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_37_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_45_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_53_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_61_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_34_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_42_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_50_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_58_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_38_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_46_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_54_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_62_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_35_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_43_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_51_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_59_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_39_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_47_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_55_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_63_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "phase", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "i_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ i sc_in sc_lv 3 signal 0 } 
	{ REG_V_32_reload sc_in sc_lv 16 signal 1 } 
	{ REG_V_40_reload sc_in sc_lv 16 signal 2 } 
	{ REG_V_48_reload sc_in sc_lv 16 signal 3 } 
	{ REG_V_56_reload sc_in sc_lv 16 signal 4 } 
	{ indvars_iv1 sc_in sc_lv 2 signal 5 } 
	{ REG_V_36_reload sc_in sc_lv 16 signal 6 } 
	{ REG_V_44_reload sc_in sc_lv 16 signal 7 } 
	{ REG_V_52_reload sc_in sc_lv 16 signal 8 } 
	{ REG_V_60_reload sc_in sc_lv 16 signal 9 } 
	{ REG_V_33_reload sc_in sc_lv 16 signal 10 } 
	{ REG_V_41_reload sc_in sc_lv 16 signal 11 } 
	{ REG_V_49_reload sc_in sc_lv 16 signal 12 } 
	{ REG_V_57_reload sc_in sc_lv 16 signal 13 } 
	{ REG_V_37_reload sc_in sc_lv 16 signal 14 } 
	{ REG_V_45_reload sc_in sc_lv 16 signal 15 } 
	{ REG_V_53_reload sc_in sc_lv 16 signal 16 } 
	{ REG_V_61_reload sc_in sc_lv 16 signal 17 } 
	{ REG_V_34_reload sc_in sc_lv 16 signal 18 } 
	{ REG_V_42_reload sc_in sc_lv 16 signal 19 } 
	{ REG_V_50_reload sc_in sc_lv 16 signal 20 } 
	{ REG_V_58_reload sc_in sc_lv 16 signal 21 } 
	{ REG_V_38_reload sc_in sc_lv 16 signal 22 } 
	{ REG_V_46_reload sc_in sc_lv 16 signal 23 } 
	{ REG_V_54_reload sc_in sc_lv 16 signal 24 } 
	{ REG_V_62_reload sc_in sc_lv 16 signal 25 } 
	{ REG_V_35_reload sc_in sc_lv 16 signal 26 } 
	{ REG_V_43_reload sc_in sc_lv 16 signal 27 } 
	{ REG_V_51_reload sc_in sc_lv 16 signal 28 } 
	{ REG_V_59_reload sc_in sc_lv 16 signal 29 } 
	{ REG_V_39_reload sc_in sc_lv 16 signal 30 } 
	{ REG_V_47_reload sc_in sc_lv 16 signal 31 } 
	{ REG_V_55_reload sc_in sc_lv 16 signal 32 } 
	{ REG_V_63_reload sc_in sc_lv 16 signal 33 } 
	{ phase sc_in sc_lv 1 signal 34 } 
	{ i_cast sc_in sc_lv 2 signal 35 } 
	{ buffer_2_address0 sc_out sc_lv 4 signal 36 } 
	{ buffer_2_ce0 sc_out sc_logic 1 signal 36 } 
	{ buffer_2_we0 sc_out sc_logic 1 signal 36 } 
	{ buffer_2_d0 sc_out sc_lv 32 signal 36 } 
	{ buffer_2_address1 sc_out sc_lv 4 signal 36 } 
	{ buffer_2_ce1 sc_out sc_logic 1 signal 36 } 
	{ buffer_2_we1 sc_out sc_logic 1 signal 36 } 
	{ buffer_2_d1 sc_out sc_lv 32 signal 36 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "i", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "i", "role": "default" }} , 
 	{ "name": "REG_V_32_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_32_reload", "role": "default" }} , 
 	{ "name": "REG_V_40_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_40_reload", "role": "default" }} , 
 	{ "name": "REG_V_48_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_48_reload", "role": "default" }} , 
 	{ "name": "REG_V_56_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_56_reload", "role": "default" }} , 
 	{ "name": "indvars_iv1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "indvars_iv1", "role": "default" }} , 
 	{ "name": "REG_V_36_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_36_reload", "role": "default" }} , 
 	{ "name": "REG_V_44_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_44_reload", "role": "default" }} , 
 	{ "name": "REG_V_52_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_52_reload", "role": "default" }} , 
 	{ "name": "REG_V_60_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_60_reload", "role": "default" }} , 
 	{ "name": "REG_V_33_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_33_reload", "role": "default" }} , 
 	{ "name": "REG_V_41_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_41_reload", "role": "default" }} , 
 	{ "name": "REG_V_49_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_49_reload", "role": "default" }} , 
 	{ "name": "REG_V_57_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_57_reload", "role": "default" }} , 
 	{ "name": "REG_V_37_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_37_reload", "role": "default" }} , 
 	{ "name": "REG_V_45_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_45_reload", "role": "default" }} , 
 	{ "name": "REG_V_53_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_53_reload", "role": "default" }} , 
 	{ "name": "REG_V_61_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_61_reload", "role": "default" }} , 
 	{ "name": "REG_V_34_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_34_reload", "role": "default" }} , 
 	{ "name": "REG_V_42_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_42_reload", "role": "default" }} , 
 	{ "name": "REG_V_50_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_50_reload", "role": "default" }} , 
 	{ "name": "REG_V_58_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_58_reload", "role": "default" }} , 
 	{ "name": "REG_V_38_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_38_reload", "role": "default" }} , 
 	{ "name": "REG_V_46_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_46_reload", "role": "default" }} , 
 	{ "name": "REG_V_54_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_54_reload", "role": "default" }} , 
 	{ "name": "REG_V_62_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_62_reload", "role": "default" }} , 
 	{ "name": "REG_V_35_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_35_reload", "role": "default" }} , 
 	{ "name": "REG_V_43_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_43_reload", "role": "default" }} , 
 	{ "name": "REG_V_51_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_51_reload", "role": "default" }} , 
 	{ "name": "REG_V_59_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_59_reload", "role": "default" }} , 
 	{ "name": "REG_V_39_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_39_reload", "role": "default" }} , 
 	{ "name": "REG_V_47_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_47_reload", "role": "default" }} , 
 	{ "name": "REG_V_55_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_55_reload", "role": "default" }} , 
 	{ "name": "REG_V_63_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_63_reload", "role": "default" }} , 
 	{ "name": "phase", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "phase", "role": "default" }} , 
 	{ "name": "i_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "i_cast", "role": "default" }} , 
 	{ "name": "buffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_2", "role": "address0" }} , 
 	{ "name": "buffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "ce0" }} , 
 	{ "name": "buffer_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "we0" }} , 
 	{ "name": "buffer_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_2", "role": "d0" }} , 
 	{ "name": "buffer_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buffer_2", "role": "address1" }} , 
 	{ "name": "buffer_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "ce1" }} , 
 	{ "name": "buffer_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_2", "role": "we1" }} , 
 	{ "name": "buffer_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buffer_2", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_79_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "phase", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "buffer_2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_79_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U74", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U75", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U76", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U77", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U78", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U79", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U80", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U81", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U82", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U83", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U84", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U85", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U86", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U87", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U88", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_16_1_1_U89", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U90", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U91", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U92", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U93", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U94", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U95", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U96", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_32_4_1_U97", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_Pipeline_VITIS_LOOP_79_2 {
		i {Type I LastRead 0 FirstWrite -1}
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
		phase {Type I LastRead 0 FirstWrite -1}
		i_cast {Type I LastRead 0 FirstWrite -1}
		buffer_2 {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	i { ap_none {  { i in_data 0 3 } } }
	REG_V_32_reload { ap_none {  { REG_V_32_reload in_data 0 16 } } }
	REG_V_40_reload { ap_none {  { REG_V_40_reload in_data 0 16 } } }
	REG_V_48_reload { ap_none {  { REG_V_48_reload in_data 0 16 } } }
	REG_V_56_reload { ap_none {  { REG_V_56_reload in_data 0 16 } } }
	indvars_iv1 { ap_none {  { indvars_iv1 in_data 0 2 } } }
	REG_V_36_reload { ap_none {  { REG_V_36_reload in_data 0 16 } } }
	REG_V_44_reload { ap_none {  { REG_V_44_reload in_data 0 16 } } }
	REG_V_52_reload { ap_none {  { REG_V_52_reload in_data 0 16 } } }
	REG_V_60_reload { ap_none {  { REG_V_60_reload in_data 0 16 } } }
	REG_V_33_reload { ap_none {  { REG_V_33_reload in_data 0 16 } } }
	REG_V_41_reload { ap_none {  { REG_V_41_reload in_data 0 16 } } }
	REG_V_49_reload { ap_none {  { REG_V_49_reload in_data 0 16 } } }
	REG_V_57_reload { ap_none {  { REG_V_57_reload in_data 0 16 } } }
	REG_V_37_reload { ap_none {  { REG_V_37_reload in_data 0 16 } } }
	REG_V_45_reload { ap_none {  { REG_V_45_reload in_data 0 16 } } }
	REG_V_53_reload { ap_none {  { REG_V_53_reload in_data 0 16 } } }
	REG_V_61_reload { ap_none {  { REG_V_61_reload in_data 0 16 } } }
	REG_V_34_reload { ap_none {  { REG_V_34_reload in_data 0 16 } } }
	REG_V_42_reload { ap_none {  { REG_V_42_reload in_data 0 16 } } }
	REG_V_50_reload { ap_none {  { REG_V_50_reload in_data 0 16 } } }
	REG_V_58_reload { ap_none {  { REG_V_58_reload in_data 0 16 } } }
	REG_V_38_reload { ap_none {  { REG_V_38_reload in_data 0 16 } } }
	REG_V_46_reload { ap_none {  { REG_V_46_reload in_data 0 16 } } }
	REG_V_54_reload { ap_none {  { REG_V_54_reload in_data 0 16 } } }
	REG_V_62_reload { ap_none {  { REG_V_62_reload in_data 0 16 } } }
	REG_V_35_reload { ap_none {  { REG_V_35_reload in_data 0 16 } } }
	REG_V_43_reload { ap_none {  { REG_V_43_reload in_data 0 16 } } }
	REG_V_51_reload { ap_none {  { REG_V_51_reload in_data 0 16 } } }
	REG_V_59_reload { ap_none {  { REG_V_59_reload in_data 0 16 } } }
	REG_V_39_reload { ap_none {  { REG_V_39_reload in_data 0 16 } } }
	REG_V_47_reload { ap_none {  { REG_V_47_reload in_data 0 16 } } }
	REG_V_55_reload { ap_none {  { REG_V_55_reload in_data 0 16 } } }
	REG_V_63_reload { ap_none {  { REG_V_63_reload in_data 0 16 } } }
	phase { ap_none {  { phase in_data 0 1 } } }
	i_cast { ap_none {  { i_cast in_data 0 2 } } }
	buffer_2 { ap_memory {  { buffer_2_address0 mem_address 1 4 }  { buffer_2_ce0 mem_ce 1 1 }  { buffer_2_we0 mem_we 1 1 }  { buffer_2_d0 mem_din 1 32 }  { buffer_2_address1 MemPortADDR2 1 4 }  { buffer_2_ce1 MemPortCE2 1 1 }  { buffer_2_we1 MemPortWE2 1 1 }  { buffer_2_d1 MemPortDIN2 1 32 } } }
}
