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

@ 00, 00 TO 24, 79 double
@ 01, 01 say "Produto A = R$10,00"
@ 02, 01 say "Insira a quantidade:"
@ 04, 01 say "Produto B = R$5,25"
@ 05, 01 say "Insira a quantidade:"
@ 07, 01 say "Produto C = R$20,00"
@ 08, 01 say "Insira a quantidade:"

@ 02, 21 get nQuantidadeProdutoA
@ 05, 21 get nQuantidadeProdutoB
@ 08, 21 get nQuantidadeProdutoC
read

nValorA     := (nQuantidadeProdutoA * nProdutoA)
nValorB     := (nQuantidadeProdutoB * nProdutoB)
nValorC     := (nQuantidadeProdutoC * nProdutoC)
nValorTotal := (nValorA + nValorB + nValorC)

@ 11, 01 say "Produto A ficou em: " + AllTrim(Str(nValorA))
@ 12, 01 say "Produto B ficou em: " + AllTrim(Str(nValorB))
@ 13, 01 say "Produto C ficou em: " + AllTrim(Str(nValorC))
@ 15, 01 say "Valor total da compra: " + AllTrim(Str(nValorTotal))