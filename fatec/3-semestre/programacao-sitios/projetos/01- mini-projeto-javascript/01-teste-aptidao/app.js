'use strict'

// Limpa as classes do HTML
function removerClasses(){

    const resultado = document.getElementById('resultado')
    resultado.classList.remove("apto", "nao-apto")

}

function avaliar(){

    const tempo = document.getElementById('tempo')
    const resultado = document.getElementById('resultado')

    // Pega o valor demtro da caixainha
    if (tempo.value <= 14){
        // Adicina o valor na caixa
        resultado.textContent = "Apto"
        // Remove as classes chamando a função criada
        removerClasses()
        // Adiciona a classe resultado.apto do CSS, você coloca o que está depois do ponto
        resultado.classList.add("apto")
    }else{
        resultado.textContent = "Não Apto"
        removerClasses()
        resultado.classList.add("nao-apto")

    }

}