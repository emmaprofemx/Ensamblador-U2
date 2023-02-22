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


msj1_ej7 db "Pago x hora: ", 0
msj2_ej7 db "Horas trabajadas en la semana: ", 0



.code

	main34 PROC
	
		;Lógica del Programa

		;******MENSAJE 1******
	    mov edx, offset msj1_ej7 
		call writestring
		call crlf 
		call readint ; Leemos eax (Pago x hora)
		
		
		;*****MENSAJE 2*****
		mov edx, offset msj2_ej7
		call writestring
		call crlf 
		mov ebx , eax 
		call readint ;LEEMOS EAX (Horas trabajadas)
		;sub eax , ebx
		mul ebx
		call writeint

	exit	
	main34 ENDP
	
	END main34
