Algoritmo "Calculadora_Hipotenusa"

// Disciplina  :Linguagem e L�gica de Programa��o
// Professor   : Tung Wen
// Descri��o   : Programa que calcula a hipotenusa
// Autor(a)    : Rafael
// Data atual  : 10/04/2025
Var

   A,B,H : real
   
Inicio

   Escreval ("Programa que Calcula o Valor da Hipotenusa")
   Escreval ("---------------------------------")
   Escreva ("Digite o valor do lado A: ")
   Leia (A)
   Escreva ("Digite o valor do lado B: ")
   Leia (B)
   // Calculo da Hipotenusa
   //H � a hipotenusa
   H <- raizq((A^2) + (B^2) )
   Escreval ("O valor da Hipotenusa � ", H:3:2)
   
Fimalgoritmo