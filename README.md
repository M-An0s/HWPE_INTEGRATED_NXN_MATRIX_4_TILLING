**Known Issue:** The current I/O implementation has been validated for a single accelerator invocation. Re-triggering the accelerator without reinitialization may cause stream misalignment due to an outstanding I/O request from the previous transaction. This issue does not affect the single-invocation experiments and measurements presented using this implementation.

The issue has been corrected in the FFT Load module available [here](https://github.com/M-An0s/Measurements_and_test/tree/main), and the corresponding fix will be incorporated into this implementation in the future.

**For correct HLS–I/O interaction, please refer to:**
https://github.com/M-An0s/Measurements_and_test/tree/main

The code in this repository has been used primarily to measure the throughput and latency of the accelerator design when integrated into the PULPissimo SoC.
