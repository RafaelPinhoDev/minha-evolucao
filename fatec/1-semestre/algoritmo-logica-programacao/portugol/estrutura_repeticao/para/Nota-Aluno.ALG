Algoritmo "Notas_Alunos"

// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Tung Wen
// Descri��o   : Programa que calcula a nota de multiplos alunos e exibe se ele est� Aprovado ou Reprovado
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 08/05/2025
Var
// Se��o de Declara��es das vari�veis 
  Nota : real
  Cont, Aluno, AlunoAprovado, AlunoReprovado : inteiro


Inicio
  Escreval ("PROGRAMA QUE MOSTRA QUANTOS ALUNOS EST�O APROVADOS E REPROVADOS")
  Escreval ("---------------------------------------------------------------")
  Escreva ("Digite a quantidade de alunos: ")
  Leia (Aluno)
  Escreval("                                ")
  Para Cont de 1 ate Aluno faca
       Escreva ("Digite a nota: ")
       Leia (Nota)
       Se (Nota >=6) entao
          AlunoAprovado <- AlunoAprovado + 1
       Senao
          AlunoReprovado <- AlunoReprovado + 1
       FimSe
  FimPara
  // Outra Maneira de fazer sem Condi��o
  //AlunoReprovado <- Aluno - AlunoAprovado
  Escreval ("----------------------------------")
  Escreval ("Alunos Aprovados: ", AlunoAprovado)
  Escreval ("Alunos Reprovados: ", AlunoReprovado)
  

Fimalgoritmo