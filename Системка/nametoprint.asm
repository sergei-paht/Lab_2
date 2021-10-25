name "Mikhail_to_printer"

org 100h

jmp start
msg db "M", 0Ah, 0Dh        
 db "I", 0Ah, 0Dh
 db "K", 0Ah, 0Dh
 db "H", 0Ah, 0Dh
 db "A", 0Ah, 0Dh
 db "I", 0Ah, 0Dh
 db "L", 0Ah, 0Dh
   
    
msg_end db 0
msg2 db "press any key to eject the page.$"

start:
    mov dl, 12      ; form feed code. new page.
    mov ah, 5
    int 21h


    mov si, offset msg
    mov cx, offset msg_end - offset msg
print:
    mov dl, [si]
    mov ah, 5       ; MS-DOS print function.
    int 21h
    inc si	        ; next char.
    loop print
   
    mov dx, offset msg2
    mov ah, 9
    int 21h
   
    mov ax, 0       ; wait for any key...
    int 16h

    mov dl, 12      ; form feed code. page out!
    mov ah, 5
    int 21h
    
ret