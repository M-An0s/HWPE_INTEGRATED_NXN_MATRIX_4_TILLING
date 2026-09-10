set moduleName compute_Pipeline_VITIS_LOOP_60_1
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
set C_modelName {compute_Pipeline_VITIS_LOOP_60_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ REG_V_31 int 16 regular  }
	{ REG_V_30 int 16 regular  }
	{ REG_V_29 int 16 regular  }
	{ REG_V_28 int 16 regular  }
	{ REG_V_27 int 16 regular  }
	{ REG_V_26 int 16 regular  }
	{ REG_V_25 int 16 regular  }
	{ REG_V_24 int 16 regular  }
	{ REG_V_23 int 16 regular  }
	{ REG_V_22 int 16 regular  }
	{ REG_V_21 int 16 regular  }
	{ REG_V_20 int 16 regular  }
	{ REG_V_19 int 16 regular  }
	{ REG_V_18 int 16 regular  }
	{ REG_V_17 int 16 regular  }
	{ REG_V_16 int 16 regular  }
	{ REG_V_15 int 16 regular  }
	{ REG_V_14 int 16 regular  }
	{ REG_V_13 int 16 regular  }
	{ REG_V_12 int 16 regular  }
	{ REG_V_11 int 16 regular  }
	{ REG_V_10 int 16 regular  }
	{ REG_V_9 int 16 regular  }
	{ REG_V_8 int 16 regular  }
	{ REG_V_7 int 16 regular  }
	{ REG_V_6 int 16 regular  }
	{ REG_V_5 int 16 regular  }
	{ REG_V_4 int 16 regular  }
	{ REG_V_3 int 16 regular  }
	{ REG_V_2 int 16 regular  }
	{ REG_V_1 int 16 regular  }
	{ REG_V int 16 regular  }
	{ i_cast int 2 regular  }
	{ buffer_1 int 64 regular {array 8 { 1 3 } 1 1 }  }
	{ REG_V_63_out int 16 regular {pointer 1}  }
	{ REG_V_62_out int 16 regular {pointer 1}  }
	{ REG_V_61_out int 16 regular {pointer 1}  }
	{ REG_V_60_out int 16 regular {pointer 1}  }
	{ REG_V_59_out int 16 regular {pointer 1}  }
	{ REG_V_58_out int 16 regular {pointer 1}  }
	{ REG_V_57_out int 16 regular {pointer 1}  }
	{ REG_V_56_out int 16 regular {pointer 1}  }
	{ REG_V_55_out int 16 regular {pointer 1}  }
	{ REG_V_54_out int 16 regular {pointer 1}  }
	{ REG_V_53_out int 16 regular {pointer 1}  }
	{ REG_V_52_out int 16 regular {pointer 1}  }
	{ REG_V_51_out int 16 regular {pointer 1}  }
	{ REG_V_50_out int 16 regular {pointer 1}  }
	{ REG_V_49_out int 16 regular {pointer 1}  }
	{ REG_V_48_out int 16 regular {pointer 1}  }
	{ REG_V_47_out int 16 regular {pointer 1}  }
	{ REG_V_46_out int 16 regular {pointer 1}  }
	{ REG_V_45_out int 16 regular {pointer 1}  }
	{ REG_V_44_out int 16 regular {pointer 1}  }
	{ REG_V_43_out int 16 regular {pointer 1}  }
	{ REG_V_42_out int 16 regular {pointer 1}  }
	{ REG_V_41_out int 16 regular {pointer 1}  }
	{ REG_V_40_out int 16 regular {pointer 1}  }
	{ REG_V_39_out int 16 regular {pointer 1}  }
	{ REG_V_38_out int 16 regular {pointer 1}  }
	{ REG_V_37_out int 16 regular {pointer 1}  }
	{ REG_V_36_out int 16 regular {pointer 1}  }
	{ REG_V_35_out int 16 regular {pointer 1}  }
	{ REG_V_34_out int 16 regular {pointer 1}  }
	{ REG_V_33_out int 16 regular {pointer 1}  }
	{ REG_V_32_out int 16 regular {pointer 1}  }
	{ self_sum_V_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "REG_V_31", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_30", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_29", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_28", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_27", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_26", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_25", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_24", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_23", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_22", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_21", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_20", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_19", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_18", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_17", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_16", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_15", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_14", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_12", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_10", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_9", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "i_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "buffer_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "REG_V_63_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_62_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_61_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_60_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_59_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_58_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_57_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_56_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_55_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_54_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_53_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_52_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_51_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_50_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_49_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_48_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_47_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_46_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_45_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_44_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_43_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_42_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_41_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_40_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_39_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_38_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_37_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_36_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_35_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_34_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_33_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "REG_V_32_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "self_sum_V_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 108
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ REG_V_31 sc_in sc_lv 16 signal 0 } 
	{ REG_V_30 sc_in sc_lv 16 signal 1 } 
	{ REG_V_29 sc_in sc_lv 16 signal 2 } 
	{ REG_V_28 sc_in sc_lv 16 signal 3 } 
	{ REG_V_27 sc_in sc_lv 16 signal 4 } 
	{ REG_V_26 sc_in sc_lv 16 signal 5 } 
	{ REG_V_25 sc_in sc_lv 16 signal 6 } 
	{ REG_V_24 sc_in sc_lv 16 signal 7 } 
	{ REG_V_23 sc_in sc_lv 16 signal 8 } 
	{ REG_V_22 sc_in sc_lv 16 signal 9 } 
	{ REG_V_21 sc_in sc_lv 16 signal 10 } 
	{ REG_V_20 sc_in sc_lv 16 signal 11 } 
	{ REG_V_19 sc_in sc_lv 16 signal 12 } 
	{ REG_V_18 sc_in sc_lv 16 signal 13 } 
	{ REG_V_17 sc_in sc_lv 16 signal 14 } 
	{ REG_V_16 sc_in sc_lv 16 signal 15 } 
	{ REG_V_15 sc_in sc_lv 16 signal 16 } 
	{ REG_V_14 sc_in sc_lv 16 signal 17 } 
	{ REG_V_13 sc_in sc_lv 16 signal 18 } 
	{ REG_V_12 sc_in sc_lv 16 signal 19 } 
	{ REG_V_11 sc_in sc_lv 16 signal 20 } 
	{ REG_V_10 sc_in sc_lv 16 signal 21 } 
	{ REG_V_9 sc_in sc_lv 16 signal 22 } 
	{ REG_V_8 sc_in sc_lv 16 signal 23 } 
	{ REG_V_7 sc_in sc_lv 16 signal 24 } 
	{ REG_V_6 sc_in sc_lv 16 signal 25 } 
	{ REG_V_5 sc_in sc_lv 16 signal 26 } 
	{ REG_V_4 sc_in sc_lv 16 signal 27 } 
	{ REG_V_3 sc_in sc_lv 16 signal 28 } 
	{ REG_V_2 sc_in sc_lv 16 signal 29 } 
	{ REG_V_1 sc_in sc_lv 16 signal 30 } 
	{ REG_V sc_in sc_lv 16 signal 31 } 
	{ i_cast sc_in sc_lv 2 signal 32 } 
	{ buffer_1_address0 sc_out sc_lv 3 signal 33 } 
	{ buffer_1_ce0 sc_out sc_logic 1 signal 33 } 
	{ buffer_1_q0 sc_in sc_lv 64 signal 33 } 
	{ REG_V_63_out sc_out sc_lv 16 signal 34 } 
	{ REG_V_63_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ REG_V_62_out sc_out sc_lv 16 signal 35 } 
	{ REG_V_62_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ REG_V_61_out sc_out sc_lv 16 signal 36 } 
	{ REG_V_61_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ REG_V_60_out sc_out sc_lv 16 signal 37 } 
	{ REG_V_60_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ REG_V_59_out sc_out sc_lv 16 signal 38 } 
	{ REG_V_59_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ REG_V_58_out sc_out sc_lv 16 signal 39 } 
	{ REG_V_58_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ REG_V_57_out sc_out sc_lv 16 signal 40 } 
	{ REG_V_57_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ REG_V_56_out sc_out sc_lv 16 signal 41 } 
	{ REG_V_56_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ REG_V_55_out sc_out sc_lv 16 signal 42 } 
	{ REG_V_55_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ REG_V_54_out sc_out sc_lv 16 signal 43 } 
	{ REG_V_54_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ REG_V_53_out sc_out sc_lv 16 signal 44 } 
	{ REG_V_53_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ REG_V_52_out sc_out sc_lv 16 signal 45 } 
	{ REG_V_52_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ REG_V_51_out sc_out sc_lv 16 signal 46 } 
	{ REG_V_51_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ REG_V_50_out sc_out sc_lv 16 signal 47 } 
	{ REG_V_50_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ REG_V_49_out sc_out sc_lv 16 signal 48 } 
	{ REG_V_49_out_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ REG_V_48_out sc_out sc_lv 16 signal 49 } 
	{ REG_V_48_out_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ REG_V_47_out sc_out sc_lv 16 signal 50 } 
	{ REG_V_47_out_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ REG_V_46_out sc_out sc_lv 16 signal 51 } 
	{ REG_V_46_out_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ REG_V_45_out sc_out sc_lv 16 signal 52 } 
	{ REG_V_45_out_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ REG_V_44_out sc_out sc_lv 16 signal 53 } 
	{ REG_V_44_out_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ REG_V_43_out sc_out sc_lv 16 signal 54 } 
	{ REG_V_43_out_ap_vld sc_out sc_logic 1 outvld 54 } 
	{ REG_V_42_out sc_out sc_lv 16 signal 55 } 
	{ REG_V_42_out_ap_vld sc_out sc_logic 1 outvld 55 } 
	{ REG_V_41_out sc_out sc_lv 16 signal 56 } 
	{ REG_V_41_out_ap_vld sc_out sc_logic 1 outvld 56 } 
	{ REG_V_40_out sc_out sc_lv 16 signal 57 } 
	{ REG_V_40_out_ap_vld sc_out sc_logic 1 outvld 57 } 
	{ REG_V_39_out sc_out sc_lv 16 signal 58 } 
	{ REG_V_39_out_ap_vld sc_out sc_logic 1 outvld 58 } 
	{ REG_V_38_out sc_out sc_lv 16 signal 59 } 
	{ REG_V_38_out_ap_vld sc_out sc_logic 1 outvld 59 } 
	{ REG_V_37_out sc_out sc_lv 16 signal 60 } 
	{ REG_V_37_out_ap_vld sc_out sc_logic 1 outvld 60 } 
	{ REG_V_36_out sc_out sc_lv 16 signal 61 } 
	{ REG_V_36_out_ap_vld sc_out sc_logic 1 outvld 61 } 
	{ REG_V_35_out sc_out sc_lv 16 signal 62 } 
	{ REG_V_35_out_ap_vld sc_out sc_logic 1 outvld 62 } 
	{ REG_V_34_out sc_out sc_lv 16 signal 63 } 
	{ REG_V_34_out_ap_vld sc_out sc_logic 1 outvld 63 } 
	{ REG_V_33_out sc_out sc_lv 16 signal 64 } 
	{ REG_V_33_out_ap_vld sc_out sc_logic 1 outvld 64 } 
	{ REG_V_32_out sc_out sc_lv 16 signal 65 } 
	{ REG_V_32_out_ap_vld sc_out sc_logic 1 outvld 65 } 
	{ self_sum_V_out sc_out sc_lv 32 signal 66 } 
	{ self_sum_V_out_ap_vld sc_out sc_logic 1 outvld 66 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "REG_V_31", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_31", "role": "default" }} , 
 	{ "name": "REG_V_30", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_30", "role": "default" }} , 
 	{ "name": "REG_V_29", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_29", "role": "default" }} , 
 	{ "name": "REG_V_28", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_28", "role": "default" }} , 
 	{ "name": "REG_V_27", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_27", "role": "default" }} , 
 	{ "name": "REG_V_26", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_26", "role": "default" }} , 
 	{ "name": "REG_V_25", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_25", "role": "default" }} , 
 	{ "name": "REG_V_24", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_24", "role": "default" }} , 
 	{ "name": "REG_V_23", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_23", "role": "default" }} , 
 	{ "name": "REG_V_22", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_22", "role": "default" }} , 
 	{ "name": "REG_V_21", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_21", "role": "default" }} , 
 	{ "name": "REG_V_20", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_20", "role": "default" }} , 
 	{ "name": "REG_V_19", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_19", "role": "default" }} , 
 	{ "name": "REG_V_18", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_18", "role": "default" }} , 
 	{ "name": "REG_V_17", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_17", "role": "default" }} , 
 	{ "name": "REG_V_16", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_16", "role": "default" }} , 
 	{ "name": "REG_V_15", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_15", "role": "default" }} , 
 	{ "name": "REG_V_14", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_14", "role": "default" }} , 
 	{ "name": "REG_V_13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_13", "role": "default" }} , 
 	{ "name": "REG_V_12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_12", "role": "default" }} , 
 	{ "name": "REG_V_11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_11", "role": "default" }} , 
 	{ "name": "REG_V_10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_10", "role": "default" }} , 
 	{ "name": "REG_V_9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_9", "role": "default" }} , 
 	{ "name": "REG_V_8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_8", "role": "default" }} , 
 	{ "name": "REG_V_7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_7", "role": "default" }} , 
 	{ "name": "REG_V_6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_6", "role": "default" }} , 
 	{ "name": "REG_V_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_5", "role": "default" }} , 
 	{ "name": "REG_V_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_4", "role": "default" }} , 
 	{ "name": "REG_V_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_3", "role": "default" }} , 
 	{ "name": "REG_V_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_2", "role": "default" }} , 
 	{ "name": "REG_V_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_1", "role": "default" }} , 
 	{ "name": "REG_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V", "role": "default" }} , 
 	{ "name": "i_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "i_cast", "role": "default" }} , 
 	{ "name": "buffer_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buffer_1", "role": "address0" }} , 
 	{ "name": "buffer_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_1", "role": "ce0" }} , 
 	{ "name": "buffer_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "buffer_1", "role": "q0" }} , 
 	{ "name": "REG_V_63_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_63_out", "role": "default" }} , 
 	{ "name": "REG_V_63_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_63_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_62_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_62_out", "role": "default" }} , 
 	{ "name": "REG_V_62_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_62_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_61_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_61_out", "role": "default" }} , 
 	{ "name": "REG_V_61_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_61_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_60_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_60_out", "role": "default" }} , 
 	{ "name": "REG_V_60_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_60_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_59_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_59_out", "role": "default" }} , 
 	{ "name": "REG_V_59_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_59_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_58_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_58_out", "role": "default" }} , 
 	{ "name": "REG_V_58_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_58_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_57_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_57_out", "role": "default" }} , 
 	{ "name": "REG_V_57_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_57_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_56_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_56_out", "role": "default" }} , 
 	{ "name": "REG_V_56_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_56_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_55_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_55_out", "role": "default" }} , 
 	{ "name": "REG_V_55_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_55_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_54_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_54_out", "role": "default" }} , 
 	{ "name": "REG_V_54_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_54_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_53_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_53_out", "role": "default" }} , 
 	{ "name": "REG_V_53_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_53_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_52_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_52_out", "role": "default" }} , 
 	{ "name": "REG_V_52_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_52_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_51_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_51_out", "role": "default" }} , 
 	{ "name": "REG_V_51_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_51_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_50_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_50_out", "role": "default" }} , 
 	{ "name": "REG_V_50_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_50_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_49_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_49_out", "role": "default" }} , 
 	{ "name": "REG_V_49_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_49_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_48_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_48_out", "role": "default" }} , 
 	{ "name": "REG_V_48_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_48_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_47_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_47_out", "role": "default" }} , 
 	{ "name": "REG_V_47_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_47_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_46_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_46_out", "role": "default" }} , 
 	{ "name": "REG_V_46_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_46_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_45_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_45_out", "role": "default" }} , 
 	{ "name": "REG_V_45_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_45_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_44_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_44_out", "role": "default" }} , 
 	{ "name": "REG_V_44_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_44_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_43_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_43_out", "role": "default" }} , 
 	{ "name": "REG_V_43_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_43_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_42_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_42_out", "role": "default" }} , 
 	{ "name": "REG_V_42_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_42_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_41_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_41_out", "role": "default" }} , 
 	{ "name": "REG_V_41_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_41_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_40_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_40_out", "role": "default" }} , 
 	{ "name": "REG_V_40_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_40_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_39_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_39_out", "role": "default" }} , 
 	{ "name": "REG_V_39_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_39_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_38_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_38_out", "role": "default" }} , 
 	{ "name": "REG_V_38_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_38_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_37_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_37_out", "role": "default" }} , 
 	{ "name": "REG_V_37_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_37_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_36_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_36_out", "role": "default" }} , 
 	{ "name": "REG_V_36_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_36_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_35_out", "role": "default" }} , 
 	{ "name": "REG_V_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_35_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_34_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_34_out", "role": "default" }} , 
 	{ "name": "REG_V_34_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_34_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_33_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_33_out", "role": "default" }} , 
 	{ "name": "REG_V_33_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_33_out", "role": "ap_vld" }} , 
 	{ "name": "REG_V_32_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "REG_V_32_out", "role": "default" }} , 
 	{ "name": "REG_V_32_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "REG_V_32_out", "role": "ap_vld" }} , 
 	{ "name": "self_sum_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "self_sum_V_out", "role": "default" }} , 
 	{ "name": "self_sum_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "self_sum_V_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_60_1",
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
			{"Name" : "VITIS_LOOP_60_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16ns_16ns_32_4_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16ns_16ns_32ns_33_4_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_Pipeline_VITIS_LOOP_60_1 {
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
		self_sum_V_out {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9", "Max" : "9"}
	, {"Name" : "Interval", "Min" : "9", "Max" : "9"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	REG_V_31 { ap_none {  { REG_V_31 in_data 0 16 } } }
	REG_V_30 { ap_none {  { REG_V_30 in_data 0 16 } } }
	REG_V_29 { ap_none {  { REG_V_29 in_data 0 16 } } }
	REG_V_28 { ap_none {  { REG_V_28 in_data 0 16 } } }
	REG_V_27 { ap_none {  { REG_V_27 in_data 0 16 } } }
	REG_V_26 { ap_none {  { REG_V_26 in_data 0 16 } } }
	REG_V_25 { ap_none {  { REG_V_25 in_data 0 16 } } }
	REG_V_24 { ap_none {  { REG_V_24 in_data 0 16 } } }
	REG_V_23 { ap_none {  { REG_V_23 in_data 0 16 } } }
	REG_V_22 { ap_none {  { REG_V_22 in_data 0 16 } } }
	REG_V_21 { ap_none {  { REG_V_21 in_data 0 16 } } }
	REG_V_20 { ap_none {  { REG_V_20 in_data 0 16 } } }
	REG_V_19 { ap_none {  { REG_V_19 in_data 0 16 } } }
	REG_V_18 { ap_none {  { REG_V_18 in_data 0 16 } } }
	REG_V_17 { ap_none {  { REG_V_17 in_data 0 16 } } }
	REG_V_16 { ap_none {  { REG_V_16 in_data 0 16 } } }
	REG_V_15 { ap_none {  { REG_V_15 in_data 0 16 } } }
	REG_V_14 { ap_none {  { REG_V_14 in_data 0 16 } } }
	REG_V_13 { ap_none {  { REG_V_13 in_data 0 16 } } }
	REG_V_12 { ap_none {  { REG_V_12 in_data 0 16 } } }
	REG_V_11 { ap_none {  { REG_V_11 in_data 0 16 } } }
	REG_V_10 { ap_none {  { REG_V_10 in_data 0 16 } } }
	REG_V_9 { ap_none {  { REG_V_9 in_data 0 16 } } }
	REG_V_8 { ap_none {  { REG_V_8 in_data 0 16 } } }
	REG_V_7 { ap_none {  { REG_V_7 in_data 0 16 } } }
	REG_V_6 { ap_none {  { REG_V_6 in_data 0 16 } } }
	REG_V_5 { ap_none {  { REG_V_5 in_data 0 16 } } }
	REG_V_4 { ap_none {  { REG_V_4 in_data 0 16 } } }
	REG_V_3 { ap_none {  { REG_V_3 in_data 0 16 } } }
	REG_V_2 { ap_none {  { REG_V_2 in_data 0 16 } } }
	REG_V_1 { ap_none {  { REG_V_1 in_data 0 16 } } }
	REG_V { ap_none {  { REG_V in_data 0 16 } } }
	i_cast { ap_none {  { i_cast in_data 0 2 } } }
	buffer_1 { ap_memory {  { buffer_1_address0 mem_address 1 3 }  { buffer_1_ce0 mem_ce 1 1 }  { buffer_1_q0 in_data 0 64 } } }
	REG_V_63_out { ap_vld {  { REG_V_63_out out_data 1 16 }  { REG_V_63_out_ap_vld out_vld 1 1 } } }
	REG_V_62_out { ap_vld {  { REG_V_62_out out_data 1 16 }  { REG_V_62_out_ap_vld out_vld 1 1 } } }
	REG_V_61_out { ap_vld {  { REG_V_61_out out_data 1 16 }  { REG_V_61_out_ap_vld out_vld 1 1 } } }
	REG_V_60_out { ap_vld {  { REG_V_60_out out_data 1 16 }  { REG_V_60_out_ap_vld out_vld 1 1 } } }
	REG_V_59_out { ap_vld {  { REG_V_59_out out_data 1 16 }  { REG_V_59_out_ap_vld out_vld 1 1 } } }
	REG_V_58_out { ap_vld {  { REG_V_58_out out_data 1 16 }  { REG_V_58_out_ap_vld out_vld 1 1 } } }
	REG_V_57_out { ap_vld {  { REG_V_57_out out_data 1 16 }  { REG_V_57_out_ap_vld out_vld 1 1 } } }
	REG_V_56_out { ap_vld {  { REG_V_56_out out_data 1 16 }  { REG_V_56_out_ap_vld out_vld 1 1 } } }
	REG_V_55_out { ap_vld {  { REG_V_55_out out_data 1 16 }  { REG_V_55_out_ap_vld out_vld 1 1 } } }
	REG_V_54_out { ap_vld {  { REG_V_54_out out_data 1 16 }  { REG_V_54_out_ap_vld out_vld 1 1 } } }
	REG_V_53_out { ap_vld {  { REG_V_53_out out_data 1 16 }  { REG_V_53_out_ap_vld out_vld 1 1 } } }
	REG_V_52_out { ap_vld {  { REG_V_52_out out_data 1 16 }  { REG_V_52_out_ap_vld out_vld 1 1 } } }
	REG_V_51_out { ap_vld {  { REG_V_51_out out_data 1 16 }  { REG_V_51_out_ap_vld out_vld 1 1 } } }
	REG_V_50_out { ap_vld {  { REG_V_50_out out_data 1 16 }  { REG_V_50_out_ap_vld out_vld 1 1 } } }
	REG_V_49_out { ap_vld {  { REG_V_49_out out_data 1 16 }  { REG_V_49_out_ap_vld out_vld 1 1 } } }
	REG_V_48_out { ap_vld {  { REG_V_48_out out_data 1 16 }  { REG_V_48_out_ap_vld out_vld 1 1 } } }
	REG_V_47_out { ap_vld {  { REG_V_47_out out_data 1 16 }  { REG_V_47_out_ap_vld out_vld 1 1 } } }
	REG_V_46_out { ap_vld {  { REG_V_46_out out_data 1 16 }  { REG_V_46_out_ap_vld out_vld 1 1 } } }
	REG_V_45_out { ap_vld {  { REG_V_45_out out_data 1 16 }  { REG_V_45_out_ap_vld out_vld 1 1 } } }
	REG_V_44_out { ap_vld {  { REG_V_44_out out_data 1 16 }  { REG_V_44_out_ap_vld out_vld 1 1 } } }
	REG_V_43_out { ap_vld {  { REG_V_43_out out_data 1 16 }  { REG_V_43_out_ap_vld out_vld 1 1 } } }
	REG_V_42_out { ap_vld {  { REG_V_42_out out_data 1 16 }  { REG_V_42_out_ap_vld out_vld 1 1 } } }
	REG_V_41_out { ap_vld {  { REG_V_41_out out_data 1 16 }  { REG_V_41_out_ap_vld out_vld 1 1 } } }
	REG_V_40_out { ap_vld {  { REG_V_40_out out_data 1 16 }  { REG_V_40_out_ap_vld out_vld 1 1 } } }
	REG_V_39_out { ap_vld {  { REG_V_39_out out_data 1 16 }  { REG_V_39_out_ap_vld out_vld 1 1 } } }
	REG_V_38_out { ap_vld {  { REG_V_38_out out_data 1 16 }  { REG_V_38_out_ap_vld out_vld 1 1 } } }
	REG_V_37_out { ap_vld {  { REG_V_37_out out_data 1 16 }  { REG_V_37_out_ap_vld out_vld 1 1 } } }
	REG_V_36_out { ap_vld {  { REG_V_36_out out_data 1 16 }  { REG_V_36_out_ap_vld out_vld 1 1 } } }
	REG_V_35_out { ap_vld {  { REG_V_35_out out_data 1 16 }  { REG_V_35_out_ap_vld out_vld 1 1 } } }
	REG_V_34_out { ap_vld {  { REG_V_34_out out_data 1 16 }  { REG_V_34_out_ap_vld out_vld 1 1 } } }
	REG_V_33_out { ap_vld {  { REG_V_33_out out_data 1 16 }  { REG_V_33_out_ap_vld out_vld 1 1 } } }
	REG_V_32_out { ap_vld {  { REG_V_32_out out_data 1 16 }  { REG_V_32_out_ap_vld out_vld 1 1 } } }
	self_sum_V_out { ap_vld {  { self_sum_V_out out_data 1 32 }  { self_sum_V_out_ap_vld out_vld 1 1 } } }
}
