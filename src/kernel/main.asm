org 0x7C00
bits 16;puts the cpu in 16 bit real mode






start:
    jmp main
puts:
    ;save registers to modify
    push si
    push ax

.loop:
    lodsb;loads next character in al
    or al, al; verifies if next char is null
    jz .done

    mov ah, 0x0e;calls bios interupt
    mov bh, 0
    int 0x10

    jmp .loop

.done:
    pop ax
    pop si
    ret
main:
    
    ;data segement setup
    mov ax, 0;can't write directly to ds/es
    mov ds, ax
    mov es, ax

    ;setup stack
    mov ss, ax
    mov sp, 0x7C00   ;stack grows downwards from where it's loaded in mem
    

    ;print msg
    mov si, msg_hello
    call puts 



    hlt;halts the cpu execution
.halt:
    jmp .halt;loops the execution back to the halt statement


msg_hello: db 'Hello world!', 0



times 510-($-$$) db 0;calculates the total space of the program
dw 0AA55h; end of program