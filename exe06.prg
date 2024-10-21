procedure main ()

local getlist := {}
local nNota1  := 0
local nNota2  := 0
local nNota3  := 0
local nMedia  := 0

cls

@ 01, 01 to 10, 39 double
@ 02, 14 say "MEDIA DE NOTAS"
@ 04, 02 say "Escreva sua primeira nota:"
@ 05, 02 say "Escreva sua segunda nota.:"
@ 06, 02 say "Escreva sua terceira nota:"
@ 07, 02 to 07, 38 double

@ 04, 29 get nNota1 picture "999"
@ 05, 29 get nNota2 picture "999"
@ 06, 29 get nNota3 picture "999"
read

nMedia := ((nNota1 + nNota2 + nNota3) / 3)

@ 09, 02 say "A sua media foi: " + AllTrim(Transform(nMedia, "@E"))
@ 10, 01 say ""