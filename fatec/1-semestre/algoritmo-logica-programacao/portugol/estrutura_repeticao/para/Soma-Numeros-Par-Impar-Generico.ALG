Algoritmo "Soma_Numeros"

// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Tung Wen
// Descri��o   : Programa que pede v�rios n�meros para ousu�rio e soma eles, utilizando a estrutura PARA(for), al�m disso, soma n�meros pares e impares.
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 03/04/2025

Var

 Cont, Numero, SomaTotal, SomaPar, SomaImpar, Quantidade : Inteiro

Inicio

   Escreval ("Programa que soma v�rios n�meros")
   Escreval ("---------------------------")
   Escreva ("Quantos n�meros voc� deseja digitar? ")
   Leia (Quantidade)
   SomaPar <- 0
   SomaTotal <- 0
   Para Cont de 1 ate Quantidade faca
        Escreva ("Digite um n�mero: ")
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
   Escreval ("A Soma total dos n�meros �: ", SomaTotal)
   Escreval ("A Soma dos N�meros Pares �: ", SomaPar)
   Escreval ("A Soma dos N�meros �mpares �: ", SomaImpar)

Fimalgoritmo