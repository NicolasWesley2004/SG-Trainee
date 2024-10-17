local getlist := {}
local cNome   := "              "
local nIdade  := 0

cls

@ 01, 01 say "Qual seu nome?"
@ 02, 01 say "Qual sua idade?"

@ 01, 17 get cNome
@ 02, 17 get nIdade
read

if 
    @ 04, 01 say "Voce esta registrado no infantil A"
end if