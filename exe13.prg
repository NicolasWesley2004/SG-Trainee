local getlist := {}
local nCodigo := 0

cls 

@ 01, 01 TO 06, 53 double
@ 02, 02 say "Digite o codigo do produto:"
@ 03, 02 to 03, 52 double

@ 02, 30 get nCodigo
read

if nCodigo == 0
    @ 05, 02 say "CODIGO INVALIDO"
elseif nCodigo == 1
    @ 05, 02 say "Produto Alimento nao-perecivel selecionado"
elseif nCodigo <= 4
    @ 05, 02 say "Produto Alimento perecivel selecionado"
elseif nCodigo <= 6
    @ 05, 02 say "Produto Vestuario selecionado"
elseif nCodigo == 7
    @ 05, 02 say "Produto Higiene pessoal selecionado"
elseif nCodigo <= 15
    @ 05, 02 say "Produto Limpeza e utensilios domesticos selecionado"
elseif nCodigo >= 15
    @ 05, 02 say "CODIGO INVALIDO"
end if

@ 06, 01 say ""