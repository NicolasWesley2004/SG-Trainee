cls

set epoch to 1940
set date brit

dAtual     := Date()
nDia       := Day(dAtual)
nMes       := Month(dAtual)
nAno       := Year(dAtual)
nDiaSemana := DoW(dAtual)

if nMes == 1
    cMes := "Janeiro"
elseif nMes == 2
    cMes := "Fevereiro"
elseif nMes == 3
    cMes := "Marco"
elseif nMes == 4
    cMes := "Abril"
elseif nMes == 5
    cMes := "Maio"
elseif nMes == 6
    cMes := "Junho"
elseif nMes == 7
    cMes := "Julho"
elseif nMes == 8
    cMes := "Agosto"
elseif nMes == 9
    cMes := "Setembro"
elseif nMes == 10
    cMes := "Outubro"
elseif nMes == 11
    cMes := "Novembro"
elseif nMes == 12
    cMes := "Dezembro"
endif

if nDiaSemana == 1
    cDiaSemana := "Domingo"
elseif nDiaSemana == 2
    cDiaSemana := "Segunda-Feira"
elseif nDiaSemana == 3
    cDiaSemana := "Terca-Feira"
elseif nDiaSemana == 4
    cDiaSemana := "Quarta-Feira"
elseif nDiaSemana == 5
    cDiaSemana := "Quinta-Feira"
elseif nDiaSemana == 6
    cDiaSemana := "Sexta-Feira"
elseif nDiaSemana == 7
    cDiaSemana := "Sabado"
endif

@ 01, 01 to 03, 49 double
set color to "n/w"
@ 02, 02 say "Maringa," + Str(nDia) + " de " + cMes + " de" + Str(nAno) + ". (" + cDiaSemana + ")"
@ 03, 01 say ""