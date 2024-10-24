                                                    LIMPAR TELA

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
@ 01, 01 say "..." + DToC(dData) // Transforma data em caracter para concatenacao

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

                                                    SPACE

local cNome := Space(40) // Determina a quantidade de espacos de caracteres na variavel
                         // Mais comun para nomes: 40 ou 50

                                                    DATA

set epoch to 1940                      // Para os 2 digitos ficar para os anos 2000 e nao 1900 (1940 ~ 2039)
                                       // 01/01/40 = 1940 - 01/01/12 = 2012
set date brit .ou. set date to british // Para transformar a data pra igual a nossa
(nao usar)set century on               // ao invez de 12 vai ser 2012
cls

local dAtual      := Date()                          //
local dAtual      := Date() + 7                      // suma ou subtrair dias
local dNascimento := CTod ("")                       //
local dFixa       := CTod ("01/01/12")               //

@ 01, 01 get dNascimento valid dNascimento <= dAtual // validacao para variavel nao ser do mesmo dia
read                                                 // leitura

                                                    IF

if nIdade > 18                        // abertura do if e primeira condicao (se nIdade for maior que 18 ...)
    ...                               // codigo
elseif nIdade < 10                    // segunda condicao (se nIdade for menor que 10 ...)
    ...                               // codigo
elseif nIdade < 10 .and. cSexo == "M" // outra condicao (se n < 10 e c == "M" ...)
    ...                               // codigo
else                                  // qualquer outra condicao que nao atendeu as outras (se nIdade nao atender as outras ...)
    ...                               // codigo
endif                                 // fechamento do if

if nIdade > 18
    @ 01, 01 say ""
    if cSexo == "M"                   //se for > 18 e se c == M ...
        @ 02, 01 say "M"                
    else                              // senao ...
        @ 02, 01 say "F"            
    endif
endif

if lMatriculado                       // se a pessoa for matriculada ... (logico nao precisa de condicao)
    ...
endif

if lMatriculado                       // se a pessoa nao for matriculada ...
    ...
endif

8B, 9, 10, 11, 12 