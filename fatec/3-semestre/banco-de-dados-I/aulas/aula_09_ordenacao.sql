Create Database OrdenacaoDeDados
Go

Use OrdenacaoDeDados
Go

--Exemplo 01 - Ordenando valores inteiros em Ordem Decrescente --
Select Numeros From 
	(Values (1),(2), (3), (4), (5), (6), (7), (8), (9), (10)) As Valores(Numeros)
Order By Numeros Desc
Go

-- Exemplo 02 -- Ordenando valores inteiros em ordem Crescente --
Select Numeros From 
	(Values (1),(2), (3), (4), (0), (6), (8), (Null)) As Valores(Numeros)
Order By Numeros Asc
Go

-- Exemplo 03 - Ordenando Valores Caracteres em Ordem Decrescente --
Select Texto From 
	(Values ('1'),(Null), ('2'), ('2p1thon'), ('%a'),('Rafael'), ('3'), ('4'),('sql'), ('0'), ('6'),('xdf') , ('8'), ('a')) As Valores(Texto)
Order By Texto Desc
Go

-- Exemplo 04 - Ordenando Valores Caracteres em Ordem Crescente --
Select Texto From 
	(Values ('1'),(Null), ('2'), ('2p1thon'), ('%a'),('Rafael'), ('3'), ('4'),('sql'), ('0'), ('6'),('xdf') , ('8'), ('a')) As Valores(Texto)
Order By Texto Asc
Go

--Exemplo 05 - Ordenando Valores Caracteres em Ordem Crescente através da coluna Descrição--
Select Codigo, Descricao From
				(Values(1,'Arroz'),(2, 'Feijão'), (3,'Bolacha'),
				(4,'Fruta'), (5, 'Legumes'), (6, 'Molho'))
As Produtos(Codigo, Descricao)
Order By Descricao Asc
Go

--Exemplo 06 - Ordenando Valores Caracteres em Ordem Decrescente através da coluna Descrição--
Select Codigo, Descricao From
				(Values(1,'Arroz'),(2, 'Feijão'), (3,'Bolacha'),
				(4,'Fruta'), (5, 'Legumes'), (6, 'Molho'))
As Produtos(Codigo, Descricao)
Order By Descricao Desc
Go

/* Exemplo 09- Ordenando valores caracteres em ordem crescente através do código apresentando 
as linhas a partir do segundo registro */
Select Codigo, Descricao From 
				(Values(1,'Arroz'),(2, 'Feijão'), (3,'Bolacha'),
				(4,'Fruta'), (5, 'Legumes'), (6, 'Molho'))
As Produtos(Codigo, Descricao)
Order By Codigo Asc
OffSet 1 Row -- Estabelece o novo conjunto de linhas ou posição inicial
Go

/* Exemplo 10- Ordenando valores caracteres em Ordem Decrescente através do código apresentando 
as linhas a partir do terceiro registro */
Select Codigo, Descricao From 
				(Values(1,'Arroz'),(2, 'Feijão'), (3,'Bolacha'),
				(4,'Fruta'), (5, 'Legumes'), (6, 'Molho'))
As Produtos(Codigo, Descricao)
Order By Codigo Desc --Offset só pode ser usado com order by--
OffSet 2 Rows -- Estabelece o novo conjunto de linhas ou posição inicial
Go


/* Exemplo 11 - Ordenando valores caracteres em Ordem Crescente através de 
código, apresentando somente as duas primeiras linhas de registro  */
Select Codigo, Descricao From 
				(Values(1,'Arroz'),(2, 'Feijão'), (3,'Bolacha'),
				(4,'Fruta'), (5, 'Legumes'), (6, 'Molho'))
As Produtos(Codigo, Descricao)


Order By Codigo Asc --Offset só pode ser usado com order by--
OffSet 2 Rows -- Estabelece o novo conjunto de linhas ou posição inicial
Fetch First 2 Rows Only -- Determina a quantidade de linhas retornadas em tela logo após a posição
Go