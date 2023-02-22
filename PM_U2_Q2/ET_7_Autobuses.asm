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


msj1_ej7 db "Costo por km: ", 0
msj2_ej7 db "Distancia que recorrera: ", 0



.code

	main35 PROC
	
		;Lógica del Programa

		;******MENSAJE 1******
	    mov edx, offset msj1_ej7 
		call writestring
		call crlf 
		call readint ; Leemos eax
		
		
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
	main35 ENDP
	
	END main35
