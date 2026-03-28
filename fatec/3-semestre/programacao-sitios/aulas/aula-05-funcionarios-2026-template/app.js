'use strict'

// Importa o Json
import funcionarios from "./funcionarios.json" with { type: "json" }

function criarCard(funcionario){
    const card = document.createElement('div')
    card.className = 'card'

    const foto = document.createElement('img')
    foto.src = `./img/${funcionario.imagem}`
    foto.alt = `Foto de ${funcionario.nome}`

    const nome = document.createElement('h3')
    nome.textContent = funcionario.nome

    const cargo = document.createElement('span')
    cargo.textContent = funcionario.cargo

    card.append(foto, nome, cargo)

    return card
}

const cards = funcionarios.map(criarCard)
// Adiciona todos do array o ...
document.getElementById('container').append(...cards)

// Map modifica e retorna um array modificando cada elemento
// Função tipo seta usa o ícone => exemplo: numero => numero + 10
// .filter: filtra os elementos