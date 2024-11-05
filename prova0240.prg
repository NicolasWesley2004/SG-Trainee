// NICOLAS WESLEY FELICIO ROSSI
cls

set epoch to 1940
set date brit

cNomeVendedor   := Space(30)
dCotacao        := Date()
cNome           := Space(30)
nIdade          := 0
cSexo           := Space(1)
nAnoPrimeiraCNH := 0
cMarca          := Space(20)
nAnoFabricacao  := 0
cTipoVeiculo    := Space(1)
nMotor          := 0
nValor          := 0
cUsoVeiculo     := Space(1)
nPrimeiraCNH    := 0
nAnoCNH         := 0

@ 01, 01 to 03, 78
@ 01, 04 say " NWESLEY - COTACAO DE SEGUROS "
@ 02, 02 say "Vendedor:"
@ 02, 53 say "Data da cotacao:"
@ 03, 01 say ""

@ 02, 12 get cNomeVendedor picture "@!" valid !Empty(cNomeVendedor)
@ 02, 70 get dCotacao
read

@ 01, 01 clear to 03, 78
@ 01, 01 to 05, 78
@ 01, 30 say " DADOS PESSOAIS "
@ 02, 02 say "Nome..............:"
@ 02, 56 say "Idade.:"
@ 03, 02 say "Sexo..............:"
@ 03, 24 say "[M]asculino [F]eminino"
@ 04, 02 say "Ano Primeira CNH..:"

@ 02, 22 get cNome           picture "@!"   valid !Empty(cNome)
@ 02, 64 get nIdade          picture "999"  valid nIdade >= 18
@ 03, 22 get cSexo           picture "@!"   valid cSexo $ "ML"
read

nAnoDataCotacao := Year(dCotacao)
nPrimeiraCNH    := (nIdade - 18)
nAnoCNH         := (nAnoDataCotacao - nPrimeiraCNH)
                    
@ 04, 22 get nAnoPrimeiraCNH picture "9999" valid nAnoPrimeiraCNH >= nAnoCNH .and. nAnoPrimeiraCNH <= nAnoDataCotacao
read

@ 01, 01 clear to 05, 78
@ 01, 01 to 08, 78
@ 01, 30 say " DADOS DO VEICULO "
@ 02, 02 say "Marca.............:"
@ 03, 02 say "Ano de Fabricacao.:"
@ 04, 02 say "Tipo..............:"
@ 04, 24 say "[P]asseio [E]sportivo [L]uxo"
@ 05, 02 say "Motor.............:"
@ 06, 02 say "Valor (Fipe)......:"
@ 07, 02 say "Uso...............:"
@ 07, 24 say "[P]articular pr[O]fissional"

@ 02, 22 get cMarca         picture "@!"              valid !Empty(cMarca)
@ 03, 22 get nAnoFabricacao picture "9999"            valid nAnoFabricacao <= nAnoDataCotacao .and. nAnoFabricacao > 1900
@ 04, 22 get cTipoVeiculo   picture "@!"              valid cTipoVeiculo $ "PEL"
@ 05, 22 get nMotor         picture "9.9"             valid nMotor >= 1
@ 06, 22 get nValor         picture "@e 9,999,999.99" valid nValor > 0
@ 07, 22 get cUsoVeiculo    picture "@!"              valid cUsoVeiculo $ "PO"
read

// variaveis

nValorSeguro1      := ((nValor * 6) / 100) // 1000, 60
nValorSeguro2      := ((nValor * 7) / 100)
nTempoHabilitado   := (nAnoDataCotacao - nAnoPrimeiraCNH)
nValorPorcentagem1 := 0
nValorPorcentagem2 := 0
nMesDataCotacao  := Month(dCotacao)

// seguro 1
if nIdade < 25 .or. nIdade > 65
    nValorPorcentagem1 += 10
    if cSexo == "M"
        nValorPorcentagem1 += 10
    else
        nValorPorcentagem1 -= 5  
    endif
    if nTempoHabilitado <= 3
        nValorPorcentagem1 += 15
    elseif nTempoHabilitado > 8
        nValorPorcentagem1 -= 10
    endif
    if cTipoVeiculo == "E"
        nValorPorcentagem1 += 10
    elseif cTipoVeiculo == "L"
        nValorPorcentagem1 += 20
    endif
    if nMotor > 2
        nValorPorcentagem1 += 15
    endif
    if nAnoFabricacao < nAnoDataCotacao
        nTempoFabricado := (nAnoDataCotacao - nAnoFabricacao)
        if nTempoFabricado < 20
            nValorPorcentagem1 := (nTempoFabricado * 0.5)
        else
            nValorPorcentagem1 += 10
        endif
    endif
    if cUsoVeiculo == "O"
        nValorPorcentagem1 += 10
    endif
    if nMesDataCotacao == 3
        nValorPorcentagem1 -= 10
    endif
endif

// seguro 2

if nIdade < 23 .or. nIdade > 60
    nValorPorcentagem2 += 15
elseif nIdade >= 30 .and. nIdade <= 50
    nValorPorcentagem2 -= 8
endif
if cSexo == "M"
    nValorPorcentagem2 -= 6
else
    nValorPorcentagem2 += 12  
endif
if nTempoHabilitado <= 2
    nValorPorcentagem2 += 20
elseif nTempoHabilitado > 5
    nValorPorcentagem2 -= 8
endif
if cTipoVeiculo == "E"
    nValorPorcentagem2 += 15
elseif cTipoVeiculo == "L"
    nValorPorcentagem2 += 18
endif
if nMotor >= 1.5
    nValorPorcentagem2 += 10
endif
if nAnoFabricacao < nAnoDataCotacao
    nTempoFabricado := (nAnoDataCotacao - nAnoFabricacao)
    if nTempoFabricado < 10
        nValorPorcentagem2 := (nTempoFabricado * 0.8)
    else
        nValorPorcentagem2  += 8
    endif
endif
if cUsoVeiculo == "O"
    nValorPorcentagem2 += 12
endif
if nMesDataCotacao == 9
    nValorPorcentagem2 -= 8
endif

nValorPorcentagem1 := nValorSeguro1 + ((nValorSeguro1 * nValorPorcentagem1) / 100 )
nValorPorcentagem2 := nValorSeguro2 + ((nValorSeguro2 * nValorPorcentagem2) / 100 )
nValorSeguro1Ano   := nValorPorcentagem1
nValorSeguro2Ano   := nValorPorcentagem2
nValorSeguro1Tri   := nValorSeguro1Ano / 4
nValorSeguro2Tri   := nValorSeguro2Ano / 4
nValorSeguro1Mes   := nValorSeguro1Ano / 12
nValorSeguro2Mes   := nValorSeguro2Ano / 12

@ 01, 01 clear to 08, 78

@ 01, 01 to 07, 30
@ 02, 02 say "SEGUROS E CIA"
@ 03, 02 to 03, 29
@ 04, 02 say "Mensal.....:"
@ 04, 14 say nValorSeguro1Mes
@ 05, 02 say "Trimestral.:"
@ 05, 14 say nValorSeguro1Tri
@ 06, 02 say "Anual......:"
@ 06, 14 say nValorSeguro1Ano
@ 01, 32 to 07, 61
@ 02, 33 say "AUTO SEGUROS S A"
@ 03, 33 to 03, 60
@ 04, 33 say "Mensal.....:"
@ 04, 45 say nValorSeguro2Mes
@ 05, 33 say "Trimestral.:"
@ 05, 45 say nValorSeguro2Tri
@ 06, 33 say "Anual......:"
@ 06, 45 say nValorSeguro2Ano
@ 09, 02 say "Cotacao valida ate" + nDiaFinalCotacao + " " + nMesDataCotacao