Algoritmo "Calculadora_Media"

// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Tung Wen
// Descri��o   : Programa que calcula a m�dia do aluno
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 27/03/2025

Var

   Nota1 , Nota2, Media : real

Inicio

   Escreval ("--------------------------------------")
   Escreval ("Programa que Calcula a M�dia do Aluno" )
   Escreval ("--------------------------------------")
   Escreva ("Digite a 1�nota: " )
   Leia(Nota1)
   Escreva ("Digite a 2�nota: ")
   Leia(Nota2)
   Media <- (Nota1 + Nota2) / 2
   Escreval ("                               ")
   Escreval ("A m�dia do aluno � " , Media:2:2)
   Se (Media>=6) entao
      Escreval ("Aluno APROVADO!")
   Senao
        Se ((Media>=4) e (Media<=5.9)) entao
           Escreval ("Aluno em RECUPERA��O")
        Senao
             Escreval ("Aluno REPROVADO!")
        Fimse
   FimSe

Fimalgoritmo