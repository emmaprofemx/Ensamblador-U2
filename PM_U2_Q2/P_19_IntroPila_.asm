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

	main19 PROC
	
		;Lógica del Programa

		mov edx, 10 ; colocando en el registro edx el valor 10
		; este se pudo obtener de diversas formas o como resultado de alguna operacion
		; se requiere utilizar al registro edx, sin embargo, no se quiere perder su valor 
		; entonces , se recurre a la pila para almacenar temporalmente el valor del registro

		push edx ; almacenar el valor de edx en la pila

         
		mov edx, 5 ; cambia el valor de edx, y pone en este el nuevo valor

	    mov eax, edx ; se coloca en eaz el valor de edz para poder imprimir imprimirlo en consola

	    call writedec

		pop eax ; recupera el ultimo valor que se eguardo en la pila , 
		; en esta caso k, el valor de edx al comienzo del programa

		call writedec
		call crlf

		;checar que tiene la pila ahora...
		mov eax , 2 
		pop eax
		call writedec
		call crlf

	    exit

	main19 ENDP
	
	END main19
