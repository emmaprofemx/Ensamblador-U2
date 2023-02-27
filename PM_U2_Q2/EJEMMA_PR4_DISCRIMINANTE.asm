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


msj1_ejt1 db "Ingresa el valor de a: ", 0
msj2_ejt1 db "Ingresa el valor de b: ", 0
msj3_ejt1 db "Ingresa el valor de c:  ", 0

;CONSTANTES
var1 dword 4d
var2 dword 0d
var3 dword 2d


.code

	main71 PROC
	
		;Lógica del Programa
		;DISCRIMINANTE b^2 - 4 * a * c
		; a = 1
		; b = 5
		; c = 4

		;******MENSAJE 1******
	    mov edx, offset msj1_ejt1
		call writestring
		call crlf 
		call readint ; Leemos eax (a)
		
		; eax  ebx  ecx  edx
		; 1	   0	0	 msj1


		mov ecx , eax

		; eax  ebx  ecx  edx
		; 0	   0	0	 msj1
		; 0    0    1    msj1
		
		;******MENSAJE 2******
	    mov edx, offset msj2_ejt1
		call writestring
		call crlf 
		call readint ; Leemos eax (b = 5)
		
		; eax  ebx  ecx  edx
		; 1	   0	0	 msj1
		; 0    0    1    msj1
		; 5    0    1    msj2
		
		mov ebx , eax

		; eax  ebx  ecx  edx
		; 1	   0	0	 msj1
		; 0    0    1    msj1
		; 5    0    1    msj2
		; 0    5    1    msj2

		;******MENSAJE 3******
	    mov edx, offset msj3_ejt1
		call writestring
		call crlf 
		call readint ; Leemos eax (c = 4)
		
		; eax  ebx  ecx  edx
		; 0	   0	0	 msj1
		; 0    1    0    msj1
		; 5    1    0    msj2
		; 0    1    5    msj2
		; 0    5    1    msj3
		; 4    5    1    msj3

		mul ecx ; eax(f)= eax(4) * ecx(1)

		; eax  ebx  ecx  edx
		; 0	   0	0	 msj1
		; 0    1    0    msj1
		; 5    1    0    msj2
		; 0    1    5    msj2
		; 4    5    1    msj3
		; 4    5    0      0
		
		;call writeint ; DEBE DE IMPRIMIR 4

		mul var1 ; eax(f) = eax(1) * var1(4)

		;call writeint ;DEBE IMPRIMIR 16
		call crlf 
		; eax  ebx  ecx  edx
		; 0	   0	0	 msj1
		; 0    1    0    msj1
		; 5    1    0    msj2
		; 0    1    5    msj2
		; 4    5    1    msj3
		; 4    5    0      0
		; 16   5    0      0

		mov var2 , eax ; EL 16 LO OCUPAREMOS AL FINAL

		; eax  ebx  ecx  edx
		; 0	   0	0	 msj1
		; 0    1    0    msj1
		; 5    1    0    msj2
		; 0    1    5    msj2
		; 4    5    1    msj3
		; 4    5    0      0
		; 16   5    0      0
		; 0 (16 esta en una variable) 0 0

		;call readint   ; leemos un valor y lo guardamos en eax - -BASE

		; eax  ebx  ecx  edx
		; 0	   0	0	 msj1
		; 0    1    0    msj1
		; 5    1    0    msj2
		; 0    1    5    msj2
		; 4    5    1    msj3
		; 4    5    0      0
		; 16   5    0      0
		; 0 (16 esta en una variable) 0 0
		; 0   5     0      0
		mov eax , ebx

		; eax  ebx  ecx  edx
		; 0	   0	0	 msj1
		; 0    1    0    msj1
		; 5    1    0    msj2
		; 0    1    5    msj2
		; 4    5    1    msj3
		; 4    5    0      0
		; 16   5    0      0
		; 0 (16 esta en una variable) 0 0
		; 0   5     0      0
		; 5   0     0      0
		;

		mov ebx , eax ; ebx respalda la base  

		; eax  ebx  ecx  edx
		; 0	   0	0	 msj1
		; 0    1    0    msj1
		; 5    1    0    msj2
		; 0    1    5    msj2
		; 4    5    1    msj3
		; 4    5    0      0
		; 16   5    0      0
		; 0 (16 esta en una variable) 0 0
		; 0   5     0      0
		; 5   0     0      0
		; 0   5     2      0

		;call readint; leemos un valor y lo guardamos en eax - POTENCIA
		mov ecx , var3;ecx respalda la potencia

		;se debe regresar la base a eax
		mov eax , ebx

		repite:
			mul ebx  ; eax = eax * ebx = 9 
			sub ecx , 1  ; restando 1 .... ecx = ecx - 1 una multiplicacion menos que hacer 
			cmp ecx , 1  ;condicional de una operacion booleana
			jg repite  ; es la reaccion como si fuera un if

			;call writedec

			
		sub eax, var2

		call writeint ;DEBEMOS OBTENER 9 --- PROGRAMA LISTO


	exit	
	main71 ENDP
	
	END main71


	
		

