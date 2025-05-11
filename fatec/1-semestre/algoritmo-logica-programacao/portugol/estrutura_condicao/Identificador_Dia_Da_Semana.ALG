Algoritmo "Identifica_Dia_Da_Semana"

// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Tung
// Descrição   : Programa que identifica o dia da semana de acordo com o número digitado utilizando a condicional SE
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 03/04/2025
Var

   Numero : inteiro
   Dia : Caracter

Inicio

   Escreval ("Programa que identifica o dia de acordo com o número")
   Escreval ("-----------------------------------------------------")
   Escreva ("Digite um número: ")
   Leia (Numero)
   Se Numero = 1 entao
      Dia <- "Domingo"
   Senao
      Se Numero = 2 entao
         Dia <- "Segunda-Feira"
      Senao
         Se Numero = 3 entao
            Dia <- "Terça-Feira"
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
                        Dia <- "Sábado"
                     Senao
                        Dia <- "Inválido!"
                     Fimse
                  Fimse
               Fimse
            FimSe
         Fimse
      Fimse
   Fimse
   Escreval ("O Dia da semana é ", Dia)



Fimalgoritmo
