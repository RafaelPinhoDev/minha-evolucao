Algoritmo "Calculadora_Funcao_2_Grau"

// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Tung Wen
// Descrição   : Programa que encontra as raízes da equação de 2°grau
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 27/03/2025

Var

   A,B,C, Delta, Raiz1, Raiz2: real

Inicio

   Escreval ("Programa Que Acha As Raízes da Equação de 2°Grau")
   Escreval ("-------------------------------------------------")
   Escreva ("Digite o valor de A: ")
   Leia(A)
   Escreva ("Digite o valor de B: ")
   Leia (B)
   Escreva ("Digite o valor de C: ")
   Leia(C)
   Delta <- B^2 -4*A*C
   Se (Delta < 0) Entao
      Escreval ("Não há raízes")
   Senao
        //  Raizq:  Calcula a raiz quadrada
        Raiz1 <- (-B + raizq(Delta))/(2*A)
        Raiz2 <- (-B - raizq(Delta))/(2*A)
        Escreval ("Raízes: ", Raiz1,"," ,Raiz2)
   FimSe

Fimalgoritmo