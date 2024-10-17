/*                                      LIMPAR TELA

cls = limpar tela


                                        BORDA DA TELA

@ 01, 01                  = coordenada que vai iniciar a borda
@ 01, 01 TO 02, 02        = coordenada que vai encerrar a borda
@ 01, 01 TO 02, 02        = borda simples
@ 01, 01 TO 02, 02 double = borda dupla


                                        ESCREVER NA TELA

@                              = comando com coordenadas
@ 01                           = coordenada de linha
@ 01, 01                       = coordenada de coluna
@ 01, 01 say                   = escrever
@ 01, 01 say ""                = escrever com string
@ 01, 01 say n...              = escrever com variavel
@ 01, 01 say "" + c...         = concatenação de string e variavel
@ 01, 01 say Replicate( "", 2) = replica de um valor em n vezes
@ 01, 01 get                   = le um valor na tela
@ 01, 01 get n...              = le um valor do tipo determinado pela variavel
read                           = le o que foi resgatado da tela
Str(n...)                      = transforma variavel numerica temporariamente em string
AllTrim(n...)                  = remove espaços extras nos numeros
AllTrim(Str(n...))             = transformação em string e remoção de espaços nos numeros


                                        VARIAVEIS

local                 = variavel local
local getlist := {}   = variavel de get
local nNumero         = | TODA VARIAVEL DEVE COMEÇAR COM LETRA MINUSCULA DEPOIS UMA MAIUSCULA |
local n...            = variavel numerica
local c...            = variavel string/caracter
local d...            = variavel data
local l...            = variavel logica
n... := 0             = variavel recebendo numero (com 10 casas ao todo)
c... := ""            = variavel recebendo string (determinar a quantidade de casas com espaços)
n... := n...          = variavel recebendo variavel
n... := (n... + n...) = variavel recebendo o valor entre soma de duas variaveis
n... := (n... - n...) = variavel recebendo o valor entre subtração de duas variaveis
n... := (n... * n...) = variavel recebendo o valor entre multiplicação de duas variaveis
n... := (n... / n...) = variavel recebendo o valor entre divisão de duas variaveis
fzr do 10
*/