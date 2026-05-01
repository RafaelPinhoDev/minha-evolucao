Create Database RestricoesDeIntegridade
Go

Use RestricoesDeIntegridade
Go

/* Criando a tabela Funcionários utilizando Constraints:
Null, Not Null, Check, Default e Unique */
Create Table Funcionarios 
(
Codigo Int Primary Key Identity(1,1),
Nome Varchar(80) Not Null,
Sexo Char(1) Check(Sexo='F' Or Sexo='M'),
RG BigInt Not Null Unique,
CPF BigInt Not Null Unique,
DataNascimento Date Check(DataNascimento >= '1950-01-01'),
DataCadastro DateTime Default GetDate(),
Email Varchar(100) Null
)
Go

/* Criando a tabela Funcionários utilizando Constraints:
Null, Not Null, Check, Default e Unique */
Create Table Clientes
(
	Codigo Int Identity(1,1),
	Nome Varchar(80) Not Null,
	RG BigInt Not Null,
	CPF BigInt Not Null,
	Sexo Char(1),
	DataNascimento Date,
	DataCadastro DateTime Constraint DF_Clientes_DataCadastro Default GetDate(),
	Email Varchar(100) Null


	--Constraints com nomes definidos--
	Constraint PK_Clientes_Codigo Primary Key(Codigo),
	Constraint CK_Clientes_Sexo Check(Sexo='F' or Sexo='M'),
	Constraint UQ_Clientes_RG Unique NonClustered(RG),
	Constraint UQ_Clientes_CPF Unique NonClustered(CPF),
	Constraint CK_Clientes_DataNascimento Check(DataNascimento>='1950-01-01')
	)
	Go


	--Criando a tabela Pessoas--

	Create Table Pessoas
	(
		CodigoPessoa Int Identity(1,4),
		NomePessoa Varchar(80) Not Null,
		SexoPessoa Char(1) Default 'M',
		DataCadastroPessoa Date Constraint DF_Pessoas_DataCadastro Default GetDate()+1,
		SalarioPessoa Money Not Null,
		Constraint PK_Pessoas_CodigoPessoa Primary Key(CodigoPessoa)
	)
	Go


	-- Populando a Tabela Pessoas, inserindo uma nova massa de dados --
	Insert Into Pessoas (NomePessoa, SalarioPessoa)
	Values(Concat('Pessoa número:', Ident_Current('Pessoas')), Rand()*1000)
	Go 1000

--Consultando dados da Tabela Pessoas--
--Parâmetro 103 Converte para o Padrão BR --
Select CodigoPessoa, NomePessoa, Case SexoPessoa
	When 'M' Then 'Masculino'
	When 'F' Then 'Feminino'
	End As Sexo,
	Convert(Char(10),
	DataCadastroPessoa,103) as Data, 
Round(SalarioPessoa,2) As Salario
From Pessoas
Where CodigoPessoa>= 800
Order By SalarioPessoa Desc -- Ordernar
Go

--Current Date pega a data do banco de dados--


-- Atualizando os dados da tabela pessoas --
--Alterando o valor da coluna Sexo--

Update Pessoas
Set SexoPessoa = 'F'
Where CodigoPessoa >= 800
Go

--Atualizando as colunas DataCadastroPessoa e NomePessoa--
Update Pessoas
Set DataCadastroPessoa = '18-04-2026', NomePessoa = 'Pessoas Bonitas'
Where CodigoPessoa Between 357 And 591
Go

--Consultando --


Select CodigoPessoa, NomePessoa, Case SexoPessoa
	When 'M' Then 'Masculino'
	When 'F' Then 'Feminino'
	End As Sexo,
	Convert(Char(10),
	DataCadastroPessoa,103) as Data, 
Round(SalarioPessoa,2) As Salario
From Pessoas
Where NomePessoa = 'Pessoas Bonitas'
Order By SalarioPessoa Desc -- Ordernar
Go

--Like: Busca Aproximada--
--Consultando utilizando o operador LIke para realizar uma busca aproximada de valores--
Select CodigoPessoa, NomePessoa, DataCadastroPessoa, SalarioPessoa From Pessoas
Where NomePessoa Like '% bonitas' -- % caractere coringa -- o caractere só pega o que vem depois
Go

Select CodigoPessoa, NomePessoa, DataCadastroPessoa, SalarioPessoa From Pessoas
Where SalarioPessoa Like '99%' -- O Caractere pega somente o que antes -- Salarios começando com o valor 99
Go

--Adicionando uma nova constraint na Tabela Pessoas--
Alter Table Pessoas
Add Constraint CK_Pessoas_SalarioPessoas Check (SalarioPessoa<=1000)
Go

Insert Into Pessoas (NomePessoa, SalarioPessoa)
Values ('Pedros', 1000)
Go

--Excluir Dados da Tabela Pessoas com base na cláusula Where--
Delete From Pessoas
Where SalarioPessoa >= 200 And SexoPessoa ='F'
Go

--Consultando --
Select CodigoPessoa, NomePessoa, Case SexoPessoa
	When 'M' Then 'Masculino'
	When 'F' Then 'Feminino'
	End As Sexo,
	Convert(Char(10),
	DataCadastroPessoa,103) as Data, 
Round(SalarioPessoa,2) As Salario,
Format(SalarioPessoa,'C','PT-BR') As SalarioFormatado --Formtata o salário--
From Pessoas
Where SalarioPessoa <> 200
Order By SalarioPessoa Desc -- Ordernar
Go


--Excluíndo dados da Tabela Pessoas utilizando o Operador In através do uso SubQuery--
--O SubQuery é o select dentro do parenteses--
Delete From Pessoas 
Where SalarioPessoa in (Select SalarioPessoa From Pessoas Where SalarioPessoa > 900)
Go

-- Criando uma cópia da Tabela Pessoas, com base na estrurura de valores atuais --
Select CodigoPessoa, NomePessoa, Case SexoPessoa
	When 'M' Then 'Masculino'
	When 'F' Then 'Feminino'
	End As Sexo,
	Convert(Char(10),
	DataCadastroPessoa,103) as Data, 
Round(SalarioPessoa,2) As Salario,
Format(SalarioPessoa,'C','PT-BR') As SalarioFormatado --Formtata o salário--
Into CopiaTabelaPessoas -- Cria uma cópia da tabela através da cláusula INTO --
From Pessoas
Order By SalarioPessoa Desc -- Ordernar
Go

-- Consultando a Tabela CopiaTabelaPessoas
Select CodigoPessoa, NomePessoa, Sexo, Data ,SalarioFormatado From CopiaTabelaPessoas
Go

--Excluindo todos os registros da Tabela Pessoas - Não remove o espaço ocupado --
Delete From Pessoas
Go

--Excluindo todos os registros da tabela Pessoas e reconstruindo a sua estrutura do zero--
--Remove o espaço ocupado de forma rápida--
Truncate Table Pessoas
Go

--Removendo fisicamente a Tabela Pessoas--
Drop Table Pessoas -- Funciona se a tabela não tiver relacionamentos
Go