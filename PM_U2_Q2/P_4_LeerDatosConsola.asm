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

var_1_2 dword 10d
var_2_2 dword 2d
.code

	main4 PROC
	
		;L�gica del Programa

		call readint; valor ingresado por consola
		; y lo almnacena en eax

		call writeint; echo para comprobar el contenido de eax
		
	
		
		exit	
	
	main4 ENDP
	
	END main4
