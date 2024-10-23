local getlist             := {}
local cNome               := Space(40)
local nIdade              := 0
local dDataAtual          := Date()
local dDataDaCompra       := CToD("")
local cProdutoA           := Space(20)
local cProdutoB           := Space(20)
local cProdutoC           := Space(20)
local nQuantidadeProdutoA := 0
local nQuantidadeProdutoB := 0
local nQuantidadeProdutoC := 0
local nPrecoProdutoA      := 0
local nPrecoProdutoB      := 0
local nPrecoProdutoC      := 0
local nValorProdutoA      := 0
local nValorProdutoB      := 0
local nValorProdutoC      := 0
local nValorTotal         := 0
local cEndereco           := Space(40)
local dDataDaEntrega      := CToD("")

set epoch to 1940
set date brit
cls
    
@ 01, 01 TO 19, 67 double
@ 02, 26 say "MERCADO TRAINEE"
@ 04, 02 say "Insira seu nome........:"
@ 05, 02 say "Insira sua idade.......:"
@ 06, 02 say "Insira a data da compra:"
@ 07, 02 to 07, 66

@ 04, 27 get cNome         picture "@!"  valid !Empty(cNome)
@ 05, 27 get nIdade        picture "999" valid nIdade >= 0 .and. !Empty(nIdade)
@ 06, 27 get dDataDaCompra               valid dDataDaCompra >= dDataAtual
read

dDataDaEntrega := dDataDaCompra +3

@ 08, 02 say "SEQ"
@ 09, 03 say "1"
@ 11, 03 say "2"
@ 13, 03 say "3"
@ 08, 14 say "PRODUTO"
@ 08, 32 say "QTD"
@ 08, 38 say "PRECO"
@ 08, 47 say "VALOR"

@ 09, 08 get cProdutoA           picture "@!"         valid !Empty(cProdutoA)
@ 09, 30 get nQuantidadeProdutoA picture "@e, 999.99" valid !Empty(nQuantidadeProdutoA) .and. nQuantidadeProdutoA > 0
@ 09, 38 get nPrecoProdutoA      picture "@e, 999.99" valid !Empty(nPrecoProdutoA) .and. nPrecoProdutoA >= 0
read

nValorProdutoA := (nQuantidadeProdutoA * nPrecoProdutoA)
nValorTotal    := nValorProdutoA

@ 09, 47 say AllTrim(Transform(nValorProdutoA, "@e, 9999999.99"))
@ 15, 34 say "VALOR TOTAL:"
@ 15, 47 say AllTrim(Transform(nValorTotal, "@e, 9999999.99"))

@ 11, 08 get cProdutoB           picture "@!"         valid !Empty(cProdutoB)
@ 11, 30 get nQuantidadeProdutoB picture "@e, 999.99" valid !Empty(nQuantidadeProdutoB) .and. nQuantidadeProdutoB > 0
@ 11, 38 get nPrecoProdutoB      picture "@e, 999.99" valid !Empty(nPrecoProdutoB) .and. nPrecoProdutoB >= 0
read

nValorProdutoB := (nQuantidadeProdutoB * nPrecoProdutoB)
nValorTotal    := (nValorTotal + nValorProdutoB)

@ 11, 47 say AllTrim(Transform(nValorProdutoB, "@e, 9999999.99"))
@ 15, 47 say AllTrim(Transform(nValorTotal, "@e, 9999999.99"))

@ 13, 08 get cProdutoC           picture "@!"         valid !Empty(cProdutoC)
@ 13, 30 get nQuantidadeProdutoC picture "@e, 999.99" valid !Empty(nQuantidadeProdutoC) .and. nQuantidadeProdutoC > 0
@ 13, 38 get nPrecoProdutoC      picture "@e, 999.99" valid !Empty(nPrecoProdutoC) .and. nPrecoProdutoC >= 0
read

nValorProdutoC := (nQuantidadeProdutoC * nPrecoProdutoC)
nValorTotal    := (nValorTotal + nValorProdutoC)

@ 13, 47 say AllTrim(Transform(nValorProdutoC, "@e, 9999999.99"))
@ 15, 47 say AllTrim(Transform(nValorTotal, "@e, 9999999.99"))
@ 16, 02 to 16, 66

@ 17, 02 say "Digite seu endereco: "
@ 18, 02 say "Data da entrega....: " + DToC(dDataDaEntrega)

@ 17, 23 get cEndereco picture "@!" valid !Empty(cProdutoA)
read

@ 04, 02 clear to 18, 66

@ 04, 31 say "CUPOM"
@ 06, 02 say AllTrim(cNome)      + ", " + AllTrim(Str(nIdade)) + " anos"
@ 08, 02 say AllTrim(cProdutoA)
@ 08, 20 say ".........: "       + AllTrim(Transform(nValorProdutoA, "@e, 9999999.99"))
@ 09, 02 say AllTrim(cProdutoB)
@ 09, 20 say ".........: "       + AllTrim(Transform(nValorProdutoB, "@e, 9999999.99"))
@ 10, 02 say AllTrim(cProdutoC)
@ 10, 20 say ".........: "       + AllTrim(Transform(nValorProdutoC, "@e, 9999999.99"))
@ 12, 02 say "VALOR TOTAL"
@ 12, 20 say ".........: "       + AllTrim(Transform(nValorTotal, "@e, 9999999.99"))
@ 15, 02 say "ENDERECO.......: " + cEndereco
@ 16, 02 say "DATA DA ENTREGA: " + DToC(dDataDaEntrega)
@ 20, 02 say ""