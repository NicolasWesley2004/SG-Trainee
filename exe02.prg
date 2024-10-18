local getlist := {}
local cNome   := "              "
local nIdade  := 0
local nPeso   := 0

cls

@ 01, 01 to 09, 33 double
@ 02, 02 say "Digite seu nome :"
@ 03, 02 say "Digite sua idade:"
@ 04, 02 say "Digite seu peso :"

@ 02, 19 get cNome
@ 03, 19 get nIdade
@ 04, 19 get nPeso
read

@ 06, 02 say cNome
@ 07, 02 say AllTrim(Str(nIdade))
@ 08, 02 say AllTrim(Str(nPeso)) + "Kg"
@ 09, 01 say ""