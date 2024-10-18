local getlist := {}
local nNumeroA := 0
local nNumeroB := 0
local nNumeroC := 0

cls

@ 01, 01 to 07, 23 double

@ 02, 02 say "Numero A ="
@ 03, 02 say "Numero B ="

@ 02, 13 get nNumeroA
@ 03, 13 get nNumeroB
read

nNumeroC := nNumeroA
nNumeroA := nNumeroB
nNumeroB := nNumeroC

@ 05, 02 say "Numero A = " + AllTrim(Str(nNumeroA))
@ 06, 02 say "Numero B = " + AllTrim(Str(nNumeroB))
@ 07, 02 say ""