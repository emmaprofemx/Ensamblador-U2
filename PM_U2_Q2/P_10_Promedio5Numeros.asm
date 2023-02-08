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

msjEntrada_10 db "Ingresa una calificacion: ",0 
msjResultado_10 db "El promedio es: " , 0 
.code

	main10 PROC
	
		;Lógica del Programa
		
		;****Calificacion 1****
		mov edx , OFFSET msjEntrada_10
		call writestring
		call crlf

		call readint ; LEE UN NUMERO Y LO GUARDA EN EAX
		;---- DISPONIBLES EBX , ECX ... PARA RESGUARDAR EL VALOR
		mov ebx , eax ;----GUARDA EL VALOR DE EAX EN EBX

		;LA DIVISION ES EAX / ALGO (ENTRE UNA VARIABLE O UN REGISTRO).

		;****Calificacion 2****
		mov edx , OFFSET msjEntrada_10
		call writestring
		call crlf

		call readint ; LEE UN NUMERO Y LO GUARDA EN EAX

		;RESGUARDAR U OPERAR ..
		;---OPERAR: (SUMAR)
		ADD EBX , EAX ; CAL 1 + CAL2


		;Calificacion 3
		mov edx , OFFSET msjEntrada_10
		call writestring
		call crlf

		call readint ; LEE UN NUMERO Y LO GUARDA EN EAX
		;RESGUARDAR U OPERAR ..
		;---OPERAR: (SUMAR)
		ADD EBX , EAX ; (CAL 1 + CAL2) + CAL 3


		;Calificacion 4
		mov edx , OFFSET msjEntrada_10
		call writestring
		call crlf

		call readint ; LEE UN NUMERO Y LO GUARDA EN EAX
		;RESGUARDAR U OPERAR ..
		;---OPERAR: (SUMAR)
		ADD EBX , EAX ; (CAL 1 + CAL2 + CAL 3) + CAL 4


		

		;*****Calificacion 5*****
		mov edx , OFFSET msjEntrada_10
		call writestring
		call crlf

		call readint ; LEE UN NUMERO Y LO GUARDA EN EAX
		;RESGUARDAR U OPERAR ...
		;---OPERAR: (SUMAR) ... PERO GUARDAR EN EAX , PARA
		;FACILITAR LA PROXIMA DIVISION
		ADD EAX , EBX ; CAL 5 + (CAL 1 + CAL2 + CAL 3 + CAL 4) 
		

		;*****RESULTADO*****
		mov edx , OFFSET msjResultado_10 ;RESULTADO
		call writestring
		call crlf	

		;EDX NUCA SE USARA CUANDO SE HACE UNA DIVISION!!!!!
		;DIVISION EAX ENTRE UN REGISTRO O UNA VARIABLE
		;UN INMEDIATO ES TAL CUAL UN NUMERO = 123...

		



		MOV EDX , 0 ;PARA GUARDAR EL RESIDUO
		;_HASTA ESTE PUNTO ECX , NO CUENTA CON ALGUN VALOR DE UTILIDAD
		;Y EBX , EL VALOR YA NO SE UTILIZARA , PORQUE YA FUE UTILIZADO AL REALIZAR LA SUMA ANTERIOR
		;EN ESTE SENTIDO , SE PUEDE UTILIZAR EBX , O ECX... SE ESCOGIO ECX..
		MOV ECX , 5 
		DIV ECX ; COCIENTE SE GUARDA EN EAX

		CALL WRITEINT ;IMPRIME EL RESULTADO DE CUALQUIER COSA QUE ESTE EN EAX

		exit	
	
	main10 ENDP
	
	END main10
