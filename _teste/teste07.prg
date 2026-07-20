FUNCTION Main()

	LOCAL nNum, nI
	LOCAL cNum
	
	ACCEPT "Tabuada de qual numero?: "to cNum
	nNum := val(cNUM)

	FOR nI := 1 TO 10
		QOut(ALLTRIM(Str(nNum)) + " x " + ALLTRIM(Str(nI)) + " = " + ALLTRIM(Str(nNum * nI)))
	NEXT
RETURN NIL