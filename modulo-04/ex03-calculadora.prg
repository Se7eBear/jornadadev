FUNCTION Main()

	LOCAL cNum1, cNum2, cOp
	LOCAL nNum1, nNum2

	ACCEPT "Digite o primeiro numero: " TO cNum1
	ACCEPT "Digite a operacao (+, -, *, /, ^, R): " TO cOp
	ACCEPT "Digite o segundo numero (ignore para R): " TO cNum2

	nNum1 := Val(cNum1)
	nNum2 := Val(cNum2)

	QOut("")

	DO CASE
		CASE cOp == "+"
			QOut("Resultado: ", nNum1 + nNum2)
		CASE cOp == "-"
			QOut("Resultado: ", nNum1 - nNum2)
		CASE cOp == "*"
			QOut("Resultado: ", nNum1 * nNum2)
		CASE cOp == "/"
			IF nNum2 == 0
				QOut("Erro: Divisao por zero.")
			ELSE
				QOut("Resultado: ", nNum1 / nNum2)
			ENDIF
		CASE cOp == "^"
			QOut("Resultado: ", nNum1 ^ nNum2)
		CASE Upper(cOp) == "R"
			QOut("Resultado: ", Sqrt(nNum1))
		OTHERWISE
			QOut("Operacao invalida.")
		ENDCASE

RETURN NIL
