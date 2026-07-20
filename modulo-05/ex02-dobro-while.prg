FUNCTION Main()

	LOCAL cInput
	LOCAL nValor

	DO WHILE .T.
		ACCEPT "Digite um valor inteiro (0 ou negativo para parar): " TO cInput
		nValor := Val(cInput)

		IF nValor == 0 .AND. AllTrim(cInput) != "0"
			QOut("Entrada invalida. Letras nao sao permitidas.")
			QOut("")
			LOOP
		ENDIF

		IF nValor <= 0
			EXIT
		ENDIF

		QOut("O dobro de ", nValor, " e ", nValor * 2)
		QOut("")
	ENDDO

	QOut("Programa encerrado.")

RETURN NIL
