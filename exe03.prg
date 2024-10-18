local getlist  := {}
local nNumero1 := 0
local nNumero2 := 0
local nProduto := 0

cls

@ 01, 01 to 07, 33 double
@ 02, 02 say "Escolha um numero...:"
@ 03, 02 say "Escolha outro numero:"
@ 04, 02 to 04, 32 double

@ 02, 24 get nNumero1 picture "999"
@ 03, 24 get nNumero2 picture "999"
read

nProduto := (nNumero1 * nNumero2)

@ 06, 02 say "O produto de " + AllTrim(Str(nNumero1)) + " e " + AllTrim(Str(nNumero2)) + " = " + AllTrim(Str(nProduto))
@ 07, 01 say ""