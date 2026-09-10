/*
 * Copyright (C) 2019 ETH Zurich and University of Bologna
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/* 
 * Authors:  Francesco Conti <fconti@iis.ee.ethz.ch>
 */

#include <stdint.h>
#include "archi_hwpe.h"
#include "hal_hwpe.h"
#include "tinyprintf.h"

#include "inc/hwpe_stimuli_a.h"
#include "inc/hwpe_stimuli_b.h"
#include "inc/hwpe_stimuli_c.h"
#include "inc/hwpe_stimuli_d.h"

int main() {

  uint8_t *a = stim_a;
  uint8_t *b = stim_b;
  uint8_t *c = stim_c;
  uint8_t *d = stim_d;

  volatile int errors = 0;
  int gold_sum = 0, check_sum = 0;
  int i,j;
  
  int offload_id_tmp, offload_id;

  /* convolution-accumulation - HW */

  // enable hwpe
  hwpe_cg_enable();

  while((offload_id_tmp = hwpe_acquire_job()) < 0);

  // set up bytecode
  hwpe_bytecode_set(HWPE_LOOPS1_OFFS,           0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE5_LOOPS0_OFFS, 0x00040000);
  hwpe_bytecode_set(HWPE_BYTECODE4_OFFS,        0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE3_OFFS,        0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE2_OFFS,        0x00000000);
  hwpe_bytecode_set(HWPE_BYTECODE1_OFFS,        0x000008cd);
  hwpe_bytecode_set(HWPE_BYTECODE0_OFFS,        0x11a12c05);
  
  // job-dependent registers
  hwpe_a_addr_set((unsigned int) a);
  hwpe_b_addr_set((unsigned int) b);
  hwpe_c_addr_set((unsigned int) c);
  hwpe_d_addr_set((unsigned int) d);
  hwpe_nb_iter_set(0);
  hwpe_len_iter_set(32);
  hwpe_vectstride_set(0);
  hwpe_shift_simplemul_set(hwpe_shift_simplemul_value(1, 0));

  // start hwpe operation
  hwpe_trigger_job();

  // wait for end of computation
  asm volatile ("wfi" ::: "memory");

  // disable hwpe
  hwpe_cg_disable();

  //TEST 1
  // check
  if(((uint32_t *) d)[ 0] != 0x0000000a) errors++;   // 10
  if(((uint32_t *) d)[ 1] != 0x0000000e) errors++;   // 14
  if(((uint32_t *) d)[ 2] != 0x0000000e) errors++;   // 14
  if(((uint32_t *) d)[ 3] != 0x00000014) errors++;   // 20
  if(((uint32_t *) d)[ 4] != 0x0000001a) errors++;   // 26
  if(((uint32_t *) d)[ 5] != 0x0000001e) errors++;   // 30
  if(((uint32_t *) d)[ 6] != 0x00000026) errors++;   // 38
  if(((uint32_t *) d)[ 7] != 0x0000002c) errors++;   // 44
  if(((uint32_t *) d)[ 8] != 0x0000002a) errors++;   // 42
  if(((uint32_t *) d)[ 9] != 0x0000002e) errors++;   // 46
  if(((uint32_t *) d)[10] != 0x0000003e) errors++;   // 62
  if(((uint32_t *) d)[11] != 0x00000044) errors++;   // 68
  if(((uint32_t *) d)[12] != 0x0000003a) errors++;   // 58
  if(((uint32_t *) d)[13] != 0x0000003e) errors++;   // 62
  if(((uint32_t *) d)[14] != 0x00000056) errors++;   // 86
  if(((uint32_t *) d)[15] != 0x0000005c) errors++;   // 92

  //TEST2 
  
  if(((uint32_t *) d)[ 16] != 0x00000005) errors++;   // 5
  if(((uint32_t *) d)[ 17] != 0x00000008) errors++;   // 8
  if(((uint32_t *) d)[ 18] != 0x00000003) errors++;   // 3
  if(((uint32_t *) d)[ 19] != 0x0000000b) errors++;   // 11
  if(((uint32_t *) d)[ 20] != 0x00000005) errors++;   // 5
  if(((uint32_t *) d)[ 21] != 0x00000006) errors++;   // 6
  if(((uint32_t *) d)[ 22] != 0x0000000e) errors++;   // 14
  if(((uint32_t *) d)[ 23] != 0x00000005) errors++;   // 5
  if(((uint32_t *) d)[ 24] != 0x0000000b) errors++;   // 11
  if(((uint32_t *) d)[ 25] != 0x00000003) errors++;   // 3
  if(((uint32_t *) d)[26] != 0x0000000b) errors++;   // 11
  if(((uint32_t *) d)[27] != 0x0000000d) errors++;   // 13
  if(((uint32_t *) d)[28] != 0x0000000b) errors++;   // 11
  if(((uint32_t *) d)[29] != 0x0000000c) errors++;   // 12
  if(((uint32_t *) d)[30] != 0x00000001) errors++;   // 1
  if(((uint32_t *) d)[31] != 0x00000017) errors++;   // 23 

 

  // return errors
  *(int *) 0x80000000 = errors;
  return errors;
}
