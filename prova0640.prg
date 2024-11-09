//Nicolas Wesley Felicio Rossi

cls

set message to 10 center
set wrap on

do while .t.
    cNome              := Space(20)
    cPalavra           := Space(12)
    cDica1             := Space(20)
    cDica2             := Space(20)
    cDica3             := Space(20)
    cLetrasAdivinhadas := Space(Len(cPalavra))
    cLetrasErradas     := ""
    nTentativasFacil   := 6
    nTentativasMedio   := 5
    nTentativasDificil := 4
    cVitoria           := .f.
    cCor               := "w/r"
    cLetrasUsadas      := ""
    nLetraUsada        := 0
    nColunaLetra       := 10
    nLetraCasa         := 1


    nErro              := 0
    nInicio            := 1
    nColuna            := 16
    nLetras            := 1

    @ 01, 01 to 20, 46
    @ 01, 16 say " JOGO DA VELHA "
    @ 03, 02 say "Nome do usuario.:"

    @ 03, 20 get cNome picture "@!" valid !Empty(cNome)
    read

    if LastKey() == 27
        nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
        if nOpcao == 1
            exit
        endif
        loop
    endif

    @ 05, 02 prompt "Modo facil"   message "Maximo 5 ERROS"
    @ 06, 02 prompt "Modo Medio"   message "Maximo 4 ERROS"
    @ 07, 02 prompt "Modo Dificil" message "Maximo 3 ERROS"
    menu to nEscolha

    @ 10, 32 clear to 10, 45
    @ 09, 02 say "Palavra chave...:"

    @ 09, 20 get cPalavra picture "@!" valid !Empty(cPalavra)
    read

    if LastKey() == 27
        nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
        if nOpcao == 1
            exit
        endif
        loop
    endif

    if LastKey() == 27
        nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
        if nOpcao == 1
            exit
        endif
        loop
    endif

    // MODO FACIL ----------------
    if nEscolha == 1
        @ 11, 02 say "Dica 1:"
        @ 12, 02 say "Dica 2:"
        @ 13, 02 say "Dica 3:"

        @ 11, 10 get cDica1 picture "@!" valid !Empty(cDica1)
        @ 12, 10 get cDica2 picture "@!" valid !Empty(cDica2)
        @ 13, 10 get cDica3 picture "@!" valid !Empty(cDica3)
        read

        @ 02, 02 clear to 19, 45
        do while .t.
            cLetra := Space(1)

            @ 03, 21 say "FACIL"
            @ 06, 16 say "Palavra:"
            @ 05, 04 to 05, 09
            @ 06, 04 to 11, 04
            @ 05, 09 to 06, 09
            @ 11, 10 say "Digite uma letra:"
            @ 13, 02 say "Letras: " + cLetrasUsadas
            @ 16, 02 say "Dica 1: ***"
            @ 17, 02 say "Dica 2: ***"
            @ 18, 02 say "Dica 3: ***"

            @ 11, 28 get cLetra picture "@!" valid !Empty(cLetra)
            read

            if LastKey() == 27
                nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
                if nOpcao == 1
                    exit
                endif
                loop
            endif

            Inkey(0)

            if cLetra $ cLetrasUsadas
                Alert("Letra ja Usada")
                @ 13, nColunaLetra say cLetra color cCor
            else
                cLetrasUsadas  += cLetra
                nColunaLetra++
            endif

            cPalavra       := AllTrim(cPalavra)
            cPalavraLen    := Len(cPalavra)

            if cLetra $ cPalavra
                cLetraPalavra := SubStr(cPalavra, nInicio, 1)
                if cLetra == cLetraPalavra
                    @ 07, nColuna say cLetraPalavra
                elseif !cLetra == cLetraPalavra
                    do while nLetraCasa == cPalavraLen
                        nInicio += 1
                        if cLetra == cLetraPalavra .and. nLetraCasa <= cPalavraLen
                            nColuna++
                            @ 07, nColuna say cLetraPalavra
                        endif
                        nLetraCasa += 1
                    enddo
                endif
            else
                Alert("Erro")
                nErro += 1
            endif
                    
            if nErro == 1
                @ 07, 09 say "O"
            elseif nErro == 2
                @ 08, 09 say "|"
                @ 16, 10 say AllTrim(cDica1)
            elseif nErro == 3
                @ 09, 08 say "\"
                @ 09, 10 say "/"
                @ 17, 10 say AllTrim(cDica2)
            elseif nErro == 4
                @ 10, 08 say "/|\"
                @ 18, 10 say AllTrim(cDica3)
            elseif nErro == 5
                @ 11, 08 say "0 0"
            elseif nErro == 6
                @ 08, 09 say "T"
                Alert("ENFORCADO, GAME OVER")
                exit
            endif 
        enddo

        // MODO MEDIO
        elseif nEscolha == 2
            @ 02, 02 clear to 19, 45
            do while .t.
                cLetra := Space(1)
    
                @ 03, 21 say "MEDIO"
                @ 06, 16 say "Palavra:"
                @ 05, 04 to 05, 09
                @ 06, 04 to 11, 04
                @ 05, 09 to 06, 09
                @ 11, 10 say "Digite uma letra:"
                @ 13, 02 say "Letras: " + cLetrasUsadas
    
                @ 11, 28 get cLetra picture "@!" valid !Empty(cLetra)
                read
    
                if LastKey() == 27
                    nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
                    if nOpcao == 1
                        exit
                    endif
                    loop
                endif
    
                Inkey(0)
    
                if cLetra $ cLetrasUsadas
                    Alert("Letra ja Usada")
                    @ 13, nColunaLetra say cLetra color cCor
                else
                    cLetrasUsadas  += cLetra
                    nColunaLetra++
                endif
    
                cPalavra       := AllTrim(cPalavra)
                cPalavraLen    := Len(cPalavra)
    
                if cLetra $ cPalavra
                    cLetraPalavra := SubStr(cPalavra, nInicio, 1)
                    if cLetra == cLetraPalavra
                        @ 07, nColuna say cLetraPalavra
                    elseif !cLetra == cLetraPalavra
                        do while nLetraCasa == 12
                            nInicio    += 1
                            nLetraCasa += 1
                            if cLetra == cLetraPalavra .and. nLetraCasa <= cPalavraLen
                                nColuna++
                                @ 07, nColuna say cLetraPalavra
                            endif
                        enddo
                    endif
                else
                    Alert("Erro")
                    nErro += 1
                endif
                        
                if nErro == 1
                    @ 07, 09 say "O"
                elseif nErro == 2
                    @ 08, 09 say "|"
                elseif nErro == 3
                    @ 09, 08 say "\"
                    @ 09, 10 say "/"
                elseif nErro == 4
                    @ 10, 08 say "/|\"
                elseif nErro == 5
                    @ 08, 09 say "T"
                    Alert("ENFORCADO, GAME OVER")
                    exit
                endif 
            enddo

            // MODO DIFICIL
        elseif nEscolha == 3
            @ 02, 02 clear to 19, 45
            do while .t.
                cLetra := Space(1)
    
                @ 03, 21 say "MEDIO"
                @ 06, 16 say "Palavra:"
                @ 05, 04 to 05, 09
                @ 06, 04 to 11, 04
                @ 05, 09 to 06, 09
                @ 11, 10 say "Digite uma letra:"
                @ 13, 02 say "Letras: " + cLetrasUsadas
    
                @ 11, 28 get cLetra picture "@!" valid !Empty(cLetra)
                read
    
                if LastKey() == 27
                    nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
                    if nOpcao == 1
                        exit
                    endif
                    loop
                endif
    
                Inkey(0)
    
                if cLetra $ cLetrasUsadas
                    Alert("Letra ja Usada")
                    @ 13, nColunaLetra say cLetra color cCor
                else
                    cLetrasUsadas  += cLetra
                    nColunaLetra++
                endif
    
                cPalavra       := AllTrim(cPalavra)
                cPalavraLen    := Len(cPalavra)
    
                if cLetra $ cPalavra
                    cLetraPalavra := SubStr(cPalavra, nInicio, 1)
                    if cLetra == cLetraPalavra
                        @ 07, nColuna say cLetraPalavra
                    elseif !cLetra == cLetraPalavra
                        do while nLetraCasa == 12
                            nInicio    += 1
                            nLetraCasa += 1
                            if cLetra == cLetraPalavra .and. nLetraCasa <= cPalavraLen
                                nColuna++
                                @ 07, nColuna say cLetraPalavra
                            endif
                        enddo
                    endif
                else
                    Alert("Erro")
                    nErro += 1
                endif
                        
                if nErro == 1
                    @ 07, 09 say "O"
                elseif nErro == 2
                    @ 08, 09 say "|"
                elseif nErro == 3
                    @ 09, 08 say "\"
                    @ 09, 10 say "/"
                elseif nErro == 4
                    @ 08, 09 say "T"
                    Alert("ENFORCADO, GAME OVER")
                    exit
                endif 
            enddo
    endif
enddo