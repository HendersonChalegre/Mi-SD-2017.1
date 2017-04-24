.data
    
Array:  .word   14, 12, 13, 5, 9, 11, 3, 6, 7, 10, 1, 4, 8, 2
ts: .word 5
 
.text
main:
	movia r8,Array  #copia a base do array para r8
	movia r2, 14 #max
	addi  r8,r8,56  #copia em r8 o tamanho maximo do array 14 vezes 4

loopExterno:
	add r9,r0,r0    #r9 guarda uma flag para determinar quando a lista foi ordenada
      movia r4, Array   #modifica r4 com a base do endereço do vetor

loopInterno:
	addi r1, r1, 1
	beq r1, r2, fim
	ldw r10, 0(r4)  #coloca em r10 o elemento atual do vetor
	ldw r11, 4(r4)  #coloca em r11 o prox elemento do vetor
	
      cmplt r12,r10,r11 #r12 recebe o valor 1 caso r10<r11

	bne r12, r0, continue #se r12=1, faça o swap
       addi r8,r0,1      #flag para determinara que temos que checar novamente
	stw r10, 4(r4)    #guarda o maior valor na posição
	stw r11, 0(r4)    #guarda o menor valor da posição

continue:
	addi r4,r4,4      #avança para proxima posição do vetor
	bgt r4,r8, loopInterno  #se !=r8,  vai para o loop interno
	bgt r9,r0,loopExterno   #r9 ==1, é necessário mais uma verificação
	
fim:

	
	
