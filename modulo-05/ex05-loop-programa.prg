FUNCTION Main()
	LOCAL cNome, cDisc, cAux := "S", n1, n2

	DO WHILE Upper(AllTrim(cAux)) == "S"
		cNome := ""
		cDisc := ""
		n1 := -1
		n2 := -1

		DO WHILE Empty(cNome)
			ACCEPT "Nome do aluno: " TO cNome
		ENDDO

		DO WHILE Len(AllTrim(cDisc)) != 3
			ACCEPT "Disciplina (3 letras): " TO cDisc
		ENDDO

		DO WHILE n1 < 0 .OR. n1 > 10
			ACCEPT "Primeira nota (0-10): " TO cAux
			n1 := IIf(Val(cAux) == 0 .AND. AllTrim(cAux) != "0", -1, Val(cAux))
		ENDDO

		DO WHILE n2 < 0 .OR. n2 > 10
			ACCEPT "Segunda nota (0-10): " TO cAux
			n2 := IIf(Val(cAux) == 0 .AND. AllTrim(cAux) != "0", -1, Val(cAux))
		ENDDO

		QOut("Nome: ", AllTrim(cNome), " | Disc: ", Upper(cDisc), " | Media: ", (n1 + n2) / 2)
		
		ACCEPT "Calcular outro? (S/N): " TO cAux
	ENDDO
	
RETURN NIL