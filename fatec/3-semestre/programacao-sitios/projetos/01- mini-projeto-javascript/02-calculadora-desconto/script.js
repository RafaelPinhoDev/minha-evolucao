'use strict'


function removerClasses(){

    const resultado = document.getElementById('resultado')
    resultado.classList.remove("abaixo-cinco", "cinco-dez", "acima-dez")

}

function limparCampos(){

    const preco = document.getElementById('preco')
    const desconto = document.getElementById('desconto')
    const resultado = document.getElementById('resultado')

    preco.value = ''
    desconto.value = ''
    resultado.textContent = ''

    removerClasses()
}

function calcularDesconto(){
    // Calculo Porcentagem: resultado <- (valor * percentual) / 100
    const preco = document.getElementById('preco')
    const desconto = document.getElementById('desconto')
    const resultado = document.getElementById('resultado')


    // Calculo do novo preço
    const precoDesconto = (preco.value * desconto.value) / 100
    const novoPreco = preco.value - precoDesconto
    resultado.textContent = `Valor economizado: R$ ${novoPreco.toFixed(1)}`


    if (porcentagem < 5){
        removerClasses()
        resultado.classList.add("abaixo-cinco")
        

    }else if(porcentagem >=5 && porcentagem <= 10) {
        removerClasses()
        resultado.classList.add("cinco-dez")

    }else{
        
        removerClasses()
        resultado.classList.add("acima-dez")
       
    }
   
    
    //   - Até 5% → `#14532d` resultado.abaixo-cinco
//   - Entre 5% e 10% → `#713f12` resultado.cinco-dez
//   - Acima de 10% → `#7f1d1d` resultado.acima-dez
// 
}

