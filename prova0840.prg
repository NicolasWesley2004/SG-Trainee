// NICOLAS WESLEY FELICIO ROSSI

cls

cCor        := "b/n"
cCorLetra   := "r/n"
cCorScore   := "n/w"
cGameOver   := "GAME OVER"
cListaNomes := ""
nLinhaScore := 6
nPlayer     := 0
nInicioNome := 1

do while .t.
    cNome := Space(20)

    @ 01, 01 to 03, 70 double
    @ 02, 02 say "Nome do jogador.:"

    @ 02, 20 get cNome picture "@!" valid !Empty(cNome)
    read

    if LastKey() == 27
        nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
        if nOpcao == 1
            exit
        endif
        loop
    endif

    cListaNomes += cNome
    nLinhaScore++
    nPlayer++
    nScore := 0

    @ 01, 01 clear to 26, 80
    @ 02, 36 to 24, 44 double
    @ 00, 30 say "PRESS ANY KEY TO START" color cCor
    @ 01, 33 say "<GUITAR LEGEND>"        color cCor
    @ 23, 37 say "Q W E R"                color cCor

    Inkey(0)

    nSequencia := 0
    nLinha     := 22
    nLinha2    := 22
    nInicio    := 1
    cSeqRandom := ""
    nSair      := 0

    do while .t.
        nRandom := hb_RandomInt(1, 4)

        @ 00, 00 clear to 00, 60
        @ 00, 36 say "Score: " + AllTrim(Str(nScore)) color cCor

        if nRandom == 1
            cTecla := "Q"
            nLetra := 37
        elseif nRandom == 2
            cTecla := "W"
            nLetra := 39
        elseif nRandom == 3
            cTecla := "E"
            nLetra := 41
        elseif nRandom == 4
            cTecla := "R"
            nLetra := 43
        endif 

        @ nLinha, nLetra say cTecla color cCorLetra

        nLinha--
        nSequencia++
        cSeqRandom += AllTrim(Str(nRandom))

        if nSequencia == 20
            do while .t.
                nKey := Inkey(1)
                cSubRandom := SubStr(cSeqRandom, nInicio, 1)

                if nKey == 113
                    if cSubRandom = "1"
                        nScore++
                        nInicio++
                        cScore := "Pontuacao: " + AllTrim(Str(nScore))

                        @ nLinha2, 37 clear to nLinha2, 43
                        @ 00, 36 say "Score: " + AllTrim(Str(nScore)) color cCor

                        nLinha2--
                        loop
                    else
                        Alert(cGameOver)
                        if nScore > 0
                            Alert(cScore)
                        endif
                        nSair := 1
                        exit
                    endif
                elseif nKey == 119
                    if cSubRandom = "2"
                        nScore++
                        nInicio++

                        @ nLinha2, 37 clear to nLinha2, 43
                        @ 00, 36 say "Score: " + AllTrim(Str(nScore)) color cCor

                        nLinha2--
                        loop
                    else
                        Alert(cGameOver)
                        if nScore > 0
                            Alert(cScore)
                        endif
                        nSair := 1
                        exit
                    endif
                elseif nKey == 101
                    if cSubRandom = "3"
                        nScore++
                        nInicio++

                        @ nLinha2, 37 clear to nLinha2, 43
                        @ 00, 36 say "Score: " + AllTrim(Str(nScore)) color cCor

                        nLinha2--
                        loop
                    else
                        Alert(cGameOver)
                        if nScore > 0
                            Alert(cScore)
                        endif
                        nSair := 1
                        exit
                    endif
                elseif nKey == 114
                    if cSubRandom = "4"
                        nScore++
                        nInicio++

                        @ nLinha2, 37 clear to nLinha2, 43
                        @ 00, 36 say "Score: " + AllTrim(Str(nScore)) color cCor

                        nLinha2--
                        loop
                    else
                        Alert(cGameOver)
                        if nScore > 0
                            Alert(cScore)
                        endif
                        nSair := 1
                        exit
                    endif
                endif

                if LastKey() == 27
                    nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
                    if nOpcao == 1
                        exit
                    endif
                    loop
                endif

                if nScore == 20
                    nSair := 1
                    exit
                endif
            enddo
        endif
                
        if LastKey() == 27
            nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
            if nOpcao == 1
                exit
            endif
            loop
        endif

        if nSair == 1
            nSair := 0
            exit
        endif
    enddo
        cSubNome := SubStr(cListaNomes, 1, 20)
    
    @ 00, 00 clear to 25, 70
    @ 04, 25 to 22, 50 double
    @ 06, 26 to 06, 49 double
    @ 05, 35 say "History"

    if nPlayer >= 1
        nInicioNome := 1
        
        @ 07, 26 say cSubNome                 color cCorScore
        @ 07, 47 say Transform(nScore, "999") color cCorScore
    endif
    if nPlayer >= 2
        cSubNome := SubStr(cListaNomes, 21, 20)

        @ 08, 26 say cSubNome                 color cCorScore
        @ 08, 47 say Transform(nScore, "999") color cCorScore
    endif
    if nPlayer >= 3
        cSubNome := SubStr(cListaNomes, 41, 20)

        @ 09, 26 say cSubNome                 color cCorScore
        @ 09, 47 say Transform(nScore, "999") color cCorScore
    endif






    Inkey(0)
enddo