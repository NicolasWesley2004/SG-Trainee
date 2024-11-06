//Nicolas Wesley Felicio Rossi

cls

set epoch to 1940
set date brit

nCodigo       := 0
cSenha        := ""
dCadastro     := CToD("")
cSenhaPequena := "Senha deve possuir pelo menos 8 caracteres."
cSenhaFraca   := "Senha fraca tente novamente."
dAtual        := Date()
dAnoAtual     := Year(dAtual)
cNumerico     := "1|2|3|4|5|6|7|8|9|"
cMaiuscula    := "A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|"
cMinuscula    := "a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|"
cEspecial     := "!|@|#|$|%|^|&|*|(|)|-|+|"
cValid        := cNumerico + cMaiuscula + cMinuscula + cEspecial

do while .t.
    cEscolha := Space(1)

    @ 01, 01 clear to 05, 40
    @ 01, 01 say "1- Cadastrar"
    @ 02, 01 say "2- Consultar"
    @ 03, 01 say "3- Sair"

    @ 04, 01 get cEscolha picture "@!" valid cEscolha $ "123"
    read

    if LastKey() == 27
        nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
        if nOpcao == 1
            exit
        endif
        loop
    endif

    if cEscolha == "1"
        do while .t.
            @ 01, 01 clear to 04, 30

            nCodigo       += 1
            cGetSenha     := Space(12)

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

            nGetSenhaLen := Len(cGetSenha)

            if nGetSenhaLen < 8
                Alert(cSenhaPequena)
                nCodigo -= 1
            endif/*
            if !(cGetSenha $ cValid)
                Alert(cSenhaFraca)
                nCodigo -= 1
            endif*/
            
            cSenha        := cSenha + cGetSenha
            dCadastro     += CToD("")

            if LastKey() == 27
                exit
            endif
        enddo

    elseif cEscolha == "2"
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
                nComeco         := 1
                cSenhaEscolhida := SubStr(cSenha, nComeco, 12)
                //Alert(cSenhaEscolhida)
            elseif nCodigoSenha <= nCodigo .and. nCodigoSenha > 1
                nCodigoSenha    -= 1
                nComeco         := 13 * nCodigoSenha
                cSenhaEscolhida := SubStr(cSenha, nComeco, 12)
                //Alert(cSenhaEscolhida)
            endif

            @ 02, 01 say "Senha..........: " + cSenhaEscolhida
            @ 03, 01 say "Data cadastro..: " + Str(dCadastroEscolhida)

        enddo

    elseif cEscolha == "3"
        exit
    endif
enddo

//n deu tempo