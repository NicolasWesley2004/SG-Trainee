local nNota1 := 30
local nNota2 := 80
local nNota3 := 100
local nMedia := 00

cls

@ 01, 01 to 07, 30 double
@ 02, 02 say "Sua primeira nota foi: " + AllTrim(Str(nNota1))
@ 03, 02 say "Sua segunda nota foi:  " + AllTrim(Str(nNota2))
@ 04, 02 say "Sua terceira nota foi: " + AllTrim(Str(nNota3))

nMedia := ((nNota1 + nNota2 + nNota3) / 3)

@ 06, 02 say "A sua media foi: " + AllTrim(Str(nMedia))
@ 07, 01 say ""