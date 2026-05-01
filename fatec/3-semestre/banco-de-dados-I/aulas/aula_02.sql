Create Database MeuBancoDeDados2026
Go

Use MeuBancoDeDados2026
Go

Create Table Produtos
(
	CodigoProduto Int Primary Key Identity(1,1), -- Chave Primária Autonumerada
	NomeProduto Varchar(80) Not Null,
	DataCadastroProduto Date Not Null,
	DataValidadeProduto Date Null,
	ValorProduto Float Null
)
Go

Create Table Categorias
(
	CodigoCategoria Int Primary Key Identity(1,1),
	NomeCategoria Varchar(80) Not Null,
	DescricaoCategoria Varchar(120) Null,
	SiglaCategoria Char(4) Not Null,
	DataCriacaoCategoria Date Not Null

)
Go

Create Table Clientes
(
	CodigoCliente Int Primary Key Identity(1,1),
	NomeCliente Varchar(120) Not Null,
	NomeSocialCliente Varchar(120) Null,
	GeneroCliente Varchar(120) Null,
	EnderecoCliente Varchar(250) Not Null,
	TelefoneCliente Char(13) Not Null,
	EmailCliente Varchar(120) Null,
	CategoriaCliente Varchar(120) Null
)
Go

Create Table Fornecedores
(
	CodigoFornecedor Int Primary Key Identity (1,1),
	NomeFornecedor Varchar(120) Not Null,
	EmailFornecedor Varchar(120) Not Null,
	TelefoneFornecedor Char(11) Not Null,

)
Go

--ALTERANDO TABELA (ALTER) -- 

-- Adiconando Coluna --
Alter Table Produtos 
Add Observacoes Varchar(100) Null
Go

-- Removendo Coluna --
Alter Table Produtos 
Drop Column Observacoes
Go

-- Alterando Coluna --
Alter Table Produtos
Alter Column ValorProduto Decimal (6,2)
Go

-- FIM ALTER TABLE --

-- CONSULTANDO DADOS (SELECT) --

Select CodigoFornecedor, NomeFornecedor, EmailFornecedor, TelefoneFornecedor From Fornecedores
Go

-- FIM SELECT--

-- INSERÇÃO DE DADOS NA TABELA (INSERT)--

--Adicionando uma linha de registros lógicos na Tabela Fornecedor  --
Insert Into Fornecedores(NomeFornecedor, EmailFornecedor, TelefoneFornecedor)
Values ('Pedro LTDA', 'joaoltda@gmail.com', '11111328257')
Go

-- Inserindo dois novos registros lógicos na tabela Fornecedor --
Insert Into Fornecedores(NomeFornecedor, EmailFornecedor, TelefoneFornecedor)
Values ('Kleber Pães', 'kleberpaes@gmail.com' , '11999989999'),
	   ('Luiz Sucos', 'luizsucos@gmail.com' , '11989949999')
Go


Select CodigoFornecedor, NomeFornecedor, EmailFornecedor, TelefoneFornecedor From Fornecedores
Go

-- --

--UTILIZANDO WHERE--

-- Consultando os dados inseridos na Tabela Fornecedores, filtrando registros utilizando WHERE --
Select CodigoFornecedor, NomeFornecedor,
	   EmailFornecedor, TelefoneFornecedor
From Fornecedores
Where CodigoFornecedor = 2 -- Aplicando o filtro predicado condicional
Go

Select CodigoFornecedor, NomeFornecedor,
	   EmailFornecedor, TelefoneFornecedor
From Fornecedores
Where CodigoFornecedor Between 2 and 4
Go

--FIM WHERE--

-- UPDATE --

--Atualizando o dado email do fornecedor --
Update Fornecedores
Set	EmailFornecedor = 'pedroltda@gmail.com' -- Novo email do fornecedor --
Where EmailFornecedor = 'joaoltda@gmail.com' -- Filtro para trazer o email do fornecedor --
Go

-- Consultando alteração --
Select EmailFornecedor From Fornecedores
Where EmailFornecedor = 'pedroltda@gmail.com'
Go

--FIM UPDATE--

-- DELETE --

--Contar a quantidade de fornecedores existentes --
Select Count(CodigoFornecedor) As Quantidade From Fornecedores
Go

--Removendo fisicamente os registros na Tabela Fornecedores--
Delete From Fornecedores
Where NomeFornecedor = 'João Frutas' -- Filtro, excluíndo somente o João Frutas --
Go

Select * from Fornecedores

-- Removendo todos os registros da tabela Fornecedores --
Delete From Fornecedores
Go

--Removendo todos os registros e reconstruindo a tabela e eliminando espaço --
Truncate Table Fornecedores
Go

