FUNCTION Main()

	LOCAL cInput1, cInput2
	LOCAL nValor1, nValor2

	ACCEPT "Digite o primeiro valor numerico: " TO cInput1
	ACCEPT "Digite o segundo valor numerico:  " TO cInput2

	nValor1 := Val(cInput1)
	nValor2 := Val(cInput2)

	QOut("")

	IF nValor1 == nValor2
		QOut("Os dois valores digitados sao IGUAIS.")
	ELSE
		IF nValor1 > nValor2
			QOut("O MAIOR valor: ", nValor1)
			QOut("O MENOR valor: ", nValor2)
		ELSE
			QOut("O MAIOR valor: ", nValor2)
			QOut("O MENOR valor: ", nValor1)
		ENDIF
	ENDIF

	QOut("")

RETURN NIL
