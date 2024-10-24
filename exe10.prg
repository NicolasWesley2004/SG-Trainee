cls

cNome       := Space(40)
nIdade      := 0
cMaiorQue21 := " voce tem 21 anos ou mais"
cMenorQue21 := " voce tem menos de 21 anos"

@ 01, 01 to 09, 58 double
@ 02, 22 say "CONDICAO 21 ANOS"
@ 04, 02 say "Qual seu nome.?"
@ 05, 02 say "Qual sua idade?"
@ 06, 02 to 06, 57

@ 04, 18 get cNome  picture "@!"  valid !Empty(cNome)
@ 05, 18 get nIdade picture "999" valid nIdade >= 0
read

if nIdade >= 21 
    @ 08, 02 say AllTrim(cNome) + cMaiorQue21
else
    @ 08, 02 say AllTrim(cNome) + cMenorQue21
end if
@ 09, 01 say ""