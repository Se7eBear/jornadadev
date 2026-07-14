
REQUEST HB_CODEPAGE_UTF8
FUNCTION Main()
	
	LOCAL cNome := "Bruno Sete"
	LOCAL cCidade := "São Paulo"
	LOCAL cCurso := "Harbour/ADVPL"
	hb_cdpSelect( "UTF8" ) 
	
	QOut("===============================")
	QOut("   FICHA DE APRESENTAÇÃO   ")
	QOut("===============================")
	Qout("Nome: " + cNome)
	QOut("Cidade: " + cCidade)
	QOut("Curso: " + cCurso)
	QOut("================================")
RETURN NIL