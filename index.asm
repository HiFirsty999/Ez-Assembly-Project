;Using x86

section .data
  txt db "Hello, world!", 0xa
  txtlen equ $ - txt
  
section .text
  global _start
  
_start:
  JMP _idk

  _idk:
    mov eax, 4
    mov ebx, 1
  
    mov ecx, txt
    mov edx, txtlen
  
  int 0x80
  
  mov eax, 1
  mov ebx, 0
  
  int 0x80
