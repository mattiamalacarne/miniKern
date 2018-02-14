#include <stddef.h>
#include <stdint.h>

#ifndef KERNEL_READ
#define KERNEL_READ 1
static inline void io_wait(void);
char getScancode();
char getchar();

#endif