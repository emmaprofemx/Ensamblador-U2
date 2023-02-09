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
cadena db "Ingresa un numero:", 0

var_1_2 dword 10d
var_2_2 dword 2d

.code

	main5 PROC
	
		;Lógica del Programa

         mov edx, offset cadena
		 call writestring
		 call crlf
		 call readint
		 ;lee un valor ingresado por consola
		 ; y lo almcena en eax

		 call crlf
		 call writeint ; echo para comprobar el contenido


		
	
		
		exit	
	
	main5 ENDP
	
	END main5
