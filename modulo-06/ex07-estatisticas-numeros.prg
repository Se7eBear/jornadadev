FUNCTION Main()
	LOCAL aV := {}
	LOCAL nI, cValor
	LOCAL nSoma := 0
	LOCAL nMedia

	QOut("=== ESTATISTICAS DE 10 NUMEROS ===")

	FOR nI := 1 TO 10
		ACCEPT "Digite o numero " + LTrim(Str(nI)) + ": " TO cValor
		AAdd(aV, Val(cValor))
	NEXT

	FOR nI := 1 TO Len(aV)
		nSoma += aV[nI]
	NEXT
	nMedia := nSoma / Len(aV)

	ASort(aV)

	QOut("")
	QOut("--- Numeros em ordem crescente ---")
	FOR nI := 1 TO Len(aV)
		QOut(LTrim(Str(aV[nI])))
	NEXT

	QOut("")
	QOut("Soma: " + LTrim(Str(nSoma)))
	QOut("Media: " + LTrim(Str(nMedia)))
	QOut("Maior: " + LTrim(Str(aV[Len(aV)])))
	QOut("Menor: " + LTrim(Str(aV[1])))

RETURN NIL