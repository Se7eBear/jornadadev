FUNCTION Main()
	LOCAL cName1 := "wagner"
	LOCAL cName2 := "wag"
	LOCAL cName3 := "bruno"
	LOCAL cName4 := "bru"

	IF cName1 = cName2
		QOut("True")
	ELSE
		QOut("False")
	ENDIF
	/* Nesse primeiro if, a variável à direita é cName2 ("wag").
	O que acontece exatamente é o seguinte:
	Ele vai comparar as duas variáveis cName1 e cName2,
	mas primeiro ele vai pegar como base o tamanho (quantidade de caracteres)
	da cName2 (que é a menor, com 3 letras) e comparar letra por letra 
	com a outra variável (cName1, que é maior).
	Como as 3 primeiras letras da variável maior se correspondem e são iguais,
	o resultado é TRUE.*/
	IF cName4 = cName3
		QOut("True")
	ELSE
		QQout("False")
	ENDIF
	/* Nesse segundo if, a variável da DIREITA é cName3 ("bruno", que tem 5 letras).
	O Harbour exige que a variável da esquerda tenha pelo menos 5 letras 
	para poder bater com "bruno".
	Como a variável da esquerda é cName4 ("bru", que só tem 3 letras), 
	ela é menor que a variável da direita. O Harbour percebe isso na hora 
	e já define a comparação como FALSA. 
	Portanto, a condição do IF falha e ele entra no segundo bloco (o ELSE), 
	imprimindo a palavra FALSE.*/
RETURN NIL