FUNCTION Main()

	LOCAL nSecreto := HB_RandomInt(1, 100)
	LOCAL cPalpite
	LOCAL nPalpite
	LOCAL nI
	LOCAL lAcertou := .F.

	QOut("=== JOGO ADIVINHE O NUMERO ===")
	QOut("Tente adivinhar o numero entre 1 e 100. Voce tem 7 tentativas.")
	QOut("")

	FOR nI := 1 TO 7
		QOut("Tentativa ", nI, " de 7")
		DO WHILE .T.
			ACCEPT "Digite o seu palpite: " TO cPalpite
			nPalpite := Val(cPalpite)
			
			IF nPalpite == 0 .AND. AllTrim(cPalpite) != "0"
				QOut("Entrada invalida. Digite apenas numeros.")
			ELSE
				EXIT
			ENDIF
		ENDDO

		IF nPalpite == nSecreto
			lAcertou := .T.
			EXIT
		ELSEIF nPalpite < nSecreto
			QOut("O numero secreto e MAIOR que ", nPalpite)
		ELSE
			QOut("O numero secreto e MENOR que ", nPalpite)
		ENDIF
		QOut("")
	NEXT

	QOut("")
	IF lAcertou
		QOut("Parabens! Voce acertou o numero secreto: ", nSecreto)
	ELSE
		QOut("Tentativas esgotadas! O numero secreto era: ", nSecreto)
	ENDIF

RETURN NIL