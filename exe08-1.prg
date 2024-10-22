procedure main ()

local getlist            := {}
local nProduto           := 0
local nValorLeite        := 10.00
local nValorRefrigerante := 5.25
local nValorOleo         := 20.00
local nQuantidade        := 0
local nValor             := 0
local nValorTotal        := 0

cls

@ 01, 01 TO 14, 42 double
@ 02, 10 say "MERCADO TRAINEE"
@ 04, 02 say "Leite.......: 1"
@ 05, 02 say "Refrigerante: 2"
@ 06, 02 say "Oleo........: 3"
@ 07, 02 to 07, 41
@ 08, 02 say "Escolha um Produto: "
@ 11, 02 say "Inserir quantidade: "
@ 12, 02 TO 12, 41

@ 08, 22 get nProduto picture "9" Valid nProduto >= 1 .and. nProduto <= 3
read

if nProduto == 1
    @ 09, 02 say "Produto Leite selecionado: R$"        + AllTrim(Transform(nValorLeite, "@e"))
elseif nProduto == 2
    @ 09, 02 say "Produto Refrigerante selecionado: R$" + AllTrim(Transform(nValorRefrigerante, "@e"))
elseif nProduto == 3
    @ 09, 02 say "Produto Oleo selecionado: R$"         + AllTrim(Transform(nValorOleo, "@e"))
endif

@ 11, 21 get nQuantidade picture "@e 999.99"
read

if nProduto == 1
    nValor := (nQuantidade * nValorLeite)
elseif nProduto == 2
    nValor := (nQuantidade * nValorRefrigerante)
elseif nProduto == 3
    nValor := (nQuantidade * nValorOleo)
endif

@ 13, 02 say "Sua compra ficou em...: R$" + AllTrim(Transform(nValor, "@e 99999.99"))
@ 14, 01 say ""