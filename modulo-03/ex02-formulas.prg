#define PI 3.14159
FUNCTION Main()
	LOCAL nTotal1, nTotal2, nTotal3
	LOCAL nR, cR
	LOCAL nA, nB, cA, cB
	LOCAL nPeso, nAltura, cPeso, cAltura

	ACCEPT "digite numero Raio: " TO cR
	ACCEPT "digite numero para A: " TO cA
	ACCEPT "digite numero para B: " TO cB
	ACCEPT "digite seu peso : " TO cPeso
	ACCEPT "digite seu tamanho : " TO cAltura

	nR := val(cR)
	nA := val(cA)
	nB := val(cB)
	nPeso := val(cPeso)
	nAltura := val(cAltura)
	nTotal1 := PI * (nR ^ 2)
	nTotal2 := Sqrt((nA ^ 2) + (nB ^ 2))
	nTotal3 := nPeso / (nAltura * nAltura)

	QOut("Area de um circulo com Raio informado: " + str(nTotal1, 10, 2))
	QOut("Hipotenusa de um triangulo retangulo: " + str(nTotal2, 10, 2))
	QOut("Indice de massa corportal IMC: " + str(nTotal3, 10, 2))
RETURN NIL