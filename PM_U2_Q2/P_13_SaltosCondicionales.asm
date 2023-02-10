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
message1_13 db "Mensaje 1",0 
message2_13 db "Mensaje 2", 0 
message3_13 db "Mensaje 3",0 


.code

	main13 PROC
	
		;Lógica del Programa
		
		;Desplegaremos el mensaje 2, solo cuando el valor leido sea 1

		call readint; lee un numero y lo almacena en eax

		mov edx, offset message1_13
		call writestring
		call crlf

		call dumpregs ; volcado de registros

		cmp eax, 1; compara si eax es 1 ---> las reglas de comparacion respetan las usadas por
		; cmp compara a traves de una resta que despues de realizarse se deshace
		;pero si altera a la registro de banderas

		call dumpregs ; volcado de registros


		jz soniguales; jump IF is zero; salta si es cero
		; realiza el salto a la localidad de la etiqueta, si la bandera de zero esta activa
		; la bandera de zero se activa, si la comparacion es entre dos numeros iguales
		
		jmp continuar; salto condicional

		soniguales:
		
		    mov edx, offset message2_13
		    call writestring
		    call crlf


       
		continuar: ;etiqueta

		mov edx, offset message3_13
		call writestring
		call crlf

		
	
		exit	
	
	main13 ENDP
	
	END main13
