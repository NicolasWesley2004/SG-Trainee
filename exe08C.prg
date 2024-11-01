cls

set epoch to 1940
set date brit



do while .t.

    cNome              := Space(40)
    nIdade             := 0
    nLimite            := 0
    dAtual             := Date()
    dAnterior          := Date() -1
    dCompra            := Date()
    nSEQ               := 1
    nValorProduto      := 0
    nValorTotal        := 0
    cEndereco          := Space(20)
    cCorLimitePositivo := "n/g"
    cCorLimiteNegativo := "n/r"
    cCorCupom          := "n/gr"

    @ 01, 01 to 21, 67 double
    @ 02, 26 say "MERCADO TRAINEE"
    @ 04, 02 say "Insira seu nome........:"
    @ 05, 02 say "Insira sua idade.......:"
    @ 06, 02 say "Insira seu limite......:"
    @ 07, 02 say "Insira a data da compra:"
    @ 08, 02 to 08, 66

    @ 04, 27 get cNome   picture "@!"      valid !Empty(cNome)
    @ 05, 27 get nIdade  picture "999"     valid nIdade >= 0
    @ 06, 27 get nLimite picture "9999.99" valid nLimite > 0
    @ 07, 27 get dCompra                   valid dCompra >= dAnterior
    read

    if LastKey() == 27
        nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
        if nOpcao == 1
            exit
        endif
        loop
    endif

    do while .t.

        @ 09, 03 say "SEQ"
        @ 09, 14 say "PRODUTO"
        @ 09, 32 say "QTD"
        @ 09, 38 say "PRECO"
        @ 09, 47 say "VALOR"

        @ 10, 04 say AllTrim(Str(nSEQ ++))

        cProduto           := Space(20)
        nQuantidadeProduto := 0
        nPrecoProduto      := 0
        
        // PRODUTO
        @ 10, 08 get cProduto           picture "@!"        valid !Empty(cProduto)
        @ 10, 30 get nQuantidadeProduto picture "@e 999.99" valid nQuantidadeProduto > 0
        @ 10, 38 get nPrecoProduto      picture "@e 999.99" valid nPrecoProduto >= 0
        read

        if LastKey() == 27
            nSaida := Alert("Cancelar compra?", {"Cancelar", "Continuar", "Finalizar"})
            if nSaida == 1
                exit
            elseif nSaida == 2
                loop
            elseif nSaida == 3
                exit
            endif
        endif

        nValorProduto := (nQuantidadeProduto * nPrecoProduto)
        nValorTotal   += nValorProduto
        nLimiteCompra := (nLimite - nValorTotal)

        @ 10, 47 say Transform(nValorProduto, "@e 9999999.99")
        @ 12, 04 say AllTrim(Str(nSEQ ++))

        cProduto           := Space(20)
        nQuantidadeProduto := 0
        nPrecoProduto      := 0

        @ 16, 34 say "VALOR TOTAL:"
        @ 16, 47 say Transform(nValorTotal,   "@e 9999999.99")
        @ 17, 34 say "LIMITE.....:"

        if nValorTotal <= nLimite
            cCor := cCorLimitePositivo
        else
            cCor := cCorLimiteNegativo
        endif

        @ 17, 47 say Transform(nLimiteCompra, "@e 9999999.99") color cCor
        
        // PRODUTO
        @ 12, 08 get cProduto           picture "@!"        valid !Empty(cProduto)
        @ 12, 30 get nQuantidadeProduto picture "@e 999.99" valid nQuantidadeProduto > 0
        @ 12, 38 get nPrecoProduto      picture "@e 999.99" valid nPrecoProduto >= 0
        read

        if LastKey() == 27
            nSaida := Alert("Cancelar compra?", {"Cancelar", "Continuar", "Finalizar"})
            if nSaida == 1
                exit
            elseif nSaida == 2
                loop
            elseif nSaida == 3
                exit
            endif
        endif

        nValorProduto := (nQuantidadeProduto * nPrecoProduto)
        nValorTotal   += nValorProduto
        nLimiteCompra := (nLimite - nValorTotal)

        @ 12, 47 say Transform(nValorProduto, "@e 9999999.99")
        @ 14, 04 say AllTrim(Str(nSEQ ++))

        cProduto           := Space(20)
        nQuantidadeProduto := 0
        nPrecoProduto      := 0

        @ 16, 34 say "VALOR TOTAL:"
        @ 16, 47 say Transform(nValorTotal,   "@e 9999999.99")
        @ 17, 34 say "LIMITE.....:"

        if nValorTotal <= nLimite
            cCor := cCorLimitePositivo
        else
            cCor := cCorLimiteNegativo
        endif

        @ 17, 47 say Transform(nLimiteCompra, "@e 9999999.99") color cCor

        // PRODUTO
        @ 14, 08 get cProduto           picture "@!"        valid !Empty(cProduto)
        @ 14, 30 get nQuantidadeProduto picture "@e 999.99" valid nQuantidadeProduto > 0
        @ 14, 38 get nPrecoProduto      picture "@e 999.99" valid nPrecoProduto >= 0
        read

        if LastKey() == 27
            nSaida := Alert("Cancelar compra?", {"Cancelar", "Continuar", "Finalizar"})
            if nSaida == 1
                exit
            elseif nSaida == 2
                loop
            elseif nSaida == 3
                exit
            endif
        endif

        nValorProduto := (nQuantidadeProduto * nPrecoProduto)
        nValorTotal   += nValorProduto
        nLimiteCompra := (nLimite - nValorTotal)

        @ 14, 47 say Transform(nValorProduto, "@e 9999999.99")

        @ 16, 34 say "VALOR TOTAL:"
        @ 16, 47 say Transform(nValorTotal,   "@e 9999999.99")
        @ 17, 34 say "LIMITE.....:"

        if nValorTotal <= nLimite
            cCor := cCorLimitePositivo
        else
            cCor := cCorLimiteNegativo
        endif

        @ 17, 47 say Transform(nLimiteCompra, "@e 9999999.99") color cCor

    enddo

    if nSaida == 1
        loop
    endif

    @ 18, 02 to 18, 66
    @ 19, 02 say "Digite seu endereco..............: "
    @ 20, 02 say "Digite a data da entrega desejada: "
    @ 22, 02 say ""

    @ 19, 37 get cEndereco picture "@!" valid !Empty(cEndereco)
    @ 20, 37 get dCompra                valid dCompra >= dAtual
    read

    if LastKey() == 27
        nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
        if nOpcao == 1
            exit
        endif
        loop
    endif

    if LastKey() == 27
        exit
    endif

enddo