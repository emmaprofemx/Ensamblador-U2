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

message1_11 db "Ingresa la base: ",0 
message2_11 db "Ingresa la altura: " , 0
message3_11 db "Resultado: ",0

.code

	main11 PROC
	
		;Lógica del Programa

		;****mensaje 1
		mov edx, OFFSET message1_11
		call writestring
		call crlf

		call readint ; leyendo el valor
		mov ebx, eax

		;****mensaje 2
		mov edx, OFFSET message2_11
		call writestring
		call crlf

		call readint ; leyendo el valor eax

		;****mensaje 3
		mov edx, OFFSET message3_11
		call writestring
		call crlf
		mul ebx
		;el resultado se guarda en eax
		call writeint
	
		exit	
	
	main11 ENDP
	
	END main11
