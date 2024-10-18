local getlist := {}
local cNome   := "              "
local nIdade  := 0
local nPeso   := 0

cls

@ 01, 01 to 05, 16 double
@ 02, 02 say "Digite seu nome :"
@ 03, 02 say "Digite sua idade:"
@ 04, 02 say "Digite seu peso :"

@ 02, 19 get cNome
@ 03, 19 get nIdade
@ 04, 19 get nPeso

@ 02, 02 say "nome: Nicolas"
@ 03, 02 say "idade: 17 anos"
@ 04, 02 say "peso: 70kg"
@ 05, 01 say ""