bits 64
section .text

; In AMD64 SYSV ABI, params/return are as follows:
;        rax              rdi    rsi     rdx
; extern int simple_add(int a, int b, int *r)
global simple_add
simple_add:
	mov eax, edi
	add eax, esi ; result in RAX
	mov [rdx], eax ; store / deref
	ret
