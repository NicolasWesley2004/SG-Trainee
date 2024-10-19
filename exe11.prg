local getlist := {}
local cNome   := "              "
local nIdade  := 0

cls

@ 01, 01 TO 07, 36 double
@ 02, 02 say "Qual seu nome?"
@ 03, 02 say "Qual sua idade?"
@ 04, 02 to 04, 35 double

@ 02, 18 get cNome
@ 03, 18 get nIdade picture "999"
read

if nIdade <= 7
    @ 06, 02 say "Voce esta registrado no infantil A"
elseif nIdade <= 10
    @ 06, 02 say "Voce esta registrado no infantil B"
elseif nIdade <= 13
    @ 06, 02 say "Voce esta registrado no juvenil A"
elseif nIdade <= 17
    @ 06, 02 say "Voce esta registrado no juvenil B"
elseif nIdade >= 18
    @ 06, 02 say "Voce esta registrado no Senior"
end if

@ 07, 01 say ""