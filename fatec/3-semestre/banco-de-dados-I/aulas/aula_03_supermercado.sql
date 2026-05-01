-- Criando o SuperMercadoBomPreco2026
Create Database SuperMercadoBomPreco2026
Go

--Usando o SuperMercadoBomPreco2026 --
Use SuperMercadoBomPreco2026
Go

-- Criando Tabela de Categorias --
Create Table Categorias 
(
	CodigoCategoria Int Primary Key Not Null,
	NomeCategoria Varchar(100),
	DescricaoCategoria Varchar(255)
)
Go

-- Criando a Tabela de Produtos --
Create Table Produtos 
(
	CodigoProduto Int Not Null,
	CodigoCategoria Int Not Null,
	NomeProduto Varchar(100) Not Null,
	DescricaoProduto Varchar(255) Null,
	PrecoProduto Decimal(10,2) Not Null,
	QuantidadeEstoqueProduto Smallint Not Null
)
Go


-- Alterando a Tabela de Produtos, definindo sua respectiva Primary Key --
Alter Table Produtos
	Add Constraint PK_Produtos_CodigoProduto Primary Key (CodigoProduto) -- Constraint é uma regra.
	-- Estrututa: Sigla, Tabela, Quem vai receber a regra , o tipo de chave e quem vai receber novamente --
Go

-- Adicionando o Relacionamento entre as tabelas de Produtos e Categorias --
Alter Table Produtos
	Add Constraint FK_Produtos_Categorias_CodigoCategoria Foreign Key(CodigoCategoria) -- A chave que vai mudar -- 
		References Categorias(CodigoCategoria) -- De onde vem a chave estrangeira --
Go

-- Criando Tabela de Clientes --
Create Table Clientes
(
	CodigoCliente Int Primary Key,
	NomeCliente Varchar(100) Not Null,
	EnderecoCliente Varchar(255),
	TelefoneCliente Varchar(20),
	EmailCliente Varchar(100),
)
Go

-- Criando Tabela de Pedidos -- 
Create Table Pedidos
(
	CodigoPedido Int Primary Key,
	CodigoCliente Int Not Null,
	DataPedido DateTime,
	TotalPedido Decimal(10,2)
)
Go


-- Adicionando o relacionamento entre as tabelas de Pedidos e Clientes --
Alter Table Pedidos
	Add Constraint FK_Pedidos_Clientes_CodigoCliente Foreign Key (CodigoCliente)
		References Clientes(CodigoCliente)
Go

-- Criando a Tabela ItemPedidos --
Create Table ItemPedidos
(
	CodigoItemPedido Int Primary Key,
	CodigoPedido Int Not Null,
	CodigoProduto Int Not Null,
	QuantidadeItemPedido Int,
	PrecoItemPedido Decimal(10,2)
)
Go

-- Adicionando relacionamento entre ItemPedidos e Pedidos --
Alter Table ItemPedidos 
	Add Constraint FK_ItemPedidos_Pedidos_CodigoPedido Foreign Key(CodigoPedido)
		References Pedidos(CodigoPedido)
		Go

-- Adicionando relacionamento entre ItemPedidos e Produtos
Alter Table ItemPedidos 
	Add Constraint FK_ItemPedidos_Produtos_CodigoProduto Foreign Key(CodigoProduto)
	References Produtos(CodigoProduto)
Go

-- Criando a tabela de Fornecedores--
Create Table Fornecedores
(
	CodigoFornecedor Int Primary Key,
	NomeFornecedor Varchar(100),
	ContatoFornecedor Varchar(100),
	TelefoneFornecedor Varchar(20),
	EmailFornecedor Varchar(100)
)
Go

-- Criando a Tabela de Funcionários
Create Table Funcionarios
(
	CodigoFuncionario Int Primary Key,
	NomeFuncionario Varchar(100),
	CargoFuncionario Varchar(100),
	SalarioFuncionario Decimal(10,2),
	DataAdmissaoFuncionario DateTime
)
Go

-- Criação da Tabela Estoques --
Create Table Estoques
(
	CodigoEstoque Int Primary Key,
	CodigoProduto Int,
	QuantidadeEstoque Int,
	LocalizacaoEstoque Varchar(100)
)
Go