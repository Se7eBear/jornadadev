FUNCTION Main()

	LOCAL cIdade, cDependentes
	LOCAL nIdade, nDependentes
	LOCAL nValorBase, nValorTotal

	DO WHILE .T.
		ACCEPT "Digite a idade do titular: " TO cIdade
		nIdade := Val(cIdade)
		IF nIdade == 0 .AND. AllTrim(cIdade) != "0"
			QOut("Entrada invalida. Letras nao sao permitidas.")
		ELSE
			EXIT
		ENDIF
	ENDDO

	DO WHILE .T.
		ACCEPT "Digite o numero de dependentes: " TO cDependentes
		nDependentes := Val(cDependentes)
		IF nDependentes == 0 .AND. AllTrim(cDependentes) != "0"
			QOut("Entrada invalida. Letras nao sao permitidas.")
		ELSE
			EXIT
		ENDIF
	ENDDO

	IF nIdade <= 25
		nValorBase := 180
	ELSEIF nIdade <= 40
		nValorBase := 260
	ELSEIF nIdade <= 60
		nValorBase := 380
	ELSE
		nValorBase := 520
	ENDIF

	nValorTotal := nValorBase + (nDependentes * 90)

	QOut("")
	QOut("O valor mensal total do plano e: R$ ", nValorTotal)

RETURN NIL
