local getlist := {}
local nCodigo := 0

cls 

@ 01, 01 TO 15, 53 double
@ 02, 17 say "PRODUTOS QUALIFICADOS"
@ 04, 02 say "CODIGO"
@ 04, 10 say "CLASSIFICACAO"

@ 05, 02 to 05, 52 double
@ 06, 04 say "1"
@ 06, 10 say "Alimento nao perecivel"
@ 07, 02 say "2 a 4"
@ 07, 10 say "Alimento perecivel"
@ 08, 02 say "5 e 6"
@ 08, 10 say "Vestuario"
@ 09, 04 say "7"
@ 09, 10 say "Higiene pessoal"
@ 10, 02 say "8 a 15"
@ 10, 10 say "Limpeza e utensilios domesticos"

@ 11, 02 to 11, 52 double
@ 12, 02 say "Digite o codigo do produto:"

@ 12, 30 get nCodigo picture "99"
read

if nCodigo == 0
    @ 14, 02 say "CODIGO INVALIDO"
elseif nCodigo == 1
    @ 14, 02 say "Produto Alimento nao-perecivel selecionado"
elseif nCodigo <= 4
    @ 14, 02 say "Produto Alimento perecivel selecionado"
elseif nCodigo <= 6
    @ 14, 02 say "Produto Vestuario selecionado"
elseif nCodigo == 7
    @ 14, 02 say "Produto Higiene pessoal selecionado"
elseif nCodigo <= 15
    @ 14, 02 say "Produto Limpeza e utensilios domesticos selecionado"
elseif nCodigo >= 15
    @ 14, 02 say "CODIGO INVALIDO"
end if

@ 15, 01 say ""