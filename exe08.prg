local getlist             := {}
local nProdutoA           := 10.00
local nProdutoB           := 5.25
local nProdutoC           := 20.00
local nQuantidadeProdutoA := 0
local nQuantidadeProdutoB := 0
local nQuantidadeProdutoC := 0
local nValorA             := 0
local nValorB             := 0
local nValorC             := 0
local nValorTotal         := 0

cls

@ 01, 01 TO 19, 35 double
@ 02, 10 say "MERCADO TRAINEE"
@ 04, 02 say "Produto A = R$10,00"
@ 05, 02 say "Insira a quantidade:"
@ 07, 02 say "Produto B = R$5,25"
@ 08, 02 say "Insira a quantidade:"
@ 10, 02 say "Produto C = R$20,00"
@ 11, 02 say "Insira a quantidade:"
@ 12, 02 TO 12, 34 double

@ 05, 22 get nQuantidadeProdutoA picture "@e 999.99"
@ 08, 22 get nQuantidadeProdutoB picture "@e 999.99"
@ 11, 22 get nQuantidadeProdutoC picture "@e 999.99"
read

nValorA     := (nQuantidadeProdutoA * nProdutoA)
nValorB     := (nQuantidadeProdutoB * nProdutoB)
nValorC     := (nQuantidadeProdutoC * nProdutoC)
nValorTotal := (nValorA + nValorB + nValorC)

@ 14, 02 say "Produto A ficou em...: R$" + AllTrim(Transform(nValorA, "@e 99999.99"))
@ 15, 02 say "Produto B ficou em...: R$" + AllTrim(Transform(nValorB, "@e 99999.99"))
@ 16, 02 say "Produto C ficou em...: R$" + AllTrim(Transform(nValorC, "@e 99999.99"))
@ 18, 02 say "Valor total da compra: R$" + AllTrim(Transform(nValorTotal, "@e 99999.99"))
@ 19, 01 say ""