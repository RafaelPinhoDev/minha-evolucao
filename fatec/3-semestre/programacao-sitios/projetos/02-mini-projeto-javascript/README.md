# 🚀 Mini Projeto JavaScript 2

## Estruturas de Repetição

Conjunto de 4 mini projetos práticos desenvolvidos para exercitar os fundamentos de **JavaScript**, com foco em estruturas de repetição.

## 📌 Objetivo

Este projeto tem como objetivo aplicar, na prática, o uso de loops (`for` e `while`) em JavaScript puro, manipulando elementos do DOM e gerando conteúdos dinâmicos.

---

## 🟡 05 — Contador

### ✔️ O que foi desenvolvido

Foi criada uma funcionalidade de contagem dinâmica, onde o usuário informa valores de início, fim e salto. A partir desses dados, um loop `for` gera uma lista de números exibidos na tela.

Durante o desenvolvimento:
- Foram adicionados `id`s aos inputs e à lista (`<ul>`) no HTML  
- O arquivo `script.js` foi integrado ao projeto  
- Os valores dos inputs são capturados via JavaScript  
- A lista é limpa antes de cada nova execução  
- Um loop percorre os valores e cria elementos `<li>` dinamicamente  

### 💡 Conceitos aplicados

- Estrutura de repetição `for` com parâmetros personalizados  
- Manipulação do DOM com `innerHTML`  
- Atualização dinâmica de listas  

---

## 🟡 06 — Tabuada

### ✔️ O que foi desenvolvido

Foi implementada uma funcionalidade que gera a tabuada de um número informado pelo usuário, exibindo os resultados em formato de tabela.

Durante o desenvolvimento:
- Foram definidos `id`s no input e no `<tbody>` da tabela  
- O JavaScript captura o valor informado  
- O conteúdo da tabela é resetado antes de cada execução  
- Um loop de 1 a 10 gera as multiplicações  
- Cada resultado é inserido como uma nova linha `<tr>` na tabela  

### 💡 Conceitos aplicados

- Loop `for` com intervalo fixo  
- Criação dinâmica de tabelas HTML  
- Manipulação de strings para construção de elementos  

---

## 🟡 07 — Simulador de Financiamento

### ✔️ O que foi desenvolvido

Foi desenvolvido um simulador de financiamento que calcula, mês a mês, a evolução de um saldo devedor com base em juros compostos.

Durante o desenvolvimento:
- Foram adicionados `id`s aos inputs e ao `<tbody>` da tabela  
- Os dados do financiamento são capturados via JavaScript  
- A tabela é limpa antes de cada simulação  
- Um loop percorre cada mês do financiamento  
- Para cada iteração, são calculados:  
  - Juros do mês  
  - Total pago no mês  
  - Novo saldo devedor  
- Os resultados são exibidos em uma tabela dinâmica  
- Os valores são formatados com `toFixed(2)`  

### 💡 Conceitos aplicados

- Loop `for` com lógica acumulativa  
- Aplicação prática de juros compostos  
- Manipulação de tabelas com múltiplas colunas  
- Formatação de números  

---

## ⚠️ Observações

O HTML e o CSS base foram previamente disponibilizados.  
O desenvolvimento concentrou-se na:

- Adição de `id`s para integração com o JavaScript  
- Implementação da lógica em `script.js`  
- Manipulação dinâmica dos elementos da página  