#include "control.h"
#include "ap_int.h"
#include "hls_stream.h"

#define N       16
#define Size    (N*N)        // 256  -- results per tile (was 16)
#define M_size  ((N*N)/2)    // 128  -- input words per buffer (was 8)

enum State{
    IDLE,               //0
    LOAD_MEM_1,         //1
    LOAD_MEM_2,         //2
    START_MPE1,         //3
    START_MPE2,         //4
    WAIT_MPE2,           //5
    WAIT_ALL,            //6
    UNLOAD              //7
};

// shift/function still selects the mode; kept for the mac_fsm contract.

// shift/function still selects the mode; kept for the mac_fsm contract.
void cont(hs_is_t *a_i, hs_is_t *b_i, hs_is_t *c_i, hs_is_t *d_o,
          bool clear, bool enable, bool function, bool start,
          shift_t shift, len_t len,
          len_t *f_cnt, bool *f_valid,
          hls::stream<ap_uint<32>> &buffer_1_rd, // compute -> cont (FIFO read)
          hls::stream<ap_uint<32>>& buffer_1_rd1, //FOR NOW TO SEE IF I HAVE CORRECT MULTIPLICATION ON PE2 
          hls::stream<ap_uint<32>>& buffer_1_rd2,
          hls::stream<ap_uint<32>>& buffer_1_rd3,
          res_t buffer_1_wr[M_size],                 //first shared BRAM
          res_t buffer_1_wr1[M_size],
          dat_t buffer_1_wr2a[M_size],dat_t buffer_1_wr2b[M_size],
          dat_t buffer_1_wr3a[M_size],dat_t buffer_1_wr3b[M_size],              // cont -> second shared BRAM (write)
          bool *compute_start1,                     // -> compute ap_start
          bool compute_done1,
          bool *compute_start2,
          bool compute_done2,
        bool *slave_start1, bool slave_done1,
        bool *slave_start2, bool slave_done2, bool *phase1,bool *phase2){           

    #pragma HLS INTERFACE ap_ctrl_none port=return

    #pragma HLS INTERFACE ap_none port=a_i
    #pragma HLS disaggregate variable=a_i
    #pragma HLS INTERFACE ap_none port=b_i
    #pragma HLS disaggregate variable=b_i
    #pragma HLS INTERFACE ap_none port=c_i
    #pragma HLS disaggregate variable=c_i
    #pragma HLS INTERFACE ap_none port=d_o
    #pragma HLS disaggregate variable=d_o

    #pragma HLS INTERFACE ap_fifo   port=buffer_1_rd
    #pragma HLS INTERFACE ap_fifo   port=buffer_1_rd1
    #pragma HLS INTERFACE ap_fifo   port=buffer_1_rd2
    #pragma HLS INTERFACE ap_fifo   port=buffer_1_rd3
    #pragma HLS INTERFACE ap_memory port=buffer_1_wr
    #pragma HLS INTERFACE ap_memory port=buffer_1_wr1
    #pragma HLS INTERFACE ap_none   port=compute_start1
    #pragma HLS INTERFACE ap_none   port=compute_done1
    #pragma HLS INTERFACE ap_none port=compute_start2
    #pragma HLS INTERFACE ap_none port=compute_done2
    #pragma HLS INTERFACE ap_none port=slave_start1
    #pragma HLS INTERFACE ap_none port=slave_done1
    #pragma HLS INTERFACE ap_none port=slave_start2
    #pragma HLS INTERFACE ap_none port=slave_done2
    
    //phase control
    static bool i_phase1;
    static bool i_phase2;

    // --- control / handshake state ---
    static bool     compute_launched;
    static bool     compute_launched2;
    static bool     slave_launched;
    static bool     done1_seen;
    static bool     done2_seen;
    static bool     slave_done1_seen;
    static bool     slave_done2_seen;

    static count_t  r_cnt;
    static res_t    r_acc;
    static bool     r_acc_ready;
    static bool     r_acc_valid;
    static bool     store_result_valid;
    static bool     store_result_ready;
    static d_non_t  d_nonshifted;
    static bool     d_nonshifted_valid;

    // --- load / drain counters ---
    static len_t    b_count;
    static int      i;
    static int      j_a; // for mem1
    static int      j_b; //for mem2
    static int      j2a,j2b,j3a,j3b;
    static bool     buffer_ok;

    // --- data ---
    static res_t    buffer;

    ap_int<32> tmp_a;
    ap_int<32> tmp_b;

    static State state = IDLE;
    

    // input/output handshake defaults
    a_i->ready  = !buffer_ok;
    b_i->ready  = !buffer_ok;
    c_i->ready  = 1;
    r_acc_ready = d_o->ready | !r_acc_valid;

    switch(state){

        case IDLE:{
            if(clear){
                j_a = 0;
                j_b = 0;
                j2a = 0;
                j2b = 0;
                j3a = 0;
                j3b = 0;
                b_count = 0;
                buffer_ok = 0;
                r_cnt = 0;
                r_acc = 0;
                r_acc_valid = 0;
                i = 0;
                store_result_valid = 0;
                buffer = 0;

                compute_launched = 0;
                *compute_start1 = 0;
                compute_launched2 =0;
                *compute_start2 =0;
                slave_launched =0;
                *slave_start1 =0;
                *slave_start2 =0;

                state = LOAD_MEM_1;
                done1_seen=0;
                done2_seen=0;
                slave_done1_seen =0;
                slave_done2_seen = 0;
                i_phase1 = 0;
                i_phase2 = 0;
            }
            break;}

        case LOAD_MEM_1:{
            if (a_i->valid && b_i->valid){
                store_result_valid = a_i->valid && b_i->valid;
                if(b_count < M_size && buffer_ok == 0){
                    tmp_a = a_i->data;
                    tmp_b = b_i->data;
                    buffer_1_wr[j_a++] = (tmp_b,tmp_a);
                    buffer_1_wr2a[j2a++] = tmp_a;
                    buffer_1_wr3b[j3b++] = tmp_b;
                    b_count++;
                }
            }
            if(b_count >= M_size && shift == 1){
                buffer_ok = 1;
                state = START_MPE1;
            }
            break;}

        case LOAD_MEM_2:{
            if (a_i->valid && b_i->valid){
                store_result_valid = a_i->valid && b_i->valid;
                if(b_count < M_size && buffer_ok == 0){
                    tmp_a = a_i->data;
                    tmp_b = b_i->data;
                    buffer_1_wr1[j_b++] = (tmp_b,tmp_a);
                    buffer_1_wr2b[j2b++] = tmp_b;
                    buffer_1_wr3a[j3a++] = tmp_a;
                    b_count++;
                }
            }
            if(b_count >= M_size && shift == 1){
                buffer_ok = 1;
                state = START_MPE2;
            }
            break;}
        
     

        case START_MPE1:{
            if(compute_launched == 0){ //STARTS ONLY ONCE
                *phase1 = i_phase1;
                *compute_start1 = 1;
                compute_launched = 1;
            } else {
                *compute_start1 = 0;
                //reset the count
                b_count =0;
                state = LOAD_MEM_2;
                buffer_ok =0;
               
            }
            break;}

        //WITH MPE2 Starts all the slave activity as well
        case START_MPE2:{
            if(compute_launched2 == 0){
                *phase2 = i_phase2;
                *compute_start2 = 1;
                *slave_start1 =1;
                *slave_start2 = 1;
                compute_launched2 = 1;
            } else {
                *compute_start2 = 0;
                *slave_start1 = 0;
                *slave_start2 = 0;
                //reset the count
                state = WAIT_ALL;}
            break;}


        case WAIT_ALL:{
            if(done1_seen&&done2_seen&& slave_done1_seen&&slave_done2_seen){
            //STATE_TRANSITION
            if(i_phase1 == 0){
                i_phase1 =1;
                i_phase2 =1;
                b_count =0;
                buffer_ok = 0;
                compute_launched = 0;
                compute_launched2 = 0;
                done1_seen = 0;
                done2_seen = 0;
                slave_done1_seen = 0;
                slave_done2_seen = 0;
                j_a = 0;
                j2a =0;
                j3b =0;
                j_b = 0;
                j3a =0;
                j2b =0;
                state = LOAD_MEM_1;}

            else if (i_phase2 ==1){
                state = UNLOAD;
                }
            }
            
            break;
        }

        case UNLOAD:{
            res_t tmp;
            
            if (!buffer_1_rd.empty()&&(i<Size)){
                tmp = buffer_1_rd.read();
                r_acc_valid = 1;
                r_cnt++;
                i++;
            }
            
            else if(!buffer_1_rd2.empty()&&(i<2*Size)){
                    tmp = buffer_1_rd2.read();
                 r_acc_valid = 1;
                 r_cnt++;
                 i++;
            } 
            
            else if(!buffer_1_rd3.empty()&&(i<3*Size)){
                tmp = buffer_1_rd3.read();
                 r_acc_valid = 1;
                 r_cnt++;
                 i++;
            } 

            else{
                    tmp = buffer_1_rd1.read();
                 r_acc_valid = 1;
                 r_cnt++;
                 i++;
              
            }
            
            if ((r_cnt < len) && store_result_ready){
                r_acc = tmp;//tmp;
                //if(r_cnt < 1){ r_cnt = r_cnt + 1; }
            }
    
            if(i == len){
                state = IDLE;
                r_acc_valid =1;
            }
            break;}
    }

    if(compute_done1){done1_seen =1;}
    if(compute_done2){done2_seen =1;}
    if(slave_done1){slave_done1_seen =1;}
    if(slave_done2){slave_done2_seen =1;}

    d_nonshifted       = (ap_int<64>)(r_acc);
    d_nonshifted_valid = r_acc_valid;
    store_result_ready = r_acc_ready | !store_result_valid;

    d_o->data  =(ap_int<64>)r_acc;
    d_o->valid = enable & r_acc_valid; //d_nonshifted_valid;
    d_o->strb  = 15;

    *f_cnt   = r_cnt;
    *f_valid = r_acc_valid;
}

/* case WAIT_DONE1:{
            if(done1_seen){
               state = WAIT_DONE2;
            }
           else{state = WAIT_DONE1;}
            break;
        }
        case WAIT_DONE2:{
            if(done2_seen){
                state = READ;
            }
            else{state = WAIT_DONE2;}
            break;
        }
*/

  /*
        case READ:{
            if (!buffer_1_rd.empty()&&(i<16)){
                buffer= buffer_1_rd.read();
                 state = UNLOAD;
            }
            
            else if(!buffer_1_rd1.empty()&&(i<32)){
                buffer = buffer_1_rd1.read();
            }

            if((i>=16)&&(!done2_seen)){
                state = WAIT_MPE2;
            }
            else{state =UNLOAD;}
         
           // else if(!buffer_1_rd2.empty()&&(i<48)){
           //     buffer = buffer_1_rd2.read();
           // }
           // else if(!buffer_1_rd3.empty()&&(i<64)){
           //     buffer = buffer_1_rd3.read();
           // }
           
            
            break;}*/



