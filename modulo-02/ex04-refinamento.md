Problema: "Um sistema de caixa de supermercado deve registrar os itens de uma compra, calcular o subtotal, aplicar desconto se o cliente tiver cartão fidelidade (5%) e mostrar o total a pagar."

	Nível 1: Visão Geral (3–4 passos)
Registrar a entrada de todos os itens da compra.
Calcular o valor subtotal dos itens.
Verificar a existência do cartão fidelidade e aplicar o desconto (se houver).
Exibir o valor total final a ser pago.

	Nível 2: Detalhamento de cada passo

1. Registrar a entrada de todos os itens da compra
Iniciar o sistema de caixa para um novo cliente.
Ler o código de barras (ou receber a digitação) do primeiro produto.
Repetir a leitura para cada produto até que o operador de caixa indique que os itens acabaram.

2. Calcular o valor subtotal dos itens
Iniciar uma variável chamada subtotal com o valor 0.
Para cada produto registrado no passo anterior, obter seu preço e somar ao subtotal:
subtotal <- subtotal + preco_item
Guardar o valor acumulado do subtotal.

3. Verificar a existência do cartão fidelidade e aplicar o desconto
Verificar se o cliente possui o cartão fidelidade.
Se sim:
Calcular o valor do desconto: desconto <- subtotal * 0.05
Calcular o valor total a pagar: total <- subtotal - desconto
Senão:
Definir o total sem desconto: total <- subtotal

4. Exibir o valor total final a ser pago
Enviar o valor armazenado na variável total para a tela do caixa.
Exibir a mensagem informativa do total final ao cliente e operador.