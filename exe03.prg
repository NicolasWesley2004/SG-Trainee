cls

do while .t.
    nNumero1 := 0
    nNumero2 := 0
    nProduto := 0

    @ 01, 01 to 09, 33 double
    @ 02, 08 say "CALCULO DO PRODUTO"
    @ 04, 02 say "Escolha um numero...:"
    @ 05, 02 say "Escolha outro numero:"
    @ 06, 02 to 06, 32 double

    @ 04, 24 get nNumero1 picture "999"
    @ 05, 24 get nNumero2 picture "999"
    read

    if LastKey() == 27
        nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
        if nOpcao == 1
            exit
        endif
        loop
    endif

    nProduto := (nNumero1 * nNumero2)

    @ 08, 02 say "O produto de " + AllTrim(Str(nNumero1)) + " e " + AllTrim(Str(nNumero2)) + " = " + AllTrim(Str(nProduto))
    @ 09, 01 say ""

    if LastKey() == 27
        exit
    endif
enddo