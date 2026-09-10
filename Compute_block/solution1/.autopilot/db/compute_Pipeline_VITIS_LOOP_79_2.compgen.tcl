# This script segment is generated automatically by AutoPilot

set id 72
set name compute_mux_42_16_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 16
set din0_signed 0
set din1_width 16
set din1_signed 0
set din2_width 16
set din2_signed 0
set din3_width 16
set din3_signed 0
set din4_width 2
set din4_signed 0
set dout_width 16
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 73
set name compute_mux_32_16_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 16
set din0_signed 0
set din1_width 16
set din1_signed 0
set din2_width 16
set din2_signed 0
set din3_width 2
set din3_signed 0
set dout_width 16
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 92
set name compute_mac_muladd_16ns_16ns_32ns_32_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 16
set in0_signed 0
set in1_width 16
set in1_signed 0
set in2_width 32
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
set arg_lists {i0 {16 0 +} i1 {16 0 +} m {32 1 +} i2 {32 0 +} p {32 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 135 \
    name buffer_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_2 \
    op interface \
    ports { buffer_2_address0 { O 4 vector } buffer_2_ce0 { O 1 bit } buffer_2_we0 { O 1 bit } buffer_2_d0 { O 32 vector } buffer_2_address1 { O 4 vector } buffer_2_ce1 { O 1 bit } buffer_2_we1 { O 1 bit } buffer_2_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_2'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_i \
    op interface \
    ports { i { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name REG_V_32_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_32_reload \
    op interface \
    ports { REG_V_32_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name REG_V_40_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_40_reload \
    op interface \
    ports { REG_V_40_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name REG_V_48_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_48_reload \
    op interface \
    ports { REG_V_48_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name REG_V_56_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_56_reload \
    op interface \
    ports { REG_V_56_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name indvars_iv397 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_indvars_iv397 \
    op interface \
    ports { indvars_iv397 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name REG_V_36_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_36_reload \
    op interface \
    ports { REG_V_36_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name REG_V_44_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_44_reload \
    op interface \
    ports { REG_V_44_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name REG_V_52_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_52_reload \
    op interface \
    ports { REG_V_52_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name REG_V_60_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_60_reload \
    op interface \
    ports { REG_V_60_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name REG_V_33_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_33_reload \
    op interface \
    ports { REG_V_33_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name REG_V_41_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_41_reload \
    op interface \
    ports { REG_V_41_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name REG_V_49_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_49_reload \
    op interface \
    ports { REG_V_49_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name REG_V_57_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_57_reload \
    op interface \
    ports { REG_V_57_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name REG_V_37_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_37_reload \
    op interface \
    ports { REG_V_37_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name REG_V_45_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_45_reload \
    op interface \
    ports { REG_V_45_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name REG_V_53_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_53_reload \
    op interface \
    ports { REG_V_53_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name REG_V_61_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_61_reload \
    op interface \
    ports { REG_V_61_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name REG_V_34_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_34_reload \
    op interface \
    ports { REG_V_34_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name REG_V_42_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_42_reload \
    op interface \
    ports { REG_V_42_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name REG_V_50_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_50_reload \
    op interface \
    ports { REG_V_50_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name REG_V_58_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_58_reload \
    op interface \
    ports { REG_V_58_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name REG_V_38_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_38_reload \
    op interface \
    ports { REG_V_38_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name REG_V_46_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_46_reload \
    op interface \
    ports { REG_V_46_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name REG_V_54_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_54_reload \
    op interface \
    ports { REG_V_54_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name REG_V_62_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_62_reload \
    op interface \
    ports { REG_V_62_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name REG_V_35_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_35_reload \
    op interface \
    ports { REG_V_35_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name REG_V_43_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_43_reload \
    op interface \
    ports { REG_V_43_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name REG_V_51_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_51_reload \
    op interface \
    ports { REG_V_51_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name REG_V_59_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_59_reload \
    op interface \
    ports { REG_V_59_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name REG_V_39_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_39_reload \
    op interface \
    ports { REG_V_39_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name REG_V_47_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_47_reload \
    op interface \
    ports { REG_V_47_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name REG_V_55_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_55_reload \
    op interface \
    ports { REG_V_55_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name REG_V_63_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_63_reload \
    op interface \
    ports { REG_V_63_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name phase \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_phase \
    op interface \
    ports { phase { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name i_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_i_cast \
    op interface \
    ports { i_cast { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName compute_flow_control_loop_pipe_sequential_init_U
set CompName compute_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix compute_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


