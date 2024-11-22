default:
	riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 arrsum.c -o arrsum.elf && \
	riscv64-unknown-elf-objdump -D arrsum.elf > arrsum.dump
x86:
	gcc arrsum.c -o arrsum