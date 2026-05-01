
Create Database SorteioValores
Use SorteioValores

-- Criando a Tabela Valores Padrões --
Create Table ValoresPadroes
(
	Codigo Int Primary Key Identity(2,2),
	Descricao Varchar (20) Default 'Descrição',
	Data Date Default GetDate(),
	Hora Time Default GetDate(),
	Valor1 Float Default '10.00',
	Valor2 Decimal(6,2) Default '20.00',
	SomaValores As (Valor1 + Valor2) -- Função que soma os dois valores 
)
Go

-- Inserindo 10000 registros lógicos com duas linhas de código
Insert into ValoresPadroes Default Values
Go 10000 -- Vai executar 10000 vezes


-- Consultando --
Select Codigo, Descricao, Data, Hora, Valor1, Valor2, SomaValores 
From ValoresPadroes
Where Codigo <> 4540 -- Codigo diferente de 4.540 --
Go

-- Consultando de forma dinâmica a quantidade de registros lógicos --
Declare @NumeroDeLinhas SmallInt

Set @NumeroDeLinhas = Rand()*10000

Select @NumeroDeLinhas As 'Números de Linhas' -- Quantidade de Linhas

-- Apresentando as linhas com base na quantidade informada na variável --
Select Top(@NumeroDeLinhas) Codigo, Descricao, Data, Hora,
	Valor1, Valor2, SomaValores,
Case Valor1 -- Condicional 
When 10 Then 'Dez'
When 20 Then 'Vinte'
Else 'Outro Valor'
End As DescricaoValor1,
NewId() as 'Identificador'
From ValoresPadroes
-- Order By Codigo Desc -- Ordenar por código em ordem decrescente
Order By NewId() -- Atribui um id
Go

