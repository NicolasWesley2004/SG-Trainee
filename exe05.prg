cls

do while .t.
    nNumeroA := 0
    nNumeroB := 0
    nNumeroC := 0

    @ 01, 01 to 10, 18 double
    @ 02, 02 say "TROCA DE NUMEROS"
    @ 04, 02 say "Numero A ="
    @ 05, 02 say "Numero B ="
    @ 06, 02 to 06, 17 double

    @ 04, 13 get nNumeroA picture "999"
    @ 05, 13 get nNumeroB picture "999"
    read

    if LastKey() == 27
        nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
        if nOpcao == 1
            exit
        endif
        loop
    endif

    nNumeroC := nNumeroA
    nNumeroA := nNumeroB
    nNumeroB := nNumeroC

    @ 08, 02 say "Numero A = " + AllTrim(Str(nNumeroA))
    @ 09, 02 say "Numero B = " + AllTrim(Str(nNumeroB))
    @ 10, 02 say ""

    if LastKey() == 27
        exit
    endif

enddo