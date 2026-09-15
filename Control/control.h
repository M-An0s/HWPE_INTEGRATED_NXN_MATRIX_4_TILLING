#ifndef _HLS_ADD_H_
#define _HLS_ADD_H_

//for using input output streams    
#include <iostream>
#include <fstream>
#include "hls_stream.h"

#define N       16
#define Size    (N*N)        // 256  -- results per tile (was 16)
#define M_size  ((N*N)/2)    // 128  -- input words per buffer (was 8)


//standard character output 
using namespace std;

//Define parameters
#define DATA_WIDTH 32 
#define STRB_WIDTH (DATA_WIDTH/8)

//maximum lenght of the vectors for the product 
#define MAC_CNT_LEN 1024 // log2 of that is used for ctrl_engine_t len_t

//HLS header that includes defining arbitrary integer lenghts
#include "ap_int.h"

//for hwpe_stream_intf_stream struct 
typedef ap_int<DATA_WIDTH> dat_t; // in my case for simple mult data is signed
typedef ap_int<STRB_WIDTH> strb_t;

//for  ctrl_engine_t struct
typedef ap_uint<5> shift_t;
typedef ap_uint<11> len_t;

//lenght result 
typedef ap_int<2*DATA_WIDTH> res_t;

//for shifting ??
typedef ap_int<74> d_non_t;

//for count 
typedef ap_uint<14> count_t;


//hwpe_stream_intf_stream -> the streams protocol
struct hs_is_t{
    //inputs 
    bool valid;
    bool ready;
    dat_t data;
    strb_t strb; 
};


//start the two memories process, buffer_1_wr is in_MEM 1, buffer_1_wr1 is in_MEM 2
void cont(hs_is_t *a_i,hs_is_t *b_i,hs_is_t *c_i,hs_is_t *d_o,
             bool clear,bool enable,bool function,bool start,shift_t shift,len_t len,
             len_t *f_cnt,bool *f_valid,hls::stream<ap_uint<32>>& buffer_1_rd,hls::stream<ap_uint<32>>& buffer_1_rd1,
             hls::stream<ap_uint<32>>& buffer_1_rd2,
             hls::stream<ap_uint<32>>& buffer_1_rd3,
             res_t buffer_1_wr[M_size], res_t buffer_1_wr1[M_size],
             dat_t buffer_1_wr2a[M_size],dat_t buffer_1_wr2b[M_size],
             dat_t buffer_1_wr3a[M_size],dat_t buffer_1_wr3b[M_size],
             bool *compute_start,            
             bool compute_done,bool *compute_start2,
             bool compute_done2,
             bool *slave_start1, bool slave_done1,
             bool *slave_start2, bool slave_done2,
             bool *phase,hls::stream<ap_uint<32>> &a, 
             hls::stream<ap_uint<32>> &b
             );


#endif
