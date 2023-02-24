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

var_2_2 dword 1d

.code

	main39 PROC
	
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

		call writeint ; MOSTRAMOS EL VALOR DE EAX = 5
		call crlf
		mov ecx,eax 

		; eax  ebx  ecx  edx
		; 0	   0	0	   0
		; 0    5    0     MS1
		; 10   5    0     MS2
		; 5    0    0       0
		; 0    0    5       0
		;
		;

		;*******MENSAJE 3*******
		mov edx, OFFSET msj3_ej
		call writestring
		call crlf

		call readint ; leyendo el valor de y1 = 7

		; eax  ebx  ecx  edx
		; 0	   0	0	   0
		; 0    5    0     MS1
		; 10   5    0     MS2
		; 5    0    0       0
		; 0    0    5       0
		; 7    0    5     MS3
		
		mov ebx,eax

		; eax  ebx  ecx  edx
		; 0	   0	0	   0
		; 0    5    0     MS1
		; 10   5    0     MS2
		; 5    0    0       0
		; 0    0    5       0
		; 7    0    5     MS3
		; 0    7    5       0
		;
		;
		;
		;

		;*******MENSAJE 4*******
		mov edx, OFFSET msj4_ej
		call writestring
		call crlf

		call readint ; leyendo el valor de y2
		
		; eax  ebx  ecx  edx
		; 0	   0	0	   0
		; 0    5    0     MS1
		; 10   5    0     MS2
		; 5    0    0       0
		; 0    0    5       0
		; 7    0    5     MS3
		; 0    7    5       0
		; 8    7    5     MS4
		;
		;
		;
		
		;call writeint ; 

		sub eax,ebx ; REALIZAMOS LA RESTA DE 8 - 7 = EL RESULTADO SE ALMACENA EN EAX

		; eax  ebx  ecx  edx
		; 0	   0	0	   0
		; 0    5    0     MS1
		; 10   5    0     MS2
		; 5    0    0       0
		; 0    0    5       0
		; 7    0    5     MS3
		; 0    7    5       0
		; 8    7    5     MS4
		; 1    0    5       0
		;
		;

		call writeint ;IMPRIMIMOS EL VALOR DE EAX EL CUAL ES 1

		;****PARTE DE ELEVAR AL CUADRADO

		; eax  ebx  ecx  edx
		; 0	   0	0	   0
		; 0    5    0     MS1
		; 10   5    0     MS2
		; 5    0    0       0
		; 0    0    5       0
		; 7    0    5     MS3
		; 0    7    5       0
		; 8    7    5     MS4
		; 1    0    5       0

		;call readint   ; leemos un valor y lo guardamos en eax - -BASE

		mov ebx , ecx ; ebx respalda la base  
	
		; eax  ebx  ecx  edx
		; 0	   0	0	   0
		; 0    5    0     MS1
		; 10   5    0     MS2
		; 5    0    0       0
		; 0    0    5       0
		; 7    0    5     MS3
		; 0    7    5       0
		; 8    7    5     MS4
		; 1    0    5       0
		; 1    5    0       0
		;

		call readint; leemos un valor y lo guardamos en eax - POTENCIA ; 2
		mov ecx , eax ;ecx respalda la potencia
		
		; eax  ebx  ecx  edx
		; 0	   0	0	   0
		; 0    5    0     MS1
		; 10   5    0     MS2
		; 5    0    0       0
		; 0    0    5       0
		; 7    0    5     MS3
		; 0    7    5       0
		; 8    7    5     MS4
		; 1    0    5       0
		; 1    5    0       0
		; 0    5    1       0
		;

		;call readint; leemos un valor y lo guardamos en eax - POTENCIA ; 2
		
		; eax  ebx  ecx  edx
		; 0	   0	0	   0
		; 0    5    0     MS1
		; 10   5    0     MS2
		; 5    0    0       0
		; 0    0    5       0
		; 7    0    5     MS3
		; 0    7    5       0
		; 8    7    5     MS4
		; 1    0    5       0
		; 1    5    0       0
		; 0    5    1       0
		; 2    5    1       0

		

		mov edx , eax
		; eax  ebx  ecx  edx
		; 0	   0	0	   0
		; 0    5    0     MS1
		; 10   5    0     MS2
		; 5    0    0       0
		; 0    0    5       0
		; 7    0    5     MS3
		; 0    7    5       0
		; 8    7    5     MS4
		; 1    0    5       0
		; 1    5    0       0
		; 0    5    1       0
		; 2    5    1       0
		; 0    5    1       2

		;se debe regresar la base a eax
		mov eax , ebx

		mov edx , eax
		; eax  ebx  ecx  edx
		; 0	   0	0	   0
		; 0    5    0     MS1
		; 10   5    0     MS2
		; 5    0    0       0
		; 0    0    5       0
		; 7    0    5     MS3
		; 0    7    5       0
		; 8    7    5     MS4
		; 1    0    5       0
		; 1    5    0       0
		; 0    5    1       0
		; 2    5    1       0
		; 0    5    1       2
		; 5    0    1       2
		mov ebx , edx

		; eax  ebx  ecx  edx
		; 0	   0	0	   0
		; 0    5    0     MS1
		; 10   5    0     MS2
		; 5    0    0       0
		; 0    0    5       0
		; 7    0    5     MS3
		; 0    7    5       0
		; 8    7    5     MS4
		; 1    0    5       0
		; 1    5    0       0
		; 0    5    1       0
		; 2    5    1       0
		; 0    5    1       2
		; 5    0    1       2
		; 5    2    1       0

		repite:
			mul ebx  ; eax = eax * ebx = 9 
			sub ecx , 1  ; restando 1 .... ecx = ecx - 1 una multiplicacion menos que hacer 
			cmp ecx , 1  ;condicional de una operacion booleana
			jg repite  ; es la reaccion como si fuera un if

			call writedec ; IMPRIME EL VALOR DE LA OPERACION

		;call writeint
		;DESPUES DE LA OPERACION DE 5^2 , el resultado se guarda en eax = 25

		; eax  ebx  ecx  edx
		; 0	   0	0	   0
		; 0    5    0     MS1
		; 10   5    0     MS2
		; 5    0    0       0
		; 0    0    5       0
		; 7    0    5     MS3
		; 0    7    5       0
		; 8    7    5     MS4
		; 1    0    5       0
		; 1    5    0       0
		; 0    5    1       0
		; 2    5    1       0
		; 0    5    1       2
		; 5    0    1       2
		; 25   0    1       0
		


		exit
	main39 ENDP
	
	END main39
