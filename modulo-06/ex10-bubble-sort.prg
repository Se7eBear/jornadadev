FUNCTION Main()
	LOCAL aV := {}
	LOCAL nI, cValor

	QOut("=== BUBBLE SORT ===")

	FOR nI := 1 TO 10
		ACCEPT "Digite o numero " + LTrim(Str(nI)) + ": " TO cValor
		AAdd(aV, Val(cValor))
	NEXT

	QOut("")
	QOut("--- Antes de ordenar ---")
	FOR nI := 1 TO Len(aV)
		QOut(LTrim(Str(aV[nI])))
	NEXT

	aV := BubbleSort(aV)

	QOut("")
	QOut("--- Depois de ordenar ---")
	FOR nI := 1 TO Len(aV)
		QOut(LTrim(Str(aV[nI])))
	NEXT

RETURN NIL

FUNCTION BubbleSort(aVetor)
	LOCAL nI, nJ
	LOCAL nTemp

	FOR nI := 1 TO Len(aVetor) - 1
		FOR nJ := 1 TO Len(aVetor) - nI
			IF aVetor[nJ] > aVetor[nJ + 1]
				nTemp := aVetor[nJ]
				aVetor[nJ] := aVetor[nJ + 1]
				aVetor[nJ + 1] := nTemp
			ENDIF
		NEXT
	NEXT

RETURN aVetor