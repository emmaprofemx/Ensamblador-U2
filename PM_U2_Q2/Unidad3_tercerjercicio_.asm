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

	main86 PROC
	
		;Lógica del Programa
	    
		mov eax, 10
		call randomrange ; 0-eax = eax
		call writedec



		

		exit

		
		

	main86 ENDP
	
	END main86