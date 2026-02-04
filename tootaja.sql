CREATE DATABASE MIHKELUNTTAR;
use MIHKELUNTTAR;

--tabeli loomine
CREATE TABLE tootaja(
tootajaID int PRIMARY KEY identity (1,1),
eesmimi varchar(30),
perenimi varchar(30),
synniaeg date, 
koormus decimal(5,2),
elukoht TEXT,
abielus bit
);
--tabeli kustutamine 
drop table tootaja;
--tabeli kuvamine 
select * from tootaja; 
-- andmete lisamine tabelisse 
Insert INTO tootaja(eesmimi, perenimi, synniaeg) 
VALUES ('Mark', 'Päev', '2025-10-13'),
('Sten', 'Valgus', '2022-10-13'),
('Dmitri', 'Kapp', '2020-10-13');
