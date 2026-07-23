FUNCTION Main()
	LOCAL cHora
	LOCAL nContador := 0

	QOut("--- RELOGIO DIGITAL ---")
	QOut("Pressione qualquer tecla para encerrar.")
	QOut("")

	DO WHILE .T.
		cHora := ObterHora()
		ExibirHora( FormatarHora( cHora ) )

		IF Inkey(30) != 0
			EXIT
		ENDIF

		nContador++
	ENDDO

	QOut("")
	QOut("Relogio encerrado apos " + LTrim(Str(nContador)) + " atualizacoes.")

RETURN NIL

FUNCTION ObterHora()
RETURN Time()

FUNCTION FormatarHora(cHora)
	LOCAL cH, cM, cS

	cH := SubStr(cHora, 1, 2)
	cM := SubStr(cHora, 4, 2)
	cS := SubStr(cHora, 7, 2)

RETURN cH + ":" + cM + ":" + cS

FUNCTION ExibirHora(cHoraFormatada)
	QOut("Hora atual: " + cHoraFormatada)
RETURN NIL