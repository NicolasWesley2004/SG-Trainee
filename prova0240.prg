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
@ 03, 22 get cSexo           picture "@!"   valid cSexo == "M" .or. cSexo == "F"
read

nAnoDataCotacao := Year(dCotacao)
nPrimeiraCNH    := (nIdade - 18)
nAnoCNH         := (nAnoDataCotacao - nPrimeiraCNH) // rever
                    
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
@ 04, 22 get cTipoVeiculo   picture "@!"              valid cTipoVeiculo == "P" .or. cTipoVeiculo == "E" .or. cTipoVeiculo == "L"
@ 05, 22 get nMotor         picture "9.9"             valid nMotor >= 1
@ 06, 22 get nValor         picture "@e 9,999,999.99" valid nValor > 0
@ 07, 22 get cUsoVeiculo    picture "@!"              valid cUsoVeiculo == "P" .or. cUsoVeiculo == "O"
read

// variaveis

nValorSeguro1    := ((nValor * 6) / 100) // 1000, 60
nValorSeguro2    := ((nValor * 7) / 100)
nTempoHabilitado := (nAnoDataCotacao - nAnoPrimeiraCNH)
nValor05porcento := ((nValorSeguro1 * 0.5) / 100)
nValor08porcento := ((nValorSeguro1 * 0.8) / 100)
nValor5porcento  := ((nValorSeguro1 * 5) / 100)
nValor6porcento  := ((nValorSeguro1 * 6) / 100)
nValor8porcento  := ((nValorSeguro1 * 8) / 100)
nValor10porcento := ((nValorSeguro1 * 10) / 100)
nValor12porcento := ((nValorSeguro1 * 12) / 100)
nValor15porcento := ((nValorSeguro1 * 15) / 100)
nValor18porcento := ((nValorSeguro1 * 18) / 100)
nValor20porcento := ((nValorSeguro1 * 20) / 100)
nMesDataCotacao  := Month(dCotacao)

// seguro 1
if nIdade < 25 .or. nIdade > 65
    nLiquidoSeguro1 := nValor10porcento
    if cSexo == "M"
        nLiquidoSeguro1 += nValor10porcento
    else
        nLiquidoSeguro1 -= nValor5porcento  
    endif
    if nTempoHabilitado <= 3
        nLiquidoSeguro1 += nValor15porcento
    elseif nTempoHabilitado > 8
        nLiquidoSeguro1 -= nValor10porcento
    endif
    if cTipoVeiculo == "E"
        nLiquidoSeguro1 += nValor10porcento
    elseif cTipoVeiculo == "L"
        nLiquidoSeguro1 += nValor20porcento
    endif
    if nMotor > 2
        nLiquidoSeguro1 += nValor15porcento
    endif
    if nAnoFabricacao < nAnoDataCotacao
        nTempoFabricado := (nAnoDataCotacao - nAnoFabricacao)
        if nTempoFabricado < 20
            nValorFabricacao := (nTempoFabricado * nValor05porcento)
            nLiquidoSeguro1  += nValorFabricacao
        else
            nLiquidoSeguro1  += nValor10porcento
        endif
    endif
    if cUsoVeiculo == "O"
        nLiquidoSeguro1 += nValor10porcento
    endif
    if nMesDataCotacao == 3
        nLiquidoSeguro1 -= nValor10porcento
    endif
endif

// seguro 2

if nIdade < 23 .or. nIdade > 60
    nLiquidoSeguro2 := nValor15porcento
elseif nIdade >= 30 .and. nIdade <= 50
    nLiquidoSeguro2 -= nValor8porcento
endif
if cSexo == "M"
    nLiquidoSeguro2 -= nValor6porcento
else
    nLiquidoSeguro2 += nValor12porcento  
endif
if nTempoHabilitado <= 2
    nLiquidoSeguro2 += nValor20porcento
elseif nTempoHabilitado > 5
    nLiquidoSeguro2 -= nValor8porcento
endif
if cTipoVeiculo == "E"
    nLiquidoSeguro2 += nValor15porcento
elseif cTipoVeiculo == "L"
    nLiquidoSeguro2 += nValo18porcento
endif
if nMotor >= 1.5
    nLiquidoSeguro2 += nValor10porcento
endif
if nAnoFabricacao < nAnoDataCotacao
    nTempoFabricado := (nAnoDataCotacao - nAnoFabricacao)
    if nTempoFabricado < 10
        nValorFabricacao := (nTempoFabricado * nValor08porcento)
        nLiquidoSeguro2  += nValorFabricacao
    else
        nLiquidoSeguro2  += nValor8porcento
    endif
endif
if cUsoVeiculo == "O"
    nLiquidoSeguro2 += nValor12porcento
endif
if nMesDataCotacao == 9
    nLiquidoSeguro2 -= nValor8porcento
endif

nValorSeguro1Mes := nLiquidoSeguro1
nValorSeguro2Mes := nLiquidoSeguro2
nValorSeguro1Tri := nValorSeguro1Mes * 3
nValorSeguro2Tri := nValorSeguro2Mes * 3
nValorSeguro1Ano := nValorSeguro1Mes * 12
nValorSeguro2Ano := nValorSeguro2Mes * 12

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
@ 04, 45 say nValorSeguro1Mes
@ 05, 33 say "Trimestral.:"
@ 05, 45 say nValorSeguro1Tri
@ 06, 33 say "Anual......:"
@ 06, 45 say nValorSeguro1Ano
@ 09, 02 say "Cotacao valida ate"