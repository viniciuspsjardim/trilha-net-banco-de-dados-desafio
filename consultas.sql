-- 1: Buscar o nome e o ano de todos os filmes
SELECT
    Nome,
    Ano
FROM
    Filmes;

-- 2: Buscar filmes ordenados pelo ano de lançamento
SELECT
    Nome,
    Ano,
    Duracao
FROM
    Filmes
ORDER BY
    Ano;

-- 3: Buscar um filme específico pelo nome
SELECT
    Nome,
    Ano,
    Duracao
FROM
    Filmes
WHERE
    Nome = 'De Volta para o Futuro';

-- 4: Buscar filmes de um ano específico
SELECT
    Nome,
    Ano,
    Duracao
FROM
    Filmes
WHERE
    Ano = 1997;

-- 5: Buscar filmes com duração entre 100 e 150 minutos
SELECT
    Nome,
    Ano,
    Duracao
FROM
    Filmes
WHERE
    Duracao > 100 AND Duracao < 150
ORDER BY
    Duracao ASC;

-- 6: Buscar filmes lançados após o ano 2000
SELECT
    Nome,
    Ano,
    Duracao
FROM
    Filmes
WHERE
    Ano > 2000;

-- 7: Contar a quantidade de filmes por ano
SELECT
    Ano,
    COUNT(*) AS Quantidade
FROM
    Filmes
GROUP BY
    Ano
ORDER BY
    Quantidade DESC;

-- 8: Buscar todos os atores do gênero masculino
SELECT
    Id,
    PrimeiroNome,
    UltimoNome,
    Genero
FROM
    Atores
WHERE
    Genero = 'M';

-- 9: Buscar todas as atrizes do gênero feminino, ordenadas pelo nome
SELECT
    Id,
    PrimeiroNome,
    UltimoNome,
    Genero
FROM
    Atores
WHERE
    Genero = 'F'
ORDER BY
    PrimeiroNome;

-- 10: Buscar o nome do filme e seu gênero
SELECT
    F.Nome AS NomeDoFilme,
    G.Genero
FROM
    Filmes AS F
JOIN
    FilmesGenero AS FG ON F.Id = FG.IdFilme
JOIN
    Generos AS G ON FG.IdGenero = G.Id

-- 11: Buscar filmes que são do gênero "Mistério"
SELECT
    F.Nome AS NomeDoFilme,
    G.Genero
FROM
    Filmes AS F
JOIN
    FilmesGenero AS FG ON F.Id = FG.IdFilme
JOIN
    Generos AS G ON FG.IdGenero = G.Id
WHERE
    G.Genero = 'Mistério';

-- 12: Buscar o nome do filme e a lista de atores com seus papéis
SELECT
    F.Nome AS NomeDoFilme,
    A.PrimeiroNome,
    A.UltimoNome,
    EF.Papel
FROM
    Filmes AS F
JOIN
    ElencoFilme AS EF ON F.Id = EF.IdFilme
JOIN
    Atores AS A ON EF.IdAtor = A.Id
