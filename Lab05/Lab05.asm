org 100h
#start=Emulation_Kit.exe#

mov di, 0

mainloop:
    mov dx, 2000h
    add dx, di    ;2000,2001,2002
    
    mov bx, 0
    
print:
    mov si, 0
    mov cx, 5
    
    cmp dx, 2027h 
    jle next 
        
MOV CX, 0FFH
WAIT:
LOOP WAIT  
    
    mov dx, 2000h ;son bosluga geldiyse
    
next:
    mov al, dots[bx][si]
    out dx, al 
    inc si
    inc dx       
    
    cmp si, 5
    loopne next
    
    add bx, 5         ;5,10,15
    cmp bx, 40        ;8 alan tamamlaninca
    jl print  
    
    add di, 5
    
loop mainloop
    
    
    


ret
dots DB	01111111b, 00000100b, 00001000b, 00010000b, 01111111b  ; N
	 DB	01111111b, 01001001b, 01001001b, 01001001b, 01000001b  ; E	 
	 DB	01000010b, 01001001b, 01001001b, 01001001b, 00110110b  ; B
	 DB	00111110b, 01000001b, 01000001b, 01000001b, 00100010b  ; C
	 DB	01111111b, 01000001b, 01000001b, 00100010b, 00011100b  ; D
	
	 DB	01111111b, 00001001b, 00001001b, 00001001b, 00000001b  ; F
	 DB	00111110b, 01000001b, 01001001b, 01001001b, 01111010b  ; G
	 DB	01111111b, 00001000b, 00001000b, 00001000b, 01111111b  ; H