# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name fwd_in2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fwd_in2 \
    op interface \
    ports { fwd_in2_dout { I 32 vector } fwd_in2_empty_n { I 1 bit } fwd_in2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name REG2_V_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG2_V_15_out \
    op interface \
    ports { REG2_V_15_out { O 16 vector } REG2_V_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name REG2_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG2_V_out \
    op interface \
    ports { REG2_V_out { O 16 vector } REG2_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name REG2_V_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG2_V_14_out \
    op interface \
    ports { REG2_V_14_out { O 16 vector } REG2_V_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name REG2_V_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG2_V_1_out \
    op interface \
    ports { REG2_V_1_out { O 16 vector } REG2_V_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name REG2_V_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG2_V_13_out \
    op interface \
    ports { REG2_V_13_out { O 16 vector } REG2_V_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name REG2_V_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG2_V_12_out \
    op interface \
    ports { REG2_V_12_out { O 16 vector } REG2_V_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name REG2_V_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG2_V_11_out \
    op interface \
    ports { REG2_V_11_out { O 16 vector } REG2_V_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name REG2_V_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG2_V_2_out \
    op interface \
    ports { REG2_V_2_out { O 16 vector } REG2_V_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name REG2_V_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG2_V_10_out \
    op interface \
    ports { REG2_V_10_out { O 16 vector } REG2_V_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name REG2_V_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG2_V_3_out \
    op interface \
    ports { REG2_V_3_out { O 16 vector } REG2_V_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name REG2_V_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG2_V_9_out \
    op interface \
    ports { REG2_V_9_out { O 16 vector } REG2_V_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name REG2_V_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG2_V_4_out \
    op interface \
    ports { REG2_V_4_out { O 16 vector } REG2_V_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name REG2_V_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG2_V_8_out \
    op interface \
    ports { REG2_V_8_out { O 16 vector } REG2_V_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name REG2_V_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG2_V_5_out \
    op interface \
    ports { REG2_V_5_out { O 16 vector } REG2_V_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name REG2_V_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG2_V_7_out \
    op interface \
    ports { REG2_V_7_out { O 16 vector } REG2_V_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name REG2_V_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG2_V_6_out \
    op interface \
    ports { REG2_V_6_out { O 16 vector } REG2_V_6_out_ap_vld { O 1 bit } } \
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
set InstName compute_slave_flow_control_loop_pipe_sequential_init_U
set CompName compute_slave_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix compute_slave_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


