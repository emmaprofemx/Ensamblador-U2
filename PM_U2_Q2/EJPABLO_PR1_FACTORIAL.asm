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


msj1_ej db "Ingrese un numero: ", 0
msj2_ej db "El factorial del numero ingresado es: ", 0


.code

	main81 PROC

		;Lógica del Programa

		;****mensaje 1
		mov edx, OFFSET msj1_ej
		call writestring
		call crlf

		call readint ; leyendo el valor

		mov ebx, eax


	  mov ecx, ebx
	  dec ecx ; = 4

	  ciclo:
	   dec ebx ; 4
	   mul ebx
	   dec ecx

	  jnz ciclo

	  ;****mensaje 2
		mov edx, OFFSET msj2_ej
		call writestring

	  call writeint



		exit





	main81 ENDP

	END main81