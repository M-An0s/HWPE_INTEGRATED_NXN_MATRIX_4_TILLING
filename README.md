## General Design

<p align="center">
  <img width="644" alt="General design of the accelerator" src="https://github.com/user-attachments/assets/7d6e5c6e-59f5-400d-970a-214510c0cdb5" />
</p>

## Purpose of This Repository

This repository is used mainly to **measure the throughput and latency** of the accelerator design when it is integrated into the **PULPissimo SoC**.

## Known Issue

> [!WARNING]
> **Stream misalignment when the accelerator is re-triggered**
>
> The current I/O implementation has only been validated for **a single accelerator invocation**. If the accelerator is triggered again without reinitialization, the streams may become misaligned because an I/O request from the previous transaction is still outstanding.
>
> This does **not** affect the experiments and measurements in this repository, since they all use a single invocation.

> [!TIP]
> **Fixed version available**
>
> The issue is fixed in the FFT Load module on the [`FFT_powers_8`](https://github.com/M-An0s/Reprogrammable_HWPE_Accelerator_for_5G-6G_Baseband_Kernels/tree/FFT_powers_8) branch, and the same fix will be brought into this implementation later.
>
> For a correct reference implementation of the **HLS–I/O interaction**, see that branch.
