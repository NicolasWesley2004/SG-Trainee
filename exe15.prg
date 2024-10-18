local getlist := {}
local cNome   := "       "

cls

@ 01, 01 TO 05, 72
@ 02, 02 say "Digite seu nome:"

@ 02, 19 get cNome
read

@ 04, 02 say Replicate( cNome, 10)
@ 05, 01 say ""