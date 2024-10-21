procedure main ()

local getlist        := {}
local cLetra         := " "
local dData          := 0
local nNumeroInteiro := 0
local nNumeroDecimal := 0.0
local cString        := "             "

cls

@ 01, 01  to 16, 42
@ 02, 07 say "Letra, Data, Numeros e Palavra"
@ 04, 02 say "Digite uma letra........:"
@ 05, 02 say "Digite uma data.........:"
@ 06, 02 say "Digite um numero inteiro:"
@ 07, 02 say "Digite um numero decimal:"
@ 08, 02 say "Digite uma palavra......:"
@ 09, 02 to 09, 41 double

@ 04, 28 get cLetra
@ 05, 28 get dData          picture "99/99/9999"
@ 06, 28 get nNumeroInteiro picture "9999"
@ 07, 28 get nNumeroDecimal picture "@e 999.99"
@ 08, 28 get cString
read

@ 11, 02 say "Letra.........: " + cLetra
@ 12, 02 say "Data..........: " + AllTrim(Transform(dData, "99/99/9999"))
@ 13, 02 say "Numero Inteiro: " + AllTrim(Str(nNumeroInteiro)) 
@ 14, 02 say "Numero Decimal: " + AllTrim(Transform(nNumeroDecimal, "@e"))
@ 15, 02 say "Palavra.......: " + cString
@ 16, 01 say ""