.data
	.global main
	.equ SERIAL, 0x860

	.text

main:	movia r5,0		
	movia r18,1
	movia r12, 1
	movia r11, 0
	movia r20,0
	movia r21,0
	movia r22, 2
	
	movia r8, SERIAL
	movia r6, -38 #Enter
	beq r4, r0, input
	
	
###############################################################################################
###############################################################################################	
input:	ldw r9, 8(r8)
	andi r9, r9, 0b10000000 
	beq r9, r0, input #verifica se tem entrada
	ldw r10, 0(r8) #salva a entrada no r10
	addi r10, r10, -48 #converte para decimal
	beq r10, r6, addw #verifica se digitou enter
	muli r4, r4, 10 
	add r4, r4, r10
	br input
	
addw:   add r21, r21,r4
	bge r11, r20,imput2
	bge r20, r18,raizOP

imput2: mov r20,r21
	movia r21,0
	movia r4,0
	br input
###############################################################################################
###############################################################################################	

raizOP:		mov r13, r21
		br raiz
	
raiz: 	 	addi r11, r11,1
		bge r12,r13, result
		beq r12, r13, result 
		sub r13,r13,r12 
		addi r12, r12,2        
		beq r13, r5, result
		beq r13, r6, result       
		
		br raiz		          # retorna o loop		

result:		mov r10, r11     
		beq r10, r6, raiz1        
		br primo		  #metodo de verificacao	
			

#################################################################################################
#################################################################################################		
primo:		 movia r9,2
		 
		 mov r11,r21	
		 br Rest

inicio:		 movia r11,2	
		 br Rest

verifica: 	beq r17,r5, proximo
		addi r9, r9, 1
		beq r9, r11, addpilha
		bge r9, r10, addpilha
		br Rest

proximo:        subi r11, r11,1
		movia r9,2
		bge r20,r11, fim
		br Rest

addpilha:	mov r3,r11	#salva numero primo no r3 para enviar na saida UART
		movia r23, 10
		br enpilharout	 	
#################################################################################################
#################################################################################################		
		
Rest:		beq r11,r9, igual
		div r15,r11,r9         
		mul r16, r15, r9   
		sub r17, r11,r16
		br verifica
		
igual: 		beq r11,r22, addpilha
		movia r17, 0	
       		br verifica	
#################################################################################################
#################################################################################################			
raiz1: 

#################################################################################################
#################################################################################################	

enpilharout:
	beq r3, r0, output # Se resultado igual a zero vai para saida
	div r10, r3, r23 # divide por 10
	mul r4, r10, r23
	sub r10, r3, r4 #salva o resto da divisao
	div r3, r3, r23 # salva o a saida -1 digito
	addi sp, sp, -8  
	addi r1, r1, 1 #quantidade de digitos 
	stw r10, 0(r27) # adciona na lista digito por digito
	br enpilharout
	
output:	ldw r9, 8(r8)
	andi r9, r9, 0b01000000
	beq r9, r0, output
	ldw r10, 0(r27) # lê da pilha um digito
	subi r1, r1, 1
	addi sp, sp, 8
	addi r10, r10, 48
	stw r10, 4(r8)  #envia para o UART o digito
	beq r1, r0, nextline # ate digito igual a > que 0 vai para proxima linha
	br output

nextline: 
	movia r4, -38 # valor de ENTER
	addi r4, r4, 48
	stw r4, 4(r8) # envia uma linha
	br proximo # proximo numero primo
fim:	
