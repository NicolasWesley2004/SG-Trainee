cls

do while .t.
    nNota1  := 0
    nNota2  := 0
    nNota3  := 0
    nMedia  := 0

    @ 01, 01 to 10, 39 double
    @ 02, 14 say "MEDIA DE NOTAS"
    @ 04, 02 say "Escreva sua primeira nota:"
    @ 05, 02 say "Escreva sua segunda nota.:"
    @ 06, 02 say "Escreva sua terceira nota:"
    @ 07, 02 to 07, 38 double

    @ 04, 29 get nNota1 picture "999" valid nNota1 >= 0 .and. nNota1 <= 100
    @ 05, 29 get nNota2 picture "999" valid nNota2 >= 0 .and. nNota2 <= 100
    @ 06, 29 get nNota3 picture "999" valid nNota3 >= 0 .and. nNota3 <= 100
    read

    if LastKey() == 27
        nOpcao := Alert("Deseja sair?", {"Sim", "Nao"})
        if nOpcao == 1
            exit
        endif
        loop
    endif

    nMedia := ((nNota1 + nNota2 + nNota3) / 3)

    @ 09, 02 say "A sua media foi: " + AllTrim(Transform(nMedia, "@e"))
    @ 10, 01 say ""

    if LastKey() == 27
        exit
    endif

enddo