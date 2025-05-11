Algoritmo "Dia_Da_Semana_Escolha"

// Disciplina   : Linguagem e Lógica de Programação
// Professor   : Tung
// Descrição   : Programa que identifica o dia da semana de acordo com o número digitado  utilizando a condicional Escolha.
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 03/04/2025
Var
// Seção de Declarações das variáveis 
 Numero : Inteiro
 Dia: Caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   Escreval ("PROGRAMA QUE MOSTRA O DIA DA SEMANA ")
   Escreval ("------------------------------------")
   Escreva ("Digite um número inteiro: ")
   Leia (Numero)
   
   Escolha Numero
           caso 1
                Dia <- "Domingo"
           caso 2
                Dia <- "Segunda-Feira"
           caso 3
                Dia <- "Terça-Feira"
           caso 4
                Dia <- "Quarta-Feira"
           caso 5
                Dia <- "Quinta-Feira"
           caso 6
                Dia <- "Sexta-Feira"
           caso 7
                Dia <- "Sábado"
           OutroCaso
                Dia <- "Inválido"
   FimEscolha
   Escreva ("O Dia da Semana é: ", Dia)
Fimalgoritmo