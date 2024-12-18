-- Seleciona o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes;

-- Busca Nome e Ano dos filmes ordenados por ordem crescente pelo ano
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC;

-- Buscar pelo fimle 'de volta para o futuro' trazendo nome, ano e duração
SELECT Nome, Ano, Duracao FROM Filmes WHERE LOWER(Nome) = 'de volta para o futuro';

-- Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;

-- Buscar os filmes lançados após o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;

-- Buscar filmes com duração maior que 100 e menor que 150, ordenados pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC;

-- Buscar quantidade de filmes lançados no ano, agrupando por ano, ordenando pela duração em ordem decrescente
SELECT ANO, COUNT(*) as Quantidade, FROM Filmes GROUP BY Ano ORDER BY Ano DESC;

-- Trazer todos atores masculinos retornando primeiro e ultimo nome
SELECT PrimeiroNome, UltimoNome WHERE Genero = 'M';

-- Trazer todas as atrizes femininas retornando primeiro e ultimo nome ordenada pelo nome
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

-- Buscar o nome do filme e seu gênero
SELECT f.Nome as NomeFilme, g.Genero as GeneroFilme FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;

-- Buscar o nome do filme e o gênero do tipo 'Mistério'
SELECT f.Nome as NomeFlme, g.Genero as GeneroFilme FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

-- Buscar o nome do filme e os atores, trazendo o primeiro e ultimo nome e seu papel
SELECT f.Nome AS NomeFilme, a.PrimeiroNome, a.UltimoNome, e.Papel
FROM Filmes f
JOIN ElencoFilme e ON f.Id = e.IdFilme
JOIN Atores a ON e.IdAtor = a.Id;