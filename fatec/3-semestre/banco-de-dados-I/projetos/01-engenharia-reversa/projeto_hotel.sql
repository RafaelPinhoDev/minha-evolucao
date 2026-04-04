Create Database Hotel
Use Hotel
Go


-- CRIAÇÃO DE TABELAS --

-- Criando Tabela de Hospedagem --
Create Table Hospedagens
(
	CodigoHospedagem Int Primary Key Identity(1,1),
	CodigoChale Int Not Null,
	CodigoCliente Int Not Null,
	SituacaoChale Varchar(100) Not Null,
	DataInicioHospedagem Date,
	DataFimHospedagem Date,
	QuantidadePessoasHospedagem Int,
	DescontoHospedagem Decimal(10,2),
	ValorFinalHospedagem Decimal (10,2)
)
Go



-- Criando Tabela Hospedagens de Serviços --
Create Table HospedagemServicos
(
	CodigoHospedagemServico Int Primary Key Identity(1,1),
	CodigoServico int Not Null,
	CodigoHospedagem Int Not null,
	PrecoHospedagemServico Decimal (10,2) Not Null

)
Go






-- Criando Tabela Serviços --
Create Table Servicos
(
	CodigoServico Int Primary Key Identity(1,1),
	NomeServico Varchar(120) Not Null,
	PrecoServico Decimal(4,2) Not Null, 
	DescricaoServico Varchar(250) Not Null,
	TipoServico Varchar(120) Not Null,
	DataServico Date Not Null
)
Go


-- Criando Tabela Clientes --
Create Table Clientes 
(
	CodigoCliente Int Primary Key Identity(1,1),
	NomeCliente Varchar(250) Not Null,
	NomeSocialCliente Varchar(120),
	CpfCliente Varchar(11) Not Null,
	RgCliente Varchar(9),
	CepCliente varchar(8) Not Null,
	DataNascimentoCliente Date Not Null,
	EnderecoCliente Varchar(250) Not Null,
	BairroCliente Varchar(250) Not Null,
	CidadeCliente Varchar(120) Not Null,
	UnidadeFederativaCliente Varchar(120) Not Null,
)
Go




-- Criando tabela de Telefones --
Create Table Telefones
(
	CodigoTelefone int primary key identity(1,1),
	CodigoCliente int Not Null,
	TipoTelefone Varchar(13) Not Null

)
Go


--Criando a tabela de Chalés--
Create Table Chales
(
	CodigoChale int primary key identity(1,1),
	LocalizacaoChale Varchar(250) Not Null,
	CapacidadeChale Tinyint Not Null,
	ValorAltaEstacaoChale Numeric(10,2) Not Null,
	ValorBaixaEstacaoChale Numeric(10,2) Not Null,

)
Go



--Criando a tabela Chale Itens --
Create Table ChaleItens
(
	CodigoChaleItem int primary Key Identity(1,1),
	CodigoChale Int Not Null,
	CodigoItem Int Not Null

)
Go


-- Criando a Tabela Itens --
Create Table Itens
(
	CodigoItem Int Primary Key Identity(1,1),
	NomeItem Varchar(120) Not Null,
	DescricaoItem Varchar(250)

)
Go

-- FIM CRIAÇÃO DE TABELA --


-- ADIÇÃO DE CHAVES ESTRANGEIRAS (FOREIGN kEY) --



-- Adicionando FK do Chalé em Hospedagem --
Alter Table Hospedagens
	Add Constraint FK_Hospedagens_Chales_CodigoChale Foreign Key(CodigoChale)
	References Chales(CodigoChale)
Go

-- Adicionando FK do Cliente em Hospedagem --
Alter Table Hospedagens
	Add Constraint FK_Hospedagens_Clientes_CodigoCliente Foreign Key(CodigoCliente)
	References Clientes(CodigoCliente)
Go

-- Adicionando FK do Cliente em Telefone --
Alter Table Telefones 
	Add Constraint FK_Telefones_Clientes_CodigoCliente Foreign Key(CodigoCliente)
	References Clientes(CodigoCliente)
Go

-- Adicionando FK da Hospedagem em Hospedagem Serviço  --
Alter Table HospedagemServicos 
	Add Constraint FK_HospedagemServicos_Hospedagem_CodigoHospedagem Foreign Key(CodigoHospedagem)
	References Hospedagens(CodigoHospedagem)
	Go

-- Adicionando FK  de Serviços em Hospedagem Serviços
Alter Table HospedagemServicos 
	Add Constraint FK_HospedagemServicos_Servicos_CodigoServico Foreign Key(CodigoServico)
	References Servicos(CodigoServico)
	Go


--Adicionando FK do Chalé em Chalé Item --
Alter Table ChaleItens
	Add Constraint FK_ChaleItens_Chales_CodigoChale Foreign Key(CodigoChale)
	References Chales(CodigoChale)
	Go

--Adicionando FK do Item em Chalé Item --
Alter Table ChaleItens
	Add Constraint FK_ChaleItens_Itens_CodigoItem Foreign Key(CodigoItem)
	References Itens(CodigoItem)
	Go

