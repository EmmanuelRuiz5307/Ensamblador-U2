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


msj1_et9 db "Ingresa el consumo Kwh: ", 0
msj2_et9 db "Ingresa la tarifa Kwh: ", 0
msj3_et9 db "Ingresa la tarifa base: ", 0

totalPago_1_2 dword 0d

.code

	main40 PROC
	;mov totalPago_1_2 , ebx
		;add eax , var_1_2 eax = eax + variable
		;L�gica del Programa

		;******MENSAJE 1******
	    mov edx, offset msj1_et9
		call writestring
		call crlf 
		call readint ; Leemos eax = 300

		
		;******MENSAJE 2******
	    mov edx, offset msj2_et9
		call writestring
		call crlf 
		mov ebx , eax 
		call readint ; Leemos eax

		mul ebx; HASTA ESTE PUNTO ESTA ALMACENADO 1500 estamos bien
		;call writeint
		
		;******MENSAJE 3******
	    mov edx, offset msj3_et9
		call writestring
		call crlf 
		mov ebx , eax
		call readint ; Leemos eax =50
		add eax , ebx
		
		call writeint ;MOSTRAMOS LO QUE CONTIENE EAX
	exit	
	main40 ENDP
	
	END main40
