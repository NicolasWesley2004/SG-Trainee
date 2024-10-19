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

@ 00, 00 TO 16, 34 double
@ 01, 01 say "Produto A = R$10,00"
@ 02, 01 say "Insira a quantidade:"
@ 04, 01 say "Produto B = R$5,25"
@ 05, 01 say "Insira a quantidade:"
@ 07, 01 say "Produto C = R$20,00"
@ 08, 01 say "Insira a quantidade:"
@ 09, 01 TO 09, 33 double

@ 02, 21 get nQuantidadeProdutoA picture "999"
@ 05, 21 get nQuantidadeProdutoB picture "999"
@ 08, 21 get nQuantidadeProdutoC picture "999"
read

nValorA     := (nQuantidadeProdutoA * nProdutoA)
nValorB     := (nQuantidadeProdutoB * nProdutoB)
nValorC     := (nQuantidadeProdutoC * nProdutoC)
nValorTotal := (nValorA + nValorB + nValorC)

@ 11, 01 say "Produto A ficou em...: R$" + AllTrim(Transform(nValorA, "@e"))
@ 12, 01 say "Produto B ficou em...: R$" + AllTrim(Transform(nValorB, "@e"))
@ 13, 01 say "Produto C ficou em...: R$" + AllTrim(Transform(nValorC, "@e"))
@ 15, 01 say "Valor total da compra: R$" + AllTrim(Transform(nValorTotal, "@e"))
@ 16, 01 say ""