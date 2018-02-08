#include <stddef.h>
#include <stdint.h>


#if defined(__linux__)
#error "This code must be compiled with a cross-compiler"
#elif !defined(__i386__)
#error "This code must be compiled with an x86-elf compiler"
#endif

volatile uint16_t* vga_buffer = (uint16_t*)0xB8000;

// Default size of VGA Textmode buffer
// N.B. This code will be written in a library
const int VGA_COLS = 80;
const int VGA_ROWS = 25;

int term_col = 0;
int term_row = 0;
uint8_t term_color = 0x0F; // Black background, White foreground
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
// N.B. This code will be written in a library
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



// This is our kernel's main function
void kernel_main()
{

    term_init();

    kernel_print("miniKern mattia [OK!]\n");
    kernel_print("Welcome!!\n");
}