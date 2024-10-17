local nNumero1 := 5
local nNumero2 := 10
local nProduto := 0

cls

@ 01, 01 to 06, 26 double
@ 02, 02 say "Numero 1 e igual a " + AllTrim(Str(nNumero1))
@ 03, 02 say "Numero 2 e igual a " + AllTrim(Str(nNumero2))

nProduto := (nNumero1 * nNumero2)

@ 05, 02 say "O produto de " + AllTrim(Str(nNumero1)) + " e " + AllTrim(Str(nNumero2)) + " = " + AllTrim(Str(nProduto))
@ 06, 01 say ""