Algoritmo "Calculadora de Consumo Medio de Combust�vel"

// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Tung Wen
// Descri��o   : Programa que calcula o consumo m�dio do combust�vel
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 20/03/2025
Var
   // Campo de declara��o de vari�veis
   Distancia, Combustivel, Consumo_Medio : real
   
Inicio

   Escreval("Calculadora de Consumo M�dio de Combust�vel")
   Escreval("-------------------------------------------")
   // Entrada de dados
   Escreva ("Digite a Dist�ncia Percorrida em km: ")
   Leia (Distancia)
   Escreva ("Digite a Quantidade de Combust�vel Gasta em Litro: ")
   Leia (Combustivel)
   // Processamento de dados
   Consumo_Medio <- Distancia/Combustivel
   // Sa�da de dados
   Escreval ("O Consumo M�dio de Combust�vel � ", Consumo_Medio:2:2 ," km/l" )

Fimalgoritmo