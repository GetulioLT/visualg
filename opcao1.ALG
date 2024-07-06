algoritmo "Nome do Programa"
// Declaração de variáveis
var
    // nota: armazena a nota individual de cada prova; s_notas: soma das notas de um aluno
    nota, s_notas : real
    // media: média das notas de um aluno; s_medias: soma das médias de todos os alunos; media_geral: média geral de todos os alunos
    media, s_medias, media_geral : real
    // ma_media: armazena a maior média encontrada; me_media: armazena a menor média encontrada
    ma_media, me_media : real
    // qnt: quantidade de alunos; i, j: contadores para os laços
    qnt, i, j : inteiro

// Início do programa
inicio
    // Entrada de dados
    escreva("Digite a quantidade de alunos: ")
    leia(qnt)
    // Inicialização de variáveis
    s_medias <- 0
    ma_media <- 0
    me_media <- 10

    // Processamento de dados
    // Laço externo: percorre todos os alunos
    para i de 1 ate qnt faca
        // Inicializa a soma das notas e a média para o aluno atual
        s_notas <- 0
        media <- 0
        // Laço interno: lê as notas das 4 provas de cada aluno
        para j de 1 ate 4 faca
            escreva("Digite a nota do aluno ", i, " na prova ", j, ": ")
            leia(nota)
            s_notas <- s_notas + nota // Acumula a nota do aluno
        fimpara
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
    fimpara

    // Cálculo da média geral
    media_geral <- s_medias / qnt

    // Saída de dados: exibe a maior média, a menor média e a média geral
    escreval("A maior média é: ", ma_media)
    escreval("A menor média é: ", me_media)
    escreval("A média geral é: ", media_geral)
// Fim do algoritmo
fimalgoritmo