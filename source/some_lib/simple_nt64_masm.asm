.code

; In NT64 ABI, params/return are as follows:
;        rax              rcx    rdx      r8
; extern int simple_add(int a, int b, int *r)
PUBLIC simple_add
simple_add PROC
mov              eax, ecx
add              eax, edx ; result in RAX
mov   dword ptr [r8], eax ; store / deref
ret
simple_add ENDP
END
