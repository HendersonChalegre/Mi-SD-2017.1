.global bubble
.text

bubble:
# inicializa r17, r16, e r15

	mov r17,r5		# move r5 (tamanho do array) para r17 
	
	subi r16,r17,1		# r16 recebe o valor inicial i = r5 - 1 
	
	addi r15,r0,1		# boolean para madeswap inicialmente setado para true (=1) 



# outer para o loop (for(int i=N-1; i>0 && madeswap; i--)) 
compare:

	
	cmpgti r18,r16,0
 	# if value of r16 > 0, set r18 value to 1, else set r18 to 0 
	and r18,r18,r15
		# logical and between r18 and r15 -- continue loop while madeswap is still true (=1) 
	beq r18,r0,stop		# if r18 is 0, branch to stop 




# inner para o loop--sweeping através das cells [0,i] (for(int j=0; j<i; j++)) 
# inicializa r19 para o contador do inner loop 
# trocando do index para o displacement para fazer a comparação sequencial dos endereços mais fácil

	mov r15,r0		# madeswap boolean setado para false (=0) 
	
	mov r19,r0		# contador inner (j) inciado em j = 0 
	
	slli r16,r16,2		# left shift por 2 (multiplicando por 4) 

dj1:			
	cmpge r20,r19,r16	# if r19>r16 guarda um '1' em r20, senão guarda '0' (loop while r20 setado para 0-- condição(j<i))  	 
	
	bne r20,r0,dj2		# branch para dj2 se r20 != 0 (fim da varredura) 

# ifs aninhados (se duas cells estão na ordem errada) (if X[j] > X[j+1]) 
	
	add r22,r4,r19		# r22 segura a soma de r4 + r19 -- acesso para o array
 
	ldw r17,0(r22)		# da o load X[j] para r17
 
	ldw r21,4(r22)		# faz o load X[j+1] para r21 

	
	cmpge r23,r21,r17	# se a condição r21 > r17 for verdadeira, guarda o resultado em r23 (if r21>r17, guarda 0 em r23)
	
	bne r23,r0,dj3		# se 0 esta em r23, as cells estão na ordem correta -- faz o salto) 

	
	
	stw r21,0(r22)		# swap das cells (x[j+1]=x[j]). conteúdo de 0(r22) guardado em r21 
	stw r17,4(r22)		# swap das cells (x[j]=x[j+1]). conteúdo de 4(r22) guardado em r17 				


	
	addi r15,r0,1		# madeswap setado para true (=1)

 

dj3:	
# Para onde iremos caso as cell estejam na ordem correta
	
	
	addi r19,r19,4
	
	br dj1			# loop back to dj1 to iterate through inner for loop again 


dj2:

# Para onde iremos no fim da varredura (fim do inner loop)  
	
	srai r16,r16,2		# rightshift por 2 (dividido por 4) retorna r16 para o deslocalmento original
	
	subi r16,r16,1
	
	br compare		# faz o branch back para comparação para ter certeza que os elementos foram corretamente ordenados

stop:
	ret
.end
