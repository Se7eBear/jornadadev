FUNCTION Main()
	LOCAL aCarrinho := {}
	LOCAL cNome, cPreco, cContinuar
	LOCAL nPreco, nTotal := 0
	LOCAL nI

	QOut("=== MINI CARRINHO DE COMPRAS ===")

	DO WHILE .T.
		QOut("")
		ACCEPT "Nome do produto: " TO cNome
		ACCEPT "Preco do produto: " TO cPreco
		nPreco := Val(cPreco)

		AAdd(aCarrinho, {cNome, nPreco})

		QOut("")
		ACCEPT "Adicionar outro item? (S/N): " TO cContinuar
		cContinuar := Upper(AllTrim(cContinuar))

		IF cContinuar != "S"
			EXIT
		ENDIF
	ENDDO

	QOut("")
	QOut("=== ITENS DO CARRINHO ===")
	FOR nI := 1 TO Len(aCarrinho)
		QOut(aCarrinho[nI][1] + " - R$ " + Str(aCarrinho[nI][2], 10, 2))
		nTotal += aCarrinho[nI][2]
	NEXT

	QOut("")
	QOut("Total: R$ " + Str(nTotal, 10, 2))

RETURN NIL