procedure main ()

local getlist := {}
local nNumeroA := 0
local nNumeroB := 0
local nNumeroC := 0

cls

@ 01, 01 to 10, 18 double
@ 02, 02 say "TROCA DE NUMEROS"
@ 04, 02 say "Numero A ="
@ 05, 02 say "Numero B ="
@ 06, 02 to 06, 17 double

@ 04, 13 get nNumeroA picture "999"
@ 05, 13 get nNumeroB picture "999"
read

nNumeroC := nNumeroA
nNumeroA := nNumeroB
nNumeroB := nNumeroC

@ 08, 02 say "Numero A = " + AllTrim(Str(nNumeroA))
@ 09, 02 say "Numero B = " + AllTrim(Str(nNumeroB))
@ 10, 02 say ""