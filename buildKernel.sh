#!/bin/bash

# Questo scipt è per il testing iniziale, verrà sostituiyo da make

OUT_DIR="compiled"

$HOME/opt/cross/bin/i686-elf-gcc -std=gnu99 -ffreestanding -g -c start.s -o $OUT_DIR/start.o
$HOME/opt/cross/bin/i686-elf-gcc -std=gnu99 -ffreestanding -g -c kernel.c -o $OUT_DIR/kernel.o
$HOME/opt/cross/bin/i686-elf-gcc -ffreestanding -nostdlib -g -T linker.ld $OUT_DIR/start.o $OUT_DIR/kernel.o -o $OUT_DIR/mykernel.elf -lgcc

echo "Kernel compilato con successo!"
echo "Per avviare in qemu: qemu-system-i386 -kernel $OUT_DIR/mykernel.elf"