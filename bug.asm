mov eax, [ebx+ecx*4] ; This line is problematic if ecx is too large and causes an array out of bound error. 
mov [edi+esi*8], eax ; This line is problematic if esi is too large and causes an array out of bound error.