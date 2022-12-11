org 100h 

          
call store
call mult_store
ret 


proc store  
    mov [2000h], 3344h  
    mov [2002h], 1122h
    mov [2004h], 7788h
    mov [2006h], 5566h        
    ret
endp store 

proc mult_store      
    mov ax, [2000h]   
    mov bx, [2004h]
    mul bx   
    mov [2008h], ax
    mov [200Ah], dx
            
    mov ax, [2002h]   
    mov bx, [2004h] 
    mul bx
    add [200Ah], ax
    adc [200Ch], dx
    adc [200Eh], 0
    
    
    mov ax, [2000h]   
    mov bx, [2006h]
    mul bx 
    add [200Ah], ax 
    adc [200Ch], dx 
    adc [200Eh], 0
    
    mov ax, [2002h]   
    mov bx, [2006h]
    mul bx 
    add [200Ch], ax
    adc [200Eh], dx 
    adc [2010h], 0
            
    ret
endp mult_store


  
               


     

