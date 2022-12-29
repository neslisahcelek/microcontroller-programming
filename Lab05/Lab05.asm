org 100h

#start=Emulation_Kit.exe# 

start:
mov di, 0  
mov si, 0
mov bx, 0 

dot:
mov dx, 2000h  
add dx, di 
mov al, dots[bx][si]
out dx, al

inc si
inc di

cmp dx, 2027h
je start 

cmp si, 5
je big 

loop dot    

big:
add bx, 5 
mov si, 0 
jmp dot


ret
dots DB	01111111b, 00000100b, 00001000b, 00010000b, 01111111b  ; N
	 DB	01111111b, 01001001b, 01001001b, 01001001b, 01000001b  ; E	
	 DB	00100110b, 01001001b, 01001001b, 01001001b, 00110010b  ; S
	 DB	01111111b, 01000000b, 01000000b, 01000000b, 01000000b  ; L     
	 DB	00000000b, 00000000b, 01111101b, 00000000b, 00000000b  ; I
	 DB 00110110b, 01001001b, 01001001b, 01001001b, 00110110b  ; 8
	 DB 00110110b, 01001001b, 01001001b, 01001001b, 00110110b  ; 8
	 DB 00110110b, 01001001b, 01001001b, 01001001b, 00110110b  ; 8 
	  
	   
	 DB	01000010b, 01001001b, 01001001b, 01001001b, 00110110b  ; B
	 DB	00111110b, 01000001b, 01000001b, 01000001b, 00100010b  ; C
	 DB	01111111b, 01000001b, 01000001b, 00100010b, 00011100b  ; D
	
	 DB	01111111b, 00001001b, 00001001b, 00001001b, 00000001b  ; F
	 DB	00111110b, 01000001b, 01001001b, 01001001b, 01111010b  ; G
	 DB	01111111b, 00001000b, 00001000b, 00001000b, 01111111b  ; H