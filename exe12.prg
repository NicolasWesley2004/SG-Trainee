cls

nNumero1       := 0
nNumero2       := 0
nNumero3       := 0
cNumero1Maior  := "Numero 1 e o maior"
cNumero2Maior  := "Numero 2 e o maior"
cNumero3Maior  := "Numero 3 e o maior"
cNumerosIguais := "Todos sao iguais"

@ 01, 01 to 10, 28 double
@ 02, 02 say "COMPARACAO ENTRE 3 NUMEROS"
@ 05, 02 say "Me diga tres numeros:"
@ 07, 02 to 07, 27 double

@ 04, 24 get nNumero1 picture "999"
@ 05, 24 get nNumero2 picture "999"
@ 06, 24 get nNumero3 picture "999"
read

if nNumero1 > nNumero2
    if nNumero1 > nNumero3
        @ 09, 02 say cNumero1Maior
    endif
elseif nNumero2 > nNumero3
    @ 09, 02 say cNumero2Maior
else
    @ 09, 02 say cNumero3Maior
endif

@ 10, 01 say ""