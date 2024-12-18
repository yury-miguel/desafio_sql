-- Cria o banco de dados com nome 'Filmes' e entra nele
CREATE DATABASE Filmes;
\c Filmes


-- Criação de todas as tabelas
CREATE TABLE Atores (
    Id SERIAL PRIMARY KEY,
    PrimeiroNome VARCHAR(20),
    UltimoNome VARCHAR(20),
    Genero VARCHAR(1)
);

CREATE TABLE Filmes (
    Id SERIAL PRIMARY KEY,
    Nome VARCHAR(50),
    Ano INT,
    Duracao INT
);

CREATE TABLE ElencoFilme (
    Id SERIAL PRIMARY KEY,
    IdAtor INT NOT NULL,
    IdFilme INT,
    Papel VARCHAR(30),
    FOREIGN KEY (IdAtor) REFERENCES Atores(Id),
    FOREIGN KEY (IdFilme) REFERENCES Filmes(Id)
);

CREATE TABLE Generos (
    Id SERIAL PRIMARY KEY,
    Genero VARCHAR(20)
);

CREATE TABLE FilmesGenero (
    Id SERIAL PRIMARY KEY,
    IdGenero INT,
    IdFilme INT,
    FOREIGN KEY (IdGenero) REFERENCES Generos(Id),
    FOREIGN KEY (IdFilme) REFERENCES Filmes(Id)
);


-- Inserções de dados nas tabelas
INSERT INTO Atores (Id, PrimeiroNome, UltimoNome, Genero)
VALUES
(1, 'James', 'Stewart', 'M'),
(2, 'Deborah', 'Kerr', 'F'),
(3, 'Peter', 'OToole', 'M'),
(4, 'Robert', 'DeNiro', 'M'),
(6, 'Harrison', 'Ford', 'M'),
(7, 'Stephen', 'Baldwin', 'M'),
(8, 'Jack', 'Nicholson', 'M'),
(9, 'Mark', 'Wahlberg', 'M'),
(10, 'Woody', 'Allen', 'M'),
(11, 'Claire', 'Danes', 'F'),
(12, 'Tim', 'Robbins', 'M'),
(13, 'Kevin', 'Spacey', 'M'),
(14, 'Kate', 'Winslet', 'F'),
(15, 'Robin', 'Williams', 'M'),
(16, 'Jon', 'Voight', 'M'),
(17, 'Ewan', 'McGregor', 'M'),
(18, 'Christian', 'Bale', 'M'),
(19, 'Maggie', 'Gyllenhaal', 'F'),
(20, 'Dev', 'Patel', 'M'),
(21, 'Sigourney', 'Weaver', 'F'),
(22, 'David', 'Aston', 'M'),
(23, 'Ali', 'Astin', 'F');

INSERT INTO ElencoFilme (Id, IdAtor, IdFilme, Papel)
VALUES
(1, 1, 1, 'John Scottie Ferguson'),
(2, 2, 2, 'Miss Giddens'),
(3, 3, 3, 'T.E. Lawrence'),
(4, 4, 4, 'Michael'),
(5, 6, 6, 'Rick Deckard'),
(6, 7, 8, 'McManus'),
(7, 9, 10, 'Eddie Adams'),
(8, 10, 11, 'Alvy Singer'),
(9, 11, 12, 'San'),
(10, 12, 13, 'Andy Dufresne'),
(11, 13, 14, 'Lester Burnham'),
(12, 14, 15, 'Rose DeWitt Bukater'),
(13, 15, 16, 'Sean Maguire'),
(14, 16, 17, 'Ed'),
(15, 17, 18, 'Renton'),
(16, 19, 20, 'Elizabeth Darko'),
(17, 20, 21, 'Older Jamal'),
(18, 21, 22, 'Ripley'),
(19, 13, 23, 'Bobby Darin'),
(20, 8, 9, 'J.J. Gittes'),
(21, 18, 19, 'Alfred Borden');

INSERT INTO Filmes (Id, Nome, Ano, Duracao)
VALUES
(1, 'Um Corpo que Cai', 1958, 128),
(2, 'Os Inocentes', 1961, 100),
(3, 'Lawrence da Arábia', 1962, 216),
(4, 'O Franco Atirador', 1978, 183),
(5, 'Amadeus', 1984, 160),
(6, 'Blade Runner', 1982, 117),
(7, 'De Olhos Bem Fechados', 1999, 159),
(8, 'Os Suspeitos', 1995, 106),
(9, 'Chinatown', 1974, 130),
(10, 'Boogie Nights - Prazer Sem Limites', 1997, 155),
(11, 'Noivo Neurótico, Noiva Nervosa', 1977, 93),
(12, 'Princesa Mononoke', 1997, 134),
(13, 'Um Sonho de Liberdade', 1994, 142),
(14, 'Beleza Americana', 1999, 122),
(15, 'Titanic', 1997, 194),
(16, 'Gênio Indomável', 1997, 126),
(17, 'Amargo pesadelo', 1972, 109),
(18, 'Trainspotting - Sem Limites', 1996, 94),
(19, 'O Grande Truque', 2006, 130),
(20, 'Donnie Darko', 2001, 113),
(21, 'Quem Quer Ser um Milionário?', 2008, 120),
(22, 'Aliens, O Resgate', 1986, 137),
(23, 'Uma Vida sem Limites', 2004, 118),
(24, 'Avatar', 2009, 162),
(25, 'Coração Valente', 1995, 178),
(26, 'Os Sete Samurais', 1954, 207),
(27, 'A Viagem de Chihiro', 2001, 125),
(28, 'De Volta para o Futuro', 1985, 116);