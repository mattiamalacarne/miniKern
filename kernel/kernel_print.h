#include <stddef.h>
#include <stdint.h>

#ifndef KERNEL_PRINT
#define KERNEL_PRINT
static volatile uint16_t* vga_buffer = (uint16_t*)0xB8000;

// Default size of VGA textmode
static const int VGA_COLS = 80;
static const int VGA_ROWS = 25;

static uint8_t term_color = 0x0F; // Black background, White foreground

void term_init();
void kernel_printc(char c);
void kernel_print(const char* str);

#endif