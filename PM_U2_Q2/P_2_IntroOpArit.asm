TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Apellido Nombre Integrante 1
;         Apellido Nombre Integrante 2

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables

var_1_2 dword 10d
var_2_2 dword 2d
.code

	main2 PROC
	
		;Lógica del Programa
		; add se rige por las mismas reestricciones que mov
		;en cuanto a las operandos!

		mov eax, var_1_2
		add eax, var_2_2
	
		
		exit	
	
	main2 ENDP
	
	END main2
