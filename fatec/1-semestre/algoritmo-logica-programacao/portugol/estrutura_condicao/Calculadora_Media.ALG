Algoritmo "Calculadora_Media"

// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Tung Wen
// Descrição   : Programa que calcula a média do aluno
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 27/03/2025

Var

   Nota1 , Nota2, Media : real

Inicio

   Escreval ("--------------------------------------")
   Escreval ("Programa que Calcula a Média do Aluno" )
   Escreval ("--------------------------------------")
   Escreva ("Digite a 1°nota: " )
   Leia(Nota1)
   Escreva ("Digite a 2°nota: ")
   Leia(Nota2)
   Media <- (Nota1 + Nota2) / 2
   Escreval ("                               ")
   Escreval ("A média do aluno é " , Media:2:2)
   Se (Media>=6) entao
      Escreval ("Aluno APROVADO!")
   Senao
        Se ((Media>=4) e (Media<=5.9)) entao
           Escreval ("Aluno em RECUPERAÇÃO")
        Senao
             Escreval ("Aluno REPROVADO!")
        Fimse
   FimSe

Fimalgoritmo