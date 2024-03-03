--stored procedures
--criação da procedure com os seguintes parametros

--create procedure InserirNovoProduto
--@Nome varchar(255),
--@Cor varchar(50),
--@Preco decimal(13,2),
--@Tamanho varchar(5),
--@Genero char(1)
----

--as

--insert into Produtos (Nome, Cor, Preco, Tamanho, Genero)
--values (@Nome,@Cor,@Preco,@Tamanho,@Genero)


--execução da procedure ocultando os parametros ex. @Nome = 

--exec InserirNovoProduto
--'Nome produto procedure',
--'vermelho',
--10.2,
--'G',
--'M'
