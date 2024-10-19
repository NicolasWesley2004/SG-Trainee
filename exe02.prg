local getlist := {}
local cNome   := "              "
local nIdade  := 0
local nPeso   := 0

cls

@ 01, 01 to 10, 33 double
@ 02, 02 say "Digite seu nome :"
@ 03, 02 say "Digite sua idade:"
@ 04, 02 say "Digite seu peso :"
@ 05, 02 to 05, 32 double

@ 02, 19 get cNome
@ 03, 19 get nIdade picture "999"
@ 04, 19 get nPeso  picture "@E 999.99"
read

@ 07, 02 say "Nome.: "  + cNome
@ 08, 02 say "Idade: "  + AllTrim(Str(nIdade))
@ 09, 02 say "Peso.: "  + AllTrim(Transform(nPeso, "@E")) + "Kg"
@ 10, 01 say ""