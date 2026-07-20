FUNCTION Main()
	LOCAL cInput
	LOCAL nValor
	LOCAL nTotal := 0
	LOCAL nQtd := 0

	DO WHILE .T.
		ACCEPT "Digite um valor (0 para finalizar): " TO cInput
		nValor := Val(cInput)

		IF nValor == 0 .AND. AllTrim(cInput) != "0"
			QOut("Entrada invalida. Letras nao sao permitidas.")
			QOut("")
			LOOP
		ENDIF

		IF nValor == 0
			EXIT
		ENDIF

		nTotal := nTotal + nValor
		nQtd := nQtd + 1
	ENDDO

	QOut("")
	QOut("Soma total dos valores: ", nTotal)
	QOut("Quantidade de valores somados: ", nQtd)

RETURN NIL
