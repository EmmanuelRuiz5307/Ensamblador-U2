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


msg1_14 db "Ingresa un n�mero: ",0 


;CONSTANTES

.code

	main94 PROC
	
	;L�gica del Programa

	; Solicitar al usuario un n�mero
	mov edx, offset msg1_14
	call writestring
	call crlf

	call readint ; Almacenar el n�mero ingresado por el usuario en eax

	mov ebx , eax 

	mov eax , 2
	mov edx , 0 
	call crlf

	loopoo:
	call writedec
	call crlf
	add eax , 2
	inc edx
	cmp edx , ebx
	jl loopoo

	exit	
	main94 ENDP
	
	END main94
