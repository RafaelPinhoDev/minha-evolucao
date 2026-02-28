'use strict'

// Dicionário (Json)
const imagens = [ 
    {
        'url': './img/cyberpunk.jpg' , 
        'legenda': 'Cyberpunk 2077'
    },

    {
        'url': './img/gta_v.webp' , 
        'legenda': 'GTA V'
    },

    {
        'url': './img/life_is_strange.webp' , 
        'legenda': 'Life Is Strange'
    },

    {
        'url': './img/max_payne_3.jpg' , 
        'legenda': 'Max Payne 3'
    },

    {
        'url': './img/red_dead_2.jpg' , 
        'legenda': 'Red Dead Redemption 2'
    },

    {
        'url': './img/resident_evil_6.jpg' , 
        'legenda': 'Resident Evil 6'
    },

]


function criarImagem(imagem){

    // Cria os elementos 
    const galeria = document.getElementById('galeria')
    const novaFigure = document.createElement('figure')
    const novaLegenda = document.createElement('figcaption')
    const novaImagem = document.createElement('img')

    // Puxa os elementos do json
    novaImagem.src = imagem.url
    novaLegenda.textContent = imagem.legenda

    // Adiciona filho 
    novaFigure.appendChild(novaImagem)
    novaFigure.appendChild(novaLegenda)
    galeria.appendChild(novaFigure)


}



function carregarImagens(){
    // Pega o elemento e joga para uma função
    imagens.forEach(criarImagem)
}





carregarImagens()
