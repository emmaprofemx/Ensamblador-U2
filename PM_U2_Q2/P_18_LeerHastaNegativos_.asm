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

	main18 PROC
	
		;Lógica del Programa

		ciclo:

		call readint ; eax
		cmp eax, 0
		jge ciclo
		


	    exit

	main18 ENDP
	
	END main18
