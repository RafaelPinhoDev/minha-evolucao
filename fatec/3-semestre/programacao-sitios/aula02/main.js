'use stritc'

// Pega o elemento do HTMLe transforma em VAR
const botaoSalvar = document.getElementById('botao-salvar')

const nome = document.getElementById('caixa-nome')

function cadastrarNome(){

    const listaNomes = document.getElementById('lista-nomes')


    if (nome.value != '') {
        // Coloca o elemento sem precisar percorrer o html todo, economizando tempo e memória.
        const itemNome = document.createElement('p')
        itemNome.textContent = nome.value
        listaNomes.appendChild(itemNome)

        // Reseta a caixinha apagando o valor
        
    }
    else{
        alert("Campo vazio - Digite algo")
    }


    nome.value = ''


}


// Função para configurar o enter 
function verificarEnter(evento){
    if(evento.key == 'Enter'){
        cadastrarNome()
    }
}



// Pega o evento do botao e após a virgula é a função
botaoSalvar.addEventListener('click', cadastrarNome)
// Envia digitando a tecla 
nome.addEventListener('keyup', verificarEnter)
