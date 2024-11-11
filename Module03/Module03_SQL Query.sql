-- SELEKTO TABELAT E DATABAZES AEROPORTI

SELECT * FROM Aeroplani
SELECT * FROM Aeroporti
SELECT * FROM Fluturimet
SELECT * FROM Kompanit
SELECT * FROM Pasagjeret

/*
1. Të përdoret funksion agregativ me RANK për të gjeturë shumën për një fushë të caktuarë
*/

SELECT ID_Aeroplani, Lloji_Aeroplanit, ID_Pasagjeri,
SUM(Nr_Uleseve) OVER(PARTITION BY ID_Pasagjeri) AS ShumaPerNrUleseve
FROM Aeroplani

/*
2. Të përdoret RANK për një fushë të caktuarë pa PARTITION
*/

SELECT ID_Pasagjeri, Nr_Pasaportes, Emri, Mbiemri, Datelindja, Vendlindja,
RANK() OVER(ORDER BY Vendlindja DESC) AS RankVendlindja
FROM Pasagjeret

/*
3. Të përdoret RANK për një fushë të caktuarë me PARTITION
*/

SELECT ID_Pasagjeri, Nr_Pasaportes, Emri, Mbiemri, Datelindja, Vendlindja,
RANK() OVER(PARTITION BY Vendlindja ORDER BY Nr_Pasaportes DESC) AS RankVendlindja
FROM Pasagjeret

/*
4. Të përdoret DENSE RANK për një fushë të caktuarë me PARTITION
*/

SELECT ID_Pasagjeri, Nr_Pasaportes, Emri, Mbiemri, Datelindja, Vendlindja,
DENSE_RANK() OVER(PARTITION BY Vendlindja ORDER BY Nr_Pasaportes) AS DenseRankVendlindja
FROM Pasagjeret

/*
5. Të bëhet SELECT shprehje duke shfrytëzuar TOP 10 rekordet
*/

SELECT TOP (10) ID_Kompania, Emri_Plote, Emri_Shkurte, Nr_Destinacioneve
FROM Kompanit
ORDER BY Nr_Destinacioneve ASC

/*
6. Të bëhet SELECT shprehje duke shfrytëzuar OFFSET FETCH duke marrë 5-10 rreshta
*/

SELECT ID_Kompania, Emri_Plote, Emri_Shkurte, Nr_Destinacioneve
FROM Kompanit
ORDER BY Nr_Destinacioneve DESC
OFFSET 5 ROWS FETCH FIRST 10 ROWS ONLY

/*
7. Të bëhet CREATE i një PROCEDURE që kryen INSERT dhe UPDATE
*/

-- Krjimi i procederurës

CREATE PROCEDURE PasagjeretAeroplani
(@Vendlindja nvarchar(15))
AS
SELECT ID_Pasagjeri, Emri, Mbiemri, Datelindja, Vendlindja, Nr_Pasaportes, Nr_Uleses, Statusi
FROM Pasagjeret
WHERE Vendlindja = @Vendlindja
ORDER BY ID_Pasagjeri

EXEC PasagjeretAeroplani @Vendlindja = 'Kosovo';

-- Insertimi i një rekordi në procedurë

ALTER PROCEDURE PasagjeretAeroplani
AS
INSERT INTO Pasagjeret (ID_Pasagjeri, Emri, Mbiemri, Datelindja, Vendlindja, Nr_Pasaportes, Nr_Uleses, Statusi)
VALUES (96020,'Jetmir','Hoxha','1994-11-23','Albania',8448,266,0)

EXEC PasagjeretAeroplani

SELECT * FROM Pasagjeret

-- Update i një fushe në procedurë

ALTER PROCEDURE PasagjeretAeroplani
AS
UPDATE Pasagjeret
SET Statusi = 1

EXEC PasagjeretAeroplani

SELECT * FROM Pasagjeret