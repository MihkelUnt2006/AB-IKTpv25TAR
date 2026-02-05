CREATE DATABASE filmMIhkel;
use filmMihkel

--tabeli rezisoor loomine 

CREATE TABLE rezisoor(
rezisoorID int PRIMARY KEY identity (1,1),
eesnimi varchar(20),
perenimi varchar(20) UNIQUE,
synniaasta int);
Select* from rezisoor;
--tabeli täitmine
INSERT INTO rezisoor(eesnimi, perenimi, synniaasta)
VALUES('Robert','de Niro',1981),
('Clint', 'Eastwood',1957),
('David', 'Linch',1984),
('Morgan', 'freedman', 1846)

CREATE TABLE film(
filmID int PRIMARY KEY identity (1,1),
filmNimetus varchar(100),
pikkus int,
rezisoorID int,
FOREIGN KEY (rezisoorID) REFERENCES rezisoor(rezisoorID),
v_aasta int CHECK(v_aasta<2027)
);
SELECT * FROM film;
SELECT * FROM rezisoor;

Insert into film( filmNimetus, rezisoorID, pikkus, v_aasta)
Values('rapuntsel', 4, 120, 2021) 
--table zanr
CREATE TABLE zanr(
zanrID int PRIMARY KEY identity (1,1),
zanrNimetus varchar(50) UNIQUE,
kirjeldus TEXT)

INSERT INTO zanr(zanrNimetus, kirjeldus)
VALUES ('komöödia', 'on põnev film ')
SELECT * FROM zanr; 
--tabeli struktuuri muutimine 
ALTER TABLE film ADD zanrID int 
select * from film 
--FK lisamine 
ALTER TABLE film ADD CONSTRAINT fk_zanr
FOREIGN KEY (zanrID) references zanr(zanrID);
--tabeli uuendamine 
UPDATE film SET zanrID=2 WHERE filmID=2;
UPDATE film SET zanrID=1 WHERE filmID>=3;

CREATE TABLE tootja(
tootjaID int PRIMARY KEY identity (1,1),
tootjaNimi varchar(50) UNIQUE,
asukoht TEXT)
select * from tootja
INSERT INTO tootja(tootjaNimi, asukoht)
VALUES ('disney', 'Berlin'),
('Universal','Hollywood')

CREATE TABLE tootjaFilm(
tootjafilm int PRIMARY KEY identity (1,1),
tootjaID int, 
FOREIGN KEY (tootjaID) REFERENCES tootja(tootjaID),
FilmID int,
FOREIGN KEY (FilmID) REFERENCES film(filmID)
);
Select * from tootjaFilm
Select * from tootja
Select * from film;
INSERT INTO tootjaFilm (tootjaID, FilmID)
Values (2 ,3)
