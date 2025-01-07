sum(int):
        mov     eax, 1
        cmp     edi, 1
        je      .LBB0_2
        lea     eax, [rdi - 1]
        lea     ecx, [rdi - 2]
        imul    eax, ecx
        lea     edx, [rdi - 3]
        imul    rdx, rcx
        shr     rdx
        add     eax, edi
        sub     eax, edx
        inc     eax
.LBB0_2:
        ret

possible_sum1(int):
        mov     eax, 1
        cmp     edi, 1
        je      .LBB1_2
        lea     eax, [rdi - 1]
        lea     ecx, [rdi - 2]
        imul    eax, ecx
        add     eax, edi
        add     edi, -3
        imul    rdi, rcx
        shr     rdi
        sub     eax, edi
        inc     eax
.LBB1_2:
        ret

possible_sum2(int):
        lea     ecx, [rdi + 1]
        imul    ecx, edi
        mov     eax, ecx
        shr     eax, 31
        add     eax, ecx
        sar     eax
        ret

possible_sum3(int):
        xor     eax, eax
        test    edi, edi
        lea     ecx, [rdi + rdi - 1]
        cmovg   ecx, eax
        lea     edx, [rdi - 2]
        cmovg   edx, edi
        lea     eax, [rdx + 1]
        imul    eax, edx
        shr     eax
        add     eax, ecx
        ret