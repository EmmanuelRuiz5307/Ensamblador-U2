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

	main20 PROC
	
		;L�gica del Programa apartir de aqui
		  
		 mov ebx, 5

		cicloP:
		
		
		mov eax, 1; 
		ciclo:
		call writedec
		call crlf
		inc eax
		cmp eax, 10
		jle ciclo
		

		call crlf

		dec ebx
		cmp ebx, 0
		jg cicloP
	   
	   exit

	main20 ENDP
	
	END main20
