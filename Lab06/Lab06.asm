org 100h
#start=Emulation_Kit.exe#

inf:
mov ah, 2ch  ;get time
INT 21h      ;ch=hour, cl=min, bh=sec
mov bh, dh

mov ax, 0
mov bl, 10

;hour
mov al,ch
div bl
mov dx, 2030h   
mov ah, 0
mov si, ax
mov al, numbers[si]
out dx, al
mov ax, 0

mov al, ch
div bl
mov al, ah
mov dx, 2031h
mov ah, 0
mov si, ax    
mov al, numbers[si]
out dx, al
mov ax, 0       

;-
mov dx, 2032h
mov ah, 0
mov si, ax    
mov al, numbers[10]
out dx, al
mov ax, 0
            
;min
mov al, cl
div bl
mov dx, 2033h   
mov ah, 0
mov si, ax
mov al, numbers[si]
out dx, al
mov ax, 0

mov al, cl
div bl
mov al, ah
mov dx, 2034h
mov ah, 0
mov si, ax    
mov al, numbers[si]
out dx, al
mov ax, 0 

;-
mov dx, 2035h
mov ah, 0
mov si, ax    
mov al, numbers[10]
out dx, al
mov ax, 0   

;sec
mov al, bh
div bl
mov dx, 2036h   
mov ah, 0
mov si, ax
mov al, numbers[si]
out dx, al
mov ax, 0
 
mov al, bh
div bl
mov al, ah
mov dx, 2037h
mov ah, 0
mov si, ax    
mov al, numbers[si]
out dx, al
mov ax, 0   

loop inf
            
    
           
ret   
numbers DB	00111111b, 00000110b, 01011011b, 01001111b, 01100110b, 01101101b, 01111101b, 00000111b, 01111111b, 01101111b, 01000000b  
                ;0         ;1        ;2          ;3      ;4            ;5        ;6          ;7          ;8        ;9       ;-
	 