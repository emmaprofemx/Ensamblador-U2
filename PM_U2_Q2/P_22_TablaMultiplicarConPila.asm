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

msj1_21 db " x  ",0
msj2_21 db " ?= ",0
msj3_21 db "Que tabla quieres visualizar? ",0

.code

	main22 PROC
	
		;Lógica del Programa apartir de aqui
		; desplegar la tabla de multiplicar indicada por el usuario...

		mov edx, offset msj3_21 ; de que tabla quieres el examen...
		call writestring
		call crlf

		call readint ; la tabla que se quiere visualizar
		mov ebx, 1 ; contador de la tabla

		ciclo:
		       call writedec ; imorime la tabla

			   mov edx, offset msj1_21
			   call writestring   ; x

			   xchg eax, ebx
			   call writedec

		      mov edx, offset msj2_21
		      call writestring

			  ;hasta aqui en eax esta el contador y ebx el valor de la tabla
			  ;si se hace una multiplicacion se va a perder el contador
			  ;necesitamos evitarlo...como?

			  push eax ; respaldo del valor contador... toma el valor de eax y lo guarda en la pila
			  
			  mul ebx ; eax = eax * ebx = contador * tabla

			  call writedec ; imprime el resultado de la multiplicacion

			  pop eax; recupera el valor de la tabla almacenado en la pila y lo coloca en eax

			  ; en este punto... eax = contador y ebx = tabla

		      inc eax ; incrementa el contador en 1
		      xchg eax, ebx ; intercambia los registros para que en eax = tabla y en ebx = contador


		      call crlf
		
		     cmp ebx, 10
		     jle ciclo 


	main22 ENDP
	
	END main22
