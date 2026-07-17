FUNCTION Main()
	QOut(Len("Harbour"))            // 7      — tamanho da string
	QOut(Upper("hello"))            // HELLO  — maiúsculas
	QOut(Lower("HELLO"))            // hello  — minúsculas
	QOut(Left("Harbour", 3))        // Har    — primeiros 3 caracteres
	QOut(Right("Harbour", 4))       // bour   — últimos 4 caracteres
	QOut(SubStr("Harbour", 2, 3))   // arb    — a partir da posição 2, 3 chars
	QOut(Trim("  texto  "))         // "  texto" — remove espaços à direita
	QOut(AllTrim("  texto  "))      // "texto"   — remove espaços dos dois lados
RETURN NIL