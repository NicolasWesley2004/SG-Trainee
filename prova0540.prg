//Nicolas Wesley Felicio Rossi

cls

set epoch to 1940
set date brit
set message to 10 center
set wrap on

cMaiuscula    := "A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z"
cMinuscula    := "a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z"
cNomeRuim          := "Seu login e fraco, utilize letras maiusculas."
cSenhaPequena      := "Senha deve possuir pelo menos 8 caracteres."
cSenhaFraca        := "Senha fraca tente novamente."
cMaiorEstoque      := "Quantidade maior que estoque."
cMaiorDesc         := "Quantidade de desconto maior que permitido."
cErroLimite        := "O valor da compra excedeu o limite de credito"
dAtual             := Date()
nCodigo1           := 5500
nCodigo2           := 7744
nCodigo3           := 4445
nCodigo4           := 6565
cProduto1          := "Amora preta"
cProduto2          := "Uva rubi"
cProduto3          := "Pepino"
cProduto4          := "Morango"
nPrecoUnit1        := 1.50
nPrecoUnit2        := 8.00
nPrecoUnit3        := 3.99
nPrecoUnit4        := 15.49
nMaxDesconto1      := 12.00
nMaxDesconto2      := 11.00
nMaxDesconto3      := 02.00
nMaxDesconto4      := 06.00
nEstoque1          := 110.00
nEstoque2          := 198.50
nEstoque3          := 445.00
nEstoque4          := 200.00
nValorTotal1       := nPrecoUnit1 * nEstoque1
nValorTotal2       := nPrecoUnit2 * nEstoque2
nValorTotal3       := nPrecoUnit3 * nEstoque3
nValorTotal4       := nPrecoUnit4 * nEstoque4
nPedido            := 0

do while .t.
    cNomeLogin := Space(30)
    cSenha     := Space(12)

    @ 01, 01 to 18, 76
    @ 01, 30 say " NICOLAS W FRUITS "
    @ 03, 37 say "LOGIN"
    @ 05, 02 say "Nome do usuario..:"
    @ 06, 02 say "Senha do usuario.:"

    @ 05, 20 get cNomeLogin picture "@!" valid !Empty(cNomeLogin)
    @ 06, 20 get cSenha           
    read

    if LastKey() == 27
        nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
        if nOpcao == 1
            exit
        endif
        loop
    endif

    cSenha    := AllTrim(cSenha)
    nLenSenha := Len(cSenha)

    if nLenSenha < 8
        Alert(cSenhaPequena)
        exit
    endif

    @ 08, 02 say "pressione qualquer tecla para prosseguir"
    Inkey(0)

    @ 02, 02 clear to 09, 49

    do while .t.

        @ 03, 37 say "MENU"        
        @ 05, 02 prompt "Efetuar pedidos"
        @ 06, 02 prompt "Sair"
        menu to nEscolha

        @ 02, 02 clear to 09, 49

        if nEscolha == 0
            nEscolha := 2

        elseif nEscolha == 1
            nPedido++
            cNomeCliente      := Space(20)
            nLimite           := 0
            dPedido           := Date()
            nValorTotalCompra := 0

            @ 02, 02 clear to 09, 49
            @ 03, 02 say "Numero do pedido..:"
            @ 03, 22 say AllTrim(Str(nPedido))
            @ 04, 02 say "Nome do cliente...:"
            @ 05, 02 say "Limite de credito.:"
            @ 06, 02 say "Data do pedido....:"

            @ 04, 22 get cNomeCliente picture "@!"         valid !Empty(cNomeCliente)
            @ 05, 22 get nLimite      picture "@e 9999.99" valid nLimite > 0 
            @ 06, 22 get dPedido                           valid dPedido <= dAtual
            read

            if LastKey() == 27
                nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
                if nOpcao == 1
                    exit
                endif
                loop
            endif

            do while .t.

                nCodigoCompra  := 0
                nQuantCompra   := 0
                nMaxDescCompra := 0

                @ 02, 02 clear to 09, 49
                @ 03, 02 say "CODIGO  DESC. DO PRODUTO  ESTOQUE  PRECO UNIT.  % MAX. DESCONTO  VALOR TOT"
                @ 04, 03 say AllTrim(Str(nCodigo1))
                @ 04, 12 say cProduto1
                @ 04, 28 say AllTrim(Str(nEstoque1))
                @ 04, 39 say "R$ " + AllTrim(Str(nPrecoUnit1))
                @ 04, 56 say AllTrim(Str(nMaxDesconto1)) + "%"
                @ 04, 68 say Transform(nValorTotal1, "@e 9999.99")
                @ 05, 03 say AllTrim(Str(nCodigo2))
                @ 05, 12 say cProduto2
                @ 05, 28 say AllTrim(Str(nEstoque2))
                @ 05, 39 say "R$ " + AllTrim(Str(nPrecoUnit2))
                @ 05, 56 say AllTrim(Str(nMaxDesconto2)) + "%"
                @ 05, 68 say Transform(nValorTotal2, "@e 9999.99")
                @ 06, 03 say AllTrim(Str(nCodigo3))
                @ 06, 12 say cProduto3
                @ 06, 28 say AllTrim(Str(nEstoque3))
                @ 06, 39 say "R$ " + AllTrim(Str(nPrecoUnit3))
                @ 06, 56 say AllTrim(Str(nMaxDesconto3)) + "%"
                @ 06, 68 say Transform(nValorTotal3, "@e 9999.99")
                @ 07, 03 say AllTrim(Str(nCodigo4))
                @ 07, 12 say cProduto4
                @ 07, 28 say AllTrim(Str(nEstoque4))
                @ 07, 39 say "R$ " + AllTrim(Str(nPrecoUnit4))
                @ 07, 56 say AllTrim(Str(nMaxDesconto4)) + "%"
                @ 07, 68 say Transform(nValorTotal4, "@e 9999.99")

                @ 09, 36 say "COMPRAS"
                @ 11, 02 say "CODIGO  DESC. DO PRODUTO  QUANT.   PRECO UNIT.  % MAX. DESCONTO  VALOR TOT"

                @ 12, 03 get nCodigoCompra picture "9999" valid nCodigoCompra == nCodigo1 .or. nCodigoCompra == nCodigo2 .or. nCodigoCompra == nCodigo3 .or. nCodigoCompra == nCodigo4
                read

                if LastKey() == 27
                    nOpcao := Alert("Deseja finalizar a compra?", {"Sim", "Nao"})
                    if nOpcao == 1
                        @ 02, 02 clear to 17, 75
                        exit
                    endif
                    loop
                endif

                if nCodigoCompra == nCodigo1
                    @ 12, 12 say cProduto1
                elseif nCodigoCompra == nCodigo2
                    @ 12, 12 say cProduto2
                elseif nCodigoCompra == nCodigo3
                    @ 12, 12 say cProduto3
                elseif nCodigoCompra == nCodigo4
                    @ 12, 12 say cProduto4
                endif 

                @ 12, 28 get nQuantCompra picture "@e 999.99" valid nQuantCompra > 0
                read

                if LastKey() == 27
                    nOpcao := Alert("Deseja finalizar a compra?", {"Sim", "Nao"})
                    if nOpcao == 1
                        @ 02, 02 clear to 17, 75
                        exit
                    endif
                    loop
                endif

                if nCodigoCompra == nCodigo1
                    if nQuantCompra > nEstoque1
                        Alert(cMaiorEstoque)
                        loop
                    else
                        nEstoque1 -= nQuantCompra
                    endif
                elseif nCodigoCompra == nCodigo2
                    if nQuantCompra > nEstoque2
                        Alert(cMaiorEstoque)
                        loop
                    else
                        nEstoque2 -= nQuantCompra
                    endif
                elseif nCodigoCompra == nCodigo3
                    if nQuantCompra > nEstoque3
                        Alert(cMaiorEstoque)
                        loop
                    else
                        nEstoque3 -= nQuantCompra
                    endif
                elseif nCodigoCompra == nCodigo3
                    if nQuantCompra > nEstoque3
                        Alert(cMaiorEstoque)
                        loop
                    else
                        nEstoque4 -= nQuantCompra
                    endif
                endif

                if nCodigoCompra == nCodigo1
                    @ 12, 39 say "R$ " + AllTrim(Str(nPrecoUnit1))
                elseif nCodigoCompra == nCodigo2
                    @ 12, 39 say "R$ " + AllTrim(Str(nPrecoUnit2))
                elseif nCodigoCompra == nCodigo3
                    @ 12, 39 say "R$ " + AllTrim(Str(nPrecoUnit3))
                elseif nCodigoCompra == nCodigo4
                    @ 12, 39 say "R$ " + AllTrim(Str(nPrecoUnit4))
                endif 

                @ 12, 56 get nMaxDescCompra picture "99" valid nQuantCompra >= 0
                read
    
                if LastKey() == 27
                    nOpcao := Alert("Deseja finalizar a compra?", {"Sim", "Nao"})
                    if nOpcao == 1
                        @ 02, 02 clear to 17, 75
                        exit
                    endif
                    loop
                endif

                if nCodigoCompra == nCodigo1
                    if nMaxDescCompra >= nMaxDesconto1
                        Alert(cMaiorDesc)
                        loop
                    endif
                elseif nCodigoCompra == nCodigo2
                    if nMaxDescCompra >= nMaxDesconto2
                        Alert(cMaiorDesc)
                        loop
                    endif
                elseif nCodigoCompra == nCodigo3
                    if nMaxDescCompra >= nMaxDesconto3
                        Alert(cMaiorDesc)
                        loop
                    endif
                elseif nCodigoCompra == nCodigo4
                    if nMaxDescCompra >= nMaxDesconto4
                        Alert(cMaiorDesc)
                        loop
                    endif
                endif

                if nCodigoCompra == nCodigo1
                    nValorTotalProd := nQuantCompra * nPrecoUnit1
                elseif nCodigoCompra == nCodigo2
                    nValorTotalProd := nQuantCompra * nPrecoUnit2
                elseif nCodigoCompra == nCodigo3
                    nValorTotalProd := nQuantCompra * nPrecoUnit3
                elseif nCodigoCompra == nCodigo4
                    nValorTotalProd := nQuantCompra * nPrecoUnit4
                endif 
                
                nValorDesc      := (nValorTotalProd * nMaxDescCompra) / 100
                nValorTotalProd := nValorTotalProd - nValorDesc

                @ 12, 68 say Transform(nValorTotalProd, "@e 9999.99")

                nValorTotalCompra += nValorTotalProd
                nLimiteCompra     := (nLimite - nValorTotalCompra)

                @ 14, 49 say "VALOR TOTAL:"
                @ 14, 62 say Transform(nValorTotalCompra, "@e 9999999.99")
                @ 15, 49 say "LIMITE.....:"

                if nLimiteCompra < nValorTotalCompra
                    Alert(cErroLimite)
                    loop
                endif
        
                @ 15, 62 say Transform(nLimiteCompra, "@e 9999999.99")

            enddo
        elseif nEscolha == 2
            exit
        endif
    enddo

enddo