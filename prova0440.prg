//Nicolas Wesley Felicio Rossi

cls

set epoch to 1940
set date brit
set message to 10 center
set wrap on

nCodigo       := 0
cSenha        := ""
dCadastro     := CToD("")
dAtual        := Date()
cSenhaPequena := "Senha deve possuir pelo menos 8 caracteres."
cSenhaFraca   := "Senha fraca tente novamente."
cNumerico     := "1|2|3|4|5|6|7|8|9|"
cMaiuscula    := "A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|"
cMinuscula    := "a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|"
cEspecial     := "!|@|#|$|%|^|&|*|(|)|-|+|"

do while .t.
    @ 01, 01 clear to 05, 40
    @ 01, 01 prompt "Cadastrar " message "Cadastra senhas"
    @ 02, 01 prompt "Consultar " message "Consulta senhas"
    @ 03, 01 prompt "Sair      " message "Sai do programa"
    menu to nEscolha

    if nEscolha == 0
        nEscolha := 3

    elseif nEscolha == 1
        do while .t.

            @ 10, 01 clear to 10, 50
            @ 01, 01 clear to 04, 30

            nCodigo++
            cGetSenha := Space(12)

            @ 01, 01 say "Codigo.........: " + Transform(nCodigo, "999")
            @ 02, 01 say "Senha..........: "
            @ 03, 01 say "Data cadastro..: "

            @ 02, 18 get cGetSenha
            @ 03, 18 get dCadastro valid !Empty(dCadastro) .and. dCadastro <= dAtual
            read

            if LastKey() == 27
                nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
                if nOpcao == 1
                    exit
                endif
                loop
            endif

            cGetSenha    := AllTrim(cGetSenha)
            nGetSenhaLen := Len(cGetSenha)
            cValidSenha  := SubStr(cGetSenha, 1, nGetSenhaLen)
            lMaiuscula := .f.

            if nGetSenhaLen < 8
                Alert(cSenhaPequena)
                nCodigo--/*
            else
                if cValidSenha $ cMaiuscula
                    lMaiuscula := .t.
                endif
                if cValidSenha $ cMinuscula
                    lMinuscula := .t.
                endif
                if cValidSenha $ cNumerico
                    lNumerico := .t.
                endif
                if cValidSenha $ cEspecial
                    lEspecial := .t.
                endif*/
            endif/*
            if !(lMaiuscula .and. lMinuscula .and. lNumerico .and. lEspecial)
                Alert(cSenhaFraca)
                nCodigo--
            endif*/
            
            dGetCadastro := DToC(dCadastro)
            cSenha       := cSenha + cGetSenha + dGetCadastro

            if LastKey() == 27
                exit
            endif
        enddo

    elseif nEscolha == 2
        @ 01, 01 clear to 04, 30
        do while .t.
            nCodigoSenha := 0

            if cSenha == ""
                Alert("Nao existem senhas cadastradas")
                exit
            endif

            @ 01, 01 say "Codigo.........:"

            @ 01, 18 get nCodigoSenha picture "999"
            read

            if LastKey() == 27
                nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
                if nOpcao == 1
                    exit
                endif
                loop
            endif

            if nCodigoSenha == 1
                nComecoSenha    := 1
                nComecoData     := 13
                cSenhaEscolhida := SubStr(cSenha, nComecoSenha, 12) 
                cDataEscolhida  := SubStr(cSenha, nComecoData, 8)
                //Alert(cSenhaEscolhida)
            elseif nCodigoSenha > 1
                nCodigoSenha--
                nComecoSenha    := 20 * nCodigoSenha
                nComecoSenha++
                nComecoData     := 13 + 20 * nCodigoSenha
                cSenhaEscolhida := SubStr(cSenha, nComecoSenha, 12)
                cDataEscolhida  := SubStr(cSenha, nComecoData, 8)
                //Alert(cSenhaEscolhida)
            endif

            dAnoCadastro := Year(dCadastro)
            dMesCadastro := Month(dCadastro)
            dDiaCadastro := Day(dCadastro)
            dDiadaSemana := DoW(dCadastro)

            @ 02, 18 clear to 02, 70
            @ 03, 18 clear to 03, 30
            @ 02, 01 say "Senha..........: " + cSenhaEscolhida
            @ 03, 01 say "Data cadastro..: " + cDataEscolhida

            @ 05, 27 say "D   S   T   Q   Q   S   S"

        enddo
// calendario - CToD e DoW / 
    elseif nEscolha == 3
        exit
    endif
enddo