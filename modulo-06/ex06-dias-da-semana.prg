FUNCTION Main()
	LOCAL aDias := {"Domingo", "Segunda", "Terca", "Quarta", "Quinta", "Sexta", "Sabado"}
	LOCAL nIndice, cIndice

	QOut("=== DIA DA SEMANA ===")
	ACCEPT "Digite um numero de 1 a 7: " TO cIndice
	nIndice := Val(cIndice)

	IF nIndice >= 1 .AND. nIndice <= 7
		QOut("O dia correspondente e: " + aDias[nIndice])
	ELSE
		QOut("Numero invalido! Digite um valor entre 1 e 7.")
	ENDIF

RETURN NIL