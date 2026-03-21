'use strict'

function criarLinha(linha){
    const tabela = document.getElementById('tabela')
    const tr = document.createElement('tr')

    const tdMes = document.createElement('td')
    tdMes.textContent = linha.mes

    const tdJurosMes = document.createElement('td')
    tdJurosMes.textContent = linha.juros
    tdJurosMes.classList.add('col-juros')

    const tdParcelas = document.createElement('td')
    tdParcelas.textContent = linha.parcelas

    const tdTotalMes = document.createElement('td')
    tdTotalMes.textContent = linha.totalMes
    tdTotalMes.classList.add('col-total')

    const tdSaldoDevedor = document.createElement('td')
    tdSaldoDevedor.textContent = linha.saldoDevedor
    tdSaldoDevedor.classList.add('col-saldo-devedor')

    tr.appendChild(tdMes)
    tr.appendChild(tdJurosMes)
    tr.appendChild(tdParcelas)
    tr.appendChild(tdTotalMes)
    tr.appendChild(tdSaldoDevedor)

    tabela.appendChild(tr)


}

function simularFinanciamento(){
    const valorTotal = Number(document.getElementById('valor-total').value)
    const taxaJuros = Number(document.getElementById('taxa-juros').value)
    const numeroParcelas = Number(document.getElementById('numero-parcelas').value)
    
    document.getElementById('tabela').innerHTML = ''

    let saldoDevedor = valorTotal
    const parcela = valorTotal / numeroParcelas

    for(let i = 1 ; i <= numeroParcelas; i++){

    const jurosMes = saldoDevedor * (taxaJuros / 100)
    const totalMes = parcela + jurosMes
    saldoDevedor = saldoDevedor - parcela

    const linha = {
        mes: i,
        juros: `R$ ${jurosMes.toFixed(2)}`,
        parcelas: `R$ ${parcela.toFixed(2)}`,
        totalMes: `R$ ${totalMes.toFixed(2)}`,
        saldoDevedor: `R$ ${saldoDevedor.toFixed(2)}`
    }

    
    criarLinha(linha)
    }



}

