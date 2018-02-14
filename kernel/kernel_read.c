//
// Created by mattia on 08/02/18.
//
#include "kernel_read.h"
// Waiting for an input
// Not ready to work!!
static inline void io_wait(void)
{
    /* TODO: This is probably fragile. */
    asm volatile ( "jmp 1f\n\t"
            "1:jmp 2f\n\t"
            "2:" );
}

char getScancode()
{
    while (!(inb(0x64) & 1));
    return inb(0x60);
}

char getchar() {
    char scancode[1];
    return scancode[getScancode()+1];
}