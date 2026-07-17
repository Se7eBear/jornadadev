FUNCTION Exercicio5()
	LOCAL cNota1, cNota2, cNota3, cNota4
	LOCAL n1, n2, n3, n4
	LOCAL nMedia

	ACCEPT "Digite a nota do 1o bimestre: " TO cNota1
	ACCEPT "Digite a nota do 2o bimestre: " TO cNota2
	ACCEPT "Digite a nota do 3o bimestre: " TO cNota3
	ACCEPT "Digite a nota do 4o bimestre: " TO cNota4

	n1 := Val(cNota1)
	n2 := Val(cNota2)
	n3 := Val(cNota3)
	n4 := Val(cNota4)
	nMedia := (n1*1 + n2*2 + n3*3 + n4*4) / (1 + 2 + 3 + 4)
	QOut("")
	QOut("--- RESULTADO ---")
	QOut("A media ponderada do aluno e: " + Str(nMedia, 10, 2))
RETURN NIL