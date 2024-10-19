local getlist        := {}
local nNumero1       := 0
local nNumero2       := 0
local nSoma          := 0
local nSubtracao     := 0
local nMultiplicacao := 0
local nDivisao       := 0

cls

@ 01, 01 to 10, 30 double
@ 02, 02 say "Escolha um numero..."
@ 03, 02 say "Escolha outro numero"
@ 04, 02 to 04, 29

@ 02, 23 get nNumero1 picture "999999"
@ 03, 23 get nNumero2 picture "999999"
read

nSoma          := (nNumero1 + nNumero2)
nSubtracao     := (nNumero1 - nNumero2)
nMultiplicacao := (nNumero1 * nNumero2)
nDivisao       := (nNumero1 / nNumero2)

@ 06, 02 say AllTrim(Str(nNumero1)) + " + " + AllTrim(Str(nNumero2)) + " = " + AllTrim(Str(nSoma))
@ 07, 02 say AllTrim(Str(nNumero1)) + " - " + AllTrim(Str(nNumero2)) + " = " + AllTrim(Str(nSubtracao))
@ 08, 02 say AllTrim(Str(nNumero1)) + " * " + AllTrim(Str(nNumero2)) + " = " + AllTrim(Str(nMultiplicacao))
@ 09, 02 say AllTrim(Str(nNumero1)) + " / " + AllTrim(Str(nNumero2)) + " = " + AllTrim(Transform(nDivisao, "@e"))
@ 10, 01 say ""