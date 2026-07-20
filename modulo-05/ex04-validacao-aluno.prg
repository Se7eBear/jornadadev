FUNCTION Main()
	LOCAL cNome, cDisc, cNota1, cNota2
	LOCAL nNota1, nNota2, nMedia

	DO WHILE .T.
		ACCEPT "Digite o nome do aluno: " TO cNome
		IF Len(AllTrim(cNome)) > 0
			EXIT
		ENDIF
		QOut("Erro: O nome nao pode ser vazio.")
	ENDDO

	DO WHILE .T.
		ACCEPT "Digite a disciplina (ex: MAT, POR): " TO cDisc
		cDisc := AllTrim(cDisc)
		IF Len(cDisc) == 3 .AND. cDisc == Upper(cDisc)
			EXIT
		ENDIF
		QOut("Erro: A disciplina deve ter exatamente 3 letras maiusculas.")
	ENDDO

	DO WHILE .T.
		ACCEPT "Digite a primeira nota (0 a 10): " TO cNota1
		nNota1 := Val(cNota1)
		IF (nNota1 != 0 .OR. AllTrim(cNota1) == "0") .AND. nNota1 >= 0 .AND. nNota1 <= 10
			EXIT
		ENDIF
		QOut("Erro: Nota invalida. Digite um numero de 0 a 10.")
	ENDDO

	DO WHILE .T.
		ACCEPT "Digite a segunda nota (0 a 10): " TO cNota2
		nNota2 := Val(cNota2)
		IF (nNota2 != 0 .OR. AllTrim(cNota2) == "0") .AND. nNota2 >= 0 .AND. nNota2 <= 10
			EXIT
		ENDIF
		QOut("Erro: Nota invalida. Digite um numero de 0 a 10.")
	ENDDO

	nMedia := (nNota1 + nNota2) / 2

	QOut("")
	QOut("--- Dados do Aluno ---")
	QOut("Nome: ", cNome)
	QOut("Disciplina: ", cDisc)
	QOut("Media Final: ", nMedia)

RETURN NIL
