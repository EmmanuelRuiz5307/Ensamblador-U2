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



var1 dword 100d
.code

	main84 PROC
	
		;L�gica del Programa
	    
		mov eax, 65
		call writechar ; A
		call crlf



		

		exit

		
		

	main84 ENDP
	
	END main84