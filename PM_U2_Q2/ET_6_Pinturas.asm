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


msj1_ej7 db "Ingresa la cantidad de m2 a pintar:", 0
msj2_ej7 db "Ingresa el precio por m2: ", 0



.code

	main32 PROC
	
		;Lógica del Programa

		;******MENSAJE 1******
	    mov edx, offset msj1_ej7 
		call writestring
		call crlf 
		call readint ; Leemos eax (cantidad m2 a pintar)
		
		
		;*****MENSAJE 2*****
		mov edx, offset msj2_ej7
		call writestring
		call crlf 
		mov ebx , eax 
		call readint ;LEEMOS EAX 
		;sub eax , ebx
		mul ebx
		call writeint

	exit	
	main32 ENDP
	
	END main32
