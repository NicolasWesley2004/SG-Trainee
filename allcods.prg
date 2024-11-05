                                                    CODE OPENING

cls // clear the code
                                                    

                                                    PAGE STYLE

@ 01, 01 to 02, 02         // border and line create (line, column)
@ nLine, nBorder to 02, 02 // border and line with variables
@ 01, 01 to 02, 02         // simple border
@ 01, 01 to 02, 02 double  // double border
@ 01, 01 clear to 02, 02   // clear the page


                                                    VARIABLES

nNumero                   // every variable starts with a lowercase letter to identify the value and continues with an uppercase letter

                                                    //NUMERIC VARIABLE

n...                      // numerical variable
n... := 0                 // variable receiving numerical value (with 10 spaces / extra)
n... := n...              // variable receiving variable
n... := (n... + n...)     // variavel recebendo o valor entre soma de duas variaveis
n... := (n... - n...)     // variavel recebendo o valor entre subtração de duas variaveis
n... := (n... * n...)     // variavel recebendo o valor entre multiplicação de duas variaveis
n... := (n... / n...)     // variavel recebendo o valor entre divisão de duas variaveis

c...                      // string/character variable
d...                      // date variable
l...                      // logic variable
c... := ""                // variavel recebendo string
c... := Space(40)         // determinando o espaco em uma variavel c (nome: comun entre 40 e 50)
d... := Date()            // variavel iniciando com data da maquina
d... := Date() + 7        // soma ou subtracao de dias
d... := CTod ("")         // variavel iniciando transformando caracter em data (iniciando vazia)
d... := CTod ("01/01/12") // variavel iniciando com data pre selecionada


                                                    WRITE ON THE PAGE

@ 01, 01 say ""                        // write with string
@ 01, 01 say n...                      // write with variable
@ 01, 01 say "" + c...                 // string and variable c concatenation in the say (concatenation always of the same value)
@ 01, 01 say "" + Str(n...)            // transform numeric variable in string for concatenation
@ 01, 01 say AllTrim(n...)             // remove extra space in numbers
@ 01, 01 say AllTrim(Str(n...))        // transformação em string e remoção de espaços nos numeros
@ 01, 01 say Transform(n..., "")       // transforma uma variavel em c e molda
@ 01, 01 say Transform(n..., "@e")     // transforma todos . de decimais para ,
@ 01, 01 say Transform(n..., "999.99") // determina a quantidade de espaco para a variavel (999 = 3) (999.99 = 6 (ponto conta como 1))

@ 01, 01 get                           // recebe um valor na tela
@ 01, 01 get n...                      // recebe um valor do tipo determinado pela variavel
read                                   // le o que foi resgatado da tela
@ 01, 01 say "..." + DToC(dData)       // Transforma data em caracter para concatenacao


                                                    SPACE

local cNome := Space(40) // Determina a quantidade de espacos de caracteres na variavel
                         // Mais comun para nomes: 40 ou 50

                                                    DATA

set epoch to 1940                      // Para os 2 digitos ficar para os anos 2000 e nao 1900 (1940 ~ 2039)
                                       // 01/01/40 = 1940 - 01/01/12 = 2012
set date brit .ou. set date to british // Para transformar a data pra igual a nossa
(nao usar)set century on               // ao invez de 12 vai ser 2012
cls



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

                                                    COLOR
antes do cls seta na pagina toda
'n'                            // preto
'w'                            // branco
'b'                            // azul
'g'                            // verde
'r'                            // vermelho
'gr'                           // amarelo
set color to "b/g"             // configura b = letra e g = fundo para todos abaixo (letra cor = azul && fundo cor = verde)
@ 01, 01 say "oi"              // escrever OI azul com fundo verde
@ 01, 01 say "OI" color "r/gr" // escrever OI vermelho com fundo amarelo
set color to "n/w"             // configura essas cores para tudo que esta em baixo (se nao houver outra configuracao)
@ 05, 05 clear to 08, 08


InKey(0) // pausar (o numero = segundos (0 = clicar novamente))

//

cMateriaDp := cMateriaDp + "-" + cMateria
           += "," + cMateria

//

dExemplo   := Date()
nAno       := Year(dExemplo)   // 2024
nMes       := Mounth(dExemplo) // 10
nDia       := Day(dExemplo)    // 28
nDiaSemana := DoW(dExemplo)    // 2
1 - dom
2 - seg
...
7 - sab


                                                    COMPARISON OPERATORS


=  // igual a
== // exatamente igual a                                                    
>  // maior que
<  // menor que
>= // maior ou igual a
<= // menor ou igual a
!= // diferente de
$  // contido em

'a'   $ 'bca' // y
'a'   $ 'BCA' // n
'ca'  $ 'bca' // y
'aBc' $ 'abc' // n

'a' = 'A'     // y
'a' != 'A'    // n

'a' == 'A'    // n 
!('a' == 'A') // y


//

<code>

do while <condition> // faca enquanto 
    <code>
    do while <condition>
        <code>
        if <condition>
            <code>
        endif
    enddo
enddo

do while .t.
    //idade
    if nIdade < 18
        exit
    else
        loop
    endif
enddo

do while .t.         // 1
    do while .t.     // 2
        exit         // sai da 2 e vai pra 1
        do while .t. // 3
            exit     // sai da 3 e vai pra 2
        enddo
    enddo
    exit             // sai da 1
enddo


n := n + 1
n += 1
n++


if LastKey() == 27
    exit
endif

//

cNota := Space(1) // A-F
@ 01, 01 get cNota picture "@!" valid cNota $ "ABCDEF"
read

cEstado := Space(2)
@ 01, 01 get cEstado picture "@!" valid cEstado $ "PR|RR|SP|RJ|MT"
read

//

cNome    := Space(20)
nTamanho := Len(cNome) // 20

@ 01, 01 get cNome picture "@!" valid !Empty(cNome)
read // Nicolas Wesley

nTamanho := Len(cNome) // 20
cNome    := AllTrim(cNome)  
nTamanho := Len(cNome) // 14

cPrimeiroNome := SubStr(cNome, 1, 7) // Nicolas
nTamanho      := Len(cPN)            // 2

cPrimeiroNome := SubStr(cNome, 11, 2) // sl
nTamanho      := Len(cPN)             // 2

//

prova 02 and 03, 