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


msg1_14 db "Ingresa un n�mero: ",0 
msgPar_14 db "Es PAR ",0 
msg3_14 db "Los n�meros pares en el rango son: ", 0

;CONSTANTES

.code

	main73 PROC
	
		;L�gica del Programa
	; Solicitar al usuario un n�mero
	mov edx, offset msg1_14
	call writestring
	call crlf

	call readint ; Almacenar el n�mero ingresado por el usuario en eax

	; Mostrar los n�meros pares en el rango de 1 a n
	mov ecx, 1 ; Inicializar el contador en 1


whileloop:
	; Verificar si el n�mero actual es par
	mov ebx, 2
	mov edx, 0
	;mov eax, ecx
	div ebx ; eax/2 => cociente se va a eax y el residuo a edx

	cmp edx, 0 ; revisa si el residuo es 0
	jnz noPar ; si el n�mero no es par, saltar a noPar

	; Si el n�mero es par, mostrarlo
	call writeDec ; Mostrar el n�mero actual
	call crlf

	jmp salir

	noPar:
	inc ecx; ;INCREMENTA EN UNO
	cmp ecx , eax
	jle whileloop
	

	salir:
	exit	
	main73 ENDP
	
	END main73
