ideal
model tiny

dataseg
numx db 30
numy db 5

mensaje db 'Hola estamos probando los mensajes en pantalla',13,10,'$'

INCLUDE 'C:MACROS.ASM'
codeseg
  org 0100h
  

Inicio:
;LIMPIAPANTALLA
     POS_CUR [numy],[numx]

     MOV AH,06H
     XOR CX,CX
     XOR AL,AL
     MOV DX,184FH
     MOV BH,01EH
     INT 10H

     DES_MEN mensaje
     

SENSA:
        
        MOV AH,01 ;sensa teclado
        INT 21H  ;tecla oprimida se guarda en al
        CMP AL, 13 ;si se oprime la tecla ENTER va a funcion restar
        JZ SAL1 ;  
        JMP SENSATAB ;
SAL1: JMP RESTA


SENSATAB:
        MOV AH,01 ;Sensa teclado
        INT 21H ;
        CMP AL, 27 ; si se oprime ESC debe salir
        JZ SAL2 ;
        JMP SENSATAB;
SAL2: JMP SALIDA


RESTA:
    MOV AL,[numx]
    SUB AL, 5
    MOV [numx], AL

    MOV AL,[numy]
    ADD AL, 3
    MOV [numy], AL

    JZ IMP ;   

IMP: JMP IMPMENSAJE

IMPMENSAJE:
     POS_CUR [numy],[numx]
     DES_MEN mensaje
     JMP SENSA;

SALIDA:
             FIN
     end Inicio
