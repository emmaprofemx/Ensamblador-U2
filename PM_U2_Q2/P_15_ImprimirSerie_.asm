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



.code

	main15 PROC
	
		;Lógica del Programa
		;imprimir del 1 al 10 con saltos condicionales

		mov eax, 1
		repetir:

		call writedec
		call crlf
		add eax, 1

		cmp eax, 10

		jle repetir ; mientras sea menor o igual, repite

		; jz = salta si es cero / salta si es igual
		; je = salta si es igual
		; jl = salta si es menor
		; jg =  salta si es mayor

		; jnz = salata si no es cero / salta si no es igual
		; jne = salta si no es igual
		; jnl = salta si no es menor
		; jng = salta si no es mayor

		;jle = salta si es menor o igual
		;jge = salta si es mayor o igual
		
		exit	
	
	main15 ENDP
	
	END main15
