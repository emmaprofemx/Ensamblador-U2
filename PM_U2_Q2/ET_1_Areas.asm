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


msj1_ejt1 db "Ingresa la altura: ", 0
msj2_ejt1 db "Ingresa la base: ", 0
msj3_ejt1 db "La suma total es:  ", 0



.code

	main36 PROC
	
		;Lógica del Programa
		
		; eax  ebx  ecx  edx
		; 0	   0	0	 N/A
	
		;******MENSAJE 1******
	    mov edx, offset msj1_ejt1 
		call writestring
		call crlf 
		call readint ; Leemos eax (ALTURA)

		; eax  ebx  ecx  edx
		; 0	   0	0	 N/A
		; 20   0    0    MS1
		
		;*****MENSAJE 2*****
		mov edx, offset msj2_ejt1
		call writestring
		call crlf 
		mov ebx , eax 

		; eax  ebx  ecx  edx
		; 0	   0	0	 N/A
		; 20   0    0    MS1
		; 0    20   0    MS2
		;
		;
		call readint ;LEEMOS EAX (BASE)

		; eax  ebx  ecx  edx
		; 0	   0	0	 N/A
		; 20   0    0    MS1
		; 0    20   0    MS2
		; 8    20   0    N/A
		;

		mul ebx ; EAX = EAX * EBX (SE GUARDARA EN EAX)
		
		; eax  ebx  ecx  edx
		; 0	   0	0	 N/A
		; 20   0    0    MS1
		; 0    20   0    MS2
		; 8    20   0    N/A
		;160	0	0	 N/A	

		MOV EDX , 0 ;PARA GUARDAR EL RESIDUO
		;_HASTA ESTE PUNTO ECX , NO CUENTA CON ALGUN VALOR DE UTILIDAD

		; eax  ebx  ecx  edx
		; 0	   0	0	 N/A
		; 20   0    0    MS1
		; 0    20   0    MS2
		; 8    20   0    N/A
		;160	0	0	 0(Es para guardar el residuo)

		mov ebx , eax

		; eax  ebx  ecx  edx
		; 0	   0	0	 N/A
		; 20   0    0    MS1
		; 0    20   0    MS2
		; 8    20   0    N/A
		; 0	  160	0	 0(Es para guardar el residuo)

		;EN ESTE SENTIDO , SE PUEDE UTILIZAR EBX , O ECX... SE ESCOGIO ECX..
		
		MOV ECX , 2 ; DE DIVIDE ENTRE 2
		
		; eax  ebx  ecx  edx
		; 0	   0	0	 N/A
		; 20   0    0    MS1
		; 0    20   0    MS2
		; 8    20   0    N/A
		;0	  160	2	 0(Es para guardar el residuo)

		DIV ECX ; COCIENTE SE GUARDA EN EAX 
				; EAX = EAX / ECX
		; eax  ebx  ecx  edx
		; 0	   0	0	 N/A
		; 20   0    0    MS1
		; 0    20   0    MS2
		; 8    20   0    N/A
		;0	   160	2	 0(Es para guardar el residuo)
		;80     0   0    0(Es para guardar el residuo)
		CALL WRITEINT ;IMPRIME EL RESULTADO DE CUALQUIER COSA QUE ESTE EN EAX

		add eax , ebx ; SUMAMNOS LOS VALORES CORRESPONDIENTES

		;*****MENSAJE 2*****
		mov edx, offset msj3_ejt1
		call writestring
		call crlf 
		CALL WRITEINT ;IMPRIME EL RESULTADO DE CUALQUIER COSA QUE ESTE EN EAX

	exit	
	main36 ENDP
	
	END main36


	
		

