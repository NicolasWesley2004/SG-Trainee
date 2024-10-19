local getlist := {}
local cNome   := "              "
local nIdade  := 0

cls

@ 01, 01 to 07, 42 double
@ 02, 02 say "Qual seu nome.?"
@ 03, 02 say "Qual sua idade?"
@ 04, 02 to 04, 41 double

@ 02, 18 get cNome
@ 03, 18 get nIdade picture "999"
read

if nIdade >= 21 
    @ 06, 02 say AllTrim(cNome) + " voce tem 21 anos ou mais"
else
    @ 06, 02 say AllTrim(cNome) + " voce tem menos de 21 anos"
end if
@ 07, 01 say ""