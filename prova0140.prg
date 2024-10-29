procedure main()

cls

set epoch to 1940
set date brit

cNome             := Space(40)
cCurso            := Space(15)
dNascimento       := CToD("")
dAtual            := Date()
nSerie            := 0
nValorMensalidade := 0
cDisciplina1      := Space(12)
cDisciplina2      := Space(12)
cDisciplina3      := Space(12)
nNotaDisc1Bi1     := 0
nNotaDisc1Bi2     := 0
nNotaDisc1Bi3     := 0
nNotaDisc1Bi4     := 0
nFaltaDisc1Bi1    := 0
nFaltaDisc1Bi2    := 0
nFaltaDisc1Bi3    := 0
nFaltaDisc1Bi4    := 0
nNotaDisc2Bi1     := 0
nNotaDisc2Bi2     := 0
nNotaDisc2Bi3     := 0
nNotaDisc2Bi4     := 0
nFaltaDisc2Bi1    := 0
nFaltaDisc2Bi2    := 0
nFaltaDisc2Bi3    := 0
nFaltaDisc2Bi4    := 0
nNotaDisc3Bi1     := 0
nNotaDisc3Bi2     := 0
nNotaDisc3Bi3     := 0
nNotaDisc3Bi4     := 0
nFaltaDisc3Bi1    := 0
nFaltaDisc3Bi2    := 0
nFaltaDisc3Bi3    := 0
nFaltaDisc3Bi4    := 0

@ 01, 01 to 23, 78 double
@ 02, 25 say "COLEGIO ESTADUAL IDI CACHIONE"
@ 04, 02 say "NOME DO ALUNO.......:"
@ 05, 02 say "DATA DE NASCIMENTO..:"
@ 06, 02 say "CURSO...............:"
@ 07, 02 say "SERIE...............:"
@ 08, 02 say "VALOR DA MENSALIDADE:"

@ 04, 24 get cNome             picture "@!"         valid !Empty(cNome)
@ 05, 24 get dNascimento                            valid dNascimento < dAtual
@ 06, 24 get cCurso            picture "@!"         valid !Empty(cCurso)
@ 07, 24 get nSerie            picture "9"          valid nSerie > 0 .and. nSerie < 9
@ 08, 24 get nValorMensalidade picture "@e 9999.99" valid nValorMensalidade >= 0
read

@ 10, 02 say "MATERIA:"
@ 12, 02 say "NOTA BIMESTRE 1:"
@ 13, 02 say "FALTAS.........:"
@ 14, 02 say "NOTA BIMESTRE 2:"
@ 15, 02 say "FALTAS.........:"
@ 16, 02 say "NOTA BIMESTRE 3:"
@ 17, 02 say "FALTAS.........:"
@ 18, 02 say "NOTA BIMESTRE 4:"
@ 19, 02 say "FALTAS.........:"

@ 10, 11 get cDisciplina1   picture "@!"  valid !Empty(cDisciplina1)
@ 12, 19 get nNotaDisc1Bi1  picture "999" valid nNotaDisc1Bi1 >= 0 .and. nNotaDisc1Bi1 <= 100
@ 13, 19 get nFaltaDisc1Bi1 picture "999" valid nFaltaDisc1Bi1 >= 0
@ 14, 19 get nNotaDisc1Bi2  picture "999" valid nNotaDisc1Bi2 >= 0 .and. nNotaDisc1Bi2 <= 100
@ 15, 19 get nFaltaDisc1Bi2 picture "999" valid nFaltaDisc1Bi2 >= 0
@ 16, 19 get nNotaDisc1Bi3  picture "999" valid nNotaDisc1Bi3 >= 0 .and. nNotaDisc1Bi3 <= 100
@ 17, 19 get nFaltaDisc1Bi3 picture "999" valid nFaltaDisc1Bi3 >= 0
@ 18, 19 get nNotaDisc1Bi4  picture "999" valid nNotaDisc1Bi4 >= 0 .and. nNotaDisc1Bi4 <= 100
@ 19, 19 get nFaltaDisc1Bi4 picture "999" valid nFaltaDisc1Bi4 >= 0
read

@ 10, 25 say "MATERIA:"
@ 12, 25 say "NOTA BIMESTRE 1:"
@ 13, 25 say "FALTAS.........:"
@ 14, 25 say "NOTA BIMESTRE 2:"
@ 15, 25 say "FALTAS.........:"
@ 16, 25 say "NOTA BIMESTRE 3:"
@ 17, 25 say "FALTAS.........:"
@ 18, 25 say "NOTA BIMESTRE 4:"
@ 19, 25 say "FALTAS.........:"

@ 10, 34 get cDisciplina2   picture "@!"  valid !Empty(cDisciplina2)
@ 12, 42 get nNotaDisc2Bi1  picture "999" valid nNotaDisc2Bi1 >= 0 .and. nNotaDisc2Bi1 <= 100
@ 13, 42 get nFaltaDisc2Bi1 picture "999" valid nFaltaDisc2Bi1 >= 0
@ 14, 42 get nNotaDisc2Bi2  picture "999" valid nNotaDisc2Bi2 >= 0 .and. nNotaDisc2Bi2 <= 100
@ 15, 42 get nFaltaDisc2Bi2 picture "999" valid nFaltaDisc2Bi2 >= 0
@ 16, 42 get nNotaDisc2Bi3  picture "999" valid nNotaDisc2Bi3 >= 0 .and. nNotaDisc2Bi3 <= 100
@ 17, 42 get nFaltaDisc2Bi3 picture "999" valid nFaltaDisc2Bi3 >= 0
@ 18, 42 get nNotaDisc2Bi4  picture "999" valid nNotaDisc2Bi4 >= 0 .and. nNotaDisc2Bi4 <= 100
@ 19, 42 get nFaltaDisc2Bi4 picture "999" valid nFaltaDisc2Bi4 >= 0
read

@ 10, 48 say "MATERIA:"
@ 12, 48 say "NOTA BIMESTRE 1:"
@ 13, 48 say "FALTAS.........:"
@ 14, 48 say "NOTA BIMESTRE 2:"
@ 15, 48 say "FALTAS.........:"
@ 16, 48 say "NOTA BIMESTRE 3:"
@ 17, 48 say "FALTAS.........:"
@ 18, 48 say "NOTA BIMESTRE 4:"
@ 19, 48 say "FALTAS.........:"

@ 10, 57 get cDisciplina3   picture "@!"  valid !Empty(cDisciplina3)
@ 12, 65 get nNotaDisc3Bi1  picture "999" valid nNotaDisc3Bi1 >= 0 .and. nNotaDisc3Bi1 <= 100
@ 13, 65 get nFaltaDisc3Bi1 picture "999" valid nFaltaDisc3Bi1 >= 0
@ 14, 65 get nNotaDisc3Bi2  picture "999" valid nNotaDisc3Bi2 >= 0 .and. nNotaDisc3Bi2 <= 100
@ 15, 65 get nFaltaDisc3Bi2 picture "999" valid nFaltaDisc3Bi2 >= 0
@ 16, 65 get nNotaDisc3Bi3  picture "999" valid nNotaDisc3Bi3 >= 0 .and. nNotaDisc3Bi3 <= 100
@ 17, 65 get nFaltaDisc3Bi3 picture "999" valid nFaltaDisc3Bi3 >= 0
@ 18, 65 get nNotaDisc3Bi4  picture "999" valid nNotaDisc3Bi4 >= 0 .and. nNotaDisc3Bi4 <= 100
@ 19, 65 get nFaltaDisc3Bi4 picture "999" valid nFaltaDisc3Bi4 >= 0
read

nMediaDisc1 := (nNotaDisc1Bi1 + nNotaDisc1Bi2 + nNotaDisc1Bi3 + nNotaDisc1Bi4)
nMediaDisc1 := (nMediaDisc1 / 4)
nMediaDisc2 := (nNotaDisc2Bi1 + nNotaDisc2Bi2 + nNotaDisc2Bi3 + nNotaDisc2Bi4)
nMediaDisc2 := (nMediaDisc2 / 4)
nMediaDisc3 := (nNotaDisc3Bi1 + nNotaDisc3Bi2 + nNotaDisc3Bi3 + nNotaDisc3Bi4)
nMediaDisc3 := (nMediaDisc3 / 4)
nMediaDisc4 := (nNotaDisc4Bi1 + nNotaDisc4Bi2 + nNotaDisc4Bi3 + nNotaDisc4Bi4)
nMediaDisc4 := (nMediaDisc4w / 4)

if nSerie <= 4
    if nMediaDisc1 < 60
        @ 21, 02 say "MATERIA: " + cDisciplina1 + " APROVADO!"
    else
        @ 21, 02 say "MATERIA: " + cDisciplina1 + " REPROVADO!"
    endif
endif
return