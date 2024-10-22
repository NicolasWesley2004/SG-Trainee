procedure main ()

local getlist             := {}
local cProduto1           := Space(12)
local cProduto2           := Space(12)
local cProduto3           := Space(12)
local nValorProdutoA      := 0
local nValorProdutoB      := 0
local nValorProdutoC      := 0
local nQuantidadeProdutoA := 0
local nQuantidadeProdutoB := 0
local nQuantidadeProdutoC := 0
local nValorA             := 0
local nValorB             := 0
local nValorC             := 0
local nValorTotal         := 0
    
cls
    
@ 01, 01 TO 15, 47 double
@ 02, 17 say "MERCADO TRAINEE"
@ 04, 02 say "Insira o produto...: "
@ 05, 02 say "Insira a quantidade: "
@ 06, 02 say "Insira o valor.....: "
@ 08, 02 say "Insira o produto...: "
@ 09, 02 say "Insira a quantidade: "
@ 10, 02 say "Insira o valor.....: "
@ 12, 02 say "Insira o produto...: "
@ 13, 02 say "Insira a quantidade: "
@ 14, 02 say "Insira o valor.....: "
    
@ 04, 23 get cProduto1           picture "@!"        Valid !Empty(cProduto1)
@ 05, 23 get nQuantidadeProdutoA picture "@e 999.99" Valid nQuantidadeProdutoA > 0
@ 06, 23 get nValorProdutoA      picture "@e 999.99" Valid nQuantidadeProdutoA > 0
@ 08, 23 get cProduto2           picture "@!"        Valid !Empty(cProduto2)
@ 09, 23 get nQuantidadeProdutoB picture "@e 999.99" Valid nQuantidadeProdutoA > 0
@ 10, 23 get nValorProdutoB      picture "@e 999.99" Valid nQuantidadeProdutoA > 0
@ 12, 23 get cProduto3           picture "@!"        Valid !Empty(cProduto3)
@ 13, 23 get nQuantidadeProdutoC picture "@e 999.99" Valid nQuantidadeProdutoA > 0
@ 14, 23 get nValorProdutoC      picture "@e 999.99" Valid nQuantidadeProdutoA > 0
read

@ 04, 02 clear to 14, 46

nValorA     := (nQuantidadeProdutoA * nValorProdutoA)
nValorB     := (nQuantidadeProdutoB * nValorProdutoB)
nValorC     := (nQuantidadeProdutoC * nValorProdutoC)
nValorTotal := (nValorA + nValorB + nValorC)
    
@ 04, 02 say AllTrim(cProduto1) + " ficou em: R$" + AllTrim(Transform(nValorA, "@e 99999.99"))
@ 05, 02 say AllTrim(cProduto2) + " ficou em: R$" + AllTrim(Transform(nValorB, "@e 99999.99"))
@ 06, 02 say AllTrim(cProduto3) + " ficou em: R$" + AllTrim(Transform(nValorC, "@e 99999.99"))
@ 08, 02 say "Valor total da compra: R$"          + AllTrim(Transform(nValorTotal, "@e 99999.99"))
@ 19, 01 say ""