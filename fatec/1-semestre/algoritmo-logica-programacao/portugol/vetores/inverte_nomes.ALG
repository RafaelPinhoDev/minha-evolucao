Algoritmo "Inverte_Nomes"
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Tung Wen
// Descrição   : Programa que inverte nomes
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 05/06/2025
Var

   nome: vetor[1..5] de caracter
   i: inteiro

Inicio

   Escreval ("Programa que inverte nomes: ")
   i <- 1
   Para i de 1 ate 5 faça
        Escreva ("Digite o ", i, "° nome:")
        Leia(nome[i])
   FimPara
   Escreval ("------------------------")
   Escreval ("Nomes na ordem inversa: ")
   Escreval ("------------------------")
   Para i de 5 ate 1 passo -1 faça
        Escreval (nome[i])
   FimPara
   
Fimalgoritmo