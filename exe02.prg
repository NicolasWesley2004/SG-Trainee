procedure main ()

local getlist := {}
local cNome   := Space(40)
local nIdade  := 0
local nPeso   := 0

cls

@ 01, 01 to 12, 59 double
@ 02, 22 say "NOME, IDADE E PESO"
@ 04, 02 say "Digite seu nome.:"
@ 05, 02 say "Digite sua idade:"
@ 06, 02 say "Digite seu peso.:"
@ 07, 02 to 07, 58 double

@ 04, 19 get cNome  picture "@!"        valid !Empty(cNome)
@ 05, 19 get nIdade picture "999"       valid nIdade >= 0
@ 06, 19 get nPeso  picture "@E 999.99" valid nPeso  >= 0 .and. nPeso  <= 300
read

@ 09, 02 say "Nome.: "  + cNome
@ 10, 02 say "Idade: "  + AllTrim(Str(nIdade))
@ 11, 02 say "Peso.: "  + AllTrim(Transform(nPeso, "@E")) + "Kg"
@ 12, 01 say ""