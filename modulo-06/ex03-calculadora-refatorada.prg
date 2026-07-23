FUNCTION Main()
	Exercicio3Calc()
RETURN NIL

FUNCTION Exercicio3Calc()
	LOCAL cNum1, cNum2, cOp
	LOCAL nNum1, nNum2
	LOCAL nResultado

	ACCEPT "Digite o primeiro numero: " TO cNum1
	ACCEPT "Digite a operacao (+, -, *, /): " TO cOp
	ACCEPT "Digite o segundo numero: " TO cNum2

	cOp := AllTrim(cOp)

	nNum1 := Val(cNum1)
	nNum2 := Val(cNum2)

	nResultado := Calcular(nNum1, nNum2, cOp)

	MostrarResultado(nNum1, cOp, nNum2, nResultado)

RETURN NIL

FUNCTION Calcular(nNum1, nNum2, cOp)
	LOCAL nResultado

	DO CASE
	CASE cOp == "+"
		nResultado := nNum1 + nNum2

	CASE cOp == "-"
		nResultado := nNum1 - nNum2

	CASE cOp == "*"
		nResultado := nNum1 * nNum2

	CASE cOp == "/"
		IF nNum2 == 0
			nResultado := .F.
		ELSE
			nResultado := nNum1 / nNum2
		ENDIF

	OTHERWISE
		nResultado := .F.
	ENDCASE

RETURN nResultado

FUNCTION MostrarResultado(nNum1, cOp, nNum2, nResultado)
	QOut("")
	QOut("--- RESULTADO DA OPERACAO ---")

	IF ValType(nResultado) == "L" .AND. nResultado == .F.
		QOut("Erro: divisao por zero ou operacao invalida!")
	ELSE
		QOut(LTrim(Str(nNum1)) + " " + cOp + " " + LTrim(Str(nNum2)) + " = " + LTrim(Str(nResultado)))
	ENDIF

	QOut("------------------------------")

RETURN NIL