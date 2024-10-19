local getlist := {}
local nNota1  := 0
local nNota2  := 0
local nNota3  := 0
local nMedia  := 0

cls

@ 01, 01 to 08, 39 double
@ 02, 02 say "Escreva sua primeira nota:"
@ 03, 02 say "Escreva sua segunda nota.:"
@ 04, 02 say "Escreva sua terceira nota:"
@ 05, 02 to 05, 38 double

@ 02, 29 get nNota1 picture "999"
@ 03, 29 get nNota2 picture "999"
@ 04, 29 get nNota3 picture "999"
read

nMedia := ((nNota1 + nNota2 + nNota3) / 3)

@ 07, 02 say "A sua media foi: " + AllTrim(Transform(nMedia, "@E"))
@ 08, 01 say ""