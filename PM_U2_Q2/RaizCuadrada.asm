TITLE Calculo de Raiz Cuadrada usando Irvine32

INCLUDE Irvine32.inc

.data
    num REAL8 125 ; número de entrada

.code
main50 PROC
    ; Imprimir el número de entrada
    fld num
    call WriteFloat
    call Crlf

    ; Calcular la raíz cuadrada y mostrar el resultado
    fld num
    fsqrt
    call WriteFloat
    call Crlf

    ; Salir del programa
    call WaitMsg
    exit
main50 ENDP
END main50
