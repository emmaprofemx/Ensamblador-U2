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

 num REAL8 125.0 ; número de entrada
.code

	main50 PROC
	
		;Lógica del Programa
	
		; Imprimir el número de entrada
    fld num
    call WriteFloat
    call Crlf

    ; Calcular la raíz cuadrada y mostrar el resultado
    fld num
    fsqrt
    call WriteFloat
    call Crlf

    ; Salir del programa
    call WaitMsg

		exit	
	
	main50 ENDP
	
	END main50
