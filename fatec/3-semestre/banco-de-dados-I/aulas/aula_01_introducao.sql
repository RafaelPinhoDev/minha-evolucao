-- Acessando o Banco de Dados Model --
Use model 
Go
-- O GO Especifica o fim do bloco que deve ser executado --


-- Consultar nome do usuário conectado
Select name, uid from sys.sysusers
Go

-- Obter o identificador da sessão atual e nome do banco de dados --
Select @@SPID As 'Número da Sessão ou Query',
	DB_Name() As 'Nome do Banco de Dados'
	Go


-- MDF - Master Data File - Arquivos de dados mestre - Tudo que estão nas tabelas são MDF --
-- LDF - Log Data File - Registra tudo que acontece no banco de dados. - LOg Serial Number --

--Sysinternals pesquisar --
-- Obter lista de arquivos que compõem o banco de dados em uso --
Select Name, Physical_Name, File_Guid From sys.database_files
Go

-- O AS serve para rotular --
-- Simular uma entrada de dados em memória --
Select 1 As 'Codigo' , 'Rafael' As Nome
Union --Operador de união de dados --
Select 2 As 'Codigo' , 'Pedro' As Nome
Go

-- Criando meu Primeiro Banco de Dados Relacional --
Create Database MeuBancoDeDados2026
Go

-- Acessar Banco de Dados --
Use MeuBancoDeDados2026
Go

-- Criando a Tabela de Pessoas --
Create Table Pessoas
(
	CodigoPessoa int Primary Key, --Definindo a Chave Primária (PK)--
	NomePessoa Varchar(100) Not Null, -- Caractere Variável --
	ApelidoPessoa Char(10) Null, --Caractere Fixo--
	DataNascimentoPessoa DateTime Null
)
Go


-- Exercicio 1: Criando a tabela Produtos --

Create Table Produtos 
(
	CodigoProduto Int Primary Key,
	NomeProduto Varchar(80) Not Null,
	DescricaoProduto Varchar(120) Null,
	PrecoProduto Float Not Null,
	DataValidadeProduto Date Not Null,
	LoteProduto Varchar(120) Null
)
Go


