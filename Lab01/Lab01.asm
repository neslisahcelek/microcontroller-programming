
name "lab-1"

org 100h      
mov cl, N       ; counter  
mov bx, 2000h   ; memory location to reg 
mov ds, bx      ; ds starting addres is 2000h 
mov si, 0
mov di, 1       ; value of array
mov ax, 0       ; sum

l:         
    mov [ds+si], di
    add ax, di 
    inc si 
    inc di      
    
loop l 
  
mov [ds+si], ax

ret
N db 5 
end





