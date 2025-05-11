Algoritmo "Melhor_Combustivel"

// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Tung Wen
// Descrição   : Programa que calcula qual é o melhor combustível
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 10/04/2025
Var

   gasolina , alcool, calculo:real
   combustivel: caracter

Inicio

   Escreval ("Programa Que Calcula Qual é o Melhor Combustível")
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
   Escreval ("O melhor combustivel é ", combustivel)



Fimalgoritmo