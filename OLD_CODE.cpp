/*
#include "FFT.h"
#include "ap_int.h"
#include "hls_stream.h"

//for FFFT works for 8
#define N 8
#define Nlog 3

//buffer size
#define Size 20

//for Matrix Mult
#define A 4
#define Comm 5
#define B 4

enum State{
        IDLE,
        LOAD,
        COMPUTE,
        READ,
        READ_WT,
        UNLOAD,
    };


//call simple_mull function to allow for multiple functions 
//len_t is the lenght of the computational loop 
//for example for (outer_loop){for(len){Do_computation();}}
// f_cnt is the variable incrementing in each loop iteration
//valid represents the validity of the actuall result 
///<x>_i channels are streams of HWPE each having a custom interface on each own 


//Function Shift
// 0         0 ---> ifft
// 1         0 ---> fft
// 0         1 ---> convolution 
// 1         1 ---> matrix mult



void cont(hs_is_t *a_i,hs_is_t *b_i,hs_is_t *c_i,hs_is_t *d_o,
             bool clear,bool enable,bool function,bool start,shift_t shift,len_t len,
             len_t *f_cnt, bool *f_valid,
             hls::stream<ap_uint<64>>& buffer_1_rd,
            res_t buffer_1_wr[Size], // shared BRAM (compute writes, cont reads)
             bool *compute_start,             // -> compute IP ap_start
             bool compute_done){              // <- compute IP ap_done){

   // #pragma HLS PIPELINE II=1

    #pragma HLS INTERFACE ap_ctrl_none port=return // do not create ready,done (control logic is embodied inside)

    #pragma HLS INTERFACE ap_none port = a_i //in
    #pragma HLS disaggregate variable = a_i

    #pragma HLS INTERFACE ap_none port = b_i //in
    #pragma HLS disaggregate variable = b_i

    #pragma HLS INTERFACE ap_none port = c_i //in
    #pragma HLS disaggregate variable = c_i

    #pragma HLS INTERFACE ap_none port = d_o //out
    #pragma HLS disaggregate variable = d_o

    #pragma HLS INTERFACE ap_fifo port = buffer_1_rd
    #pragma HLS INTERFACE ap_memory port = buffer_1_wr
    #pragma HLS INTERFACE ap_none   port = compute_start
    #pragma HLS INTERFACE ap_none   port = compute_done

    //local singals (wiring) instead of mult op
    res_t op;
    static int delay_count;
    static bool compute_launched;
    static res_t store_result; 
    static bool store_result_valid;
    static bool store_result_ready;
    static d_non_t d_nonshifted;
    static bool d_nonshifted_valid;
    //cnt
    static count_t r_cnt;

    //new signal for the use of accumulator 
    static res_t r_acc;
    static res_t r_acc_hold;
    static bool r_acc_ready;
    static bool r_acc_valid;
    static res_t c_shifted;

    //static bool ready;
    static len_t b_count;
    static int i;
    static int j_a;
    static int j_b;

    static res_t buffer_a[Size];
    #pragma HLS ARRAY_PARTITION variable=buffer_a complete dim=1
    static res_t buffer_b[Size];
    #pragma HLS ARRAY_PARTITION variable=buffer_b complete dim=1
    static res_t buffer;
    //#pragma HLS ARRAY_PARTITION variable=buffer complete dim=1
    //wrong coeffs temporarily doubled
    const dat_t re_twiddles[N] = {0x80, 0x5a, 0x0, -0x5a, -0x80, -0x5a, 0x0, 0x5a};
    const dat_t im_twiddles[N] = {0x0, -0x5a, -0x80, -0x5a, 0x0, 0x5a, 0x80, 0x5a};
    #pragma HLS ARRAY_PARTITION variable=re_twiddles complete
    #pragma HLS ARRAY_PARTITION variable=im_twiddles complete   



    static int s_idx;
    static int idx_1;
    static int idx_2;
    static int offset_start;
    static int offset_j;
    static int half;
    static int step;
    static int ctrl;

    static int rd_wait;
    
    static res_t sum;
    static bool buffer_ok;

    static ap_uint<2> shift_fft;
    static bool sign;
    static res_t tmp_re;
    static res_t tmp_im;
    static int offset_tw;
    res_t tmp;
    res_t tmp_a;
    res_t tmp_b;
    static dat_t tmp_re_x;
    static dat_t tmp_im_x;
    static dat_t tmp_re_y;
    static dat_t tmp_im_y; 
    static State state = IDLE;

    // Multiplier accepts new value from `a_i` and `b_i` when `r_mult` is ready and both
    // `a_i` & `b_i` are valid, or when both `a_i` & `b_i` are invalid
    //Those ready mean ready to accept new input 

    c_shifted = (((ap_int<64>)c_i->data) << shift);

    //d_o->data = r_mult;
    a_i -> ready = !buffer_ok; //(store_result_ready & a_i->valid & b_i->valid) | (!a_i->valid & !b_i->valid); //... or if suddenly one becomes non valid
    b_i -> ready = !buffer_ok; //(store_result_ready & a_i->valid & b_i->valid) | (!a_i->valid & !b_i->valid);
    //Multiplier accepts new value from `c_i` when `r_acc` is ready or `c_i` is invalid
    c_i -> ready = 1;
    r_acc_ready  = d_o -> ready | !r_acc_valid;
   

    //For fft: do one normal then try the trick with the parallel ones 
    //One presaved buffer with the constants
    //TODO IMPORTANT -> The Fourier constants have decimal places so you need FIXED POINT ARITHMETIC 
    //You need to do scalling after each multiplication to preserve the original number 
    //format -> that's what the shifted and non shifted values were used for 



    switch(state){

        case IDLE:{
            if(clear){
                store_result = 0;
                store_result_valid = 0;

                j_a = 0;
                j_b =0;
                b_count =0;
                buffer_ok =0;

                //ready = 0;

                r_cnt = 0;
                r_acc = 0;
                r_acc_valid =0;
                i =0;
                state = LOAD;
                sum = 0;

                //ctrl 
                ctrl = 2;

                s_idx =0;

                //index_1 always starts from zero
                idx_1= 0;
                //index_2 always starts from one for Fourier Zero for others 
                idx_2 = 1;

                //j
                offset_j =0;

                //offset_twiddle 
                offset_tw = 0;
                tmp_re = re_twiddles[0];
                

                half = 1;
                //start from N/2
                step = N>>1;
                //start 
                offset_start = 0;
                rd_wait = 0;
                buffer = 0;

                compute_launched =0;
                *compute_start = 0;
            }
            break;}

        case LOAD:{

            if ((a_i->valid)&&(b_i->valid)){//||(store_result_valid && store_result_ready)){
                store_result_valid =  a_i->valid && b_i->valid;
                if(b_count<Size){
                    if(buffer_ok==0){
                        tmp_a = a_i->data;
                        tmp_b = b_i->data;
                        //buffer_a[j_a++] = tmp_a;
                        buffer_1_wr[j_a++] = tmp_a;
                        buffer_b[j_b++] = tmp_b;
                        buffer_ok = 0;
                        b_count++;
                    }

                }
                }
            //add a cycle so compute doesn't trigger too early
            if(b_count>=Size && (shift ==1)){
                    buffer_ok =1;
                    idx_2 = 0;
                    state = COMPUTE;
                }
                
            break;}
        
        case COMPUTE:{
            if(compute_launched == 0){
                *compute_start = 1;
                compute_launched = 1;
            }
            else{
                *compute_start = 0;
            }
        
            if(compute_done){
                state = READ;
                compute_start =0;
            }
             break;}
        

        //TODO VERY IMPORTANT 
        // YOU SHOULDN'T DO ALTERNATE CYCLES AND STUFF LIKE THAT
        // JUST WAIT FOR D->READY AND THEN SEND THE DATA

        case READ:{
            if (!buffer_1_rd.empty()) {
                buffer = buffer_1_rd.read();
                state = UNLOAD; 
                }
            //buffer = buffer+1;
            state = UNLOAD;
            
            break;
        }

        case UNLOAD:{
            if ((r_cnt < len)&&(store_result_ready)){
                r_acc = buffer;
                if(r_cnt < 1){
                    r_cnt = r_cnt+1;
                };
            }

            if(r_acc_valid == 0){
                if(r_cnt >= 1 ){
                    r_acc_valid =1;
                    i = i+1;
                }
            }

            else{
            //always needs one cycle of delay
                r_acc_valid =0;
                r_cnt = r_cnt +1;
                state = READ;
            }

            if(i == len){
                state = IDLE;
            }

        break;}
    }



    d_nonshifted       = (ap_int<64>)(r_acc);
    d_nonshifted_valid = r_acc_valid;
    store_result_ready = r_acc_ready | !store_result_valid; 

    
    d_o->data  = d_nonshifted >> shift_fft;
    d_o->valid = enable & d_nonshifted_valid;
    d_o->strb  = 15;
    
    *f_cnt = r_cnt;
    *f_valid = r_acc_valid;

}*/