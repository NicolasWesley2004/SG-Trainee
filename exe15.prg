local getlist := {}
local cNome   := "       "

cls

@ 01, 01 TO 06, 72
@ 02, 02 say "Digite seu nome:"
@ 03, 02 to 03, 71 double

@ 02, 19 get cNome
read

@ 05, 02 say Replicate( cNome, 10)
@ 06, 01 say ""