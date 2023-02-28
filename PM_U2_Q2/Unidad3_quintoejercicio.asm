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



var1 dword 100d
.code

	main88 PROC
	
		;Lógica del Programa
	    
		call randomize
		mov ecx, 101
		
		ciclo:
		 mov eax, 10
		 call randomrange
		 call writedec
		 call crlf
		loop ciclo


		

		exit

		
		

	main88 ENDP
	
	END main88