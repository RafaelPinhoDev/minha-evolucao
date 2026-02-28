'use strict'
// o comando acima deixa o código melhor, uso rígido

// Declarar Variavel, não precisa colocar o tipo dela
// Use o LET e CONST pra variavel, o CONST vem em primeiro

// const nome = 'Rafael'
// const idade = 30
// const nota = 7.5
// console.log(nome)

// Função
function mudarCor(){
    // Aqui pega a cor que a pessoa digitou
    const novaCor = document.getElementById('nova-cor')
    document.documentElement.style.setProperty('--bg-color', novaCor.value)
    console.log(novaCor.value)
}

function mudarVermelho(){
    document.documentElement.style.setProperty('--bg-color', 'red')
}

function mudarAzul(){
    document.documentElement.style.setProperty('--bg-color', 'blue')

}

// No JS usa camelCase
// Pegar o elemento
const botaoCorAzul = document.getElementById('botao-azul')
const botaoCorVermelho = document.getElementById('botao-vermelho')
const botaoMudarCor = document.getElementById('botao-mudar-cor')

// Pega o click do usuário
botaoCorAzul.addEventListener('click', mudarAzul)
botaoCorVermelho.addEventListener('click', mudarVermelho)
botaoMudarCor.addEventListener('click', mudarCor)


