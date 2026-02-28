'use strict'

const imagem = document.getElementById('imagem')
const botaoTrocarImagem = document.getElementById('botao-trocar-imagem')

const soad = './img/soad.jpg'
const slipknot = './img/slipknot.jpg'

// Aqui vai trocar a imagem
function trocarImagem() {
    if (imagem.getAttribute('src') == soad) {
        imagem.src = slipknot
    } else {
        imagem.src = soad
    }
}



botaoTrocarImagem.addEventListener('click', trocarImagem)
