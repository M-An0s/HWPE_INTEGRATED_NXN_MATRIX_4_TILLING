set SynModuleInfo {
  {SRCNAME compute2in_Pipeline_VITIS_LOOP_66_2 MODELNAME compute2in_Pipeline_VITIS_LOOP_66_2 RTLNAME compute2in_compute2in_Pipeline_VITIS_LOOP_66_2
    SUBMODULES {
      {MODELNAME compute2in_mul_mul_16ns_16ns_32_4_1 RTLNAME compute2in_mul_mul_16ns_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME compute2in_mac_muladd_16ns_16ns_32ns_33_4_1 RTLNAME compute2in_mac_muladd_16ns_16ns_32ns_33_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME compute2in_flow_control_loop_pipe_sequential_init RTLNAME compute2in_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME compute2in_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME compute2in_Pipeline_VITIS_LOOP_87_3 MODELNAME compute2in_Pipeline_VITIS_LOOP_87_3 RTLNAME compute2in_compute2in_Pipeline_VITIS_LOOP_87_3
    SUBMODULES {
      {MODELNAME compute2in_mux_42_16_1_1 RTLNAME compute2in_mux_42_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME compute2in_mux_32_16_1_1 RTLNAME compute2in_mux_32_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME compute2in_mux_154_32_1_1 RTLNAME compute2in_mux_154_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME compute2in_mux_124_32_1_1 RTLNAME compute2in_mux_124_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME compute2in_mac_muladd_16ns_16ns_32ns_32_4_1 RTLNAME compute2in_mac_muladd_16ns_16ns_32ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute2in MODELNAME compute2in RTLNAME compute2in IS_TOP 1
    SUBMODULES {
      {MODELNAME compute2in_mux_42_32_1_1 RTLNAME compute2in_mux_42_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
}
