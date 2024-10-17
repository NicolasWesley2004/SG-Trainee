local getlist := {}
local cNome   := "              "
local nIdade  := 0

cls

@ 01, 01 to 06, 42 double
@ 02, 02 say "Qual seu nome?"
@ 03, 02 say "Qual sua idade?"

@ 02, 18 get cNome
@ 03, 18 get nIdade
read

if nIdade >= 21 
    @ 05, 02 say AllTrim(cNome) + " voce tem 21 anos ou mais"
else
    @ 05, 02 say AllTrim(cNome) + " voce tem menos de 21 anos"
end if
@ 06, 01 say ""