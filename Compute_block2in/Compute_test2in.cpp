
#include <iostream>
#include "Compute2in.h"

#include <cstdio>
 
// Standalone test of ONLY the COMPUTE nest from cont(). No streams, no handshake
// -- just: does the loop nest compute a correct 4x5 * 5x4 matmul with the index
// expressions I inferred? It compares the nest against the textbook triple-loop.
// If they match, the indexing (buffer_a[oa+s], buffer_b[ob+s*4], out (oa/5)*4+ob)
// is a valid matmul. If a transpose/layout bug exists, the numbers diverge.
 
 
int main() {
    res_t buffer_a[20];   // A, 4x5 row-major:  A[r][k] = buffer_a[r*5 + k]
    res_t buffer_b[20];   // B, 5x4 row-major:  B[k][c] = buffer_b[k*4 + c]
    res_t buffer[16];     // C, 4x4 row-major
 
    // Non-trivial, asymmetric fills so a wrong index (e.g. a transpose) shows up.
    for (int i = 0; i < 20; i++) buffer_a[i] = i + 1;            // 1..20
    for (int i = 0; i < 20; i++) buffer_b[i] = (i * 3) % 11 + 1; // varied pattern
 
    // ---------- the EXACT COMPUTE nest from cont() ----------
    for (int oa = 0; oa < 20; oa += 5) {
        for (int ob = 0; ob < 4; ob++) {
            res_t sum = 0;
            for (int s = 0; s < 5; s++)
                sum += buffer_a[oa + s] * buffer_b[ob + s*4];
            buffer[(oa/5)*4 + ob] = sum;
        }
    }
 
    // ---------- reference: canonical 4x5 * 5x4 ----------
    res_t ref[16];
    for (int r = 0; r < 4; r++)
        for (int c = 0; c < 4; c++) {
            res_t sum = 0;
            for (int k = 0; k < 5; k++)
                sum += buffer_a[r*5 + k] * buffer_b[k*4 + c];
            ref[r*4 + c] = sum;
        }
 
    // ---------- compare ----------
    int errors = 0;
    for (int i = 0; i < 16; i++) {
        if (buffer[i] != ref[i]) {
            printf("MISMATCH C[%d][%d]: nest=%d  ref=%d\n",
                   i/4, i%4, (int)buffer[i], (int)ref[i]);
            errors++;
        }
    }
 
    printf("\nResult matrix (nest):\n");
    for (int r = 0; r < 4; r++) {
        for (int c = 0; c < 4; c++) printf("%6d ", (int)buffer[r*4 + c]);
        printf("\n");
    }
 
    if (!errors) printf("\nPASS: COMPUTE nest matches reference 4x5*5x4\n");
    else         printf("\nFAIL: %d mismatch(es) -- index/layout bug in the nest\n", errors);
    return errors;
}

   
