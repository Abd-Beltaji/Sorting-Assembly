; Selection Sort using 8086 Assembly

.model small

.data
    arr db 24h, 41h, 30h, 12h, 47h
    len dw 5
    
.code
    main proc
        mov ax, @data
        mov ds, ax    
    
        mov di, 0 ; (j) outer loop counter
        
        outer:
             mov bx, di ; iMin
             
             mov si, di ; (i) inner loop counter
             inc si
             inner: 
                  mov dl, [arr + si]
                  cmp dl, [arr + bx]
                  jae innerRest
                  mov bx, si
                  innerRest:
                    inc si
                    cmp si, len
                    jne inner
            
            mov al, [arr + di]
            mov ah, [arr + bx]
            
            mov [arr + bx], al
            mov [arr + di], ah
                
            inc di
            mov bx, len
            dec bx
            cmp di, bx
            jne outer
            
    main endp
end