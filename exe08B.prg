set epoch to 1940
set date brit
cls

cNome               := Space(40)
nIdade              := 0
dAtual              := Date()
dCompra             := CToD("")
cProdutoA           := Space(20)
cProdutoB           := Space(20)
cProdutoC           := Space(20)
nQuantidadeProdutoA := 0
nQuantidadeProdutoB := 0
nQuantidadeProdutoC := 0
nPrecoProdutoA      := 0
nPrecoProdutoB      := 0
nPrecoProdutoC      := 0
nValorProdutoA      := 0
nValorProdutoB      := 0
nValorProdutoC      := 0
nValorTotal         := 0
cEndereco           := Space(20)
dEntrega            := CToD("")
    
@ 01, 01 TO 19, 67 double
@ 02, 26 say "MERCADO TRAINEE"
@ 04, 02 say "Insira seu nome........:"
@ 05, 02 say "Insira sua idade.......:"
@ 06, 02 say "Insira a data da compra:"
@ 07, 02 to 07, 66

@ 04, 27 get cNome   picture "@!"  valid !Empty(cNome)
@ 05, 27 get nIdade  picture "999" valid nIdade >= 0
@ 06, 27 get dCompra               valid dCompra >= dAtual
read

@ 08, 02 say "SEQ"
@ 09, 03 say "1"
@ 11, 03 say "2"
@ 13, 03 say "3"
@ 08, 14 say "PRODUTO"
@ 08, 32 say "QTD"
@ 08, 38 say "PRECO"
@ 08, 47 say "VALOR"

@ 09, 08 get cProdutoA           picture "@!"        valid !Empty(cProdutoA)
@ 09, 30 get nQuantidadeProdutoA picture "@e 999.99" valid nQuantidadeProdutoA > 0
@ 09, 38 get nPrecoProdutoA      picture "@e 999.99" valid nPrecoProdutoA >= 0
read

nValorProdutoA := (nQuantidadeProdutoA * nPrecoProdutoA)
nValorTotal    := nValorProdutoA

@ 09, 47 say Transform(nValorProdutoA, "@e 9999999.99")
@ 15, 34 say "VALOR TOTAL:"
@ 15, 47 say Transform(nValorTotal, "@e 9999999.99")

@ 11, 08 get cProdutoB           picture "@!"        valid !Empty(cProdutoB)
@ 11, 30 get nQuantidadeProdutoB picture "@e 999.99" valid nQuantidadeProdutoB > 0
@ 11, 38 get nPrecoProdutoB      picture "@e 999.99" valid nPrecoProdutoB >= 0
read

nValorProdutoB := (nQuantidadeProdutoB * nPrecoProdutoB)
nValorTotal    := (nValorTotal + nValorProdutoB)

@ 11, 47 say Transform(nValorProdutoB, "@e 9999999.99")
@ 15, 47 say Transform(nValorTotal, "@e 9999999.99")

@ 13, 08 get cProdutoC           picture "@!"        valid !Empty(cProdutoC)
@ 13, 30 get nQuantidadeProdutoC picture "@e 999.99" valid nQuantidadeProdutoC > 0
@ 13, 38 get nPrecoProdutoC      picture "@e 999.99" valid nPrecoProdutoC >= 0
read

nValorProdutoC := (nQuantidadeProdutoC * nPrecoProdutoC)
nValorTotal    := (nValorTotal + nValorProdutoC)

@ 13, 47 say Transform(nValorProdutoC, "@e 9999999.99")
@ 15, 47 say Transform(nValorTotal, "@e 9999999.99")
@ 16, 02 to 16, 66

@ 17, 02 say "Digite seu endereco..............: "
@ 18, 02 say "Digite a data da entrega desejada: "

@ 17, 37 get cEndereco picture "@!" valid !Empty(cProdutoA)
@ 18, 37 get dEntrega
read

dEntrega := dEntrega +3

@ 04, 02 clear to 18, 66
@ 04, 31 say "CUPOM"
@ 06, 02 say AllTrim(cNome)      + ", " + AllTrim(Str(nIdade)) + " anos"
@ 07, 02 say "DATA DA COMPRA.: " + DToC(dCompra)
@ 09, 02 say AllTrim(cProdutoA)
@ 09, 20 say ".........: "       + Transform(nValorProdutoA, "@e 9999999.99")
@ 10, 02 say AllTrim(cProdutoB)
@ 10, 20 say ".........: "       + Transform(nValorProdutoB, "@e 9999999.99")
@ 11, 02 say AllTrim(cProdutoC)
@ 11, 20 say ".........: "       + Transform(nValorProdutoC, "@e 9999999.99")
@ 13, 02 say "VALOR TOTAL"
@ 13, 20 say ".........: "       + Transform(nValorTotal, "@e 9999999.99")
@ 16, 02 say "ENDERECO.......: " + cEndereco
@ 17, 02 say "DATA DA ENTREGA: " + DToC(dEntrega)
@ 21, 02 say ""