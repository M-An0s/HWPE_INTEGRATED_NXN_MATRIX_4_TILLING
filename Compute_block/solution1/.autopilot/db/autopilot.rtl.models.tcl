set SynModuleInfo {
  {SRCNAME compute_Pipeline_VITIS_LOOP_60_1 MODELNAME compute_Pipeline_VITIS_LOOP_60_1 RTLNAME compute_compute_Pipeline_VITIS_LOOP_60_1
    SUBMODULES {
      {MODELNAME compute_mul_mul_16ns_16ns_32_4_1 RTLNAME compute_mul_mul_16ns_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME compute_mac_muladd_16ns_16ns_32ns_33_4_1 RTLNAME compute_mac_muladd_16ns_16ns_32ns_33_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME compute_flow_control_loop_pipe_sequential_init RTLNAME compute_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME compute_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME compute_Pipeline_VITIS_LOOP_79_2 MODELNAME compute_Pipeline_VITIS_LOOP_79_2 RTLNAME compute_compute_Pipeline_VITIS_LOOP_79_2
    SUBMODULES {
      {MODELNAME compute_mux_42_16_1_1 RTLNAME compute_mux_42_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME compute_mux_32_16_1_1 RTLNAME compute_mux_32_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME compute_mac_muladd_16ns_16ns_32ns_32_4_1 RTLNAME compute_mac_muladd_16ns_16ns_32ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute MODELNAME compute RTLNAME compute IS_TOP 1}
}
