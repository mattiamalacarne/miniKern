#include <stddef.h>
#include <stdint.h>

#if defined(__linux__)
#error "Devi usare un cross-compiler per compilare questo codice"
#elif !defined(__i386__)
#error "This code must be compiled with an x86-elf compiler"
#endif

// Scrivo all'indirizzo della memoria video per stapare i caratteri

volatile uint16_t* VGA_BUFFER = (uint16_t*)0xB8000;

// Definisco la dimensione dello spazio di scrittura

const int VGA_COLS = 80;
const int VGA_ROWS = 25;

// Definisco i punti in cui iniziare a mostrare il testo

int term_col = 0;
int term_row = 0;
uint8_t term_color = 0x0F; // Definisce il colore della schermata

// Questa funzione inizializza il terminale mostrato

void term_init() {

    // Pulisco il buffer
    for (int col = 0; col < VGA_COLS; col++) {
        for (int row = 0; row < VGA_ROWS; row++) {

            const size_t index = (VGA_COLS * row) + col;
            VGA_BUFFER[index] = ((uint16_t)term_color << 8) | ' ';

        }
    }

}

// Tramite questa funzione di stampa a video un carattere

void term_putc(char c) {

    // Controlli base sul carattere

    switch (c) {
        case '\n':
        {
            // Si tenta di andare a capo (azzero la colonna e scendo di una riga)
            term_col = 0;
            term_row++;
            break;
        }
        default:
        {
            // Caratteri normali vengono stampati a video
            const size_t index = (VGA_COLS * term_row) + term_col; // Calcolo l'indice del buffer
            VGA_BUFFER[index] = ((uint16_t)term_color << 8 | c);
            term_col++;
            break;
        }
    }

    // Arrivo all'ultimo spazio disponibile nella riga o nella colonna

    if (term_col >= VGA_COLS) {
        term_col = 0;
        term_row++;
    }

    if (term_row >= VGA_ROWS) {
        term_row = 0;
        term_col = 0;
    }
}

// Stampo una stringa

void term_print(const char* str) {

    for (size_t i = 0; str[i] != '\0'; i++) {
        term_putc(str[i]);
    }

}

// Dichiaro il kernel

void kernel_main() {

    term_init();
    term_print("minKern: Kernel caricato!\0");
    term_print("Benvenuto!\0");

}
