procedure main ()

local getlist := {}
local cNome   := Space(40)
local nIdade  := 0

cls

@ 01, 01 TO 09, 58 double
@ 02, 23 say "REGISTRO NATACAO"
@ 04, 02 say "Qual seu nome.?"
@ 05, 02 say "Qual sua idade?"
@ 06, 02 to 06, 57 double

@ 04, 18 get cNome  picture "@!"  valid !Empty(cNome)
@ 05, 18 get nIdade picture "999" valid nIdade >= 0
read

if nIdade <= 4
    @ 08, 02 say "Voce ainda e muito novo"
elseif nIdade <= 17
    @ 08, 02 say "Voce esta registrado no infantil A"
elseif nIdade <= 10
    @ 08, 02 say "Voce esta registrado no infantil B"
elseif nIdade <= 13
    @ 08, 02 say "Voce esta registrado no juvenil A"
elseif nIdade <= 17
    @ 08, 02 say "Voce esta registrado no juvenil B"
elseif nIdade >= 18
    @ 08, 02 say "Voce esta registrado no Senior"
end if

@ 09, 01 say ""