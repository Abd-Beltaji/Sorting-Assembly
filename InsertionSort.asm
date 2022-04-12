; Insertion Sort using 8086 Assembly

.model small

.data
    arr db 24h, 41h, 30h, 12h, 47h
    len dw 5
    
.code
    main proc
        mov ax, @data
        mov ds, ax    
    
        mov di, 1 ; (i) outer loop counter
        
        outer:
            
            mov al, [arr + di] ; x = arr[i]
            mov si, di ; (j) inner loop counter
            dec si
            inner:
                cmp al, [arr + si]
                jae rest
                
                mov ah, [arr + si]
                mov [arr + si + 1], ah
                dec si
                
                jmp inner
        rest:
            mov arr[si + 1], al    
            inc di
            cmp di, len
            jne outer
            
    main endp
end