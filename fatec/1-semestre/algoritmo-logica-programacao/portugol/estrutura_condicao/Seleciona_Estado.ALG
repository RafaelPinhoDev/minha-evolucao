Algoritmo "Estado"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Tung
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 15/05/2025
Var
// Seção de Declarações das variáveis 
   estado : inteiro
   nome: caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   Escreval ("Selecione um número de acordo com o estado: ")
   Escreval ("[1] Espirito Santo")
   Escreval ("[2] Rio de Janeiro")
   Escreval ("[3] São Paulo")
   Escreval ("[4] Minas Gerais")
   Escreva ("Digite aqui: ")
   Leia (estado)

   Escolha estado
     Caso 1
       nome <- "Capixaba"
     Caso 2
       nome <- "Carioca"
     Caso 3
       nome <- "Paulista"
     Caso 4
       nome <- "Mineira"
   FimEscolha
   Escreval ("-------------------------")
   Escreval ("A pessoa é " ,  nome )

Fimalgoritmo