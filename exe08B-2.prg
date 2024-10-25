cls

set epoch to 1940
set date brit

cNome               := Space(40)
nIdade              := 0
nLimite             := 0
dAtual              := Date()
dAnterior           := Date() -1
dCompra             := Date()
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

cCorLimitePositivo  := "n/g"
cCorLimiteNegativo  := "n/r"
cCorCupom           := "n/gr"
    
@ 01, 01 to 21, 67 double
@ 02, 26 say "MERCADO TRAINEE"
@ 04, 02 say "Insira seu nome........:"
@ 05, 02 say "Insira sua idade.......:"
@ 06, 02 say "Insira seu limite......:"
@ 07, 02 say "Insira a data da compra:"
@ 08, 02 to 08, 66

@ 04, 27 get cNome   picture "@!"      valid !Empty(cNome)
@ 05, 27 get nIdade  picture "999"     valid nIdade >= 0
@ 06, 27 get nLimite picture "9999.99" valid nLimite > 0
@ 07, 27 get dCompra                   valid dCompra >= dAnterior
read

@ 09, 02 say "SEQ"
@ 10, 03 say "1"
@ 12, 03 say "2"
@ 14, 03 say "3"
@ 09, 14 say "PRODUTO"
@ 09, 32 say "QTD"
@ 09, 38 say "PRECO"
@ 09, 47 say "VALOR"

@ 10, 08 get cProdutoA           picture "@!"        valid !Empty(cProdutoA)
@ 10, 30 get nQuantidadeProdutoA picture "@e 999.99" valid nQuantidadeProdutoA > 0
@ 10, 38 get nPrecoProdutoA      picture "@e 999.99" valid nPrecoProdutoA >= 0
read

nValorProdutoA := (nQuantidadeProdutoA * nPrecoProdutoA)
nValorTotal    := nValorProdutoA
nLimiteCompra  := (nLimite - nValorTotal)


@ 10, 47 say Transform(nValorProdutoA, "@e 9999999.99")
@ 16, 34 say "VALOR TOTAL:"
@ 16, 47 say Transform(nValorTotal,    "@e 9999999.99")
@ 17, 34 say "LIMITE.....:"

if nValorTotal <= nLimite
    cCor := cCorLimitePositivo
else
    cCor := cCorLimiteNegativo
endif

@ 17, 47 say Transform(nLimiteCompra, "@e 9999999.99") color cCor

@ 12, 08 get cProdutoB           picture "@!"        valid !Empty(cProdutoB)
@ 12, 30 get nQuantidadeProdutoB picture "@e 999.99" valid nQuantidadeProdutoB > 0
@ 12, 38 get nPrecoProdutoB      picture "@e 999.99" valid nPrecoProdutoB >= 0
read

nValorProdutoB := (nQuantidadeProdutoB * nPrecoProdutoB)
nValorTotal    := (nValorTotal + nValorProdutoB)
nLimiteCompra  := (nLimite - nValorTotal)

@ 12, 47 say Transform(nValorProdutoB, "@e 9999999.99")
@ 16, 47 say Transform(nValorTotal,    "@e 9999999.99")

if nValorTotal <= nLimite
    cCor := cCorLimitePositivo
else
    cCor := cCorLimiteNegativo
endif

@ 17, 47 say Transform(nLimiteCompra, "@e 9999999.99") color cCor

@ 14, 08 get cProdutoC           picture "@!"        valid !Empty(cProdutoC)
@ 14, 30 get nQuantidadeProdutoC picture "@e 999.99" valid nQuantidadeProdutoC > 0
@ 14, 38 get nPrecoProdutoC      picture "@e 999.99" valid nPrecoProdutoC >= 0
read

nValorProdutoC := (nQuantidadeProdutoC * nPrecoProdutoC)
nValorTotal    := (nValorTotal + nValorProdutoC)
nLimiteCompra  := (nLimite - nValorTotal)

@ 14, 47 say Transform(nValorProdutoC, "@e 9999999.99")
@ 16, 47 say Transform(nValorTotal,    "@e 9999999.99")

if nValorTotal <= nLimite
    cCor := cCorLimitePositivo
else
    cCor := cCorLimiteNegativo
endif

@ 17, 47 say Transform(nLimiteCompra, "@e 9999999.99") color cCor

InKey(0)

@ 18, 02 to 18, 66
@ 19, 02 say "Digite seu endereco..............: "
@ 20, 02 say "Digite a data da entrega desejada: "

@ 19, 37 get cEndereco picture "@!" valid !Empty(cEndereco)
@ 20, 37 get dCompra                valid dCompra >= dAtual
read

dEntrega := dCompra +3

set color to (cCorCupom)
@ 04, 02 clear to 20, 66
@ 04, 31 say "CUPOM"
@ 06, 02 say AllTrim(cNome)      + ", " + AllTrim(Str(nIdade)) + " anos"
@ 07, 02 say "DATA DA COMPRA.: " + DToC(dCompra)
@ 09, 02 say AllTrim(cProdutoA)
@ 09, 20 say ".........: "       + Transform(nValorProdutoA, "@e")
@ 10, 02 say AllTrim(cProdutoB)
@ 10, 20 say ".........: "       + Transform(nValorProdutoB, "@e")
@ 11, 02 say AllTrim(cProdutoC)
@ 11, 20 say ".........: "       + Transform(nValorProdutoC, "@e")
@ 13, 02 say "VALOR TOTAL"
@ 13, 20 say ".........: "       + Transform(nValorTotal,    "@e")
@ 16, 02 say "ENDERECO.......: " + cEndereco
@ 17, 02 say "DATA DA ENTREGA: " + DToC(dEntrega)
@ 22, 02 say ""