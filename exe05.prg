local nNumeroA := 5
local nNumeroB := 9
local nNumeroC := 0

cls

@ 01, 01 to 07, 14 double
@ 02, 02 say "Numero A = " + AllTrim(Str(nNumeroA))
@ 03, 02 say "Numero B = " + AllTrim(Str(nNumeroB))

nNumeroC := nNumeroA
nNumeroA := nNumeroB
nNumeroB := nNumeroC

@ 05, 02 say "Numero A = " + AllTrim(Str(nNumeroA))
@ 06, 02 say "Numero B = " + AllTrim(Str(nNumeroB))
@ 07, 02 say ""