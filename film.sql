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
