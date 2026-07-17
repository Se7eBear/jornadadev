FUNCTION Exercicio3()
	LOCAL cNome, cDataNasc, cPreco
	LOCAL dNasc
	LOCAL nPreco, nIdade, nDesconto := 0, nTotal

	ACCEPT "Digite o nome do cliente: " TO cNome
	ACCEPT "Digite a data de nascimento (DD/MM/AAAA): " TO cDataNasc
	ACCEPT "Digite o preco do produto: " TO cPreco

	dNasc := CToD(cDataNasc)
	nPreco := Val(cPreco)
	nIdade := Int( (Date() - dNasc) / 365 )
	IF nIdade > 60
		nDesconto := nPreco * 0.125
	ENDIF
		nTotal := nPreco - nDesconto
	QOut("")
	QOut("--- RESUMO DO PEDIDO ---")
	QOut("Cliente: " + cNome)
	QOut("Idade: " + LTrim(Str(nIdade)) + " anos")
	QOut("Preco original: R$ " + Str(nPreco, 10, 2))
	QOut("Desconto aplicado: R$ " + Str(nDesconto, 10, 2))
	QOut("Total a pagar: R$ " + Str(nTotal, 10, 2))
	QOut("------------------------")
RETURN NIL