Algoritmo "MaiorIdade"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Tung
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 22/05/2025
Var
// Seção de Declarações das variáveis 
   Indice : inteiro
   Nome : Vetor[0..4] de caracter
   Idade: Vetor[0..4] de inteiro
   Salario: Vetor[0..4] de real
   MaiorIdade: inteiro
   PosicaoMaisVelho : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   MaiorIdade <- 0
   Para Indice de 0 ate 4 faça
        Escreva("Digite um nome: ")
        Leia(Nome[Indice])
        Escreva("Digite uma idade: ")
        Leia(Idade[Indice])
        Escreva("Digite o salário: ")
        Leia (Salario[Indice])
      Se Idade[Indice] > MaiorIdade entao
         MaiorIdade <- Idade[Indice]
         PosicaoMaisVelho <- Indice
      FimSe
   FimPara
   Escreval ("Nome: ", Nome[PosicaoMaisVelho])
   Escreval ("Idade: ", MaiorIdade, " anos " )
   Escreval ("Salário: R$ ", Salario[PosicaoMaisVelho])

Fimalgoritmo