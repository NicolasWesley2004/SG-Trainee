cls

cNome      := Space(40)
nIdade     := 0
cMuitoNovo := "Voce ainda e muito novo"
cInfantilA := "Voce esta registrado no infantil A"
cInfantilB := "Voce esta registrado no infantil B"
cJuvenilA  := "Voce esta registrado no juvenil A"
cJuvenilB  := "Voce esta registrado no juvenil B"
cSenior    := "Voce esta registrado no Senior"

@ 01, 01 TO 09, 58 double
@ 02, 23 say "REGISTRO NATACAO"
@ 04, 02 say "Qual seu nome.?"
@ 05, 02 say "Qual sua idade?"
@ 06, 02 to 06, 57 double

@ 04, 18 get cNome  picture "@!"  valid !Empty(cNome)
@ 05, 18 get nIdade picture "999" valid nIdade >= 0
read

if nIdade <= 4
    @ 08, 02 say cMuitoNovo
elseif nIdade <= 7
    @ 08, 02 say cInfantilA
elseif nIdade <= 10
    @ 08, 02 say cInfantilB
elseif nIdade <= 13
    @ 08, 02 say cJuvenilA
elseif nIdade <= 17
    @ 08, 02 say cJuvenilB
elseif nIdade >= 18
    @ 08, 02 say cSenior
end if

@ 09, 01 say ""