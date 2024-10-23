procedure main ()

local getlist := {}
local cNome   := Space(40)
local nIdade  := 0

cls

@ 01, 01 to 09, 58 double
@ 02, 25 say "MENOR QUE 21"
@ 04, 02 say "Qual seu nome.?"
@ 05, 02 say "Qual sua idade?"
@ 06, 02 to 06, 57 double

@ 04, 18 get cNome  picture "@!"  valid !Empty(cNome)
@ 05, 18 get nIdade picture "999" valid nIdade >= 0
read

if nIdade >= 21 
    @ 08, 02 say AllTrim(cNome) + " voce tem 21 anos ou mais"
else
    @ 08, 02 say AllTrim(cNome) + " voce tem menos de 21 anos"
end if
@ 09, 01 say ""