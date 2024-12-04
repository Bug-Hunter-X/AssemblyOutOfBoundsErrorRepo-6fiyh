section .data
array1 dw 10, 20, 30, 40, 50
array2 dq 100, 200, 300, 400, 500
array1_size equ ($ - array1) / 2 ; Size of array1 in words
array2_size equ ($ - array2) / 8 ; Size of array2 in quadwords

section .text
    global _start

_start:
    ; Get index from somewhere (replace with your actual index calculation)
    mov ecx, 2 
    mov esi, 3

    ;Check array bounds
    cmp ecx, array1_size / 2 ; compare with max index for array 1
jge out_of_bounds_1
    cmp esi, array2_size / 8 ; compare with max index for array 2
jge out_of_bounds_2    

    mov eax, [array1+ecx*2] ; Access array1 element (safe)
    mov [array2+esi*8], eax ; Access array2 element (safe)
    jmp end

out_of_bounds_1:
    ; Handle out-of-bounds error for array1
    mov eax, 1 ; sys_exit
    xor ebx, ebx
    int 0x80

out_of_bounds_2:
    ; Handle out-of-bounds error for array2
    mov eax, 1 ; sys_exit
    xor ebx, ebx
    int 0x80

end:
    ; Exit program
    mov eax, 1 ; sys_exit
    xor ebx, ebx
    int 0x80