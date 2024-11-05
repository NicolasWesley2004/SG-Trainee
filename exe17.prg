cls

do while .t.
    cNome := Space(10)

    @ 01, 01 to 05, 40 double
    @ 02, 02 say "DIGITE SEU NOME..........:"

    @ 02, 29 get cNome picture "@!" valid !Empty(cNome)
    read

    if LastKey() == 27
        nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
        if nOpcao == 1
            exit
        endif
        loop
    endif

    cNome             := AllTrim(cNome)
    nTamanho          := Len(cNome) 
    cInvertida := ""
    
    do while nTamanho > 0
        @ 04, 02 clear to 04, 20
        cInvertida += SubStr(cNome, nTamanho--, 1)
    enddo
    
    @ 04, 02 say cInvertida

    if LastKey() == 27
        exit
    endif

enddo