# This script segment is generated automatically by AutoPilot

set id 1
set name compute_mul_mul_16ns_16ns_32_4_1
set corename simcore_mul
set op mul
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 16
set in0_signed 0
set in1_width 16
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
set arg_lists {i0 {16 0 +} i1 {16 0 +} p {32 0 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op mul
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
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 2
set name compute_mac_muladd_16ns_16ns_32ns_33_4_1
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
set out_width 33
set arg_lists {i0 {16 0 +} i1 {16 0 +} m {32 0 +} i2 {32 0 +} p {33 0 +} c_reg {1} rnd {0} acc {0} }
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
    id 40 \
    name buffer_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename buffer_1 \
    op interface \
    ports { buffer_1_address0 { O 3 vector } buffer_1_ce0 { O 1 bit } buffer_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name REG_V_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_31 \
    op interface \
    ports { REG_V_31 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name REG_V_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_30 \
    op interface \
    ports { REG_V_30 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name REG_V_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_29 \
    op interface \
    ports { REG_V_29 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name REG_V_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_28 \
    op interface \
    ports { REG_V_28 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name REG_V_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_27 \
    op interface \
    ports { REG_V_27 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name REG_V_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_26 \
    op interface \
    ports { REG_V_26 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name REG_V_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_25 \
    op interface \
    ports { REG_V_25 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name REG_V_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_24 \
    op interface \
    ports { REG_V_24 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name REG_V_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_23 \
    op interface \
    ports { REG_V_23 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name REG_V_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_22 \
    op interface \
    ports { REG_V_22 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name REG_V_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_21 \
    op interface \
    ports { REG_V_21 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name REG_V_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_20 \
    op interface \
    ports { REG_V_20 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name REG_V_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_19 \
    op interface \
    ports { REG_V_19 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name REG_V_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_18 \
    op interface \
    ports { REG_V_18 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name REG_V_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_17 \
    op interface \
    ports { REG_V_17 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name REG_V_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_16 \
    op interface \
    ports { REG_V_16 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name REG_V_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_15 \
    op interface \
    ports { REG_V_15 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name REG_V_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_14 \
    op interface \
    ports { REG_V_14 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name REG_V_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_13 \
    op interface \
    ports { REG_V_13 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name REG_V_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_12 \
    op interface \
    ports { REG_V_12 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name REG_V_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_11 \
    op interface \
    ports { REG_V_11 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name REG_V_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_10 \
    op interface \
    ports { REG_V_10 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name REG_V_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_9 \
    op interface \
    ports { REG_V_9 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name REG_V_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_8 \
    op interface \
    ports { REG_V_8 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name REG_V_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_7 \
    op interface \
    ports { REG_V_7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name REG_V_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_6 \
    op interface \
    ports { REG_V_6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name REG_V_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_5 \
    op interface \
    ports { REG_V_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name REG_V_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_4 \
    op interface \
    ports { REG_V_4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name REG_V_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_3 \
    op interface \
    ports { REG_V_3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name REG_V_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_2 \
    op interface \
    ports { REG_V_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name REG_V_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_1 \
    op interface \
    ports { REG_V_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name REG_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V \
    op interface \
    ports { REG_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name fwd_out1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fwd_out1 \
    op interface \
    ports { fwd_out1_din { O 32 vector } fwd_out1_full_n { I 1 bit } fwd_out1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name fwd_out2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fwd_out2 \
    op interface \
    ports { fwd_out2_din { O 32 vector } fwd_out2_full_n { I 1 bit } fwd_out2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
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
    id 41 \
    name REG_V_63_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_63_out \
    op interface \
    ports { REG_V_63_out { O 16 vector } REG_V_63_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name REG_V_62_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_62_out \
    op interface \
    ports { REG_V_62_out { O 16 vector } REG_V_62_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name REG_V_61_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_61_out \
    op interface \
    ports { REG_V_61_out { O 16 vector } REG_V_61_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name REG_V_60_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_60_out \
    op interface \
    ports { REG_V_60_out { O 16 vector } REG_V_60_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name REG_V_59_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_59_out \
    op interface \
    ports { REG_V_59_out { O 16 vector } REG_V_59_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name REG_V_58_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_58_out \
    op interface \
    ports { REG_V_58_out { O 16 vector } REG_V_58_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name REG_V_57_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_57_out \
    op interface \
    ports { REG_V_57_out { O 16 vector } REG_V_57_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name REG_V_56_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_56_out \
    op interface \
    ports { REG_V_56_out { O 16 vector } REG_V_56_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name REG_V_55_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_55_out \
    op interface \
    ports { REG_V_55_out { O 16 vector } REG_V_55_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name REG_V_54_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_54_out \
    op interface \
    ports { REG_V_54_out { O 16 vector } REG_V_54_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name REG_V_53_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_53_out \
    op interface \
    ports { REG_V_53_out { O 16 vector } REG_V_53_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name REG_V_52_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_52_out \
    op interface \
    ports { REG_V_52_out { O 16 vector } REG_V_52_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name REG_V_51_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_51_out \
    op interface \
    ports { REG_V_51_out { O 16 vector } REG_V_51_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name REG_V_50_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_50_out \
    op interface \
    ports { REG_V_50_out { O 16 vector } REG_V_50_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name REG_V_49_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_49_out \
    op interface \
    ports { REG_V_49_out { O 16 vector } REG_V_49_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name REG_V_48_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_48_out \
    op interface \
    ports { REG_V_48_out { O 16 vector } REG_V_48_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name REG_V_47_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_47_out \
    op interface \
    ports { REG_V_47_out { O 16 vector } REG_V_47_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name REG_V_46_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_46_out \
    op interface \
    ports { REG_V_46_out { O 16 vector } REG_V_46_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name REG_V_45_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_45_out \
    op interface \
    ports { REG_V_45_out { O 16 vector } REG_V_45_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name REG_V_44_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_44_out \
    op interface \
    ports { REG_V_44_out { O 16 vector } REG_V_44_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name REG_V_43_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_43_out \
    op interface \
    ports { REG_V_43_out { O 16 vector } REG_V_43_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name REG_V_42_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_42_out \
    op interface \
    ports { REG_V_42_out { O 16 vector } REG_V_42_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name REG_V_41_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_41_out \
    op interface \
    ports { REG_V_41_out { O 16 vector } REG_V_41_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name REG_V_40_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_40_out \
    op interface \
    ports { REG_V_40_out { O 16 vector } REG_V_40_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name REG_V_39_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_39_out \
    op interface \
    ports { REG_V_39_out { O 16 vector } REG_V_39_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name REG_V_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_38_out \
    op interface \
    ports { REG_V_38_out { O 16 vector } REG_V_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name REG_V_37_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_37_out \
    op interface \
    ports { REG_V_37_out { O 16 vector } REG_V_37_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name REG_V_36_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_36_out \
    op interface \
    ports { REG_V_36_out { O 16 vector } REG_V_36_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name REG_V_35_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_35_out \
    op interface \
    ports { REG_V_35_out { O 16 vector } REG_V_35_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name REG_V_34_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_34_out \
    op interface \
    ports { REG_V_34_out { O 16 vector } REG_V_34_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name REG_V_33_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_33_out \
    op interface \
    ports { REG_V_33_out { O 16 vector } REG_V_33_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name REG_V_32_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_REG_V_32_out \
    op interface \
    ports { REG_V_32_out { O 16 vector } REG_V_32_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name self_sum_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_self_sum_V_out \
    op interface \
    ports { self_sum_V_out { O 32 vector } self_sum_V_out_ap_vld { O 1 bit } } \
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


