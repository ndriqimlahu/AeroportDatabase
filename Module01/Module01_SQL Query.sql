-- SELEKTO TABELAT E DATABAZES AEROPORTI

SELECT * FROM Aeroplani
SELECT * FROM Aeroporti
SELECT * FROM Fluturimet
SELECT * FROM Kompanit
SELECT * FROM Pasagjeret

/*
DETYRA 1
Shembulli i parë me JOIN
*/

SELECT k.Emri_Plote AS Emri_Kompanise, p.Lloji_Aeroplanit, p.Nr_Uleseve, k.Nr_Destinacioneve
FROM Kompanit AS k JOIN Aeroplani p
ON k.ID_Kompania = p.ID_Kompania

/*
DETYRA 2
Shembulli i dytë me JOIN
*/

SELECT f.Kodi_Fluturimit, f.Destinacioni_Prej, f.Destinacioni_Deri, p.Lloji_Aeroplanit, p.Nr_Uleseve
FROM Fluturimet AS f JOIN Aeroplani p
ON f.ID_Fluturimi = p.ID_Fluturimi

/*
DETYRA 3
Shembulli i parë me UNION
*/

SELECT Shteti FROM Aeroporti
UNION
SELECT Vendlindja FROM Pasagjeret

/*
DETYRA 4
Shembulli i parë me UNION ALL
*/

SELECT Shteti FROM Aeroporti
UNION ALL
SELECT Vendlindja FROM Pasagjeret

/*
DETYRA 5
Shembulli i parë me INTERSECT
*/

SELECT Shteti FROM Aeroporti
INTERSECT
SELECT Vendlindja FROM Pasagjeret

/*
DETYRA 6
Shembulli i parë me EXCEPT
*/

SELECT Shteti FROM Aeroporti
EXCEPT
SELECT Vendlindja FROM Pasagjeret

/*
DETYRA 7
Shembulli i dytë me UNION
*/

SELECT Nr_Uleses FROM Pasagjeret
UNION
SELECT Nr_Destinacioneve FROM Kompanit

/*
DETYRA 8
Shembulli i dytë me UNION ALL
*/

SELECT Nr_Uleses FROM Pasagjeret
UNION ALL
SELECT Nr_Destinacioneve FROM Kompanit

/*
DETYRA 9
Shembulli i dytë me INTERSECT
*/

SELECT Nr_Uleses FROM Pasagjeret
INTERSECT
SELECT Nr_Destinacioneve FROM Kompanit

/*
DETYRA 10
Shembulli i dytë me EXCEPT
*/

SELECT Nr_Uleses FROM Pasagjeret
EXCEPT
SELECT Nr_Destinacioneve FROM Kompanit

/*
DETYRA 11
Shembulli i parë me Funksionet e Stringjeve
*/

SELECT SUBSTRING('Databaza Aeroporti',5,19) AS DBA_SUBSTRING;
SELECT LEFT('Databaza Aeroporti',9) AS DBA_LEFT, RIGHT('Databaza Aeroporti',9) as DBA_RIGHT;
SELECT LEN('Databaza Aeroporti     ') AS DBA_LEN;
SELECT DATALENGTH('Databaza Aeroporti     ') AS DBA_DATA_LENGTH;
SELECT CHARINDEX('p','Aeroporti') AS DBA_CHAR_INDEX;
SELECT REPLACE('Databaza','a','e') AS DBA_REPLACE;
SELECT UPPER('Databaza Aeroporti') AS DBA_UPPER;
SELECT LOWER('Databaza Aeroporti') AS DBA_LOWER;

/*
DETYRA 12
Shembulli i dytë me Funksionet e Stringjeve
*/

SELECT SUBSTRING('Piloti dhe Pasagjeri',8,3) AS DBA_SUBSTRING;
SELECT LEFT('Piloti dhe Pasagjeri',6) AS DBA_LEFT, RIGHT('Piloti dhe Pasagjeri',9) as DBA_RIGHT;
SELECT LEN('Piloti dhe Pasagjeri     ') AS DBA_LEN;
SELECT DATALENGTH('Piloti dhe Pasagjeri     ') AS DBA_DATA_LENGTH;
SELECT CHARINDEX('p','Aeroplani') AS DBA_CHAR_INDEX;
SELECT REPLACE('Aeroplani','a','o') AS DBA_REPLACE;
SELECT UPPER('Piloti dhe Pasagjeri') AS DBA_UPPER;
SELECT LOWER('Piloti dhe Pasagjeri') AS DBA_LOWER;

/*
DETYRA 13
Shembulli i parë me Funksionet e Datës
*/

SELECT
	GETDATE()			AS [GetDate],
	CURRENT_TIMESTAMP	AS [Current_Timestamp],
	GETUTCDATE()		AS [GetUTCDate],
	SYSDATETIME()		AS [SYSDateTime],
	SYSUTCDATETIME()	AS [SYSUTCDateTime],
	SYSDATETIMEOFFSET()	AS [SYSDateTimeOffset];
SELECT DATEFROMPARTS(2001,4,13) AS Data_Caktuar;
SELECT DAY('20010413') AS Dita, MONTH('20010413') AS Muaji, YEAR('20010413') AS Viti;
SELECT DATEADD(day,2,'20010413') AS Data_Pa_Ore;
SELECT DATETIMEFROMPARTS(2001,4,13,18,30,0,0) AS Data_Ora_1;
SELECT DATETIME2FROMPARTS(2001,4,13,18,30,00,0,0) AS Data_Ora_2;
SELECT DATETIMEOFFSETFROMPARTS(2001,4,13,18,30,0,0,-7,0,0) AS Data_Ora_3;
SELECT DATENAME(weekday,'20010413') AS Dita_Javes_Dates;
SELECT DATEPART(weekday,'20010413') AS Numri_Dites_Dates;
SELECT DATEDIFF(millisecond, GETDATE(), SYSDATETIME()) AS Milisekondat_Aktuale;
SELECT EOMONTH('20010413') AS Dita_Fundit_Muajit;
SELECT EOMONTH('20010413',2) AS Dita_Fundit_Muajit_Mbas_2_Muajve;
SELECT ISDATE('20010413') AS Data_Valide;
SELECT ISDATE('20010230') AS Data_Valide;

/*
DETYRA 14
Shembulli i dytë me Funksionet e Datës
*/

SELECT
	GETDATE()			AS [GetDate],
	CURRENT_TIMESTAMP	AS [Current_Timestamp],
	GETUTCDATE()		AS [GetUTCDate],
	SYSDATETIME()		AS [SYSDateTime],
	SYSUTCDATETIME()	AS [SYSUTCDateTime],
	SYSDATETIMEOFFSET()	AS [SYSDateTimeOffset];
SELECT DATEFROMPARTS(2020,4,4) AS Data_Caktuar;
SELECT DAY('20200404') AS Dita, MONTH('20200404') AS Muaji, YEAR('20200404') AS Viti;
SELECT DATEADD(day,2,'20200404') AS Data_Pa_Ore;
SELECT DATETIMEFROMPARTS(2020,4,4,21,30,0,0) AS Data_Ora_1;
SELECT DATETIME2FROMPARTS(2020,4,4,21,30,00,0,0) AS Data_Ora_2;
SELECT DATETIMEOFFSETFROMPARTS(2020,4,4,21,30,0,0,-7,0,0) AS Data_Ora_3;
SELECT DATENAME(weekday,'20200404') AS Dita_Javes_Dates;
SELECT DATEPART(weekday,'20200404') AS Numri_Dites_Dates;
SELECT DATEDIFF(millisecond, GETDATE(), SYSDATETIME()) AS Milisekondat_Aktuale;
SELECT EOMONTH('20200404') AS Dita_Fundit_Muajit;
SELECT EOMONTH('20200404',2) AS Dita_Fundit_Muajit_Mbas_2_Muajve;
SELECT ISDATE('20200404') AS Data_Valide;
SELECT ISDATE('20200230') AS Data_Valide;