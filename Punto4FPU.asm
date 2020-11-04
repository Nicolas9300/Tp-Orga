%include "io.inc"
extern printf
section .data
v dq 10.5,15.0,2.5,1.5
suma dq 0
format db "La suma total es: %.2f",10,0
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    push ebp
    mov ebp, esp; for correct debugging
    
    ;write your code here
    xor eax, eax
    mov eax,4 ;length del array
    mov ecx,0
    startciclo:
    cmp al,0
    jz terminar
    
    ciclo:
    fld qword[v+ecx]
    fld qword[suma]
    fadd 
    fstp qword[suma]
    add ecx, 8
    sub eax,1
    jmp startciclo
    
    terminar:
    push dword[suma+4]
    push dword[suma]
    push format
    call printf
    add esp, 12
    
    mov ebp,esp
    pop ebp
    
    ret