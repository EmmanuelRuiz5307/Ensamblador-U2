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
var1 dword 12
; �rea de Declaraci�n de Variables

.code
	main1 PROC
	
		;L�gica del Programa
		;destino/origen = {(variables) , requisitos , inmediatos}

;prueba de inmediato a memoria

mov var1 , 7 ; var1 = 7

;prueba de inmediato a registro
mov eax , 24 ; eax = 24
;prueba de registro a memoria
mov var1 , eax ; var1 = eax
;prueba de memoria registro
mov ebx , var1 ; ebx = var1
;prueba de registro a registro
mov ecx , ebx ; ecx = ebx
		
		exit	
	
	main1 ENDP
	
	END main1
