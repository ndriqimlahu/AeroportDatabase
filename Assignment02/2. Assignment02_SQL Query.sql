-- SELEKTO TABELAT E DATABAZES AEROPORTI

SELECT * FROM Aeroplani
SELECT * FROM Aeroporti
SELECT * FROM Fluturimet
SELECT * FROM Kompanit
SELECT * FROM Pasagjeret

/*
DETYRA 1
Të gjendet Shuma, vlera Minimale, Mesatare dhe Maksimale e numrit 
të destinacioneve për secilën kompani dhe duke përdorurë GROUP BY.
Fushave të ju jepet nga një alias në gjuhën shqipe.
*/

SELECT Vendlindja,
MIN(Nr_Pasaportes) AS Shuma_Minimale, 
AVG(Nr_Pasaportes) AS Shuma_Mesatare, 
MAX(Nr_Pasaportes) AS Shuma_Maksimale
FROM Pasagjeret
GROUP BY Vendlindja

/*
DETYRA 2
Të zgjidhet problemi me fushën Koha_Nisjes prej tabelës Fluturimet
duke përdorurë SUBQUERY i cili gjen nisjen e fluturimit të fundit.
Fushave të ju jepet nga një alias në gjuhën shqipe.
*/

SELECT Kodi_Fluturimit, Koha_Nisjes AS MaxKohaNisjes
FROM Fluturimet
WHERE Koha_Nisjes =
(SELECT MAX(Koha_Nisjes) FROM Fluturimet)

/*
DETYRA 3
Të bëhen me JOIN tri tabelat siq janë Aeroplani, Aeroporti dhe Kompania.
Fushave të ju jepet nga një alias në gjuhën shqipe.
*/

SELECT
ao.Emri AS Emri_Aeroportit, ao.Shteti AS Vendi_Aeroportit,
k.Emri_Plote AS Emri_Kompanise, al.Lloji_Aeroplanit,
f.Kodi_Fluturimit, f.Destinacioni_Prej, f.Destinacioni_Deri
FROM Aeroplani AS al
JOIN Aeroporti AS ao
ON al.ID_Aeroporti = ao.ID_Aeroporti
JOIN Kompanit AS k
ON al.ID_Kompania = k.ID_Kompania
JOIN Fluturimet AS f
ON al.ID_Fluturimi = f.ID_Fluturimi

/*
DETYRA 4
Të krijohet VIEW me JOIN nga detyra 3 dhe të bëhet selekt VIEW.
Fushave të ju jepet nga një alias në gjuhën shqipe.
*/

CREATE VIEW vAeroporti
AS
SELECT
ao.Emri AS Emri_Aeroportit, ao.Shteti AS Vendi_Aeroportit,
k.Emri_Plote AS Emri_Kompanise, al.Lloji_Aeroplanit,
f.Kodi_Fluturimit, f.Destinacioni_Prej, f.Destinacioni_Deri
FROM Aeroplani AS al
JOIN Aeroporti AS ao
ON al.ID_Aeroporti = ao.ID_Aeroporti
JOIN Kompanit AS k
ON al.ID_Kompania = k.ID_Kompania
JOIN Fluturimet AS f
ON al.ID_Fluturimi = f.ID_Fluturimi

SELECT * FROM vAeroporti

/*
DETYRA 5
Të krijohet Table Value Function (TVF) nga detyra 3 dhe të bëhet selekt TVF.
Fushave të ju jepet nga një alias në gjuhën shqipe.
*/

CREATE FUNCTION Linjat_Ajrore
(@destinacionifillues smallint, @destinacionimbarues smallint)
RETURNS TABLE
AS
RETURN
SELECT
ao.Emri AS Emri_Aeroportit, ao.Shteti AS Vendi_Aeroportit,
k.Emri_Plote AS Emri_Kompanise, al.Lloji_Aeroplanit,
f.Kodi_Fluturimit, f.Destinacioni_Prej, f.Destinacioni_Deri
FROM Aeroplani AS al
JOIN Aeroporti AS ao
ON al.ID_Aeroporti = ao.ID_Aeroporti
JOIN Kompanit AS k
ON al.ID_Kompania = k.ID_Kompania
JOIN Fluturimet AS f
ON al.ID_Fluturimi = f.ID_Fluturimi
WHERE (Nr_Destinacioneve BETWEEN @destinacionifillues AND @destinacionimbarues)

SELECT * FROM Linjat_Ajrore(11,22)

/*
DETYRA 6
Të krijohet një PIVOT tabelë, të insertohen disa të dhënat
në fusha të caktuara dhe pastaj të bëhet selekt PIVOT tabela.
*/

CREATE TABLE dbo.PivotedPasagjeret
(
	[Emri] [nvarchar](15) NOT NULL,
	[Mbiemri] [nvarchar](15) NOT NULL,
	[1979] [int] NULL,
	[1988] [int] NULL,
	[1995] [int] NULL
)

INSERT INTO dbo.PivotedPasagjeret (Emri, Mbiemri, [1979],[1988],[1995])
SELECT Emri, Mbiemri, [1979],[1988],[1995] 
FROM (SELECT ID_Pasagjeri, Emri, Mbiemri, Datelindja FROM Pasagjeret) AS P
PIVOT(SUM(ID_Pasagjeri) FOR Datelindja IN ([1979],[1988],[1995])) AS pvt

SELECT Emri, Mbiemri, [1979],[1988],[1995]
FROM dbo.PivotedPasagjeret

/*
DETYRA 7
Të kryhet nga një veprim duke përdorur CUBE & ROLLUP për
tabelën Fluturimet në fushat ID_Fluturimi dhe Kodi_Fluturimit.
*/

SELECT ID_Fluturimi, Kodi_Fluturimit
FROM Fluturimet
GROUP BY CUBE(ID_Fluturimi, Kodi_Fluturimit)

SELECT ID_Fluturimi, Kodi_Fluturimit
FROM Fluturimet
GROUP BY ROLLUP(ID_Fluturimi, Kodi_Fluturimit)