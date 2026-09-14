#ifndef _HLS_ADD_H_
#define _HLS_ADD_H_

//for using input output streams    
#include <iostream>
#include <fstream>
#include "hls_stream.h"

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

#define Size 16
#define Size2 8 


void compute2in(dat_t buffer_a[Size2],dat_t buffer_b[Size2],
    dat_t buffer_2[Size],
    bool phase);


#endif
