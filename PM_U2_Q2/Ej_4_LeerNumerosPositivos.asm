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

	main23 PROC
	
		;Lógica del Programa
		;Realizar la sumatoria de todos los numeros que sean ingresados
		;hasta que se ingrese un numero negativo.El negativo no se suma.


		ciclo:
		inc ebx
		call readint ; eax
		;add ebx , eax
		cmp eax, 1
		jge ciclo
		 ;inc eax
		 dec ebx

		mov eax , ebx
		call writeint

		 ;xchg eax, ebx
		; mov eax , ebx




		; call writedec

	    exit

	main23 ENDP
	
	END main23
