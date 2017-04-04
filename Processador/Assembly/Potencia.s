###############################################
# Exponencial
###############################################

		.data
		.global main
		.text
		
main:	movia r5, 0
	movia r6, 1	
	movia r10, 5		# base
	movia r11,5		# expoente
	movia r15,0
		
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


LH:     ble r12, r5, fim	# verifica se já finalizou o programa
	mov r14, r10		# coloca o valor da base para fazer o ciclo de multiplicacao
	mov r13, r15		# troca o valor da base a ser multiplicada
	movia r15,0		# zera o registrador de saida
	subi r12,r12,1		# reduz o valor para diminuir os ciclos
	
	br loop			# volta pra multiplicacao

LA:	movia r15, 0		# o registrador de saida eh colocado como zero 
	br fim			# finaliza
	
LB:	movia r15, 1		# o registrador de saida eh colocado como um 
	br fim			# finaliza
	
LC:	mov r15, r10		# o registrador de saida eh colocado como o valor da base
	br fim			# finaliza

	
		
fim:	nop			# nao faz nada
