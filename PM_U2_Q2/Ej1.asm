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

menorA_ej6 db " es menor que x", 0


msj1_ej6 db "Ingresa el valor de X: ", 0


.code

	main29 PROC
	
		;L�gica del Programa
	    ;SOLICITAR EL VALOR DE X , PEDIR AL USUARIO INGRESAR TANTOS VALORES SEAN MENORES QUE X

		
		;MENSAJEEE
		mov edx, offset msj1_ej6
		call writestring
		call crlf	

		; !!!!EL VALOR DE X SE ALMACENA EN EAX!!!!!
		call readint 
		mov ebx , eax
		
		;Solo lee numeros negativos
		;mov ebx , 0
		ciclo:
		call readint ; LEEMOS DE NUEVO EAX , PERO LO ASIGNAMOS EN ebx 
		cmp eax,ebx
		jg ciclo

		
		call writedec
		menor:

		mov edx, offset menorA_ej6
		call writestring
		call crlf
	
	
	exit	
	main29 ENDP
	
	END main29
