org 100h 
 
MOV CX, 38
LEA SI, MESSAGE
MOV AH, 0Eh

CMP N, 14
JB GO  

CMP N, 26
JA GO  
       

mov array[1], 1

mov di, 2
mov si, 1
sub N, 2 
mov cl, N

l:
inc di ;n
inc si ;index

mov bl, 2  
mov ax, di
div bl
cmp ah, 0
je even  

mov al,array[si-1]  ;if odd
sub al, array[si-2]
mov array[si], al  
cmp cl, 0
je exit
loop l

even: 
mov al,array[si-1] 
add al, array[si-2]
mov array[si], al  
jmp l 
 
GO:
LODSB   ;stringi memorye yukle
INT 10h
loop GO

exit:
ret 
MESSAGE DB 'Please enter a value between 14 and 26', 0
N db 16  
array db N dup(0)