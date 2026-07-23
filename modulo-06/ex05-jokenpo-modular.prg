FUNCTION Main()
	LOCAL cJogadaUsuario, cJogadaCPU
	LOCAL cResultado
	LOCAL cContinuar

	QOut("=== JOKENPO ===")

	DO WHILE .T.
		QOut("")
		QOut("Opcoes: PEDRA, PAPEL, TESOURA")
		ACCEPT "Digite sua jogada: " TO cJogadaUsuario
		cJogadaUsuario := Upper(AllTrim(cJogadaUsuario))

		IF !ValidarJogada(cJogadaUsuario)
			QOut("Jogada invalida! Digite PEDRA, PAPEL ou TESOURA.")
		ELSE
			cJogadaCPU := SortearJogadaCPU()

			QOut("")
			QOut("Voce jogou: " + cJogadaUsuario)
			QOut("CPU jogou: " + cJogadaCPU)

			cResultado := DefinirVencedor(cJogadaUsuario, cJogadaCPU)
			QOut(cResultado)
		ENDIF

		QOut("")
		ACCEPT "Jogar novamente? (S/N): " TO cContinuar
		cContinuar := Upper(AllTrim(cContinuar))

		IF cContinuar != "S"
			EXIT
		ENDIF
	ENDDO

	QOut("")
	QOut("Obrigado por jogar!")

RETURN NIL

FUNCTION SortearJogadaCPU()
	LOCAL aJogadas := {"PEDRA", "PAPEL", "TESOURA"}
	LOCAL nSorteio

	nSorteio := Int(hb_Random(1, 3))

RETURN aJogadas[nSorteio]

FUNCTION ValidarJogada(cJogada)
RETURN (cJogada == "PEDRA" .OR. cJogada == "PAPEL" .OR. cJogada == "TESOURA")

FUNCTION DefinirVencedor(cJogada1, cJogada2)
	LOCAL cResultado

	IF cJogada1 == cJogada2
		RETURN "Empate!"
	ENDIF

	DO CASE
	CASE cJogada1 == "PEDRA" .AND. cJogada2 == "TESOURA"
		cResultado := "Voce venceu! Pedra quebra tesoura."

	CASE cJogada1 == "PAPEL" .AND. cJogada2 == "PEDRA"
		cResultado := "Voce venceu! Papel cobre pedra."

	CASE cJogada1 == "TESOURA" .AND. cJogada2 == "PAPEL"
		cResultado := "Voce venceu! Tesoura corta papel."

	OTHERWISE
		cResultado := "CPU venceu!"
	ENDCASE

RETURN cResultado