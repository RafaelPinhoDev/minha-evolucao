Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/06/2025
Var
   nome: vetor[1..5] de caracter
   distancia : vetor[1..5] de real
   idade: vetor[1..5] de inteiro
   municipio: vetor[1..5] de caracter
   maior_distancia: real
   i : inteiro
   posicao_maior_distancia: inteiro
Inicio
      maior_distancia <- 0
      i <- 1
      Para i de 1 ate 5 faça
           Escreval (i , "---------------")
           Escreva ("Digite seu nome: ")
           Leia(nome[i])
           Escreva ("Digite a distância percorrida de sua casa ao serviço: ")
           Leia(distancia[i])
           Escreva ("Digite sua idade: ")
           Leia(idade[i])
           Escreva ("Digite seu município: ")
           Leia (municipio[i])

           Se distancia[i] > maior_distancia entao
              maior_distancia <- distancia[i]
              posicao_maior_distancia <- i
           Fimse
      FimPara
      Escreval ("Nome: ", nome[posicao_maior_distancia])
      Escreval ("Idade: ", idade[posicao_maior_distancia])
      Escreval ("Municipio: " , municipio[posicao_maior_distancia])
      Escreval ("Maior distância: ", maior_distancia , "km")




Fimalgoritmo