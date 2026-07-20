FUNCTION Main()

	LOCAL cInput
	LOCAL nSalarioAtual, nNovoSalario, nReajuste

	ACCEPT "Digite o salario atual: " TO cInput
	nSalarioAtual := Val(cInput)

	IF nSalarioAtual < 1000
		nReajuste := 0.15
	ELSEIF nSalarioAtual <= 2000
		nReajuste := 0.12
	ELSEIF nSalarioAtual <= 4000
		nReajuste := 0.08
	ELSE
		nReajuste := 0.05
	ENDIF

	nNovoSalario := nSalarioAtual + (nSalarioAtual * nReajuste)

	QOut("")
	QOut("O novo salario e: ", nNovoSalario)
	QOut("")

RETURN NIL
