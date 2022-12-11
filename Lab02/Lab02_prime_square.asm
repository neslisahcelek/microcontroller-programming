name mylab02PrimeandSquare

org 100h

mov bl, 2
mov cx, number
sub cx, 2     ;0 and number 

prime:
mov ax, number
div bl   
cmp ah, 0     ;if dividend=0  
jz s          ;if not prime, maybe square
 
inc bl   
loop prime
   
inc isPrime   ;if not dividible 
ret           ;if prime, not square

s:  
mov ax, number
mov bh, 1

mov bl, 2  
div bl
mov cx, ax ;number/2 
 
scontrol: 
mov dx, number  
 
cmp dx, 1  ;if number is 1
je square  
             
inc bh 
mov al, bh
mov bl, bh
mul bl
cmp ax,dx ;bolen sayinin kendisiyle carpimi numbersa 
je square     ;its square
  
loop  scontrol 
ret
       
square:
inc isSquare 
ret

number dw 10
isPrime db 0
isSquare db 0
