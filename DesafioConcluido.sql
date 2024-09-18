--1
SELECT 
	Nome,
	Ano
FROM Filmes

--2
SELECT * FROM Filmes
ORDER BY Ano

--3
SELECT * FROM Filmes
WHERE Nome = 'De Volta Para o Futuro'

--4
SELECT * FROM Filmes
WHERE Ano = 1997

--5
SELECT * FROM Filmes
WHERE Ano LIKE '2%'

--6
SELECT * FROM Filmes
WHERE 100<Duracao AND  Duracao<150
ORDER BY Duracao

--7
SELECT
	Ano,
	COUNT(Duracao) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

--9
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome


--10
SELECT
	Nome,
	Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

--11
SELECT
	Nome,
	Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Id = 10

--12
SELECT
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN ATORES ON ElencoFilme.IdAtor = Atores.Id
