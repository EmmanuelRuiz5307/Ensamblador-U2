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



.code

	main31 PROC
	
		;L�gica del Programa

		;**DESCRIPCION****
		;SABER LA EDAD DE LA PERSONA
		;******MENSAJE 1******
	    mov edx, offset msj1_ej7 
		call writestring
		call crlf 
		call readint ; Leemos eax
		
		; eax  ebx  ecx  edx
		; 0	   0	0   msj1
		;2023  0	0	msj1
		;2023  0	0	msj2
	

		;*****MENSAJE 2*****
		mov edx, offset msj2_ej7
		call writestring
		call crlf 
					 ; <---
		mov ebx , eax ; Movemos el a�o a ebx y tendremos libre ebx
		; eax  ebx  ecx  edx
		; 0	   0	0   msj1
		;2023  0	0	msj1
		;2023  0	0	msj2
		; 0   2023  0   msj2
		;
		;
		call readint ;LEEMOS EAX 
		
		; eax  ebx  ecx  edx
		; 0	   0	0   msj1
		;2023  0	0	msj1
		;2023  0	0	msj2
		; 0   2023  0   msj2
		;2001 2023  0   N/A
		;

					  ; 2001(NO ES LO QUE PARECE) = 2001 - 2023
		sub eax , ebx ; EAX = EAX - EBX

		; eax  ebx  ecx  edx
		; 0	   0	0   msj1
		;2023  0	0	msj1
		;2023  0	0	msj2
		; 0   2023  0   msj2
		;2001 2023  0   N/A
		;22	  0     0   N/A
		

		call writeint ; muestra el 22
	exit	
	main31 ENDP
	
	END main31
