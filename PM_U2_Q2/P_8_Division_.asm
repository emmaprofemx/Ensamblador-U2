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


var1_8 dword 2d

.code

	main8 PROC
	
		;Lógica del Programa

			;La division siempre debe realizarse entre eax y un operando
			; el cociente se almacena en eax
			; el residuo se almacena en edx
			;
			; Se recomienda limpiar el registro edx siempre que se vaya a realizar una division
			;
			;EJEMPLO 1
			mov eax , 10

			mov edx , 0 ; limpienza del registro

			div var1_8 ; eax = 10 / 2 


			call writeint
			call crlf

			;Ejemplo 2 
			mov eax , 9
			mov edx , 0
			div var1_8 ; cociente = eax residuo = edx
			call writeint 
			call crlf

			;call crlf
			;mov eax , edx ; sobreescribir el cociente
			xchg eax , edx ; intercambia el valor de los registro ; opcion 2
			call writeint

			


		exit	
	
	main8 ENDP
	
	END main8
