Algoritmo "Identifica_Dia_Da_Semana"

// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Tung
// Descri��o   : Programa que identifica o dia da semana de acordo com o n�mero digitado utilizando a condicional SE
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 03/04/2025
Var

   Numero : inteiro
   Dia : Caracter

Inicio

   Escreval ("Programa que identifica o dia de acordo com o n�mero")
   Escreval ("-----------------------------------------------------")
   Escreva ("Digite um n�mero: ")
   Leia (Numero)
   Se Numero = 1 entao
      Dia <- "Domingo"
   Senao
      Se Numero = 2 entao
         Dia <- "Segunda-Feira"
      Senao
         Se Numero = 3 entao
            Dia <- "Ter�a-Feira"
         Senao
            Se Numero = 4 entao
               Dia <- "Quarta-Feira"
            Senao
               Se Numero = 5 entao
                  Dia <- "Quinta-Feira"
               Senao
                  Se Numero = 6 entao
                     Dia <- "Sexta-Feira"
                  Senao
                     Se Numero = 7 entao
                        Dia <- "S�bado"
                     Senao
                        Dia <- "Inv�lido!"
                     Fimse
                  Fimse
               Fimse
            FimSe
         Fimse
      Fimse
   Fimse
   Escreval ("O Dia da semana � ", Dia)



Fimalgoritmo
