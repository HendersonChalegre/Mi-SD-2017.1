###############################################
# Exponencial
###############################################

		.data
		.global main
		.text
		
main:	movia r5, 0
	movia r6, 1	
	movia r10, 8		# base
	movia r11,2		# expoente
	movia r15,0
		
	ble r10, r5, LA		# base = 0
	ble r10, r6, LB		# base = 1
	ble r11, r5, LB		# expoente = 0
	ble r11, r6, LC		# expoente = 1
	
	mov r12, r11
	mov r13, r10
	subi r12,r12,1
	mov r14, r10
	subi r12,r12,1	
		
loop:	add r15, r15,r13
	subi r14,r14,1
	ble r14, r5, LH		
	br loop


LH:  ble r12, r5, fim		
	mov r14, r12
	subi r12,r12,1
	br loop	

LA:	movia r15, 0
	br fim
	
LB:	movia r15, 1
	br fim
	
LC:	mov r15, r10
	br fim

	
		
fim:	nop
