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
	    
		mov ecx, 10 ; SE VA A REPETIIR 10 VECES
		
		ciclo:
		 mov eax, 40 ; NUMERO EN EL CUAL SE HARA ALEATORIAMENTE
		 call randomrange ; ENTRE 0 - 39
		 call writedec
		 call crlf
		 loop ciclo ; SE VA A REPETIIR 10 VECES


		

		exit

		
		

	main87 ENDP
	
	END main87