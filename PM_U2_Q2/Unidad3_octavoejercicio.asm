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

	main87 PROC
	
		;Lógica del Programa
	    
		mov ecx, 10 ; SE VA A REPETIR 10 VECES
		
		ciclo:
		 mov eax, 40 
		 call writedec
		 call crlf
		 loop ciclo 


		

		exit

		
		

	main87 ENDP
	
	END main87