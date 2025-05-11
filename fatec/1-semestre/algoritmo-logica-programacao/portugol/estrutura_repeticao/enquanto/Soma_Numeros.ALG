Algoritmo "Soma_Numeros"

// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Tung Wen
// Descrição   : Programa que pede 5 números para o usuário e soma eles, utilizando a estrutura enquanto
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 03/04/2025
Var

 Cont, Numero, SomaTotal, SomaPar, SomaImpar : Inteiro

Inicio


   Escreval ("Programa que soma 5 números")
   Escreval ("---------------------------")
   SomaPar <- 0
   SomaTotal <- 0
   Cont <- 1
   // Quando o contador receber 5, o programa sai do Enquanto
   Enquanto (Cont <= 5) faça
            Escreva ("Digite um número: ")
            Leia (Numero)
            // O contador vai recebendo 1 a cada vez que completa o ciclo
            Cont <- Cont + 1
            SomaTotal <- SomaTotal + Numero
            Se (Numero%2 = 0) entao
               SomaPar <- SomaPar + Numero
            Senao
                 SomaPar <- 0
                 SomaImpar <- SomaImpar + Numero
            FimSe
   FimEnquanto
   Escreval ("A Soma total dos números é: ", SomaTotal)
   Escreval ("A Soma dos Números Pares é: ", SomaPar)
   Escreval ("A Soma dos Números Ímpares é: ", SomaImpar)

Fimalgoritmo