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

message1 db "ingresa m: " , 0 ; mensaje
message2 db "ingresa x: " , 0 ; mensaje
message3 db "ingresa b: " , 0 ; mensaje
message4 db "el valor de y: " , 0 ; mensaje




.code

	main9 PROC
	
		;Lógica del Programa
		
			;mensaje - 1
			mov edx , offset message1 ;mostrando mensaje p1
			call writestring ; mostrando mensaje p2
			call crlf ; salto de linea
			call readint    ; readint almacena en eax
			mov ecx , eax   ; respaldar en ecx el valor de eax



			;Mostrar un mensaje - 2
			mov edx , offset message2 ;mostrando mensaje p1
			call writestring ; mostrando mensaje p2
			call crlf ; salto de linea
			call readint   
			
			mul ecx   ;  eax que multiplica a exc =  a m que multiplica a x 
			mov ecx , eax



			;Mostrar un mensaje - 3
			mov edx , offset message3 
			call writestring
			call crlf ; salto de linea
			
			call readint ; valor de b

			add eax , ecx  ;para imprimir el resultado SIEMPRE TIENE QUE ESTAR EN EAX


			;Mostrar un mensaje - 4
			mov edx , offset message4 
			call writestring
			call crlf ; salto de linea
			
			call writeint ;IMPRIMIMOS EL VALOR FINAL



		exit	
	
	main9 ENDP
	
	END main9
