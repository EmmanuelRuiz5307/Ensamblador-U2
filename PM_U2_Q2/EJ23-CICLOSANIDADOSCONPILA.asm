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

	main83 PROC
	
		;L�gica del Programa
	    
		call readint ; eax = n
		
		ciclo1:
		  push eax
	      mov eax,1
		  ciclo2:
		  call writedec
		  call crlf
		  inc eax
		  cmp eax, 10
		  jle ciclo2
		  call crlf
		  pop eax ; n
		  dec eax
		  cmp eax, 0
		  jg ciclo1



		

		exit

		
		

	main83 ENDP
	
	END main83