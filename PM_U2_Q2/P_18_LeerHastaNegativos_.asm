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



.code

	main18 PROC
	
		;L�gica del Programa

		ciclo:

		call readint ; eax
		cmp eax, 0
		jge ciclo
		


	    exit

	main18 ENDP
	
	END main18
