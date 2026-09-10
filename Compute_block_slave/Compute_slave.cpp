#include "Compute_slave.h"
#include "hls_stream.h"

#define Size 16
#define Size2 8 
#define M 4
#define N 4
#define K 4

/*                  
A MXN   | a11 a12|  B NXK | b11 b12 b13|    RES MXK
        | a21 a22|        | b21 b22 b23|
        | a31 a32|  

  fetch |Ar1 Bc1| => just n memory reads bring one row and one column b into the compute unit
  keep first row and first column 


*/

// Simplest possible separate compute IP.
// Fills buffer_1 with 0,1,2,...,Size-1. That's it.
//
// ap_ctrl_hs  -> gives ap_start (launch) / ap_done (finished) / ap_idle / ap_ready
// ap_memory   -> turns buffer_1 into a BRAM port (address/ce/we/d/q signals)
//
// This is the whole "device" the FSM talks to. cont pulses ap_start, waits for
// ap_done, and the results land in the shared buffer_1 BRAM.


// BUFFER_1 => INPUT MEMORY 8 SLOTS 64 BIT BIG BANDWIDTH
// BUFFER_2 => OUTPUT MEMORY 16 SLOTS 32 BIT QUICKLY WRITING ORGANIZED OUTPUTS


// THIS WILL BE A MASTER PE MODULE
void compute_slave(hls::stream<ap_uint<32>> &fwd_in1,hls::stream<ap_uint<32>> &fwd_in2, dat_t result_out[16]) {
#pragma HLS INTERFACE ap_ctrl_hs port=return
#pragma HLS INTERFACE ap_fifo   port=fwd_in1
#pragma HLS INTERFACE ap_fifo   port=fwd_in2
#pragma HLS INTERFACE ap_memory port=result_out

//MPE1 operands
ap_uint<16> REG1[N][4];
//MPE2 operands
ap_uint<16> REG2[N][4];
#pragma HLS ARRAY_PARTITION variable=REG1 complete dim=0
#pragma HLS ARRAY_PARTITION variable=REG2 complete dim=0
volatile int dummy =0;
delay: for (int k = 0; k < 1; k++) {
    dummy = dummy+k;   // 1 cycle to give memory time for last write to finish before reading it back
}

    for (int i =0;i<4;i++ ){
        for(int j=0;j<3;j+=2){
        ap_uint<32> word = fwd_in1.read();
        REG1[i][j] = word(15,0);
        REG1[i][j+1] = word(31,16);}
    }

     for (int i =0;i<4;i++ ){
        for(int j=0;j<3;j+=2){
        ap_uint<32> word = fwd_in2.read();
        REG2[i][j] = word(15,0);
        REG2[i][j+1] = word(31,16);}
    }

   compute_rows:
    for (int i = 0; i < N; i++) {
        for (int com = 0; com < N; com++) {
            res_t sum = 0;
            for (int ptr = 0; ptr < N; ptr++) {
                sum += REG1[i][ptr] * REG2[com][ptr];   // A-row i · B-col com
            }
            result_out[4*i + com] = sum;
        }
    }

}