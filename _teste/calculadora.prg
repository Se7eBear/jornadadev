FUNCTION Main()

	LOCAL nA
	LOCAL nB
	LOCAL ca, cb

	ACCEPT "Digite A: " TO cA
	ACCEPT "Digite B: " TO cB
	nA := Val(cA)
	nB := Val(cB)
	QOut("Soma     : " + Str( nA + nB, 10, 2))
	QOut("Subtracao: " + Str( nA - nB, 10, 2))
	QOut("Produto  : " + Str( nA * nB, 10, 2))
	IF nB != 0
		QOut("Divisao. :" + Str(nA / nB, 10, 2))
	ELSE
		QOut("Nao pode ne")
	ENDIF

RETURN NIL