# Fatorial

.equ SERIAL, 0x860



	
main:
	movia r8, SERIAL # R8 apontara para a entrada serial
	movia r6, -38 #Enter
	beq r2, r0, input
	mov r1, r2 
	movia r11, 10
	movia r2, 1
	
	call fatorial
	
###############################################################################################
###############################################################################################	

input:	ldw r9, 8(r8)
	andi r9, r9, 0b10000000 
	beq r9, r0, input #verifica se tem entrada
	ldw r10, 0(r8) #salva a entrada no r10
	addi r10, r10, -48 #converte para decimal
	beq r10, r6, main #verifica se digitou enter
	muli r2, r2, 10 
	add r2, r2, r10
	br input

###############################################################################################
###############################################################################################	

fatorial:
	beq r1, r0, trocar # Se o valor do fatorial eh igual a 0, termine
	mul r2, r2, r1 # Multiplico r2 com r1 e salvo em r2
	subi r1, r1, 1 # Subtrai 1 de R1
	call fatorial
	jmp ra

###############################################################################################
###############################################################################################	

trocar:	mov r3, r2
	
enpilharout:
	beq r3, r0, output # Se resultado igual a zero vai para saida
	div r10, r3, r11 # divide por 10
	mul r12, r10, r11 
	sub r10, r3, r12 #salva o resto da divisao
	div r3, r3, r11 # salva o a saida -1 digito
	addi sp, sp, -8 
	addi r4, r4, 1 #quantidade de digitos
	stw r10, 0(r27) # adciona na lista digito por digito
	br enpilharout
	
output:	ldw r9, 8(r8) 
	andi r9, r9, 0b01000000
	beq r9, r0, output
	ldw r10, 0(r27) # lê da pilha um digito
	subi r4, r4, 1 
	addi sp, sp, 8
	addi r10, r10, 48
	stw r10, 4(r8)  #envia para o UART o digito
	beq r4, r0, exit # ate digito igual a > que 0
	br output
	
###############################################################################################
###############################################################################################	

exit:
