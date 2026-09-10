# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20 \
    name buffer_1_wr \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_1_wr \
    op interface \
    ports { buffer_1_wr_address0 { O 5 vector } buffer_1_wr_ce0 { O 1 bit } buffer_1_wr_we0 { O 1 bit } buffer_1_wr_d0 { O 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_1_wr'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 21 \
    name buffer_1_wr1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename buffer_1_wr1 \
    op interface \
    ports { buffer_1_wr1_address0 { O 5 vector } buffer_1_wr1_ce0 { O 1 bit } buffer_1_wr1_we0 { O 1 bit } buffer_1_wr1_d0 { O 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_1_wr1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name a_i_valid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_i_valid \
    op interface \
    ports { a_i_valid { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name a_i_ready \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_a_i_ready \
    op interface \
    ports { a_i_ready { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name a_i_data \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_i_data \
    op interface \
    ports { a_i_data { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name b_i_valid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_i_valid \
    op interface \
    ports { b_i_valid { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name b_i_ready \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_i_ready \
    op interface \
    ports { b_i_ready { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name b_i_data \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_i_data \
    op interface \
    ports { b_i_data { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name c_i_ready \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_i_ready \
    op interface \
    ports { c_i_ready { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name d_o_valid \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_valid \
    op interface \
    ports { d_o_valid { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name d_o_ready \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_ready \
    op interface \
    ports { d_o_ready { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name d_o_data \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_data \
    op interface \
    ports { d_o_data { O 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name d_o_strb \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_o_strb \
    op interface \
    ports { d_o_strb { O 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name clear \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_clear \
    op interface \
    ports { clear { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name enable \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_enable \
    op interface \
    ports { enable { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name shift \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shift \
    op interface \
    ports { shift { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name len \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_len \
    op interface \
    ports { len { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name f_cnt \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_f_cnt \
    op interface \
    ports { f_cnt { O 11 vector } f_cnt_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name f_valid \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_f_valid \
    op interface \
    ports { f_valid { O 1 bit } f_valid_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name buffer_1_rd \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buffer_1_rd \
    op interface \
    ports { buffer_1_rd_dout { I 32 vector } buffer_1_rd_empty_n { I 1 bit } buffer_1_rd_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name buffer_1_rd1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buffer_1_rd1 \
    op interface \
    ports { buffer_1_rd1_dout { I 32 vector } buffer_1_rd1_empty_n { I 1 bit } buffer_1_rd1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name compute_start1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_compute_start1 \
    op interface \
    ports { compute_start1 { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name compute_done1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_compute_done1 \
    op interface \
    ports { compute_done1 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name compute_start2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_compute_start2 \
    op interface \
    ports { compute_start2 { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name compute_done2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_compute_done2 \
    op interface \
    ports { compute_done2 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name slave_start1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_slave_start1 \
    op interface \
    ports { slave_start1 { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name slave_done1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_slave_done1 \
    op interface \
    ports { slave_done1 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name slave_start2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_slave_start2 \
    op interface \
    ports { slave_start2 { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name slave_done2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_slave_done2 \
    op interface \
    ports { slave_done2 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name phase \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_phase \
    op interface \
    ports { phase { O 1 bit } phase_ap_vld { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
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
    id -2 \
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


