#include <stdint.h>

typedef struct Status8080 {    
    uint8_t    s:1;                     // sign
    uint8_t    z:1;                     // zero
    uint8_t    pad1:1;                  // unused  
    uint8_t    ac:1;                    // auxiliary carry  
    uint8_t    pad2:1;                  // unused  
    uint8_t    p:1;                     // parity
    uint8_t    pad3:1;                  // unused  
    uint8_t    cy:1;                    // carry 
} Status8080 ;