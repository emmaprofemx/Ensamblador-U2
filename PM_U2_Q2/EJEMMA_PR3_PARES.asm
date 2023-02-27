TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Luna Sanchez Juan Pablo.
;         Ruiz Garcia Emmanuel Alejandro.

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables


msg1_14 db "Ingresa un número: ",0 
msgPar_14 db "Es PAR ",0 
msg3_14 db "Los números pares en el rango son: ", 0

;CONSTANTES

.code

	main73 PROC
	
		;Lógica del Programa
	; Solicitar al usuario un número
	mov edx, offset msg1_14
	call writestring
	call crlf

	call readint ; Almacenar el número ingresado por el usuario en eax

	; Mostrar los números pares en el rango de 1 a n
	mov ecx, 1 ; Inicializar el contador en 1


whileloop:
	; Verificar si el número actual es par
	mov ebx, 2
	mov edx, 0
	;mov eax, ecx
	div ebx ; eax/2 => cociente se va a eax y el residuo a edx

	cmp edx, 0 ; revisa si el residuo es 0
	jnz noPar ; si el número no es par, saltar a noPar

	; Si el número es par, mostrarlo
	call writeDec ; Mostrar el número actual
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
