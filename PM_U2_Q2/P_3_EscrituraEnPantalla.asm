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

var_1_2 dword 10d
var_2_2 dword 2d
.code

	main3 PROC
	
		;Lógica del Programa

		mov eax, 4

		call Writeint
		
		; imprimir en consola el valor

		; con el que cuenta el registro eax
		
	
		
		exit	
	
	main3 ENDP
	
	END main3
