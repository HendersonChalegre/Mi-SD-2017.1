	.data
	.global main
	.equ SERIAL, 0x860

	.text
	
# n é r4
# $v0=r2, $a0=r4, ra=r31

main:
	movia r8, SERIAL
	movia r6, -38 #Enter
	beq r4, r0, input
	call  fib    # fib(n)
	call   exit   #pula para o fim do programa
	
	
	
input:	ldw r9, 8(r8)
	andi r9, r9, 0b10000000 
	beq r9, r0, input #verifica se tem entrada
	ldw r10, 0(r8) #salva a entrada no r10
	addi r10, r10, -48 #converte para decimal
	beq r10, r6, main #verifica se digitou enter
	muli r4, r4, 10 
	add r4, r4, r10
	br input


fib:	
	movia r5, 1           #r5=1
	cmplt r3, r5,r4       #if(r3<1) r3=1 else r3=0
	bgt   r3, r0, fib_recurse #if(r3!=0) goto fib_recurse
	mov   r2,r4               #r2=n
	jmp  ra              #goto endereco de retorno

fib_recurse:
	addi sp,sp,-12  #libera 3 espacos na pilha
	stw  ra,0(sp)   #salva o reg r31
	stw  r4,4(sp)   #salva o argumento n na pilha
	
	addi r4,r4,-1    #n=n-1
	call fib         #fib(n-1)
	ldw  r4,4(sp)    #carrega n na pilha
	stw  r2,8(sp)    #salva o resultado de n-1 na pilha

	addi r4,r4,-2    #n=n-2
	call fib         #fib(n-2)
	
	ldw  r8,8(sp)    #carrega o resultado de fib(n-1) da pilha
	add r2,r8,r2     #soma o res de fib(n-2)com fib(n-1) e salva em r2
	ldw ra,0(sp)     #carrega o endereco de retorno na pilha
	addi sp,sp,12    #restaura o ponteiro da pilha
	jmp  ra
exit:
