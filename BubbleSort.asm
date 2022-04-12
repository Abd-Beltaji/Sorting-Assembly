; Bubble sort using 8086 assembly
.model small

.data
    arr db 24h, 41h, 30h, 12h, 47h
    len dw 5

.code
    main proc
        mov ax, @data
        mov ds, ax    
        
        mov ax, 0 ;outer loop
        
        outer:
            mov di, 0
            inner:
                mov bl, [arr + di]    ;arr[j]
                mov bh, [arr + di + 1] ;arr[j+1]
                cmp bl, bh
                jbe innerRest
                mov [arr + di], bh
                mov [arr + di + 1], bl
                innerRest:
                    mov si, len - 1
                    sub si, ax
                    inc di
                    cmp di,si
                    jne inner
              inc ax
              cmp ax, len - 1
              JNE outer
              ret
    main endp

end