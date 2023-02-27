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


msj1_ejt1 db "Cuantos numeros deseas generar?: ", 0

;CONSTANTES

.code

	main72 PROC
	
		;L�gica del Programa
		
		;******MENSAJE 1******
	    mov edx, offset msj1_ejt1
		call writestring
		call crlf 
		call readint ; Leemos eax (a)

		mov ecx , eax   ; establece el n�mero de iteraciones
		mov eax, 0       ; inicializa el primer n�mero de Fibonacci
        mov ebx, 1       ; inicializa el segundo n�mero de Fibonacci

		for_loop:
	    call WriteDec    ; imprime el valor de eax en la consola
		call Crlf        ; inserta un salto de l�nea en la consola

	     add eax, ebx     ; calcula el siguiente n�mero de Fibonacci
         xchg eax, ebx    ; intercambia los registros eax y ebx
         loop for_loop   

	exit	
	main72 ENDP
	
	END main72