'use strict'

function removerClasses(){
    const resultado = document.getElementById('resultado')
    resultado.classList.remove('abaixo-peso' , 'peso-normal' , 'sobrepeso' , 'obesidade-i' , 'obesidade-ii' , 'obesidade-iii')
}

function limparCampos(){

    const resultado = document.getElementById('resultado')
    const peso = document.getElementById('peso')
    const altura = document.getElementById('altura')
    const nome = document.getElementById('nome')


    resultado.textContent = ''
    peso.value = ''
    altura.value = ''
    nome.value = ''

    removerClasses()
}

function calcularIMC(){
    const resultado = document.getElementById('resultado')
    const peso = Number(document.getElementById('peso').value)
    const altura = Number(document.getElementById('altura').value)
    const nome = document.getElementById('nome')

    const media = peso / (altura * altura)

    if (media < 18.5 ){

        removerClasses()
        resultado.classList.add("abaixo-peso")
        resultado.textContent = `IMC: ${media.toFixed(1)} - Abaixo do Peso`

    }else if (media >= 18.5 && media <= 24.9){

        removerClasses()
        resultado.classList.add("peso-normal")
        resultado.textContent = `IMC: ${media.toFixed(1)} - Peso Normal`

    }else if(media >= 25 && media <= 29.9) {

        removerClasses()
        resultado.classList.add("sobrepeso")
        resultado.textContent = `IMC: ${media.toFixed(1)} - Sobrepeso`

    }else if(media >= 30 && media <= 34.9) {

        removerClasses()
        resultado.classList.add("obesidade-i")
        resultado.textContent = `IMC: ${media.toFixed(1)} - Obesidade Grau I`

    }else if(media >= 35 && media <= 39.9) {

        removerClasses()
        resultado.classList.add("obesidade-ii")
        resultado.textContent = `IMC: ${media.toFixed(1)} - Obesidade Grau II`

    }else if(media >= 40) {

        removerClasses()
        resultado.classList.add("obesidade-iii")
        resultado.textContent = `IMC: ${media.toFixed(1)} - Obesidade Grau III`

    }
}


