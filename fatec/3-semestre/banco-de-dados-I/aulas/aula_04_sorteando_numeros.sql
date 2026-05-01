-- Declaração de variável

Declare @Contador Int -- Como declara a variável (Nome e Tipo)
-- Set @Time= 
Set @Contador = 1

While @Contador <= 1000
	Begin
	-- Get Date() Apresenta data e hora atual.
	-- Rand ()Sortear números --
	-- Convert() Faz a conversão forçada
		Select Convert(Int, Rand() * @Contador), Convert(Time ,GetDate()) 
		Set @Contador = @Contador + 1 -- Incrementar o contador
	End
Go

-- Converte o a data e horário em inteiro
Select Convert(Int, GetDate())
Go