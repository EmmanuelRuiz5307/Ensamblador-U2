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

	main89 PROC
	
		;L�gica del Programa
	    
		mov eax , 10 
		call waitmsg ; DETIENE LA EJECUCION DEL PROBLEMA HASTA QUE PRESIONES OK
		call writeDec

		

		exit

		
		

	main89 ENDP
	
	END main89