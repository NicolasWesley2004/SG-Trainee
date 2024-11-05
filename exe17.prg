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

    nTamanho      := Len(cNome)
    cNome         := AllTrim(cNome)
    nTamanho      := Len(cNome) 
    cPrimeiroNome := SubStr(cNome, 1, 10)
    
    do while nTamanho > 0
        
    enddo
    
    @ 04, 02 say Str(nTamanho) + cPrimeiroNome

    if LastKey() == 27
        exit
    endif

enddo