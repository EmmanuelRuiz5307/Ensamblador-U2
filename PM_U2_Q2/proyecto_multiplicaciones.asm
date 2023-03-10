TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Luna Sanchez Juan Pablo.
;         Ruiz Garcia Emmanuel Alejandro.

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables
msg1 db "Ingrese un numero: ",0
msg2 db " x ",0
msg3 db " = ",0
msg4 db "Respuesta: ",0
msg5 db "�Correcto!",0
msg6 db "Incorrecto, intente nuevamente.",0
msg7 db "se acabo el juego ya se te acabaron las vidas:(",0
num DWORD 0
resultado DWORD 0d
respuesta DWORD 0d
vidas DWORD 5d

.code
main107 PROC
	
	; L�gica del Programa
	mov edx, OFFSET msg1 ; Imprime el mensaje pidiendo el n�mero
    call WriteString
    call ReadInt ; Lee el n�mero ingresado por el usuario
    mov num, eax ; Guarda el n�mero en la variable num
    
    mov ecx, 1 ; Inicia el contador de la tabla de multiplicar en 1

mientras:
    mov eax, num ; Multiplica el n�mero ingresado por el contador
    mul ecx
    mov resultado, eax ; Guarda el resultado de la multiplicaci�n en la variable resultado
    
    mov eax, num ; Imprime el n�mero ingresado
    call WriteDec
    mov edx, OFFSET msg2 ; Imprime la "x"
    call WriteString
    mov eax, ecx ; Imprime el contador actual
    call WriteDec
    mov edx, OFFSET msg3 ; Imprime el "="
    call WriteString
    
    mov edx, OFFSET msg4 ; Pide al usuario que ingrese la respuesta
    call WriteString
    call ReadInt ; Lee la respuesta ingresada por el usuario se guarda en eax

    cmp eax, resultado
    je correcto
    jne incorrecto

    correcto:
    add ecx, 1 ; Incrementa el contador
    cmp ecx, 11 ; Compara el contador con 11 (10 veces)
    jne mientras ; Si el contador es menor a 11, repite el ciclo
    jmp salir

    incorrecto:
    mov edx, OFFSET msg6 ;
    call WriteString
    call crlf
    dec vidas
    mov eax , vidas
    call writedec
    call crlf
    cmp vidas , 0
    je salir

    jne mientras ;  Si el contador es menor a 11, repite el ciclo
  
    salir:
    mov edx, OFFSET msg7 ;
    call WriteString
    exit
   
     
	
main107 ENDP
END main107