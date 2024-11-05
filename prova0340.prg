//Nicolas Wesley Felicio Rossi

cls

set epoch to 1940
set date brit

do while .t.
    nEmpregados          := 0
    dAtual               := Date()
    nEmpregadosListados  := 0
    nHomensAposentados   := 0
    nMulheresAposentadas := 0
    nMulheresAcima85     := 0
    nHomensAntes2006     := 0
    nHomensComAdicional  := 0
    nMulheresComReducao  := 0
    nValorTotal          := 0

    @ 01, 01 to 24, 78
    @ 01, 32 say " CONTROLE INSS "
    @ 02, 02 say "Numero de empregados.:"
    @ 03, 02 to 03, 77

    @ 02, 24 get nEmpregados picture "99" valid nEmpregados > 0
    read

    if LastKey() == 27
        nOpcao := Alert("Deseja sair?", {"Cancelar", "Retornar", "Processar"})
        if nOpcao == 1
            loop
        elseif nOpcao == 2
            loop
        elseif nOpcao == 3
            exit
        endif
    endif

    // while 2 -----------------------

    do while .t.
        
        if nEmpregados == nEmpregadosListados
            exit
        else
        nOpcao               := 0
        cColaborador         := Space(30)
        cSexo                := Space(1)
        dNascimento          := CToD("")
        dAdmissao            := Date()
        dDemissao            := Date()
        nSalarioBase         := 0
        nAdicionalNoturno    := 0 // %
        nAdicionalInsalubre  := 0 // %
        

        @ 04, 02 say "Nome do colaborador.....:"
        @ 05, 02 say "Sexo....................:"
        @ 05, 30 say "[M]asculino [F]eminino"
        @ 06, 02 say "Data de nascimento......:"
        @ 07, 02 say "Data admissao...........:"
        @ 08, 02 say "Data demissao...........:"
        @ 09, 02 say "Valor do salario base...:"
        @ 10, 02 say "Adicional noturno.......:"
        @ 10, 31 say "%"
        @ 11, 02 say "Adicional insalubridade.:"
        @ 11, 31 say "%"

        @ 04, 28 get cColaborador        picture "@!"          valid !Empty(cColaborador)
        @ 05, 28 get cSexo               picture "@!"          valid cSexo $ "MF"
        @ 06, 28 get dNascimento                               valid dNascimento < dAtual .and. !Empty(dNascimento)
        @ 07, 28 get dAdmissao                                 valid dAdmissao < dAtual
        @ 08, 28 get dDemissao                                 valid dDemissao < dAtual .and. dDemissao > dAdmissao
        @ 09, 28 get nSalarioBase        picture "@e 99999.99" valid nSalarioBase > 0
        @ 10, 28 get nAdicionalNoturno   picture "999"         valid nAdicionalNoturno >= 0
        @ 11, 28 get nAdicionalInsalubre picture "999"         valid nAdicionalInsalubre >= 0
        read

        if LastKey() == 27
            nOpcao := Alert("Deseja sair?", {"Cancelar", "Retornar", "Processar"})
            if nOpcao == 1
                exit
            elseif nOpcao == 2
                loop
            elseif nOpcao == 3
                exit
            endif
        endif

        nAnoAtual            := Year(dAtual)
        nAnoNascimento       := Year(dNascimento)
        nAnoAdmissao         := Year(dAdmissao)
        nAnoDemissao         := Year(dDemissao)
        nIdade               := (nAnoAtual - nAnoNascimento)
        nTempoTrabalhado     := (nAnoDemissao - nAnoAdmissao)
        nValor2porc          := ((nSalarioBase * 2) / 100)
        nValor6porc          := ((nSalarioBase * 6) / 100 )
        nValorNoturno        := ((nSalarioBase * nAdicionalNoturno) / 100)
        nValorInsalubre      := ((nSalarioBase * nAdicionalInsalubre) / 100)
        nValorAposentadoria  := 0
        
        if cSexo == "M" .and. nIdade > 59 .and. nTempoTrabalhado >= 27
            nHomensAposentados += 1
            if (nAnoAdmissao < 2010 .and. nAnoDemissao > 2010) .and. (nAnoAdmissao < 2015 .and. nAnoDemissao > 2015)
                nValorAposentadoria += nValor6porc
            endif
            if nAnoAdmissao < 2012 .and. nAnoDemissao > 2020
                nValorAposentadoria -= nValor2porc
            endif
            if nAnoAdmissao < 2006
                nHomensAntes2006 += 1
            endif
            if nAdicionalNoturno > 0 .or. nAdicionalInsalubre > 0 .or. nValorAposentadoria > 0
                nHomensComAdicional += 1
            endif
        elseif cSexo == "F" .and. nIdade > 55 .and. nTempoTrabalhado >= 22
            nMulheresAposentadas += 1
            if (nAnoAdmissao < 2010 .and. nAnoDemissao > 2010) .and. (nAnoAdmissao < 2015 .and. nAnoDemissao > 2015)
                nValorAposentadoria += nValor6porc
            endif
            if nAnoAdmissao < 2012 .and. nAnoDemissao > 2020
                nValorAposentadoria -= nValor2porc
                nMulheresComReducao += 1
            endif
            if nIdade > 85
                nMulheresAcima85 += 1
            endif
        endif

        nEmpregadosListados  += 1
        nValorTotal          += (nSalarioBase + nValorAposentadoria + nValorNoturno + nValorInsalubre)

        endif
    enddo

    if nOpcao == 1
        loop
    endif

    do while .t.
        nAposentadosTotal    := (nHomensAposentados + nMulheresAposentadas)
        nHomensPorcentagem   := ((100 * nHomensAposentados) / nAposentadosTotal)
        nMulheresPorcentagem := ((100 * nMulheresAposentadas) / nAposentadosTotal)

        @ 12, 02 to 12, 77
        @ 13, 02 say "Percentual de aposentados:"
        @ 14, 02 say "Homens: " + Transform(nHomensPorcentagem, "@e 999.99") + "%" + " / Mulheres: " + Transform(nMulheresPorcentagem, "@e 999.99") + "%"
        @ 15, 02 say "Valor total da remuneracao:" + Transform(nValorTotal, "@e 99999.99")
        @ 17, 02 say "Mulheres com idade superior a 85 anos: " + AllTrim(Str(nMulheresAcima85))
        @ 18, 02 say "Homens admitidos depois de 2006......: " + AllTrim(Str(nHomensAntes2006))
        @ 19, 02 say "Homens que receberam algum adicional.: " + AllTrim(Str(nHomensComAdicional))
        @ 20, 02 say "Mulheres que receberam alguma reducao: " + AllTrim(Str(nMulheresComReducao))
        
        Inkey(0)

        if LastKey() == 27
            nOpcao := Alert("Deseja sair?", {"Cancelar", "Retornar", "Processar"})
            if nOpcao == 1
                exit
            elseif nOpcao == 2
                loop
            elseif nOpcao == 3
                exit
            endif
        endif

    enddo

    if nOpcao == 3
        loop
    endif
enddo