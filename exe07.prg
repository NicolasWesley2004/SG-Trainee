procedure main ()

local getlist        := {}
local nNumero1       := 0
local nNumero2       := 0
local nSoma          := 0
local nSubtracao     := 0
local nMultiplicacao := 0
local nDivisao       := 0

cls

@ 01, 01 to 12, 30 double
@ 02, 10 say "CALCULADORA"
@ 04, 02 say "Escolha um numero...:"
@ 05, 02 say "Escolha outro numero:"
@ 06, 02 to 06, 29

@ 04, 24 get nNumero1 picture "999999"
@ 05, 24 get nNumero2 picture "999999"
read

nSoma          := (nNumero1 + nNumero2)
nSubtracao     := (nNumero1 - nNumero2)
nMultiplicacao := (nNumero1 * nNumero2)
nDivisao       := (nNumero1 / nNumero2)

@ 08, 02 say AllTrim(Str(nNumero1)) + " + " + AllTrim(Str(nNumero2)) + " = " + AllTrim(Str(nSoma))
@ 09, 02 say AllTrim(Str(nNumero1)) + " - " + AllTrim(Str(nNumero2)) + " = " + AllTrim(Str(nSubtracao))
@ 10, 02 say AllTrim(Str(nNumero1)) + " * " + AllTrim(Str(nNumero2)) + " = " + AllTrim(Str(nMultiplicacao))
@ 11, 02 say AllTrim(Str(nNumero1)) + " / " + AllTrim(Str(nNumero2)) + " = " + AllTrim(Transform(nDivisao, "@e"))
@ 12, 01 say ""