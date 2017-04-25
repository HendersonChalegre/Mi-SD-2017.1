###############################################
# Exponencial
###############################################

		.data
		.global main
		.equ SERIAL, 0x860
		.text
		
#r1 = base, r2 = expoente
main:	movia r8, SERIAL
	movia r5, 0
	movia r6, 1	
	movia r15,0
	movia r7, -38
	movia r17, 10
	
input1:	ldw r9, 8(r8)
	andi r9, r9, 0b10000000 
	beq r9, r0, input1 #verifica se tem entrada
	ldw r12, 0(r8) #salva a entrada no r10
	addi r12, r12, -48 #converte para decimal
	beq r12, r7, input2 #verifica se digitou enter
	muli r10, r10, 12 
	add r10, r10, r12
	br input1

input2:	ldw r9, 8(r8)
	andi r9, r9, 0b10000000
	beq r9, r0, input2
	ldw r12, 0(r8)
	addi r12, r12, -48
	beq r12, r7, potenciar
	muli r11, r11, 10
	add r11, r11, r12
	br input2

###############################################################################################
###############################################################################################	

potenciar:
	ble r10, r5, LA		# base = 0
	ble r10, r6, LB		# base = 1
	ble r11, r5, LB		# expoente = 0
	ble r11, r6, LC		# expoente = 1
	
	mov r12, r11 		# coloca o valor do exponete nesse registrador auxiliar para fazer o ciclo de contagem
	mov r13, r10		# coloca o valor da base, para o contador
	subi r12,r12,1		# reduz o valor para diminuir os ciclos
	mov r14, r10		# coloca o valor da base para fazer o ciclo de multiplicacao
	subi r12,r12,1		# reduz o valor para diminuir os ciclos
		
loop:	add r15, r15,r13	# soma o valor atual de r13 no r15
	subi r14,r14,1		# subitrai o ciclo de contagem
	ble r14, r5, LH		# verifica se eh zero, para finalizar a recursaividade
	br loop			# reinicia a recussividade

###############################################################################################
###############################################################################################	

LH:     ble r12, r5, enpilharout# verifica se já finalizou o programa
	mov r14, r10		# coloca o valor da base para fazer o ciclo de multiplicacao
	mov r13, r15		# troca o valor da base a ser multiplicada
	movia r15,0		# zera o registrador de saida
	subi r12,r12,1		# reduz o valor para diminuir os ciclos
	
	br loop			# volta pra multiplicacao

LA:	movia r15, 0		# o registrador de saida eh colocado como zero 
	br enpilharout		# finaliza
	
LB:	movia r15, 1		# o registrador de saida eh colocado como um 
	br enpilharout		# finaliza
	
LC:	mov r15, r10		# o registrador de saida eh colocado como o valor da base
	br enpilharout		# finaliza
	
###############################################################################################
###############################################################################################	

enpilharout:
	mov r3, r15 # Salva no r3 para gerar a saida

enpilhar:
	beq r3, r0, output  # Se resultado igual a zero vai para saida
	div r10, r3, r17 # divide por 10
	mul r12, r10, r17
	sub r10, r3, r12 #salva o resto da divisao
	div r3, r3, r17 # salva o a saida -1 digito
	addi sp, sp, -8
	addi r1, r1, 1  #quantidade de digitos 
	stw r10, 0(r27) # adciona na lista digito por digito
	br enpilhar
	
output:	ldw r9, 8(r8)
	andi r9, r9, 0b01000000
	beq r9, r0, output
	ldw r10, 0(r27) # lê da pilha um digito
	subi r1, r1, 1
	addi sp, sp, 8
	addi r10, r10, 48
	stw r10, 4(r8)  #envia para o UART o digito
	beq r1, r0, fim # ate digito igual a > que 0 vai para proxima linha
	br output

###############################################################################################
###############################################################################################	

fim:	nop			# nao faz nada
