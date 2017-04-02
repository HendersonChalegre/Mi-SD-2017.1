###############################################
# Fibonacci
###############################################

		.data
		.global main
		.text
		
main:		movia r0, 0
		movia r1, 1
		movia r10,4               # coloca o valor maximo
		movia r11, 2	          # contador			
		movia r12, 0	          # primeira posição	
		movia r13, 1	          # segunda posicao
		
			
		#bgt r10, r0, LA
		#bgt r10, r1, LA
		#bgt r10, r11, LB
		
		
loop:		addi r11, r11,1	          # contador incrementa 	
		bgt r11, r10, fim         # se o contador chegar a posição maxima, pula pro fim
		add r14, r12,r13          # coloca no reg de saida a soma de r12 e 13
		mov r12, r13	          # r12 passa a ter o valor da proxima posição 		
		mov r13, r14	          # r13 passa a ter o valor da proxima posição 
		
		
		
		br loop		          # retorna o loop		

LA:		movia r14, 0	          # coloca no reg de saida o valor da primeira posição	
		br fim		   	  # pula pro fim
		
LB: 		movia r14, 1		  # coloca no reg de saida o valor da segunda posição	
		br fim		   	  # pula pro fim
		
fim:		nop