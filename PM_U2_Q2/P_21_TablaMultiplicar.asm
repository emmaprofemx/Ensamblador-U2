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

	main21 PROC
	
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

			  mov ecx, eax ; respaldo del valor contador
			  
			  mul ebx ; eax = eax * ebx = contador * tabla

			  call writedec ; imprime el resultado de la multiplicacion

			  mov eax, ecx ; recupera el valor de la tabla en eax

		      inc eax
		      xchg eax, ebx

		      call crlf
		
		     cmp ebx, 10
		     jle ciclo 


	main21 ENDP
	
	END main21
