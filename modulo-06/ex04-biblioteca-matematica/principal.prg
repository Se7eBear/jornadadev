FUNCTION Main()
	LOCAL nN, cN
	LOCAL nA, cA, nB, cB

	QOut("--- TESTE: FATORIAL ---")
	ACCEPT "Digite um numero para o fatorial: " TO cN
	nN := Val(cN)
	QOut("Fatorial de " + LTrim(Str(nN)) + " = " + LTrim(Str(FatorialN(nN))))

	QOut("")
	QOut("--- TESTE: NUMERO PRIMO ---")
	ACCEPT "Digite um numero para verificar se e primo: " TO cN
	nN := Val(cN)
	IF EhPrimo(nN)
		QOut(LTrim(Str(nN)) + " e primo.")
	ELSE
		QOut(LTrim(Str(nN)) + " nao e primo.")
	ENDIF

	QOut("")
	QOut("--- TESTE: MMC ---")
	ACCEPT "Digite o primeiro numero: " TO cA
	ACCEPT "Digite o segundo numero: " TO cB
	nA := Val(cA)
	nB := Val(cB)
	QOut("MMC de " + LTrim(Str(nA)) + " e " + LTrim(Str(nB)) + " = " + LTrim(Str(MMC(nA, nB))))

	QOut("")
	QOut("--- TESTE: MDC ---")
	QOut("MDC de " + LTrim(Str(nA)) + " e " + LTrim(Str(nB)) + " = " + LTrim(Str(MDC(nA, nB))))

RETURN NIL