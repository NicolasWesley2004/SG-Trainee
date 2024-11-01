cls

do while .t.
    cNome   := Space(30)
    nIdade  := 0
    nPeso   := 0


    @ 01, 01 to 12, 50 double
    @ 02, 17 say "NOME, IDADE E PESO"
    @ 04, 02 say "Digite seu nome..:"
    @ 05, 02 say "Digite sua idade.:"
    @ 06, 02 say "Digite seu peso..:"
    @ 07, 02 to 07, 49 double

    @ 04, 20 get cNome  picture "@!"        valid !Empty(cNome)
    @ 05, 20 get nIdade picture "999"       valid nIdade >= 0
    @ 06, 20 get nPeso  picture "@E 999.99" valid nPeso  >= 0
    read

    if LastKey() == 27
        nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
        if nOpcao == 1
            exit
        endif
        loop
    endif

    @ 09, 02 say "Nome..: "  + cNome
    @ 10, 02 say "Idade.: "  + AllTrim(Str(nIdade))
    @ 11, 02 say "Peso..: "  + AllTrim(Transform(nPeso, "@E")) + "Kg"
    @ 12, 01 say ""

    if LastKey() == 27
        exit
    endif

enddo