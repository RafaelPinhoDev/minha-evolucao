# TUTORIAL 

## 1. Coloque ID nos componentes do HTML que irá utilizar

## 2. Crie 2 classes no CSS que contém 2 elementos.

Código:
```css
/* O que vem depois do ponto é uma segunda classe que você irá usar no CSS */
.resultado.apto{
  background-color: #14532d;
}

.resultado.nao-apto{
  background-color: #7f1d1d;
}

```

## 3. No JS coloque o Script abaixo: 

```javascript

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
```


