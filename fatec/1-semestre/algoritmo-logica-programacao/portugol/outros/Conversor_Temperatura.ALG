Algoritmo "Conversor de Temperatura"

// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Tung Wen
// Descri��o   : Programa que converte Fahrenheit para Celsius
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 20/03/2025

Var

   Fahrenheit, Celsius : real

Inicio

   Escreval("Programa que converte Fahrenheit para Celcius")
   Escreval("---------------------------------------------")
   Escreva("Digite a Temperatura em �F: " )
   Leia(Fahrenheit)
   // Converte a temperatura de Fahrenheit para Celcius
   Celsius <- ( Fahrenheit - 32) * 5/9
   // 2:2 - Formata para que exiba somente 2 casas ap�s a v�rgula
   Escreval ("A Temperatura � ", Celsius:2:2 , "�C")
   

Fimalgoritmo