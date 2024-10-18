local getlist  := {}
local nNumero1 := 0
local nNumero2 := 0
local nNumero3 := 0

cls

@ 01, 01 TO 08, 26 double
@ 02, 02 say "Me diga tres numeros:"

@ 03, 02 get nNumero1
@ 04, 02 get nNumero2
@ 05, 02 get nNumero3
read

if nNumero1 > nNumero2
    if nNumero1 > nNumero3
        @ 07, 02 say "Numero 1 e o maior: " + AllTrim(Str(nNumero1))
    end if
elseif nNumero2 > nNumero3
    @ 07, 02 say "Numero 2 e o maior: " + AllTrim(Str(nNumero2))
elseif nNumero3 > nNumero1
    @ 07, 02 say "Numero 3 e o maior: " + AllTrim(Str(nNumero3))
end if

@ 08, 01 say ""