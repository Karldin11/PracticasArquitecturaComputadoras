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


2.- Texto rojo fondo azul.
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
     MOV BH,014H
     INT 10H

     DES_MEN mensaje



     FIN
     end Inicio
```

3.- Texto negro, fondo blanco

Lo intente de la siguiente manera pero no funciona ya que el fondo solo puede alojar 3 bits y el fondo blanco necesita 4 bits y si se hace así la pantalla parpadea y se queda color gris.

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
     MOV BH,0F0H
     INT 10H

     DES_MEN mensaje



     FIN
     end Inicio
```
Por lo  tanto mejor deje el fondo en color gris.
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
     MOV BH,070H
     INT 10H

     DES_MEN mensaje



     FIN
     end Inicio
```
