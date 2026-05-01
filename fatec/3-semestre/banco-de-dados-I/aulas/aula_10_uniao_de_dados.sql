Create Database UniaoDados 
Go


Use UniaoDados

-- Realizando uma simples união de valores --
-- O union tem a capacidade de unir os dados sem repetições --

Select 1
Union -- União de dados
Select 2
Union
Select 3
Go


-- Realizando a união com a palavra chave Null --

Select 1 
Union
Select Null
Union
Select 3
Union
Select 4
Go


-- Realizando Union completa considerando valores duplicados --
-- Union All: Une valores repetidos e nulos --
Select 1 As ColunaA, 2 As ColunaB
Union All -- União todos os dados, inclusive repetidos
Select 1,2
Union All
Select 2,2
Union All
Select 3,3
Union All
Select 3,3
Go

-- Simulando a União de dados --
-- Convert os INT para Varchar para evitar dar erros --
Select Convert(Varchar(3),1) 
Union
Select Convert(Varchar(3),1) 
Union
Select Convert(Varchar(3),0) 
Union
Select Null
Union
Select 'ABC'
Go

--Utilizando a união completa - Union All --
--Criando as Tabelas A e B na mesma transação --
Create Table TabelaA
(Valor TinyInt)

Create Table TabelaB
(Valor TinyInt)
Go

-- Inserindo os dados nas Tabelas A e B na mesma Transação --
Insert Into TabelaA Values (1), (2), (3), (Null)
Insert Into TabelaB Values (10), (20), (Null), (0)
Go

-- Operador Union --
-- Para filtrar é necessário adicionar o Where nas duas tabelas --
Select Valor, 'A' As NomeDaTabela From TabelaA
Where Valor Is Not Null -- Não é nulo --
Union
Select Valor, 'B' From TabelaB
Where Valor Is Not Null -- Não é nulo --
Order By Valor Desc
Go

-- Criando a Tabela de Números  --
Create Table Numeracao
(
	Linha TinyInt Identity(1,1),
	Numeros TinyInt Not Null
)
Go

--Inserindo 25 linhas de registro --
Insert Into Numeracao
Values (1), (1), (1), (1), (1),
	   (2), (2), (2), (2), (2),
	   (3), (3), (3), (3), (3),
	   (4), (4), (4), (4), (4),
	   (5), (5), (5), (5), (5)
Go

--Consultando todos os dados--
Select Linha, Numeros From Numeracao
Go

--Apresentando somente números sem repeticão--

--Utilizando o Select Distinct--
Select Distinct Numeros From Numeracao
Go

--Retornando as 10 primeiras linhas do registro--
Select Top 10 Linha, Numeros From Numeracao
Order By Linha Asc
Go

--Retornando as 10 últimas linhas do registro--
Select Top 10 Linha, Numeros From Numeracao
Order By Linha Desc
Go

--Retornando 30 porcento de linhas do registro --
Select Top 30 Percent Linha, Numeros From Numeracao
Order By Linha Desc -- Verificar se realmente é necessário utilizar o Order By --
Go