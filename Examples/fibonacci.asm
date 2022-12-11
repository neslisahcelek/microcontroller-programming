name fibonacci
org 100h

mov di,  1     ;index of array
sub n, 2
mov cl, n
mov ch, 0

;arr[di]= arr[di-2]
l:            
inc di
mov al, arr[di-1]
add al, arr[di-2]
mov arr[di], al
loop l


ret
N db 20 
arr db n dup(1)