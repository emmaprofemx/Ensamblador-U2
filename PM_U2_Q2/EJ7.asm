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


msj1_ej7 db "Ingrese el año actual", 0
msj2_ej7 db "Ingrese su año de nacimiento", 0
var1_6 dword 1d


.code

	main30 PROC
	
		;Lógica del Programa

		;**DESCRIPCION****
		;SABER LA EDAD DE LA PERSONA
		;******MENSAJE 1******
	    mov edx, offset msj1_ej7 
		call writestring
		call crlf 
		call readint ; Leemos eax
		
		
		;*****MENSAJE 2*****
		mov edx, offset msj2_ej7
		call writestring
		call crlf 

		mov ebx , eax ; Movemos el año a ebx y tendremos libre ebx
		call readint ;LEEMOS EAX 
		
		sub eax , ebx

		call writeint
		
	






	exit	
	main30 ENDP
	
	END main30
