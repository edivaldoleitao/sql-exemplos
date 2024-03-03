--criação de tabela usando o schema padrão dbo com uso de '[' para garantir que tenha erro na digitação dos campos
--create table [dbo].[clientes] (
--	 [Id] INT IDENTITY (1, 1) primary key not null,
--	 [Nome] varchar (255) null,
--	 [Sobrenome] varchar (255) null,
--	 [Email] varchar (255) null,
--	 [AceitaComunicados] bit null,
--	 [DataCadastro] datetime2 (7) null
--) on [primary] 
--go

--insert into clientes values ('Ken','silva', 'email@.com',1, 'Jan  7 2009 12:00AM');
--insert into clientes values ('ryu','silva','capcom@.com',0,'Jan  7 2009 12:00AM');


--select [Id],
--	   [Nome],
--	   [Sobrenome]
--from clientes
--where Nome = 'Ken' or Nome = 'ryu'
--order by Nome, Sobrenome desc;

--select * from clientes

--ponto de recuperação do rollback
--begin tran  
--rollback 

--update clientes 
--set Nome = 'Sakura',
--	Email = 'sakura@.com'
--where Id = 1

--delete clientes 
--where Id = 4
------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--create table Produtos
--(
--	Id int identity(1,1) not null,
--	Nome varchar(255),
--	Cor varchar(50),
--	Preco decimal(13,2) not null,
--	Tamanho varchar(5),
--	Genero char(1),
--	constraint PK_Produtos primary key (Id, Nome)
--)

--insert into Produtos (Nome, Cor, Preco, Tamanho, Genero) 
--values ('coca','branco',1,'grand','F');

--insert into Produtos (Nome, Cor, Preco, Tamanho, Genero)
--values ('poh','branco',2.12,'small','M');

--select * from Produtos

--funções built-in do sql
--select COUNT(*) QuantidadeProdutos from Produtos;

--select SUM(Preco) PrecoTotal from Produtos;

--select MAX(Preco) from Produtos;

--select MIN (Preco) from Produtos;

--select AVG(Preco) from Produtos;

--seleciona dados de maneira formatada
--select
--	Nome + ' - ' + Cor,
--	UPPER(Nome) Nome,
--	LOWER(Cor) Cor,
  --format(DataValidade, 'dd/MM/yyyy') data
--from Produtos;

--atualiza colunas da tabela adicionando uma nova
--alter table Produtos 
--add DataValidade datetime2

--atualiza dados da tabela
--update Produtos 
--set DataValidade = GETDATE()

--seleciona dados agrupados
--select 
--	COUNT(*) Quantidade,
--	Nome
--FROM Produtos
--Where Nome <> ''
--group by Nome
--order by Quantidade desc;

--cria tabela com constraint definindo foreing key
--create table Enderecos (
--	Id int primary key identity (1,1) not null,
--	IdCliente int null,
--	Rua varchar(255) null,
--	Bairro varchar(255) null,
--	Cidade varchar(255) null,
--	Estado char(2) null,

--	constraint FK_Enderecos_Clientes foreign key(IdCliente)
--	references clientes(Id)
--)

--select * from Enderecos;

--insert into Enderecos values (1,'rua legal','bairro maneiro', 'paulista','PE');

--select  C.Nome,
--	    C.Email,
--		E.Bairro,
--		E.Cidade
--from clientes C
--inner join Enderecos E on E.IdCliente = C.Id
--WHERE C.Id = 1

-- alterando a chave primária depois de usar DROP para remover chave anterior

--adiciona constraint para chave primária
--alter table Produtos
--ADD constraint PK_PRODUTOS primary key (Id, Nome); 

--adiciona restrição para valor de coluna preco maior que zero
--alter table Produtos
--add constraint CHK_ColunaPreco check(Preco > 0);

--adiciona valor padrão quando omite valor da coluna DataValidade na inserção 
--alter table Produtos
--add default GETDATE() FOR DataValidade
