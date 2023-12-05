.model small
.stack 100h
.data

    string db "hello"
    
    
.code 

    main proc
        
        mov ax, @data
        mov ds, ax
        
        mov si, offset string ; start offset address of string
        mov cx, 5 ; counting 5 times
        
        
        stackpush:
            
            mov bx, [si] ; letter 'h' is being stored to bx
            push bx ; push into the stack
            inc si ; increment source index (si)
            loop stackpush
            
        mov cx, 5
        
        stackpop:
            pop dx
            mov ah, 02h
            int 21h
            loop stackpop
            
    main endp 
    
end main 
          
Use Control + Shift + m to toggle the tab key moving focus. Alternatively, use esc then tab to move to the next interactive element on the page.
Editing Microprocessor/Assembly/code at main · 0xCD4/Microprocessor
