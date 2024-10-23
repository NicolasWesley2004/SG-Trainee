local getlist     := {}
local cNome       := Space(37)
local nRepeticoes := 0

cls

@ 01, 01 TO 09, 79
@ 02, 26 say "REPETICAO DE NOME COM ESCOLHA"
@ 04, 02 say "Digite seu nome.......................:"
@ 05, 02 say "Quantas vezes devemos repetir seu nome?"
@ 06, 02 to 06, 78 double

@ 04, 42 get cNome       picture "@!" valid !Empty(cNome)
@ 05, 42 get nRepeticoes picture "99"
read

@ 08, 02 say Replicate(AllTrim(cNome), nRepeticoes)
@ 09, 01 say ""