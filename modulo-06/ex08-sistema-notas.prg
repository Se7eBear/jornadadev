FUNCTION Main()
	LOCAL aAlunos := {}
	LOCAL aAluno
	LOCAL nN, nI, nJ
	LOCAL cNome, cNota
	LOCAL nMedia
	LOCAL cN

	QOut("=== SISTEMA DE NOTAS ===")
	ACCEPT "Quantos alunos serao cadastrados? " TO cN
	nN := Val(cN)

	FOR nI := 1 TO nN
		aAluno := {}

		QOut("")
		QOut("--- Aluno " + LTrim(Str(nI)) + " ---")
		ACCEPT "Nome: " TO cNome
		AAdd(aAluno, cNome)

		FOR nJ := 1 TO 4
			ACCEPT "Nota " + LTrim(Str(nJ)) + ": " TO cNota
			AAdd(aAluno, Val(cNota))
		NEXT

		AAdd(aAlunos, aAluno)
	NEXT

	QOut("")
	QOut("=== RESULTADO ===")
	QOut("")
	QOut("--- APROVADOS ---")
	FOR nI := 1 TO Len(aAlunos)
		nMedia := (aAlunos[nI][2] + aAlunos[nI][3] + aAlunos[nI][4] + aAlunos[nI][5]) / 4
		IF nMedia >= 7
			QOut(aAlunos[nI][1] + " - Media: " + LTrim(Str(nMedia)))
		ENDIF
	NEXT

	QOut("")
	QOut("--- REPROVADOS ---")
	FOR nI := 1 TO Len(aAlunos)
		nMedia := (aAlunos[nI][2] + aAlunos[nI][3] + aAlunos[nI][4] + aAlunos[nI][5]) / 4
		IF nMedia < 7
			QOut(aAlunos[nI][1] + " - Media: " + LTrim(Str(nMedia)))
		ENDIF
	NEXT

RETURN NIL