local getlist  := {}
local nNumero1 := 0
local nNumero2 := 0
local nProduto := 0

cls

@ 01, 01 to 06, 34 double
@ 02, 02 say "Escolha um numero...:"
@ 03, 02 say "Escolha outro numero:"

@ 02, 24 get nNumero1
@ 03, 24 get nNumero2
read

nProduto := (nNumero1 * nNumero2)

@ 05, 02 say "O produto de " + AllTrim(Str(nNumero1)) + " e " + AllTrim(Str(nNumero2)) + " = " + AllTrim(Str(nProduto))
@ 06, 01 say ""