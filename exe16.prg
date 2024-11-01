cls

do while .t.
    cNome                := Space(10)
    nQuantidadeRepeticao := 0
    nRepeticao           := 0
    nLinha               := 4

    @ 01, 01 to 23, 40 double
    @ 02, 02 say "DIGITE SEU NOME..........:"
    @ 03, 02 say "DESEJA QUANTAS REPETICOES?"

    @ 02, 29 get cNome                picture "@!" valid !Empty(cNome)
    @ 03, 29 get nQuantidadeRepeticao picture "99" valid nQuantidadeRepeticao < 20
    read

    if LastKey() == 27
        nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
        if nOpcao == 1
            exit
        endif
        loop
    endif

    do while nRepeticao < nQuantidadeRepeticao
        @ nLinha++, 02 say AllTrim(Str(nRepeticao)) + " " + cNome
        nRepeticao++
    enddo
    @ 23, 01 say ""

    if LastKey() == 27
        exit
    endif

enddo