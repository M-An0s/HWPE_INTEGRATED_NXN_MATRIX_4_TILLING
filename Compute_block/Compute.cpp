#include "Compute.h"
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
void compute(res_t buffer_1[Size2],dat_t buffer_2[Size],bool phase){ //hls::stream<ap_uint<32>> &fwd_out1,hls::stream<ap_uint<32>> &fwd_out2) {
#pragma HLS INTERFACE ap_ctrl_hs port=return
#pragma HLS INTERFACE ap_memory port=buffer_1
#pragma HLS INTERFACE ap_memory port=buffer_2
//#pragma HLS INTERFACE ap_fifo   port=fwd_out1
//#pragma HLS INTERFACE ap_fifo   port=fwd_out2 

/*fill: 
    for (int k = 1; k < Size; k++) {
        buffer_1[k] = k;
    }*/
ap_uint<16> REG[N][8];
//for partial storing
ap_uint<32> REG1[16];
#pragma HLS ARRAY_PARTITION variable=REG complete dim=0
#pragma HLS ARRAY_PARTITION variable=REG1 complete dim=0
volatile int dummy =0;
delay: for (int k = 0; k < 1; k++) {
    dummy = dummy+k;   // 1 cycle to give memory time for last write to finish before reading it back
}

read_and_write_back:
        for(int i=0;i<N;i++){
            res_t self_sum = 0; //diag
            for(int fe=0;fe<2;fe++){ //this has to do with 2 fetches needed for a full row and col combination
                ap_uint<64> word = buffer_1[2*i+fe];
                ap_uint<16> v0 = word.range(15,0);    // a
                ap_uint<16> v1 = word.range(31,16);  // a
                ap_uint<16> v2 = word.range(47,32);  // b
                ap_uint<16> v3 = word.range(63,48);  // b
                REG[i][2*fe] = v0;
                REG[i][2*fe+1] = v1;
                REG[i][N+2*fe] = v2;
                REG[i][N+2*fe+1] = v3;
                self_sum += v0*v2+v1*v3;
               // fwd_out1.write((v0,v1));
                //fwd_out2.write((v2,v3));
            } 
            if(phase == 1){
            buffer_2[(N+1)*i] =self_sum;}//self_sum;} //diagonal fill
            else if(phase ==0){
                REG1[(N+1)*i] = self_sum;
            }
            for(int com =0;com<i;com++){
                res_t com_sum_rc = 0; //row col
                res_t com_sum_cr = 0; //col row
                for(int ptr=0;ptr<N;ptr++){
                    com_sum_rc += REG[i][ptr]*REG[com][ptr+N];
                    com_sum_cr += REG[com][ptr]*REG[i][ptr+N];}

                if(phase ==1){
                buffer_2[4*i+com] = com_sum_rc;
                buffer_2[4*com+i] = com_sum_cr;}
                else if(phase ==0){
                    REG1[4*i+com] = com_sum_rc;
                    REG1[4*com+i] = com_sum_cr;
                }
            }
          
        }
}