Algoritmo "Calculadora Valor do Terreno"
//  
//  
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Tung Wen
// Descri��o   : Programa que calcula o valor de um terreno
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
 // calcula a �rea do terreno
 Area <- Largura * Profundidade
 // calcula o valor do terreno
 Valor_Terreno <- Area * Custo
 Escreval ("---------------------------------------------")
 Escreval ("�rea do terreno: ", Area:2:2 , " metros")
 Escreval ("o valor do terreno � R$ ", Valor_Terreno:2:2)

Fimalgoritmo