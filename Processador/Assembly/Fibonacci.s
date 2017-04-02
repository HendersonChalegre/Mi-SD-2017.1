###############################################
# Fibonacci
###############################################

		.data
		.global main
		.text
		
main:	movia r5, 0
		movia r6, 1
		movia r10,10              # coloca o valor maximo
		movia r11, 2	          # contador			
		movia r12, 0	          # primeira posi��o	
		movia r13, 1	          # segunda posicao
		
			
		ble r10, r5, LA		  # verifica se a posi��o maxima � a zero
		ble r10, r6, LA		  # verifica se a posi��o maxima � a um
		ble r10, r11, LB	  # verifica se a posi��o maxima � a dois
		
		
loop:	addi r11, r11,1	          # contador incrementa 	
		bgt r11, r10, fim         # se o contador chegar a posi��o maxima, pula pro fim
		add r14, r12,r13          # coloca no reg de saida a soma de r12 e 13
		mov r12, r13	          # r12 passa a ter o valor da proxima posi��o 		
		mov r13, r14	          # r13 passa a ter o valor da proxima posi��o 
		
		
		
		br loop		          # retorna o loop		

LA:		movia r14, 0              # coloca no reg de saida o valor da primeira posi��o	
		br fim		   	  # pula pro fim
		
LB: 		movia r14, 1		  # coloca no reg de saida o valor da segunda posi��o	
		br fim		   	  # pula pro fim
		
fim:		nop
