local getlist := {}
local cNome   := Space(40)

cls

@ 01, 01 TO 08, 72
@ 02, 29 say "REPETICAO DE NOME"
@ 04, 02 say "Digite seu nome:"
@ 05, 02 to 05, 71 double

@ 04, 19 get cNome picture "@!" valid !Empty(cNome)
read

@ 07, 02 say Replicate(AllTrim(cNome), 10)
@ 08, 01 say ""