org 100h
#start=Emulation_Kit.exe#  

mov bl, 10   


;first num
mov al, a
div bl            
mov ah, 0     
mov si, ax
mov al, numbers[si]    

mov dx, 2030h
out dx, al

mov ax, 0


mov al, a
div bl
mov al, ah 
mov ah, 0
mov si, ax
mov al, numbers[si]
                    
mov dx, 2031h
out dx, al

mov ax, 0

;. 
mov al, numbers[10] 
mov dx, 2032h
out dx, al
   
   
;secondnum
mov al, b
div bl
mov ah, 0  
mov si, ax
mov al, numbers[si]

mov dx, 2033h
out dx, al

mov ax, 0 
   
   
mov al, b
div bl
mov al, ah
mov ah, 0
mov si, ax
mov al, numbers[si]

mov dx, 2034h
out dx, al

mov ax, 0   

;=
mov al, numbers[11]
mov dx, 2035h
out dx, al
    
    
;multiply
mov al, a
mov bl, b   
mul bl      

mov bl, 10  
div bl
mov ah, 0

mov si, ax
mov al, numbers[si]

mov dx, 2036h 
out dx, al

mov ax, 0   
     
     
mov al, a
mov bl, b   
mul bl    

mov bl, 10  
div bl

mov al, ah 
mov ah, 0
mov si, ax
mov al, numbers[si]

mov dx, 2037h
out dx, al   

mov ax, 0
         
           
ret 
a db 3
b db 5  
numbers DB	00111111b, 00000110b, 01011011b, 01001111b, 01100110b, 01101101b, 01111101b, 00000111b, 01111111b, 01101111b, 10000000b, 01001000b             
                ;0          ;1         ;2       ;3          ;4      ;5           ;6          ;7          ;8         ;9         ;.      ;=
	 