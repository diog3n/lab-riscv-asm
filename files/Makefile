default:
	riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 arrsum.c -o arrsum.elf && \
	riscv64-unknown-elf-objdump -D arrsum.elf > arrsum.dump && rm arrsum.elf
x86:
	gcc arrsum.c -o arrsum