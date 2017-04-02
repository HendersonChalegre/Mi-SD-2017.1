###############################################
# Fatorial
###############################################

		.data
		.global main
		.text
		
main:	movia r5, 0
	movia r6, 1	
	movia r10, 4		# base
	movia r11,2		# expoente
	movia r12,1    		# contador
		
	ble r10, r5, LA		# base = 0
	ble r10, r6, LB		# base = 1
	ble r11, r5, LB		# expoente = 0
	ble r11, r6, LC		# expoente = 1
	
		
		
loop:	#falta pensar nessa logica

LA:	movia r15, 0
	br fim
	
LB:	movia r15, 1
	br fim
	
LC:	mov r15, r10
	br fim

	
		
fim:	nop
