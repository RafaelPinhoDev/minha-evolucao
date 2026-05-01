'use strict'

// Pega só a informação necessária o {target}
// O Async faz a função trabalhar de forma assincrona.
// Pois para esperar o servidor responder e ler a linha abaixo dá uma diferença de tempo

async function preencherFormulario({target}){
  const cep = target.value
  const url = `https://viacep.com.br/ws/${cep}/json/`
// O Fetch solicita para o servidor a resposta
  
  const response = await fetch(url)
  const data = await response.json()

//Preenche os campos utilizando info da API
  document.getElementById('endereco').value = data.logradouro
  document.getElementById('bairro').value = data.bairro
  document.getElementById('cidade').value = data.localidade
  document.getElementById('estado').value = data.estado

}

// FocusOut quando sair do campo ele identifica
// O addEventListener aciona uma ação
document.getElementById('cep').addEventListener('focusout', preencherFormulario)