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


msj1_ej db "Ingrese x1 ", 0
msj2_ej db "Ingrese x2 ", 0
msj3_ej db "Ingrese y1 ", 0
msj4_ej db "Ingrese y2 ", 0
msj5_ej db "ingrese la potencia", 0
msj6_ej db "El resultado de la potencia es:", 0
msj7_ej db "El resultado final de los dos puntos medios es:", 0

var_2_2 dword 0d
var1 dword 0

.code

	main41 PROC
	
		;Lógica del Programa
	    
		; eax  ebx  ecx  edx
		; 0	   0	0	  0

		;*******MENSAJE 1*******
		mov edx, OFFSET msj1_ej
		call writestring
		call crlf

		call readint ; leyendo el valor = 5
		
		; eax  ebx  ecx  edx
		; 0	   0	0	  0
		; 5    0    0     ms1
		;
		
		mov ebx, eax

		; eax  ebx  ecx  edx
		; 0	   0	0	 N/A
		; 0    5    0     MS1
		;

		;*******MENSAJE 2*******
		mov edx, OFFSET msj2_ej
		call writestring
		call crlf

		call readint ; leyendo el valor = 10

		; eax  ebx  ecx  edx
		; 0	   0	0	   0
		; 0    5    0     MS1
		; 10   5    0     MS2
		
		sub eax,ebx

		; eax  ebx  ecx  edx
		; 0	   0	0	   0
		; 0    5    0     MS1
		; 10   5    0     MS2
		; 5    0    0       0

		
		

		mov ecx,eax 

		; eax  ebx  ecx  edx
		; 0	   0	0	   0
		; 0    5    0     MS1
		; 10   5    0     MS2
		; 5    0    0       0
		; 0    0    5       0
		;
		;

		
		
		call writeint ;IMPRIMIMOS EL VALOR DE EAX EL CUAL ES 5
		call crlf
		
		mov ebx , eax ; ebx respalda la base  

		;*******MENSAJE 5*******
		mov edx, OFFSET msj5_ej
		call writestring
		call crlf

		call readint; leemos un valor y lo guardamos en eax - POTENCIA
		mov ecx , eax ;ecx respalda la potencia

		;se debe regresar la base a eax
		mov eax , ebx

		repite:
			mul ebx  ; eax = eax * ebx = 9 
			sub ecx , 1  ; restando 1 .... ecx = ecx - 1 una multiplicacion menos que hacer 
			cmp ecx , 1  ;condicional de una operacion booleana
			jg repite  ; es la reaccion como si fuera un if
			
			;*******MENSAJE 6*******
		mov edx, OFFSET msj6_ej
		call writestring
		call crlf
			call writedec ; imprime el resultado de la potencia de 5 = 25

			;call writeint;

			mov var1 , eax

       call crlf

	    ;*******MENSAJE 3*******
		mov edx, OFFSET msj3_ej
		call writestring
		call crlf
		mov ecx, eax
		call readint ; esta leyendo y1= 20

		

		 ;*******MENSAJE 4*******
		mov edx, OFFSET msj4_ej
		call writestring
		mov ebx, eax
		call crlf
		call readint ; esta leyndo y2 = 30


		sub eax,ebx
		
		call writeint ; imprime el resultado de la resta de y2-y1 = 10
		call crlf
		 ;*******MENSAJE 5*******
		mov edx, OFFSET msj5_ej
		call writestring
		call crlf
		mov ecx, eax



		mov edx, ecx ; se movio el valor de registro ecx al registro edx

		mov ebx , eax ; ebx respalda la base  

		call readint; leemos un valor y lo guardamos en eax - POTENCIA
		mov ecx , eax ;ecx respalda la potencia

		;se debe regresar la base a eax
		call crlf
		mov eax , ebx

		repite2:
			mul ebx  ; eax = eax * ebx = 9 
			sub ecx , 1  ; restando 1 .... ecx = ecx - 1 una multiplicacion menos que hacer 
			cmp ecx , 1  ;condicional de una operacion booleana
			jg repite2  ; es la reaccion como si fuera un if

			;*******MENSAJE 6*******
		mov edx, OFFSET msj6_ej
		call writestring
			call writedec ; imprime el resultado de la potencia de 10 = 100
			call crlf

			add eax , var1
			;*******MENSAJE 7*******
		mov edx, OFFSET msj7_ej
			call writestring
			call writeint
  call crlf

		exit
	main41 ENDP
	
	END main41
