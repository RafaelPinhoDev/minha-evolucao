Algoritmo "Caixa Eletônico"

// Disciplina  : Linguagem e Lógica de Programação
// Professor   : Tung Wen
// Descrição   : Programa que devolve o menor número de notas possível, simulando um caixa eletrônico
// Autor(a)    : Rafael Souza de Pinho
// Data atual  : 20/03/2025
Var

 Saldo,N1, N2, N5, N10, N20, N50, N100 : inteiro


Inicio

   Escreval ("Caixa Eletrônico")
   Escreval ("---------------------------------------------------------")
   Escreval ("Notas disponíveis: R$1 ,R$2, R$5, R$10, R$20, R$50, R$100")
   Escreval ("---------------------------------------------------------")
   Escreva ("Digite o valor a ser sacado: R$ ")
   Leia (Saldo)
   Se Saldo >= 100 entao
      N100 <- Saldo\100
      Saldo <- Saldo - N100*100
   FimSe
   Se Saldo >= 50 entao
      N50 <- Saldo\50
      Saldo <- Saldo - N50*50
   FimSe
   Se Saldo >= N20 entao
      N20 <- Saldo\20
      Saldo <- Saldo - N20*20
   FimSe
   Se Saldo >= 10 entao
      N10 <- Saldo\10
      Saldo <- Saldo - N10*10
   FimSe
   Se Saldo >= 5 entao
      N5 <- Saldo\5
      Saldo <- Saldo - N5*5
   FimSe
   Se Saldo>=2 entao
      N2 <- Saldo\2
      Saldo <- Saldo - N2*2
   FimSe
   Se Saldo>=1 entao
      N1 <- Saldo\1
      Saldo <- Saldo - 1
   FimSe
   Escreval ("Notas de R$ 100: ", N100)
   Escreval ("Notas de R$ 50: ", N50)
   Escreval ("Notas de R$ 20: ", N20)
   Escreval ("Notas de R$ 10: ", N10)
   Escreval ("Notas de R$ 5: ", N5)
   Escreval ("Notas de R$ 2: ", N2)
   Escreval ("Notas de R$ 1: ", N1)
   

Fimalgoritmo