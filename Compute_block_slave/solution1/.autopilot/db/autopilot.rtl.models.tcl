set SynModuleInfo {
  {SRCNAME compute_slave_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2 MODELNAME compute_slave_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2 RTLNAME compute_slave_compute_slave_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_54_2
    SUBMODULES {
      {MODELNAME compute_slave_flow_control_loop_pipe_sequential_init RTLNAME compute_slave_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME compute_slave_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME compute_slave_Pipeline_VITIS_LOOP_60_3_VITIS_LOOP_61_4 MODELNAME compute_slave_Pipeline_VITIS_LOOP_60_3_VITIS_LOOP_61_4 RTLNAME compute_slave_compute_slave_Pipeline_VITIS_LOOP_60_3_VITIS_LOOP_61_4}
  {SRCNAME compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5 MODELNAME compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5 RTLNAME compute_slave_compute_slave_Pipeline_compute_rows_VITIS_LOOP_69_5
    SUBMODULES {
      {MODELNAME compute_slave_mux_42_16_1_1 RTLNAME compute_slave_mux_42_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME compute_slave_mul_mul_16ns_16ns_32_4_1 RTLNAME compute_slave_mul_mul_16ns_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME compute_slave_mac_muladd_16ns_16ns_32ns_32_4_1 RTLNAME compute_slave_mac_muladd_16ns_16ns_32ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_slave MODELNAME compute_slave RTLNAME compute_slave IS_TOP 1}
}
