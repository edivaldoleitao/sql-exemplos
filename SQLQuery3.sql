select [Id],
	   [Nome],
	   [Sobrenome]

from clientes
where Nome <> ''
order by Nome, Sobrenome desc;