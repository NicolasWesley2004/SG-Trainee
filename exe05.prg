local getlist := {}
local nNumeroA := 0
local nNumeroB := 0
local nNumeroC := 0

cls

@ 01, 01 to 08, 16 double

@ 02, 02 say "Numero A ="
@ 03, 02 say "Numero B ="
@ 04, 02 to 04, 15 double

@ 02, 13 get nNumeroA picture "999"
@ 03, 13 get nNumeroB picture "999"
read

nNumeroC := nNumeroA
nNumeroA := nNumeroB
nNumeroB := nNumeroC

@ 06, 02 say "Numero A = " + AllTrim(Str(nNumeroA))
@ 07, 02 say "Numero B = " + AllTrim(Str(nNumeroB))
@ 08, 02 say ""