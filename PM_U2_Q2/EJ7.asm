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


msj1_ej7 db "Ingrese el a�o actual", 0
msj2_ej7 db "Ingrese su a�o de nacimiento", 0
var1_6 dword 1d


.code

	main30 PROC
	
		;L�gica del Programa

		;**DESCRIPCION****
		;SABER LA EDAD DE LA PERSONA
		;******MENSAJE 1******
	    mov edx, offset msj1_ej7 
		call writestring
		call crlf 
		call readint ; Leemos eax
		
		
		;*****MENSAJE 2*****
		mov edx, offset msj2_ej7
		call writestring
		call crlf 

		mov ebx , eax ; Movemos el a�o a ebx y tendremos libre ebx
		call readint ;LEEMOS EAX 
		
		sub eax , ebx

		call writeint
		
	






	exit	
	main30 ENDP
	
	END main30
