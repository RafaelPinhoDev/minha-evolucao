Algoritmo "Dia_Da_Semana_Escolha"

// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Tung
// Descri��o   : Programa que identifica o dia da semana de acordo com o n�mero digitado  utilizando a condicional Escolha.
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 03/04/2025
Var
// Se��o de Declara��es das vari�veis 
 Numero : Inteiro
 Dia: Caracter

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   Escreval ("PROGRAMA QUE MOSTRA O DIA DA SEMANA ")
   Escreval ("------------------------------------")
   Escreva ("Digite um n�mero inteiro: ")
   Leia (Numero)
   
   Escolha Numero
           caso 1
                Dia <- "Domingo"
           caso 2
                Dia <- "Segunda-Feira"
           caso 3
                Dia <- "Ter�a-Feira"
           caso 4
                Dia <- "Quarta-Feira"
           caso 5
                Dia <- "Quinta-Feira"
           caso 6
                Dia <- "Sexta-Feira"
           caso 7
                Dia <- "S�bado"
           OutroCaso
                Dia <- "Inv�lido"
   FimEscolha
   Escreva ("O Dia da Semana �: ", Dia)
Fimalgoritmo