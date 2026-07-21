FUNCTION Main()
    LOCAL nSecreto := HB_RandomInt(1, 100), cPalpite, nPalpite, nI

    QOut("=== JOGO ADIVINHE O NUMERO (1 a 100) ===")

    FOR nI := 1 TO 7
        nPalpite := 0
        QOut("Tentativa ", nI, " de 7")
        
        DO WHILE nPalpite == 0 
            ACCEPT "Seu palpite: " TO cPalpite
            nPalpite := Val(cPalpite)
        ENDDO

        IF nPalpite == nSecreto
            QOut("Parabens! Voce acertou o numero secreto: ", nSecreto)
            RETURN NIL
        ENDIF

        QOut("O numero secreto e ", IIf(nPalpite < nSecreto, "MAIOR", "MENOR"), " que ", nPalpite)
    NEXT

    QOut("Tentativas esgotadas! O numero secreto era: ", nSecreto)
RETURN NIL