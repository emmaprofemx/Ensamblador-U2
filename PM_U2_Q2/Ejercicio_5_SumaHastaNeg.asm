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

	main24 PROC
	
		;Lógica del Programa
		;Realizar la sumatoria de todos los numeros que sean ingresados
		;hasta que se ingrese un numero negativo.El negativo no se suma.

		mov ebx , 0
		ciclo:
		call readint; eax
		add ebx , eax 
		cmp eax, 0
		jge ciclo

		sub ebx , eax
		mov eax , ebx
		
		call writedec

		; call writedec


		;SOLICITAR EL VALOR DE X , PEDIR AL USUARIO INGRESAR TANTOS VALORES SEAN MENORES QUE X
	    exit

	main24 ENDP
	
	END main24
