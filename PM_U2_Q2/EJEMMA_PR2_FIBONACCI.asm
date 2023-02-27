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


msj1_ejt1 db "Cuantos numeros deseas generar?: ", 0

;CONSTANTES

.code

	main72 PROC
	
		;Lógica del Programa
		
		;******MENSAJE 1******
	    mov edx, offset msj1_ejt1
		call writestring
		call crlf 
		call readint ; Leemos eax (a)

		mov ecx , eax   ; establece el número de iteraciones
		mov eax, 0       ; inicializa el primer número de Fibonacci
        mov ebx, 1       ; inicializa el segundo número de Fibonacci

		for_loop:
	    call WriteDec    ; imprime el valor de eax en la consola
		call Crlf        ; inserta un salto de línea en la consola

	     add eax, ebx     ; calcula el siguiente número de Fibonacci
         xchg eax, ebx    ; intercambia los registros eax y ebx
         loop for_loop   

	exit	
	main72 ENDP
	
	END main72