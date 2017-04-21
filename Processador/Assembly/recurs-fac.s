# Fatorial

.equ SERIAL, 0x860


#Resultado estara em R3
	
main:
	movia r8, SERIAL # R8 apontara para a entrada serial
	movia r6, -38 #Enter
	beq r2, r0, input
	mov r1, r2
	movia r2, 1
	
	call fatorial

input:	ldw r9, 8(r8)
	andi r9, r9, 0b10000000 
	beq r9, r0, input #verifica se tem entrada
	ldw r10, 0(r8) #salva a entrada no r10
	addi r10, r10, -48 #converte para decimal
	beq r10, r6, main #verifica se digitou enter
	muli r2, r2, 10 
	add r2, r2, r10
	br input


fatorial:
	beq r1, r0, exit # Se o valor do fatorial eh igual a 0, termine
	mul r2, r2, r1 # Multiplico r2 com r1 e salvo em r2
	subi r1, r1, 1 # Subtrai 1 de R1
	call fatorial
	jmp ra

exit:
