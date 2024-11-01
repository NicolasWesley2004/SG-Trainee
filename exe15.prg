cls

do while .t.
    cNome      := Space(10)
    nRepeticao := 0
    nLinha     := 4

    @ 01, 01 to 14, 30 double
    @ 02, 02 say "DIGITE SEU NOME:"

    @ 02, 19 get cNome picture "@!" valid !Empty(cNome)
    read

    if LastKey() == 27
        nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
        if nOpcao == 1
            exit
        endif
        loop
    endif

    do while nRepeticao < 10
        @ nLinha++, 02 say AllTrim(Str(nRepeticao)) + " " + cNome
        nRepeticao++
    enddo

    if LastKey() == 27
        exit
    endif

    @ 14, 01 say ""
enddo