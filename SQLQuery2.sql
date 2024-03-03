USE [ExemploDB]
GO
/****** Object:  StoredProcedure [dbo].[InserirNovoProduto]    Script Date: 03/03/2024 16:54:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[InserirNovoProduto]
@Nome varchar(255),
@Cor varchar(50),
@Preco decimal(13,2),
@Tamanho varchar(5),
@Genero char(1)


as

insert into Produtos (Nome, Cor, Preco, Tamanho, Genero, DataValidade)
values (@Nome,@Cor,@Preco,@Tamanho,@Genero)