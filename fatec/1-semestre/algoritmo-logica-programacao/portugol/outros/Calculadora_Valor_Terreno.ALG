Algoritmo "Calculadora Valor do Terreno"
//  
//  
// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Tung Wen
// Descrição   : Programa que calcula o valor de um terreno
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 20/03/2025
Var

  Largura, Profundidade, Area, Valor_Terreno, Custo: real

Inicio

 Escreval ("Calculadora Valor do Terreno")
 Escreval ("----------------------------")
 Escreva ("Digite a largura do terreno em metros: ")
 Leia(Largura)
 Escreva ("Digite a profundidade do terreno em metros: ")
 Leia(Profundidade)
 Escreva("Digite o valor por metro quadrado: R$")
 Leia(Custo)
 // calcula a área do terreno
 Area <- Largura * Profundidade
 // calcula o valor do terreno
 Valor_Terreno <- Area * Custo
 Escreval ("---------------------------------------------")
 Escreval ("Área do terreno: ", Area:2:2 , " metros")
 Escreval ("o valor do terreno é R$ ", Valor_Terreno:2:2)

Fimalgoritmo