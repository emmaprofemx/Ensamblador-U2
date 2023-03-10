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
msg1 db "Ingrese un numero: ",0
msg2 db " x ",0
msg3 db " = ",0
msg5 db "¡Correcto!",0
msg6 db "Incorrecto, intenta nuevamente.",0
msg7 db "Te quedan : ",0
msg8 db " oportunidades",0
msg9 db "se acabo el juego se te acabaron las vidas",0
msg10 db "Muy bien haz acabado todas las multiplicaciones!!",0
num DWORD 0
resultado DWORD 0d
respuesta DWORD 0d
vidas DWORD 5d

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
    add ecx, 1 ; Incrementa el contador
    cmp ecx, 11 ; Compara el contador con 11 (10 veces)
    jne mientras ; Si el contador es menor a 11, repite el ciclo
    jmp fin_juego

    incorrecto:
    mov edx, OFFSET msg6 ;
    call WriteString
    call crlf
    dec vidas
    mov eax , vidas

    mov edx, OFFSET msg7 ;
    call WriteString
    call writedec
    mov edx, OFFSET msg8 ;
    call WriteString
    call crlf
    call crlf
    cmp vidas , 0
    je msg_vidas_agotadas
    jne mientras ;  Si el contador es menor a 11, repite el ciclo
  
    msg_vidas_agotadas:
    mov edx, OFFSET msg9 ;
    call WriteString  
    jmp salir

  fin_juego:
    mov edx, OFFSET msg10 ;
    call WriteString 
    
   
  salir:
  exit
  
	
main107 ENDP
END main107