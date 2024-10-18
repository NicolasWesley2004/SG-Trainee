local getlist := {}
local nCodigo := 0

cls 

@ 01, 01 TO 05, 53 double
@ 02, 02 say "Digite o codigo do produto:"

@ 02, 30 get nCodigo
read

if nCodigo == 0
    @ 04, 02 say "CODIGO INVALIDO"
elseif nCodigo == 1
    @ 04, 02 say "Produto Alimento nao-perecivel selecionado"
elseif nCodigo <= 4
    @ 04, 02 say "Produto Alimento perecivel selecionado"
elseif nCodigo <= 6
    @ 04, 02 say "Produto Vestuario selecionado"
elseif nCodigo == 7
    @ 04, 02 say "Produto Higiene pessoal selecionado"
elseif nCodigo <= 15
    @ 04, 02 say "Produto Limpeza e utensilios domesticos selecionado"
elseif nCodigo >= 15
    @ 04, 02 say "CODIGO INVALIDO"
end if

@ 05, 01 say ""