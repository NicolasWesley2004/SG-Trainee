// NICOLAS WESLEY FELICIO ROSSI

cls

set epoch to 1940
set date brit
set message to 10 center
set wrap on

cErro         := "ERROR: LOGIN OU SENHA INCORRETO"
cGarantia     := "Sua garantia ainda estava em dia"
cLimite       := "Seu limite foi atingido"
cCor          := "w/w"
nInicio       := 1
nOrdemServico := 0
dDataAtual    := Date()
nAnoAtual     := Year(dDataAtual)
nMesAtual     := Month(dDataAtual)

do while .t.
    cLogin := Space(10)
    cSenha := Space(10)

    @ 01, 01 to 18, 77
    @ 01, 25 say " N.WESLEY ASSISTENCIA TECNICA "
    @ 02, 02 say "Login.:"
    @ 03, 02 say "Senha.:"

    @ 02, 10 get cLogin picture "@!"            // (valid) fazer isso -------------------------------------------
    @ 03, 10 get cSenha              color cCor // (valid) e isso -----------------------------------------------
    read

    cLogin := AllTrim(cLogin)
    cSenha := AllTrim(cSenha)

    if !cLogin == "ADMIN"
        Alert(cErro)
        loop
    endif
    if !cSenha == "123mudar"
        Alert(cErro)
        loop
    endif

    if LastKey() == 27
        nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
        if nOpcao == 1
            exit
        endif
        loop
    endif

    cSenha    := AllTrim(cSenha)
    nLenSenha := Len(cSenha)
    cSubSenha := SubStr(cSenha, nInicio, 1)

    @ 02, 02 clear to 17, 76
    @ 02, 25 say "MENU PRINCIPAL"
    @ 04, 02 prompt "1. Efetuar pedidos"
    @ 05, 02 prompt "2. Sair"
    menu to nComando

    if nComando == 1
        nOrdemServico++
        cNomeCliente      := Space(40)
        dOrdemServico     := Date()
        cNomeTecnico      := Space(30)
        cDescricaoEquip   := Space(40)
        dCompra           := Date()
        cEntregaDomicilio := Space(1)
        nLimiteCredito    := 0
        cEndereco         := Space(40)
        cBairro           := Space(30)
        cReferencia       := Space(20)
        nTelefone         := 0
        nValorTotal       := 0

        @ 02, 02 clear to 17, 76
        @ 02, 02 say "Ordem de servico.........:"
        @ 02, 31 say Transform(nOrdemServico, "99999999")
        @ 03, 02 say "Nome do cliente..........:"
        @ 04, 02 say "Data da ordem do servico.:"
        @ 05, 02 say "Nome do tecnico..........:"
        @ 06, 02 say "Descricao do equipamento.:"
        @ 07, 02 say "Data da compra...........:"
        @ 08, 02 say "Entrega domicilio........:"
        @ 08, 33 say "[S]im ou [N]ao"
        @ 09, 02 say "Limite de credito........: R$"

        @ 03, 31 get cNomeCliente      picture "@!"      valid !Empty(cNomeCliente)
        @ 04, 31 get dOrdemServico                       valid dOrdemServico <= dDataAtual
        @ 05, 31 get cNomeTecnico      picture "@!"      valid !Empty(cNomeTecnico)
        @ 06, 31 get cDescricaoEquip   picture "@!"      valid !Empty(cDescricaoEquip)
        @ 07, 31 get dCompra                             valid dCompra <= dOrdemServico
        @ 08, 31 get cEntregaDomicilio picture "@!"      valid cEntregaDomicilio $ "SN"
        @ 09, 31 get nLimiteCredito    picture "9999.99" valid nLimiteCredito > 0
        read

        nAnoOrdem    := Year(dOrdemServico)
        nMesOrdem    := Month(dOrdemServico)
        nAnoCompra   := Year(dCompra)
        nMesCompra   := Month(dCompra)
        nAnoGarantia := nAnoOrdem - nAnoCompra
        nAnosEmMeses := nAnoGarantia * 12
        nMesGarantia := nMesOrdem - nMesCompra
        nGarantia    := nAnosEmMeses + nMesGarantia

        if LastKey() == 27
            nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
            if nOpcao == 1
                exit
            endif
            loop
        endif

        if cEntregaDomicilio == "S"
            @ 12, 02 say "Endereco...:"
            @ 13, 02 say "Bairro.....:"
            @ 14, 02 say "Referencia.:"
            @ 15, 02 say "Telefone...:"
            @ 17, 02 say "Sera adicionada uma taxa de entrega de 3%"

            @ 12, 15 get cEndereco   picture "@!"             valid !Empty(cEndereco)
            @ 13, 15 get cBairro     picture "@!"             valid !Empty(cBairro)
            @ 14, 15 get cReferencia picture "@!"             valid !Empty(cReferencia)
            @ 15, 15 get nTelefone   picture "(99) 9999-9999" valid nTelefone > 0
            read

            if LastKey() == 27
                nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
                if nOpcao == 1
                    exit
                endif
                loop
            endif
        endif

        @ 02, 02 clear to 17, 76

        do while .t.
            @ 02, 02 say "O que deseja.?"

            @ 04, 02 prompt "Produto"
            @ 05, 02 prompt "Servico"
            @ 07, 02 prompt "Fechar Conta"
            menu to nDesejo

            if LastKey() == 27
                nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
                if nOpcao == 1
                    exit
                endif
                loop
            endif

            @ 02, 02 clear to 16, 76

            if nDesejo == 1
                do while .t.
                    cDescProduto := Space(30)
                    nQuantidade  := 0
                    nPrecoUnit   := 0
                    nDesconto    := 0

                    @ 02, 09 say "Desc. do produto"
                    @ 02, 35 say "Qtde."
                    @ 02, 43 say "Preco Unit."
                    @ 02, 57 say "%Desc."
                    @ 02, 66 say "Valor Total"
                    @ 11, 50 say "Limite.:"

                    @ 03, 02 get cDescProduto picture "@!"             valid !Empty(cDescProduto)
                    @ 03, 35 get nQuantidade  picture "9999"           valid nQuantidade > 0
                    @ 03, 43 get nPrecoUnit   picture "@e 99999999.99" valid nPrecoUnit  >= 0
                    @ 03, 57 get nDesconto    picture "@e 99.99"       valid nDesconto   >= 0
                    read

                    if LastKey() == 27
                        nOpcao := Alert("Deseja finalizar a ordem de servico?", {"Sim", "Nao"})
                        if nOpcao == 1
                            exit
                        endif
                        loop
                    endif

                    if nGarantia > 24
                        nValor := (nQuantidade * nPrecoUnit)
                        nValor -= (nValor * nDesconto) / 100
                    else
                        nValor := 0
                        Alert(cGarantia)
                    endif

                    nLimite := nLimiteCredito - nValor

                    if nLimite < 0
                        Alert(cLimite)
                    endif

                    @ 03, 66 say Transform(nValor, "@e 99999999.99")
                    @ 11, 59 say nLimiteCredito

                    nValorTotal += nValor

                    @ 17, 44 say "Valor Total da ordem.:" + Transform(nValorTotal, "@e 99999999.99")

                    // PRODUTO 2 --------------------------------------------------------------------
                    cDescProduto := Space(30)
                    nQuantidade  := 0
                    nPrecoUnit   := 0
                    nDesconto    := 0
                    
                    @ 05, 02 get cDescProduto picture "@!"             valid !Empty(cDescProduto)
                    @ 05, 35 get nQuantidade  picture "9999"           valid nQuantidade > 0
                    @ 05, 43 get nPrecoUnit   picture "@e 99999999.99" valid nPrecoUnit  >= 0
                    @ 05, 57 get nDesconto    picture "@e 99.99"       valid nDesconto   >= 0
                    read

                    if LastKey() == 27
                        nOpcao := Alert("Deseja finalizar a ordem de servico?", {"Sim", "Nao"})
                        if nOpcao == 1
                            exit
                        endif
                        loop
                    endif

                    nValor := (nQuantidade * nPrecoUnit)
                    nValor -= (nValor * nDesconto) / 100

                    @ 05, 66 say Transform(nValor, "@e 99999999.99")
                     

                    nValorTotal += nValor

                    @ 17, 44 say "Valor Total da ordem.:" + Transform(nValorTotal, "@e 99999999.99")

                    // PRODUTO 3 --------------------------------------------------------------------
                    cDescProduto := Space(30)
                    nQuantidade  := 0
                    nPrecoUnit   := 0
                    nDesconto    := 0
                    
                    @ 07, 02 get cDescProduto picture "@!"             valid !Empty(cDescProduto)
                    @ 07, 35 get nQuantidade  picture "9999"           valid nQuantidade > 0
                    @ 07, 43 get nPrecoUnit   picture "@e 99999999.99" valid nPrecoUnit  >= 0
                    @ 07, 57 get nDesconto    picture "@e 99.99"       valid nDesconto   >= 0
                    read

                    if LastKey() == 27
                        nOpcao := Alert("Deseja finalizar a ordem de servico?", {"Sim", "Nao"})
                        if nOpcao == 1
                            exit
                        endif
                        loop
                    endif

                    nValor := (nQuantidade * nPrecoUnit)
                    nValor -= (nValor * nDesconto) / 100

                    @ 07, 66 say Transform(nValor, "@e 99999999.99")

                    nValorTotal += nValor

                    @ 17, 44 say "Valor Total da ordem.:" + Transform(nValorTotal, "@e 99999999.99")
                enddo

            elseif nDesejo == 2  //--------------------------------------------------------------------------------------------
                do while .t.
                    cDescServico  := Space(25)
                    nValorServico := 0
                    nDesconto    := 0
                    nComissao     := 0

                    @ 02, 07 say "Desc. do servico"
                    @ 02, 29 say "Valor do Servico"
                    @ 02, 47 say "%Desc."
                    @ 02, 55 say "%Comissao"
                    @ 02, 66 say "Preco Total"

                    @ 03, 02 get cDescServico  picture "@!"             valid !Empty(cDescServico)
                    @ 03, 31 get nValorServico picture "@e 99999999.99" valid nValorServico >= 0
                    @ 03, 47 get nDesconto     picture "@e 99.99"       valid nDesconto     >= 0
                    @ 03, 57 get nComissao     picture "@e 99.99"       valid nComissao     >= 0
                    read

                    if LastKey() == 27
                        nOpcao := Alert("Deseja finalizar a ordem de servico?", {"Sim", "Nao"})
                        if nOpcao == 1
                            exit
                        endif
                        loop
                    endif

                    if nGarantia > 12
                        nPreco := nValorServico 
                        nPreco -= (nValorServico * nDesconto) / 100
                        nPreco += (nValorServico * nComissao) / 100
                    else
                        nPreco := 0
                        Alert(cGarantia)
                    endif

                    @ 03, 66 say Transform(nPreco, "@e 99999999.99")

                    nValorTotal += nPreco

                    Inkey(0)

                    if LastKey() == 27
                        nOpcao := Alert("Deseja finalizar a ordem de servico?", {"Sim", "Nao"})
                        if nOpcao == 1
                            exit
                        endif
                        loop
                    endif
                enddo
            
            elseif nDesejo == 3

                @ 02, 02 clear to 16, 76
                @ 02, 15 say "CONTA"

                Inkey(0)
            endif
            @ 02, 02 clear to 16, 76
        enddo

    elseif nComando == 2
        @ 02, 02 clear to 17, 76
        loop
    endif
enddo