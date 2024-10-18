local getlist        := {}
local cLetra         := " "
local dData          := 0
local nNumeroInteiro := 0
local nNumeroDecimal := 0.0
local cString        := "             "

cls

@ 01, 01  to 13, 42
@ 02, 02 say "Digite uma letra........:"
@ 03, 02 say "Digite uma data.........:"
@ 04, 02 say "Digite um numero inteiro:"
@ 05, 02 say "Digite um numero decimal:"
@ 06, 02 say "Digite uma palavra......:"

@ 02, 28 get cLetra
@ 03, 28 get dData          picture "99/99/9999"
@ 04, 28 get nNumeroInteiro picture "9999"
@ 05, 28 get nNumeroDecimal picture "999.99"
@ 06, 28 get cString
read

@ 08, 02 say cLetra
@ 09, 02 say dData          picture "99/99/9999"
@ 10, 02 say nNumeroInteiro
@ 11, 02 say nNumeroDecimal
@ 12, 02 say cString
@ 13, 01 say ""