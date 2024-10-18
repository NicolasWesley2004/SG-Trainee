local getlist := {}
local cNome   := "              "
local nIdade  := 0

cls

@ 01, 01 TO 06, 36 double
@ 02, 02 say "Qual seu nome?"
@ 03, 02 say "Qual sua idade?"

@ 02, 18 get cNome
@ 03, 18 get nIdade
read

if nIdade <= 7
    @ 05, 02 say "Voce esta registrado no infantil A"
elseif nIdade <= 10
    @ 05, 02 say "Voce esta registrado no infantil B"
elseif nIdade <= 13
    @ 05, 02 say "Voce esta registrado no juvenil A"
elseif nIdade <= 17
    @ 05, 02 say "Voce esta registrado no juvenil B"
elseif nIdade >= 18
    @ 05, 02 say "Voce esta registrado no Senior"
end if

@ 06, 01 say ""