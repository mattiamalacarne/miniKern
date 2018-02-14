#include <stddef.h>
#include <stdint.h>
#include "types.h"

#ifndef INTERRUPTS
#define INTERRUPTS 1

extern inline boolean are_interrupts_enabled();
extern inline uint8_t inb(uint16_t port);


#endif