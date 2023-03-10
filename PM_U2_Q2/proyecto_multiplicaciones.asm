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
msg1 db "Ingrese que tabla de multiplicar desea contestar: ",0
msg2 db " x ",0
msg3 db " = ",0
msg5 db "¡Correcto!",0
msg6 db "Incorrecto, intenta nuevamente.",0
msg7 db "llevas: ",0
msg8 db " oportunidades",0
msg10 db "Muy bien haz acabado todas las multiplicaciones!!",0
msg11 db "Quieres brincarte o deseas intentarlo nuevamente? (1 o 2): ",0
num DWORD 0
resultado DWORD 0d
respuesta DWORD 0d
vidas DWORD 0d

.code
main107 PROC
	
	; Lógica del Programa
	mov edx, OFFSET msg1 ; Imprime el mensaje pidiendo el número
    call WriteString
    call ReadInt ; Lee el número ingresado por el usuario
    mov num, eax ; Guarda el número en la variable num
    
    mov ecx, 1 ; Inicia el contador de la tabla de multiplicar en 1

mientras:
    mov eax, num ; Multiplica el número ingresado por el contador
    mul ecx
    mov resultado, eax ; Guarda el resultado de la multiplicación en la variable resultado
    
    mov eax, num ; Imprime el número ingresado
    call WriteDec
    mov edx, OFFSET msg2 ; Imprime la "x"
    call WriteString
    mov eax, ecx ; Imprime el contador actual
    call WriteDec
    mov edx, OFFSET msg3 ; Imprime el "="
    call WriteString
    
    
    call ReadInt ; Lee la respuesta ingresada por el usuario se guarda en eax

    cmp eax, resultado
    je correcto
    jne incorrecto

    correcto:
    mov edx, OFFSET msg5
    call WriteString
    call crlf
    add ecx, 1 ; Incrementa el contador
    cmp ecx, 11 ; Compara el contador con 11 (10 veces)
    jne mientras ; Si el contador es menor a 11, repite el ciclo
    jmp fin_juego

    incorrecto:
    mov edx, OFFSET msg6 ;
    call WriteString
    call crlf
    inc vidas
    mov eax , vidas

    mov edx, OFFSET msg7 ;
    call WriteString
    call writedec
    mov edx, OFFSET msg8 ;
    call WriteString
    call crlf
    call crlf
    cmp vidas , 5
    jg msg_pregunta
    jne mientras ;  Si el contador es menor a 11, repite el ciclo
  
    msg_pregunta:
    mov edx, OFFSET msg11 ;
    call WriteString 
    call readint ; el usuario responde si quiere saltar la tabla o intentar nuevamente
    
    cmp eax, 1
    je correcto ; si eligio que 1 se va a la etiqueta de correcto y salta a la siguiente multiplicacion

    cmp eax,2 ; si eligio que 2 se va a la etiqueta de mientras y vuelve a preguntar la misma multiplicacion
    je mientras

    

  fin_juego:
    mov edx, OFFSET msg10 ;
    call WriteString 
    
   
  salir:
  exit
  
	
main107 ENDP
END main107