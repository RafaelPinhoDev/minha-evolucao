Algoritmo "Soma_Numeros"

// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Tung Wen
// Descri��o   : Programa que pede 5 n�meros para o usu�rio e soma eles, utilizando a estrutura enquanto
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 03/04/2025
Var

 Cont, Numero, SomaTotal, SomaPar, SomaImpar : Inteiro

Inicio


   Escreval ("Programa que soma 5 n�meros")
   Escreval ("---------------------------")
   SomaPar <- 0
   SomaTotal <- 0
   Cont <- 1
   // Quando o contador receber 5, o programa sai do Enquanto
   Enquanto (Cont <= 5) fa�a
            Escreva ("Digite um n�mero: ")
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
   Escreval ("A Soma total dos n�meros �: ", SomaTotal)
   Escreval ("A Soma dos N�meros Pares �: ", SomaPar)
   Escreval ("A Soma dos N�meros �mpares �: ", SomaImpar)

Fimalgoritmo