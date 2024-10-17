local getlist        := {}
local cLetra         := " "
local dData          := 00/00/00
local nNumeroInteiro := 0
local nNumeroDecimal := 0.0
local cString        := "             "

cls

@ 01, 01 say "Digite uma letra:"
@ 02, 01 say "Digite uma data:"
@ 03, 01 say "Digite um numero inteiro:"
@ 04, 01 say "Digite um numero decimal:"
@ 05, 01 say "Digite uma palavra:"

@ 01, 26 get cLetra
@ 02, 26 get dData
@ 03, 26 get nNumeroInteiro
@ 04, 26 get nNumeroDecimal
@ 05, 26 get cString
read

@ 06, 01 say cLetra
@ 07, 01 say dData
@ 08, 01 say nNumeroInteiro
@ 09, 01 say nNumeroDecimal
@ 10, 01 say cString