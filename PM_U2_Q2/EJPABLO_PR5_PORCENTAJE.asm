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


msj1_ej db "Ingrese el porcentaje:", 0
msj2_ej db "Ingrese el precio a calcular:", 0
msj3_ej db "El resultado es:",0


var1 dword 100d
.code

	main80 PROC
	
		;Lógica del Programa
	    
		;****mensaje 1
		mov edx, OFFSET msj1_ej
		call writestring
		call crlf

		call readint ; leyendo el valor
		mov ebx, eax

		;****mensaje 2
		mov edx, OFFSET msj2_ej
		call writestring
		call crlf
		call readint ; leyendo el valor 

		mul ebx

		div var1

		;****mensaje 3
		mov edx, OFFSET msj3_ej
		call writestring

	   call writeint

		

		exit

		
		

	main80 ENDP
	
	END main80