Algoritmo "Soma_Numeros"

// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Tung Wen
// Descrição   : Programa que pede vários números para ousuário e soma eles, utilizando a estrutura PARA(for), além disso, soma números pares e impares.
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 03/04/2025

Var

 Cont, Numero, SomaTotal, SomaPar, SomaImpar, Quantidade : Inteiro

Inicio

   Escreval ("Programa que soma vários números")
   Escreval ("---------------------------")
   Escreva ("Quantos números você deseja digitar? ")
   Leia (Quantidade)
   SomaPar <- 0
   SomaTotal <- 0
   Para Cont de 1 ate Quantidade faca
        Escreva ("Digite um número: ")
        Leia (Numero)
        Cont <- Cont + 1
        SomaTotal <- SomaTotal + Numero
        Se (Numero%2 = 0) entao
           SomaPar <- SomaPar + Numero
        Senao
             SomaPar <- 0
             SomaImpar <- SomaImpar + Numero
        FimSe
   FimPara
   Escreval ("----------------------------------------")
   Escreval ("A Soma total dos números é: ", SomaTotal)
   Escreval ("A Soma dos Números Pares é: ", SomaPar)
   Escreval ("A Soma dos Números Ímpares é: ", SomaImpar)

Fimalgoritmo