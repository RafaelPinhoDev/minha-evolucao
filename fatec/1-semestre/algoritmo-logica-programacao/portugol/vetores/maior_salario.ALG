Algoritmo "MaiorSalario"
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
   MaiorSalario: real
   PosicaoMaiorSalario : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   MaiorSalario <- 0
   Para Indice de 0 ate 4 faça
        Escreva("Digite um nome: ")
        Leia(Nome[Indice])
        Escreva("Digite uma idade: ")
        Leia(Idade[Indice])
        Escreva("Digite o salário: ")
        Leia (Salario[Indice])
      Se Salario[Indice] > MaiorSalario entao
         MaiorSalario <- Salario[Indice]
         PosicaoMaiorSalario <- Indice
      FimSe
   FimPara
   //A estrutura do vetor da resposta é Vetor[variavel_a_ser_exibida]
   Escreval ("Nome: ", Nome[PosicaoMaiorSalario])
   Escreval ("Idade: ", Idade[PosicaoMaiorSalario], " anos " )
   Escreval ("Salário: R$ ", MaiorSalario)

Fimalgoritmo