Algoritmo "Calculadora de Consumo Medio de Combustível"

// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Tung Wen
// Descrição   : Programa que calcula o consumo médio do combustível
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 20/03/2025
Var
   // Campo de declaração de variáveis
   Distancia, Combustivel, Consumo_Medio : real
   
Inicio

   Escreval("Calculadora de Consumo Médio de Combustível")
   Escreval("-------------------------------------------")
   // Entrada de dados
   Escreva ("Digite a Distância Percorrida em km: ")
   Leia (Distancia)
   Escreva ("Digite a Quantidade de Combustível Gasta em Litro: ")
   Leia (Combustivel)
   // Processamento de dados
   Consumo_Medio <- Distancia/Combustivel
   // Saída de dados
   Escreval ("O Consumo Médio de Combustível é ", Consumo_Medio:2:2 ," km/l" )

Fimalgoritmo