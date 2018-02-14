OUT_DIR = compiled
HOME = /home/mattia

$(OUT_DIR)/mykernel.elf : $(OUT_DIR)/start.o $(OUT_DIR)/kernel.o $(OUT_DIR)/kernel_print.o $(OUT_DIR)/kernel_read.o $(OUT_DIR)/interrupt.o
	$(HOME)/opt/cross/bin/i686-elf-gcc -ffreestanding -nostdlib -g -T linker.ld $(OUT_DIR)/start.o $(OUT_DIR)/kernel.o $(OUT_DIR)/kernel_print.o $(OUT_DIR)/interrupt.o $(OUT_DIR)/kernel_read.o -o $(OUT_DIR)/mykernel.elf -lgcc
	
$(OUT_DIR)/start.o : start.s
	$(HOME)/opt/cross/bin/i686-elf-gcc -std=gnu99 -ffreestanding -g -c start.s -o $(OUT_DIR)/start.o

$(OUT_DIR)/kernel.o : kernel.c
	$(HOME)/opt/cross/bin/i686-elf-gcc -std=gnu99 -ffreestanding -g -c kernel.c -o $(OUT_DIR)/kernel.o

$(OUT_DIR)/kernel_print.o : kernel/kernel_print.c
	$(HOME)/opt/cross/bin/i686-elf-gcc -std=gnu99 -ffreestanding -g -c kernel/kernel_print.c -o $(OUT_DIR)/kernel_print.o

$(OUT_DIR)/kernel_read.o : kernel/kernel_read.c
	$(HOME)/opt/cross/bin/i686-elf-gcc -std=gnu99 -ffreestanding -g -c kernel/kernel_read.c -o $(OUT_DIR)/kernel_read.o

$(OUT_DIR)/interrupt.o : kernel/interrupt.c
	$(HOME)/opt/cross/bin/i686-elf-gcc -std=gnu99 -ffreestanding -g -c kernel/interrupt.c -o $(OUT_DIR)/interrupt.o


