//
// Created by mattia on 08/02/18.
//
// Defines the functions to allow the kernel to print characters on the screen
//

#include "kernel_print.h"

int term_col = 0;
int term_row = 0;
// ---------------------------------------------------------------------

// Initialize the terminal with a black screen
void term_init()
{

    for (int col = 0; col < VGA_COLS; col ++)
    {
        for (int row = 0; row < VGA_ROWS; row ++)
        {

            const size_t index = (VGA_COLS * row) + col;
            vga_buffer[index] = ((uint16_t)term_color << 8) | ' ';
        }
    }
}

// This function write a single char on screen
void kernel_printc(char c)
{

    switch (c)
    {
        case '\n':
        {
            term_col = 0;
            term_row ++;
            break;
        }

        default:
        {
            const size_t index = (VGA_COLS * term_row) + term_col;
            vga_buffer[index] = ((uint16_t)term_color << 8) | c;
            term_col ++;
            break;
        }
    }

    if (term_col >= VGA_COLS)
    {
        term_col = 0;
        term_row ++;
    }


    if (term_row >= VGA_ROWS)
    {
        term_col = 0;
        term_row = 0;
    }
}

// This function write a string using kernel_printc
void kernel_print(const char* str)
{
    for (size_t i = 0; str[i] != '\0'; i ++)
        kernel_printc(str[i]);
}

