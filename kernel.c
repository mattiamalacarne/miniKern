#include "kernel/kernel_print.h"
#include "kernel/types.h"
#include "kernel/interrupt.h"
#include "kernel/kernel_read.h"


#if defined(__linux__)
#error "This code must be compiled with a cross-compiler"
#elif !defined(__i386__)
#error "This code must be compiled with an x86-elf compiler"
#endif



// This function is called by Start.s
void kernel_main()
{
    term_init();

    kernel_print("miniKern [OK!]\n");
    kernel_print("Welcome!!\n");


    if (are_interrupts_enabled()) {
        kernel_print("Interrupt enabled\n");
    } else {
        kernel_print("Interrupt not enabled\n");
    }


}