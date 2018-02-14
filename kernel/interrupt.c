//
// Created by mattia on 08/02/18.
//
// Interrupt definition and check
//
#include "interrupt.h"
// Check if interrupt are enabled

extern inline boolean are_interrupts_enabled()
{
    unsigned long flags;
    asm volatile ( "pushf\n\t"
            "pop %0"
    : "=g"(flags) );
    return flags & (1 << 9);
}

extern inline uint8_t inb(uint16_t port)
{
    uint8_t ret;
    asm volatile ( "inb %1, %0"
    : "=a"(ret)
    : "Nd"(port) );
    return ret;
}