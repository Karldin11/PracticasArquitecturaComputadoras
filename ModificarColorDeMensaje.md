Modificar el programa mensaje utilizando diferentes colores de fondo y del texto.

1.- Texto blanco fondo azul.

```ASM
ideal
model tiny

dataseg
mensaje db 'Hola estamos probando los mensajes en pantalla',13,10,'$'

INCLUDE 'C:MACROS.ASM'
codeseg
  org 0100h

Inicio:
     LIMPIAPANTALLA
     POS_CUR 5,30

     MOV AH,06H
     XOR CX,CX
     XOR AL,AL
     MOV DX,184FH
     MOV BH,01FH
     INT 10H

     DES_MEN mensaje



     FIN
     end Inicio
```


3.- Texto rojo fondo azul.


4.- Texto negro, fondo blanco
