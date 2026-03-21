# Mini Projeto JavaScript 2

## Estruturas de Repetição

Conjunto de 4 mini projetos práticos para exercitar os fundamentos de **JavaScript**.

## Objetivo

Projeto com exercícios práticos para aprender estruturas de repetição em JavaScript puro (`for` e `while`).

---

## 🟡 05 — Contador

**O que fazer:**
Criar o arquivo `script.js` com uma função que lê os valores de início, fim e salto,
e usa um loop `for` para gerar a contagem, criando um `<li>` para cada número dentro da lista.

**Passos:**

1. Adicionar `id` nos três inputs e na `<ul>` do HTML
2. Referenciar o `script.js` no HTML com `<script src="script.js">`
3. Criar o `script.js` com a função e conectá-la ao botão
4. Dentro da função, pegar os valores dos inputs
5. Limpar o conteúdo da lista antes de gerar a nova
6. Criar o loop: `for (let i = inicio; i <= fim; i += salto)`
7. Dentro do loop, adicionar um `<li>` com o número atual

**Conceitos praticados:**

- `for` com início, fim e passo personalizados
- Criação dinâmica de elementos com `innerHTML +=`
- Limpar resultado anterior antes de gerar novo

---

## 🟡 06 — Tabuada

**O que fazer:**
Criar o arquivo `script.js` com uma função que lê um número e usa um loop `for`
para gerar sua tabuada de 1 a 10, criando uma linha `<tr>` na tabela para cada multiplicação.

**Passos:**

1. Adicionar `id` no input e no `<tbody>` da tabela no HTML
2. Referenciar o `script.js` no HTML com `<script src="script.js">`
3. Criar o `script.js` com a função e conectá-la ao botão
4. Dentro da função, pegar o valor do input
5. Limpar o `<tbody>` antes de gerar as novas linhas
6. Criar o loop de 1 a 10
7. Para cada iteração, montar uma `<tr>` com a expressão e o resultado

**Conceitos praticados:**

- `for` com intervalo fixo
- Construção de tabela HTML dinamicamente
- Concatenação de strings para montar tags HTML

---

## 🟡 07 — Simulador de Financiamento

**O que fazer:**
Criar o arquivo `script.js` com uma função que lê os dados do financiamento e usa um loop
para simular mês a mês com juros compostos, gerando uma linha `<tr>` para cada mês.

**Por que o loop é obrigatório aqui?**
Os juros incidem sobre o saldo devedor restante — cada mês depende do resultado
do mês anterior. Sem o loop não é possível calcular.

**Passos:**

1. Adicionar `id` nos quatro inputs e no `<tbody>` da tabela no HTML
2. Referenciar o `script.js` no HTML com `<script src="script.js">`
3. Criar o `script.js` com a função e conectá-la ao botão
4. Dentro da função, pegar os quatro valores dos inputs
5. Limpar o `<tbody>` antes de gerar as novas linhas
6. Criar o loop do mês 1 até o número de parcelas
7. Para cada mês calcular:
   - **Juros do Mês** = saldoDevedor × taxa
   - **Total do Mês** = parcela + jurosMes
   - **Saldo Devedor** = saldoDevedor + jurosMes − parcela
8. Montar a `<tr>` com cinco `<td>` e adicionar ao `<tbody>`
9. Atualizar o saldo devedor ao final de cada iteração

**Conceitos praticados:**

- `for` com lógica acumulativa
- Juros compostos na prática
- Tabela com múltiplas colunas gerada dinamicamente
- `toFixed(2)` para formatação de valores monetários

---

## Importante

O material do HTML e CSS ja vieram prontos, sendo necessário apenas a criação das classes CSS e adição dos IDs no HTML para a manipulação do JavaScript.
