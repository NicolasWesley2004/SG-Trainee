cls

do while .t.
    nNumero1       := 0
    nNumero2       := 0

    @ 01, 01 to 12, 32 double
    @ 02, 10 say "CALCULADORA"
    @ 04, 02 say "Escolha um numero...:"
    @ 05, 02 say "Escolha outro numero:"
    @ 06, 02 to 06, 31

    @ 04, 24 get nNumero1 picture "999999"
    @ 05, 24 get nNumero2 picture "999999"
    read

    if LastKey() == 27
        nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
        if nOpcao == 1
            exit
        endif
        loop
    endif

    nSoma          := (nNumero1 + nNumero2)
    nSubtracao     := (nNumero1 - nNumero2)
    nMultiplicacao := (nNumero1 * nNumero2)
    nDivisao       := (nNumero1 / nNumero2)

    @ 08, 02 say AllTrim(Str(nNumero1)) + " + " + AllTrim(Str(nNumero2)) + " = " + AllTrim(Str(nSoma))
    @ 09, 02 say AllTrim(Str(nNumero1)) + " - " + AllTrim(Str(nNumero2)) + " = " + AllTrim(Str(nSubtracao))
    @ 10, 02 say AllTrim(Str(nNumero1)) + " * " + AllTrim(Str(nNumero2)) + " = " + AllTrim(Str(nMultiplicacao))
    @ 11, 02 say AllTrim(Str(nNumero1)) + " / " + AllTrim(Str(nNumero2)) + " = " + AllTrim(Transform(nDivisao, "@e"))
    @ 12, 01 say ""

    if LastKey() == 27
        exit
    endif

enddo