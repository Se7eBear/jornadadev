REQUEST HB_CODEPAGE_UTF8

FUNCTION Main()
    hb_cdpSelect( "UTF8" )
    
    QOut("Olá, Mundo!")
    QOut("Bem-vindo(a) à Jornada DEV START!")
RETURN NIL