Algoritmo "Melhor_Combustivel"

// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Tung Wen
// Descri��o   : Programa que calcula qual � o melhor combust�vel
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 10/04/2025
Var

   gasolina , alcool, calculo:real
   combustivel: caracter

Inicio

   Escreval ("Programa Que Calcula Qual � o Melhor Combust�vel")
   Escreval ("------------------------------------------------")
   Escreval ("Digite o valor do alcool")
   Leia (alcool)
   Escreval ("Digite o valor da gasolina")
   leia (gasolina)

   Se alcool>gasolina entao
      calculo<-gasolina/alcool
   Senao
      calculo<-alcool/gasolina
   FimSe

   Se calculo>0.7 entao
      combustivel<-"gasolina"
   Senao
      combustivel<-"alcool"
   FimSe
   Escreval ("O melhor combustivel � ", combustivel)



Fimalgoritmo