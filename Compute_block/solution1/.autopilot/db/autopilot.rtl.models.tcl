set SynModuleInfo {
  {SRCNAME compute MODELNAME compute RTLNAME compute IS_TOP 1
    SUBMODULES {
      {MODELNAME compute_mux_42_32_1_1 RTLNAME compute_mux_42_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME compute_mux_32_16_1_1 RTLNAME compute_mux_32_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME compute_mux_154_32_1_1 RTLNAME compute_mux_154_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME compute_mux_124_32_1_1 RTLNAME compute_mux_124_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME compute_mul_mul_16ns_16ns_32_4_1 RTLNAME compute_mul_mul_16ns_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME compute_mac_muladd_16ns_16ns_32ns_32_4_1 RTLNAME compute_mac_muladd_16ns_16ns_32ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
}
