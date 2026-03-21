'use strict'

function criarLinha(linha){
    const  tabela = document.getElementById('tabela')
    
    const trLinhaTabuada = document.createElement('tr')

    const tdExpressao = document.createElement('td')
    tdExpressao.textContent = linha.expressao

    const tdResultado = document.createElement('td')
    tdResultado.textContent = linha.resultado

    trLinhaTabuada.appendChild(tdExpressao)
    trLinhaTabuada.appendChild(tdResultado)
    tabela.appendChild(trLinhaTabuada)

}

function gerarTabuada(){

    const numero = Number(document.getElementById('numero').value)
    document.getElementById('tabela').innerHTML = ''

    for(let i = 1; i <= 10; i++){

        let resultadoMultiplicacao = numero * i

        const linha = {
            expressao: `${numero} X ${i}`,
            resultado: resultadoMultiplicacao
        }

        criarLinha(linha)
    }
}