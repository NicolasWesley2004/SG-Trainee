procedure main ()

local getlist  := {}
local nNumero1 := 0
local nNumero2 := 0
local nNumero3 := 0

cls

@ 01, 01 TO 10, 28 double
@ 02, 02 say "COMPARACAO ENTRE 3 NUMEROS"
@ 05, 02 say "Me diga tres numeros:"
@ 07, 02 to 07, 27 double

@ 04, 24 get nNumero1 picture "999"
@ 05, 24 get nNumero2 picture "999"
@ 06, 24 get nNumero3 picture "999"
read

if nNumero1 > nNumero2 .and. nNumero1 > nNumero3
    @ 09, 02 say "Numero 1 e o maior: " + AllTrim(Str(nNumero1))
elseif nNumero2 > nNumero3
    @ 09, 02 say "Numero 2 e o maior: " + AllTrim(Str(nNumero2))
elseif nNumero3 > nNumero1
    @ 09, 02 say "Numero 3 e o maior: " + AllTrim(Str(nNumero3))
elseif nNumero1 = nNumero2 .and. nNumero1 = nNumero3
    @ 09, 02 say "Todos sao iguais"
end if

@ 10, 01 say ""