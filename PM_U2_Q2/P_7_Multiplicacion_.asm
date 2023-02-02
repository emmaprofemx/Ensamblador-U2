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


var1_7 dword 10d

.code

	main7 PROC
	
		;Lógica del Programa

         ; La multiplicacion en enmsablador unicamente 
		 ; se puede realizar entre el registro eax y 
		 ; un operando proporcionando en la instruccion

		 ; el operando no puede ser un valor inmediato

		 ; el resultado de la multiplicacion se almacena en eax

		 ; Ejemplo 1 
		 mov eax, 5
		 mul var1_7 ; eax = eax * var1_7
		 call writeint

		 call crlf; salto de linea

		  ; Ejemplo 2
		  mov eax, 5
		  mov ebx, 2
		  mov ecx, 3

		  mul ebx ; eax = eax * ebx

		  mul ecx ; (eax*ebx)*ecx

		  call writeint

		  ; Ejemplo 3
		  call crlf ; Salto de linea
		  mov eax , 4
		  ;mul 5 ; es una operacion incompleta


		exit	
	
	main7 ENDP
	
	END main7
