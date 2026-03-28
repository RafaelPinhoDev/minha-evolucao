'use strict'

const listaProdutos = [
  {
    "id": 1,
    "imagem": "./img/notebook-dell-inspiron-15-3000.png",
    "nome": "Notebook Dell Inspiron 15 3000",
    "descricao": "Notebook com processador Intel Core i5, 8GB de RAM e 256GB de SSD",
    "preco": 3999.99,
    "categoria": "Informática",
    "classificacao": "1° Mais vendido em Notebooks"
  },
  {
    "id": 2,
    "imagem": "./img/monitor-samsung-led-23.8.png",
    "nome": "Monitor Samsung LED 23.8 polegadas",
    "descricao": "Monitor LED com resolução Full HD e tempo de resposta de 5ms",
    "preco": 799.99,
    "categoria": "Informática",
    "classificacao": "2° Mais vendido em Monitores"
  },
  {
    "id": 3,
    "imagem": "./img/mouse-gamer-logitech-g-pro.png",
    "nome": "Mouse Gamer Logitech G Pro",
    "descricao": "Mouse com sensor HERO 25K, 6 botões programáveis e 16000 DPI",
    "preco": 299.99,
    "categoria": "Informática",
    "classificacao": "1° Mais vendido em Mouses Gamer"
  },
  {
    "id": 4,
    "imagem": "./img/teclado-mecanico-redragon-kumara.png",
    "nome": "Teclado Mecânico Redragon Kumara",
    "descricao": "Teclado mecânico com switches Outemu Blue e iluminação em LED",
    "preco": 219.99,
    "categoria": "Informática",
    "classificacao": "5° Mais vendido em Teclados Mecânicos"
  },
  {
    "id": 5,
    "imagem": "./img/smartphone-samsung-galaxy-s21.png",
    "nome": "Smartphone Samsung Galaxy S21",
    "descricao": "Smartphone com tela de 6.2 polegadas, processador Exynos 2100 e câmera de 64 MP",
    "preco": 5999.99,
    "categoria": "Informática",
    "classificacao": "1° Mais vendido em Celulares e Smartphones"
  },
  {
    "id": 6,
    "imagem": "./img/tablet-apple-ipad-pro.png",
    "nome": "Tablet Apple iPad Pro",
    "descricao": "Tablet com tela de 11 polegadas, processador A12Z Bionic e câmera de 12 MP",
    "preco": 8499.99,
    "categoria": "Informática",
    "classificacao": "4° Mais vendido em Tablets"
  },
  {
    "id": 7,
    "imagem": "./img/caixa-de-som-jbl-flip-5.png",
    "nome": "Caixa de Som JBL Flip 5",
    "descricao": "Caixa de som portátil com Bluetooth, resistente à água e bateria com duração de até 12 horas",
    "preco": 499.99,
    "categoria": "Eletrônicos",
    "classificacao": "2° Mais vendido em Caixas de Som Bluetooth "
  },
  {
    "id": 8,
    "imagem": "./img/fone-de-ouvido-bluetooth-jbl-tune-500bt.png",
    "nome": "Fone de Ouvido Bluetooth JBL Tune 500BT",
    "descricao": "Fone de ouvido com conectividade Bluetooth, bateria com duração de até 16 horas e microfone integrado",
    "preco": 299.99,
    "categoria": "Eletrônicos",
    "classificacao": "3° Mais vendido em Fones de Ouvido Bluetooth"
  },
  {
    "id": 9,
    "imagem": "./img/smartwatch-samsung-galaxy-watch-3.png",
    "nome": "Smartwatch Samsung Galaxy Watch 3",
    "descricao": "Smartwatch com tela de 1.4 polegadas, GPS integrado e bateria com duração de até 56 horas",
    "preco": 2799.99,
    "categoria": "Eletrônicos",
    "classificacao": "1° Mais vendido em Smartwatches"
  },
  {
    "id": 10,
    "imagem": "./img/camera-sony-alpha-a7-iii.png",
    "nome": "Câmera Sony Alpha a7 III",
    "descricao": "Câmera mirrorless com sensor full-frame de 24.2 MP, estabilização de imagem de 5 eixos e gravação de vídeo em 4K",
    "preco": 12999.99,
    "categoria": "Eletrônicos",
    "classificacao": "4° Mais vendido em Câmeras"
  }
]

function criarProduto(produto){

  // Espaço para colocar as informações do produtos
  const espacoProduto = document.createElement ('div')
  espacoProduto.classList.add('espaco-produto')
  

  // Informações dos produtos 
  const idProduto = document.createElement('p')
  idProduto.textContent = produto.id
  idProduto.classList.add('id-produto')

  const imagemProduto = document.createElement ('img')
  imagemProduto.src = produto.imagem
  imagemProduto.classList.add('imagem-produto')

  const classificacaoProduto = document.createElement('p')
  classificacaoProduto.textContent = produto.classificacao
  classificacaoProduto.classList.add('classificacao-produto')

  const categoriaProduto = document.createElement('p')
  categoriaProduto.textContent = produto.categoria
  categoriaProduto.classList.add('categoria-produto')


  const nomeProduto = document.createElement ('h3')
  nomeProduto.textContent = produto.nome
  nomeProduto.classList.add('nome-produto')

  const descricaoProduto = document.createElement ('p')
  descricaoProduto.textContent = produto.descricao
  descricaoProduto.classList.add('descricao-produto')

  const precoProduto = document.createElement('span')
  precoProduto.textContent = `R$ ${produto.preco}`
  precoProduto.classList.add("preco-produto")

  const botaoComprar = document.createElement('button')
  botaoComprar.textContent = "Comprar"
  botaoComprar.classList.add('botao-comprar')




  // Adiciona todos os filhos de uma vez
  espacoProduto.append(idProduto,imagemProduto, categoriaProduto, classificacaoProduto, nomeProduto, descricaoProduto, precoProduto, botaoComprar)

  return espacoProduto



}

function carregarProduto(){

  // Vai receber todos os produtos
  const vitrine = document.getElementById('vitrine')

  // Layout para separar os produtos em 2 linhas.
  const linhaUmProduto = document.createElement('div')
  linhaUmProduto.classList.add('linha-produto')
  const linhaDoisProduto = document.createElement('div')
  linhaDoisProduto.classList.add('linha-produto')



  // Função para separar os produtos em 2 linhas
  listaProdutos.forEach(function(produto, index) {

    const espaco = criarProduto(produto)

    if (index < 5){
      linhaUmProduto.appendChild(espaco)
    }else
      linhaDoisProduto.appendChild(espaco)
  })

  vitrine.append(linhaUmProduto, linhaDoisProduto)

}

carregarProduto()