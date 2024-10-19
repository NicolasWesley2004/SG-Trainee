local getlist        := {}
local cLetra         := " "
local dData          := 0
local nNumeroInteiro := 0
local nNumeroDecimal := 0.0
local cString        := "             "

cls

@ 01, 01  to 14, 42
@ 02, 02 say "Digite uma letra........:"
@ 03, 02 say "Digite uma data.........:"
@ 04, 02 say "Digite um numero inteiro:"
@ 05, 02 say "Digite um numero decimal:"
@ 06, 02 say "Digite uma palavra......:"
@ 07, 02 to 07, 41 double

@ 02, 28 get cLetra
@ 03, 28 get dData          picture "99/99/9999"
@ 04, 28 get nNumeroInteiro picture "9999"
@ 05, 28 get nNumeroDecimal picture "@e 999.99"
@ 06, 28 get cString
read

@ 09, 02 say cLetra
@ 10, 02 say dData          picture "99/99/9999"
@ 11, 02 say nNumeroInteiro 
@ 12, 02 say nNumeroDecimal picture "@e"
@ 13, 02 say cString
@ 14, 01 say ""