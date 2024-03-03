--functions

--seleção sem formatação e com operação de desconto no preço
--select 
--	Nome,
--	Preco,
--   (Preco - Preco /100 * 10)  PrecoComDesconto
--from Produtos
--where Tamanho = 'G'

-- seleciona com formatação e desconto
--select 
--	Nome,
--	Preco,
--   format(Preco - Preco /100 * 10,'N2')  PrecoComDesconto
--from Produtos
--where Tamanho = 'G'

-- criação da function

--create function CalcularDesconto(@Preco decimal(13,2), @Porcentagem int)
--returns decimal(13,2)

--begin
--	return @Preco - @Preco /100 * @Porcentagem
--end

--chamada da function

--select 
--	Nome,
--	Preco,
--	dbo.CalcularDesconto(Preco, 10) PrecoComDesconto
--from Produtos

