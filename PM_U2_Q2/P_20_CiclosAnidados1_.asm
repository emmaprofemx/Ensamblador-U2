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

	main20 PROC
	
		;Lógica del Programa apartir de aqui
		  
		 mov ebx, 5

		cicloP:
		
		
		mov eax, 1; 
		ciclo:
		call writedec
		call crlf
		inc eax
		cmp eax, 10
		jle ciclo
		

		call crlf

		dec ebx
		cmp ebx, 0
		jg cicloP
	   
	   exit

	main20 ENDP
	
	END main20
