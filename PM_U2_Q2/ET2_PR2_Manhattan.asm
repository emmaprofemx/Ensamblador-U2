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
.code

	main92 PROC
	
		;Lógica del Programa
	
		; eax  ebx  ecx  edx
		; 0	   0	0	  0

		;*******MENSAJE 1*******
		mov edx, OFFSET msj1_ej
		call writestring
		call crlf

		call readint ; leyendo el valor = 2
		; eax  ebx  ecx  edx
		; 0	   0	0	  0
		; 2    0    0    ms1
		mov ebx, eax

		; eax  ebx  ecx  edx
		; 0	   0	0	  0
		; 2    0    0    ms1
		; 0    2    0     0

		;*******MENSAJE 2*******
		mov edx, OFFSET msj2_ej
		call writestring
		call crlf

		call readint ; leyendo el valor = -7
		; eax  ebx  ecx  edx
		; 0	   0	0	  0
		; 2    0    0    ms1
		; 0    2    0     0
		; -7   2    0    ms2
		;
		sub eax,ebx

		; eax  ebx  ecx  edx
		; 0	   0	0	  0
		; 2    0    0    ms1
		; 0    2    0     0
		; -7   2    0    ms2
		; -5   0    0     0
		call writeint ; DEBE DE MOSTRAR -5

		mov ecx , eax

		; eax  ebx  ecx  edx
		; 0	   0	0	  0
		; 2    0    0    ms1
		; 0    2    0     0
		; -7   2    0    ms2
		; -5   0    0     0
		;  0   0    -5    0
		
		;*******MENSAJE 3*******
		mov edx, OFFSET msj3_ej
		call writestring
		call crlf
		call readint ; LEEMOS EL VALOR DE Y1 = 8

		; eax  ebx  ecx  edx
		; 0	   0	0	  0
		; 2    0    0    ms1
		; 0    2    0     0
		; -7   2    0    ms2
		; -5   0    0     0
		;  0   0    -5    0
		; 8    0    -5   ms3
		mov ebx , eax

		; eax  ebx  ecx  edx
		; 0	   0	0	  0
		; 2    0    0    ms1
		; 0    2    0     0
		; -7   2    0    ms2
		; -5   0    0     0
		;  0   0    -5    0
		;  8   0    -5   ms3
		;  0   8    -5    0

		;*******MENSAJE 4*******
		mov edx, OFFSET msj4_ej
		call writestring
		call crlf
		call readint ; LEEMOS EL VALOR DE Y2 = 3

		; eax  ebx  ecx  edx
		; 0	   0	0	  0
		; 2    0    0    ms1
		; 0    2    0     0
		; -7   2    0    ms2
		; -5   0    0     0
		;  0   0    -5    0
		;  8   0    -5   ms3
		;  0   8    -5    0
		; 3    8    -5    ms4

		sub eax, ebx

		; eax  ebx  ecx  edx
		; 0	   0	0	  0
		; 2    0    0    ms1
		; 0    2    0     0
		; -7   2    0    ms2
		; -5   0    0     0
		;  0   0    -5    0
		;  8   0    -5   ms3
		;  0   8    -5    0
		; 3    8    -5    ms4
		; 5    0    -5    0

		add eax , ecx

		call writeint ; debe mostrar 0
		exit	
	
	main92 ENDP
	
	END main92
