TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Apellido Nombre Integrante 1
;         Apellido Nombre Integrante 2

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables

var_1_2 dword 10d
var_2_2 dword 2d
.code

	main2 PROC
	
		;L�gica del Programa
		; add se rige por las mismas reestricciones que mov
		;en cuanto a las operandos!

		mov eax, var_1_2
		add eax, var_2_2
	
		
		exit	
	
	main2 ENDP
	
	END main2
