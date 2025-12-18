Algoritmo "Aula_Vetor"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Tung
// Descrição   : Aula Vetor
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 22/05/2025
Var
   PosicaoMaior: inteiro
   MaiorNumero: inteiro
   //Declara um vetor
   Indice: inteiro
   Numero: vetor[0..9] de inteiro
Inicio
//Resea a Variável
   MaiorNumero <- 0;

   Para Indice de 0 ate 9 faça
        Escreva("Digite um número: ")
        //Leitura de um vetor
        Leia(Numero[Indice])
        //Vai pegar o maoior número e sua posição
        Se Numero[Indice] > MaiorNumero então
           MaiorNumero <- Numero[Indice]
           PosicaoMaior <- Indice
        FimSe
   FimPara
   
   Escreval("O maior número é: ", MaiorNumero , " na " , PosicaoMaior)


Fimalgoritmo