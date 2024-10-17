local getlist        := {}
local nNumero1       := 0
local nNumero2       := 0
local nSoma          := 0
local nSubtracao     := 0
local nMultiplicacao := 0
local nDivisao       := 0

cls

@ 01, 01 to 09, 33 double
@ 02, 02 say "Escolha um numero"
@ 03, 02 say "Escolha outro numero"

@ 02, 23 get nNumero1
@ 03, 23 get nNumero2
read

nSoma          := (nNumero1 + nNumero2)
nSubtracao     := (nNumero1 - nNumero2)
nMultiplicacao := (nNumero1 * nNumero2)
nDivisao       := (nNumero1 / nNumero2)

@ 05, 02 say AllTrim(Str(nNumero1)) + " + " + AllTrim(Str(nNumero2)) + " = " + AllTrim(Str(nSoma))
@ 06, 02 say AllTrim(Str(nNumero1)) + " - " + AllTrim(Str(nNumero2)) + " = " + AllTrim(Str(nSubtracao))
@ 07, 02 say AllTrim(Str(nNumero1)) + " * " + AllTrim(Str(nNumero2)) + " = " + AllTrim(Str(nMultiplicacao))
@ 08, 02 say AllTrim(Str(nNumero1)) + " / " + AllTrim(Str(nNumero2)) + " = " + AllTrim(Str(nDivisao))
@ 09, 01 say ""