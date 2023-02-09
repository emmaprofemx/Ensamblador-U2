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
message1_12 db "Mensaje 1",0 
message2_12 db "Mensaje 2" , 0
message3_12 db "Mensaje 3 ",0


.code

	main12 PROC
	
		;Lógica del Programa

		mov edx, offset message1_12
		call writestring
		call crlf

		jmp continuar; salto incondicional

		mov edx, offset message2_12
		call writestring
		call crlf

        continuar: ;etiqueta


		mov edx, offset message3_12
		call writestring
		call crlf

		
	
		exit	
	
	main12 ENDP
	
	END main12
