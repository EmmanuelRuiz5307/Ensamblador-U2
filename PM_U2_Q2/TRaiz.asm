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

 num REAL8 125.0 ; n�mero de entrada
.code

	main50 PROC
	
		;L�gica del Programa
	
		; Imprimir el n�mero de entrada
    fld num
    call WriteFloat
    call Crlf

    ; Calcular la ra�z cuadrada y mostrar el resultado
    fld num
    fsqrt
    call WriteFloat
    call Crlf

    ; Salir del programa
    call WaitMsg

		exit	
	
	main50 ENDP
	
	END main50
