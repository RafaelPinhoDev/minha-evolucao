'use strict'

function removerClasses(){
    const resultado = document.getElementById('resultado')
    resultado.classList.remove('aprovado', 'recuperacao', 'reprovado')
}

function limparCampos(){

    const resultado = document.getElementById('resultado')

    const notas = [
        document.getElementById('nota1'),
        document.getElementById('nota2'),
        document.getElementById('nota3')
    ]

    notas[0].value = '';
    notas[1].value = '';
    notas[2].value = '';

    resultado.textContent = ' '

    removerClasses()
}

function calcularMedia(){
    const resultado = document.getElementById('resultado')
    // Array para pegar as notas
    const notas = [
        Number(document.getElementById('nota1').value),
        Number(document.getElementById('nota2').value),
        Number(document.getElementById('nota3').value),
        ]
    
    // Calculo da média
    const media = (notas[0] + notas[1] + notas[2]) / 3
    
    if (media>= 7){
        removerClasses()
        resultado.classList.add("aprovado")
        // Formatação para obter apenas 1 casa decimal, usa-se o toFixed()
        resultado.textContent = `${media.toFixed(1)}  - Aprovado`
    }
    else if(media >= 5 && media <= 6){
        removerClasses()
        resultado.classList.add("recuperacao")
        resultado.textContent = `${media.toFixed(1)} - Recuperação`
    }
    else{
        removerClasses()
        resultado.classList.add("reprovado")
        resultado.textContent = `${media.toFixed(1)} - Reprovado`
    }
    
    
}
