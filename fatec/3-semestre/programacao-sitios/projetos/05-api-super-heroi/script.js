'use strict'

function criarPersonagem(personagem){
    const galeria = document.getElementById('galeria')


    const card = document.createElement('div')
    card.classList.add('card')

    const imagem = document.createElement('img')
    imagem.src = personagem.images.lg 
    imagem.alt = personagem.name

    const nome = document.createElement('h3')
    nome.textContent = personagem.name

    const nomeReal = document.createElement('p')
    nomeReal.textContent = `Nome Real: ${personagem.biography.fullName || 'Desconhecido'}`

    const alinhamento = document.createElement('p')
    const tipo = personagem.biography.alignment === 'good' ? 'Herói' : 'Vilão'
    alinhamento.textContent = `Lado: ${tipo}`

    const poderes = document.createElement('p')
    poderes.textContent = `Inteligência: ${personagem.powerstats.intelligence} | Força: ${personagem.powerstats.strength}`

    const biografia = document.createElement('p')
    biografia.textContent = `Estreia: ${personagem.biography.firstAppearance}`

    card.append(imagem, nome, alinhamento, nomeReal,  poderes, biografia)
    galeria.appendChild(card)
}

async function carregarHerois(){
   const nomeHeroi = document.getElementById('busca-heroi').value.toLowerCase();
    const galeria = document.getElementById('galeria');
    
    const url = `https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/all.json`;

    if (nomeHeroi === "") return;

    try {
        const response = await fetch(url);
        const todosOsHerois = await response.json();

        galeria.replaceChildren();

        const resultados = todosOsHerois.filter(heroi => 
            heroi.name.toLowerCase().includes(nomeHeroi)
        );

        if (resultados.length > 0) {
            resultados.slice(0, 3).forEach(criarPersonagem);
        } else {
            galeria.innerHTML = '<p>Nenhum herói encontrado!</p>';
        }
    } catch (error) {
        console.error("Erro na requisição:", error);
    }
}

document.getElementById('pesquisar').addEventListener('click', carregarHerois)