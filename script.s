.intel_syntax noprefix
.globl _start

.section .text

_start:
   mov rax, 1
   mov rdi, 1
   lea rsi, [rip+helloworld]
   mov rdx, 11
   syscall
   mov rax, 60
   mov rdi, 0
   syscall

.section .data

helloworld:
   .string "Hello World\n"
