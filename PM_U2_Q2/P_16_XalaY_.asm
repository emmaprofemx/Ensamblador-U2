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

	main16 PROC
	
		;Lógica del Programa
		
		; x = 3 
		; y = 4 
		; x elevada a la 4 
		; 3 x 3 x 3 x3 

		call readint   ; leemos un valor y lo guardamos en eax - -BASE
		mov ebx , eax ; ebx respalda la base  

		call readint; leemos un valor y lo guardamos en eax - POTENCIA
		mov ecx , eax ;ecx respalda la potencia

		;se debe regresar la base a eax
		mov eax , ebx

		repite:
			mul ebx  ; eax = eax * ebx = 9 
			sub ecx , 1  ; restando 1 .... ecx = ecx - 1 una multiplicacion menos que hacer 
			cmp ecx , 1  ;condicional de una operacion booleana
			jg repite  ; es la reaccion como si fuera un if

			call writedec
		exit	
	
	main16 ENDP
	
	END main16
