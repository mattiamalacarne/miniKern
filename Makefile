OUT_DIR = compiled
HOME = /home/mattia

$(OUT_DIR)/mykernel.elf : $(OUT_DIR)/start.o $(OUT_DIR)/kernel.o
	# Compilo il kernel
	$(HOME)/opt/cross/bin/i686-elf-gcc -ffreestanding -nostdlib -g -T linker.ld $(OUT_DIR)/start.o $(OUT_DIR)/kernel.o -o $(OUT_DIR)/mykernel.elf -lgcc
	
$(OUT_DIR)/start.o : start.s
	$(HOME)/opt/cross/bin/i686-elf-gcc -std=gnu99 -ffreestanding -g -c start.s -o $(OUT_DIR)/start.o

$(OUT_DIR)/kernel.o : kernel.c
	$(HOME)/opt/cross/bin/i686-elf-gcc -std=gnu99 -ffreestanding -g -c kernel.c -o $(OUT_DIR)/kernel.o


