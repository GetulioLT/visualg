algoritmo "Nome do Programa"
// Declaração de variáveis
var
    // nota: armazena a nota individual de cada prova; s_notas: soma das notas de um aluno
    nota, s_notas : real
    // media: média das notas de um aluno; s_medias: soma das médias de todos os alunos; media_geral: média geral de todos os alunos
    media, s_medias, media_geral : real
    // ma_media: armazena a maior média encontrada; me_media: armazena a menor média encontrada
    ma_media, me_media : real
    // i: contador para as notas; opcao: controle do loop principal; qnt: quantidade de alunos
    i, opcao, qnt : inteiro

// Início do programa
inicio
    // Inicialização de variáveis
    s_medias <- 0
    ma_media <- 0
    me_media <- 10
    qnt <- 0
    opcao <- 1

    // Loop principal: executa enquanto o usuário desejar continuar
    enquanto opcao = 1 faca
        // Inicializa o contador de notas e a soma das notas para o aluno atual
        i <- 1
        s_notas <- 0
        // Loop para leitura das 4 notas do aluno
        enquanto i <= 4 faca
            escreva("Digite a nota do aluno ", i, ": ")
            leia(nota)
            s_notas <- s_notas + nota // Acumula a nota do aluno
            i <- i + 1
        fimenquanto

        // Calcula a média do aluno e acumula para o cálculo da média geral
        media <- s_notas / 4
        s_medias <- s_medias + media

        // Verifica se a média do aluno é a maior ou a menor até o momento
        se media > ma_media entao
            ma_media <- media
        fimse
        se media < me_media entao
            me_media <- media
        fimse

        // Pergunta ao usuário se deseja continuar
        escreva("Deseja continuar? (1 - Sim, 0 - Não): ")
        leia(opcao)

        // Contabiliza mais um aluno processado
        qnt <- qnt + 1
    fimenquanto

    // Calcula a média geral
    media_geral <- s_medias / qnt

    // Saída de dados: exibe a maior média, a menor média e a média geral
    escreval("Maior média: ", ma_media)
    escreval("Menor média: ", me_media)
    escreval("Média Geral: ", media_geral)
// Fim do algoritmo
fimalgoritmo