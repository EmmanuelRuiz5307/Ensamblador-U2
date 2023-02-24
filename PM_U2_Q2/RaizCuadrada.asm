TITLE Calculo de Raiz Cuadrada usando Irvine32

INCLUDE Irvine32.inc

.data
    num REAL8 125 ; n�mero de entrada

.code
main50 PROC
    ; Imprimir el n�mero de entrada
    fld num
    call WriteFloat
    call Crlf

    ; Calcular la ra�z cuadrada y mostrar el resultado
    fld num
    fsqrt
    call WriteFloat
    call Crlf

    ; Salir del programa
    call WaitMsg
    exit
main50 ENDP
END main50
