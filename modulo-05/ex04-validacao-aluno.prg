FUNCTION Main()
	LOCAL cNome := "", cDisc := "", cAux, n1 := -1, n2 := -1

	DO WHILE Empty(cNome)
		ACCEPT "Digite o nome do aluno: " TO cNome
		cNome := AllTrim(cNome)
	ENDDO

	DO WHILE Len(cDisc) != 3
		ACCEPT "Digite a disciplina (ex: MAT, POR): " TO cDisc
		cDisc := Upper(AllTrim(cDisc))
	ENDDO

	DO WHILE n1 < 0 .OR. n1 > 10
		ACCEPT "Digite a primeira nota (0 a 10): " TO cAux
		n1 := IIf(Val(cAux) == 0 .AND. AllTrim(cAux) != "0", -1, Val(cAux))
	ENDDO

	DO WHILE n2 < 0 .OR. n2 > 10
		ACCEPT "Digite a segunda nota (0 a 10): " TO cAux
		n2 := IIf(Val(cAux) == 0 .AND. AllTrim(cAux) != "0", -1, Val(cAux))
	ENDDO

	QOut("")
	QOut("--- Dados do Aluno ---")
	QOut("Nome: ", cNome)
	QOut("Disciplina: ", cDisc)
	QOut("Media Final: ", (n1 + n2) / 2)

RETURN NIL